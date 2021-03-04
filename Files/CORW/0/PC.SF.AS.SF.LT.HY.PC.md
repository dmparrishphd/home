`%/*/<-%`
=========

Create pseudo-Unary Operators \[[R](../../WORM/0/PC.SF.AS.SF.LT.HY.PC.R)\]

Usage
-----

| Argument | Description                  |
| -------: | :--------------------------- |
|   `name` | A `character` string         |
|    `FUN` | A unary function             |
|   `safe` | A `logical` value (not `NA`) |

Value
-----

A function.

Effect
------

Except for behavior on error,
a special binary operator is `assign`ed to the environment from which `%/*/<-%` is called.

By default, it is an error to re-assign using `%/*/<-%`.

See Also
--------

[Create unary operator in R](https://stackoverflow.com/questions/48208590/create-unary-operator-in-r)
