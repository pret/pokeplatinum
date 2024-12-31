# Fast Gauge

This is a quick tutorial on how to modify the gauge of exp and health bars of Plat so that the bar visually updates in subpixels per second instead of points per second.

This mod is a backport of the healthbar fix made by the contributors of [pret/pokeheartgold](https://github.com/pret/pokeheartgold/blob/src/battle/battle_hp_bar.c#L1497) for the heartgold/soulsilver decomp.

Fixes are written in the `diff` format, as mentioned in [Bugs and Glitches](../bugs_and_glitches.md).

## Edit

1. Go to [/src/battle/healthbar.c](/src/battle/healthbar.c)
2. Go to the ``UpdateGauge`` function.
3. Edit the function like so:
```diff
if (max < corrected) {
-   ratio = max * 0x100 / corrected;
+   ratio = (max >> 8) / corrected;
```
