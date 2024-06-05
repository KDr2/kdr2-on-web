#lang racket

(require scribble/core)
(require scribble/html-properties)

(provide file-content ext-image favicon
         div script)

;; text
(define (file-content path)
  (string-join (file->lines path) "\n"))

;; images
(define (cloudinary-url width path)
  (if width
      ;; https://res.cloudinary.com/kdr2/image/upload/c_scale,w_
      ;; + 600 +/ + img-kdr2-com/main/josh-2022.jpg
      (string-append "https://res.cloudinary.com/kdr2/image/upload/c_scale,w_"
                     (number->string width) "/" path)
      ;; else
      (string-append "https://res.cloudinary.com/kdr2/image/upload/" path)))

(define (ext-image-no-link width path)
  (let ((src (cloudinary-url width path))
        (style "width: auto; height: auto; max-width: 100%;"))
    (make-element
     (make-style #f
                 (list (make-alt-tag "img")
                       (make-attributes `((src . ,src)
                                          (style . ,style)))))
     "")))


(define (ext-image width path)
  (let ((link (cloudinary-url #f path)))
    (make-element
     (make-style #f
                 (list (make-alt-tag "a")
                       (make-attributes `((href . ,link)
                                          (target . "_blank")))))
     (ext-image-no-link width path))))


(define favicon (make-style
                 'favicon
                 (list (head-extra
                        '(link ([rel "shortcut icon"]
                                [type "image/png"]
                                [href "https://res.cloudinary.com/kdr2/image/upload/img-kdr2-com/main/k-favicon.png"]))))))

(define (div id)
  (make-element
   (make-style #f
               (list (make-alt-tag "div")
                     (make-attributes `((id . ,id)))))
   ""))

(define (script link)
  (make-element
   (make-style #f
               (list (make-alt-tag "script")
                     (make-attributes `((src . ,link)))))
   ""))
