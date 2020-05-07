# `macro_expander`

This is a python module for doing basic macro expansion in text, which is a simpler form of template rendering. The module
provides a class named `MacroProcessor` that will parse text for macros and call a handler (callback) for each. Users can easily define their
own macros by writing handler functions in a file named `macros.py`.

## Installing

```bash
$ pip install macro-expander
```

## Usage

The module provides a command line script named `expand-macros.py` that takes a text file as its first argument
