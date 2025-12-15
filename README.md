# Magical Language Support for Zed

A syntax highlighting extension for the [Magical](https://github.com/sneakycrow/mgcl) card game configuration language in [Zed editor](https://zed.dev).

## Features

- **Syntax Highlighting**: Full syntax highlighting for `.mgcl` files
- **File Association**: Automatically recognizes `.mgcl` files
- **Bracket Matching**: Auto-closes braces, brackets, parentheses, and quotes
- **Comment Support**: Line comments with `//`
- **Indentation**: Smart indentation with 2-space tabs

## Installation

### From Zed Extensions (Coming Soon)

1. Open Zed
2. Press `Cmd+Shift+P` (Mac) or `Ctrl+Shift+P` (Linux/Windows)
3. Type "zed: extensions" and press Enter
4. Search for "Magical"
5. Click Install

### Manual Installation (Development)

1. Clone this repository:
   ```bash
   git clone https://github.com/sneakycrow/zed-magical.git
   ```

2. Copy to your Zed extensions directory:
   ```bash
   # macOS/Linux
   cp -r zed-magical ~/.config/zed/extensions/magical
   ```

3. Restart Zed

## Supported Syntax

The extension highlights:

### Keywords
- `card`, `game`, `deck`, `zone`, `action`, `template`
- `extends`, `include`, `mechanic`, `ability`, `rules`
- `let`, `const`, `var`, `function`, `if`, `else`
- `true`, `false`

### Data Types
- **Strings**: `"Lightning Bolt"`, `'red'`
- **Numbers**: `3`, `20`, `1.5`
- **Booleans**: `true`, `false`

### Structures
- **Objects**: `{ cost: 1, type: "instant" }`
- **Arrays**: `["red", "blue", "green"]`
- **Comments**: `// This is a comment`

## Example

```mgcl
// Simple card definition
card "Lightning Bolt" {
  cost: 1,
  type: "instant",
  damage: 3,
  text: "Lightning Bolt deals 3 damage to any target."
}

// Playing card
card "Ace of Spades" {
  suit: "spades",
  rank: "ace",
  value: 1,
  color: "black"
}

// Game definition with template inheritance
game "Simple Magic" extends trading_card_template {
  players: 2,
  starting_life: 20,
  zones: {
    hand: { max_size: 7 },
    battlefield: { visible: true }
  }
}

// Deck definition
deck "Aggro Red" {
  colors: ["red"],
  strategy: "aggressive",
  creatures: 24,
  spells: 12,
  lands: 24
}
```

## Configuration

### Custom Settings

Add to your Zed `settings.json`:

```json
{
  "languages": {
    "Magical": {
      "tab_size": 4,
      "hard_tabs": true,
      "preferred_line_length": 100
    }
  }
}
```

### Key Bindings

Add to your `keymap.json`:

```json
[
  {
    "context": "Editor && language == 'Magical'",
    "bindings": {
      "cmd-/": "editor::ToggleComments"
    }
  }
]
```

## Language Features

- **File Extension**: `.mgcl`
- **Comment Style**: `// line comments`
- **Indentation**: 2 spaces (configurable)
- **Bracket Pairs**: `{}`, `[]`, `()`, `""`, `''`

## Development

This extension uses the [tree-sitter-magical](https://github.com/sneakycrow/tree-sitter-magical) grammar for parsing and syntax highlighting.

### Building

The extension is ready to use as-is. If you modify the Tree-sitter grammar:

1. Update the grammar repository
2. Update the `rev` in `extension.toml`
3. Reinstall the extension

### Testing

Test the extension with these sample files:

```bash
# Clone the main language repository
git clone https://github.com/sneakycrow/mgcl.git

# Open test files in Zed
zed mgcl/examples/simple_cards.mgcl
zed mgcl/examples/deck_builder.mgcl
```

## File Structure

```
zed-magical/
├── extension.toml           # Extension manifest
├── languages/
│   └── magical/
│       ├── config.toml      # Language configuration
│       ├── highlights.scm   # Syntax highlighting rules
│       ├── brackets.scm     # Bracket matching rules
│       └── outline.scm      # Code outline rules
├── README.md               # This file
└── LICENSE                 # MIT license
```

## Troubleshooting

### Extension Not Loading

1. **Check installation path:**
   ```bash
   ls ~/.config/zed/extensions/magical
   ```

2. **Verify required files exist:**
   - `extension.toml`
   - `languages/magical/config.toml`

3. **Restart Zed completely**

### Syntax Highlighting Not Working

1. **Check file extension** is `.mgcl`
2. **Manually select language:**
   - Click language indicator in status bar
   - Select "Magical" from dropdown
3. **Check Zed version** (requires Zed with extension support)

### Grammar Issues

If syntax highlighting seems wrong, check the [Tree-sitter grammar](https://github.com/sneakycrow/tree-sitter-magical) for updates.

## Contributing

1. Fork this repository
2. Make your changes
3. Test with sample `.mgcl` files
4. Submit a pull request

### Areas for Contribution

- [ ] Code folding support
- [ ] Better error highlighting  
- [ ] Code completion (LSP integration)
- [ ] Improved bracket matching
- [ ] More sophisticated outline view

## Related Projects

- [**Magical Language**](https://github.com/sneakycrow/mgcl) - Main language implementation
- [**Tree-sitter Grammar**](https://github.com/sneakycrow/tree-sitter-magical) - Parsing grammar
- [**Language Specification**](https://github.com/sneakycrow/mgcl/blob/main/SPEC.md) - Complete language spec

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Support

- **Issues**: [GitHub Issues](https://github.com/sneakycrow/zed-magical/issues)
- **Language Spec**: [Magical Documentation](https://github.com/sneakycrow/mgcl)
- **Zed Editor**: [Zed Documentation](https://zed.dev/docs)