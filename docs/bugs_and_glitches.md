# Bugs and Glitches

These are known bugs and glitches in the original Pokémon Platinum game: code that
clearly does not work as intended or that only works in limited circumstances
but has the possibility to fail or crash.

Fixes are written in the `diff` format. If you've used Git before, this should
look familiar:

```diff
this is some code
- delete red - lines
+ add green + lines
```

## Contents

- [Battle Engine](#battle-engine)
  - [Acid Rain](#acid-rain)

## Battle Engine

### Acid Rain

"Acid Rain" is the colloquial name of an in-battle glitch in Pokémon Platinum,
Heart Gold, and Soul Silver which results in the simultaneous occurrence of
multiple forms of field effects, including multiple instances of weather-based
damage and end-of-turn Ability effects. It is triggered under the following conditions:

1. One or more of any weather effect (aside from heavy rain), Trick Room, Gravity,
or Uproar is in effect.
2. The host player of the battle (or, for in-game battles, the player) uses Pursuit.
3. The target of Pursuit is attempting to switch out on that turn and faints.

<details>
  <summary>Detailed Technical Description</summary>

  The root cause of this bug is a parameter swap in the vanilla bytecode script
  for Pursuit which subtracts the fainted battler's ID from the field conditions
  bitmask, rather than setting the fainted battler variable to that ID.

  To illustrate, suppose that the field condition is set to permanent Hail due
  to a previous activation of Snow Warning. This is represented in the field-condition
  bitmask as `0x80`. At a point after this, our opponent is fainted by Pursuit while
  attempting to switch out, setting `BTLVAR_SCRIPT_TEMP` to `1`. Then, the following
  line of the bytecode is executed:

  ```
- UpdateVarFromVar OPCODE_SUB_TO_ZERO, BTLVAR_FIELD_CONDITIONS, BTLVAR_SCRIPT_TEMP
 ````

  This instruction subtracts the value of `BTLVAR_SCRIPT_TEMP` (1) from the value
  of `BTLVAR_FIELD_CONDITIONS` (`0x80`) and stores the result (`0x7F`) back into
  `BTLVAR_FIELD_CONDITIONS`. This value represents the 7 least-significant bits
  being flipped to `1`, which denotes in-game that all of the following weathers
  are active:

    1. Hail (temporary)
    2. Sun (temporary and permanent)
    3. Sand (temporary and permanent)
    4. Rain (temporary and permanent)

  Because the turn counter for temporary weather was never initialized, temporary
  weather states are functionally permanent. The visible result is that each of
  these weather states is active at once and that all effects related to them also
  trigger.
</details>

**Fix**: Edit [`res/battle/res/scripts/subscript_pursuit.s`](https://github.com/pret/pokeplatinum/blob/main/res/battle/scripts/subscripts/subscript_pursuit.s)

```diff
     UpdateVar OPCODE_ADD, BTLVAR_FAINTED_MON, BATTLER_ENEMY_SLOT_1
     UpdateVar OPCODE_RIGHT_SHIFT, BTLVAR_CALC_TEMP, 0x00000001
     CompareVarToValue OPCODE_NEQ, BTLVAR_CALC_TEMP, 0x00000000, _208
-    ; BUG: Acid Rain (see docs/bugs_and_glitches.md)
-    UpdateVarFromVar OPCODE_SUB_TO_ZERO, BTLVAR_FIELD_CONDITIONS, BTLVAR_SCRIPT_TEMP
+    UpdateVarFromVar OPCODE_SET, BTLVAR_FAINTED_MON, BTLVAR_SCRIPT_TEMP
     Call BATTLE_SUBSCRIPT_POP_ATTACKER_AND_DEFENDER
     UpdateVarFromVar OPCODE_GET, BTLVAR_MOVE_TEMP, BTLVAR_CURRENT_MOVE
```
