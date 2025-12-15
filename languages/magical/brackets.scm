; Bracket pairs for auto-closing and matching
(object "{" @open "}" @close)
(array "[" @open "]" @close)
(function_parameters "(" @open ")" @close)
(function_call "(" @open ")" @close)
(string_literal "\"" @open "\"" @close)
(string_literal "'" @open "'" @close)

; Block structures
(card_definition "{" @open "}" @close)
(game_definition "{" @open "}" @close)
(deck_definition "{" @open "}" @close)
(zone_definition "{" @open "}" @close)
(action_definition "{" @open "}" @close)
(template_definition "{" @open "}" @close)
(mechanic_definition "{" @open "}" @close)
(ability_definition "{" @open "}" @close)
(rules_block "{" @open "}" @close)
(rule_definition "{" @open "}" @close)

; Function bodies
(function_expression "{" @open "}" @close)
(arrow_function "{" @open "}" @close)

; Conditional blocks
(if_statement "{" @open "}" @close)
(else_clause "{" @open "}" @close)

; Loop blocks
(while_statement "{" @open "}" @close)
(for_statement "{" @open "}" @close)
