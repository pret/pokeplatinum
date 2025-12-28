# `dataproc`

This folder contains two core tools:

1. A middle-ware library for loading and processing arbitrary data files.
2. A suite of CLI tools built using these tools for processing simple
   structures.

## Using the Library

The core of the library's interface is defined by `include/dataproc.h`. Much of
the underlying code used to process any given file is abstracted away into a
generic private interface. Individual implementations can be written for
particular file types, identified by their extensions.

At present, only one implementation is provided: JSON, powered by `yyjson` as a
back-end.

After loading a data-file from disk, the caller can access top-level fields from
the structure using a `jq`-like query language:

```c
// Access a top-level primitive.
get_u8(data, ".catch_rate");

// Access a nested primitive.
get_u8(data, ".base_stats.hp");

// Access an array member.
get_u8(data, ".types[0]");
get_u8(data, ".types[1]");
```

Typical access routines are defined in `include/validate.h` and will output
informative messages if a field does not match the expected type or bounds:

```text
data.json:5:20: error: expected '.base_stats.defense' to be an integer in the range [0,255]
    5 |         "defense": 256,
      |                    ^~^
```

This automated reporting can be suppressed by setting `report = false` when
calling `dataproc_load`.
