#!/usr/bin/env python3
from collections.abc import Mapping, Sequence
import pathlib
import json2bin as j2b

SCHEMA = j2b.Parser()

def parse_bg_events(bg_events: Sequence[Mapping], *args) -> bytes:
    bg_bytes = bytearray([])
    bg_bytes.extend(j2b.parse_int(len(bg_events), 4))
    for bg in bg_events:
        bg_bytes.extend(j2b.parse_int(bg['script'], 2))
        bg_bytes.extend(j2b.parse_int(bg['type'], 2))
        bg_bytes.extend(j2b.parse_int(bg['x'], 4))
        bg_bytes.extend(j2b.parse_int(bg['z'], 4))
        bg_bytes.extend(j2b.parse_int(bg['y'], 4))
        bg_bytes.extend(j2b.parse_int(bg['player_facing_dir'], 4))
    return bg_bytes

def parse_object_events(obj_events: Sequence[Mapping], *args) -> bytes:
    obj_bytes = bytearray([])
    obj_bytes.extend(j2b.parse_int(len(obj_events), 4))
    for i, obj in enumerate(obj_events):
        local_id = obj['local_id'] if 'local_id' in obj else i
        obj_bytes.extend(j2b.parse_int(local_id, 2))
        obj_bytes.extend(j2b.parse_int(obj['graphics_id'], 2))
        obj_bytes.extend(j2b.parse_int(obj['movement_type'], 2))
        obj_bytes.extend(j2b.parse_int(obj['trainer_type'], 2))
        obj_bytes.extend(j2b.parse_int(obj['flag'], 2))
        obj_bytes.extend(j2b.parse_int(obj['script'], 2))
        obj_bytes.extend(j2b.parse_int(obj['initial_dir'], 2))
        obj_data = obj['data']
        if len(obj_data) > 3:
            raise ValueError(f'more than 3 values found in object event data ({obj_data})')
        obj_bytes.extend(j2b.parse_int(obj_data[0] if len(obj_data) > 0 else 0, 2))
        obj_bytes.extend(j2b.parse_int(obj_data[1] if len(obj_data) > 1 else 0, 2))
        obj_bytes.extend(j2b.parse_int(obj_data[2] if len(obj_data) > 2 else 0, 2))
        obj_bytes.extend(j2b.parse_int(obj['movement_range_x'], 2))
        obj_bytes.extend(j2b.parse_int(obj['movement_range_z'], 2))
        obj_bytes.extend(j2b.parse_int(obj['x'], 2))
        obj_bytes.extend(j2b.parse_int(obj['z'], 2))
        obj_bytes.extend(j2b.parse_int(obj['y'] * 0x10000, 4))
    return obj_bytes

def parse_warp_events(warp_events: Sequence[Mapping], *args) -> bytes:
    warp_bytes = bytearray([])
    warp_bytes.extend(j2b.parse_int(len(warp_events), 4))
    for warp in warp_events:
        warp_bytes.extend(j2b.parse_int(warp['x'], 2))
        warp_bytes.extend(j2b.parse_int(warp['z'], 2))
        warp_bytes.extend(j2b.parse_int(warp['dest_header_id'], 2))
        warp_bytes.extend(j2b.parse_int(warp['dest_warp_id'], 2))
        warp_bytes.extend(j2b.parse_int(0, 4))
    return warp_bytes

def parse_coord_events(coord_events: Sequence[Mapping], *args) -> bytes:
    coords_bytes = bytearray([])
    coords_bytes.extend(j2b.parse_int(len(coord_events), 4))
    for coord in coord_events:
        coords_bytes.extend(j2b.parse_int(coord['script'], 2))
        coords_bytes.extend(j2b.parse_int(coord['x'], 2))
        coords_bytes.extend(j2b.parse_int(coord['z'], 2))
        coords_bytes.extend(j2b.parse_int(coord['width'], 2))
        coords_bytes.extend(j2b.parse_int(coord['length'], 2))
        coords_bytes.extend(j2b.parse_int(coord['y'], 2))
        coords_bytes.extend(j2b.parse_int(coord['value'], 2))
        coords_bytes.extend(j2b.parse_int(coord['var'], 2))
    return coords_bytes

SCHEMA = (SCHEMA
    .register('bg_events', -1, parse_bg_events)
    .register('object_events', -1, parse_object_events)
    .register('warp_events', -1, parse_warp_events)
    .register('coord_events', -1, parse_coord_events)
)

def indexer(file_path: pathlib.Path) -> int:
    return int(file_path.stem.removeprefix('events_'))

args = j2b.ARGPARSER.parse_args()
j2b.json2bin(args.source_dir,
             SCHEMA,
             args.private_dir,
             args.output_dir,
             index_func=indexer,
             narc_name='zone_event',
             narc_packer=args.knarc)
