#!/usr/bin/env python3

from pathlib import Path
import struct
import sys
from typing import Callable
from param_transforms import *

cmd_names: list[tuple[str | None, int, list[int], Callable[[list[int]], list[int | str]] | None]] = [
    ('Delay', 1, [], None),
    ('WaitForAnimTasks', 0, [], None),
    ('BeginLoop', 1, [], None),
    ('EndLoop', 0, [], None),
    ('End', 0, [], None),
    ('PlaySoundEffect', 1, [], transform_PlaySEAny),
    ('Nop0', 0, [], None),
    ('Nop1', 0, [], None),
    ('SetBG0BG1AlphaBlending', 2, [], None),
    ('SetDefaultAlphaBlending', 0, [], None),
    ('Call', 1, [0], None),
    ('Return', 0, [], None),
    ('SetVar', 2, [], transform_SetVar),
    (None, 2, [0, 1], None),
    (None, 2, [], None),
    ('Jump', 1, [0], None),
    ('SwitchBg', 2, [], transform_SwitchBg),
    ('SetBgSwitchVar', 2, [], transform_SetBgSwitchVar),
    ('RestoreBg', 2, [], transform_SwitchBg),
    ('WaitForPartialBgSwitch', 0, [], None),
    ('WaitForBgSwitch', 0, [], None),
    ('SetBg', 1, [], None),
    ('PlayPannedSoundEffect', 2, [], transform_PlaySEAny),
    ('PanSoundEffects', 1, [], None),
    ('PlayMovingSoundEffectAtkDef', 5, [], transform_PlaySEAny),
    ('PlayLoopedSoundEffect', 4, [], transform_PlaySEAny),
    ('PlayDelayedSoundEffect', 3, [], transform_PlaySEAny),
    ('Nop2', 0, [], None),
    ('Nop3', 0, [], None),
    ('WaitForSoundEffects', 0, [], None),
    ('JumpIfEqual', 3, [2], None),
    ('LoadPokemonSpriteIntoBg', 2, [], None),
    ('RemovePokemonSpriteFromBg', 1, [], None),
    (None, 1, [], None),
    ('SwitchBgEx', 3, [], None),
    ('PlayMovingSoundEffectNoCorrection', 5, [], transform_PlaySEAny),
    ('PlayMovingSoundEffectAtkDef2', 5, [], transform_PlaySEAny),
    ('Nop4', 0, [], None),
    ('Nop5', 0, [], None),
    ('Nop6', 0, [], None),
    ('Nop7', 0, [], None),
    ('Nop8', 0, [], None),
    ('Nop9', 0, [], None),
    ('Nop10', 0, [], None),
    ('StopSoundEffect', 1, [], transform_PlaySEAny),
    ('CallFunc', -2, [], None),
    ('CreateEmitter', 3, [], None),
    ('CreateEmitterEx', 4, [], None),
    ('CreateEmitterForMove', 8, [], None),
    ('CreateEmitterForFriendlyFire', 6, [], None),
    ('WaitForAllEmitters', 0, [], None),
    ('LoadParticleSystem', 2, [], None),
    ('LoadDebugParticleSystem', 3, [], None),
    ('UnloadParticleSystem', 1, [], None),
    ('Nop11', 0, [], None),
    (None, -1, [], None),
    ('InitPokemonSpriteManager', 0, [], None),
    ('LoadPokemonSpriteDummyResources', 1, [], transform_LoadPokemonSpriteDummyResources),
    ('AddPokemonSprite', 4, [], transform_AddPokemonSprite),
    ('FreePokemonSpriteManager', 0, [], None),
    ('RemovePokemonSprite', 1, [], transform_RemovePokemonSprite),
    ('CancelTrackingTask', 1, [], None),
    ('SetCameraProjection', 2, [], None),
    ('SetCameraFlip', 2, [], None),
    ('JumpIfBattlerSide', 3, [1, 2], None),
    ('PlayPokemonCry', 3, [], None),
    ('WaitForPokemonCries', 1, [], None),
    ('ResetVar', 0, [], None),
    (None, 1, [], None),
    (None, 1, [], None),
    ('JumpIfWeather', 5, [0, 1, 2, 3, 4], None),
    ('JumpIfContest', 1, [0], None),
    ('JumpIfFriendlyFire', 1, [0], None),
    ('InitSpriteManager', 8, [], None),
    ('LoadCharResObj', 2, [], None),
    ('LoadPlttRes', 3, [], None),
    ('LoadCellResObj', 2, [], None),
    ('LoadAnimResObj', 2, [], None),
    ('AddSpriteWithFunc', -9, [], None),
    ('AddSprite', 8, [], None),
    ('FreeSpriteManager', 1, [], None),
    ('SetPokemonSpriteVisible', 2, [], None),
    (None, 3, [], None),
    (None, 1, [], None),
    ('WaitForLRX', 0, [], None),
]

