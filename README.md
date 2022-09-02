<p align="center">
<img src="./share/img/logo.svg"
width="300px" height="300px" />
</p>

# QRgen - A QR generation library

QRgen is a QR generation library fully written in Nim without any external
dependencies.

[![Run Tests](https://github.com/aruZeta/QRgen/actions/workflows/tests.yaml/badge.svg)](https://github.com/aruZeta/QRgen/actions/workflows/tests.yaml)
[![Gen Docs](https://github.com/aruZeta/QRgen/actions/workflows/gendocs.yaml/badge.svg)](https://github.com/aruZeta/QRgen/actions/workflows/gendocs.yaml)
## Prerequisites

`nim --version` > `x.x.x`

## Installation

`nimble install QRgen`

## Features

- Supports all QR versions: from `1` to `40`.
- Supports all EC (Error Correction) levels: `L`, `M`, `Q` and `H`.
- Supports `numeric mode`, `alphanumeric mode` and `byte mode`.
- Supports printing a QR code on your terminal via standard output.
- Supports printing a QR code to SVG, with custom colors and rounded
alignment patterns.

## Usage

```nim
import QRgen
let myQR = newQR("https://github.com/aruZeta/QRgen")
myQR.printTerminal
```

And the QR code would be displayed in our terminal like:

<p align="center">
<img src="./share/img/terminal-example.png"
width="200px" height="200px" />
</p>

We can also use `myQR.printSvg` and we would get a string with a SVG tag which
would render like this:

<p align="center">
<img src="./share/img/svg-example.svg"
width="200px" height="200px" />
</p>

When printing to SVG we can also set different colors and even round the
alignment patterns of the QR code:

<p align="center">
<img src="./share/img/svg-colors-rounded-example.svg"
width="200px" height="200px" />
</p>

Also, check the [docs](https://aruzeta.github.io/QRgen/develop/QRgen.html) to
know more about the main API.

# License

Distributed under the MIT License. See `LICENSE` for more information.
