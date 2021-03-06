# creamy_field

[![](https://img.shields.io/pub/v/creamy_field)](https://pub.dev/packages/creamy_field)
[![](https://img.shields.io/github/issues/predatorx7/snake_code)](https://github.com/predatorx7/snake_code/issues)
[![Flutter package analysis](https://github.com/predatorx7/snake_code/workflows/Flutter%20package%20analysis/badge.svg?branch=packages%2Fcreamy_field)](https://github.com/predatorx7/snake_code/actions?query=workflow%3A%22Flutter+package+analysis%22)

Components & widgets with rich text, custom selection toolbar & syntax highlight support. Useful for Rich text editors.

## Getting Started

### The main components of this package

1. CreamyTextField
1. CreamyEditingController
1. Syntax Highlighter
1. creamyTextSelectionControls

The CreamyTextField is a text widget similar to Flutter's `TextField` widget. However, unlike a regular `TextField` the widget supports a syntax highlighter, line indicator, selection toolbar actions, custom text selection toolbar support, ability to horizontally scroll and a controller which provides more description about a text.

You can also use a limited support for syntax highlighting of many programming languages & themes using CreamySyntaxHighlighter.

Since the text field itself is independent of the syntax highlighting rules, the same text field can be used for any other programming or markup langugage.
Only the syntax highlighter implementation needs to be created separately for each new programming language.

### Note

- Versions before v0.3.2 is not compatible with flutter v1.20.0 and above due to a [breaking change of TextInputClient released in flutter v1.20](https://flutter.dev/docs/release/breaking-changes/add-currentAutofillScope-to-TextInputClient).

- Use [creamy_field v0.3.1](https://pub.dev/packages/creamy_field/versions/0.3.1) if you're using flutter sdk before 1.20.0

Check [screenshots folder](https://github.com/predatorx7/snake_code/tree/master/packages/creamy_field/screenshots) for some sample UI screenshots.

Feel free to add features, [issues](https://github.com/predatorx7/snake_code/issues) & [pull request](https://github.com/predatorx7/snake_code/pulls)
