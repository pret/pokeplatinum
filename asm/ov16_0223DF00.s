	.include "macros/function.inc"
	.include "include/ov16_0223DF00.inc"

	

	.text


	thumb_func_start ov16_0223DF00
ov16_0223DF00: ; 0x0223DF00
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov16_0223DF00

	thumb_func_start ov16_0223DF04
ov16_0223DF04: ; 0x0223DF04
	ldr r2, [r0, #8]
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
	thumb_func_end ov16_0223DF04

	thumb_func_start ov16_0223DF0C
ov16_0223DF0C: ; 0x0223DF0C
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end ov16_0223DF0C

	thumb_func_start ov16_0223DF10
ov16_0223DF10: ; 0x0223DF10
	ldr r0, [r0, #0x30]
	bx lr
	thumb_func_end ov16_0223DF10

	thumb_func_start ov16_0223DF14
ov16_0223DF14: ; 0x0223DF14
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov16_0223DF14

	thumb_func_start ov16_0223DF1C
ov16_0223DF1C: ; 0x0223DF1C
	ldr r0, [r0, #0x44]
	bx lr
	thumb_func_end ov16_0223DF1C

	thumb_func_start ov16_0223DF20
ov16_0223DF20: ; 0x0223DF20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223DF3E
	mov r3, #0x10
	tst r2, r3
	beq _0223DF46
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223DF46
_0223DF3E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	pop {r3, r4, r5, pc}
_0223DF46:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223DF58
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	pop {r3, r4, r5, pc}
_0223DF58:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0223DF20

	thumb_func_start ov16_0223DF60
ov16_0223DF60: ; 0x0223DF60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223DF7E
	mov r3, #0x10
	tst r2, r3
	beq _0223DF8A
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223DF8A
_0223DF7E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl sub_0207A0F8
	pop {r3, r4, r5, pc}
_0223DF8A:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223DFA0
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl sub_0207A0F8
	pop {r3, r4, r5, pc}
_0223DFA0:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	bl sub_0207A0F8
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0223DF60

	thumb_func_start ov16_0223DFAC
ov16_0223DFAC: ; 0x0223DFAC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223DFCC
	mov r3, #0x10
	tst r2, r3
	beq _0223DFDA
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223DFDA
_0223DFCC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r6, #0
	bl sub_0207A0FC
	pop {r4, r5, r6, pc}
_0223DFDA:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223DFF2
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r6, #0
	bl sub_0207A0FC
	pop {r4, r5, r6, pc}
_0223DFF2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x68]
	add r1, r6, #0
	bl sub_0207A0FC
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223DFAC

	thumb_func_start ov16_0223E000
ov16_0223E000: ; 0x0223E000
	add r0, #0x88
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0223E000

	thumb_func_start ov16_0223E008
ov16_0223E008: ; 0x0223E008
	add r0, #0x8c
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0223E008

	thumb_func_start ov16_0223E010
ov16_0223E010: ; 0x0223E010
	add r0, #0x90
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0223E010

	thumb_func_start ov16_0223E018
ov16_0223E018: ; 0x0223E018
	add r0, #0x94
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0223E018

	thumb_func_start ov16_0223E020
ov16_0223E020: ; 0x0223E020
	mov r2, #0x5f
	lsl r2, r2, #2
	add r2, r0, r2
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
	thumb_func_end ov16_0223E020

	thumb_func_start ov16_0223E02C
ov16_0223E02C: ; 0x0223E02C
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223E02C

	thumb_func_start ov16_0223E034
ov16_0223E034: ; 0x0223E034
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov16_0223E034

	thumb_func_start ov16_0223E040
ov16_0223E040: ; 0x0223E040
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x1a
	lsl r0, r0, #4
	str r2, [r1, r0]
	bx lr
	thumb_func_end ov16_0223E040

	thumb_func_start ov16_0223E04C
ov16_0223E04C: ; 0x0223E04C
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223E04C

	thumb_func_start ov16_0223E054
ov16_0223E054: ; 0x0223E054
	mov r1, #0x6b
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223E054

	thumb_func_start ov16_0223E05C
ov16_0223E05C: ; 0x0223E05C
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov16_0223E05C

	thumb_func_start ov16_0223E060
ov16_0223E060: ; 0x0223E060
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov16_0223E060

	thumb_func_start ov16_0223E064
ov16_0223E064: ; 0x0223E064
	ldr r0, [r0, #0x28]
	bx lr
	thumb_func_end ov16_0223E064

	thumb_func_start ov16_0223E068
ov16_0223E068: ; 0x0223E068
	ldr r0, [r0, #0x60]
	bx lr
	thumb_func_end ov16_0223E068

	thumb_func_start ov16_0223E06C
ov16_0223E06C: ; 0x0223E06C
	mov r1, #0x8a
	lsl r1, r1, #2
	add r0, r0, r1
	bx lr
	thumb_func_end ov16_0223E06C

	thumb_func_start ov16_0223E074
ov16_0223E074: ; 0x0223E074
	ldr r1, _0223E07C ; =0x00001228
	add r0, r0, r1
	bx lr
	nop
_0223E07C: .word 0x00001228
	thumb_func_end ov16_0223E074

	thumb_func_start ov16_0223E080
ov16_0223E080: ; 0x0223E080
	ldr r1, _0223E088 ; =0x000023E8
	add r0, r0, r1
	bx lr
	nop
_0223E088: .word 0x000023E8
	thumb_func_end ov16_0223E080

	thumb_func_start ov16_0223E08C
ov16_0223E08C: ; 0x0223E08C
	ldr r1, _0223E094 ; =0x000023EA
	add r0, r0, r1
	bx lr
	nop
_0223E094: .word 0x000023EA
	thumb_func_end ov16_0223E08C

	thumb_func_start ov16_0223E098
ov16_0223E098: ; 0x0223E098
	ldr r1, _0223E0A0 ; =0x000023EC
	add r0, r0, r1
	bx lr
	nop
_0223E0A0: .word 0x000023EC
	thumb_func_end ov16_0223E098

	thumb_func_start ov16_0223E0A4
ov16_0223E0A4: ; 0x0223E0A4
	ldr r1, _0223E0AC ; =0x000023EE
	add r0, r0, r1
	bx lr
	nop
_0223E0AC: .word 0x000023EE
	thumb_func_end ov16_0223E0A4

	thumb_func_start ov16_0223E0B0
ov16_0223E0B0: ; 0x0223E0B0
	ldr r1, _0223E0B8 ; =0x000023F0
	add r0, r0, r1
	bx lr
	nop
_0223E0B8: .word 0x000023F0
	thumb_func_end ov16_0223E0B0

	thumb_func_start ov16_0223E0BC
ov16_0223E0BC: ; 0x0223E0BC
	ldr r1, _0223E0C4 ; =0x000023F2
	add r0, r0, r1
	bx lr
	nop
_0223E0C4: .word 0x000023F2
	thumb_func_end ov16_0223E0BC

	thumb_func_start ov16_0223E0C8
ov16_0223E0C8: ; 0x0223E0C8
	mov r1, #0x1d
	lsl r1, r1, #4
	add r0, r0, r1
	bx lr
	thumb_func_end ov16_0223E0C8

	thumb_func_start ov16_0223E0D0
ov16_0223E0D0: ; 0x0223E0D0
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov16_0223E0D0

	thumb_func_start ov16_0223E0D4
ov16_0223E0D4: ; 0x0223E0D4
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov16_0223E0D4

	thumb_func_start ov16_0223E0D8
ov16_0223E0D8: ; 0x0223E0D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223E0F6
	mov r3, #0x10
	tst r2, r3
	beq _0223E100
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223E100
_0223E0F6:
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0xa0
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0223E100:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223E114
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1e
	add r0, r5, r0
	add r0, #0xa0
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
_0223E114:
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0xa0
	ldrh r0, [r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0223E0D8

	thumb_func_start ov16_0223E120
ov16_0223E120: ; 0x0223E120
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223E13E
	mov r3, #0x10
	tst r2, r3
	beq _0223E148
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223E148
_0223E13E:
	mov r0, #0x34
	add r5, #0xac
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_0223E148:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223E160
	mov r0, #1
	add r1, r4, #0
	and r1, r0
	mov r0, #0x34
	add r5, #0xac
	mul r0, r1
	add r0, r5, r0
	pop {r3, r4, r5, pc}
_0223E160:
	mov r0, #0x34
	add r5, #0xac
	mul r0, r4
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0223E120

	thumb_func_start ov16_0223E16C
ov16_0223E16C: ; 0x0223E16C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223E18A
	mov r3, #0x10
	tst r2, r3
	beq _0223E192
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223E192
_0223E18A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
_0223E192:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223E1A4
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
_0223E1A4:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0223E16C

	thumb_func_start ov16_0223E1AC
ov16_0223E1AC: ; 0x0223E1AC
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end ov16_0223E1AC

	thumb_func_start ov16_0223E1B0
ov16_0223E1B0: ; 0x0223E1B0
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end ov16_0223E1B0

	thumb_func_start ov16_0223E1B4
ov16_0223E1B4: ; 0x0223E1B4
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _0223E1C0 ; =sub_02025F30
	ldr r0, [r0, #0x48]
	bx r3
	nop
_0223E1C0: .word sub_02025F30
	thumb_func_end ov16_0223E1B4

	thumb_func_start ov16_0223E1C4
ov16_0223E1C4: ; 0x0223E1C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0223E1E8
	add r5, r6, #0
_0223E1D4:
	ldr r0, [r5, #0x34]
	bl ov16_02263AE4
	cmp r7, r0
	beq _0223E1E8
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223E1D4
_0223E1E8:
	ldr r0, [r6, #0x44]
	cmp r4, r0
	blt _0223E1F2
	bl sub_02022974
_0223E1F2:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223E1C4

	thumb_func_start ov16_0223E1F8
ov16_0223E1F8: ; 0x0223E1F8
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _0223E204 ; =ov16_02263AE4
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0223E204: .word ov16_02263AE4
	thumb_func_end ov16_0223E1F8

	thumb_func_start ov16_0223E208
ov16_0223E208: ; 0x0223E208
	push {r3, lr}
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x34]
	bl ov16_02263AE4
	mov r1, #1
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_0223E208

	thumb_func_start ov16_0223E220
ov16_0223E220: ; 0x0223E220
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223E220

	thumb_func_start ov16_0223E228
ov16_0223E228: ; 0x0223E228
	ldr r0, [r0, #0x64]
	bx lr
	thumb_func_end ov16_0223E228

	thumb_func_start ov16_0223E22C
ov16_0223E22C: ; 0x0223E22C
	mov r1, #9
	lsl r1, r1, #0xa
	ldr r0, [r0, r1]
	cmp r0, #0x18
	bgt _0223E23A
	cmp r0, #0
	bge _0223E23C
_0223E23A:
	mov r0, #0x18
_0223E23C:
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0223E22C

	thumb_func_start ov16_0223E240
ov16_0223E240: ; 0x0223E240
	ldr r1, _0223E248 ; =0x00002404
	ldr r0, [r0, r1]
	bx lr
	nop
_0223E248: .word 0x00002404
	thumb_func_end ov16_0223E240

	thumb_func_start ov16_0223E24C
ov16_0223E24C: ; 0x0223E24C
	ldr r1, _0223E254 ; =0x00002408
	ldr r0, [r0, r1]
	bx lr
	nop
_0223E254: .word 0x00002408
	thumb_func_end ov16_0223E24C

	thumb_func_start ov16_0223E258
ov16_0223E258: ; 0x0223E258
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov16_0223DF1C
	str r0, [sp]
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _0223E274
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223E274:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _0223E29E
_0223E27C:
	cmp r4, r5
	beq _0223E296
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_0223E208
	add r7, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223E208
	cmp r7, r0
	beq _0223E29E
_0223E296:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _0223E27C
_0223E29E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223E258

	thumb_func_start ov16_0223E2A4
ov16_0223E2A4: ; 0x0223E2A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	bl ov16_0223DF1C
	str r0, [sp, #4]
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _0223E2C8
	mov r0, #1
	add sp, #8
	eor r0, r6
	pop {r3, r4, r5, r6, r7, pc}
_0223E2C8:
	ldr r0, [sp, #4]
	mov r4, #0
	cmp r0, #0
	ble _0223E304
_0223E2D0:
	cmp r4, r6
	beq _0223E2FC
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223E1F8
	mov r1, #2
	and r1, r0
	ldr r0, [sp]
	cmp r0, r1
	bne _0223E2FC
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223E208
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223E208
	cmp r7, r0
	bne _0223E304
_0223E2FC:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0223E2D0
_0223E304:
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223E2A4

	thumb_func_start ov16_0223E30C
ov16_0223E30C: ; 0x0223E30C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	ldr r1, [sp, #0x38]
	add r6, r2, #0
	str r1, [sp, #0x38]
	add r1, r0, #0
	ldr r1, [r1, #0x30]
	add r4, r3, #0
	str r1, [sp, #0x1c]
	mov r1, #0
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	mov r2, #2
	add r3, r7, #0
	bl ov16_0225B45C
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	cmp r0, #3
	beq _0223E356
	ldr r0, [sp, #4]
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	beq _0223E37C
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	bne _0223E37C
_0223E356:
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov16_0223E258
	add r3, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #2
	bl ov16_0225B45C
	str r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E380
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov16_0223E258
	add r7, r0, #0
	b _0223E380
_0223E37C:
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
_0223E380:
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl ov16_0223DFAC
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	mov r1, #0xf
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E414
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	mov r1, #7
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223E414
	mov r1, #7
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E3D0
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E410
_0223E3D0:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov16_02252060
	mov r1, #7
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov16_022523E8
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov16_02252060
	ldr r1, _0223E624 ; =0xF7FFFFFF
	str r0, [sp, #0x20]
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	add r3, sp, #0x20
	bl ov16_022523E8
_0223E410:
	mov r0, #1
	str r0, [sp, #0x14]
_0223E414:
	ldr r0, [sp, #0x38]
	mov r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E478
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	ldr r1, _0223E628 ; =0x00000F88
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223E478
	ldr r1, _0223E62C ; =0xFFFFF077
	add r2, sp, #0x20
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E454
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E474
_0223E454:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov16_02252060
	ldr r1, _0223E62C ; =0xFFFFF077
	str r0, [sp, #0x20]
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov16_022523E8
_0223E474:
	mov r0, #1
	str r0, [sp, #0x14]
_0223E478:
	ldr r0, [sp, #0x38]
	mov r1, #0x11
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E4DC
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	mov r1, #0x10
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223E4DC
	mov r1, #0x10
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E4B8
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E4D8
_0223E4B8:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov16_02252060
	mov r1, #0x10
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov16_022523E8
_0223E4D8:
	mov r0, #1
	str r0, [sp, #0x14]
_0223E4DC:
	ldr r0, [sp, #0x38]
	mov r1, #0x12
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E540
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	mov r1, #0x20
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223E540
	mov r1, #0x20
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E51C
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E53C
_0223E51C:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov16_02252060
	mov r1, #0x20
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov16_022523E8
_0223E53C:
	mov r0, #1
	str r0, [sp, #0x14]
_0223E540:
	ldr r0, [sp, #0x38]
	mov r1, #0x13
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E5A4
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	mov r1, #0x40
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223E5A4
	mov r1, #0x40
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r1, #0xa0
	add r2, sp, #0x20
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E580
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E5A0
_0223E580:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	mov r3, #0
	bl ov16_02252060
	mov r1, #0x40
	str r0, [sp, #0x20]
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x34
	add r3, sp, #0x20
	bl ov16_022523E8
_0223E5A0:
	mov r0, #1
	str r0, [sp, #0x14]
_0223E5A4:
	ldr r0, [sp, #0x38]
	mov r1, #0x14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E5EC
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E5C2
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E5EC
_0223E5C2:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov16_02252060
	mov r1, #7
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223E5EC
	mov r1, #7
	bic r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	add r3, sp, #0x20
	bl ov16_022523E8
	mov r0, #1
	str r0, [sp, #0x14]
_0223E5EC:
	ldr r0, [sp, #0x38]
	mov r1, #0x15
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E648
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E60A
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E648
_0223E60A:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov16_02252060
	mov r1, #0xf
	lsl r1, r1, #0x10
	str r0, [sp, #0x20]
	tst r1, r0
	beq _0223E648
	ldr r1, _0223E630 ; =0xFFF0FFFF
	b _0223E634
	; .align 2, 0
_0223E624: .word 0xF7FFFFFF
_0223E628: .word 0x00000F88
_0223E62C: .word 0xFFFFF077
_0223E630: .word 0xFFF0FFFF
_0223E634:
	mov r2, #0x35
	and r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	add r3, sp, #0x20
	bl ov16_022523E8
	mov r0, #1
	str r0, [sp, #0x14]
_0223E648:
	ldr r0, [sp, #0x38]
	mov r1, #0x16
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E6A2
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #1
	add r3, r7, #0
	bl ov16_0225B45C
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _0223E6A2
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #0
	add r3, r7, #0
	bl ov16_0225B45C
	mov r1, #0x40
	str r0, [sp, #0x20]
	orr r0, r1
	str r0, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #0
	add r3, r7, #0
	bl ov16_0225B540
	mov r0, #5
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	mov r2, #1
	add r3, r7, #0
	bl ov16_0225B540
	mov r0, #1
	str r0, [sp, #0x14]
_0223E6A2:
	ldr r0, [sp, #0x38]
	mov r1, #0x1b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E6E0
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E6C0
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E6E0
_0223E6C0:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x13
	mov r3, #0
	bl ov16_02252060
	cmp r0, #0xc
	bge _0223E6E0
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x13
	mov r3, #1
	bl ov16_02252A14
	mov r0, #1
	str r0, [sp, #0x14]
_0223E6E0:
	ldr r0, [sp, #0x38]
	mov r1, #0x1c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E71E
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E6FE
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E71E
_0223E6FE:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #0
	bl ov16_02252060
	cmp r0, #0xc
	bge _0223E71E
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x14
	mov r3, #1
	bl ov16_02252A14
	mov r0, #1
	str r0, [sp, #0x14]
_0223E71E:
	ldr r0, [sp, #0x38]
	mov r1, #0x1d
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E75C
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E73C
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E75C
_0223E73C:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x16
	mov r3, #0
	bl ov16_02252060
	cmp r0, #0xc
	bge _0223E75C
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x16
	mov r3, #1
	bl ov16_02252A14
	mov r0, #1
	str r0, [sp, #0x14]
_0223E75C:
	ldr r0, [sp, #0x38]
	mov r1, #0x1e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E79A
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E77A
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E79A
_0223E77A:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x17
	mov r3, #0
	bl ov16_02252060
	cmp r0, #0xc
	bge _0223E79A
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x17
	mov r3, #1
	bl ov16_02252A14
	mov r0, #1
	str r0, [sp, #0x14]
_0223E79A:
	ldr r0, [sp, #0x38]
	mov r1, #0x1f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E7D8
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E7B8
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E7D8
_0223E7B8:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #0
	bl ov16_02252060
	cmp r0, #0xc
	bge _0223E7D8
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x15
	mov r3, #1
	bl ov16_02252A14
	mov r0, #1
	str r0, [sp, #0x14]
_0223E7D8:
	ldr r0, [sp, #0x38]
	mov r1, #0x20
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E816
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E7F6
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E816
_0223E7F6:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x18
	mov r3, #0
	bl ov16_02252060
	cmp r0, #0xc
	bge _0223E816
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x18
	mov r3, #1
	bl ov16_02252A14
	mov r0, #1
	str r0, [sp, #0x14]
_0223E816:
	ldr r0, [sp, #0x38]
	mov r1, #0x21
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E860
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E834
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E860
_0223E834:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov16_02252060
	mov r1, #1
	lsl r1, r1, #0x14
	add r2, r0, #0
	str r0, [sp, #0x20]
	tst r2, r1
	bne _0223E860
	orr r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	add r3, sp, #0x20
	bl ov16_022523E8
	mov r0, #1
	str r0, [sp, #0x14]
_0223E860:
	ldr r0, [sp, #0x38]
	mov r1, #0x24
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E8F6
	ldr r0, [sp, #0x38]
	mov r1, #0x37
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	str r0, [sp, #0x20]
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x42
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0223E8F6
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	add r1, #0x3a
	bl sub_0207536C
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E8B8
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E8F2
_0223E8B8:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov16_02252060
	mov r1, #2
	lsl r1, r1, #0x14
	tst r0, r1
	bne _0223E8F2
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x4b
	mov r3, #0
	bl ov16_02252060
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020787CC
	tst r0, r5
	bne _0223E8F2
	add r4, #0x1f
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r1, r7, #0
	add r2, r4, #0
	bl ov16_02252A14
_0223E8F2:
	mov r0, #1
	str r0, [sp, #0x14]
_0223E8F6:
	ldr r0, [sp, #0x38]
	mov r1, #0x25
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E994
	ldr r0, [sp, #0x38]
	mov r1, #0x37
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	str r0, [sp, #0x20]
	mov r4, #0
_0223E91A:
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	add r1, #0x42
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	beq _0223E98E
	add r1, r4, #0
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	add r1, #0x3a
	bl sub_0207536C
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223E950
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223E98A
_0223E950:
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x35
	mov r3, #0
	bl ov16_02252060
	mov r1, #2
	lsl r1, r1, #0x14
	tst r0, r1
	bne _0223E98A
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x4b
	mov r3, #0
	bl ov16_02252060
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020787CC
	tst r0, r5
	bne _0223E98A
	add r2, r4, #0
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r1, r7, #0
	add r2, #0x1f
	bl ov16_02252A14
_0223E98A:
	mov r0, #1
	str r0, [sp, #0x14]
_0223E98E:
	add r4, r4, #1
	cmp r4, #4
	blt _0223E91A
_0223E994:
	ldr r0, [sp, #0x38]
	mov r1, #0x26
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	bne _0223E9A8
	b _0223EAB0
_0223E9A8:
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x38]
	mov r1, #0x17
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223E9D2
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223E9DE
	mov r0, #1
	str r0, [sp, #0x20]
	b _0223E9DE
_0223E9D2:
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
_0223E9DE:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0223EAB0
	ldr r0, [sp, #0x18]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	cmp r4, r0
	beq _0223EAB0
	ldr r0, [sp, #0x38]
	mov r1, #0x36
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	str r0, [sp, #0x20]
	cmp r0, #0xfd
	beq _0223EA3E
	cmp r0, #0xfe
	beq _0223EA28
	cmp r0, #0xff
	bne _0223EA5E
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	b _0223EA5E
_0223EA28:
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	lsr r0, r0, #1
	str r0, [sp, #0x20]
	bne _0223EA5E
	mov r0, #1
	str r0, [sp, #0x20]
	b _0223EA5E
_0223EA3E:
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	mov r1, #0x19
	mul r1, r0
	add r0, r1, #0
	mov r1, #0x64
	bl _u32_div_f
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _0223EA5E
	mov r0, #1
	str r0, [sp, #0x20]
_0223EA5E:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	mov r1, #0xa3
	bl sub_0207536C
	ldr r0, [sp, #0x38]
	mov r1, #0x17
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	bne _0223EAAC
	ldr r0, [sp, #4]
	add r1, r7, #0
	bl ov16_0223E208
	cmp r0, #0
	beq _0223EA94
	ldr r0, [sp, #0x1c]
	add r1, r7, #0
	mov r2, #0x5f
	add r3, sp, #0x20
	bl ov16_022523E8
	b _0223EAAC
_0223EA94:
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223EAA0
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223EAAC
_0223EAA0:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	add r1, r7, #0
	mov r2, #0x2f
	bl ov16_02252A14
_0223EAAC:
	mov r0, #1
	str r0, [sp, #0x14]
_0223EAB0:
	ldr r0, [sp, #0x38]
	mov r1, #0x2d
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223EAE6
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x64
	bhs _0223EAE6
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0223EAE6
	ldr r0, [sp, #0x38]
	mov r1, #0x38
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	str r0, [sp, #8]
_0223EAE6:
	ldr r0, [sp, #0x38]
	mov r1, #0x2e
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223EB2A
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x64
	blo _0223EB2A
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xc8
	bhs _0223EB2A
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0223EB2A
	ldr r0, [sp, #0x38]
	mov r1, #0x39
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	str r0, [sp, #8]
_0223EB2A:
	ldr r0, [sp, #0x38]
	mov r1, #0x2f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _0223EB60
	ldr r0, [sp, #0x18]
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xc8
	blo _0223EB60
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0223EB60
	ldr r0, [sp, #0x38]
	mov r1, #0x3a
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	str r0, [sp, #8]
_0223EB60:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0223EBE6
	ble _0223EBC4
	ldr r0, [sp, #0x18]
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xb
	bne _0223EB7C
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0223EB7C:
	ldr r0, [sp, #0x18]
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov16_0223E24C
	cmp r4, r0
	bne _0223EB98
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
_0223EB98:
	ldr r0, [sp, #0x18]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x38]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0x35
	bne _0223EBC4
	ldr r1, [sp, #8]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #8]
_0223EBC4:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #8]
	mov r1, #9
	bl sub_0207536C
	ldr r0, [sp, #0x10]
	cmp r0, r6
	beq _0223EBDA
	ldr r0, [sp, #0xc]
	cmp r0, r6
	bne _0223EBE6
_0223EBDA:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #8]
	add r1, r7, #0
	mov r2, #0x2c
	bl ov16_02252A14
_0223EBE6:
	ldr r0, [sp, #0x14]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_0223E30C

	thumb_func_start ov16_0223EBEC
ov16_0223EBEC: ; 0x0223EBEC
	ldr r1, _0223EBF4 ; =0x0000240C
	ldr r0, [r0, r1]
	bx lr
	nop
_0223EBF4: .word 0x0000240C
	thumb_func_end ov16_0223EBEC

	thumb_func_start ov16_0223EBF8
ov16_0223EBF8: ; 0x0223EBF8
	ldr r1, _0223EC00 ; =0x00002410
	ldr r0, [r0, r1]
	bx lr
	nop
_0223EC00: .word 0x00002410
	thumb_func_end ov16_0223EBF8

	thumb_func_start ov16_0223EC04
ov16_0223EC04: ; 0x0223EC04
	ldr r2, _0223EC54 ; =0x00002404
	ldr r1, [r0, r2]
	cmp r1, #5
	bhi _0223EC4E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223EC18: ; jump table
	.short _0223EC24 - _0223EC18 - 2 ; case 0
	.short _0223EC24 - _0223EC18 - 2 ; case 1
	.short _0223EC24 - _0223EC18 - 2 ; case 2
	.short _0223EC24 - _0223EC18 - 2 ; case 3
	.short _0223EC24 - _0223EC18 - 2 ; case 4
	.short _0223EC24 - _0223EC18 - 2 ; case 5
_0223EC24:
	add r2, #0xc
	ldr r1, [r0, r2]
	cmp r1, #4
	bhi _0223EC50
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223EC38: ; jump table
	.short _0223EC42 - _0223EC38 - 2 ; case 0
	.short _0223EC42 - _0223EC38 - 2 ; case 1
	.short _0223EC46 - _0223EC38 - 2 ; case 2
	.short _0223EC4A - _0223EC38 - 2 ; case 3
	.short _0223EC4A - _0223EC38 - 2 ; case 4
_0223EC42:
	mov r0, #0
	bx lr
_0223EC46:
	mov r0, #1
	bx lr
_0223EC4A:
	mov r0, #2
	bx lr
_0223EC4E:
	mov r0, #0
_0223EC50:
	bx lr
	nop
_0223EC54: .word 0x00002404
	thumb_func_end ov16_0223EC04

	thumb_func_start ov16_0223EC58
ov16_0223EC58: ; 0x0223EC58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov16_0223E1F8
	cmp r0, #4
	bne _0223ECC0
	ldr r1, [r5, #0x2c]
	mov r0, #8
	tst r0, r1
	bne _0223ECC0
	mov r0, #4
	tst r0, r1
	beq _0223EC8A
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223E258
	bl sub_020787CC
	tst r0, r4
	bne _0223ECC0
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223EC8A:
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #0xc
	mov r3, #0
	bl ov16_0225B45C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #8
	mov r3, #0
	bl ov16_0225B45C
	cmp r0, #0xe
	bne _0223ECAE
	cmp r6, #0x10
	bhi _0223ECB8
_0223ECAE:
	mov r0, #0
	bl sub_020787CC
	tst r0, r4
	beq _0223ECBC
_0223ECB8:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223ECBC:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223ECC0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223EC58

	thumb_func_start ov16_0223ECC4
ov16_0223ECC4: ; 0x0223ECC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	add r4, r1, #0
	add r7, r2, #0
	cmp r0, #1
	beq _0223ECE6
	cmp r0, #4
	beq _0223ECE6
	cmp r0, #5
	beq _0223ECE6
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0223ECE6:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223ED5A
_0223ECF0:
	mov r0, #0
	str r0, [r4, #0]
	cmp r0, #6
	bge _0223ED28
	mov r6, #0x5e
	lsl r6, r6, #2
_0223ECFC:
	bl sub_020787CC
	ldr r1, [r5, r6]
	tst r0, r1
	beq _0223ED1E
	ldr r0, [r4, #0]
	bl sub_020787CC
	mov r3, #0x5e
	lsl r3, r3, #2
	mov r2, #0
	mvn r2, r2
	ldr r1, [r5, r3]
	eor r0, r2
	and r0, r1
	str r0, [r5, r3]
	b _0223ED28
_0223ED1E:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #6
	blt _0223ECFC
_0223ED28:
	ldr r1, [r4, #0]
	cmp r1, #6
	bge _0223ED50
	ldr r0, [r5, #4]
	bl sub_0207A0FC
	mov r3, #0x59
	str r7, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	add r1, r0, #0
	lsl r3, r3, #0x10
	ldr r0, [r5, #4]
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_02076B94
	str r0, [sp, #4]
	cmp r0, #0
	bne _0223ED5C
_0223ED50:
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223ECF0
_0223ED5A:
	ldr r0, [sp, #4]
_0223ED5C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0223ECC4

	thumb_func_start ov16_0223ED60
ov16_0223ED60: ; 0x0223ED60
	ldr r1, _0223ED68 ; =0x000023FC
	ldrb r0, [r0, r1]
	bx lr
	nop
_0223ED68: .word 0x000023FC
	thumb_func_end ov16_0223ED60

	thumb_func_start ov16_0223ED6C
ov16_0223ED6C: ; 0x0223ED6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0223ED7A
	bl sub_02022974
_0223ED7A:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov16_0225B45C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	thumb_func_end ov16_0223ED6C

	thumb_func_start ov16_0223ED8C
ov16_0223ED8C: ; 0x0223ED8C
	ldr r1, _0223ED94 ; =0x00002414
	ldr r0, [r0, r1]
	bx lr
	nop
_0223ED94: .word 0x00002414
	thumb_func_end ov16_0223ED8C

	thumb_func_start ov16_0223ED98
ov16_0223ED98: ; 0x0223ED98
	ldr r2, _0223EDA0 ; =0x00002414
	str r1, [r0, r2]
	bx lr
	nop
_0223EDA0: .word 0x00002414
	thumb_func_end ov16_0223ED98

	thumb_func_start ov16_0223EDA4
ov16_0223EDA4: ; 0x0223EDA4
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223EDA4

	thumb_func_start ov16_0223EDAC
ov16_0223EDAC: ; 0x0223EDAC
	push {r3, lr}
	ldr r2, [r0, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0223EDC4
	ldr r1, _0223EDDC ; =0x0000240C
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223EDC4
	mov r0, #1
	pop {r3, pc}
_0223EDC4:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02027AF8
	cmp r0, #0
	bne _0223EDD6
	mov r0, #1
	pop {r3, pc}
_0223EDD6:
	mov r0, #0
	pop {r3, pc}
	nop
_0223EDDC: .word 0x0000240C
	thumb_func_end ov16_0223EDAC

	thumb_func_start ov16_0223EDE0
ov16_0223EDE0: ; 0x0223EDE0
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r3, _0223EDEC ; =sub_02027B50
	ldr r0, [r0, r1]
	bx r3
	nop
_0223EDEC: .word sub_02027B50
	thumb_func_end ov16_0223EDE0

	thumb_func_start ov16_0223EDF0
ov16_0223EDF0: ; 0x0223EDF0
	push {r3, lr}
	ldr r2, [r0, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0223EE08
	ldr r1, _0223EE14 ; =0x0000240C
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223EE08
	mov r0, #1
	pop {r3, pc}
_0223EE08:
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02027AC0
	pop {r3, pc}
	; .align 2, 0
_0223EE14: .word 0x0000240C
	thumb_func_end ov16_0223EDF0

	thumb_func_start ov16_0223EE18
ov16_0223EE18: ; 0x0223EE18
	mov r1, #0x6d
	lsl r1, r1, #2
	ldr r3, _0223EE24 ; =sub_02027B14
	ldr r0, [r0, r1]
	bx r3
	nop
_0223EE24: .word sub_02027B14
	thumb_func_end ov16_0223EE18

	thumb_func_start ov16_0223EE28
ov16_0223EE28: ; 0x0223EE28
	mov r1, #0x72
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223EE28

	thumb_func_start ov16_0223EE30
ov16_0223EE30: ; 0x0223EE30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223EE4E
	mov r3, #0x10
	tst r2, r3
	beq _0223EE56
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223EE56
_0223EE4E:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x78]
	pop {r3, r4, r5, pc}
_0223EE56:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223EE68
	lsl r0, r4, #0x1f
	lsr r0, r0, #0x1d
	add r0, r5, r0
	ldr r0, [r0, #0x78]
	pop {r3, r4, r5, pc}
_0223EE68:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x78]
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0223EE30

	thumb_func_start ov16_0223EE70
ov16_0223EE70: ; 0x0223EE70
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r1, #0xa9
	ldr r2, [r5, #0x2c]
	lsl r1, r1, #2
	tst r1, r2
	bne _0223EF26
	mov r4, #0
	add r1, r4, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _0223EF26
	add r7, r4, #0
_0223EE8C:
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov16_0223DFAC
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	mov r0, #0x67
	lsl r0, r0, #2
	cmp r1, r0
	bne _0223EF18
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, _0223EF28 ; =0x00002418
	ldrb r1, [r5, r1]
	tst r0, r1
	beq _0223EF18
	add r0, r5, #0
	bl ov16_0223E22C
	cmp r0, #0x17
	bhi _0223EF00
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223EED0: ; jump table
	.short _0223EF04 - _0223EED0 - 2 ; case 0
	.short _0223EF04 - _0223EED0 - 2 ; case 1
	.short _0223EF00 - _0223EED0 - 2 ; case 2
	.short _0223EF00 - _0223EED0 - 2 ; case 3
	.short _0223EF04 - _0223EED0 - 2 ; case 4
	.short _0223EF04 - _0223EED0 - 2 ; case 5
	.short _0223EF00 - _0223EED0 - 2 ; case 6
	.short _0223EF00 - _0223EED0 - 2 ; case 7
	.short _0223EF00 - _0223EED0 - 2 ; case 8
	.short _0223EF0A - _0223EED0 - 2 ; case 9
	.short _0223EF00 - _0223EED0 - 2 ; case 10
	.short _0223EF0A - _0223EED0 - 2 ; case 11
	.short _0223EF0A - _0223EED0 - 2 ; case 12
	.short _0223EF0A - _0223EED0 - 2 ; case 13
	.short _0223EF0A - _0223EED0 - 2 ; case 14
	.short _0223EF0A - _0223EED0 - 2 ; case 15
	.short _0223EF0A - _0223EED0 - 2 ; case 16
	.short _0223EF04 - _0223EED0 - 2 ; case 17
	.short _0223EF0A - _0223EED0 - 2 ; case 18
	.short _0223EF0A - _0223EED0 - 2 ; case 19
	.short _0223EF0A - _0223EED0 - 2 ; case 20
	.short _0223EF0A - _0223EED0 - 2 ; case 21
	.short _0223EF0A - _0223EED0 - 2 ; case 22
	.short _0223EF04 - _0223EED0 - 2 ; case 23
_0223EF00:
	str r7, [sp]
	b _0223EF0E
_0223EF04:
	mov r0, #1
	str r0, [sp]
	b _0223EF0E
_0223EF0A:
	mov r0, #2
	str r0, [sp]
_0223EF0E:
	add r0, r6, #0
	mov r1, #0x70
	add r2, sp, #0
	bl sub_02074B30
_0223EF18:
	add r0, r5, #0
	mov r1, #0
	add r4, r4, #1
	bl ov16_0223DF60
	cmp r4, r0
	blt _0223EE8C
_0223EF26:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223EF28: .word 0x00002418
	thumb_func_end ov16_0223EE70

	thumb_func_start ov16_0223EF2C
ov16_0223EF2C: ; 0x0223EF2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl sub_020787CC
	ldr r1, _0223EF44 ; =0x00002418
	add r2, r5, r1
	ldrb r1, [r2, r4]
	orr r0, r1
	strb r0, [r2, r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223EF44: .word 0x00002418
	thumb_func_end ov16_0223EF2C

	thumb_func_start ov16_0223EF48
ov16_0223EF48: ; 0x0223EF48
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223EF64
	add r0, r1, #0
	bl sub_02076B10
	add r4, #0x98
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl sub_02056A48
_0223EF64:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0223EF48

	thumb_func_start ov16_0223EF68
ov16_0223EF68: ; 0x0223EF68
	push {r3, r4, lr}
	sub sp, #4
	add r3, r0, #0
	mov r0, #5
	str r0, [sp]
	ldr r4, _0223EF88 ; =0x00002420
	add r0, r3, #0
	ldrb r2, [r3, r4]
	add r4, r4, #2
	add r0, #0x9c
	ldrh r3, [r3, r4]
	ldr r0, [r0, #0]
	bl sub_0206D160
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223EF88: .word 0x00002420
	thumb_func_end ov16_0223EF68

	thumb_func_start ov16_0223EF8C
ov16_0223EF8C: ; 0x0223EF8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	mov r1, #1
	add r4, r0, #0
	mov r0, #5
	lsl r1, r1, #0x10
	bl sub_02018144
	mov r1, #0x22
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #5
	sub r1, #0x20
	bl sub_02018144
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, r1, #4
	mov r2, #1
	ldr r0, _0223F1E4 ; =0x06010000
	ldr r1, [r4, r1]
	lsl r2, r2, #0x10
	bl MIi_CpuCopy32
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r5, [r4, r0]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02003164
	mov r2, #2
	add r1, r5, #0
	lsl r2, r2, #8
	bl MIi_CpuCopy32
	mov r0, #0x19
	lsl r0, r0, #0x16
	str r0, [sp, #0x24]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_02021F98
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	str r0, [sp, #0x24]
	mov r0, #0x14
	str r0, [sp, #0x28]
	lsl r0, r0, #0xb
	str r0, [sp, #0xc]
_0223EFF8:
	mov r0, #0x10
	mov ip, r0
	lsl r0, r0, #6
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	mov r7, #1
	sub r0, #0x14
	lsl r1, r0, #8
	ldr r0, [sp, #0x24]
	add r0, r0, r1
	str r0, [sp, #0x10]
_0223F00E:
	mov r0, ip
	sub r0, #0x10
	ldr r1, [sp, #0x10]
	lsl r3, r0, #5
	add r3, r1, r3
	ldr r5, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r2, #0
	add r6, r5, r1
_0223F020:
	cmp r0, #8
	bge _0223F048
	add r1, r2, #0
	tst r1, r7
	beq _0223F03A
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	ldrb r5, [r3, r1]
	mov r1, #0xf0
	and r1, r5
	asr r1, r1, #4
	b _0223F076
_0223F03A:
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	ldrb r5, [r3, r1]
	mov r1, #0xf
	and r1, r5
	b _0223F076
_0223F048:
	mov r1, #1
	tst r1, r2
	beq _0223F064
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r5, r3, r1
	mov r1, #7
	lsl r1, r1, #8
	ldrb r5, [r5, r1]
	mov r1, #0xf0
	and r1, r5
	asr r1, r1, #4
	b _0223F076
_0223F064:
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r1, r1, #1
	add r5, r3, r1
	mov r1, #7
	lsl r1, r1, #8
	ldrb r5, [r5, r1]
	mov r1, #0xf
	and r1, r5
_0223F076:
	cmp r1, #0
	beq _0223F086
	mov r5, #0x22
	lsl r5, r5, #4
	ldr r5, [r4, r5]
	add r1, #0x70
	add r5, r6, r5
	strb r1, [r2, r5]
_0223F086:
	add r2, r2, #1
	cmp r2, #0x40
	blt _0223F020
	ldr r0, [sp, #0x14]
	add r0, #0x40
	str r0, [sp, #0x14]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0x20
	blt _0223F00E
	mov r1, #2
	ldr r0, [sp, #0xc]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #0x1c
	blt _0223EFF8
	mov r0, #0x19
	lsl r0, r0, #0x16
	str r0, [sp, #8]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_02021F98
	ldr r1, [r0, #4]
	ldr r0, [sp, #8]
	mov r7, #0x26
	add r0, r0, r1
	str r0, [sp, #8]
	mov r3, #0
	mov r0, #0xf
	mov r1, #0xf0
	lsl r7, r7, #0xa
	mov r2, #1
_0223F0D6:
	add r5, r3, #0
	tst r5, r2
	beq _0223F0EC
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r6, r5, #1
	ldr r5, [sp, #8]
	ldrb r5, [r5, r6]
	and r5, r1
	asr r5, r5, #4
	b _0223F0F8
_0223F0EC:
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r6, r5, #1
	ldr r5, [sp, #8]
	ldrb r5, [r5, r6]
	and r5, r0
_0223F0F8:
	cmp r5, #0
	beq _0223F108
	mov r6, #0x22
	lsl r6, r6, #4
	ldr r6, [r4, r6]
	add r5, #0x70
	add r6, r6, r3
	strb r5, [r6, r7]
_0223F108:
	mov r5, #2
	add r3, r3, #1
	lsl r5, r5, #0xa
	cmp r3, r5
	blt _0223F0D6
	mov r0, #0x1c
	str r0, [sp, #4]
	lsl r0, r0, #0xb
	str r0, [sp, #0x18]
_0223F11A:
	ldr r0, [sp, #4]
	mov r2, #0
	sub r0, #0x1c
	lsl r1, r0, #8
	ldr r0, [sp, #8]
	str r2, [sp, #0x20]
	add r0, r0, r1
	str r0, [sp, #0x1c]
	mov r7, #1
_0223F12C:
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	asr r0, r0, #3
	lsl r1, r0, #0xa
	ldr r0, [sp, #0x1c]
	lsr r5, r2, #0x1f
	add r6, r0, r1
	lsl r1, r2, #0x1d
	sub r1, r1, r5
	mov r0, #0x1d
	ror r1, r0
	add r0, r5, r1
	lsl r0, r0, #5
	ldr r5, [sp, #0x18]
	ldr r1, [sp, #0x20]
	mov r3, #0
	add r0, r6, r0
	add r1, r5, r1
_0223F152:
	add r5, r3, #0
	tst r5, r7
	beq _0223F16E
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	add r6, r0, r5
	mov r5, #1
	lsl r5, r5, #0xa
	ldrb r6, [r6, r5]
	mov r5, #0xf0
	and r5, r6
	asr r5, r5, #4
	b _0223F180
_0223F16E:
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	add r6, r0, r5
	mov r5, #1
	lsl r5, r5, #0xa
	ldrb r6, [r6, r5]
	mov r5, #0xf
	and r5, r6
_0223F180:
	cmp r5, #0
	beq _0223F190
	mov r6, #0x22
	lsl r6, r6, #4
	ldr r6, [r4, r6]
	add r5, #0x70
	add r6, r1, r6
	strb r5, [r3, r6]
_0223F190:
	add r3, r3, #1
	cmp r3, #0x40
	blt _0223F152
	ldr r0, [sp, #0x20]
	add r2, r2, #1
	add r0, #0x40
	str r0, [sp, #0x20]
	cmp r2, #0x18
	blt _0223F12C
	mov r3, #2
	ldr r0, [sp, #0x18]
	lsl r3, r3, #0xa
	add r0, r0, r3
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x20
	blt _0223F11A
	mov r0, #0
	mov r2, #0x22
	str r0, [sp]
	lsl r2, r2, #4
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	mov r1, #3
	lsl r3, r3, #5
	bl sub_0201958C
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov16_02268700
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov16_02268700
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0223F1E4: .word 0x06010000
	thumb_func_end ov16_0223EF8C

	thumb_func_start ov16_0223F1E8
ov16_0223F1E8: ; 0x0223F1E8
	mov r1, #0x22
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223F1E8

	thumb_func_start ov16_0223F1F0
ov16_0223F1F0: ; 0x0223F1F0
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223F1F0

	thumb_func_start ov16_0223F1F8
ov16_0223F1F8: ; 0x0223F1F8
	ldr r1, _0223F200 ; =0x00002428
	ldr r0, [r0, r1]
	bx lr
	nop
_0223F200: .word 0x00002428
	thumb_func_end ov16_0223F1F8

	thumb_func_start ov16_0223F204
ov16_0223F204: ; 0x0223F204
	ldr r1, _0223F20C ; =0x00002228
	add r0, r0, r1
	bx lr
	nop
_0223F20C: .word 0x00002228
	thumb_func_end ov16_0223F204

	thumb_func_start ov16_0223F210
ov16_0223F210: ; 0x0223F210
	ldr r1, _0223F218 ; =0x00002308
	add r0, r0, r1
	bx lr
	nop
_0223F218: .word 0x00002308
	thumb_func_end ov16_0223F210

	thumb_func_start ov16_0223F21C
ov16_0223F21C: ; 0x0223F21C
	ldr r1, _0223F224 ; =0x0000242C
	ldr r0, [r0, r1]
	bx lr
	nop
_0223F224: .word 0x0000242C
	thumb_func_end ov16_0223F21C

	thumb_func_start ov16_0223F228
ov16_0223F228: ; 0x0223F228
	ldr r1, _0223F230 ; =0x00002421
	ldrb r0, [r0, r1]
	bx lr
	nop
_0223F230: .word 0x00002421
	thumb_func_end ov16_0223F228

	thumb_func_start ov16_0223F234
ov16_0223F234: ; 0x0223F234
	ldr r2, _0223F23C ; =0x00002421
	strb r1, [r0, r2]
	bx lr
	nop
_0223F23C: .word 0x00002421
	thumb_func_end ov16_0223F234

	thumb_func_start ov16_0223F240
ov16_0223F240: ; 0x0223F240
	ldr r1, _0223F248 ; =0x00002430
	ldr r0, [r0, r1]
	bx lr
	nop
_0223F248: .word 0x00002430
	thumb_func_end ov16_0223F240

	thumb_func_start ov16_0223F24C
ov16_0223F24C: ; 0x0223F24C
	push {r3, lr}
	ldr r2, _0223F264 ; =0x0000240C
	ldr r3, [r0, r2]
	mov r2, #0x10
	tst r2, r3
	bne _0223F262
	mov r2, #0x87
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	bl sub_0202CF28
_0223F262:
	pop {r3, pc}
	; .align 2, 0
_0223F264: .word 0x0000240C
	thumb_func_end ov16_0223F24C

	thumb_func_start ov16_0223F268
ov16_0223F268: ; 0x0223F268
	push {r3, lr}
	ldr r1, _0223F284 ; =0x0000240C
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223F280
	mov r1, #0x87
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0x16
	bl sub_0202CFEC
_0223F280:
	pop {r3, pc}
	nop
_0223F284: .word 0x0000240C
	thumb_func_end ov16_0223F268

	thumb_func_start ov16_0223F288
ov16_0223F288: ; 0x0223F288
	mov r2, #0x91
	lsl r2, r2, #6
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov16_0223F288

	thumb_func_start ov16_0223F290
ov16_0223F290: ; 0x0223F290
	ldr r2, _0223F298 ; =0x00002444
	strb r1, [r0, r2]
	bx lr
	nop
_0223F298: .word 0x00002444
	thumb_func_end ov16_0223F290

	thumb_func_start ov16_0223F29C
ov16_0223F29C: ; 0x0223F29C
	mov r1, #0x6f
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0223F29C

	thumb_func_start ov16_0223F2A4
ov16_0223F2A4: ; 0x0223F2A4
	mov r2, #0x6f
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov16_0223F2A4

	thumb_func_start ov16_0223F2AC
ov16_0223F2AC: ; 0x0223F2AC
	mov r2, #0x1d
	lsl r2, r2, #4
	add r2, r0, r2
	lsl r0, r1, #4
	add r0, r2, r0
	bx lr
	thumb_func_end ov16_0223F2AC

	thumb_func_start ov16_0223F2B8
ov16_0223F2B8: ; 0x0223F2B8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #4
	blt _0223F2C6
	bl sub_02022974
_0223F2C6:
	lsl r0, r5, #4
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0223F2B8

	thumb_func_start ov16_0223F2CC
ov16_0223F2CC: ; 0x0223F2CC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	blt _0223F2DC
	bl sub_02022974
_0223F2DC:
	lsl r0, r4, #4
	add r0, r5, r0
	str r6, [r0, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223F2CC

	thumb_func_start ov16_0223F2E4
ov16_0223F2E4: ; 0x0223F2E4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	blt _0223F2F4
	bl sub_02022974
_0223F2F4:
	lsl r0, r4, #4
	add r0, r5, r0
	str r6, [r0, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223F2E4

	thumb_func_start ov16_0223F2FC
ov16_0223F2FC: ; 0x0223F2FC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #4
	blt _0223F30C
	bl sub_02022974
_0223F30C:
	lsl r0, r4, #4
	add r0, r5, r0
	str r6, [r0, #0xc]
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223F2FC

	thumb_func_start ov16_0223F314
ov16_0223F314: ; 0x0223F314
	ldr r2, _0223F31C ; =0x000023FD
	strb r1, [r0, r2]
	bx lr
	nop
_0223F31C: .word 0x000023FD
	thumb_func_end ov16_0223F314

	thumb_func_start ov16_0223F320
ov16_0223F320: ; 0x0223F320
	ldr r2, _0223F328 ; =0x000023F4
	str r1, [r0, r2]
	bx lr
	nop
_0223F328: .word 0x000023F4
	thumb_func_end ov16_0223F320

	thumb_func_start ov16_0223F32C
ov16_0223F32C: ; 0x0223F32C
	ldr r2, _0223F334 ; =0x000023F8
	str r1, [r0, r2]
	bx lr
	nop
_0223F334: .word 0x000023F8
	thumb_func_end ov16_0223F32C

	thumb_func_start ov16_0223F338
ov16_0223F338: ; 0x0223F338
	ldr r2, _0223F340 ; =0x000023F4
	ldr r0, [r0, r2]
	strb r1, [r0]
	bx lr
	; .align 2, 0
_0223F340: .word 0x000023F4
	thumb_func_end ov16_0223F338

	thumb_func_start ov16_0223F344
ov16_0223F344: ; 0x0223F344
	ldr r2, _0223F34C ; =0x000023F8
	ldr r0, [r0, r2]
	strb r1, [r0]
	bx lr
	; .align 2, 0
_0223F34C: .word 0x000023F8
	thumb_func_end ov16_0223F344

	thumb_func_start ov16_0223F350
ov16_0223F350: ; 0x0223F350
	ldr r2, _0223F358 ; =0x000023FE
	strb r1, [r0, r2]
	bx lr
	nop
_0223F358: .word 0x000023FE
	thumb_func_end ov16_0223F350

	thumb_func_start ov16_0223F35C
ov16_0223F35C: ; 0x0223F35C
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _0223F368 ; =ov16_02263B08
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0223F368: .word ov16_02263B08
	thumb_func_end ov16_0223F35C

	thumb_func_start ov16_0223F36C
ov16_0223F36C: ; 0x0223F36C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r7, #0
	cmp r0, #0
	ble _0223F3B8
	add r5, r6, #0
_0223F37A:
	ldr r0, [r5, #0x34]
	bl ov16_02263B08
	add r4, r0, #0
	str r6, [r4, #0xc]
	ldr r0, [r5, #0x34]
	bl ov16_02263AE4
	str r0, [sp]
	add r0, r6, #0
	bl ov16_0223DF0C
	add r1, r0, #0
	ldr r0, [sp]
	bl ov16_0226825C
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	bl ov16_022672C4
	add r0, r4, #0
	mov r1, #0
	bl ov16_02267620
	ldr r0, [r6, #0x44]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r0
	blt _0223F37A
_0223F3B8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223F36C

	thumb_func_start ov16_0223F3BC
ov16_0223F3BC: ; 0x0223F3BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0223F3E8
	add r5, r6, #0
	mov r7, #1
_0223F3CC:
	ldr r0, [r5, #0x34]
	bl ov16_02263B08
	ldr r1, [r0, #0x28]
	cmp r1, #0
	beq _0223F3DE
	add r1, r7, #0
	bl ov16_02267620
_0223F3DE:
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223F3CC
_0223F3E8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223F3BC

	thumb_func_start ov16_0223F3EC
ov16_0223F3EC: ; 0x0223F3EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0223F412
	add r5, r6, #0
	add r7, r4, #0
_0223F3FC:
	ldr r0, [r5, #0x34]
	bl ov16_02263B08
	add r1, r7, #0
	bl ov16_02267620
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223F3FC
_0223F412:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0223F3EC

	thumb_func_start ov16_0223F414
ov16_0223F414: ; 0x0223F414
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0223F436
	add r5, r6, #0
_0223F422:
	ldr r0, [r5, #0x34]
	bl ov16_02263B08
	bl ov16_02267360
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223F422
_0223F436:
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223F414

	thumb_func_start ov16_0223F438
ov16_0223F438: ; 0x0223F438
	ldr r1, _0223F440 ; =0x00002420
	ldrb r0, [r0, r1]
	bx lr
	nop
_0223F440: .word 0x00002420
	thumb_func_end ov16_0223F438

	thumb_func_start ov16_0223F444
ov16_0223F444: ; 0x0223F444
	ldr r2, _0223F44C ; =0x00002420
	strb r1, [r0, r2]
	bx lr
	nop
_0223F44C: .word 0x00002420
	thumb_func_end ov16_0223F444

	thumb_func_start ov16_0223F450
ov16_0223F450: ; 0x0223F450
	ldr r1, _0223F45C ; =0x000023FF
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1e
	bx lr
	nop
_0223F45C: .word 0x000023FF
	thumb_func_end ov16_0223F450

	thumb_func_start ov16_0223F460
ov16_0223F460: ; 0x0223F460
	push {r3, r4}
	ldr r3, _0223F478 ; =0x000023FF
	lsl r1, r1, #0x1e
	ldrb r4, [r0, r3]
	mov r2, #0x18
	lsr r1, r1, #0x1b
	bic r4, r2
	orr r1, r4
	strb r1, [r0, r3]
	pop {r3, r4}
	bx lr
	nop
_0223F478: .word 0x000023FF
	thumb_func_end ov16_0223F460

	thumb_func_start ov16_0223F47C
ov16_0223F47C: ; 0x0223F47C
	ldr r1, _0223F488 ; =0x000023FF
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1d
	bx lr
	nop
_0223F488: .word 0x000023FF
	thumb_func_end ov16_0223F47C

	thumb_func_start ov16_0223F48C
ov16_0223F48C: ; 0x0223F48C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #0xf
	blo _0223F49A
	bl sub_02022974
_0223F49A:
	ldr r1, _0223F4AC ; =0x000023FF
	mov r0, #0xe0
	ldrb r2, [r5, r1]
	bic r2, r0
	lsl r0, r4, #0x1d
	lsr r0, r0, #0x18
	orr r0, r2
	strb r0, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223F4AC: .word 0x000023FF
	thumb_func_end ov16_0223F48C

	thumb_func_start ov16_0223F4B0
ov16_0223F4B0: ; 0x0223F4B0
	ldr r2, _0223F4B8 ; =0x0000243C
	str r1, [r0, r2]
	bx lr
	nop
_0223F4B8: .word 0x0000243C
	thumb_func_end ov16_0223F4B0

	thumb_func_start ov16_0223F4BC
ov16_0223F4BC: ; 0x0223F4BC
	push {r3, r4}
	ldr r2, _0223F4DC ; =0x00002448
	ldr r1, _0223F4E0 ; =0x41C64E6D
	ldr r3, [r0, r2]
	add r4, r3, #0
	mul r4, r1
	ldr r1, _0223F4E4 ; =0x00006073
	add r1, r4, r1
	str r1, [r0, r2]
	ldr r0, [r0, r2]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	nop
_0223F4DC: .word 0x00002448
_0223F4E0: .word 0x41C64E6D
_0223F4E4: .word 0x00006073
	thumb_func_end ov16_0223F4BC

	thumb_func_start ov16_0223F4E8
ov16_0223F4E8: ; 0x0223F4E8
	ldr r1, _0223F4F0 ; =0x0000244C
	ldr r0, [r0, r1]
	bx lr
	nop
_0223F4F0: .word 0x0000244C
	thumb_func_end ov16_0223F4E8

	thumb_func_start ov16_0223F4F4
ov16_0223F4F4: ; 0x0223F4F4
	ldr r2, _0223F4FC ; =0x0000244C
	str r1, [r0, r2]
	bx lr
	nop
_0223F4FC: .word 0x0000244C
	thumb_func_end ov16_0223F4F4

	thumb_func_start ov16_0223F500
ov16_0223F500: ; 0x0223F500
	push {r4, r5, r6, lr}
	add r6, r1, #0
	ldr r1, _0223F52C ; =0x0000240C
	mov r3, #0x10
	ldr r4, [r0, r1]
	tst r4, r3
	bne _0223F528
	add r1, #0x54
	add r4, r0, r1
	lsl r5, r6, #1
	ldrh r1, [r4, r5]
	lsl r0, r3, #6
	cmp r1, r0
	bhs _0223F528
	add r0, r6, #0
	bl sub_0202F868
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
_0223F528:
	pop {r4, r5, r6, pc}
	nop
_0223F52C: .word 0x0000240C
	thumb_func_end ov16_0223F500

	thumb_func_start ov16_0223F530
ov16_0223F530: ; 0x0223F530
	push {r3, r4, r5, r6, r7, lr}
	str r2, [sp]
	add r3, r1, #0
	ldr r1, [sp]
	mov r2, #0xff
	strb r2, [r1]
	ldr r1, _0223F584 ; =0x0000240C
	mov r6, #0x10
	ldr r2, [r0, r1]
	and r2, r6
	beq _0223F568
	add r1, #0x54
	lsl r5, r3, #1
	add r4, r0, r1
	ldrh r1, [r4, r5]
	lsl r6, r6, #6
	cmp r1, r6
	bhs _0223F568
	add r0, r3, #0
	bl sub_0202F884
	ldr r1, [sp]
	mov r7, #0
	strb r0, [r1]
	ldrh r0, [r4, r5]
	add r0, r0, #1
	strh r0, [r4, r5]
	b _0223F57E
_0223F568:
	cmp r2, #0
	beq _0223F57E
	lsl r1, r3, #1
	add r1, r0, r1
	ldr r0, _0223F588 ; =0x00002460
	ldrh r1, [r1, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	cmp r1, r0
	blo _0223F57E
	mov r7, #1
_0223F57E:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F584: .word 0x0000240C
_0223F588: .word 0x00002460
	thumb_func_end ov16_0223F530

	thumb_func_start ov16_0223F58C
ov16_0223F58C: ; 0x0223F58C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	mov r6, #0
	ldr r0, [r0, #0x44]
	add r7, r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _0223F620
_0223F59E:
	ldr r0, [sp]
	lsl r1, r7, #1
	add r5, r0, r1
	ldr r0, _0223F630 ; =0x00002460
	add r1, r0, #0
	sub r1, #0x10
	ldrh r2, [r5, r0]
	ldrh r1, [r5, r1]
	cmp r2, r1
	beq _0223F612
	add r1, r6, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	ldr r1, [sp, #4]
	add r3, r0, #0
	strb r7, [r1, r6]
	add r1, r2, #1
	lsl r1, r1, #0x18
	sub r3, #0x10
	lsr r6, r1, #0x18
	ldrh r1, [r5, r0]
	ldrh r3, [r5, r3]
	mov r4, #0
	sub r3, r1, r3
	ldr r1, [sp, #4]
	strb r3, [r1, r2]
	ldrh r1, [r5, r0]
	sub r0, #0x10
	ldrh r0, [r5, r0]
	sub r0, r1, r0
	cmp r0, #0
	ble _0223F60A
_0223F5DE:
	ldr r1, _0223F634 ; =0x00002450
	add r0, r7, #0
	ldrh r1, [r5, r1]
	add r1, r4, r1
	bl sub_0202F884
	add r2, r6, #1
	lsl r2, r2, #0x18
	add r1, r6, #0
	lsr r6, r2, #0x18
	ldr r2, [sp, #4]
	strb r0, [r2, r1]
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0223F630 ; =0x00002460
	ldrh r1, [r5, r0]
	sub r0, #0x10
	ldrh r0, [r5, r0]
	sub r0, r1, r0
	cmp r4, r0
	blt _0223F5DE
_0223F60A:
	ldr r0, _0223F630 ; =0x00002460
	ldrh r1, [r5, r0]
	sub r0, #0x10
	strh r1, [r5, r0]
_0223F612:
	add r0, r7, #1
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	ldr r0, [sp]
	ldr r0, [r0, #0x44]
	cmp r7, r0
	blt _0223F59E
_0223F620:
	cmp r6, #0x1c
	bls _0223F628
	bl sub_02022974
_0223F628:
	add r0, r6, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F630: .word 0x00002460
_0223F634: .word 0x00002450
	thumb_func_end ov16_0223F58C

	thumb_func_start ov16_0223F638
ov16_0223F638: ; 0x0223F638
	push {r0, r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0]
	ldr r0, [sp]
	add r6, r2, #0
	ldr r1, [r0, #0x2c]
	mov r0, #4
	tst r0, r1
	beq _0223F6C2
	ldr r1, _0223F6CC ; =0x000023FC
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _0223F6C2
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0223F6C2
_0223F664:
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #0x24
	bl ov16_0223F6D4
	add r5, r0, #0
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #0x24
	bl ov16_0223F6D4
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0223F6AA
	ldr r0, [sp]
	lsl r1, r5, #1
	add r0, r0, r1
	str r0, [sp, #4]
_0223F68A:
	add r0, r6, #0
	add r1, sp, #8
	add r2, sp, #0x24
	bl ov16_0223F6D4
	add r2, r0, #0
	ldr r3, [sp, #4]
	ldr r1, _0223F6D0 ; =0x00002458
	add r0, r5, #0
	ldrh r1, [r3, r1]
	add r1, r4, r1
	bl sub_0202F868
	add r4, r4, #1
	cmp r4, r7
	blt _0223F68A
_0223F6AA:
	ldr r0, [sp]
	lsl r1, r5, #1
	add r2, r0, r1
	ldr r0, _0223F6D0 ; =0x00002458
	ldrh r0, [r2, r0]
	add r1, r0, r7
	ldr r0, _0223F6D0 ; =0x00002458
	strh r1, [r2, r0]
	add r0, sp, #0x20
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0223F664
_0223F6C2:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
_0223F6CC: .word 0x000023FC
_0223F6D0: .word 0x00002458
	thumb_func_end ov16_0223F638

	thumb_func_start ov16_0223F6D4
ov16_0223F6D4: ; 0x0223F6D4
	ldrh r3, [r2]
	sub r3, r3, #1
	strh r3, [r2]
	ldrb r3, [r1]
	add r2, r3, #1
	strb r2, [r1]
	ldrb r0, [r0, r3]
	bx lr
	thumb_func_end ov16_0223F6D4

	thumb_func_start ov16_0223F6E4
ov16_0223F6E4: ; 0x0223F6E4
	ldr r1, _0223F6EC ; =0x00002446
	ldrh r0, [r0, r1]
	bx lr
	nop
_0223F6EC: .word 0x00002446
	thumb_func_end ov16_0223F6E4

	thumb_func_start ov16_0223F6F0
ov16_0223F6F0: ; 0x0223F6F0
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0223F6FC ; =0x00002468
	ldr r0, [r1, r0]
	bx lr
	nop
_0223F6FC: .word 0x00002468
	thumb_func_end ov16_0223F6F0

	thumb_func_start ov16_0223F700
ov16_0223F700: ; 0x0223F700
	mov r3, #0x34
	mul r3, r1
	add r1, r0, r3
	lsl r0, r2, #1
	add r0, r1, r0
	add r0, #0xb0
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov16_0223F700

	thumb_func_start ov16_0223F710
ov16_0223F710: ; 0x0223F710
	ldr r1, _0223F71C ; =0x00002478
	ldr r0, [r0, r1]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bx lr
	nop
_0223F71C: .word 0x00002478
	thumb_func_end ov16_0223F710

	thumb_func_start ov16_0223F720
ov16_0223F720: ; 0x0223F720
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r1, _0223F79C ; =0x0000240C
	add r5, r0, #0
	ldr r3, [r5, r1]
	mov r2, #0x10
	tst r2, r3
	beq _0223F796
	add r1, #0x6c
	ldr r1, [r5, r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _0223F796
	ldr r1, [r5, #0x30]
	mov r2, #0xd
	mov r3, #0
	bl ov16_0225B45C
	cmp r0, #0x2b
	beq _0223F796
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #0xe
	mov r3, #0
	bl ov16_0225B45C
	cmp r0, #0x2b
	beq _0223F796
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl ov16_0226CEB0
	mov r1, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	bl sub_0200569C
	mov r0, #0
	bl sub_0200500C
	ldr r1, _0223F7A0 ; =0x00002478
	mov r0, #1
	ldr r2, [r5, r1]
	bic r2, r0
	mov r0, #1
	orr r0, r2
	str r0, [r5, r1]
_0223F796:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223F79C: .word 0x0000240C
_0223F7A0: .word 0x00002478
	thumb_func_end ov16_0223F720

	thumb_func_start ov16_0223F7A4
ov16_0223F7A4: ; 0x0223F7A4
	push {r4, lr}
	ldr r1, _0223F7E4 ; =0x0000240C
	add r4, r0, #0
	ldr r3, [r4, r1]
	mov r2, #0x10
	tst r2, r3
	beq _0223F7DA
	add r1, #0x6c
	ldr r1, [r4, r1]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	bne _0223F7DA
	ldr r1, [r4, #0x30]
	mov r2, #0xd
	mov r3, #0
	bl ov16_0225B45C
	cmp r0, #0x2b
	beq _0223F7DA
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #0xe
	mov r3, #0
	bl ov16_0225B45C
	cmp r0, #0x2b
	bne _0223F7DE
_0223F7DA:
	mov r0, #0
	pop {r4, pc}
_0223F7DE:
	mov r0, #1
	pop {r4, pc}
	nop
_0223F7E4: .word 0x0000240C
	thumb_func_end ov16_0223F7A4

	thumb_func_start ov16_0223F7E8
ov16_0223F7E8: ; 0x0223F7E8
	push {r4, lr}
	ldr r1, _0223F808 ; =0x0000240C
	add r4, r0, #0
	ldr r3, [r4, r1]
	mov r2, #0x10
	tst r2, r3
	beq _0223F806
	add r1, #0x70
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0223F806
	bl ov16_0226E148
	ldr r1, _0223F80C ; =0x0000247C
	str r0, [r4, r1]
_0223F806:
	pop {r4, pc}
	; .align 2, 0
_0223F808: .word 0x0000240C
_0223F80C: .word 0x0000247C
	thumb_func_end ov16_0223F7E8

	thumb_func_start ov16_0223F810
ov16_0223F810: ; 0x0223F810
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0x2c]
	mov r3, #8
	add r4, r1, #0
	tst r3, r2
	bne _0223F82E
	mov r3, #0x10
	tst r2, r3
	beq _0223F838
	bl ov16_0223E1F8
	mov r1, #1
	tst r0, r1
	beq _0223F838
_0223F82E:
	mov r0, #0x92
	add r1, r5, r4
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0223F838:
	ldr r1, [r5, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0223F84E
	mov r0, #1
	and r0, r4
	add r1, r5, r0
	mov r0, #0x92
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
_0223F84E:
	mov r0, #0x92
	add r1, r5, r4
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0223F810

	thumb_func_start ov16_0223F858
ov16_0223F858: ; 0x0223F858
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0223F87A
	add r5, r6, #0
_0223F868:
	ldr r0, [r5, #0x34]
	bl ov16_02263AE4
	strb r4, [r7, r0]
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223F868
_0223F87A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0223F858

	thumb_func_start ov16_0223F87C
ov16_0223F87C: ; 0x0223F87C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	mov r1, #0
	mov r0, #0xff
_0223F886:
	strb r0, [r6, r1]
	add r1, r1, #1
	cmp r1, #4
	blt _0223F886
	ldr r0, [r7, #0x44]
	mov r5, #0
	cmp r0, #0
	ble _0223F8AA
	add r4, r7, #0
_0223F898:
	ldr r0, [r4, #0x34]
	bl ov16_02263AE4
	strb r0, [r6, r5]
	ldr r0, [r7, #0x44]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _0223F898
_0223F8AA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0223F87C

	thumb_func_start ov16_0223F8AC
ov16_0223F8AC: ; 0x0223F8AC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r5, r0, #0
_0223F8B6:
	add r0, r0, #1
	stmia r1!, {r5}
	cmp r0, #4
	blt _0223F8B6
	ldr r0, [r7, #0x44]
	cmp r0, #0
	ble _0223F8D8
	add r4, r7, #0
_0223F8C6:
	ldr r0, [r4, #0x34]
	bl ov16_02263AFC
	stmia r6!, {r0}
	ldr r0, [r7, #0x44]
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r0
	blt _0223F8C6
_0223F8D8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223F8AC

	thumb_func_start ov16_0223F8DC
ov16_0223F8DC: ; 0x0223F8DC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x44]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0223F902
	add r5, r6, #0
_0223F8EC:
	ldr r0, [r5, #0x34]
	bl ov16_02263B08
	add r1, r7, #0
	bl ov16_022675D8
	ldr r0, [r6, #0x44]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223F8EC
_0223F902:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0223F8DC

	thumb_func_start ov16_0223F904
ov16_0223F904: ; 0x0223F904
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02025F58
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	bl sub_02077550
	ldr r1, _0223F934 ; =0x0226E564
	lsl r0, r0, #2
	ldrb r1, [r1, r4]
	add r4, r1, #0
	mul r4, r0
	add r0, r6, #0
	bl sub_02025F74
	cmp r4, r0
	bls _0223F930
	add r4, r0, #0
_0223F930:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223F934: .word 0x0226E564
	thumb_func_end ov16_0223F904

	thumb_func_start ov16_0223F938
ov16_0223F938: ; 0x0223F938
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl ov16_02263AE4
	add r4, r0, #0
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #2
	add r3, r6, #0
	bl ov16_0225B45C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223DFAC
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	mov r1, #0x84
	tst r1, r0
	bne _0223F97E
	mov r1, #1
	tst r1, r4
	bne _0223F976
	sub r0, #0x4a
	cmp r0, #1
	bhi _0223F97E
_0223F976:
	ldr r0, [r5, #0x60]
	add r1, r6, #0
	bl sub_020272A4
_0223F97E:
	mov r0, #1
	tst r0, r4
	bne _0223F99E
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	mov r1, #0x67
	lsl r1, r1, #2
	cmp r0, r1
	bne _0223F99E
	ldr r0, [r5, #0x60]
	add r1, r6, #0
	bl sub_0202736C
_0223F99E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223F938

	thumb_func_start ov16_0223F9A0
ov16_0223F9A0: ; 0x0223F9A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x34]
	bl ov16_02263AE4
	ldr r2, [r5, #0x2c]
	mov r1, #0x84
	tst r1, r2
	bne _0223F9DC
	mov r1, #1
	tst r0, r1
	beq _0223F9DC
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov16_0225B45C
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223DFAC
	add r1, r0, #0
	ldr r0, [r5, #0x60]
	bl sub_0202736C
_0223F9DC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0223F9A0

	thumb_func_start ov16_0223F9E0
ov16_0223F9E0: ; 0x0223F9E0
	ldr r3, _0223F9EC ; =sub_02026F9C
	lsl r1, r1, #0x10
	ldr r0, [r0, #0x60]
	lsr r1, r1, #0x10
	bx r3
	nop
_0223F9EC: .word sub_02026F9C
	thumb_func_end ov16_0223F9E0

	thumb_func_start ov16_0223F9F0
ov16_0223F9F0: ; 0x0223F9F0
	ldr r0, _0223F9F8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
_0223F9F8: .word 0x04000050
	thumb_func_end ov16_0223F9F0

	thumb_func_start ov16_0223F9FC
ov16_0223F9FC: ; 0x0223F9FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #0
	str r2, [sp, #0xc]
	add r7, r3, #0
	bl ov16_0223DF04
	add r6, r0, #0
	ldr r1, [r4, #0x2c]
	mov r0, #0x80
	tst r0, r1
	beq _0223FAE0
	ldr r0, _0223FB14 ; =0x00002710
	cmp r5, r0
	bne _0223FA6E
	cmp r7, #0x64
	bne _0223FA34
	ldr r0, [sp, #0xc]
	mov r1, #0x34
	add r4, #0xd0
	mul r1, r0
	add r0, r4, r1
	mov r1, #5
	bl sub_02014B34
	b _0223FA44
_0223FA34:
	ldr r0, [sp, #0xc]
	mov r1, #0x34
	add r4, #0xd8
	mul r1, r0
	add r0, r4, r1
	mov r1, #5
	bl sub_02014B34
_0223FA44:
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, [sp, #0x28]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0223FB18 ; =ov16_022405A4
	mov r1, #1
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0201D738
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020237BC
	b _0223FB0C
_0223FA6E:
	cmp r7, #0x64
	bne _0223FA7A
	lsl r0, r5, #1
	add r0, r5, r0
	add r7, r0, #1
	b _0223FA80
_0223FA7A:
	lsl r0, r5, #1
	add r0, r5, r0
	add r7, r0, #2
_0223FA80:
	mov r5, #0
_0223FA82:
	ldr r0, [r4, #0x48]
	bl sub_02025FCC
	cmp r0, #0
	beq _0223FA94
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #4
	blt _0223FA82
_0223FA94:
	cmp r5, #4
	bne _0223FA9C
	ldr r2, _0223FB1C ; =0x00000266
	b _0223FA9E
_0223FA9C:
	ldr r2, _0223FB20 ; =0x00000265
_0223FA9E:
	mov r0, #0
	mov r1, #0x1a
	mov r3, #5
	bl sub_0200B144
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, [sp, #0x28]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0223FB18 ; =ov16_022405A4
	mov r1, #1
	str r0, [sp, #8]
	add r0, r6, #0
	add r2, r4, #0
	bl sub_0201D738
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	b _0223FB0C
_0223FAE0:
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	mov r3, #5
	bl sub_020792F8
	add r0, r6, #0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	ldr r0, [sp, #0x28]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0223FB18 ; =ov16_022405A4
	mov r1, #1
	str r0, [sp, #8]
	ldr r2, [r4, #0x18]
	add r0, r6, #0
	bl sub_0201D738
	add r5, r0, #0
_0223FB0C:
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FB14: .word 0x00002710
_0223FB18: .word ov16_022405A4
_0223FB1C: .word 0x00000266
_0223FB20: .word 0x00000265
	thumb_func_end ov16_0223F9FC

	thumb_func_start ov16_0223FB24
ov16_0223FB24: ; 0x0223FB24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #0xc]
	add r5, r0, #0
	add r4, r2, #0
	mov r1, #0
	add r6, r3, #0
	bl ov16_0223DF04
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223FBE8
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223FDE4
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	bl ov16_02240584
	add r0, r7, #0
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223FB74 ; =ov16_022405A4
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [r5, #0x18]
	add r0, r7, #0
	mov r1, #1
	bl sub_0201D738
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223FB74: .word ov16_022405A4
	thumb_func_end ov16_0223FB24

	thumb_func_start ov16_0223FB78
ov16_0223FB78: ; 0x0223FB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r3, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r7, #0
	add r6, r2, #0
	bl ov16_0223FBE8
	add r0, r5, #0
	add r1, r7, #0
	bl ov16_0223FDE4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_02240584
	ldr r1, [sp, #0x28]
	mov r0, #1
	tst r0, r1
	beq _0223FBAC
	add r0, r4, #0
	mov r1, #0xff
	bl sub_0201ADA4
_0223FBAC:
	ldr r1, [sp, #0x28]
	mov r0, #2
	tst r0, r1
	beq _0223FBC4
	mov r0, #0
	ldr r1, [r5, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	ldr r1, [sp, #0x2c]
	sub r3, r1, r0
	b _0223FBC6
_0223FBC4:
	mov r3, #0
_0223FBC6:
	ldr r0, [sp, #0x24]
	mov r1, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r0, [sp, #4]
	ldr r0, _0223FBE4 ; =ov16_022405A4
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r4, [sp, #0x20]
	ldr r2, [r5, #0x18]
	add r3, r4, r3
	bl sub_0201D738
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FBE4: .word ov16_022405A4
	thumb_func_end ov16_0223FB78

	thumb_func_start ov16_0223FBE8
ov16_0223FBE8: ; 0x0223FBE8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	bl ov16_0223DF0C
	add r5, r0, #0
	ldrb r0, [r4, #1]
	mov r1, #0x80
	tst r1, r0
	bne _0223FC0E
	mov r1, #0x40
	tst r1, r0
	beq _0223FC18
	ldr r1, [r4, #0x20]
	add r0, r6, #0
	bl ov16_0223E208
	cmp r0, #0
	bne _0223FC10
_0223FC0E:
	b _0223FDE2
_0223FC10:
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FC18:
	mov r1, #0x3f
	and r0, r1
	cmp r0, #0x3c
	bls _0223FC22
	b _0223FDDE
_0223FC22:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223FC2E: ; jump table
	.short _0223FDE2 - _0223FC2E - 2 ; case 0
	.short _0223FCA8 - _0223FC2E - 2 ; case 1
	.short _0223FCC0 - _0223FC2E - 2 ; case 2
	.short _0223FDE2 - _0223FC2E - 2 ; case 3
	.short _0223FDE2 - _0223FC2E - 2 ; case 4
	.short _0223FDE2 - _0223FC2E - 2 ; case 5
	.short _0223FDE2 - _0223FC2E - 2 ; case 6
	.short _0223FDE2 - _0223FC2E - 2 ; case 7
	.short _0223FDE2 - _0223FC2E - 2 ; case 8
	.short _0223FD22 - _0223FC2E - 2 ; case 9
	.short _0223FCC0 - _0223FC2E - 2 ; case 10
	.short _0223FCC0 - _0223FC2E - 2 ; case 11
	.short _0223FCC0 - _0223FC2E - 2 ; case 12
	.short _0223FCC0 - _0223FC2E - 2 ; case 13
	.short _0223FCC0 - _0223FC2E - 2 ; case 14
	.short _0223FCC0 - _0223FC2E - 2 ; case 15
	.short _0223FCC0 - _0223FC2E - 2 ; case 16
	.short _0223FCC0 - _0223FC2E - 2 ; case 17
	.short _0223FCC0 - _0223FC2E - 2 ; case 18
	.short _0223FCC0 - _0223FC2E - 2 ; case 19
	.short _0223FCE6 - _0223FC2E - 2 ; case 20
	.short _0223FCFE - _0223FC2E - 2 ; case 21
	.short _0223FDE2 - _0223FC2E - 2 ; case 22
	.short _0223FCFE - _0223FC2E - 2 ; case 23
	.short _0223FDE2 - _0223FC2E - 2 ; case 24
	.short _0223FDE2 - _0223FC2E - 2 ; case 25
	.short _0223FDE2 - _0223FC2E - 2 ; case 26
	.short _0223FDE2 - _0223FC2E - 2 ; case 27
	.short _0223FDE2 - _0223FC2E - 2 ; case 28
	.short _0223FDE2 - _0223FC2E - 2 ; case 29
	.short _0223FDE2 - _0223FC2E - 2 ; case 30
	.short _0223FD22 - _0223FC2E - 2 ; case 31
	.short _0223FD22 - _0223FC2E - 2 ; case 32
	.short _0223FD22 - _0223FC2E - 2 ; case 33
	.short _0223FCC0 - _0223FC2E - 2 ; case 34
	.short _0223FCC0 - _0223FC2E - 2 ; case 35
	.short _0223FD80 - _0223FC2E - 2 ; case 36
	.short _0223FCC0 - _0223FC2E - 2 ; case 37
	.short _0223FCC0 - _0223FC2E - 2 ; case 38
	.short _0223FCC0 - _0223FC2E - 2 ; case 39
	.short _0223FCC0 - _0223FC2E - 2 ; case 40
	.short _0223FCC0 - _0223FC2E - 2 ; case 41
	.short _0223FCC0 - _0223FC2E - 2 ; case 42
	.short _0223FD80 - _0223FC2E - 2 ; case 43
	.short _0223FCC0 - _0223FC2E - 2 ; case 44
	.short _0223FCC0 - _0223FC2E - 2 ; case 45
	.short _0223FCC0 - _0223FC2E - 2 ; case 46
	.short _0223FCC0 - _0223FC2E - 2 ; case 47
	.short _0223FCFE - _0223FC2E - 2 ; case 48
	.short _0223FDE2 - _0223FC2E - 2 ; case 49
	.short _0223FDE2 - _0223FC2E - 2 ; case 50
	.short _0223FDE2 - _0223FC2E - 2 ; case 51
	.short _0223FD80 - _0223FC2E - 2 ; case 52
	.short _0223FD80 - _0223FC2E - 2 ; case 53
	.short _0223FD80 - _0223FC2E - 2 ; case 54
	.short _0223FD80 - _0223FC2E - 2 ; case 55
	.short _0223FDE2 - _0223FC2E - 2 ; case 56
	.short _0223FDE2 - _0223FC2E - 2 ; case 57
	.short _0223FDE2 - _0223FC2E - 2 ; case 58
	.short _0223FDE2 - _0223FC2E - 2 ; case 59
	.short _0223FDE2 - _0223FC2E - 2 ; case 60
_0223FCA8:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FCDC
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FCC0:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FCDC
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	bne _0223FCDE
_0223FCDC:
	b _0223FDE2
_0223FCDE:
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FCE6:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FCFE:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FD22:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FD5C
	ldrh r0, [r4, #2]
	add r0, r0, #3
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223FD44
	ldrh r0, [r4, #2]
	add r0, r0, #2
	strh r0, [r4, #2]
_0223FD44:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FD5C:
	ldr r1, [r4, #8]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FD80:
	ldr r1, [r4, #4]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FDBA
	ldrh r0, [r4, #2]
	add r0, r0, #3
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223FDA2
	ldrh r0, [r4, #2]
	add r0, r0, #2
	strh r0, [r4, #2]
_0223FDA2:
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FDBA:
	ldr r1, [r4, #0xc]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov16_0223E208
	cmp r0, #0
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	mov r0, #1
	tst r0, r5
	beq _0223FDE2
	ldrh r0, [r4, #2]
	add r0, r0, #1
	strh r0, [r4, #2]
	pop {r4, r5, r6, pc}
_0223FDDE:
	bl sub_02022974
_0223FDE2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0223FBE8

	thumb_func_start ov16_0223FDE4
ov16_0223FDE4: ; 0x0223FDE4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r2, [r4, #1]
	mov r1, #0x3f
	add r5, r0, #0
	and r1, r2
	cmp r1, #0x3c
	bls _0223FDF6
	b _0224045A
_0223FDF6:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223FE02: ; jump table
	.short _0224045E - _0223FE02 - 2 ; case 0
	.short _0224045E - _0223FE02 - 2 ; case 1
	.short _0223FE7C - _0223FE02 - 2 ; case 2
	.short _0223FE86 - _0223FE02 - 2 ; case 3
	.short _0223FE90 - _0223FE02 - 2 ; case 4
	.short _0223FE9A - _0223FE02 - 2 ; case 5
	.short _0223FEA4 - _0223FE02 - 2 ; case 6
	.short _0223FEAE - _0223FE02 - 2 ; case 7
	.short _0223FEBA - _0223FE02 - 2 ; case 8
	.short _0223FEC4 - _0223FE02 - 2 ; case 9
	.short _0223FED8 - _0223FE02 - 2 ; case 10
	.short _0223FEEC - _0223FE02 - 2 ; case 11
	.short _0223FF00 - _0223FE02 - 2 ; case 12
	.short _0223FF14 - _0223FE02 - 2 ; case 13
	.short _0223FF28 - _0223FE02 - 2 ; case 14
	.short _0223FF3C - _0223FE02 - 2 ; case 15
	.short _0223FF50 - _0223FE02 - 2 ; case 16
	.short _0223FF64 - _0223FE02 - 2 ; case 17
	.short _0223FF78 - _0223FE02 - 2 ; case 18
	.short _0223FF8C - _0223FE02 - 2 ; case 19
	.short _0223FE86 - _0223FE02 - 2 ; case 20
	.short _0223FFA0 - _0223FE02 - 2 ; case 21
	.short _0223FFB4 - _0223FE02 - 2 ; case 22
	.short _0223FFC8 - _0223FE02 - 2 ; case 23
	.short _0223FFDC - _0223FE02 - 2 ; case 24
	.short _0223FFF0 - _0223FE02 - 2 ; case 25
	.short _02240004 - _0223FE02 - 2 ; case 26
	.short _02240018 - _0223FE02 - 2 ; case 27
	.short _0224002C - _0223FE02 - 2 ; case 28
	.short _02240040 - _0223FE02 - 2 ; case 29
	.short _02240054 - _0223FE02 - 2 ; case 30
	.short _02240068 - _0223FE02 - 2 ; case 31
	.short _02240086 - _0223FE02 - 2 ; case 32
	.short _022400A4 - _0223FE02 - 2 ; case 33
	.short _022400C2 - _0223FE02 - 2 ; case 34
	.short _022400E0 - _0223FE02 - 2 ; case 35
	.short _022400FE - _0223FE02 - 2 ; case 36
	.short _0224011C - _0223FE02 - 2 ; case 37
	.short _0224013A - _0223FE02 - 2 ; case 38
	.short _02240158 - _0223FE02 - 2 ; case 39
	.short _02240176 - _0223FE02 - 2 ; case 40
	.short _02240194 - _0223FE02 - 2 ; case 41
	.short _022401B2 - _0223FE02 - 2 ; case 42
	.short _022401D0 - _0223FE02 - 2 ; case 43
	.short _022401EE - _0223FE02 - 2 ; case 44
	.short _0224020C - _0223FE02 - 2 ; case 45
	.short _0224022A - _0223FE02 - 2 ; case 46
	.short _02240248 - _0223FE02 - 2 ; case 47
	.short _02240266 - _0223FE02 - 2 ; case 48
	.short _02240284 - _0223FE02 - 2 ; case 49
	.short _022402A2 - _0223FE02 - 2 ; case 50
	.short _022402C0 - _0223FE02 - 2 ; case 51
	.short _022402DE - _0223FE02 - 2 ; case 52
	.short _02240306 - _0223FE02 - 2 ; case 53
	.short _0224032E - _0223FE02 - 2 ; case 54
	.short _02240356 - _0223FE02 - 2 ; case 55
	.short _0224037E - _0223FE02 - 2 ; case 56
	.short _022403A6 - _0223FE02 - 2 ; case 57
	.short _022403CE - _0223FE02 - 2 ; case 58
	.short _022403F6 - _0223FE02 - 2 ; case 59
	.short _0224041E - _0223FE02 - 2 ; case 60
_0223FE7C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_0223FE86:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_0223FE90:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_022404F8
	pop {r3, r4, r5, pc}
_0223FE9A:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240490
	pop {r3, r4, r5, pc}
_0223FEA4:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224049C
	pop {r3, r4, r5, pc}
_0223FEAE:
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x1c]
	mov r1, #0
	bl ov16_022404B4
	pop {r3, r4, r5, pc}
_0223FEBA:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224055C
	pop {r3, r4, r5, pc}
_0223FEC4:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_0223FED8:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_0223FEEC:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	pop {r3, r4, r5, pc}
_0223FF00:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404F8
	pop {r3, r4, r5, pc}
_0223FF14:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404E0
	pop {r3, r4, r5, pc}
_0223FF28:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240510
	pop {r3, r4, r5, pc}
_0223FF3C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240490
	pop {r3, r4, r5, pc}
_0223FF50:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240534
	pop {r3, r4, r5, pc}
_0223FF64:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224049C
	pop {r3, r4, r5, pc}
_0223FF78:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	pop {r3, r4, r5, pc}
_0223FF8C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240574
	pop {r3, r4, r5, pc}
_0223FFA0:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240484
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_0223FFB4:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240484
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_0223FFC8:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_022404EC
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_0223FFDC:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240490
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_0223FFF0:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224049C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224049C
	pop {r3, r4, r5, pc}
_02240004:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224055C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	pop {r3, r4, r5, pc}
_02240018:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224055C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_0224002C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224055C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240490
	pop {r3, r4, r5, pc}
_02240040:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224055C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224049C
	pop {r3, r4, r5, pc}
_02240054:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240544
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	pop {r3, r4, r5, pc}
_02240068:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_02240086:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_022404EC
	pop {r3, r4, r5, pc}
_022400A4:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240490
	pop {r3, r4, r5, pc}
_022400C2:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240484
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_022400E0:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240484
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_0224049C
	pop {r3, r4, r5, pc}
_022400FE:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_0224011C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_0224013A:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240490
	pop {r3, r4, r5, pc}
_02240158:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_022404F8
	pop {r3, r4, r5, pc}
_02240176:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_022404E0
	pop {r3, r4, r5, pc}
_02240194:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240504
	pop {r3, r4, r5, pc}
_022401B2:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_0224049C
	pop {r3, r4, r5, pc}
_022401D0:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240490
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_022401EE:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240490
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_0224020C:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240490
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_022404F8
	pop {r3, r4, r5, pc}
_0224022A:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240490
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240504
	pop {r3, r4, r5, pc}
_02240248:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240574
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240574
	pop {r3, r4, r5, pc}
_02240266:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240490
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240538
	pop {r3, r4, r5, pc}
_02240284:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224055C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_022402A2:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240544
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_022402C0:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240544
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240490
	pop {r3, r4, r5, pc}
_022402DE:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_02240484
	pop {r3, r4, r5, pc}
_02240306:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_022404EC
	pop {r3, r4, r5, pc}
_0224032E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_022404EC
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_022404F8
	pop {r3, r4, r5, pc}
_02240356:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240460
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240490
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_02240490
	pop {r3, r4, r5, pc}
_0224037E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_0224055C
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_02240460
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_0224055C
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_022403A6:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240544
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_022403CE:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240544
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_0224055C
	pop {r3, r4, r5, pc}
_022403F6:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240544
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240544
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_0224055C
	pop {r3, r4, r5, pc}
_0224041E:
	ldr r2, [r4, #4]
	mov r1, #0
	bl ov16_02240544
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0224055C
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	mov r1, #2
	bl ov16_02240460
	ldr r2, [r4, #0x10]
	add r0, r5, #0
	mov r1, #3
	bl ov16_02240544
	ldr r2, [r4, #0x14]
	add r0, r5, #0
	mov r1, #4
	bl ov16_0224055C
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	mov r1, #5
	bl ov16_02240460
	pop {r3, r4, r5, pc}
_0224045A:
	bl sub_02022974
_0224045E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0223FDE4

	thumb_func_start ov16_02240460
ov16_02240460: ; 0x02240460
	push {r3, r4, r5, lr}
	mov r3, #0xff
	lsl r3, r3, #8
	add r4, r1, #0
	lsl r1, r2, #0x18
	and r2, r3
	add r5, r0, #0
	lsr r1, r1, #0x18
	asr r2, r2, #8
	bl ov16_0223DFAC
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200B5CC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02240460

	thumb_func_start ov16_02240484
ov16_02240484: ; 0x02240484
	ldr r3, _0224048C ; =sub_0200B630
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0224048C: .word sub_0200B630
	thumb_func_end ov16_02240484

	thumb_func_start ov16_02240490
ov16_02240490: ; 0x02240490
	ldr r3, _02240498 ; =sub_0200B70C
	ldr r0, [r0, #0x14]
	bx r3
	nop
_02240498: .word sub_0200B70C
	thumb_func_end ov16_02240490

	thumb_func_start ov16_0224049C
ov16_0224049C: ; 0x0224049C
	push {r3, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x14]
	mov r3, #5
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov16_0224049C

	thumb_func_start ov16_022404B4
ov16_022404B4: ; 0x022404B4
	push {r4, lr}
	sub sp, #8
	cmp r3, #0
	beq _022404CC
	mov r4, #1
	str r4, [sp]
	str r4, [sp, #4]
	ldr r0, [r0, #0x14]
	bl sub_0200B60C
	add sp, #8
	pop {r4, pc}
_022404CC:
	mov r3, #1
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [r0, #0x14]
	mov r3, #5
	bl sub_0200B60C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_022404B4

	thumb_func_start ov16_022404E0
ov16_022404E0: ; 0x022404E0
	ldr r3, _022404E8 ; =sub_0200B7EC
	ldr r0, [r0, #0x14]
	bx r3
	nop
_022404E8: .word sub_0200B7EC
	thumb_func_end ov16_022404E0

	thumb_func_start ov16_022404EC
ov16_022404EC: ; 0x022404EC
	ldr r3, _022404F4 ; =sub_0200B6A0
	ldr r0, [r0, #0x14]
	bx r3
	nop
_022404F4: .word sub_0200B6A0
	thumb_func_end ov16_022404EC

	thumb_func_start ov16_022404F8
ov16_022404F8: ; 0x022404F8
	ldr r3, _02240500 ; =sub_0200B824
	ldr r0, [r0, #0x14]
	bx r3
	nop
_02240500: .word sub_0200B824
	thumb_func_end ov16_022404F8

	thumb_func_start ov16_02240504
ov16_02240504: ; 0x02240504
	ldr r3, _0224050C ; =sub_0200B85C
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0224050C: .word sub_0200B85C
	thumb_func_end ov16_02240504

	thumb_func_start ov16_02240510
ov16_02240510: ; 0x02240510
	push {r3, r4, r5, lr}
	mov r3, #0xff
	lsl r3, r3, #8
	add r4, r1, #0
	lsl r1, r2, #0x18
	and r2, r3
	add r5, r0, #0
	lsr r1, r1, #0x18
	asr r2, r2, #8
	bl ov16_0223DFAC
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200B538
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02240510

	thumb_func_start ov16_02240534
ov16_02240534: ; 0x02240534
	bx lr
	; .align 2, 0
	thumb_func_end ov16_02240534

	thumb_func_start ov16_02240538
ov16_02240538: ; 0x02240538
	ldr r3, _02240540 ; =sub_0200B890
	ldr r0, [r0, #0x14]
	bx r3
	nop
_02240540: .word sub_0200B890
	thumb_func_end ov16_02240538

	thumb_func_start ov16_02240544
ov16_02240544: ; 0x02240544
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ov16_0223E120
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200B9D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02240544

	thumb_func_start ov16_0224055C
ov16_0224055C: ; 0x0224055C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ov16_0223E120
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200BA74
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0224055C

	thumb_func_start ov16_02240574
ov16_02240574: ; 0x02240574
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x64]
	bl sub_0200BD40
	pop {r4, pc}
	thumb_func_end ov16_02240574

	thumb_func_start ov16_02240584
ov16_02240584: ; 0x02240584
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	ldrh r1, [r2, #2]
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02240584

	thumb_func_start ov16_022405A4
ov16_022405A4: ; 0x022405A4
	push {r4, lr}
	mov r4, #0
	cmp r1, #5
	bhi _022405EA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022405B8: ; jump table
	.short _022405EA - _022405B8 - 2 ; case 0
	.short _022405C4 - _022405B8 - 2 ; case 1
	.short _022405CC - _022405B8 - 2 ; case 2
	.short _022405D4 - _022405B8 - 2 ; case 3
	.short _022405DC - _022405B8 - 2 ; case 4
	.short _022405E4 - _022405B8 - 2 ; case 5
_022405C4:
	bl sub_020057E0
	add r4, r0, #0
	b _022405EA
_022405CC:
	bl sub_020061E4
	add r4, r0, #0
	b _022405EA
_022405D4:
	ldr r0, _022405F0 ; =0x00000484
	bl sub_02006150
	b _022405EA
_022405DC:
	ldr r0, _022405F4 ; =0x000005E6
	bl sub_02005748
	b _022405EA
_022405E4:
	ldr r0, _022405F8 ; =0x00000483
	bl sub_02006150
_022405EA:
	add r0, r4, #0
	pop {r4, pc}
	nop
_022405F0: .word 0x00000484
_022405F4: .word 0x000005E6
_022405F8: .word 0x00000483
	thumb_func_end ov16_022405A4

	.rodata


	.global Unk_ov16_0226E564
Unk_ov16_0226E564: ; 0x0226E564
	.incbin "incbin/overlay16_rodata.bin", 0x308, 0x9

