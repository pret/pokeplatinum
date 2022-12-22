	.include "macros/function.inc"

	

	.text


	thumb_func_start sub_020923C0
sub_020923C0: ; 0x020923C0
	cmp r1, #4
	bhi _0209240C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_020923D0: ; jump table
	.short _020923DA - _020923D0 - 2 ; case 0
	.short _020923E4 - _020923D0 - 2 ; case 1
	.short _020923EE - _020923D0 - 2 ; case 2
	.short _020923F8 - _020923D0 - 2 ; case 3
	.short _02092402 - _020923D0 - 2 ; case 4
_020923DA:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092410 ; =0x020F51AC
	ldr r0, [r0, r1]
	bx lr
_020923E4:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092414 ; =0x020F51B0
	ldrh r0, [r0, r1]
	bx lr
_020923EE:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092418 ; =0x020F51B2
	ldrh r0, [r0, r1]
	bx lr
_020923F8:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _0209241C ; =0x020F51B4
	ldrh r0, [r0, r1]
	bx lr
_02092402:
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092420 ; =0x020F51B6
	ldrh r0, [r0, r1]
	bx lr
_0209240C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02092410: .word 0x020F51AC
_02092414: .word 0x020F51B0
_02092418: .word 0x020F51B2
_0209241C: .word 0x020F51B4
_02092420: .word 0x020F51B6
	thumb_func_end sub_020923C0

	thumb_func_start sub_02092424
sub_02092424: ; 0x02092424
	mov r2, #0xc
	mul r2, r1
	ldr r1, _02092440 ; =0x020F51B6
	ldrh r2, [r1, r2]
	mov r1, #2
	lsl r1, r1, #0xe
	tst r1, r2
	beq _0209243C
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	ldrb r2, [r0, r1]
	add r2, #0x92
_0209243C:
	add r0, r2, #0
	bx lr
	; .align 2, 0
_02092440: .word 0x020F51B6
	thumb_func_end sub_02092424

	thumb_func_start sub_02092444
sub_02092444: ; 0x02092444
	mov r1, #0xc
	mul r1, r0
	ldr r0, _02092460 ; =0x020F51B6
	ldrh r1, [r0, r1]
	mov r0, #2
	lsl r0, r0, #0xe
	tst r0, r1
	beq _0209245A
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bx lr
_0209245A:
	mov r0, #0xff
	bx lr
	nop
_02092460: .word 0x020F51B6
	thumb_func_end sub_02092444

	thumb_func_start sub_02092464
sub_02092464: ; 0x02092464
	ldr r3, _02092488 ; =0x020F51AC
	mov r2, #0
_02092468:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _0209247A
	mov r0, #0xc
	add r1, r2, #0
	mul r1, r0
	ldr r0, _0209248C ; =0x020F51B4
	ldrh r0, [r0, r1]
	bx lr
_0209247A:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #0x50
	blo _02092468
	ldr r0, _02092490 ; =0x0000FFFF
	bx lr
	nop
_02092488: .word 0x020F51AC
_0209248C: .word 0x020F51B4
_02092490: .word 0x0000FFFF
	thumb_func_end sub_02092464

	.rodata


	.global Unk_020F51AC
Unk_020F51AC: ; 0x020F51AC
	.incbin "incbin/arm9_rodata.bin", 0x1056C, 0x3C0

