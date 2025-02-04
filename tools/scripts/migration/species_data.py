#!/usr/bin/env python3

"""
    This is a standalone script for existing end-users to migrate their data
    structures to the new species_data format expected by datagen_species.cpp.
    New users and users who have not made any changes to species' data.json
    files should not need to use it. Any user which *has* made changes to these
    files can accept their copy during a merge from main, then run this script
    to update all of their files in bulk.
"""

import json
import pathlib


class SpeciesJSONEncoder(json.JSONEncoder):
    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.indentation_level = 0

    def encode(self, o):
        if isinstance(o, (list, tuple)):
            if self._is_inlinable(o):
                return f"[ {', '.join(json.dumps(el) for el in o)} ]"
            else:
                self.indentation_level += 1
                output = [f"{self.indent_str}{self.encode(el)}" for el in o]
                self.indentation_level -= 1
                return f"[\n{',\n'.join(output)}\n{self.indent_str}]"
        elif isinstance(o, dict):
            self.indentation_level += 1
            output = [
                f"{self.indent_str}{json.dumps(k)}: {self.encode(v)}"
                for k, v in o.items()
            ]
            self.indentation_level -= 1
            return f"{{\n{',\n'.join(output)}\n{self.indent_str}}}"
        else:
            return json.dumps(o)

    def _is_inlinable(self, o):
        if isinstance(o, (list, tuple)):
            return (
                not any(isinstance(el, (list, tuple, dict)) for el in o)
                and len(o) <= 2
                and len(str(o)) - 2 <= 80
            )

    @property
    def indent_str(self) -> str:
        if isinstance(self.indent, int):
            return " " * (self.indentation_level * self.indent)
        elif isinstance(self.indent, str):
            return self.indentation_level * self.indent
        else:
            raise ValueError(
                f"indent must be of type int or str (is: {type(self.indent)})"
            )

    def iterencode(self, o, **kwargs):
        return self.encode(o)


def migrate(d: dict) -> dict:
    o = {}
    o["name"] = d["name"]
    o["base_stats"] = d["base_stats"]
    o["types"] = d["types"]
    o["catch_rate"] = d["catch_rate"]
    o["base_exp_reward"] = d["base_exp_reward"]
    o["ev_yields"] = d["ev_yields"]
    o["held_items"] = d["held_items"]
    o["gender_ratio"] = d["gender_ratio"]
    o["hatch_cycles"] = d["hatch_cycles"]
    o["base_friendship"] = d["base_friendship"]
    o["exp_rate"] = d["exp_rate"]
    o["egg_groups"] = d["egg_groups"]
    o["abilities"] = d["abilities"]
    o["safari_flee_rate"] = d.get("safari_flee_rate", d.get("great_marsh_flee_rate"))
    o["body_color"] = d["sprite"]["color"]
    o["flip_sprite"] = d["sprite"].get("flip", d["sprite"].get("flip_sprite"))

    o["learnset"] = {}
    learnsets = d["learnset"]

    by_level = []
    if "level_up" in learnsets: # old dictionary-based structure
        for k, v in learnsets["level_up"].items():
            if isinstance(v, list):
                for mem in v:
                    by_level.append([int(k), mem])
            else:
                by_level.append([int(k), v])
    else: # newer list-of-tuples structure
        by_level = learnsets["by_level"]

    o["learnset"]["by_level"] = by_level
    o["learnset"]["by_tm"] = learnsets.get("by_tm", learnsets.get("tms"))
    if "tutor" in learnsets:
        o["learnset"]["by_tutor"] = learnsets["tutor"]
    elif "by_tutor" in learnsets:
        o["learnset"]["by_tutor"] = learnsets["by_tutor"]

    o["evolutions"] = d.get("evolutions", [])

    if "footprint" in d:
        o["footprint"] = {}
        footprint = d["footprint"]
        o["footprint"]["has"] = footprint.get("has", footprint.get("has_footprint"))
        o["footprint"]["size"] = footprint.get("size", footprint.get("footprint_size"))

    if "pokedex_data" in d:
        o["pokedex_data"] = d["pokedex_data"]
    if "catching_show_data" in d:
        o["catching_show"] = d["catching_show_data"]

    return o


parent = pathlib.Path("res/pokemon")
for fname in parent.rglob("**/data.json"):
    try:
        with open(fname, "r", encoding="utf-8") as f:
            j = json.load(f)
            d = migrate(j)
        with open(fname, "w", encoding="utf-8") as f:
            json.dump(d, f, cls=SpeciesJSONEncoder, indent=4, ensure_ascii=False)
    except KeyError as e:
        print(f"Error parsing {fname}")
        raise e
