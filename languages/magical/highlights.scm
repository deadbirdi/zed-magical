; JavaScript-grammar-compatible highlights for Magical language
; This uses the JavaScript Tree-sitter grammar but adds Magical-specific highlighting

; Magical keywords (highlighted as keywords)
((identifier) @keyword
 (#match? @keyword "^(card|game|deck|zone|action|template|mechanic|ability|rules|rule|include|extends)$"))

; JavaScript keywords we want to keep
((identifier) @keyword
 (#match? @keyword "^(let|const|var|function|if|else|while|for|return|true|false)$"))

; String literals (card names, property values)
(string) @string

; Numbers
(number) @number

; Comments
(comment) @comment

; Property names in objects
(property_identifier) @property

; Function calls
(call_expression
  function: (identifier) @function)

; Member expressions (object.property)
(member_expression
  property: (property_identifier) @property)

; Punctuation
("{" @punctuation.bracket)
("}" @punctuation.bracket)
("[" @punctuation.bracket)
("]" @punctuation.bracket)
("(" @punctuation.bracket)
(")" @punctuation.bracket)
(":" @punctuation.delimiter)
("," @punctuation.delimiter)
(";" @punctuation.delimiter)

; Operators
("=" @operator)
("==" @operator)
("!=" @operator)
("&&" @operator)
("||" @operator)
("!" @operator)
(">" @operator)
("<" @operator)
(">=" @operator)
("<=" @operator)
("+" @operator)
("-" @operator)
("*" @operator)
("/" @operator)
