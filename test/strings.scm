(assert (equal? (symbol->string 'foo) "foo"))
(assert (eqv? (string->symbol "foo") 'foo))

(assert (char? #\a))
(assert (char? #\ ))
(assert (char? #\)))
(assert (char? #\tab))

(assert (char=? #\F #\F))
(assert (char=? #\space #\space))
(assert (char=? #\space #\ ))
(assert (char=? #\  #\space))
(assert (not (char=? #\F #\f)))
(assert (not (char=? #\8 #\f)))

(assert (char<? #\A #\B))
(assert (char<? #\a #\b))
(assert (char<? #\0 #\9))

(assert (char=? (integer->char 97) #\a))
(assert-equal 100 (char->integer #\d))

(assert (char=? #\A (char-upcase #\a)))
(assert (char=? #\h (char-downcase #\H)))

(assert (char-alphabetic? #\A))
(assert (char-alphabetic? #\Z))
(assert (char-alphabetic? #\a))
(assert (char-alphabetic? #\z))
(assert (not (char-alphabetic? #\0)))
(assert (not (char-alphabetic? #\[)))

(assert (char-numeric? #\0))
(assert (char-numeric? #\9))
(assert (not (char-numeric? #\k)))

(assert (char-whitespace? #\ ))
(assert (char-whitespace? #\tab))
(assert (char-whitespace? #\newline))
(assert (char-whitespace? #\space))
(assert (not (char-whitespace? #\s)))
