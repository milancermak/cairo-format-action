# cairo-format-action

This action checks formatting of Cairo source files using the standard `cairo-format` tool provided in `cairo-lang`.

## Example config

```yaml
name: Cairo format

on:
  push:
    branches:
      - master
  pull_request:

jobs:
  format:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v3
      - name: Check Cairo formatting
        uses: milancermak/cairo-format-action@v1
        # pass additional options
        # with:
        #   target: src/starknet/contracts
        #   cairo-version: 0.9.1
        #   cairo-format-args: "--one_item_per_line"
```

## Options

| NAME              | DESCRIPTION                                     | EXAMPLE                | DEFAULT                      |
|-------------------|-------------------------------------------------|------------------------|------------------------------|
| target            | Directory containing .cairo files to be checked | src/starknet/contracts | contracts                    |
| cairo-version     | `cairo-lang` package version to be installed    | 0.9.1                  | *none* (uses latest version) |
| cairo-format-args | Additional arguments to pass to `cairo-format`  | --one_item_per_line    | *none*                       |
