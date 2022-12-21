	.include "macros/function.inc"
	.include "include/unk_0203A024.inc"

	

	.text


	thumb_func_start sub_0203A024
sub_0203A024: ; 0x0203A024
	push {r3, lr}
	ldr r1, _0203A034 ; =0x00000251
	cmp r0, r1
	blo _0203A032
	bl sub_02022974
	mov r0, #3
_0203A032:
	pop {r3, pc}
	; .align 2, 0
_0203A034: .word 0x00000251
	thumb_func_end sub_0203A024

	thumb_func_start sub_0203A038
sub_0203A038: ; 0x0203A038
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A048 ; =0x020E601C
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A048: .word 0x020E601C
	thumb_func_end sub_0203A038

	thumb_func_start sub_0203A04C
sub_0203A04C: ; 0x0203A04C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A05C ; =0x020E601D
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A05C: .word 0x020E601D
	thumb_func_end sub_0203A04C

	thumb_func_start sub_0203A060
sub_0203A060: ; 0x0203A060
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A080 ; =0x020E601E
	ldrh r0, [r0, r1]
	cmp r0, #0x16
	bne _0203A07C
	ldr r1, _0203A084 ; =0x020E4C40
	ldrb r1, [r1]
	cmp r1, #0xb
	bne _0203A07C
	mov r0, #0x17
_0203A07C:
	pop {r3, pc}
	nop
_0203A080: .word 0x020E601E
_0203A084: .word 0x020E4C40
	thumb_func_end sub_0203A060

	thumb_func_start sub_0203A088
sub_0203A088: ; 0x0203A088
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A098 ; =0x020E6024
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A098: .word 0x020E6024
	thumb_func_end sub_0203A088

	thumb_func_start sub_0203A09C
sub_0203A09C: ; 0x0203A09C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0AC ; =0x020E6020
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0AC: .word 0x020E6020
	thumb_func_end sub_0203A09C

	thumb_func_start sub_0203A0B0
sub_0203A0B0: ; 0x0203A0B0
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0C0 ; =0x020E6022
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0C0: .word 0x020E6022
	thumb_func_end sub_0203A0B0

	thumb_func_start sub_0203A0C4
sub_0203A0C4: ; 0x0203A0C4
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0D4 ; =0x020E6026
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0D4: .word 0x020E6026
	thumb_func_end sub_0203A0C4

	thumb_func_start sub_0203A0D8
sub_0203A0D8: ; 0x0203A0D8
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A0E8 ; =0x020E6028
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A0E8: .word 0x020E6028
	thumb_func_end sub_0203A0D8

	thumb_func_start sub_0203A0EC
sub_0203A0EC: ; 0x0203A0EC
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A108 ; =0x020E602A
	ldrh r1, [r0, r1]
	ldr r0, _0203A10C ; =0x0000FFFF
	cmp r1, r0
	beq _0203A104
	mov r0, #1
	pop {r3, pc}
_0203A104:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0203A108: .word 0x020E602A
_0203A10C: .word 0x0000FFFF
	thumb_func_end sub_0203A0EC

	thumb_func_start sub_0203A110
sub_0203A110: ; 0x0203A110
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A120 ; =0x020E602A
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A120: .word 0x020E602A
	thumb_func_end sub_0203A110

	thumb_func_start sub_0203A124
sub_0203A124: ; 0x0203A124
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A134 ; =0x020E602C
	ldrh r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A134: .word 0x020E602C
	thumb_func_end sub_0203A124

	thumb_func_start sub_0203A138
sub_0203A138: ; 0x0203A138
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A150 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x12]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_0203A150: .word 0x020E601C
	thumb_func_end sub_0203A138

	thumb_func_start sub_0203A154
sub_0203A154: ; 0x0203A154
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A170 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x12]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	nop
_0203A170: .word 0x020E601C
	thumb_func_end sub_0203A154

	thumb_func_start sub_0203A174
sub_0203A174: ; 0x0203A174
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A184 ; =0x020E6030
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A184: .word 0x020E6030
	thumb_func_end sub_0203A174

	thumb_func_start sub_0203A188
sub_0203A188: ; 0x0203A188
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A198 ; =0x020E6031
	ldrb r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_0203A198: .word 0x020E6031
	thumb_func_end sub_0203A188

	thumb_func_start sub_0203A19C
sub_0203A19C: ; 0x0203A19C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A1B4 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1b
	pop {r3, pc}
	nop
_0203A1B4: .word 0x020E601C
	thumb_func_end sub_0203A19C

	thumb_func_start sub_0203A1B8
sub_0203A1B8: ; 0x0203A1B8
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A1D0 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1f
	pop {r3, pc}
	nop
_0203A1D0: .word 0x020E601C
	thumb_func_end sub_0203A1B8

	thumb_func_start sub_0203A1D4
sub_0203A1D4: ; 0x0203A1D4
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A1EC ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	pop {r3, pc}
	nop
_0203A1EC: .word 0x020E601C
	thumb_func_end sub_0203A1D4

	thumb_func_start sub_0203A1F0
sub_0203A1F0: ; 0x0203A1F0
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A208 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x13
	lsr r0, r0, #0x1f
	pop {r3, pc}
	nop
_0203A208: .word 0x020E601C
	thumb_func_end sub_0203A1F0

	thumb_func_start sub_0203A20C
sub_0203A20C: ; 0x0203A20C
	push {r3, lr}
	bl sub_0203A024
	mov r1, #0x18
	mul r1, r0
	ldr r0, _0203A224 ; =0x020E601C
	add r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	pop {r3, pc}
	nop
