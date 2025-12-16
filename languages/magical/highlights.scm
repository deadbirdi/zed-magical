; Keywords
("card" @keyword)
("game" @keyword)
("deck" @keyword)
("zone" @keyword)
("action" @keyword)
("template" @keyword)
("mechanic" @keyword)
("win_condition" @keyword)
("player_state" @keyword)
("extends" @keyword)
("let" @keyword)
("const" @keyword)
("var" @keyword)
("true" @keyword)
("false" @keyword)

; String literals
(string_literal) @string

; Numbers
(number_literal) @number

; Booleans
(boolean_literal) @boolean

; Comments
(line_comment) @comment

; Identifiers
(identifier) @variable

; Property names in objects
(property key: (identifier) @property)
(property key: (string_literal) @property)

; Card/game/deck/zone/action/template/mechanic/win_condition names (string literals after keywords)
(card_definition name: (string_literal) @title)
(game_definition name: (string_literal) @title)
(deck_definition name: (string_literal) @title)
(zone_definition name: (string_literal) @title)
(action_definition name: (string_literal) @title)
(template_definition name: (string_literal) @title)
(mechanic_definition name: (string_literal) @title)
(win_condition_definition name: (string_literal) @title)

; Template names in extends clauses
(game_definition template: (identifier) @type)

; Function calls
(function_call function: (identifier) @function)

; Punctuation
("{" @punctuation.bracket)
("}" @punctuation.bracket)
("[" @punctuation.bracket)
("]" @punctuation.bracket)
("(" @punctuation.bracket)
(")" @punctuation.bracket)
(":" @punctuation.delimiter)
("," @punctuation.delimiter)

; Operators
("=" @operator)
("+" @operator)
("-" @operator)
("|" @operator)
(">" @operator)
("<" @operator)
(">=" @operator)
("<=" @operator)
("==" @operator)
("!=" @operator)
("&&" @operator)
("||" @operator)
("*" @operator)
("/" @operator)
("%" @operator)
(".." @operator)
