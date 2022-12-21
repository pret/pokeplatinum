	.include "macros/function.inc"
	.include "include/unk_020021B0.inc"

	

	.text


	thumb_func_start sub_020021B0
sub_020021B0: ; 0x020021B0
	ldrh r3, [r1]
	ldr r2, _020021CC ; =0x0000FFFF
	cmp r3, r2
	beq _020021C4
_020021B8:
	add r1, r1, #2
	strh r3, [r0]
	ldrh r3, [r1]
	add r0, r0, #2
	cmp r3, r2
	bne _020021B8
_020021C4:
	ldr r1, _020021CC ; =0x0000FFFF
	strh r1, [r0]
	bx lr
	nop
_020021CC: .word 0x0000FFFF
	thumb_func_end sub_020021B0

	thumb_func_start sub_020021D0
sub_020021D0: ; 0x020021D0
	push {r4, r5}
	mov r4, #0
	cmp r2, #0
	bls _020021E8
	add r5, r0, #0
_020021DA:
	ldrh r3, [r1]
	add r4, r4, #1
	add r1, r1, #2
	strh r3, [r5]
	add r5, r5, #2
	cmp r4, r2
	blo _020021DA
_020021E8:
	lsl r1, r2, #1
	add r0, r0, r1
	pop {r4, r5}
	bx lr
	thumb_func_end sub_020021D0

	thumb_func_start sub_020021F0
sub_020021F0: ; 0x020021F0
	ldrh r2, [r0]
	ldr r1, _02002208 ; =0x0000FFFF
	mov r3, #0
	cmp r2, r1
	beq _02002204
_020021FA:
	add r0, r0, #2
	ldrh r2, [r0]
	add r3, r3, #1
	cmp r2, r1
	bne _020021FA
_02002204:
	add r0, r3, #0
	bx lr
	; .align 2, 0
_02002208: .word 0x0000FFFF
	thumb_func_end sub_020021F0

	thumb_func_start sub_0200220C
sub_0200220C: ; 0x0200220C
	push {r3, r4}
	ldrh r4, [r0]
	ldrh r2, [r1]
	cmp r4, r2
	bne _0200222E
	ldr r2, _02002234 ; =0x0000FFFF
_02002218:
	cmp r4, r2
	bne _02002222
	mov r0, #0
	pop {r3, r4}
	bx lr
_02002222:
	add r0, r0, #2
	add r1, r1, #2
	ldrh r4, [r0]
	ldrh r3, [r1]
	cmp r4, r3
	beq _02002218
_0200222E:
	mov r0, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02002234: .word 0x0000FFFF
	thumb_func_end sub_0200220C

	thumb_func_start sub_02002238
sub_02002238: ; 0x02002238
	push {r3, r4, r5, r6}
	ldrh r6, [r1]
	ldrh r5, [r0]
	cmp r5, r6
	bne _0200226C
	ldr r3, _02002274 ; =0x0000FFFF
	add r4, r3, #0
_02002246:
	cmp r2, #0
	bne _02002250
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02002250:
	cmp r5, r4
	bne _0200225E
	cmp r6, r3
	bne _0200225E
	mov r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0200225E:
	add r0, r0, #2
	add r1, r1, #2
	ldrh r6, [r1]
	ldrh r5, [r0]
	sub r2, r2, #1
	cmp r5, r6
	beq _02002246
_0200226C:
	mov r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02002274: .word 0x0000FFFF
	thumb_func_end sub_02002238

	thumb_func_start sub_02002278
sub_02002278: ; 0x02002278
	push {r3, r4}
	mov r3, #0
	cmp r2, #0
	bls _0200228C
	add r4, r0, #0
_02002282:
	add r3, r3, #1
	strh r1, [r4]
	add r4, r4, #2
	cmp r3, r2
	blo _02002282
_0200228C:
	lsl r1, r3, #1
	add r0, r0, r1
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02002278

	thumb_func_start sub_02002294
sub_02002294: ; 0x02002294
	ldr r3, _0200229C ; =sub_02002278
	add r2, r1, #0
	ldr r1, _020022A0 ; =0x0000FFFF
	bx r3
	; .align 2, 0
_0200229C: .word sub_02002278
_020022A0: .word 0x0000FFFF
	thumb_func_end sub_02002294

	thumb_func_start sub_020022A4
sub_020022A4: ; 0x020022A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r0, _0200231C ; =0x020E4CA4
	lsl r1, r3, #2
	ldr r4, [r0, r1]
	add r6, r2, #0
	cmp r4, #0
	beq _02002314
_020022B6:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	add r0, r4, #0
	mul r0, r1
	sub r7, r7, r0
	cmp r6, #2
	bne _020022E0
	cmp r1, #0xa
	blo _020022D4
	mov r0, #0xe2
	b _020022DA
_020022D4:
	ldr r0, _02002320 ; =0x020E4C88
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
_020022DA:
	strh r0, [r5]
	add r5, r5, #2
	b _02002308
_020022E0:
	cmp r1, #0
	bne _020022E8
	cmp r4, #1
	bne _020022FE
_020022E8:
	mov r6, #2
	cmp r1, #0xa
	blo _020022F2
	mov r0, #0xe2
	b _020022F8
_020022F2:
	ldr r0, _02002320 ; =0x020E4C88
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
_020022F8:
	strh r0, [r5]
	add r5, r5, #2
	b _02002308
_020022FE:
	cmp r6, #1
	bne _02002308
	mov r0, #1
	strh r0, [r5]
	add r5, r5, #2
_02002308:
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E2178
	add r4, r0, #0
	bne _020022B6
_02002314:
	ldr r0, _02002324 ; =0x0000FFFF
	strh r0, [r5]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0200231C: .word 0x020E4CA4
_02002320: .word 0x020E4C88
_02002324: .word 0x0000FFFF
	thumb_func_end sub_020022A4

	.rodata


	.global Unk_020E4C88
Unk_020E4C88: ; 0x020E4C88
	.incbin "incbin/arm9_rodata.bin", 0x48, 0x68 - 0x48

	.global Unk_020E4CA8
Unk_020E4CA8: ; 0x020E4CA8
	.incbin "incbin/arm9_rodata.bin", 0x68, 0x28

