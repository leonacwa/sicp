
(define zero-crosssings
  (stream-map sign-change-detector sense-data (cons-stream 0 zero-crosssings)))

