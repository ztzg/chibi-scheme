(define-library (chibi syntax-case)
  (export ... _ free-identifier=? bound-identifier=? identifier?
          syntax-case syntax quasisyntax unsyntax unsyntax-splicing
          datum->syntax syntax->datum
          generate-temporaries with-syntax syntax-violation
          with-ellipsis ellipsis-identifier?
          define-syntax let-syntax letrec-syntax
          make-variable-transformer identifier-syntax)
  (import (rename (chibi)
                  (define-syntax %define-syntax)
                  (let-syntax %let-syntax)
                  (letrec-syntax %letrec-syntax)
                  make-variable-transformer)
          (only (chibi ast)
                env-cell macro? macro-aux macro-aux-set!
                procedure-arity procedure-variadic?
                procedure-variable-transformer?)
          (only (meta) environment)
          (srfi 1)
          (srfi 11)
          (srfi 39))
  (include "syntax-case.scm"))
