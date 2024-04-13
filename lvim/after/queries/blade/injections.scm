((text) @injection.content
    (#not-has-ancestor? @injection.content "envoy")
    (#set! injection.combined)
    (#set! injection.language php))

; ; AlpineJS attributes
; (attribute
;   (attribute_name) @_attr
;     (#lua-match? @_attr "^x%-%l")
;   (quoted_attribute_value
;     (attribute_value) @injection.content)
;   (#set! injection.language "javascript"))

; ; SQL
; (scoped_call_expression
;  scope: (name) @scope (#eq? @scope "DB")
;  name: (name) @name (#any-of? @name "insert" "select")
;  (arguments
;   (argument
;    (string
;     ((string_value) @injection.content
;      (#set! injection.language sql)
;     )
;    )
;   )
;  )
; )
