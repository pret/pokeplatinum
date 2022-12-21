	.include "macros/function.inc"
	.include "include/unk_0203266C.inc"

	

	.text


	thumb_func_start sub_0203266C
sub_0203266C: ; 0x0203266C
	push {r4, lr}
	sub sp, #0x28
	ldr r3, _02032694 ; =0x020E5D18
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #0x25
_02032678:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02032678
	cmp r4, #0x25
	blo _0203268C
	bl sub_02022974
_0203268C:
	add r0, sp, #0
	ldrb r0, [r0, r4]
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02032694: .word 0x020E5D18
	thumb_func_end sub_0203266C

	thumb_func_start sub_02032698
sub_02032698: ; 0x02032698
	push {r4, lr}
	sub sp, #0x28
	ldr r3, _020326C0 ; =0x020E5D3D
	add r4, r0, #0
	add r2, sp, #0
	mov r1, #0x25
_020326A4:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020326A4
	cmp r4, #0x25
	blo _020326B8
	bl sub_02022974
_020326B8:
	add r0, sp, #0
	ldrb r0, [r0, r4]
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_020326C0: .word 0x020E5D3D
	thumb_func_end sub_02032698

	thumb_func_start sub_020326C4
sub_020326C4: ; 0x020326C4
	cmp r0, #0x12
	bgt _020326DE
	bge _020326E2
	cmp r0, #0xd
	bgt _020326E6
	cmp r0, #7
	blt _020326E6
	beq _020326E2
	cmp r0, #9
	beq _020326E2
	cmp r0, #0xd
	beq _020326E2
	b _020326E6
_020326DE:
	cmp r0, #0x1a
	bne _020326E6
_020326E2:
	mov r0, #1
	bx lr
_020326E6:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020326C4

	thumb_func_start sub_020326EC
sub_020326EC: ; 0x020326EC
	sub r0, #0x13
	cmp r0, #0x11
	bhi _02032726
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020326FE: ; jump table
	.short _02032722 - _020326FE - 2 ; case 0
	.short _02032722 - _020326FE - 2 ; case 1
	.short _02032722 - _020326FE - 2 ; case 2
	.short _02032722 - _020326FE - 2 ; case 3
	.short _02032722 - _020326FE - 2 ; case 4
	.short _02032722 - _020326FE - 2 ; case 5
	.short _02032722 - _020326FE - 2 ; case 6
	.short _02032726 - _020326FE - 2 ; case 7
	.short _02032726 - _020326FE - 2 ; case 8
	.short _02032726 - _020326FE - 2 ; case 9
	.short _02032722 - _020326FE - 2 ; case 10
	.short _02032726 - _020326FE - 2 ; case 11
	.short _02032726 - _020326FE - 2 ; case 12
	.short _02032726 - _020326FE - 2 ; case 13
	.short _02032722 - _020326FE - 2 ; case 14
	.short _02032722 - _020326FE - 2 ; case 15
	.short _02032722 - _020326FE - 2 ; case 16
	.short _02032722 - _020326FE - 2 ; case 17
_02032722:
	mov r0, #1
	bx lr
_02032726:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020326EC

	thumb_func_start sub_0203272C
sub_0203272C: ; 0x0203272C
	cmp r0, #0x1d
	beq _02032738
	cmp r0, #0x21
	beq _02032738
	cmp r0, #0x23
	bne _0203273C
_02032738:
	mov r0, #1
	bx lr
_0203273C:
	mov r0, #0
	bx lr
	thumb_func_end sub_0203272C

	thumb_func_start sub_02032740
sub_02032740: ; 0x02032740
	cmp r0, #0x17
	bgt _02032760
	add r1, r0, #0
	sub r1, #0x13
	bmi _02032768
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02032756: ; jump table
	.short _02032764 - _02032756 - 2 ; case 0
	.short _02032764 - _02032756 - 2 ; case 1
	.short _02032764 - _02032756 - 2 ; case 2
	.short _02032764 - _02032756 - 2 ; case 3
	.short _02032764 - _02032756 - 2 ; case 4
_02032760:
	cmp r0, #0x22
	bne _02032768
_02032764:
	mov r0, #1
	bx lr
_02032768:
	mov r0, #0
	bx lr
	thumb_func_end sub_02032740

	thumb_func_start sub_0203276C
sub_0203276C: ; 0x0203276C
	cmp r0, #8
	bhi _02032792
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203277C: ; jump table
	.short _02032792 - _0203277C - 2 ; case 0
	.short _0203278E - _0203277C - 2 ; case 1
	.short _0203278E - _0203277C - 2 ; case 2
	.short _0203278E - _0203277C - 2 ; case 3
	.short _0203278E - _0203277C - 2 ; case 4
	.short _0203278E - _0203277C - 2 ; case 5
	.short _02032792 - _0203277C - 2 ; case 6
	.short _02032792 - _0203277C - 2 ; case 7
	.short _0203278E - _0203277C - 2 ; case 8
_0203278E:
	mov r0, #1
	bx lr
_02032792:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_0203276C

	.rodata


	.global Unk_020E5D18
Unk_020E5D18: ; 0x020E5D18
	.incbin "incbin/arm9_rodata.bin", 0x10D8, 0x10FD - 0x10D8

	.global Unk_020E5D3D
Unk_020E5D3D: ; 0x020E5D3D
	.incbin "incbin/arm9_rodata.bin", 0x10FD, 0x25

