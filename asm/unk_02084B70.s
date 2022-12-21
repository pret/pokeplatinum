	.include "macros/function.inc"
	.include "include/unk_02084B70.inc"

	

	.text


	thumb_func_start sub_02084B70
sub_02084B70: ; 0x02084B70
	push {r3, r4, r5, lr}
	mov r1, #0
	mov r2, #0xc
	bl sub_0207CF48
	mov r1, #0xe
	add r4, r0, #0
	bl sub_0207D014
	cmp r0, #1
	beq _02084B90
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1c
	pop {r3, r4, r5, pc}
_02084B90:
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1c
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1d
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x20
	bl sub_0207D014
	cmp r0, #0
	bne _02084BE4
	add r0, r4, #0
	mov r1, #0x21
	bl sub_0207D014
	cmp r0, #0
	beq _02084BEE
_02084BE4:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_02084BEE:
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0207D014
	cmp r0, #0
	beq _02084C04
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02084C04:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _02084C1A
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #2
	pop {r3, r4, r5, pc}
_02084C1A:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0207D014
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0207D014
	lsl r0, r0, #1
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0207D014
	lsl r0, r0, #2
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x12
	bl sub_0207D014
	lsl r0, r0, #3
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0207D014
	lsl r0, r0, #4
	add r5, r5, r0
	add r0, r4, #0
	mov r1, #0x14
	bl sub_0207D014
	lsl r0, r0, #5
	add r5, r5, r0
	cmp r5, #0x10
	bgt _02084C88
	bge _02084CBE
	cmp r5, #8
	bhi _02084CF2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084C76: ; jump table
	.short _02084CF2 - _02084C76 - 2 ; case 0
	.short _02084C96 - _02084C76 - 2 ; case 1
	.short _02084CA0 - _02084C76 - 2 ; case 2
	.short _02084CF2 - _02084C76 - 2 ; case 3
	.short _02084CAA - _02084C76 - 2 ; case 4
	.short _02084CF2 - _02084C76 - 2 ; case 5
	.short _02084CF2 - _02084C76 - 2 ; case 6
	.short _02084CF2 - _02084C76 - 2 ; case 7
	.short _02084CB4 - _02084C76 - 2 ; case 8
_02084C88:
	cmp r5, #0x20
	bgt _02084C90
	beq _02084CC8
	b _02084CF2
_02084C90:
	cmp r5, #0x3f
	beq _02084CD2
	b _02084CF2
_02084C96:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #3
	pop {r3, r4, r5, pc}
_02084CA0:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #4
	pop {r3, r4, r5, pc}
_02084CAA:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #5
	pop {r3, r4, r5, pc}
_02084CB4:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #6
	pop {r3, r4, r5, pc}
_02084CBE:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #7
	pop {r3, r4, r5, pc}
_02084CC8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #8
	pop {r3, r4, r5, pc}
_02084CD2:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02084CE8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02084CE8:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #9
	pop {r3, r4, r5, pc}
_02084CF2:
	add r0, r4, #0
	mov r1, #0x15
	bl sub_0207D014
	cmp r0, #0
	beq _02084D08
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_02084D08:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02084D1E
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02084D1E:
	add r0, r4, #0
	mov r1, #0x30
	bl sub_0207D014
	cmp r0, #0
	ble _02084D34
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02084D34:
	bge _02084D40
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_02084D40:
	add r0, r4, #0
	mov r1, #0x31
	bl sub_0207D014
	cmp r0, #0
	ble _02084D56
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_02084D56:
	bge _02084D62
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_02084D62:
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0207D014
	cmp r0, #0
	ble _02084D78
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_02084D78:
	bge _02084D84
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x14
	pop {r3, r4, r5, pc}
_02084D84:
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0207D014
	cmp r0, #0
	ble _02084D9A
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_02084D9A:
	bge _02084DA6
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x15
	pop {r3, r4, r5, pc}
_02084DA6:
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0207D014
	cmp r0, #0
	ble _02084DBC
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_02084DBC:
	bge _02084DC8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_02084DC8:
	add r0, r4, #0
	mov r1, #0x35
	bl sub_0207D014
	cmp r0, #0
	ble _02084DDE
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_02084DDE:
	bge _02084DEA
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x17
	pop {r3, r4, r5, pc}
_02084DEA:
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	beq _02084E00
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02084E00:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	beq _02084E16
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x19
	pop {r3, r4, r5, pc}
_02084E16:
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _02084E2C
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1a
	pop {r3, r4, r5, pc}
_02084E2C:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	bne _02084E44
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _02084E4E
_02084E44:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1b
	pop {r3, r4, r5, pc}
_02084E4E:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0x1c
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02084B70

	thumb_func_start sub_02084E58
sub_02084E58: ; 0x02084E58
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _020851F0 ; =0x000005A4
	add r6, r1, #0
	ldr r1, _020851F4 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	add r5, r2, #0
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	add r0, r6, #0
	bl sub_02084B70
	cmp r0, #0x1b
	bls _02084E8C
	b _020852A4
_02084E8C:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02084E98: ; jump table
	.short _020852A4 - _02084E98 - 2 ; case 0
	.short _020852A4 - _02084E98 - 2 ; case 1
	.short _020852A4 - _02084E98 - 2 ; case 2
	.short _02084EF4 - _02084E98 - 2 ; case 3
	.short _02084ED0 - _02084E98 - 2 ; case 4
	.short _02084F18 - _02084E98 - 2 ; case 5
	.short _02084F3C - _02084E98 - 2 ; case 6
	.short _02084F60 - _02084E98 - 2 ; case 7
	.short _02084F84 - _02084E98 - 2 ; case 8
	.short _02084FCC - _02084E98 - 2 ; case 9
	.short _02084FA8 - _02084E98 - 2 ; case 10
	.short _020852A4 - _02084E98 - 2 ; case 11
	.short _02084FF0 - _02084E98 - 2 ; case 12
	.short _02085022 - _02084E98 - 2 ; case 13
	.short _02085054 - _02084E98 - 2 ; case 14
	.short _02085086 - _02084E98 - 2 ; case 15
	.short _020850B8 - _02084E98 - 2 ; case 16
	.short _020850EA - _02084E98 - 2 ; case 17
	.short _0208511C - _02084E98 - 2 ; case 18
	.short _02085150 - _02084E98 - 2 ; case 19
	.short _02085184 - _02084E98 - 2 ; case 20
	.short _020851B8 - _02084E98 - 2 ; case 21
	.short _020851EC - _02084E98 - 2 ; case 22
	.short _0208522E - _02084E98 - 2 ; case 23
	.short _020852A4 - _02084E98 - 2 ; case 24
	.short _02085262 - _02084E98 - 2 ; case 25
	.short _02085262 - _02084E98 - 2 ; case 26
	.short _02085294 - _02084E98 - 2 ; case 27
