#lang racket

;; define killianz as a lambda
(define killianz
  (lambda ()
    (let ((actions '("I am reading!"
                     "I am writing!"
                     "I am idling!")))
      (displayln (list-ref actions (random (length actions)))))))

;; [killianz]
