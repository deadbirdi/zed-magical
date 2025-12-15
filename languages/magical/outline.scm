; Outline queries for code structure and navigation

; Top-level definitions
(game_definition
  name: (string_literal) @name) @item

(card_definition
  name: (string_literal) @name) @item

(deck_definition
  name: (string_literal) @name) @item

(zone_definition
  name: (string_literal) @name) @item

(action_definition
  name: (string_literal) @name) @item

(template_definition
  name: (string_literal) @name) @item

(mechanic_definition
  name: (string_literal) @name) @item

(ability_definition
  name: (string_literal) @name) @item

; Function definitions
(function_declaration
  name: (identifier) @name) @item

(arrow_function
  name: (identifier) @name) @item

; Variable declarations (const/let with significant values)
(variable_declaration
  declarator: (variable_declarator
    name: (identifier) @name
    value: (object_expression))) @item

(variable_declaration
  declarator: (variable_declarator
    name: (identifier) @name
    value: (array_expression))) @item

; Rules within rules blocks
(rule_definition
  name: (string_literal) @name) @item

; Properties within objects (for card properties, etc.)
(property_definition
  key: (property_name) @name) @context

; Include statements (for showing what mechanics are included)
(include_statement
  module: (string_literal) @name) @item

; Extends statements (for template inheritance)
(extends_clause
  template: (identifier) @name) @context