_02084ED0:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x41
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084EF4:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x5b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F18:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x43
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F3C:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x44
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F60:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x42
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084F84:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x49
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084FA8:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4a
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084FCC:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x47
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02084FF0:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085022:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085054:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #2
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085086:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #3
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020850B8:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #4
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020850EA:
	ldr r0, _020851F8 ; =0x0000069C
	mov r1, #0x4b
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #5
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_0208511C:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085150:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	mov r1, #1
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085184:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #2
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020851B8:
	ldr r0, _020851F8 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #3
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_020851EC:
	ldr r0, _020851F8 ; =0x0000069C
	b _020851FC
	; .align 2, 0
_020851F0: .word 0x000005A4
_020851F4: .word 0x00000B29
_020851F8: .word 0x0000069C
_020851FC:
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #4
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_0208522E:
	ldr r0, _020852B4 ; =0x0000069C
	add r5, #0x6e
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #5
	bl sub_0200B824
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085262:
	ldr r0, _020852B4 ; =0x0000069C
	mov r1, #0x48
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
_02085294:
	ldr r2, _020852B4 ; =0x0000069C
	mov r1, #0x45
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
_020852A4:
	ldr r2, _020852B4 ; =0x0000069C
	mov r1, #0x69
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020852B4: .word 0x0000069C
	thumb_func_end sub_02084E58

	thumb_func_start sub_020852B8
