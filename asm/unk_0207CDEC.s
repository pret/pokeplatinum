	.include "macros/function.inc"
	.include "include/unk_0207CDEC.inc"

	

	.text


	thumb_func_start sub_0207CDEC
sub_0207CDEC: ; 0x0207CDEC
	push {r3, r4, r5, r6}
	add r3, r0, #0
	add r0, r2, #0
	cmp r1, r0
	beq _0207CE72
	lsl r2, r1, #2
	ldrh r4, [r3, r2]
	add r5, r3, r2
	add r2, sp, #0
	strh r4, [r2]
	ldrh r4, [r5, #2]
	strh r4, [r2, #2]
	cmp r0, r1
	bls _0207CE38
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r2, r0, #0x10
	asr r1, r1, #0x10
	asr r5, r2, #0x10
	cmp r1, r5
	bge _0207CE64
	lsl r2, r1, #2
	add r2, r3, r2
	add r4, r2, #0
_0207CE20:
	ldrh r6, [r2, #4]
	add r1, r1, #1
	lsl r1, r1, #0x10
	strh r6, [r4]
	ldrh r6, [r2, #6]
	asr r1, r1, #0x10
	add r2, r2, #4
	strh r6, [r4, #2]
	add r4, r4, #4
	cmp r1, r5
	blt _0207CE20
	b _0207CE64
_0207CE38:
	lsl r1, r1, #0x10
	asr r5, r1, #0x10
	lsl r1, r0, #0x10
	asr r4, r1, #0x10
	cmp r5, r4
	ble _0207CE64
	lsl r1, r5, #2
	add r1, r3, r1
	add r2, r1, #0
_0207CE4A:
	sub r6, r1, #4
	ldrh r6, [r6]
	sub r5, r5, #1
	lsl r5, r5, #0x10
	strh r6, [r2]
	sub r6, r1, #2
	ldrh r6, [r6]
	asr r5, r5, #0x10
	sub r1, r1, #4
	strh r6, [r2, #2]
	sub r2, r2, #4
	cmp r5, r4
	bgt _0207CE4A
_0207CE64:
	lsl r4, r0, #2
	add r0, sp, #0
	ldrh r1, [r0]
	add r2, r3, r4
	strh r1, [r3, r4]
	ldrh r0, [r0, #2]
	strh r0, [r2, #2]
_0207CE72:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207CDEC

	thumb_func_start sub_0207CE78
sub_0207CE78: ; 0x0207CE78
	cmp r1, #3
	bhi _0207CEEA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207CE88: ; jump table
	.short _0207CE90 - _0207CE88 - 2 ; case 0
	.short _0207CEA2 - _0207CE88 - 2 ; case 1
	.short _0207CEBC - _0207CE88 - 2 ; case 2
	.short _0207CED8 - _0207CE88 - 2 ; case 3
_0207CE90:
	cmp r0, #0
	beq _0207CEEA
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	beq _0207CEEA
	lsl r1, r0, #3
	ldr r0, _0207CEF4 ; =0x020F0CC4
	ldrh r0, [r0, r1]
	bx lr
_0207CEA2:
	cmp r0, #0
	bne _0207CEAA
	ldr r0, _0207CEF8 ; =0x000002C3
	bx lr
_0207CEAA:
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	bne _0207CEB4
	ldr r0, _0207CEFC ; =0x000002C5
	bx lr
_0207CEB4:
	lsl r1, r0, #3
	ldr r0, _0207CF00 ; =0x020F0CC6
	ldrh r0, [r0, r1]
	bx lr
_0207CEBC:
	cmp r0, #0
	bne _0207CEC6
	mov r0, #0xb1
	lsl r0, r0, #2
	bx lr
_0207CEC6:
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	bne _0207CED0
	ldr r0, _0207CF04 ; =0x000002C6
	bx lr
_0207CED0:
	lsl r1, r0, #3
	ldr r0, _0207CF08 ; =0x020F0CC8
	ldrh r0, [r0, r1]
	bx lr
_0207CED8:
	cmp r0, #0
	beq _0207CEEA
	ldr r1, _0207CEF0 ; =0x0000FFFF
	cmp r0, r1
	beq _0207CEEA
	lsl r1, r0, #3
	ldr r0, _0207CF0C ; =0x020F0CCA
	ldrh r0, [r0, r1]
	bx lr
_0207CEEA:
	mov r0, #0
	bx lr
	nop
_0207CEF0: .word 0x0000FFFF
_0207CEF4: .word 0x020F0CC4
_0207CEF8: .word 0x000002C3
_0207CEFC: .word 0x000002C5
_0207CF00: .word 0x020F0CC6
_0207CF04: .word 0x000002C6
_0207CF08: .word 0x020F0CC8
_0207CF0C: .word 0x020F0CCA
	thumb_func_end sub_0207CE78

	thumb_func_start sub_0207CF10
sub_0207CF10: ; 0x0207CF10
	push {r3, r4}
	ldr r3, _0207CF38 ; =0x020F0CC4
	ldr r2, _0207CF3C ; =0x000001D3
	mov r4, #1
_0207CF18:
	lsl r1, r4, #3
	add r1, r3, r1
	ldrh r1, [r1, #6]
	cmp r0, r1
	bne _0207CF28
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_0207CF28:
	add r1, r4, #1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r4, r2
	bls _0207CF18
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_0207CF38: .word 0x020F0CC4
_0207CF3C: .word 0x000001D3
	thumb_func_end sub_0207CF10

	thumb_func_start sub_0207CF40
sub_0207CF40: ; 0x0207CF40
	mov r0, #1
	bx lr
	thumb_func_end sub_0207CF40

	thumb_func_start sub_0207CF44
sub_0207CF44: ; 0x0207CF44
	mov r0, #0
	bx lr
	thumb_func_end sub_0207CF44

	thumb_func_start sub_0207CF48
sub_0207CF48: ; 0x0207CF48
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _0207CF90 ; =0x000001D3
	cmp r3, r0
	bls _0207CF54
	mov r3, #0
_0207CF54:
	cmp r1, #0
	beq _0207CF62
	cmp r1, #1
	beq _0207CF70
	cmp r1, #2
	beq _0207CF7E
	b _0207CF8C
_0207CF62:
	ldr r1, _0207CF94 ; =0x020F0CC4
	lsl r3, r3, #3
	ldrh r1, [r1, r3]
	mov r0, #0xf
	bl sub_02006AC0
	pop {r3, pc}
_0207CF70:
	ldr r1, _0207CF98 ; =0x020F0CC6
	lsl r3, r3, #3
	ldrh r1, [r1, r3]
	mov r0, #0x10
	bl sub_02006AC0
	pop {r3, pc}
_0207CF7E:
	ldr r1, _0207CF9C ; =0x020F0CC8
	lsl r3, r3, #3
	ldrh r1, [r1, r3]
	mov r0, #0x10
	bl sub_02006AC0
	pop {r3, pc}
_0207CF8C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0207CF90: .word 0x000001D3
_0207CF94: .word 0x020F0CC4
_0207CF98: .word 0x020F0CC6
_0207CF9C: .word 0x020F0CC8
	thumb_func_end sub_0207CF48

	thumb_func_start sub_0207CFA0
sub_0207CFA0: ; 0x0207CFA0
	push {r4, r5, r6, lr}
	add r3, r2, #0
	mov r2, #0x62
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r6, r0, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200B1B8
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207CFA0

	thumb_func_start sub_0207CFC8
sub_0207CFC8: ; 0x0207CFC8
	push {r4, r5, r6, lr}
	add r3, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	ldr r2, _0207CFEC ; =0x00000187
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r6, r0, #0
	add r1, r4, #0
	add r2, r5, #0
	bl sub_0200B1B8
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0207CFEC: .word 0x00000187
	thumb_func_end sub_0207CFC8

	thumb_func_start sub_0207CFF0
sub_0207CFF0: ; 0x0207CFF0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r2, #0
	bl sub_0207CF48
	add r6, r0, #0
	add r1, r4, #0
	bl sub_0207D014
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02018238
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0207CFF0

	thumb_func_start sub_0207D014
sub_0207D014: ; 0x0207D014
	push {r3, lr}
	cmp r1, #0xe
	bhi _0207D094
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0207D026: ; jump table
	.short _0207D044 - _0207D026 - 2 ; case 0
	.short _0207D048 - _0207D026 - 2 ; case 1
	.short _0207D04C - _0207D026 - 2 ; case 2
	.short _0207D050 - _0207D026 - 2 ; case 3
	.short _0207D058 - _0207D026 - 2 ; case 4
	.short _0207D060 - _0207D026 - 2 ; case 5
	.short _0207D068 - _0207D026 - 2 ; case 6
	.short _0207D06C - _0207D026 - 2 ; case 7
	.short _0207D070 - _0207D026 - 2 ; case 8
	.short _0207D074 - _0207D026 - 2 ; case 9
	.short _0207D078 - _0207D026 - 2 ; case 10
	.short _0207D07C - _0207D026 - 2 ; case 11
	.short _0207D080 - _0207D026 - 2 ; case 12
	.short _0207D088 - _0207D026 - 2 ; case 13
	.short _0207D090 - _0207D026 - 2 ; case 14
_0207D044:
	ldrh r0, [r0]
	pop {r3, pc}
_0207D048:
	ldrb r0, [r0, #2]
	pop {r3, pc}
_0207D04C:
	ldrb r0, [r0, #3]
	pop {r3, pc}
_0207D050:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0207D058:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	pop {r3, pc}
_0207D060:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x1c
	pop {r3, pc}
_0207D068:
	ldrb r0, [r0, #0xa]
	pop {r3, pc}
_0207D06C:
	ldrb r0, [r0, #0xb]
	pop {r3, pc}
_0207D070:
	ldrb r0, [r0, #4]
	pop {r3, pc}
_0207D074:
	ldrb r0, [r0, #5]
	pop {r3, pc}
_0207D078:
	ldrb r0, [r0, #6]
	pop {r3, pc}
_0207D07C:
	ldrb r0, [r0, #7]
	pop {r3, pc}
_0207D080:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0207D088:
	ldrh r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1b
	pop {r3, pc}
_0207D090:
	ldrb r0, [r0, #0xc]
	pop {r3, pc}
_0207D094:
	ldrb r2, [r0, #0xc]
	cmp r2, #0
	beq _0207D0A0
	cmp r2, #1
	beq _0207D0A4
	b _0207D0AC
_0207D0A0:
	ldrb r0, [r0, #0xe]
	pop {r3, pc}
_0207D0A4:
	add r0, #0xe
	bl sub_0207D0B0
	pop {r3, pc}
_0207D0AC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0207D014

	thumb_func_start sub_0207D0B0
sub_0207D0B0: ; 0x0207D0B0
	sub r1, #0xf
	cmp r1, #0x2b
	bls _0207D0B8
	b _0207D262
_0207D0B8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0207D0C4: ; jump table
	.short _0207D11C - _0207D0C4 - 2 ; case 0
	.short _0207D124 - _0207D0C4 - 2 ; case 1
	.short _0207D12C - _0207D0C4 - 2 ; case 2
	.short _0207D134 - _0207D0C4 - 2 ; case 3
	.short _0207D13C - _0207D0C4 - 2 ; case 4
	.short _0207D144 - _0207D0C4 - 2 ; case 5
	.short _0207D14C - _0207D0C4 - 2 ; case 6
	.short _0207D154 - _0207D0C4 - 2 ; case 7
	.short _0207D15C - _0207D0C4 - 2 ; case 8
	.short _0207D164 - _0207D0C4 - 2 ; case 9
	.short _0207D16C - _0207D0C4 - 2 ; case 10
	.short _0207D174 - _0207D0C4 - 2 ; case 11
	.short _0207D17C - _0207D0C4 - 2 ; case 12
	.short _0207D184 - _0207D0C4 - 2 ; case 13
	.short _0207D18C - _0207D0C4 - 2 ; case 14
	.short _0207D194 - _0207D0C4 - 2 ; case 15
	.short _0207D19C - _0207D0C4 - 2 ; case 16
	.short _0207D1A4 - _0207D0C4 - 2 ; case 17
	.short _0207D1AC - _0207D0C4 - 2 ; case 18
	.short _0207D1B4 - _0207D0C4 - 2 ; case 19
	.short _0207D1BC - _0207D0C4 - 2 ; case 20
	.short _0207D1C4 - _0207D0C4 - 2 ; case 21
	.short _0207D1CC - _0207D0C4 - 2 ; case 22
	.short _0207D1D4 - _0207D0C4 - 2 ; case 23
	.short _0207D1DC - _0207D0C4 - 2 ; case 24
	.short _0207D1E4 - _0207D0C4 - 2 ; case 25
	.short _0207D1EC - _0207D0C4 - 2 ; case 26
	.short _0207D1F4 - _0207D0C4 - 2 ; case 27
	.short _0207D1FC - _0207D0C4 - 2 ; case 28
	.short _0207D204 - _0207D0C4 - 2 ; case 29
	.short _0207D20C - _0207D0C4 - 2 ; case 30
	.short _0207D214 - _0207D0C4 - 2 ; case 31
	.short _0207D21C - _0207D0C4 - 2 ; case 32
	.short _0207D224 - _0207D0C4 - 2 ; case 33
	.short _0207D22A - _0207D0C4 - 2 ; case 34
	.short _0207D230 - _0207D0C4 - 2 ; case 35
	.short _0207D236 - _0207D0C4 - 2 ; case 36
	.short _0207D23C - _0207D0C4 - 2 ; case 37
	.short _0207D242 - _0207D0C4 - 2 ; case 38
	.short _0207D248 - _0207D0C4 - 2 ; case 39
	.short _0207D24C - _0207D0C4 - 2 ; case 40
	.short _0207D250 - _0207D0C4 - 2 ; case 41
	.short _0207D256 - _0207D0C4 - 2 ; case 42
	.short _0207D25C - _0207D0C4 - 2 ; case 43
_0207D11C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D124:
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D12C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D134:
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D13C:
	ldrb r0, [r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
_0207D144:
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bx lr
_0207D14C:
	ldrb r0, [r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
_0207D154:
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_0207D15C:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D164:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D16C:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D174:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D17C:
	ldrb r0, [r0, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bx lr
_0207D184:
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
_0207D18C:
	ldrb r0, [r0, #2]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bx lr
_0207D194:
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
_0207D19C:
	ldrb r0, [r0, #3]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	bx lr
_0207D1A4:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	bx lr
_0207D1AC:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bx lr
_0207D1B4:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
_0207D1BC:
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_0207D1C4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D1CC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D1D4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D1DC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D1E4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1f
	bx lr
_0207D1EC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	bx lr
_0207D1F4:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	bx lr
_0207D1FC:
	ldrb r0, [r0, #5]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_0207D204:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
_0207D20C:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bx lr
_0207D214:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bx lr
_0207D21C:
	ldrb r0, [r0, #6]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bx lr
_0207D224:
	mov r1, #7
	ldrsb r0, [r0, r1]
	bx lr
_0207D22A:
	mov r1, #8
	ldrsb r0, [r0, r1]
	bx lr
_0207D230:
	mov r1, #9
	ldrsb r0, [r0, r1]
	bx lr
_0207D236:
	mov r1, #0xa
	ldrsb r0, [r0, r1]
	bx lr
_0207D23C:
	mov r1, #0xb
	ldrsb r0, [r0, r1]
	bx lr
_0207D242:
	mov r1, #0xc
	ldrsb r0, [r0, r1]
	bx lr
_0207D248:
	ldrb r0, [r0, #0xd]
	bx lr
_0207D24C:
	ldrb r0, [r0, #0xe]
	bx lr
_0207D250:
	mov r1, #0xf
	ldrsb r0, [r0, r1]
	bx lr
_0207D256:
	mov r1, #0x10
	ldrsb r0, [r0, r1]
	bx lr
_0207D25C:
	mov r1, #0x11
	ldrsb r0, [r0, r1]
	bx lr
_0207D262:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0207D0B0

	thumb_func_start sub_0207D268
sub_0207D268: ; 0x0207D268
	mov r2, #0x52
	lsl r2, r2, #2
	cmp r0, r2
	blo _0207D278
	add r1, r2, #0
	add r1, #0x63
	cmp r0, r1
	bls _0207D27C
_0207D278:
	mov r0, #0
	bx lr
_0207D27C:
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r1, r0, #0xf
	ldr r0, _0207D288 ; =0x020F0BFC
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0207D288: .word 0x020F0BFC
	thumb_func_end sub_0207D268

	thumb_func_start sub_0207D28C
sub_0207D28C: ; 0x0207D28C
	ldr r2, _0207D2B0 ; =0x020F0BFC
	mov r3, #0
_0207D290:
	lsl r1, r3, #1
	add r1, r2, r1
	add r1, #0xb8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0207D2A0
	mov r0, #1
	bx lr
_0207D2A0:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #8
	blo _0207D290
	mov r0, #0
	bx lr
	nop
_0207D2B0: .word 0x020F0BFC
	thumb_func_end sub_0207D28C

	thumb_func_start sub_0207D2B4
sub_0207D2B4: ; 0x0207D2B4
	mov r2, #0x52
	lsl r2, r2, #2
	cmp r0, r2
	blo _0207D2C4
	add r1, r2, #0
	add r1, #0x63
	cmp r0, r1
	bls _0207D2C8
_0207D2C4:
	mov r0, #0
	bx lr
_0207D2C8:
	sub r0, r0, r2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0207D2B4

	thumb_func_start sub_0207D2D0
sub_0207D2D0: ; 0x0207D2D0
	ldr r3, _0207D2EC ; =0x020F0B64
	mov r2, #0
_0207D2D4:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0207D2DE
	mov r0, #1
	bx lr
_0207D2DE:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0xc
	blo _0207D2D4
	mov r0, #0
	bx lr
	nop
_0207D2EC: .word 0x020F0B64
	thumb_func_end sub_0207D2D0

	thumb_func_start sub_0207D2F0
sub_0207D2F0: ; 0x0207D2F0
	ldr r3, _0207D30C ; =0x020F0B64
	mov r2, #0
_0207D2F4:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0207D300
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	bx lr
_0207D300:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0xc
	blo _0207D2F4
	mov r0, #0
	bx lr
	; .align 2, 0
_0207D30C: .word 0x020F0B64
	thumb_func_end sub_0207D2F0

	thumb_func_start sub_0207D310
sub_0207D310: ; 0x0207D310
	cmp r0, #0xc
	blo _0207D318
	mov r0, #0
	bx lr
_0207D318:
	lsl r1, r0, #1
	ldr r0, _0207D320 ; =0x020F0B64
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0207D320: .word 0x020F0B64
	thumb_func_end sub_0207D310

	thumb_func_start sub_0207D324
sub_0207D324: ; 0x0207D324
	ldr r3, _0207D340 ; =0x020F0B7C
	mov r2, #0
_0207D328:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0207D332
	mov r0, #1
	bx lr
_0207D332:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x40
	blo _0207D328
	mov r0, #0
	bx lr
	nop
_0207D340: .word 0x020F0B7C
	thumb_func_end sub_0207D324

	thumb_func_start sub_0207D344
sub_0207D344: ; 0x0207D344
	cmp r0, #0x95
	bhs _0207D34C
	mov r0, #0xff
	bx lr
_0207D34C:
	sub r0, #0x95
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end sub_0207D344

	thumb_func_start sub_0207D354
sub_0207D354: ; 0x0207D354
	cmp r0, #0x40
	blo _0207D35C
	ldr r0, _0207D364 ; =0x0000FFFF
	bx lr
_0207D35C:
	lsl r1, r0, #1
	ldr r0, _0207D368 ; =0x020F0B7C
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_0207D364: .word 0x0000FFFF
_0207D368: .word 0x020F0B7C
	thumb_func_end sub_0207D354

	thumb_func_start sub_0207D36C
sub_0207D36C: ; 0x0207D36C
	ldr r1, _0207D384 ; =0x0000FFDE
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #3
	bhi _0207D37C
	mov r0, #1
	b _0207D37E
_0207D37C:
	mov r0, #0
_0207D37E:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_0207D384: .word 0x0000FFDE
	thumb_func_end sub_0207D36C

	thumb_func_start sub_0207D388
sub_0207D388: ; 0x0207D388
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0207D3AC ; =0x000001D3
	mov r1, #0
	bl sub_0207CE78
	mov r1, #0x24
	mul r1, r0
	str r1, [sp]
	mov r1, #0
	mov r0, #0xf
	add r2, r4, #0
	add r3, r1, #0
	bl sub_02006B18
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0207D3AC: .word 0x000001D3
	thumb_func_end sub_0207D388

	thumb_func_start sub_0207D3B0
sub_0207D3B0: ; 0x0207D3B0
	mov r2, #0x24
	mul r2, r1
	add r0, r0, r2
	bx lr
	thumb_func_end sub_0207D3B0

	.rodata


	.global Unk_020F0B64
Unk_020F0B64: ; 0x020F0B64
	.incbin "incbin/arm9_rodata.bin", 0xBF24, 0xBF3C - 0xBF24

	.global Unk_020F0B7C
Unk_020F0B7C: ; 0x020F0B7C
	.incbin "incbin/arm9_rodata.bin", 0xBF3C, 0xBFBC - 0xBF3C

	.global Unk_020F0BFC
Unk_020F0BFC: ; 0x020F0BFC
	.incbin "incbin/arm9_rodata.bin", 0xBFBC, 0xC084 - 0xBFBC

	.global Unk_020F0CC4
Unk_020F0CC4: ; 0x020F0CC4
	.incbin "incbin/arm9_rodata.bin", 0xC084, 0xEA0

