;; title: template-example
;; version:
;; summary:
;; description:

;; traits
;;

;; token definitions
;;

;; constants
;;
(define-constant cfg-token-example .token-example)

;; data vars
;;

;; data maps
;;

;; public functions
;;
(define-public (mint (amount uint) (to principal))
  (contract-call? .token-example mint amount to)
)

(define-public (mint-template (amount uint) (to principal))
  (contract-call? cfg-token-example mint amount to)
)

;; read only functions
;;

;; private functions
;;