LOAD_PTCL_RES_SIG = [
    56,             # InitPokemonSpriteManager
    57, 0,          # LoadPokemonSpriteDummyResources 0
    57, 1,          # LoadPokemonSpriteDummyResources 1
    57, 2,          # LoadPokemonSpriteDummyResources 2
    57, 3,          # LoadPokemonSpriteDummyResources 3
    58, 4, 0, 0, 0, # AddPokemonSprite 4, 0, 0, 0
    58, 5, 0, 1, 1, # AddPokemonSprite 5, 0, 1, 1
    58, 6, 0, 2, 2, # AddPokemonSprite 6, 0, 2, 2
    58, 7, 0, 3, 3, # AddPokemonSprite 7, 0, 3, 3
    45, 78, 1, 0,   # CallFunc 78, 1, 0
    51, -1, -1,     # LoadParticleSystem ?, ?
    1,              # WaitForAnimTasks
    59,             # FreePokemonSpriteManager
    60, 0,          # RemovePokemonSprite 0
    60, 1,          # RemovePokemonSprite 1
    60, 2,          # RemovePokemonSprite 2
    60, 3           # RemovePokemonSprite 3
]

PTCL_SYS_INDEX_OFFSET = 34
PTCL_RES_INDEX_OFFSET = 35

class ScriptBuffer:
    def __init__(self, data: bytes) -> None:
        self.data = data
        self.offset = 0
    
    def next(self) -> int:
        if self.offset + 4 > len(self.data):
            raise ValueError(f"Attempt to read beyond buffer length: offset={self.offset}, len={len(self.data)}")
        value = struct.unpack('<i', self.data[self.offset:self.offset + 4])[0]
        self.offset += 4
        return value

    def has_next(self) -> bool:
        return self.can_read(1)

    def can_read(self, n_args: int) -> bool:
        return self.offset + n_args * 4 <= len(self.data)

    def remaining(self) -> int:
        return (len(self.data) - self.offset) // 4

    def next_n(self, n: int) -> list[int]:
        return [self.next() for _ in range(n)]

    def read_n(self, n: int) -> list[int]:
        """
        Like next_n but doesn't advance the offset
        """
        if not self.can_read(n):
            n = self.remaining()
        return [struct.unpack('<i', self.data[self.offset + i * 4:self.offset + (i + 1) * 4])[0] for i in range(n)]

    def read_at(self, offset: int) -> int:
        offset *= 4
        if offset < 0 or offset + 4 > len(self.data):
            raise ValueError(f"Attempt to read at invalid offset: {offset}, len={len(self.data)}")
        return struct.unpack('<i', self.data[self.offset + offset:self.offset + offset + 4])[0]

    def match_sig(self, sig: list[int]) -> bool:
        if not self.can_read(len(sig)):
            return False
        ns = self.read_n(len(sig))
        for i, expected in enumerate(sig):
            if expected != -1 and ns[i] != expected:
                return False
        return True

    def advance(self) -> None:
        self.offset += 4

    def advance_by(self, n: int) -> None:
        self.offset += n * 4

    def addr(self) -> int:
        return self.offset // 4


