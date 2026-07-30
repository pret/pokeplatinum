#!/usr/bin/env python3

import json
import math
import pathlib
import sys

assert len(sys.argv) >= 2, "missing required argument: 'metric' or 'imperial'"

units = sys.argv[1]
assert units == "metric" or units == "imperial", (
    "unit system must be one of 'metric' or 'imperial'"
)


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
            return json.dumps(o, ensure_ascii=False)

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

OVERRIDES = [
    'mr_mime',
    'furret',
    'porygon2',
    'linoone',
    'lombre',
    'torkoal',
    'rayquaza',
]

def pounds_override(species: str) -> float:
    if species in OVERRIDES:
        return -0.1
    return 0.0


def inches_to_meters(inches: int) -> float:
    converted = inches / 39.37
    truncated = round(converted, 1)
    return truncated


def meters_to_inches(meters: float) -> int:
    converted = meters * 39.37
    truncated = int(round(converted, 0))
    return truncated


def pounds_to_kilograms(pounds: float, species: str) -> float:
    converted = (pounds - pounds_override(species)) * 0.45359237
    truncated = round(converted, 1)
    return truncated


def kilograms_to_pounds(kilograms: float, species: str) -> float:
    converted = (kilograms / 0.45359237) + pounds_override(species)
    truncated = round(converted, 1)
    return truncated


def convert(units: str, species: str, dexdata):
    outdata = {}
    if units == "metric":
        if "height_inches" in dexdata:
            outdata["height_meters"] = inches_to_meters(dexdata["height_inches"])
        elif "height" in dexdata: # NOTE: decimeters
            outdata["height_meters"] = dexdata["height"] / 10.0
        else:
            outdata["height_meters"] = dexdata["height_meters"]

        if "weight_pounds" in dexdata:
            outdata["weight_kilograms"] = pounds_to_kilograms(dexdata["weight_pounds"], species)
        elif "weight" in dexdata: # NOTE: hectograms
            outdata["weight_kilograms"] = dexdata["weight"] / 10.0
        else:
            outdata["weight_kilograms"] = dexdata["weight_kilograms"]
    else:
        if "height_meters" in dexdata:
            outdata["height_inches"] = meters_to_inches(dexdata["height_meters"])
        elif "height" in dexdata: # NOTE: decimeters (legacy storage)
            outdata["height_inches"] = meters_to_inches(dexdata["height"] / 10.0)
        else:
            outdata["height_inches"] = dexdata["height_inches"]

        if "weight_kilograms" in dexdata:
            outdata["weight_pounds"] = kilograms_to_pounds(dexdata["weight_kilograms"], species)
        elif "weight" in dexdata: # NOTE: hectograms (legacy storage)
            outdata["weight_pounds"] = kilograms_to_pounds(dexdata["weight"] / 10.0, species)
        else:
            outdata["weight_pounds"] = dexdata["weight_pounds"]
    return outdata


for data_path in pathlib.Path("res/pokemon").rglob("**/data.json"):
    if len(data_path.parts) > 3 and data_path.parts[3] == "forms":
        continue

    with open(data_path, "r", encoding="utf-8") as data_fp:
        blob = json.load(data_fp)
        dexdata = blob["pokedex_data"]

    outdata = {}
    species = data_path.parts[2]
    outdata = convert(units, species, dexdata)

    for key, val in dexdata.items():
        if key.startswith("height") or key.startswith("weight"):
            continue
        outdata[key] = val

    if "origin_forme" in outdata:
        oridata = convert(units, species, outdata["origin_forme"])
        for key, val in dexdata["origin_forme"].items():
            if key.startswith("height") or key.startswith("weight"):
                continue
            oridata[key] = val
        outdata["origin_forme"] = oridata

    blob["pokedex_data"] = outdata
    with open(data_path, "w", encoding="utf-8") as data_fp:
        print(f"converting units in {data_path}")
        json.dump(blob, data_fp, cls=SpeciesJSONEncoder, indent=4, ensure_ascii=False)
        print("", file=data_fp)
