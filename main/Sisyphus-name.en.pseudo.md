> [!note]
> This algorithm shall only be executed by humans, preferably immortal.

# Setup
0. Let `NAME` be the executor's name; default `"Sisyphus"`.
1. Let `LEN` be the length of `NAME` in graphemes.
2. Get at least `LEN` boulders of size ~$`2m^3`$.
3. Carve each grapheme of `NAME` into each boulder. Each glyph is allowed to have a different typeface from the other glyphs.

# Main
0. Manually move (by rolling, lifting, or anything but teleportation) each boulder onto a hill, such that it reads as `NAME`.
1. Once all boulders are properly placed, move them back to the base in reverse order. A [LIFO](https://en.wikipedia.org/wiki/Stack_\(abstract_data_type\)), indeed.
2. Repeat from step #0 (`go-to 0`)
