;; SecureKeyRegistry.clar
;; Admin-controlled key-value storage registry

;; ------------------------
;; Error Codes
;; ------------------------
(define-constant ERR-UNAUTHORIZED (err u100))
(define-constant ERR-NOT-FOUND (err u101))

;; ------------------------
;; Admin / Owner
;; ------------------------
(define-data-var admin principal tx-sender)

;; ------------------------
;; Storage: Registry
;; ------------------------
;; Fixed map definition - use tuple syntax {key: type} instead of ((key type))
(define-map registry
  {key: (string-ascii 64)}
  {value: (string-ascii 256)}
)