_0203A224: .word 0x020E601C
	thumb_func_end sub_0203A20C

	thumb_func_start sub_0203A228
sub_0203A228: ; 0x0203A228
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A1D4
	cmp r0, #0
	bne _0203A238
	mov r0, #0
	pop {r4, pc}
_0203A238:
	add r0, r4, #0
	bl sub_0203A20C
	cmp r0, #1
	beq _0203A246
	mov r0, #1
	pop {r4, pc}
_0203A246:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A228

	thumb_func_start sub_0203A24C
sub_0203A24C: ; 0x0203A24C
	push {r3, lr}
	bl sub_0203A060
	cmp r0, #0
	bne _0203A25A
	mov r0, #1
	pop {r3, pc}
_0203A25A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A24C

	thumb_func_start sub_0203A260
sub_0203A260: ; 0x0203A260
	push {r3, lr}
	bl sub_0203A20C
	cmp r0, #5
	bne _0203A26E
	mov r0, #1
	pop {r3, pc}
_0203A26E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A260

	thumb_func_start sub_0203A274
sub_0203A274: ; 0x0203A274
	push {r3, lr}
	bl sub_0203A20C
	cmp r0, #3
	bne _0203A282
	mov r0, #1
	pop {r3, pc}
_0203A282:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A274

	thumb_func_start sub_0203A288
sub_0203A288: ; 0x0203A288
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A20C
	cmp r0, #4
	beq _0203A29E
	add r0, r4, #0
	bl sub_0203A20C
	cmp r0, #5
	bne _0203A2A2
_0203A29E:
	mov r0, #1
	pop {r4, pc}
_0203A2A2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A288

	thumb_func_start sub_0203A2A8
sub_0203A2A8: ; 0x0203A2A8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203A20C
	cmp r0, #1
	beq _0203A2BE
	add r0, r4, #0
	bl sub_0203A20C
	cmp r0, #2
	bne _0203A2C2
_0203A2BE:
	mov r0, #1
	pop {r4, pc}
_0203A2C2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0203A2A8

	thumb_func_start sub_0203A2C8
sub_0203A2C8: ; 0x0203A2C8
	push {r3, lr}
	bl sub_0203A260
	cmp r0, #0
	beq _0203A2D6
	mov r0, #1
	pop {r3, pc}
_0203A2D6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0203A2C8

	thumb_func_start sub_0203A2DC
sub_0203A2DC: ; 0x0203A2DC
	ldr r1, _0203A2EC ; =0x000001D2
	cmp r0, r1
	bne _0203A2E6
	mov r0, #1
	bx lr
_0203A2E6:
	mov r0, #0
	bx lr
	nop
_0203A2EC: .word 0x000001D2
	thumb_func_end sub_0203A2DC

	thumb_func_start sub_0203A2F0
sub_0203A2F0: ; 0x0203A2F0
	cmp r0, #0xdb
	bne _0203A2F8
	mov r0, #1
	bx lr
_0203A2F8:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203A2F0

	thumb_func_start sub_0203A2FC
sub_0203A2FC: ; 0x0203A2FC
	ldr r1, _0203A30C ; =0x0000011F
	cmp r0, r1
	bne _0203A306
	mov r0, #1
	bx lr
_0203A306:
	mov r0, #0
	bx lr
	nop
_0203A30C: .word 0x0000011F
	thumb_func_end sub_0203A2FC

	thumb_func_start sub_0203A310
sub_0203A310: ; 0x0203A310
	cmp r0, #0xfd
	bne _0203A318
	mov r0, #1
	bx lr
_0203A318:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203A310

	thumb_func_start sub_0203A31C
sub_0203A31C: ; 0x0203A31C
	cmp r0, #0xdc
	beq _0203A32A
	mov r1, #0x92
	lsl r1, r1, #2
	sub r0, r0, r1
	cmp r0, #1
	bhi _0203A32E
_0203A32A:
	mov r0, #1
	bx lr
_0203A32E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203A31C

	thumb_func_start sub_0203A334
sub_0203A334: ; 0x0203A334
	ldr r3, _0203A350 ; =0x020E5FA4
	mov r2, #0
_0203A338:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0203A342
	mov r0, #1
	bx lr
_0203A342:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #0x12
	blo _0203A338
	mov r0, #0
	bx lr
	nop
_0203A350: .word 0x020E5FA4
	thumb_func_end sub_0203A334

	thumb_func_start sub_0203A354
sub_0203A354: ; 0x0203A354
	ldr r3, _0203A374 ; =0x020E5FC8
	mov r2, #0
_0203A358:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0203A368
	add r0, r2, #1
	lsl r1, r0, #1
	ldr r0, _0203A374 ; =0x020E5FC8
	ldrh r0, [r0, r1]
	bx lr
_0203A368:
	add r2, r2, #2
	add r3, r3, #4
	cmp r2, #0x2a
	blo _0203A358
	mov r0, #0
	bx lr
	; .align 2, 0
_0203A374: .word 0x020E5FC8
	thumb_func_end sub_0203A354

	.rodata


	.global Unk_020E5FA4
Unk_020E5FA4: ; 0x020E5FA4
	.incbin "incbin/arm9_rodata.bin", 0x1364, 0x1388 - 0x1364

	.global Unk_020E5FC8
Unk_020E5FC8: ; 0x020E5FC8
	.incbin "incbin/arm9_rodata.bin", 0x1388, 0x13DC - 0x1388

	.global Unk_020E601C
Unk_020E601C: ; 0x020E601C
	.incbin "incbin/arm9_rodata.bin", 0x13DC, 0x3798