def convert_script(path: Path, dest: Path, keep_partial: bool) -> bool:
    with open(path, 'rb') as f:
        data = f.read()
    
    script = [
        "#include \"macros/btlanimcmd.inc\"\n",
        "\n",
        ".data\n",
        "\n",
        "L_0:\n",
    ]

    if len(data) % 4 != 0:
        print(f"ERROR({path.name}): Script data length is not a multiple of 4: {len(data)}")
        return False
    
    ok = True
    label_num = 1
    labels_to_insert = {}

    set_current_file(path.name)
    
    buffer = ScriptBuffer(data)
    while buffer.has_next():
        if buffer.addr() in labels_to_insert:
            label = labels_to_insert.pop(buffer.addr())
            script.append(f"\n{label}:\n")
        
        if buffer.match_sig(LOAD_PTCL_RES_SIG):
            sys_index = buffer.read_at(PTCL_SYS_INDEX_OFFSET)
            res_index = buffer.read_at(PTCL_RES_INDEX_OFFSET)
            script.append(f"    LoadParticleResource {sys_index}, {res_index}\n")
            buffer.advance_by(len(LOAD_PTCL_RES_SIG))
            continue

        instr = buffer.next()
        if instr < 0 or instr >= len(cmd_names):
            print(f"ERROR({path.name}): Invalid instruction code {instr} at offset {buffer.offset - 4}")
            if keep_partial:
                ok = False
                break
            else:
                return False
        
        cmd, argc, offset_indices, xform = cmd_names[instr]
        args = []
        varargs = False
        
        if cmd is None:
            cmd = f"BtlAnimCmd_{instr:03d}"

        if argc < 0:
            argc = -argc
            varargs = True
        
        if not buffer.can_read(argc):
            print(f"ERROR({path.name}): Can't read {argc} args from stream. Remaining: {buffer.remaining()}")
            if keep_partial:
                ok = False
                break
            else:
                return False
            
        for i in range(argc):
            arg = buffer.next()
            if i in offset_indices: # Is a JMP offset
                target = buffer.addr() - 1 + arg
                label = ""
                if target in labels_to_insert:
                    label = labels_to_insert[target]
                else:
                    label = f"L_{label_num}"
                    label_num += 1
                labels_to_insert[target] = label
                args.append(label)
            else:
                args.append(arg)


        # args.extend(buffer.next_n(argc))
        if varargs:
            argc = args[-1]
            if not buffer.can_read(argc):
                print(f"ERROR({path.name}): Can't read {argc} args from stream. Remaining: {buffer.remaining()}")
                if keep_partial:
                    ok = False
                    break
                else:
                    return False
            args.extend(buffer.next_n(argc))
        
        if xform is not None:
            args = xform(args)
        
        line = "    " + cmd
        if len(args) > 0:
            line += f" {', '.join([str(arg) for arg in args])}"
        
        script.append(line + "\n")
    
    with open(dest, 'w', encoding='utf8') as f:
        f.writelines(script)
    
    return ok


def convert_scripts(srcdir: Path, dstdir: Path, keep_partial: bool):
    for entry in sorted(srcdir.glob('*.bin')):
        if not entry.is_file():
            continue

        dest = (dstdir / (entry.relative_to(srcdir))).with_suffix('.s')
        if convert_script(entry, dest, keep_partial):
            # print(f'Converted {entry.name} to {dest.name}')
            pass


if __name__ == '__main__':
    if len(sys.argv) < 3:
        print(f"Usage: python3 {sys.argv[0]} <src_dir> <dst_dir>")
        exit(1)
    
    srcdir = Path(sys.argv[1])
    dstdir = Path(sys.argv[2])
    keep_partial = len(sys.argv) == 4 and sys.argv[3] == '-p'
    convert_scripts(srcdir, dstdir, keep_partial)
