
;; title: token-example
;; version:
;; summary:
;; description:

;; traits
;;

;; token definitions
;;
(define-fungible-token example)

;; constants
;;

;; data vars
;;

;; data maps
;;

;; public functions
;;
(define-public (mint (amount uint) (to principal))
  (ft-mint? example amount to)
)

;; read only functions
;;

;; private functions
;;

