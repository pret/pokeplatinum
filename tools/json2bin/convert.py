#!/usr/bin/env python3

def pad(len: int) -> bytes:
    return (0).to_bytes(len, 'little')

def u8(i: int) -> bytes:
    return i.to_bytes(1, 'little')

def u16(i: int) -> bytes:
    return i.to_bytes(2, 'little')

def u32(i: int) -> bytes:
    return i.to_bytes(4, 'little')
