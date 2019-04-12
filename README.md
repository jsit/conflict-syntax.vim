## Introduction

Syntax highlighting for `ft=conflict` files when doing `vimdiff`. Adds the
following highlight groups:

- `conflict`: Entire area of conflict.
    - No default highlighting
- `conflictHead`: Code between the `<<<<<<< HEAD` and `|||||||` or `=======`
markers
    - `hi link conflictHead Constant`
- `conflictCommon`: Code between the `|||||||` and `=======` markers (if using
`diff3`)
    - `hi link conflictHead Statement`
- `conflictRemote`: Code between the `=======` and `<<<<<<<` markers.
    - `hi link conflictHead Identifier`
- `conflictMarker`: The line markers themselves (`<<<<<<< HEAD`, `=======`,
etc.)
    - `hi link conflictHead Comment`

Example:

![](https://cdn-std.dprcdn.net/files/acc_68608/S41ICD)

## Tips

The syntax highlighting is easier is easier to read if you do `diffoff` on the
`conflict` file.
