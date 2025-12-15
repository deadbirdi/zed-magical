; Outline queries for code structure and navigation
; Only using node types that actually exist in our grammar

; Card definitions
(card_definition
  name: (string_literal) @name) @item

; Game definitions
(game_definition
  name: (string_literal) @name) @item

; Deck definitions
(deck_definition
  name: (string_literal) @name) @item

; Variable declarations
(variable_declaration
  (identifier) @name) @item
