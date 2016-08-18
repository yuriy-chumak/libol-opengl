#!/usr/bin/ol

(import (lib http))

,load "sqlite.lisp"
,load "helpers.lisp"

(define (ne? . args)
   (not (apply eq? args)))

; ==============================================================
; todo: please,  return sendfile

; todo: 401 Unauthorized
; todo: 403 Forbidden
;(define (send-404 fd)
;(let*((send (lambda args
;         (for-each (lambda (arg)
;            (display-to fd arg)) args))))
;   (print "Sending error")
;   (print "Sending 404 Not Found")
;
;   (send "HTTP/1.0 404 Not Found\n")
;   (send "Connection: close\n"
;         "Content-Type: text/html\n"
;         "Server: " (car *version*) "/" (cdr *version*) "\n\n")
;   (send "<HTML><BODY>"
;         "<h1>404 Not Found OK</h1>")))

(define (sendfile fd content-type filename)
   (print "Sending as '" content-type "' " filename)
(let*((path (if (string? filename) (str-app "." (c-string filename)) "?"))
      (send (lambda args
         (for-each (lambda (arg)
            (display-to fd arg)) args)))
      (stat (syscall 4 path #f #f)))
   (if stat (begin
      (print "Sending 200 OK, file size is " (ref stat 8) ", name is " path)
      (send "HTTP/1.0 200 OK\n"
            ;"Connection: close\n"
            "Content-Type: " content-type "\n"
            "Content-Length: " (ref stat 8) "\n"
            "Server: " (car *version*) "/" (cdr *version*) "\n\n")
      (write-vector (file->vector path) fd)
      (print "File sent."))
   ;else
   (begin
      (print "Sending 404 Not Found")
      (send "HTTP/1.0 404 Not Found\n"
            ;"Connection: close\n"
            "Content-Type: text/html\n"
            "Server: " (car *version*) "/" (cdr *version*) "\n\n")
      (send "<HTML><BODY>"
            "<h1>404 Not Found OK</h1>"
            "<h4>url: " filename "</h4>")))))


; ===================================================
(http:run 8080 (lambda (fd request headers send close)
   (define (send-200 title . extra)
      (send "HTTP/1.0 200 OK\n"
            "Content-Type: text/html\n"
            "Server: " (car *version*) "/" (cdr *version*) "\n"
            "\n")
      (send "<!DOCTYPE html>"
            "<html>"
            "<head>"
            "   <title>" title "</title>"
            "   <link rel='stylesheet' href='/stylesheets/normalize.css'>"
            "   <script src='/javascripts/jquery-2.1.1.min.js'> </script>")
      (for-each send extra)
      (send "</head><body>")
      #true)
   (define (send-end)
      (send "</body></html>"))
   (define (send-400)
      (send "HTTP/1.0 400 Bad Request\n")
      (send "Connection: close\n"
            "Content-Type: text/html\n"
            "Server: " (car *version*) "/" (cdr *version*) "\n"
            "\n")
      (send "<html><body>"
            "<h1>400 Bad Request</h1>")
      #true)
   (define (send-401)
      (send "HTTP/1.0 401 Unauthorized\n")
      (send "Connection: close\n"
            "Content-Type: text/html\n"
            "Server: " (car *version*) "/" (cdr *version*) "\n"
            "\n")
      (send "<html><body>"
            "<h1>401 Unauthorized</h1>")
      #true)
   (define (send-404)
      (send "HTTP/1.0 404 Not Found\n")
      (send "Connection: close\n"
            "Content-Type: text/html\n"
            "Server: " (car *version*) "/" (cdr *version*) "\n"
            "\n")
      (send "<html><body>"
            "<h1>404 Not Found</h1>")
      #true)
   (define unurl (string->regex "s/+/ /g"))

   (print "Request: " request)
   (print "Headers: " headers)

   (cond
      ((string-eq? (ref request 1) "GET")
         (let ((url (ref request 2)))
            (cond
               ; basic sanity check:
               ((has-two-dots? url)
                  (send-404))

               ; static web content:
               ((starts-with url "/javascripts/")
                  (sendfile fd "application/javascript" url))
               ((starts-with url "/stylesheets/")
                  (sendfile fd "text/css" url))

               ; dynamic functions
               ((or
                  (string-eq? url "/")
                  (string-eq? url "/index.html"))
                  ; todo: change to 303 See Other to /login.html

                  (send-200 "SIMPLE Login"
                        "   <link rel='stylesheet' href='/stylesheets/login.css'>"
                        "   <script src='/javascripts/jlogin.js'></script>")
                  (send "   <section class='loginform cf'>"
                        "      <form id='login' action='/login' method='get' accept-charset='utf-8' onsubmit='return onLoginSubmit()'>"
                        "         <ul>"
                        "            <li>"
                        "               <label for='usermail'>Email</label>"
                        "               <input type='usermail' id='usermail' placeholder='yourname@email.com' required></li>"
                        "            <li>"
                        "               <label for='password'>Password</label>"
                        "               <input type='password' id='password' placeholder='password' required></li>"
                        "            <li style='clear:both'>"
                        "               <input type='submit' value='Login'>"
                        "            </li>"
                        "         </ul>"
                        "      </form>"
                        "   </section>")
                  (send-end))
               ; обработка логина пользователя
               ((starts-with url "/login/") ; usermail/password
                  (let ((args (string-split url #\/)))

                  (if (ne? (length args) 3)
                     (close (send-400)))
                  ; else - ok
                  (let ((username (list-ref args 1))
                        (password (list-ref args 2)))
                     (send-200 "Logging in..."
                           "   <link rel='stylesheet' href='/stylesheets/login.css'>")
                     ; сгенерируем сеансовый ключ
                     (let ((session (db:value "SELECT lower(hex(randomblob(16)))")))                                         ; remote peer address
                        (if (db:value "UPDATE accounts SET session=?, address=? WHERE username=? AND password=?" session (car (syscall 51 fd #f #f)) username password)
                     ; ok
                     (send "   <script>window.location.href = '/home/" session "'</script>")
                     ; false
                     (send "   <section class='loginform cf'>"
                           "      <form id='sorry' action='/' method='get' accept-charset='utf-8' onsubmit='window.location = \"/\"; return false'>"
                           "         <ul>"
                           "            <li>"
                           "               <label>Sorry, name or password is invalid.</label>"
                           "            </li>"
                           "            <li>"
                           "               <label>Please, <a href='/'> try again</a>.</label>"
                           "            </li>"
                           "         </ul>"
                           "      </form>"
                           "   </section>")))
                     (send-end))))

               ; -----------------------------------
               ; список игр пользователя
               ((starts-with url "/home/") ; session
                  (let ((args (string-split url #\/)))

                  (if (ne? (length args) 2)
                     (close (send-400)))

                  (let ((session (list-ref args 1)))
                  (let ((account (db:value "SELECT id FROM accounts WHERE session = ? AND address = ?" session (car (syscall 51 fd #f #f)))))
                     (if (not account)
                        (close (send-401)))

                     ; ok, все проверки закончены
                     (send-200 "Home")

                     (send "<br>"
                           "Hello " (db:value "SELECT username FROM accounts WHERE id = ?" account) ",<br>")
                     (send "<a href='/create-new-race/"session"'>Create new race.</a> // "
                           "<a href='/create-new-game/"session"'>Create new game.</a><br>")

                     ; в эту табличку мы поместим все расы игрока и играемые ними игры:
                     (send "<br><table>"
                           "<tr><th>Race</th><th>Game</th></tr>")
                     (db:for-each (db:query
                        "SELECT  id,name  FROM races WHERE account=?" account)
                        (lambda (id name)
                           (send "<tr><td><a href='/race/"session"/"id"'>"name"</a></td><td><table>")
                           (db:for-each (db:query
                              "SELECT  id,name,state  FROM games WHERE id IN (
                                  SELECT DISTINCT game FROM game_players WHERE race=?
                               )" id)
                              (lambda (id name state)
                                 (send "<tr><td>" id "</td><td>" name "</td></tr>"
                                    (cond
                                    )
                                 )
                              ))
                           (send "</table></td>")
                        ))
                     (send "</table><br>")

;                     (db:for-each (db:query
;                        "SELECT  id,name  FROM games WHERE id IN (
;                            SELECT DISTINCT game FROM game_players WHERE race IN (
;                               SELECT id FROM races WHERE account = ?
;                            )
;                         )" account)
;                        (lambda (id name)
;                           (send "<tr>"
;                                 "<td>"id"</td> <td><a href='/game/"session"/"id"'>" name "</a></td>"
;                                 "<td>" (case (db:value "SELECT state FROM games WHERE id=?" id)
;                                           (0 "New one")
;                                           (1 "Waiting for you turn")
;                                           (2 "Closed")
;                                           (else "Unknown"))
;                                 "</tr>")
;                        ))
                     (send "</table>")
                     (send-end)))))

               ; ----------------------------------------------
               ;
               ((starts-with url "/create-new-race/") ; session
                  (let ((args (string-split url #\/)))

                  (if (ne? (length args) 2)
                     (close (send-400)))

                  (let ((session (list-ref args 1)))
                  (let ((account (db:value "SELECT id FROM accounts WHERE session = ? AND address = ?" session (car (syscall 51 fd #f #f)))))
                     (if (not account)
                        (close (send-401)))

                  ; ok, все проверки закончены
                  (send-200 "Create new race")

                  (let ((race (db:value "INSERT INTO races (name, account) VALUES (?,?)" "new race" account)))
                     (if race
                        (send "Race created, you can <a href='/race/"session"/"race"'>customize it</a><br>")
                        (send "Something wrong :(")))

                  (send-end)))))

               ; ----------------------------------------
               ((starts-with url "/race/") ; session/race
                  (let ((args (string-split url #\/)))

                  (let ((session (list-ref args 1)))
                  (let ((account (db:value "SELECT id FROM accounts WHERE session = ? AND address = ?" session (car (syscall 51 fd #f #f)))))
                     (if (not account)
                        (close (send-401)))

                  (send-200 "Race"
                        "   <link rel='stylesheet' href='/stylesheets/login.css'>"
                        "   <script src='/javascripts/jlogin.js'></script>"
                        "   <!--<script>$(document).ready(getAdvantagePointsLeft);</script>-->")

                  ; если много параметров, значит расу надо обновить
                  (if (eq? (length args) 4)
                     (let ((race (list-ref args 2))
                           (name (unurl (list-ref args 3))))
                        (if (db:value "UPDATE races SET name=? WHERE id=?" name race)
                           (send "!!! Update completed<br>")
                           (send "!!! Update failed<br>"))))

                  (let ((race (list-ref args 2)))
                  ; а теперь просто вывести весь список текущих параметров:
                  ; http://wiki.starsautohost.org/wiki/Race_Design
                  (let ((values (db:value "SELECT name FROM races WHERE id=?" race)))
                  (let ((name values))
                  (send "   <section class='loginform cf'>"
                        "      <form id='race' action='/race/"session"/"race"' method='get' accept-charset='utf-8' onsubmit='return onRaceSubmit()'>"
                        "         <ul>"
                        "            <li>"
                        "               <label for='name'>Name</label>"
                        "               <input id='name' required value='"name"'></li>"
                        "            <li>"
                        "               <label for='name'>Adv. Points Left</label>"
                        "               <input id='apl' required value='"25"' readonly></li>")

                  (send "            <li style='clear:both'>"
                        "               <label>Primary Racial Trait</label></li>"
                        "            <li style='clear:both'></li>")
                  (for-each (lambda (name)
                     (send "<li><input type='radio' name='PRTs'>"name"</input></li>"))
                     (list "Claim Adjuster"         ; CA
                           "Jack Of All Trades"     ; JOAT
                           "Interstellar Traveller" ; IT
                           "Inner Strength"         ; IS
                           "Space Demolition"       ; SD
                           "War Monger"             ; WM
                           "Packet Physics"         ; PP
                           "Super Stealth"          ; SS
                           "Hyper Expansion"        ; HE
                           "Alternate Reality"))    ; AR

                  (send "            <li style='clear:both'>"
                        "               <label>Lesser Racial Trait</label></li>"
                        "            <li style='clear:both'></li>")
                  (for-each (lambda (name)
                     (send "<li><input type='radio' name='LRTs'>"name"</input></li>"))
                     (list "Improved Fuel Efficiency" ;+ IFE
                           "No Ramscoop Engines"      ;- NRSE
                           "Total Terraforming"       ;+ TT
                           "Cheap Engines"            ;- CE
                           "Advanced Remote Mining"   ;+ ARM
                           "Only Basic Remote Mining" ;- OBRM
                           "Improved Starbases"       ;+ ISB
                           "No Advanced Scanners"     ;- NAS
                           "Generalized Research"     ;+ GR
                           "Low Starting Population"  ;- LSP
                           "Ultimate Recycling"       ;+ UR
                           "Bleeding Edge Technology" ;- BET
                           "Mineral Alchemy"          ;+ MA
                           "Regenerating Shields"))   ;- RS

                  (send "            <li style='clear:both'>"
                        "               <input type='submit' value='Submit changes'>"
                        "               <a href='/home/"session"'>Cancel changes</a>"
                        "            </li>"
                        "         </ul>"
                        "      </form>"
                        "   </section>"))))

                  (send-end)))))

               ; ----------------------------------------------
               ;
               ((starts-with url "/create-new-game/") ; session
                  (let ((args (string-split url #\/)))

                  (if (ne? (length args) 2)
                     (close (send-400)))

                  (let ((session (list-ref args 1)))
                  (let ((account (db:value "SELECT id FROM accounts WHERE session = ? AND address = ?" session (car (syscall 51 fd #f #f)))))
                     (if (not account)
                        (close (send-401)))

                     ; ok, все проверки закончены
                     (send-200 "Create new game")
                     (send-end)))))

               ((starts-with url "/play/") ; session/game
                  (let ((args (string-split url #\/)))

                  (if (ne? (length args) 3)
                     (close (send-400)))

                  (let ((session (list-ref args 1))
                        (game    (list-ref args 2)))
                  (let ((account (db:value "SELECT id FROM accounts WHERE session = ? AND address = ?" session (car (syscall 51 fd #f #f)))))
                     (if (not account)
                        (close (send-401)))
                     ; todo: добавить проверку на то, что игра действительно принадлежит игроку
                     ;       и вообще,  все проверки стоит впихнуть в один большой запрос

                     ; ok
                     (send-200 "One"
                           "   <link href='/stylesheets/main.css' type='text/css' rel='stylesheet' />")
                     (send "   <header>"
                           (db:value "SELECT name FROM games WHERE id=?" game)
                           "   </header>"
                           "   <div id='main'>"
                           "      <view>"
                           "         view"
                           "      </view>"
                           "      <info>"
                           "         <scrolls>")
                     (send "<scroll>" "title1" "</scroll>")
                     (send "<scroll>" "title2" "</scroll>")
                     (send "<scroll>" "title3" "</scroll>")
                     (send "         </scrolls>"
                           "         <mailbox>Mailbox</mailbox>"
                           "         <mailbox>Summary</mailbox>"
                           "      </info>"
                           "   </div>")
                     (send-end)))))


               ; всякая серверная математика
               ((starts-with url "/get-advantage-points-left/") ; /prt/lrt
                  (let ((args (string-split url #\/)))

                  (if (ne? (length args) 3)
                     (close (send-400)))

                  (let ((prt (list-ref args 1))
                        (lrt (list-ref args 2)))

                     (send "HTTP/1.0 200 OK\n"
                           "Content-Type: text/plain\n"
                           "Server: " (car *version*) "/" (cdr *version*) "\n"
                           "\n")
                     (send "42"))))

               ;else
               (else
                  (send-404 fd)))))
      (else
         (send-404 fd)))
   (close #t)))
