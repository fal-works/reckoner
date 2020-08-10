# reckoner

Small library for math and 2D geometry.


## Features

### `Random` / `RandomCore`

Pseudorandom number generator.

Uses either `std.Math` or `reckoner.Xorshift` (see "Compiler Flags" below).

### `Xorshift`

[Xorshift](https://en.wikipedia.org/wiki/Xorshift) pseudorandom number generator (currently only the 32-bit version).

### `Geometry`

Constants and functions for geometry, such as angles and trigonometric calculations.

### `TmpVec2D` / `TmpVec2DPolar`

2D vector classes with inline constructor.

### `ArcDegrees`

Angle in degrees of arc (360 for a full rotation).

### `Numeric`

Miscellaneous constants and functions related to numeric values.


## Caveats

Unstable!


## Compilation Flags

|flag|description|
|---|---|
|reckoner_use_xorshift32|Uses `Xorshift` in `Random`/`RandomCore`.|
|reckoner_epsilon|Changes value of `Numeric.EPSILON` by `-D reckoner_epsilon=(any float)`|


## Dependencies

- [sinker](https://github.com/fal-works/sinker) v0.4.0 or compatible

See also:
[FAL Haxe libraries](https://github.com/fal-works/fal-haxe-libraries)
