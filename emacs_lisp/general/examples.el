;;
;; Put point at end of line and press 'C-x C-e' to execute
;;

;;
;; buffers
;;
(message "buffer-name = %s" (buffer-name))
(message "buffer-file-name = %s" (buffer-file-name))

;; get the current buffer object
(current-buffer)

;; the most recent buffer visited other than the current
(other-buffer)

;; switch to a different buffer
(switch-to-buffer (other-buffer))

;; number of characters in the current buffer
(buffer-size)

;; number of characters in the current buffer up to the current point
(point)

;; mark/select the entire buffer 
(mark-whole-buffer)

;; work with a string in a temp buffer
(with-temp-buffer
  (insert "brian pfeil")
  (buffer-substring 7 12))

;;
;; messaging
;;

;; display message in the mini-buffer
(message "hello world")

(message "my name is\"brian\"")


;; display message in mini-buffer using a format string
(message "the arg is %s and the number is %d" "hello" 99)

;; accessing environment variables
(message "The HOME environment variable value = %s" (getenv "HOME"))
(getenv "TERM")

;; this will insert the string into the current buffer where the point is
(insert "I just got inserted")

;;
;; strings
;;

;; get a substring
(substring "abcdefg" 0 3)

;; convert string to list of character codes
(string-to-list "foo")

;; replace by regexp
(replace-regexp-in-string "foo*" "fu" "Fight foo for food!")

;;
;; arrays
;;
[1 2 3 4]
["my" "name" "is" "brian"]

;; mixed element types
[1 "two" 3 "four"]

;;
;; defining functions
;;

;; define a function
(defun multiply-by-seven (number)
  "Multiply NUMBER by seven."
  (* 7 number))

;; use the funciton
(multiply-by-seven 3)

;; making a function interactive
(defun multiply-by-seven (number)
  "Multiply NUMBER by seven."
  (interactive "p")
  (message "The result is %d" (* 7 number)))

;; (interactive "p").  The "p" tells Emacs to pass the prefix argument
;; (e.g. 'C-u 4') the function and use its value for the argument of the
;; function. 

;; Enter the following to multiply 3*7 interactively:
;;   'C-u 3 M-x multiply-by-seven'

;;
;; let expressions
;;

(let ((first "Brian")
      (middle "Michael")
      (last "Pfeil"))
  (message "Name is %s, %s %s" last first middle))

;;
;; "if" special form
;;

;; general examples
(if (> 1 0)                          ; if-part
    (message "1 is greater than 0")) ; then-part

(if (equal "brian" "brian")
    (message "they're equal"))

;;
;; if-then-else expressions
;;

(if (> 0 1)
    (message "1 is greater than 0")
  (message "0 is not greater than 1"))

(pop-to-buffer "*Messages*")

(shell-command "ls")
(describe-function 'cd)
(current-time-string)

;;
;; hashtables
;;

;; create hashtable
(setq ht (make-hash-table))

;; add value to hash
(puthash 'name "brian pfeil" ht)

;; get value from table
(gethash 'name ht)

;; remove value from table
(remhash 'name ht)

;; clear table
(clrhash ht)

;; entries in table
(hash-table-count ht)

;; call function for every key/value pair of table
(maphash (lambda(key, value)
	   (message value)) ht)

;;
;; Files
;;

;; open file in buffer
(find-file "~/.emacs.d/init.el")

;; find-file-noselect returns a buffer for the specified file
(switch-to-buffer (find-file-noselect "~/.emacs.d/init.el"))

;; opens new buffer and splits window if neccessary
(find-file-other-window "~/.emacs.d/init.el")

;;
;; macros
;;
(defmacro inc (var)
        (list 'setq var (list '1+ var)))

(setq x 9)
(inc x)

;;
;; Processes
;;

;; call process
(call-process "ls" nil t)

;; call process with arguments
(call-process "ls" nil t nil "-alt")

;; call process and return all output as string
(shell-command-to-string "ls -alt")

;; send entire buffer to wc and put the output in the "*scratch*" buffer
(shell-command-on-region (point-min) (point-max) "wc -l" "*scratch*")

;; standard shell command
(shell-command "notepad.exe")
(shell-command "cmd.exe /c dir")

;;
;; Searching
;;



;; set x to the string read from the minibuffer
(setq x (read t))

;; echo the string entered in the minibuffer
(message "%s" (read t))

(message "%s" (read (get-buffer "b1")))

(read (get-buffer "b1"))

(buffer-list)
(mapcar (lambda (b) 
	  (kill-buffer b)
	  ) (buffer-list))

(generate-new-buffer "wyatt")

;;
;; association lists
;;
(setq alist '(("pine" . "cones") ("oak" . "acorns") ("maple" . "seeds")))
(setq alist (append (list '("name" . "brian")) alist))
(assoc "name" alist)


;;
;; url
;;

;; opens the url in the default browser
(open-url "http://www.google.com")

(switch-to-buffer-other-window (buffer-name (url-retrieve-synchronously my-url)))

;; wrap in program
(progn
  (require 'url)

  (setq my-url "http://www.google.com")

  (defun http-get-response-text(url)
    (let ((buffer (url-retrieve-synchronously url))) ; Use URL to download
      (save-excursion
	(set-buffer buffer)
	(goto-char (point-min))
	(re-search-forward "^$" nil 'move) ; find end of response headers
	(forward-char)
	(delete-region (point-min) (point)) ; delete response header text from buffer
	(buffer-string)))) ; return response string

  (http-get-response-text my-url))