sub_020852B8: ; 0x020852B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02085330 ; =0x000005A4
	ldr r0, [r4, r0]
	ldrh r0, [r0, #0x24]
	bl sub_02084B70
	cmp r0, #0x1c
	bhi _0208532E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020852D6: ; jump table
	.short _0208532E - _020852D6 - 2 ; case 0
	.short _0208532E - _020852D6 - 2 ; case 1
	.short _02085310 - _020852D6 - 2 ; case 2
	.short _02085318 - _020852D6 - 2 ; case 3
	.short _02085318 - _020852D6 - 2 ; case 4
	.short _02085318 - _020852D6 - 2 ; case 5
	.short _02085318 - _020852D6 - 2 ; case 6
	.short _02085318 - _020852D6 - 2 ; case 7
	.short _02085318 - _020852D6 - 2 ; case 8
	.short _02085318 - _020852D6 - 2 ; case 9
	.short _02085318 - _020852D6 - 2 ; case 10
	.short _02085328 - _020852D6 - 2 ; case 11
	.short _02085318 - _020852D6 - 2 ; case 12
	.short _02085318 - _020852D6 - 2 ; case 13
	.short _02085318 - _020852D6 - 2 ; case 14
	.short _02085318 - _020852D6 - 2 ; case 15
	.short _02085318 - _020852D6 - 2 ; case 16
	.short _02085318 - _020852D6 - 2 ; case 17
	.short _02085320 - _020852D6 - 2 ; case 18
	.short _02085320 - _020852D6 - 2 ; case 19
	.short _02085320 - _020852D6 - 2 ; case 20
	.short _02085320 - _020852D6 - 2 ; case 21
	.short _02085320 - _020852D6 - 2 ; case 22
	.short _02085320 - _020852D6 - 2 ; case 23
	.short _0208532E - _020852D6 - 2 ; case 24
	.short _02085318 - _020852D6 - 2 ; case 25
	.short _02085318 - _020852D6 - 2 ; case 26
	.short _02085318 - _020852D6 - 2 ; case 27
	.short _0208532E - _020852D6 - 2 ; case 28
_02085310:
	ldr r1, _02085334 ; =sub_02085A70
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
	pop {r4, pc}
_02085318:
	ldr r1, _0208533C ; =sub_02085384
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
	pop {r4, pc}
_02085320:
	ldr r1, _02085340 ; =sub_02085424
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
	pop {r4, pc}
_02085328:
	ldr r1, _02085344 ; =sub_020855C4
	ldr r0, _02085338 ; =0x00000B18
	str r1, [r4, r0]
_0208532E:
	pop {r4, pc}
	; .align 2, 0
_02085330: .word 0x000005A4
_02085334: .word sub_02085A70
_02085338: .word 0x00000B18
_0208533C: .word sub_02085384
_02085340: .word sub_02085424
_02085344: .word sub_020855C4
	thumb_func_end sub_020852B8

	thumb_func_start sub_02085348
sub_02085348: ; 0x02085348
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02085378 ; =0x00000B28
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	beq _0208535C
	mov r0, #5
	pop {r4, pc}
_0208535C:
	ldr r0, _0208537C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085374
	ldr r0, _02085380 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x20
	pop {r4, pc}
_02085374:
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
_02085378: .word 0x00000B28
_0208537C: .word 0x021BF67C
_02085380: .word 0x000005A4
	thumb_func_end sub_02085348

	thumb_func_start sub_02085384
sub_02085384: ; 0x02085384
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r1, _0208540C ; =0x000005A4
	add r5, r0, #0
	ldr r4, [r5, r1]
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _02085410 ; =0x00000B29
	ldrh r1, [r4, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	mov r3, #0
	bl sub_02096F14
	ldr r1, _02085410 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207EF14
	ldr r1, _02085410 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020821F8
	ldr r1, _02085410 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020822BC
	ldr r0, _02085410 ; =0x00000B29
	mov r2, #0x2c
	ldrb r1, [r5, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _02085414 ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	ldr r1, _0208540C ; =0x000005A4
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #0
	ldrh r1, [r1, #0x24]
	bl sub_02084E58
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02085418 ; =0x000005EC
	bl sub_02005748
	ldr r1, _0208541C ; =sub_02085348
	ldr r0, _02085420 ; =0x00000B18
	str r1, [r5, r0]
	mov r0, #5
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208540C: .word 0x000005A4
_02085410: .word 0x00000B29
_02085414: .word 0x00000712
_02085418: .word 0x000005EC
_0208541C: .word sub_02085348
_02085420: .word 0x00000B18
	thumb_func_end sub_02085384

	thumb_func_start sub_02085424
sub_02085424: ; 0x02085424
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _020855B0 ; =0x000005A4
	ldr r1, _020855B4 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xd
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, _020855B0 ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r5, #0
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _020855B4 ; =0x00000B29
	ldrh r1, [r6, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r6, #0]
	mov r3, #0
	bl sub_02096F14
	ldr r1, _020855B4 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207EF14
	ldr r1, _020855B4 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020821F8
	ldr r1, _020855B4 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020822BC
	ldr r0, _020855B4 ; =0x00000B29
	mov r2, #0x2c
	ldrb r1, [r5, r0]
	add r0, r5, #0
	mul r2, r1
	add r3, r5, r2
	ldr r2, _020855B8 ; =0x00000712
	ldrh r2, [r3, r2]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x18]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x14]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0xc]
	cmp r1, r0
	bne _0208555E
	add r0, r4, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #8]
	cmp r1, r0
	beq _0208558A
_0208555E:
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r7, r0
	ldr r1, _020855B0 ; =0x000005A4
	beq _0208557C
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r2, #0
	bl sub_02084E58
	b _02085598
_0208557C:
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	mov r2, #1
	bl sub_02084E58
	b _02085598
_0208558A:
	ldr r1, _020855B0 ; =0x000005A4
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #2
	ldrh r1, [r1, #0x24]
	bl sub_02084E58
_02085598:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r1, _020855BC ; =sub_02085348
	ldr r0, _020855C0 ; =0x00000B18
	str r1, [r5, r0]
	mov r0, #5
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020855B0: .word 0x000005A4
_020855B4: .word 0x00000B29
_020855B8: .word 0x00000712
_020855BC: .word sub_02085348
_020855C0: .word 0x00000B18
	thumb_func_end sub_02085424

	thumb_func_start sub_020855C4
sub_020855C4: ; 0x020855C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _020856E4 ; =0x000005A4
	add r5, r0, #0
	ldr r4, [r5, r1]
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _020856E8 ; =0x00000B29
	ldrh r1, [r4, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r4, #0]
	mov r3, #0
	bl sub_02096F14
	ldr r0, _020856E4 ; =0x000005A4
	ldr r1, _020856E8 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	add r4, r0, #0
	ldr r0, _020856E8 ; =0x00000B29
	ldrb r1, [r5, r0]
	mov r0, #0x2c
	mul r0, r1
	add r1, r5, r0
	ldr r0, _020856EC ; =0x0000070A
	ldrh r1, [r1, r0]
	cmp r1, #0
	bne _02085620
	sub r0, #0x6e
	ldr r0, [r5, r0]
	mov r1, #0x46
	bl sub_0200B1EC
	add r7, r0, #0
	b _0208563E
_02085620:
	cmp r4, r1
	bne _02085632
	sub r0, #0x6e
	ldr r0, [r5, r0]
	mov r1, #0x47
	bl sub_0200B1EC
	add r7, r0, #0
	b _0208563E
_02085632:
	sub r0, #0x6e
	ldr r0, [r5, r0]
	mov r1, #0x40
	bl sub_0200B1EC
	add r7, r0, #0
_0208563E:
	ldr r0, [sp, #8]
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r3, #0x6a
	str r0, [sp]
	mov r1, #1
	ldr r2, _020856E8 ; =0x00000B29
	str r1, [sp, #4]
	ldrb r6, [r5, r2]
	mov r2, #0x2c
	lsl r3, r3, #4
	mul r2, r6
	ldr r0, [r5, r3]
	add r2, r5, r2
	add r3, #0x6a
	ldrh r2, [r2, r3]
	mov r3, #3
	sub r2, r4, r2
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #8]
	bl sub_0208E9F0
	add r4, r0, #0
	ldr r1, _020856E8 ; =0x00000B29
	lsl r2, r4, #0x18
	ldrb r1, [r5, r1]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02083014
	cmp r4, #7
	bne _020856C6
	ldr r1, _020856E8 ; =0x00000B29
	ldr r0, _020856F0 ; =0x00000712
	ldrb r3, [r5, r1]
	add r2, r5, r0
	mov r0, #0x2c
	mul r0, r3
	ldrh r4, [r2, r0]
	ldr r3, _020856F4 ; =0xFFFFF000
	and r4, r3
	mov r3, #7
	orr r3, r4
	strh r3, [r2, r0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_02081FFC
_020856C6:
	ldr r1, _020856E8 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207F8F8
	ldr r1, _020856F8 ; =sub_02085704
	ldr r0, _020856FC ; =0x00000B18
	str r1, [r5, r0]
	ldr r0, _02085700 ; =0x000005EC
	bl sub_02005748
	mov r0, #5
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020856E4: .word 0x000005A4
_020856E8: .word 0x00000B29
_020856EC: .word 0x0000070A
_020856F0: .word 0x00000712
_020856F4: .word 0xFFFFF000
_020856F8: .word sub_02085704
_020856FC: .word 0x00000B18
_02085700: .word 0x000005EC
	thumb_func_end sub_020855C4

	thumb_func_start sub_02085704
sub_02085704: ; 0x02085704
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02085794 ; =0x000005A4
	ldr r1, _02085798 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085798 ; =0x00000B29
	add r4, r0, #0
	ldrb r2, [r5, r1]
	ldr r0, _0208579C ; =0x0000070A
	mov r1, #0x2c
	add r3, r2, #0
	add r0, r5, r0
	mul r3, r1
	ldrh r1, [r0, r3]
	cmp r4, r1
	beq _02085738
	add r1, r1, #1
	strh r1, [r0, r3]
_02085738:
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_02082098
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #4
	ldrb r2, [r5, r1]
	lsl r1, r2, #2
	add r1, r2, r1
	add r1, r1, #3
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_02082058
	ldr r1, _02085798 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_02082104
	ldr r0, _02085798 ; =0x00000B29
	mov r1, #0x2c
	ldrb r0, [r5, r0]
	add r2, r0, #0
	mul r2, r1
	ldr r0, _0208579C ; =0x0000070A
	add r2, r5, r2
	ldrh r0, [r2, r0]
	cmp r4, r0
	bne _02085790
	add r0, r5, #0
	sub r1, #0x2d
	mov r2, #1
	bl sub_02082708
	ldr r1, _020857A0 ; =sub_02085348
	ldr r0, _020857A4 ; =0x00000B18
	str r1, [r5, r0]
_02085790:
	mov r0, #5
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02085794: .word 0x000005A4
_02085798: .word 0x00000B29
_0208579C: .word 0x0000070A
_020857A0: .word sub_02085348
_020857A4: .word 0x00000B18
	thumb_func_end sub_02085704

	thumb_func_start sub_020857A8
sub_020857A8: ; 0x020857A8
	push {r3, lr}
	mov r1, #0x18
	mov r2, #0xc
	bl sub_0207CFF0
	cmp r0, #0
	beq _020857BA
	mov r0, #1
	pop {r3, pc}
_020857BA:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_020857A8

	thumb_func_start sub_020857C0
sub_020857C0: ; 0x020857C0
	push {r3, r4, r5, r6}
	cmp r1, #6
	blo _020857CC
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
_020857CC:
	bhs _020857F8
	ldr r2, _02085800 ; =0x0000070A
	mov r3, #0x2c
	add r4, r2, #0
	add r4, #0x23
_020857D6:
	add r5, r1, #0
	mul r5, r3
	add r6, r0, r5
	ldrb r5, [r6, r4]
	cmp r5, #0
	beq _020857EE
	ldrh r5, [r6, r2]
	cmp r5, #0
	bne _020857EE
	add r0, r1, #0
	pop {r3, r4, r5, r6}
	bx lr
_020857EE:
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #6
	blo _020857D6
_020857F8:
	mov r0, #0xff
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02085800: .word 0x0000070A
	thumb_func_end sub_020857C0

	thumb_func_start sub_02085804
sub_02085804: ; 0x02085804
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _02085A40 ; =0x00000B26
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #3
	bls _02085812
	b _02085A3A
_02085812:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0208581E: ; jump table
	.short _02085826 - _0208581E - 2 ; case 0
	.short _02085876 - _0208581E - 2 ; case 1
	.short _02085940 - _0208581E - 2 ; case 2
	.short _020859C4 - _0208581E - 2 ; case 3
_02085826:
	mov r1, #0
	bl sub_020857C0
	ldr r1, _02085A44 ; =0x00000B29
	strb r0, [r4, r1]
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	bne _0208586A
	ldr r2, _02085A48 ; =0x0000069C
	mov r1, #0x69
	ldr r0, [r4, r2]
	add r2, #8
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r1, _02085A4C ; =sub_02085348
	ldr r0, _02085A50 ; =0x00000B18
	mov r2, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	bl sub_0208327C
	ldr r0, _02085A44 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0208586A:
	cmp r0, #0
	beq _02085876
	add r0, r4, #0
	mov r1, #0
	bl sub_0207F8F8
_02085876:
	ldr r0, _02085A54 ; =0x000005A4
	ldr r1, _02085A44 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02086930
	add r3, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r1, _02085A54 ; =0x000005A4
	add r0, r5, #0
	ldr r1, [r4, r1]
	mov r2, #0
	ldrh r1, [r1, #0x24]
	bl sub_02096954
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r0, _02085A48 ; =0x0000069C
	mov r1, #0x46
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r7, _02085A44 ; =0x00000B29
	ldr r3, _02085A58 ; =0x00000712
	ldrb r5, [r4, r7]
	mov r2, #0x2c
	add r1, r4, r3
	add r0, r5, #0
	mul r0, r2
	ldrh r6, [r1, r0]
	ldr r5, _02085A5C ; =0xFFFFF000
	and r6, r5
	mov r5, #7
	orr r5, r6
	strh r5, [r1, r0]
	ldrb r1, [r4, r7]
	add r0, r4, #0
	mul r2, r1
	add r2, r4, r2
	ldrh r2, [r2, r3]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x14
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02083014
	add r1, r7, #0
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl sub_02081FFC
	add r1, r7, #0
	ldrb r1, [r4, r1]
	add r0, r4, #0
	bl sub_0207F8F8
	add r1, r7, #0
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl sub_0208327C
	ldr r0, _02085A60 ; =0x000005EC
	bl sub_02005748
	sub r0, r7, #3
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02085A3A
_02085940:
	ldr r0, _02085A54 ; =0x000005A4
	add r1, r1, #3
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r2, _02085A44 ; =0x00000B29
	add r5, r0, #0
	ldr r0, _02085A64 ; =0x0000070A
	ldrb r3, [r4, r2]
	add r1, r4, r0
	mov r0, #0x2c
	mul r0, r3
	ldrh r3, [r1, r0]
	add r3, r3, #1
	strh r3, [r1, r0]
	ldrb r1, [r4, r2]
	add r0, r4, #0
	bl sub_02082098
	ldr r1, _02085A44 ; =0x00000B29
	add r0, r4, #4
	ldrb r2, [r4, r1]
	lsl r1, r2, #2
	add r1, r2, r1
	add r1, r1, #3
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, _02085A44 ; =0x00000B29
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl sub_02082058
	ldr r1, _02085A44 ; =0x00000B29
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl sub_02082104
	ldr r0, _02085A44 ; =0x00000B29
	mov r1, #0x2c
	ldrb r0, [r4, r0]
	add r2, r0, #0
	mul r2, r1
	ldr r0, _02085A64 ; =0x0000070A
	add r2, r4, r2
	ldrh r0, [r2, r0]
	cmp r5, r0
	bne _02085A3A
	add r0, r4, #0
	sub r1, #0x2d
	mov r2, #1
	bl sub_02082708
	ldr r0, _02085A40 ; =0x00000B26
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _02085A3A
_020859C4:
	add r0, r1, #2
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02085A3A
	ldr r0, _02085A68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085A3A
	ldr r0, _02085A6C ; =0x000005DC
	bl sub_02005748
	ldr r0, _02085A44 ; =0x00000B29
	ldrb r5, [r4, r0]
	add r0, r4, #0
	add r1, r5, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_020857C0
	ldr r1, _02085A44 ; =0x00000B29
	strb r0, [r4, r1]
	ldrb r0, [r4, r1]
	cmp r0, #0xff
	beq _02085A16
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0207F8F8
	ldr r0, _02085A40 ; =0x00000B26
	mov r1, #1
	strb r1, [r4, r0]
	b _02085A3A
_02085A16:
	ldr r0, _02085A54 ; =0x000005A4
	mov r2, #1
	ldr r1, [r4, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	ldr r0, _02085A54 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02085A44 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
	mov r0, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02085A3A:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02085A40: .word 0x00000B26
_02085A44: .word 0x00000B29
_02085A48: .word 0x0000069C
_02085A4C: .word sub_02085348
_02085A50: .word 0x00000B18
_02085A54: .word 0x000005A4
_02085A58: .word 0x00000712
_02085A5C: .word 0xFFFFF000
_02085A60: .word 0x000005EC
_02085A64: .word 0x0000070A
_02085A68: .word 0x021BF67C
_02085A6C: .word 0x000005DC
	thumb_func_end sub_02085804

	thumb_func_start sub_02085A70
sub_02085A70: ; 0x02085A70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _02085C14 ; =0x000005A4
	ldr r1, _02085C18 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa4
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	ldr r1, _02085C1C ; =0x00000B2C
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa5
	bl sub_02074470
	ldr r1, _02085C20 ; =0x00000B2E
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa6
	bl sub_02074470
	mov r1, #0xb3
	lsl r1, r1, #4
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C24 ; =0x00000B32
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa9
	bl sub_02074470
	ldr r1, _02085C28 ; =0x00000B34
	mov r2, #0
	strh r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0xa7
	bl sub_02074470
	ldr r1, _02085C2C ; =0x00000B36
	strh r0, [r5, r1]
	ldr r0, _02085C14 ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r5, #0
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _02085C18 ; =0x00000B29
	ldrh r1, [r6, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r6, #0]
	mov r3, #0
	bl sub_02096F14
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C18 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02085C30 ; =0x0000070E
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C18 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02085C34 ; =0x0000070A
	strh r0, [r2, r1]
	add r0, r4, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	ldr r1, _02085C18 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	add r2, r5, r1
	ldr r1, _02085C38 ; =0x0000070C
	strh r0, [r2, r1]
	sub r1, #0x70
	ldr r0, [r5, r1]
	mov r1, #0xc1
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r0, #0
	mov r3, #0x6a
	str r0, [sp]
	mov r1, #1
	ldr r2, _02085C18 ; =0x00000B29
	str r1, [sp, #4]
	ldrb r6, [r5, r2]
	mov r2, #0x2c
	lsl r3, r3, #4
	mul r2, r6
	ldr r0, [r5, r3]
	add r2, r5, r2
	add r3, #0x6e
	ldrh r2, [r2, r3]
	mov r3, #3
	bl sub_0200B60C
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0208E9F0
	add r4, r0, #0
	ldr r1, _02085C18 ; =0x00000B29
	lsl r2, r4, #0x18
	ldrb r1, [r5, r1]
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_02083014
	cmp r4, #7
	bne _02085BD2
	ldr r1, _02085C18 ; =0x00000B29
	ldr r0, _02085C3C ; =0x00000712
	ldrb r3, [r5, r1]
	add r2, r5, r0
	mov r0, #0x2c
	mul r0, r3
	ldrh r4, [r2, r0]
	ldr r3, _02085C40 ; =0xFFFFF000
	and r4, r3
	mov r3, #7
	orr r3, r4
	strh r3, [r2, r0]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_02081FFC
_02085BD2:
	ldr r1, _02085C18 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_0207F8F8
	ldr r0, _02085C44 ; =sub_02085704
	ldr r1, _02085C48 ; =0x00000B18
	str r0, [r5, r1]
	add r1, #0x11
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl sub_020821F8
	ldr r1, _02085C18 ; =0x00000B29
	add r0, r5, #0
	ldrb r1, [r5, r1]
	bl sub_020822BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r1, _02085C4C ; =sub_02085C50
	ldr r0, _02085C48 ; =0x00000B18
	str r1, [r5, r0]
	mov r1, #0
	add r0, #0x13
	strb r1, [r5, r0]
	mov r0, #5
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02085C14: .word 0x000005A4
_02085C18: .word 0x00000B29
_02085C1C: .word 0x00000B2C
_02085C20: .word 0x00000B2E
_02085C24: .word 0x00000B32
_02085C28: .word 0x00000B34
_02085C2C: .word 0x00000B36
_02085C30: .word 0x0000070E
_02085C34: .word 0x0000070A
_02085C38: .word 0x0000070C
_02085C3C: .word 0x00000712
_02085C40: .word 0xFFFFF000
_02085C44: .word sub_02085704
_02085C48: .word 0x00000B18
_02085C4C: .word sub_02085C50
	thumb_func_end sub_02085A70

	thumb_func_start sub_02085C50
sub_02085C50: ; 0x02085C50
	push {r3, r4, r5, lr}
	ldr r1, _02085ED0 ; =0x00000B2B
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #6
	bhi _02085D0C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02085C68: ; jump table
	.short _02085C76 - _02085C68 - 2 ; case 0
	.short _02085CA0 - _02085C68 - 2 ; case 1
	.short _02085CBE - _02085C68 - 2 ; case 2
	.short _02085CE4 - _02085C68 - 2 ; case 3
	.short _02085DE4 - _02085C68 - 2 ; case 4
	.short _02085E08 - _02085C68 - 2 ; case 5
	.short _02085E78 - _02085C68 - 2 ; case 6
_02085C76:
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02085D0C
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085D0C
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_020829DC
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #1
	strb r1, [r4, r0]
	b _02085ECC
_02085CA0:
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085D0C
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02082B58
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #2
	strb r1, [r4, r0]
	b _02085ECC
_02085CBE:
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085D0C
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl sub_02082C10
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #3
	strb r1, [r4, r0]
	ldr r0, _02085EDC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x34]
	b _02085ECC
_02085CE4:
	ldr r0, _02085EDC ; =0x000005A4
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r1, _02085EDC ; =0x000005A4
	add r5, r0, #0
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r1, #0x34
	add r2, #0x26
	bl sub_0207727C
	cmp r0, #0
	beq _02085D16
	ldr r1, _02085EE0 ; =0x0000FFFE
	cmp r0, r1
	bne _02085D0E
_02085D0C:
	b _02085ECC
_02085D0E:
	add r1, r1, #1
	cmp r0, r1
	beq _02085D1E
	b _02085D88
_02085D16:
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #6
	strb r1, [r4, r0]
	b _02085ECC
_02085D1E:
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	ldr r0, _02085EE4 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02085EE8 ; =sub_02085FB4
	ldr r1, _02085EEC ; =0x00000B1C
	ldr r2, _02085EF0 ; =sub_02086008
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02085D88:
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	ldr r0, _02085EE4 ; =0x0000069C
	mov r1, #0xc2
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #4
	strb r1, [r4, r0]
	b _02085ECC
_02085DE4:
	sub r0, r1, #3
	ldrb r0, [r4, r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02085ECC
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02085ECC
	ldr r0, _02085ED8 ; =0x000005DC
	bl sub_02005748
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #3
	strb r1, [r4, r0]
	b _02085ECC
_02085E08:
	ldr r0, _02085ED4 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #3
	tst r0, r2
	beq _02085ECC
	ldr r0, _02085EDC ; =0x000005A4
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r2, _02085EDC ; =0x000005A4
	add r1, r0, #0
	ldr r2, [r4, r2]
	add r0, r4, #0
	add r2, #0x28
	ldrb r2, [r2]
	bl sub_02086590
	ldr r0, _02085EE4 ; =0x0000069C
	mov r1, #0x3d
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r2, #0x6a
	lsl r2, r2, #4
	add r5, r0, #0
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02085ED0 ; =0x00000B2B
	mov r1, #4
	strb r1, [r4, r0]
	b _02085ECC
_02085E78:
	ldr r0, _02085EDC ; =0x000005A4
	sub r1, r1, #2
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	ldr r0, _02085EDC ; =0x000005A4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A354
	add r3, r0, #0
	ldr r0, _02085EDC ; =0x000005A4
	lsl r3, r3, #0x10
	ldr r1, [r4, r0]
	mov r2, #0
	add r0, r1, #0
	add r0, #0x3c
	str r0, [sp]
	ldr r0, [r1, #0]
	add r1, r5, #0
	lsr r3, r3, #0x10
	bl sub_02076B94
	ldr r1, _02085EDC ; =0x000005A4
	ldr r2, [r4, r1]
	strh r0, [r2, #0x38]
	ldr r1, [r4, r1]
	ldrh r0, [r1, #0x38]
	cmp r0, #0
	beq _02085EC2
	mov r0, #9
	b _02085EC4
_02085EC2:
	mov r0, #0
_02085EC4:
	add r1, #0x23
	strb r0, [r1]
	mov r0, #0x20
	pop {r3, r4, r5, pc}
_02085ECC:
	mov r0, #5
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02085ED0: .word 0x00000B2B
_02085ED4: .word 0x021BF67C
_02085ED8: .word 0x000005DC
_02085EDC: .word 0x000005A4
_02085EE0: .word 0x0000FFFE
_02085EE4: .word 0x0000069C
_02085EE8: .word sub_02085FB4
_02085EEC: .word 0x00000B1C
_02085EF0: .word sub_02086008
	thumb_func_end sub_02085C50

	thumb_func_start sub_02085EF4
sub_02085EF4: ; 0x02085EF4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02085FA0 ; =sub_02085C50
	ldr r1, _02085FA4 ; =0x00000B18
	mov r2, #3
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x13
	strb r2, [r4, r0]
	ldr r0, _02085FA8 ; =0x000005A4
	add r1, #0x11
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, _02085FA8 ; =0x000005A4
	ldr r2, [r4, r0]
	add r1, r2, #0
	add r1, #0x28
	ldrb r1, [r1]
	cmp r1, #4
	bne _02085F4A
	add r0, #0xfc
	ldrh r2, [r2, #0x26]
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	add r0, r4, #0
	bl sub_02086008
	pop {r3, r4, r5, pc}
_02085F4A:
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	ldr r0, _02085FAC ; =0x0000069C
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02085FB0 ; =0x00000B26
	mov r1, #5
	strb r1, [r4, r0]
	add r0, r0, #5
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02085FA0: .word sub_02085C50
_02085FA4: .word 0x00000B18
_02085FA8: .word 0x000005A4
_02085FAC: .word 0x0000069C
_02085FB0: .word 0x00000B26
	thumb_func_end sub_02085EF4

	thumb_func_start sub_02085FB4
sub_02085FB4: ; 0x02085FB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02085FFC ; =0x0000069C
	mov r1, #0x3b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086000 ; =0x000005A4
	mov r1, #5
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086004 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02085FFC: .word 0x0000069C
_02086000: .word 0x000005A4
_02086004: .word 0x00000B26
	thumb_func_end sub_02085FB4

	thumb_func_start sub_02086008
sub_02086008: ; 0x02086008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086050 ; =0x0000069C
	mov r1, #0x37
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02086054 ; =sub_02086060
	ldr r1, _02086058 ; =0x00000B1C
	ldr r2, _0208605C ; =sub_020860AC
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086050: .word 0x0000069C
_02086054: .word sub_02086060
_02086058: .word 0x00000B1C
_0208605C: .word sub_020860AC
	thumb_func_end sub_02086008

	thumb_func_start sub_02086060
sub_02086060: ; 0x02086060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020860A4 ; =0x0000069C
	mov r1, #0x3a
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _020860A8 ; =0x00000B26
	mov r1, #5
	strb r1, [r5, r0]
	mov r1, #4
	add r0, r0, #5
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_020860A4: .word 0x0000069C
_020860A8: .word 0x00000B26
	thumb_func_end sub_02086060

	thumb_func_start sub_020860AC
sub_020860AC: ; 0x020860AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020860F4 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _020860F8 ; =sub_02085FB4
	ldr r1, _020860FC ; =0x00000B1C
	ldr r2, _02086100 ; =sub_02086008
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020860F4: .word 0x0000069C
_020860F8: .word sub_02085FB4
_020860FC: .word 0x00000B1C
_02086100: .word sub_02086008
	thumb_func_end sub_020860AC

	thumb_func_start sub_02086104
sub_02086104: ; 0x02086104
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02086158 ; =0x000005A4
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_0208610E:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, [r5, r7]
	ldrh r1, [r0, #0x26]
	cmp r2, r1
	bne _0208612A
	mov r0, #0xfd
	pop {r3, r4, r5, r6, r7, pc}
_0208612A:
	cmp r2, #0
	beq _02086138
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, #4
	blo _0208610E
_02086138:
	ldrh r0, [r0, #0x24]
	bl sub_0207D2B4
	add r1, r0, #0
	add r0, r6, #0
	bl sub_02077FB4
	cmp r0, #0
	bne _0208614E
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0208614E:
	cmp r4, #4
	bne _02086154
	mov r4, #0xfe
_02086154:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02086158: .word 0x000005A4
	thumb_func_end sub_02086104

	thumb_func_start sub_0208615C
sub_0208615C: ; 0x0208615C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _020862DC ; =0x000005A4
	ldr r1, _020862E0 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r6, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02086104
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	lsl r2, r2, #4
	ldr r0, [r4, r2]
	sub r2, #0xfc
	ldr r2, [r4, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	cmp r5, #0xfd
	bhi _020861BE
	bhs _02086216
	cmp r5, #3
	bhi _020861C4
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020861B6: ; jump table
	.short _020861CC - _020861B6 - 2 ; case 0
	.short _020861CC - _020861B6 - 2 ; case 1
	.short _020861CC - _020861B6 - 2 ; case 2
	.short _020861CC - _020861B6 - 2 ; case 3
_020861BE:
	cmp r5, #0xfe
	bhi _020861C6
	beq _02086256
_020861C4:
	b _020862D6
_020861C6:
	cmp r5, #0xff
	beq _02086298
	b _020862D6
_020861CC:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02086590
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x3d
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862DC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020862E8 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	b _020862D6
_02086216:
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x3f
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862DC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020862E8 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	b _020862D6
_02086256:
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862EC ; =sub_02086438
	ldr r1, _020862F0 ; =0x00000B1C
	ldr r2, _020862F4 ; =sub_0208648C
	str r0, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r4, r1]
	b _020862D6
_02086298:
	ldr r0, _020862E4 ; =0x0000069C
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020862DC ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020862E8 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
_020862D6:
	mov r0, #0x18
	pop {r4, r5, r6, pc}
	nop
_020862DC: .word 0x000005A4
_020862E0: .word 0x00000B29
_020862E4: .word 0x0000069C
_020862E8: .word 0x00000B26
_020862EC: .word sub_02086438
_020862F0: .word 0x00000B1C
_020862F4: .word sub_0208648C
	thumb_func_end sub_0208615C

	thumb_func_start sub_020862F8
sub_020862F8: ; 0x020862F8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02086390 ; =0x000005A4
	ldr r1, _02086394 ; =0x00000B29
	ldr r0, [r4, r0]
	ldrb r1, [r4, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r5, r0, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, _02086390 ; =0x000005A4
	ldr r2, [r4, r0]
	add r1, r2, #0
	add r1, #0x28
	ldrb r1, [r1]
	cmp r1, #4
	bne _02086340
	add r0, #0xfc
	ldrh r2, [r2, #0x26]
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	add r0, r4, #0
	bl sub_0208648C
	pop {r3, r4, r5, pc}
_02086340:
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200B630
	ldr r0, _02086398 ; =0x0000069C
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _0208639C ; =0x00000B26
	mov r1, #0x16
	strb r1, [r4, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086390: .word 0x000005A4
_02086394: .word 0x00000B29
_02086398: .word 0x0000069C
_0208639C: .word 0x00000B26
	thumb_func_end sub_020862F8

	thumb_func_start sub_020863A0
sub_020863A0: ; 0x020863A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086424 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02086420
	ldr r0, _02086428 ; =0x000005A4
	ldr r1, _0208642C ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	ldr r2, _02086428 ; =0x000005A4
	add r1, r0, #0
	ldr r2, [r5, r2]
	add r0, r5, #0
	add r2, #0x28
	ldrb r2, [r2]
	bl sub_02086590
	ldr r0, _02086430 ; =0x0000069C
	mov r1, #0x3d
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r2, #0x6a
	lsl r2, r2, #4
	add r4, r0, #0
	ldr r0, [r5, r2]
	sub r2, #0xfc
	ldr r2, [r5, r2]
	mov r1, #1
	ldrh r2, [r2, #0x26]
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086428 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086434 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_02086420:
	mov r0, #0x16
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086424: .word 0x021BF67C
_02086428: .word 0x000005A4
_0208642C: .word 0x00000B29
_02086430: .word 0x0000069C
_02086434: .word 0x00000B26
	thumb_func_end sub_020863A0

	thumb_func_start sub_02086438
sub_02086438: ; 0x02086438
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086480 ; =0x0000069C
	mov r1, #0x3b
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086484 ; =0x000005A4
	mov r1, #4
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086488 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_02086480: .word 0x0000069C
_02086484: .word 0x000005A4
_02086488: .word 0x00000B26
	thumb_func_end sub_02086438

	thumb_func_start sub_0208648C
sub_0208648C: ; 0x0208648C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _020864D4 ; =0x0000069C
	mov r1, #0x37
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _020864D8 ; =sub_020864E4
	ldr r1, _020864DC ; =0x00000B1C
	ldr r2, _020864E0 ; =sub_02086538
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020864D4: .word 0x0000069C
_020864D8: .word sub_020864E4
_020864DC: .word 0x00000B1C
_020864E0: .word sub_02086538
	thumb_func_end sub_0208648C

	thumb_func_start sub_020864E4
sub_020864E4: ; 0x020864E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0208652C ; =0x0000069C
	mov r1, #0x3a
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086530 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _02086534 ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	nop
_0208652C: .word 0x0000069C
_02086530: .word 0x000005A4
_02086534: .word 0x00000B26
	thumb_func_end sub_020864E4

	thumb_func_start sub_02086538
sub_02086538: ; 0x02086538
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02086580 ; =0x0000069C
	mov r1, #0x34
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0x6a
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #0
	bl sub_02082708
	ldr r0, _02086584 ; =sub_02086438
	ldr r1, _02086588 ; =0x00000B1C
	ldr r2, _0208658C ; =sub_0208648C
	str r0, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	mov r0, #0x1a
	add r1, #0xa
	strb r0, [r5, r1]
	mov r0, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02086580: .word 0x0000069C
_02086584: .word sub_02086438
_02086588: .word 0x00000B1C
_0208658C: .word sub_0208648C
	thumb_func_end sub_02086538

	thumb_func_start sub_02086590
sub_02086590: ; 0x02086590
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, _02086610 ; =0x000005A4
	add r6, r2, #0
	ldr r0, [r5, r0]
	add r4, r1, #0
	ldrh r0, [r0, #0x26]
	add r1, r6, #0
	add r1, #0x36
	str r0, [sp]
	add r0, r4, #0
	add r2, sp, #0
	bl sub_02074B30
	mov r0, #0
	add r1, r6, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, #0x3e
	add r2, sp, #0
	bl sub_02074B30
	ldr r0, _02086610 ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	ldrh r0, [r0, #0x26]
	bl sub_020790DC
	add r6, #0x3a
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl sub_02074B30
	ldr r0, _02086610 ; =0x000005A4
	ldr r1, [r5, r0]
	ldrh r0, [r1, #0x24]
	cmp r0, #0
	beq _0208660C
	ldrh r0, [r1, #0x26]
	bl sub_0207D28C
	cmp r0, #0
	bne _020865FC
	ldr r0, _02086610 ; =0x000005A4
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
_020865FC:
	add r0, r5, #0
	bl sub_02086930
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #4
	bl sub_02075C74
_0208660C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02086610: .word 0x000005A4
	thumb_func_end sub_02086590

	thumb_func_start sub_02086614
sub_02086614: ; 0x02086614
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02086690 ; =0x000005A4
	add r6, r1, #0
	ldr r1, _02086694 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _02086698 ; =0x0000069C
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0xa2
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200B630
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #8
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	cmp r4, #0
	ldr r1, _0208669C ; =0x000006FC
	bne _02086680
	ldr r0, [r5, r1]
	sub r1, #0x54
	mov r2, #2
	ldr r1, [r5, r1]
	mvn r2, r2
	bl sub_02013A6C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02086680:
	ldr r0, [r5, r1]
	sub r1, #0x54
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_02013A6C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02086690: .word 0x000005A4
_02086694: .word 0x00000B29
_02086698: .word 0x0000069C
_0208669C: .word 0x000006FC
	thumb_func_end sub_02086614

	thumb_func_start sub_020866A0
sub_020866A0: ; 0x020866A0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	cmp r1, #0
	bne _020866B4
	mov r1, #0x29
	mov r2, #1
	bl sub_020826F4
	b _020866BC
_020866B4:
	mov r1, #0x28
	mov r2, #1
	bl sub_020826F4
_020866BC:
	mov r0, #4
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _02086770 ; =0x000006FC
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_02086614
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl sub_02086614
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	mov r1, #2
	bl sub_02086614
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	mov r1, #3
	bl sub_02086614
	add r0, r5, r0
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, _02086770 ; =0x000006FC
	mov r2, #0
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp, #0xc]
	add r0, sp, #8
	strb r2, [r0, #8]
	mov r2, #1
	strb r2, [r0, #9]
	mov r2, #4
	strb r2, [r0, #0xa]
	ldrb r3, [r0, #0xb]
	mov r2, #0xf
	bic r3, r2
	strb r3, [r0, #0xb]
	ldrb r3, [r0, #0xb]
	mov r2, #0x30
	bic r3, r2
	strb r3, [r0, #0xb]
	cmp r1, #4
	ldrb r2, [r0, #0xb]
	bne _0208673A
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _02086740
_0208673A:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_02086740:
	mov r0, #0x91
	lsl r0, r0, #2
	mov r1, #1
	add r0, r4, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r4, r1]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02086770: .word 0x000006FC
	thumb_func_end sub_020866A0

	thumb_func_start sub_02086774
sub_02086774: ; 0x02086774
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_02001BE0
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _02086796
	add r0, r0, #1
	cmp r4, r0
	beq _02086890
	b _020867D2
_02086796:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02086898 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl sub_020826E0
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_020867D2:
	mov r0, #0x85
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x91
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #7
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	ldr r0, _02086898 ; =0x000006FC
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0208689C ; =0x000005A4
	ldr r6, [r5, r0]
	add r0, r5, #0
	bl sub_02086930
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	ldr r2, _020868A0 ; =0x00000B29
	lsl r3, r4, #0x18
	ldrh r1, [r6, #0x24]
	ldrb r2, [r5, r2]
	ldr r0, [r6, #0]
	lsr r3, r3, #0x18
	bl sub_02096F14
	cmp r0, #1
	bne _02086860
	ldr r0, _0208689C ; =0x000005A4
	ldr r1, _020868A0 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r4, #0x36
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0208689C ; =0x000005A4
	add r2, r0, #0
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, #0x24]
	bl sub_02084E58
	ldr r0, _0208689C ; =0x000005A4
	mov r2, #1
	ldr r1, [r5, r0]
	mov r3, #0xc
	ldr r0, [r1, #4]
	ldrh r1, [r1, #0x24]
	bl sub_0207D60C
	ldr r0, _020868A4 ; =0x000005EC
	bl sub_02005748
	b _0208686E
_02086860:
	ldr r2, _020868A8 ; =0x0000069C
	mov r1, #0x69
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_0208686E:
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _0208689C ; =0x000005A4
	mov r1, #0
	ldr r0, [r5, r0]
	add sp, #8
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _020868AC ; =0x00000B26
	mov r1, #0x19
	strb r1, [r5, r0]
	mov r0, #0x18
	pop {r4, r5, r6, pc}
_02086890:
	mov r0, #6
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02086898: .word 0x000006FC
_0208689C: .word 0x000005A4
_020868A0: .word 0x00000B29
_020868A4: .word 0x000005EC
_020868A8: .word 0x0000069C
_020868AC: .word 0x00000B26
	thumb_func_end sub_02086774

	thumb_func_start sub_020868B0
sub_020868B0: ; 0x020868B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _02086924 ; =0x00000B29
	mov r2, #0x71
	ldrb r1, [r4, r0]
	mov r0, #0x2c
	lsl r2, r2, #4
	mul r0, r1
	add r0, r4, r0
	ldrh r0, [r0, r2]
	cmp r0, #0
	bne _020868F0
	add r0, r2, #0
	sub r0, #0x74
	sub r2, #0x6c
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x7f
	bl sub_0200B1B8
	ldr r1, _02086924 ; =0x00000B29
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl sub_02083080
	b _02086906
_020868F0:
	add r0, r2, #0
	sub r0, #0x74
	sub r2, #0x6c
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	mov r1, #0x80
	bl sub_0200B1B8
	ldr r0, _02086924 ; =0x00000B29
	mov r1, #7
	strb r1, [r4, r0]
_02086906:
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #1
	bl sub_02082708
	ldr r0, _02086928 ; =0x000005A4
	mov r1, #0
	ldr r0, [r4, r0]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, _0208692C ; =0x00000B26
	mov r1, #0x19
	strb r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_02086924: .word 0x00000B29
_02086928: .word 0x000005A4
_0208692C: .word 0x00000B26
	thumb_func_end sub_020868B0

	thumb_func_start sub_02086930
sub_02086930: ; 0x02086930
	push {r3, lr}
	ldr r1, _02086948 ; =0x000005A4
	ldr r0, [r0, r1]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	nop
_02086948: .word 0x000005A4
	thumb_func_end sub_02086930