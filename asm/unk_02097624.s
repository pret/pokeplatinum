	.include "macros/function.inc"
	.include "include/unk_02097624.inc"

	

	.text


	thumb_func_start sub_02097624
sub_02097624: ; 0x02097624
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl sub_02028430
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [sp]
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	strb r6, [r4, #0xe]
	str r0, [r4, #0x18]
	mov r0, #1
	strh r0, [r4]
	str r7, [r4, #8]
	mov r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [sp, #0x20]
	str r5, [r4, #0x10]
	bl sub_0202818C
	str r0, [r4, #0x14]
	bl sub_02028124
	ldr r0, [r4, #0x14]
	mov r1, #0xff
	add r2, r6, #0
	add r3, r5, #0
	bl sub_020281AC
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02097624

	thumb_func_start sub_0209767C
sub_0209767C: ; 0x0209767C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r0, r3, #0
	mov r1, #0x1c
	add r6, r2, #0
	str r3, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r4]
	str r5, [r4, #8]
	strh r6, [r4, #0xc]
	add r0, r7, #0
	str r7, [r4, #0x10]
	bl sub_02028430
	ldr r3, [sp]
	add r1, r5, #0
	add r2, r6, #0
	str r0, [r4, #0x18]
	bl sub_020284A8
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0209767C

	thumb_func_start sub_020976BC
sub_020976BC: ; 0x020976BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r4]
	str r5, [r4, #0x10]
	add r0, r7, #0
	bl sub_0202818C
	str r0, [r4, #0x14]
	ldr r2, [r4, #0x14]
	add r0, r6, #0
	mov r1, #0xaa
	bl sub_02074470
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020976BC

	thumb_func_start sub_020976F4
sub_020976F4: ; 0x020976F4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x1c
	bl sub_02018184
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r4]
	add r0, r7, #0
	str r5, [r4, #0x10]
	bl sub_0202818C
	add r1, r6, #0
	str r0, [r4, #0x14]
	bl sub_02028318
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020976F4

	thumb_func_start sub_02097728
sub_02097728: ; 0x02097728
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_02097728

	thumb_func_start sub_0209772C
sub_0209772C: ; 0x0209772C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02097728
	cmp r0, #0
	bne _02097740
	mov r0, #0
	pop {r4, r5, r6, pc}
_02097740:
	ldr r0, [r5, #0x18]
	ldr r3, [r5, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02028480
	mov r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0209772C

	thumb_func_start sub_02097750
sub_02097750: ; 0x02097750
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02097728
	cmp r0, #0
	bne _02097762
	mov r0, #0
	pop {r3, r4, r5, pc}
_02097762:
	ldr r2, [r5, #0x14]
	add r0, r4, #0
	mov r1, #0xaa
	bl sub_02074B30
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02097750

	thumb_func_start sub_02097770
sub_02097770: ; 0x02097770
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0209777E
	bl sub_020181C4
_0209777E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02097770

	thumb_func_start sub_02097788
sub_02097788: ; 0x02097788
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r7, r0, #0
	add r4, r2, #0
	str r1, [sp]
	bl sub_0202845C
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _020977E2
	add r0, r4, #0
	bl sub_0202818C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r4, #0
	bl sub_02074470
	add r0, r7, #0
	mov r1, #0
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02028480
	add r0, r4, #0
	bl sub_02028124
	add r0, r5, #0
	mov r1, #0xaa
	add r2, r4, #0
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
_020977E2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02097788

	thumb_func_start sub_020977E4
sub_020977E4: ; 0x020977E4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #0
	add r2, r5, #0
	add r7, r0, #0
	str r1, [sp]
	bl sub_020284A8
	add r6, r0, #0
	bne _02097800
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02097800:
	bl sub_02028314
	bl sub_0207D310
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xaa
	add r2, r6, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_02028470
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020977E4

	thumb_func_start sub_02097834
sub_02097834: ; 0x02097834
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x34
	bl sub_02018144
	mov r1, #0
	mov r2, #0x34
	add r6, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	strh r0, [r6]
	add r0, r4, #0
	bl sub_02028308
	str r0, [r6, #8]
	mov r0, #8
	add r1, r5, #0
	bl sub_02023790
	str r0, [r6, #0x10]
	add r0, r4, #0
	bl sub_0202830C
	add r1, r0, #0
	ldr r0, [r6, #0x10]
	bl sub_02023D28
	add r0, r4, #0
	bl sub_02028314
	strb r0, [r6, #0xf]
	add r0, r4, #0
	bl sub_02028320
	strb r0, [r6, #0xd]
	add r0, r4, #0
	bl sub_02028324
	strb r0, [r6, #0xe]
	mov r5, #0
	mov r7, #2
_0209788C:
	add r0, r4, #0
	bl sub_02028408
	lsl r1, r5, #0x18
	add r3, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	add r2, r7, #0
	bl sub_02028328
	lsl r1, r5, #1
	add r1, r6, r1
	strh r0, [r1, #0x14]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _0209788C
	add r7, r6, #0
	mov r5, #0
	add r7, #0x1a
_020978B6:
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl sub_0202840C
	add r1, r0, #0
	lsl r0, r5, #3
	add r0, r7, r0
	bl sub_02014CC0
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _020978B6
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02097834

	thumb_func_start sub_020978D8
sub_020978D8: ; 0x020978D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _020978E6
	bl sub_020237BC
_020978E6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020978D8

	thumb_func_start sub_020978F0
sub_020978F0: ; 0x020978F0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r7, #0
	add r6, r0, #0
	mov r5, #0
	add r4, #0x1a
_020978FC:
	lsl r1, r5, #3
	lsl r2, r5, #0x18
	add r0, r6, #0
	add r1, r4, r1
	lsr r2, r2, #0x18
	bl sub_0202841C
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _020978FC
	ldrb r1, [r7, #0xf]
	add r0, r6, #0
	bl sub_02028318
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020978F0

	thumb_func_start sub_02097920
sub_02097920: ; 0x02097920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02097940
	bl sub_02006844
	cmp r0, #0
	beq _02097940
	ldr r0, [r4, #0]
	bl sub_02006814
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_02097940:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02097920

	thumb_func_start sub_02097944
sub_02097944: ; 0x02097944
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x28
	lsl r2, r2, #0xc
	bl sub_02017FC8
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #0x28
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x1c
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0x28
	str r1, [r4, #0]
	ldr r0, [r5, #0x14]
	bl sub_02097834
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x10]
	bl sub_02025E44
	ldr r1, [r4, #0x10]
	str r0, [r1, #4]
	ldrh r0, [r5]
	cmp r0, #1
	bne _02097990
	ldrb r1, [r5, #0xf]
	ldr r0, [r4, #0x10]
	strb r1, [r0, #0xf]
_02097990:
	ldr r1, [r4, #0x10]
	ldrb r0, [r1, #0xf]
	cmp r0, #0xc
	blo _0209799C
	mov r0, #0
	strb r0, [r1, #0xf]
_0209799C:
	ldrh r1, [r5]
	ldr r0, [r4, #0x10]
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02097944

	thumb_func_start sub_020979A8
sub_020979A8: ; 0x020979A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, [r6, #0]
	cmp r0, #4
	bls _020979C4
	b _02097AE8
_020979C4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020979D0: ; jump table
	.short _020979DA - _020979D0 - 2 ; case 0
	.short _020979F2 - _020979D0 - 2 ; case 1
	.short _02097A1E - _020979D0 - 2 ; case 2
	.short _02097A58 - _020979D0 - 2 ; case 3
	.short _02097AB6 - _020979D0 - 2 ; case 4
_020979DA:
	ldrh r1, [r5]
	ldr r0, [r4, #0x10]
	strh r1, [r0]
	ldr r0, _02097AEC ; =0x020F6490
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0xc]
	mov r0, #1
	str r0, [r6, #0]
	b _02097AE8
_020979F2:
	add r0, r4, #0
	add r0, #0xc
	bl sub_02097920
	cmp r0, #0
	beq _02097AE8
	ldr r0, [r4, #0x10]
	ldrh r1, [r0]
	cmp r1, #3
	beq _02097A12
	ldr r0, _02097AF0 ; =0x0000FFFF
	cmp r1, r0
	bne _02097A18
	mov r0, #2
	str r0, [r6, #0]
	b _02097AE8
_02097A12:
	mov r0, #2
	str r0, [r6, #0]
	b _02097AE8
_02097A18:
	mov r0, #3
	str r0, [r6, #0]
	b _02097AE8
_02097A1E:
	ldrh r0, [r5]
	cmp r0, #1
	bne _02097A54
	ldr r1, [r4, #0x10]
	ldrh r0, [r1]
	cmp r0, #3
	bne _02097A50
	ldr r0, [r5, #0x14]
	bl sub_020978F0
	ldr r0, [r5, #0x10]
	bl sub_0202CD88
	mov r1, #2
	bl sub_0202CFEC
	ldr r0, [r5, #0x10]
	bl sub_0202CD88
	mov r1, #0x2d
	bl sub_0202CF28
	mov r0, #1
	str r0, [r5, #4]
	b _02097A54
_02097A50:
	mov r0, #0
	str r0, [r5, #4]
_02097A54:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02097A58:
	ldr r2, [r5, #0x10]
	ldr r3, [r4, #0]
	mov r0, #2
	mov r1, #0
	bl sub_0209747C
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	add r1, r0, #0
	ldrb r0, [r0, #2]
	add r1, #0x1a
	lsl r0, r0, #3
	add r0, r1, r0
	bl sub_02014BBC
	cmp r0, #0
	beq _02097A90
	ldr r1, [r4, #0x10]
	add r0, r4, #0
	add r2, r1, #0
	ldrb r1, [r1, #2]
	add r2, #0x1a
	add r0, #0x14
	lsl r1, r1, #3
	add r1, r2, r1
	bl sub_02014CC0
	b _02097A9A
_02097A90:
	add r0, r4, #0
	add r0, #0x14
	mov r1, #3
	bl sub_02014A9C
_02097A9A:
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0x14
	bl sub_02097500
	ldr r0, _02097AF4 ; =0x020F64A0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0]
	bl sub_020067E8
	str r0, [r4, #0xc]
	mov r0, #4
	str r0, [r6, #0]
	b _02097AE8
_02097AB6:
	add r0, r4, #0
	add r0, #0xc
	bl sub_02097920
	cmp r0, #0
	beq _02097AE8
	ldr r0, [r4, #8]
	bl sub_02097528
	cmp r0, #0
	bne _02097ADE
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #8]
	add r2, r1, #0
	ldrb r1, [r1, #2]
	add r2, #0x1a
	lsl r1, r1, #3
	add r1, r2, r1
	bl sub_02097540
_02097ADE:
	ldr r0, [r4, #8]
	bl sub_020974EC
	mov r0, #0
	str r0, [r6, #0]
_02097AE8:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02097AEC: .word 0x020F6490
_02097AF0: .word 0x0000FFFF
_02097AF4: .word 0x020F64A0
	thumb_func_end sub_020979A8

	thumb_func_start sub_02097AF8
sub_02097AF8: ; 0x02097AF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020978D8
	add r0, r5, #0
	bl sub_02006830
	ldr r0, [r4, #0]
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02097AF8

	.rodata


	.global Unk_020F6490
Unk_020F6490: ; 0x020F6490
	.incbin "incbin/arm9_rodata.bin", 0x11850, 0x11860 - 0x11850

	.global Unk_020F64A0
Unk_020F64A0: ; 0x020F64A0
	.incbin "incbin/arm9_rodata.bin", 0x11860, 0x11870 - 0x11860

	.global Unk_020F64B0
Unk_020F64B0: ; 0x020F64B0
	.incbin "incbin/arm9_rodata.bin", 0x11870, 0x10

