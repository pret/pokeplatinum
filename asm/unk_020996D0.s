	.include "macros/function.inc"
	.include "include/unk_020996D0.inc"

	

	.text


	thumb_func_start sub_020996D0
sub_020996D0: ; 0x020996D0
	mov r0, #0x13
	bx lr
	thumb_func_end sub_020996D0

	thumb_func_start sub_020996D4
sub_020996D4: ; 0x020996D4
	ldr r3, _020996F0 ; =0x020F6FB0
	mov r2, #0
_020996D8:
	ldrb r1, [r3]
	cmp r0, r1
	bne _020996E2
	add r0, r2, #0
	bx lr
_020996E2:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x13
	blo _020996D8
	mov r0, #0
	bx lr
	nop
_020996F0: .word 0x020F6FB0
	thumb_func_end sub_020996D4

	thumb_func_start sub_020996F4
sub_020996F4: ; 0x020996F4
	ldr r3, _02099718 ; =0x020F6FB0
	mov r2, #0
_020996F8:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0209970C
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0209971C ; =0x020F6FB8
	ldr r0, [r0, r1]
	add r0, r0, #1
	bx lr
_0209970C:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x13
	blo _020996F8
	mov r0, #0
	bx lr
	; .align 2, 0
_02099718: .word 0x020F6FB0
_0209971C: .word 0x020F6FB8
	thumb_func_end sub_020996F4

	thumb_func_start sub_02099720
sub_02099720: ; 0x02099720
	push {r3, lr}
	bl sub_020996D4
	bl sub_0209972C
	pop {r3, pc}
	thumb_func_end sub_02099720

	thumb_func_start sub_0209972C
sub_0209972C: ; 0x0209972C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02099738
	bl sub_02022974
_02099738:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02099744 ; =0x020F6FB2
	ldrh r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02099744: .word 0x020F6FB2
	thumb_func_end sub_0209972C

	thumb_func_start sub_02099748
sub_02099748: ; 0x02099748
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02099754
	bl sub_02022974
_02099754:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02099760 ; =0x020F6FB0
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02099760: .word 0x020F6FB0
	thumb_func_end sub_02099748

	thumb_func_start sub_02099764
sub_02099764: ; 0x02099764
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _02099770
	bl sub_02022974
_02099770:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _0209977C ; =0x020F6FB1
	ldrb r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0209977C: .word 0x020F6FB1
	thumb_func_end sub_02099764

	thumb_func_start sub_02099780
sub_02099780: ; 0x02099780
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _0209978C
	bl sub_02022974
_0209978C:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02099798 ; =0x020F6FB4
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_02099798: .word 0x020F6FB4
	thumb_func_end sub_02099780

	thumb_func_start sub_0209979C
sub_0209979C: ; 0x0209979C
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #0x13
	blo _020997A8
	bl sub_02022974
_020997A8:
	mov r0, #0xc
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020997B4 ; =0x020F6FB8
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_020997B4: .word 0x020F6FB8
	thumb_func_end sub_0209979C

	.rodata


	.global Unk_020F6E10
Unk_020F6E10: ; 0x020F6E10
	.incbin "incbin/arm9_rodata.bin", 0x121D0, 0x121D8 - 0x121D0

	.global Unk_020F6E18
Unk_020F6E18: ; 0x020F6E18
	.incbin "incbin/arm9_rodata.bin", 0x121D8, 0x121E0 - 0x121D8

	.global Unk_020F6E20
Unk_020F6E20: ; 0x020F6E20
	.incbin "incbin/arm9_rodata.bin", 0x121E0, 0x121E8 - 0x121E0

	.global Unk_020F6E28
Unk_020F6E28: ; 0x020F6E28
	.incbin "incbin/arm9_rodata.bin", 0x121E8, 0x121F4 - 0x121E8

	.global Unk_020F6E34
Unk_020F6E34: ; 0x020F6E34
	.incbin "incbin/arm9_rodata.bin", 0x121F4, 0x12204 - 0x121F4

	.global Unk_020F6E44
Unk_020F6E44: ; 0x020F6E44
	.incbin "incbin/arm9_rodata.bin", 0x12204, 0x12214 - 0x12204

	.global Unk_020F6E54
Unk_020F6E54: ; 0x020F6E54
	.incbin "incbin/arm9_rodata.bin", 0x12214, 0x12224 - 0x12214

	.global Unk_020F6E64
Unk_020F6E64: ; 0x020F6E64
	.incbin "incbin/arm9_rodata.bin", 0x12224, 0x12238 - 0x12224

	.global Unk_020F6E78
Unk_020F6E78: ; 0x020F6E78
	.incbin "incbin/arm9_rodata.bin", 0x12238, 0x1224C - 0x12238

	.global Unk_020F6E8C
Unk_020F6E8C: ; 0x020F6E8C
	.incbin "incbin/arm9_rodata.bin", 0x1224C, 0x12260 - 0x1224C

	.global Unk_020F6EA0
Unk_020F6EA0: ; 0x020F6EA0
	.incbin "incbin/arm9_rodata.bin", 0x12260, 0x12278 - 0x12260

	.global Unk_020F6EB8
Unk_020F6EB8: ; 0x020F6EB8
	.incbin "incbin/arm9_rodata.bin", 0x12278, 0x12290 - 0x12278

	.global Unk_020F6ED0
Unk_020F6ED0: ; 0x020F6ED0
	.incbin "incbin/arm9_rodata.bin", 0x12290, 0x122A8 - 0x12290

	.global Unk_020F6EE8
Unk_020F6EE8: ; 0x020F6EE8
	.incbin "incbin/arm9_rodata.bin", 0x122A8, 0x122C4 - 0x122A8

	.global Unk_020F6F04
Unk_020F6F04: ; 0x020F6F04
	.incbin "incbin/arm9_rodata.bin", 0x122C4, 0x122E4 - 0x122C4

	.global Unk_020F6F24
Unk_020F6F24: ; 0x020F6F24
	.incbin "incbin/arm9_rodata.bin", 0x122E4, 0x12308 - 0x122E4

	.global Unk_020F6F48
Unk_020F6F48: ; 0x020F6F48
	.incbin "incbin/arm9_rodata.bin", 0x12308, 0x1233C - 0x12308

	.global Unk_020F6F7C
Unk_020F6F7C: ; 0x020F6F7C
	.incbin "incbin/arm9_rodata.bin", 0x1233C, 0x12370 - 0x1233C

	.global Unk_020F6FB0
Unk_020F6FB0: ; 0x020F6FB0
	.incbin "incbin/arm9_rodata.bin", 0x12370, 0x12454 - 0x12370

	.global Unk_020F7094
Unk_020F7094: ; 0x020F7094
	.incbin "incbin/arm9_rodata.bin", 0x12454, 0xE9

