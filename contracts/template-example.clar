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
(define-constant cfg-token-example-sugared .token-example)
(define-constant cfg-token-example-full 'ST1PQHQKV0RJXZFY1DGX8MNSNYVE3VGZJSRTPGZGM.token-example)

;; data vars
;;

;; data maps
;;

;; public functions
;;

;; succeeds
(define-public (mint (amount uint) (to principal))
  (contract-call? .token-example mint amount to)
)

;; fails with Unchecked(ContractCallExpectName)
(define-public (mint-template-sugared (amount uint) (to principal))
  (contract-call? cfg-token-example-sugared mint amount to)
)

;; fails with Unchecked(ContractCallExpectName)
(define-public (mint-template-full (amount uint) (to principal))
  (contract-call? cfg-token-example-full mint amount to)
)

;; read only functions
;;

;; private functions
;;

