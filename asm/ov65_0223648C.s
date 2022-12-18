	.include "macros/function.inc"
	.include "include/ov65_0223648C.inc"

	

	.text


	thumb_func_start ov65_0223648C
ov65_0223648C: ; 0x0223648C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, _02236540 ; =0x0000003F
	mov r1, #2
	bl sub_02006590
	bl sub_020389B8
	cmp r0, #1
	beq _022364AA
	bl sub_02022974
_022364AA:
	mov r1, #0x60
	mov r0, #3
	lsl r2, r1, #0xa
	bl sub_02017FC8
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x61
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r1, #0x8a
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x60
	bl sub_0200681C
	mov r2, #0x8a
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #4
	bl sub_020C4CF4
	add r0, r4, #0
	add r0, #0x20
	mov r1, #1
	mov r2, #4
	bl sub_020C4CF4
	mov r0, #0x10
	mov r1, #0x60
	bl sub_0201DBEC
	bl sub_020388E8
	add r1, r0, #0
	str r0, [r4, #0]
	add r1, #0x22
	ldrb r1, [r1]
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	bl ov65_02236794
	strb r0, [r4, #4]
	mov r0, #0xff
	strb r0, [r4, #6]
	add r0, r4, #0
	bl sub_0209C390
	add r0, r4, #0
	bl ov65_0223760C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x60
	bl ov65_022367A8
	ldr r0, _02236544 ; =ov65_02236780
	add r1, r4, #0
	bl sub_02017798
	bl sub_02039734
	mov r0, #1
	add r4, #0x27
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	nop
_02236540: .word 0x0000003F
_02236544: .word ov65_02236780
	thumb_func_end ov65_0223648C

	thumb_func_start ov65_02236548
ov65_02236548: ; 0x02236548
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r7, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #4
	bls _02236566
	b _0223666E
_02236566:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236572: ; jump table
	.short _0223657C - _02236572 - 2 ; case 0
	.short _0223659A - _02236572 - 2 ; case 1
	.short _022365AA - _02236572 - 2 ; case 2
	.short _02236640 - _02236572 - 2 ; case 3
	.short _02236660 - _02236572 - 2 ; case 4
_0223657C:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223666E
_0223659A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223666E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223666E
_022365AA:
	add r0, r4, #0
	add r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	beq _022365BE
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x60
	bl ov65_02237370
_022365BE:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _022365F0
	bl sub_02032AAC
	cmp r0, #1
	bne _022365DC
	add r0, r4, #0
	bl ov65_02237970
	bl sub_02032CE8
	add r0, r4, #0
	bl ov65_0223782C
_022365DC:
	ldrb r3, [r4, #5]
	add r0, r4, #0
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02236684 ; =0x02239B80
	mov r2, #0x60
	ldr r3, [r3, r6]
	blx r3
	add r6, r0, #0
	b _02236612
_022365F0:
	ldrb r3, [r4, #5]
	add r0, r4, #0
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _02236688 ; =0x02239B08
	mov r2, #0x60
	ldr r3, [r3, r6]
	blx r3
	add r6, r0, #0
	bl sub_02032AAC
	cmp r0, #1
	bne _02236612
	add r0, r4, #0
	mov r1, #0x60
	bl ov65_02237860
_02236612:
	add r0, r4, #0
	bl ov65_02237660
	cmp r0, #0
	beq _02236626
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x60
	bl ov65_02237034
_02236626:
	add r0, r4, #0
	bl ov65_022377A4
	cmp r6, #1
	bne _0223666E
	ldrb r0, [r4, #7]
	strb r0, [r7, #3]
	ldrb r0, [r4, #0x11]
	strb r0, [r7, #4]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223666E
_02236640:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223666E
_02236660:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223666E
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223666E:
	add r0, r4, #0
	add r0, #0x30
	bl ov65_022372B0
	ldr r0, [r4, #0x48]
	bl sub_020219F8
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02236684: .word 0x02239B80
_02236688: .word 0x02239B08
	thumb_func_end ov65_02236548

	thumb_func_start ov65_0223668C
ov65_0223668C: ; 0x0223668C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov65_0223761C
	add r0, r4, #0
	bl ov65_022377E8
	add r0, r4, #0
	bl ov65_02237504
	add r0, r4, #0
	mov r1, #0x60
	bl ov65_022367F8
	bl sub_0201DC3C
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x61
	bl sub_0201807C
	mov r0, #0x60
	bl sub_0201807C
	ldr r0, _022366E0 ; =0x0000003F
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022366E0: .word 0x0000003F
	thumb_func_end ov65_0223668C

	thumb_func_start ov65_022366E4
ov65_022366E4: ; 0x022366E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	bne _02236742
	ldrh r6, [r4]
	bl sub_0203608C
	cmp r6, r0
	ldr r0, [r4, #4]
	bne _0223671C
	cmp r0, #0
	beq _02236710
	cmp r0, #1
	beq _0223670A
	cmp r0, #2
	beq _02236716
	pop {r4, r5, r6, pc}
_0223670A:
	mov r0, #1
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_02236710:
	mov r0, #2
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_02236716:
	mov r0, #3
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_0223671C:
	cmp r0, #0
	beq _02236734
	cmp r0, #1
	beq _0223672A
	cmp r0, #2
	beq _02236734
	pop {r4, r5, r6, pc}
_0223672A:
	add r0, r5, r6
	mov r1, #1
	add r0, #0x28
	strb r1, [r0]
	pop {r4, r5, r6, pc}
_02236734:
	bl sub_02032AAC
	cmp r0, #1
	bne _02236742
	ldrh r0, [r4]
	bl sub_02032D98
_02236742:
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_022366E4

	thumb_func_start ov65_02236744
ov65_02236744: ; 0x02236744
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223675C
	mov r1, #1
	add r0, #0x2c
	strb r1, [r0]
	mov r0, #0xd
	bl sub_020364F0
_0223675C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_02236744

	thumb_func_start ov65_02236760
ov65_02236760: ; 0x02236760
	ldrb r2, [r0, #4]
	cmp r2, #1
	beq _0223677C
	ldrb r2, [r1]
	add r3, r0, #0
	add r0, #0x20
	strb r2, [r0]
	ldrb r0, [r1, #1]
	add r3, #0x20
	strb r0, [r3, #1]
	ldrb r0, [r1, #2]
	strb r0, [r3, #2]
	ldrb r0, [r1, #3]
	strb r0, [r3, #3]
_0223677C:
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02236760

	thumb_func_start ov65_02236780
ov65_02236780: ; 0x02236780
	push {r3, lr}
	ldr r0, [r0, #0x30]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_02236780

	thumb_func_start ov65_02236794
ov65_02236794: ; 0x02236794
	push {r3, lr}
	bl sub_0203608C
	cmp r0, #0
	bne _022367A2
	mov r0, #1
	pop {r3, pc}
_022367A2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_02236794

	thumb_func_start ov65_022367A8
ov65_022367A8: ; 0x022367A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov65_02236820
	add r0, r5, #0
	add r0, #0x30
	add r1, r6, #0
	bl ov65_02236840
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_02236A28
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_02236C10
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_02236C7C
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_02237034
	add r5, #0x30
	add r0, r5, #0
	add r1, r6, #0
	bl ov65_02236D50
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_022367A8

	thumb_func_start ov65_022367F8
ov65_022367F8: ; 0x022367F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x30
	add r4, r1, #0
	bl ov65_02236E04
	add r0, r5, #0
	add r0, #0x30
	bl ov65_02236C5C
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	bl ov65_02236B90
	add r5, #0x30
	add r0, r5, #0
	bl ov65_022369F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022367F8

	thumb_func_start ov65_02236820
ov65_02236820: ; 0x02236820
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223683C ; =0x02239AB0
	add r3, sp, #0
	mov r2, #5
_0223682A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223682A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223683C: .word 0x02239AB0
	thumb_func_end ov65_02236820

	thumb_func_start ov65_02236840
ov65_02236840: ; 0x02236840
	push {r3, r4, r5, r6, lr}
	sub sp, #0x74
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02018340
	add r3, sp, #0x64
	ldr r6, _022369E0 ; =0x02239A3C
	str r0, [r5, #0]
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r6, _022369E4 ; =0x02239A78
	add r3, sp, #0x48
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_02019EBC
	ldr r6, _022369E8 ; =0x02239A5C
	add r3, sp, #0x2c
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019EBC
	ldr r6, _022369EC ; =0x02239A94
	add r3, sp, #0x10
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_02019EBC
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x5c
	add r1, r4, #0
	bl sub_02006C24
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0xd
	mov r2, #0
	mov r3, #0xa0
	add r6, r0, #0
	str r4, [sp, #4]
	bl sub_02007130
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0xc
	mov r3, #2
	bl sub_020070E8
	mov r3, #0x79
	lsl r3, r3, #2
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0
	add r3, r5, r3
	str r4, [sp]
	bl sub_020071D0
	mov r2, #0x1e
	lsl r2, r2, #4
	str r0, [r5, r2]
	add r2, #0x10
	add r0, r6, #0
	mov r1, #0x2c
	add r2, r5, r2
	add r3, r4, #0
	bl sub_020071EC
	mov r1, #0x7b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0x2d
	bl sub_020070E8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r6, #0
	mov r1, #0x2e
	bl sub_0200710C
	add r0, r5, #0
	mov r1, #0
	bl ov65_022372EC
	mov r0, #0x7d
	mov r1, #3
	lsl r0, r0, #2
	strh r1, [r5, r0]
	mov r1, #1
	add r0, r0, #2
	strh r1, [r5, r0]
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x74
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022369E0: .word 0x02239A3C
_022369E4: .word 0x02239A78
_022369E8: .word 0x02239A5C
_022369EC: .word 0x02239A94
	thumb_func_end ov65_02236840

	thumb_func_start ov65_022369F0
ov65_022369F0: ; 0x022369F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x7b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov65_022369F0

	thumb_func_start ov65_02236A28
ov65_02236A28: ; 0x02236A28
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0
	mov r1, #0x20
	add r4, r2, #0
	bl sub_02002E98
	ldr r0, [r6, #8]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r4, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #0]
	add r2, r1, #0
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #2
	mov r2, #0x30
	mov r3, #4
	bl sub_0200DAA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #1
	mov r1, #0x63
	lsl r1, r1, #2
	str r2, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x63
	lsl r0, r0, #2
	mov r1, #1
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #2
	bl sub_0200E060
	mov r2, #1
	mov r1, #0x67
	lsl r1, r1, #2
	str r2, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, r1
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	mov r1, #0xca
	str r1, [sp, #0x10]
	add r1, #0xe2
	ldr r0, [r5, #0]
	add r1, r5, r1
	bl sub_0201A7E8
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #5
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #1
	mov r1, #0x6f
	lsl r1, r1, #2
	str r2, [sp, #0xc]
	add r0, #0xfa
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r5, r1
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r1, #5
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r2, #1
	ldr r1, _02236B8C ; =0x000001A2
	str r2, [sp, #0xc]
	str r1, [sp, #0x10]
	add r1, #0x2a
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r3, #0x17
	bl sub_0201A7E8
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02236B8C: .word 0x000001A2
	thumb_func_end ov65_02236A28

	thumb_func_start ov65_02236B90
ov65_02236B90: ; 0x02236B90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov65_02236F38
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200E084
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
	mov r0, #0x77
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02236C0C
	add r1, r4, #0
	bl sub_02002154
_02236C0C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02236B90

	thumb_func_start ov65_02236C10
ov65_02236C10: ; 0x02236C10
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_0200B358
	str r0, [r5, #4]
	ldr r2, _02236C58 ; =0x000002A2
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	str r0, [r5, #8]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0xc]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r6, #0
	bl sub_02023790
	str r0, [r5, #0x10]
	mov r0, #0xff
	strb r0, [r5, #0x14]
	ldr r0, [r4, #8]
	bl sub_02025E44
	bl sub_02027AC0
	strh r0, [r5, #0x16]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02236C58: .word 0x000002A2
	thumb_func_end ov65_02236C10

	thumb_func_start ov65_02236C5C
ov65_02236C5C: ; 0x02236C5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl sub_020237BC
	ldr r0, [r4, #0xc]
	bl sub_020237BC
	ldr r0, [r4, #8]
	bl sub_0200B190
	ldr r0, [r4, #4]
	bl sub_0200B3F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02236C5C

	thumb_func_start ov65_02236C7C
ov65_02236C7C: ; 0x02236C7C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5]
	cmp r0, #3
	bhi _02236CC0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236C96: ; jump table
	.short _02236CC0 - _02236C96 - 2 ; case 0
	.short _02236C9E - _02236C96 - 2 ; case 1
	.short _02236CAA - _02236C96 - 2 ; case 2
	.short _02236CB6 - _02236C96 - 2 ; case 3
_02236C9E:
	mov r1, #0
	ldr r0, [r4, #4]
	add r2, r1, #0
	bl sub_0200C0B0
	b _02236CC0
_02236CAA:
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #1
	bl sub_0200C0B0
	b _02236CC0
_02236CB6:
	ldr r0, [r4, #4]
	mov r1, #0
	mov r2, #2
	bl sub_0200C0B0
_02236CC0:
	ldrb r2, [r5]
	ldr r1, _02236D44 ; =0x02239E5C
	ldr r0, [r4, #8]
	ldrb r1, [r1, r2]
	ldr r2, [r4, #0x10]
	bl sub_0200B1B8
	ldr r0, [r4, #4]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02236D48 ; =0x0001020F
	add r2, #0x9d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, r2
	ldr r2, [r4, #0xc]
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0x67
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	ldr r0, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r1, #0x80
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02236D4C ; =0x00010200
	add r2, #0xad
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, r2
	ldr r2, [r4, #0xc]
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02236D44: .word 0x02239E5C
_02236D48: .word 0x0001020F
_02236D4C: .word 0x00010200
	thumb_func_end ov65_02236C7C

	thumb_func_start ov65_02236D50
ov65_02236D50: ; 0x02236D50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r0, #0
	add r6, r1, #0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	add r2, r0, #0
	str r6, [sp, #0x10]
	bl sub_0200A784
	ldr r4, _02236DFC ; =0x02239A4C
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	ldr r1, _02236E00 ; =0x00200010
	mov r2, #0x10
	str r6, [sp, #0x20]
	bl sub_0201E88C
	mov r0, #4
	add r1, r6, #0
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	ldr r1, _02236E00 ; =0x00200010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	add r1, r7, #0
	mov r0, #4
	add r1, #0x1c
	add r2, r6, #0
	bl sub_020095C4
	str r0, [r7, #0x18]
	mov r4, #0
	add r5, r7, #0
_02236DBC:
	mov r0, #4
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02236DBC
	mov r0, #4
	add r1, r6, #0
	bl ov63_0222BE18
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r7, r1]
	str r6, [sp]
	ldr r0, [r7, #0x18]
	mov r1, #0
	mov r2, #4
	mov r3, #1
	bl ov63_0222CCE4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r7, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02236DFC: .word 0x02239A4C
_02236E00: .word 0x00200010
	thumb_func_end ov65_02236D50

	thumb_func_start ov65_02236E04
ov65_02236E04: ; 0x02236E04
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov63_0222CD9C
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov63_0222BE58
	ldr r0, [r5, #0x18]
	bl sub_02021964
	mov r6, #0x51
	mov r4, #0
	lsl r6, r6, #2
_02236E28:
	ldr r0, [r5, r6]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02236E28
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02236E04

	thumb_func_start ov65_02236E44
ov65_02236E44: ; 0x02236E44
	push {r3, lr}
	str r3, [sp]
	mov r3, #0
	bl ov65_02236E50
	pop {r3, pc}
	thumb_func_end ov65_02236E44

	thumb_func_start ov65_02236E50
ov65_02236E50: ; 0x02236E50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r1, #0
	add r6, r3, #0
	str r2, [sp, #0x10]
	cmp r0, #0xff
	beq _02236E74
	bl sub_0201D724
	cmp r0, #0
	beq _02236E74
	ldrb r0, [r5, #0x14]
	bl sub_0201D730
	mov r0, #0xff
	strb r0, [r5, #0x14]
_02236E74:
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #8
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	add r2, r7, #0
	bl sub_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	add r2, r7, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	ldrh r0, [r5, #0x16]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _02236EF4 ; =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r2, [r5, #0xc]
	add r0, r5, r0
	bl sub_0201D78C
	strb r0, [r5, #0x14]
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [r4, #8]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r2, r1, #0
	mov r3, #2
	bl sub_0200DD0C
	strb r6, [r5, #0x15]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02236EF4: .word 0x0001020F
	thumb_func_end ov65_02236E50

	thumb_func_start ov65_02236EF8
ov65_02236EF8: ; 0x02236EF8
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	bne _02236F10
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	beq _02236F22
	sub r0, r0, #1
	strb r0, [r4, #0x15]
	mov r0, #0
	pop {r4, pc}
_02236F10:
	bl sub_0201D724
	cmp r0, #0
	bne _02236F22
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	beq _02236F22
	mov r0, #0xff
	strb r0, [r4, #0x14]
_02236F22:
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	bne _02236F32
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _02236F32
	mov r0, #1
	pop {r4, pc}
_02236F32:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02236EF8

	thumb_func_start ov65_02236F38
ov65_02236F38: ; 0x02236F38
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	cmp r0, #0xff
	beq _02236F54
	bl sub_0201D724
	cmp r0, #0
	beq _02236F50
	ldrb r0, [r4, #0x14]
	bl sub_0201D730
_02236F50:
	mov r0, #0xff
	strb r0, [r4, #0x14]
_02236F54:
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A9A4
	mov r0, #0
	strb r0, [r4, #0x15]
	pop {r4, pc}
	thumb_func_end ov65_02236F38

	thumb_func_start ov65_02236F70
ov65_02236F70: ; 0x02236F70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #1
	add r4, r3, #0
	str r1, [sp, #0x10]
	lsl r0, r0, #8
	add r1, r4, #0
	str r2, [sp, #0x14]
	bl sub_02023790
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	add r1, r4, #0
	bl sub_02023790
	add r7, r0, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	mov r3, #0
	str r4, [sp]
	bl ov65_0223726C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	str r4, [sp]
	add r0, r5, #0
	mov r3, #1
	bl ov65_02237284
	ldr r0, [r5, #8]
	mov r1, #0x83
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #4]
	add r1, r7, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02237014 ; =0x0001020F
	add r2, #0xcd
	str r0, [sp, #8]
	add r0, r5, r2
	add r2, r7, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237014: .word 0x0001020F
	thumb_func_end ov65_02236F70

	thumb_func_start ov65_02237018
ov65_02237018: ; 0x02237018
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x73
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201AD10
	pop {r4, pc}
	thumb_func_end ov65_02237018

	thumb_func_start ov65_02237034
ov65_02237034: ; 0x02237034
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp, #4]
	add r7, r1, #0
	add r5, r2, #0
	bl sub_02032AAC
	cmp r0, #0
	beq _02237096
	ldr r6, [sp, #4]
	mov r4, #0
	add r6, #0x30
_0223704C:
	cmp r4, #0
	bne _0223706A
	add r0, r4, #0
	bl sub_02032DE0
	cmp r0, #1
	bne _0223706A
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	str r5, [sp]
	bl ov65_0223709C
	b _02237090
_0223706A:
	add r0, r4, #0
	bl sub_02032E00
	cmp r0, #1
	bne _02237084
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	str r5, [sp]
	bl ov65_0223709C
	b _02237090
_02237084:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl ov65_022371FC
_02237090:
	add r4, r4, #1
	cmp r4, #4
	blt _0223704C
_02237096:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02237034

	thumb_func_start ov65_0223709C
ov65_0223709C: ; 0x0223709C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r7, [sp, #0x40]
	str r0, [sp, #0x1c]
	mov r0, #1
	add r5, r1, #0
	lsl r0, r0, #8
	add r1, r7, #0
	str r2, [sp, #0x20]
	add r4, r3, #0
	bl sub_02023790
	str r0, [sp, #0x28]
	mov r0, #1
	lsl r0, r0, #8
	add r1, r7, #0
	bl sub_02023790
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r7, [sp]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov65_0223726C
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x28]
	mov r1, #0x81
	bl sub_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl sub_0200C388
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0x10
	lsl r6, r4, #4
	str r0, [sp, #4]
	mov r0, #0x6f
	lsl r0, r0, #2
	lsl r3, r6, #0x10
	add r0, r5, r0
	mov r1, #0xf
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r1, #0
	str r6, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022371F8 ; =0x0001020F
	add r2, #0xbd
	str r0, [sp, #8]
	add r0, r5, r2
	ldr r2, [sp, #0x24]
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r1, [sp, #0x20]
	str r7, [sp]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov65_02237284
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x28]
	mov r1, #0x82
	bl sub_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl sub_0200C388
	str r6, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _022371F8 ; =0x0001020F
	add r2, #0xbd
	str r0, [sp, #8]
	add r0, r5, r2
	mov r1, #0
	ldr r2, [sp, #0x24]
	mov r3, #0x48
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	bl sub_0203608C
	cmp r4, r0
	bne _0223717C
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0
	beq _02237178
	mov r2, #2
	b _0223718E
_02237178:
	mov r2, #1
	b _0223718E
_0223717C:
	ldr r0, [sp, #0x1c]
	add r0, r0, r4
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223718C
	mov r2, #2
	b _0223718E
_0223718C:
	mov r2, #1
_0223718E:
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r1, r4, #1
	add r4, r1, #5
	mov r1, #2
	str r1, [sp]
	add r3, r0, #0
	lsl r2, r2, #0x19
	str r1, [sp, #4]
	add r3, #0xc
	str r3, [sp, #8]
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	mov r2, #0
	str r2, [sp, #0x10]
	ldrh r2, [r0]
	lsl r3, r4, #0x18
	lsr r3, r3, #0x18
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r2, #0x12
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	bl sub_020198E8
	mov r1, #2
	str r1, [sp]
	lsl r3, r4, #0x18
	str r1, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	mov r2, #0x12
	lsr r3, r3, #0x18
	bl sub_02019E2C
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022371F8: .word 0x0001020F
	thumb_func_end ov65_0223709C

	thumb_func_start ov65_022371FC
ov65_022371FC: ; 0x022371FC
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0xa0
	add r4, r2, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x6f
	lsl r0, r0, #2
	lsl r3, r4, #0x14
	add r0, r5, r0
	mov r1, #0xf
	mov r2, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r0, #0x79
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	str r1, [sp]
	add r2, r0, #0
	lsl r3, r4, #1
	add r3, r3, #5
	lsl r3, r3, #0x18
	str r1, [sp, #4]
	add r2, #0xc
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r2, [r0]
	lsr r3, r3, #0x18
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r2, #0x12
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0]
	bl sub_020198E8
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_0201C3C0
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov65_022371FC

	thumb_func_start ov65_0223726C
ov65_0223726C: ; 0x0223726C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r3, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0200B498
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_0223726C

	thumb_func_start ov65_02237284
ov65_02237284: ; 0x02237284
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r2, #0
	add r4, r3, #0
	bl sub_02032EE8
	bl sub_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r1, r4, #0
	mov r3, #5
	bl sub_0200B60C
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02237284

	thumb_func_start ov65_022372B0
ov65_022372B0: ; 0x022372B0
	push {r4, lr}
	mov r1, #0x7d
	add r4, r0, #0
	lsl r1, r1, #2
	ldrsh r2, [r4, r1]
	cmp r2, #0
	bgt _022372E0
	add r1, r1, #2
	ldrsh r1, [r4, r1]
	bl ov65_022372EC
	mov r0, #0x7d
	mov r1, #3
	lsl r0, r0, #2
	strh r1, [r4, r0]
	add r0, r0, #2
	ldrsh r0, [r4, r0]
	mov r1, #0x12
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, _022372E8 ; =0x000001F6
	strh r1, [r4, r0]
	pop {r4, pc}
_022372E0:
	sub r0, r2, #1
	strh r0, [r4, r1]
	pop {r4, pc}
	nop
_022372E8: .word 0x000001F6
	thumb_func_end ov65_022372B0

	thumb_func_start ov65_022372EC
ov65_022372EC: ; 0x022372EC
	push {r4, lr}
	mov r2, #0x1f
	add r3, r0, #0
	lsl r2, r2, #4
	ldr r2, [r3, r2]
	add r4, r1, #0
	ldr r3, [r2, #0xc]
	ldr r2, _02237318 ; =0x02239C04
	mov r0, #0xf
	ldrb r2, [r2, r4]
	mov r1, #0
	lsl r2, r2, #5
	add r2, r3, r2
	mov r3, #0x20
	bl sub_0201DC68
	cmp r0, #0
	bne _02237314
	bl sub_02022974
_02237314:
	pop {r4, pc}
	nop
_02237318: .word 0x02239C04
	thumb_func_end ov65_022372EC

	thumb_func_start ov65_0223731C
ov65_0223731C: ; 0x0223731C
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0]
	add r0, r2, #0
	add r0, #0x22
	ldrb r1, [r0]
	mov r0, #1
	add r2, #0x22
	sub r0, r0, r1
	strb r0, [r2]
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x22
	ldrb r0, [r0]
	add r1, #0x21
	strb r0, [r1]
	ldr r0, [r4, #0]
	add r0, #0x21
	ldrb r0, [r0]
	bl ov4_021D2584
	ldr r0, [r4, #0]
	mov r1, #0x24
	bl ov4_021D222C
	ldr r0, [r4, #0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _02237360
	add r0, r4, #0
	bl ov65_02237520
	b _02237366
_02237360:
	add r0, r4, #0
	bl ov65_02237534
_02237366:
	ldr r0, [r4, #0]
	add r0, #0x22
	ldrb r0, [r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0223731C

	thumb_func_start ov65_02237370
ov65_02237370: ; 0x02237370
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldrb r0, [r4, #5]
	beq _022373A4
	add r0, #0xe5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	bls _02237428
	bl sub_020380E4
	cmp r0, #2
	bgt _022373BA
	add r0, r4, #0
	bl ov65_02237548
	cmp r0, #1
	bgt _022373BA
	add r0, r4, #0
	bl ov65_02237450
	cmp r0, #0
	bne _022373BA
	pop {r3, r4, r5, r6, r7, pc}
_022373A4:
	cmp r0, #0xf
	beq _02237428
	cmp r0, #0x10
	beq _02237428
	cmp r0, #0x11
	beq _02237428
	add r0, #0xfa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bls _02237428
_022373BA:
	add r0, r4, #0
	bl ov65_02237A54
	add r6, r0, #0
	add r0, r4, #0
	bl ov65_02237628
	add r7, r0, #0
	add r0, r4, #0
	bl ov65_02237548
	add r5, r0, #0
	bl sub_02035E18
	cmp r5, r0
	ble _022373DE
	mov r5, #1
	b _022373E0
_022373DE:
	mov r5, #0
_022373E0:
	bl sub_020380E4
	cmp r0, #3
	bge _02237418
	bl sub_020383E8
	cmp r0, #0
	bne _02237418
	bl sub_02038284
	cmp r0, #0
	bne _02237418
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	beq _02237418
	add r0, r4, #0
	bl ov65_02237450
	cmp r0, #0
	beq _02237418
	cmp r5, #1
	beq _02237418
	cmp r6, #1
	beq _02237418
	cmp r7, #1
	bne _02237428
_02237418:
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq _02237424
	mov r0, #0x1b
	strb r0, [r4, #5]
	pop {r3, r4, r5, r6, r7, pc}
_02237424:
	mov r0, #0xf
	strb r0, [r4, #5]
_02237428:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02237370

	thumb_func_start ov65_0223742C
ov65_0223742C: ; 0x0223742C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020380E4
	cmp r0, #3
	bgt _02237448
	bl sub_02038284
	cmp r0, #0
	bne _02237448
	bl sub_020383E8
	cmp r0, #0
	beq _0223744C
_02237448:
	mov r0, #0xf
	strb r0, [r4, #5]
_0223744C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0223742C

	thumb_func_start ov65_02237450
ov65_02237450: ; 0x02237450
	push {r3, lr}
	bl sub_02035E18
	cmp r0, #0
	ble _0223745E
	mov r0, #1
	pop {r3, pc}
_0223745E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_02237450

	thumb_func_start ov65_02237464
ov65_02237464: ; 0x02237464
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_020380A0
	add r5, r0, #0
	cmp r5, #1
	bne _02237494
	cmp r4, #3
	bhi _02237494
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02237482: ; jump table
	.short _0223748A - _02237482 - 2 ; case 0
	.short _02237490 - _02237482 - 2 ; case 1
	.short _02237490 - _02237482 - 2 ; case 2
	.short _02237490 - _02237482 - 2 ; case 3
_0223748A:
	bl sub_02038B00
	b _02237494
_02237490:
	bl sub_02038B20
_02237494:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02237464

	thumb_func_start ov65_02237498
ov65_02237498: ; 0x02237498
	ldrb r1, [r1]
	cmp r1, #3
	bhi _022374D0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022374AA: ; jump table
	.short _022374B2 - _022374AA - 2 ; case 0
	.short _022374BA - _022374AA - 2 ; case 1
	.short _022374C2 - _022374AA - 2 ; case 2
	.short _022374CA - _022374AA - 2 ; case 3
_022374B2:
	ldr r1, [r0, #0]
	mov r2, #0x12
	strb r2, [r1, #0x1b]
	b _022374D0
_022374BA:
	ldr r1, [r0, #0]
	mov r2, #0x16
	strb r2, [r1, #0x1b]
	b _022374D0
_022374C2:
	ldr r1, [r0, #0]
	mov r2, #0x18
	strb r2, [r1, #0x1b]
	b _022374D0
_022374CA:
	ldr r1, [r0, #0]
	mov r2, #0x1a
	strb r2, [r1, #0x1b]
_022374D0:
	ldr r3, _022374D8 ; =ov4_021D222C
	ldr r0, [r0, #0]
	mov r1, #0x24
	bx r3
	; .align 2, 0
_022374D8: .word ov4_021D222C
	thumb_func_end ov65_02237498

	thumb_func_start ov65_022374DC
ov65_022374DC: ; 0x022374DC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x11]
	cmp r1, #1
	bne _022374EA
	mov r0, #0
	pop {r4, pc}
_022374EA:
	bl ov65_02237450
	cmp r0, #1
	bne _022374FE
	mov r0, #0x61
	bl ov4_021D1E74
	mov r0, #1
	strb r0, [r4, #0x11]
	pop {r4, pc}
_022374FE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_022374DC

	thumb_func_start ov65_02237504
ov65_02237504: ; 0x02237504
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _02237512
	mov r0, #0
	pop {r4, pc}
_02237512:
	bl ov4_021D1F18
	mov r0, #0
	strb r0, [r4, #0x11]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237504

	thumb_func_start ov65_02237520
ov65_02237520: ; 0x02237520
	push {r3, lr}
	bl ov65_022374DC
	cmp r0, #0
	beq _02237532
	bl sub_020041FC
	bl sub_02004A84
_02237532:
	pop {r3, pc}
	thumb_func_end ov65_02237520

	thumb_func_start ov65_02237534
ov65_02237534: ; 0x02237534
	push {r3, lr}
	bl ov65_02237504
	cmp r0, #0
	beq _02237546
	mov r0, #0
	mov r1, #0x78
	bl sub_02004A68
_02237546:
	pop {r3, pc}
	thumb_func_end ov65_02237534

	thumb_func_start ov65_02237548
ov65_02237548: ; 0x02237548
	ldr r3, _0223754C ; =sub_02032E64
	bx r3
	; .align 2, 0
_0223754C: .word sub_02032E64
	thumb_func_end ov65_02237548

	thumb_func_start ov65_02237550
ov65_02237550: ; 0x02237550
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r7, #1
	bl sub_0203608C
	sub r4, r0, #1
	bmi _02237586
_02237560:
	add r0, r4, #0
	bl sub_02032DC4
	cmp r0, #1
	bne _02237576
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022376A0
	b _02237582
_02237576:
	add r0, r4, #0
	bl sub_02032E00
	cmp r0, #0
	bne _02237582
	mov r7, #0
_02237582:
	sub r4, r4, #1
	bpl _02237560
_02237586:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02237550

	thumb_func_start ov65_0223758C
ov65_0223758C: ; 0x0223758C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #0
	str r0, [sp, #4]
	mov r5, #1
	mov r6, #0x16
	add r7, sp, #0
	add r4, sp, #0
_0223759C:
	add r0, r5, #0
	bl sub_02032DC4
	cmp r0, #1
	bne _022375C0
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #8
	strh r5, [r4]
	bl sub_020359DC
	cmp r0, #1
	beq _022375BA
	bl sub_02022974
_022375BA:
	add r0, r5, #0
	bl sub_02032D98
_022375C0:
	add r5, r5, #1
	cmp r5, #4
	blt _0223759C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_0223758C

	thumb_func_start ov65_022375CC
ov65_022375CC: ; 0x022375CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r0, #0
	str r0, [sp, #4]
	mov r5, #1
	mov r6, #0x16
	add r7, sp, #0
	add r4, sp, #0
_022375DC:
	add r0, r5, #0
	bl sub_02032DE0
	cmp r0, #1
	bne _02237600
	add r0, r6, #0
	add r1, r7, #0
	mov r2, #8
	strh r5, [r4]
	bl sub_020359DC
	cmp r0, #1
	beq _022375FA
	bl sub_02022974
_022375FA:
	add r0, r5, #0
	bl sub_02032D98
_02237600:
	add r5, r5, #1
	cmp r5, #4
	blt _022375DC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_022375CC

	thumb_func_start ov65_0223760C
ov65_0223760C: ; 0x0223760C
	ldr r3, _02237614 ; =ov4_021D1120
	add r1, r0, #0
	ldr r0, _02237618 ; =ov65_02237654
	bx r3
	; .align 2, 0
_02237614: .word ov4_021D1120
_02237618: .word ov65_02237654
	thumb_func_end ov65_0223760C

	thumb_func_start ov65_0223761C
ov65_0223761C: ; 0x0223761C
	ldr r3, _02237624 ; =ov4_021D1120
	mov r0, #0
	add r1, r0, #0
	bx r3
	; .align 2, 0
_02237624: .word ov4_021D1120
	thumb_func_end ov65_0223761C

	thumb_func_start ov65_02237628
ov65_02237628: ; 0x02237628
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	add r6, r0, #0
	add r4, r7, #0
_02237630:
	add r5, r6, r4
	ldrb r0, [r5, #0x14]
	cmp r0, #1
	bne _0223764A
	ldrb r0, [r5, #0x18]
	bl sub_02032E00
	cmp r0, #1
	bne _02237644
	mov r7, #1
_02237644:
	mov r0, #0
	strb r0, [r5, #0x14]
	strb r0, [r5, #0x18]
_0223764A:
	add r4, r4, #1
	cmp r4, #4
	blt _02237630
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02237628

	thumb_func_start ov65_02237654
ov65_02237654: ; 0x02237654
	mov r2, #1
	add r1, r1, r0
	strb r2, [r1, #0x14]
	strb r0, [r1, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02237654

	thumb_func_start ov65_02237660
ov65_02237660: ; 0x02237660
	push {r3, r4, r5, r6}
	mov r4, #0
	add r3, r4, #0
	mov r2, #1
_02237668:
	add r6, r0, r3
	add r1, r6, #0
	add r1, #0x20
	ldrb r5, [r1]
	ldrb r1, [r6, #0x1c]
	cmp r1, r5
	beq _02237678
	add r4, r2, #0
_02237678:
	add r3, r3, #1
	strb r5, [r6, #0x1c]
	cmp r3, #4
	blt _02237668
	add r1, r0, #0
	add r1, #0x24
	ldrb r1, [r1]
	cmp r1, #0
	beq _02237692
	mov r1, #0
	add r0, #0x24
	strb r1, [r0]
	mov r4, #1
_02237692:
	add r0, r4, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov65_02237660

	thumb_func_start ov65_02237698
ov65_02237698: ; 0x02237698
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	bx lr
	thumb_func_end ov65_02237698

	thumb_func_start ov65_022376A0
ov65_022376A0: ; 0x022376A0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl sub_02032E00
	cmp r0, #0
	bne _022376CE
	add r0, r4, #0
	bl sub_02032E1C
	add r0, r5, #0
	add r0, #0x25
	strb r4, [r0]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022376D0
	add r0, r5, #0
	bl ov65_02237698
_022376CE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_022376A0

	thumb_func_start ov65_022376D0
ov65_022376D0: ; 0x022376D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	mov r0, #0xc
	add r4, r6, #0
	mul r4, r0
	mov r0, #0x63
	lsl r0, r0, #2
	add r7, r5, r0
	ldr r0, [r7, r4]
	str r2, [sp]
	cmp r0, #0
	bne _0223779C
	ldr r1, _022377A0 ; =0x02239AD8
	ldrh r2, [r1, r4]
	add r0, r1, r4
	add r1, sp, #4
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r2, [r0, #4]
	strh r2, [r1, #4]
	ldrh r2, [r0, #6]
	strh r2, [r1, #6]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #0xa]
	bl sub_0203608C
	cmp r6, r0
	beq _0223772C
	add r0, r6, #0
	bl sub_02032EE8
	add r6, r0, #0
	bne _02237720
	bl sub_02022974
_02237720:
	add r0, r6, #0
	bl sub_02025F8C
	add r1, sp, #4
	strh r0, [r1, #0xa]
	b _02237740
_0223772C:
	ldr r0, [r5, #0]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	add r0, sp, #4
	bne _0223773C
	mov r1, #0
	strh r1, [r0, #0xa]
	b _02237740
_0223773C:
	mov r1, #0x61
	strh r1, [r0, #0xa]
_02237740:
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #4
	bl ov63_0222BEC0
	str r0, [r7, r4]
	mov r0, #0x62
	add r1, sp, #4
	lsl r0, r0, #2
	ldrh r1, [r1, #0xa]
	ldr r0, [r5, r0]
	bl ov63_0222CE18
	cmp r0, #0
	bne _02237772
	mov r0, #0x62
	add r1, sp, #4
	lsl r0, r0, #2
	ldrh r1, [r1, #0xa]
	ldr r0, [r5, r0]
	ldr r3, [sp]
	mov r2, #2
	bl ov63_0222CDE8
_02237772:
	mov r0, #0x19
	lsl r0, r0, #4
	add r6, r5, r0
	sub r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r7, r4]
	ldr r3, [sp]
	mov r2, #0
	bl ov63_0222CE44
	str r0, [r6, r4]
	ldr r0, [r6, r4]
	mov r1, #0
	bl ov63_0222D008
	mov r0, #0x65
	lsl r0, r0, #2
	add r1, r5, r0
	ldrh r0, [r1, r4]
	add r0, r0, #1
	strh r0, [r1, r4]
_0223779C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022377A0: .word 0x02239AD8
	thumb_func_end ov65_022376D0

	thumb_func_start ov65_022377A4
ov65_022377A4: ; 0x022377A4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x63
	lsl r0, r0, #2
	mov r6, #0
	add r4, r7, r0
	add r5, r7, #0
_022377B2:
	mov r2, #0x65
	lsl r2, r2, #2
	ldrh r2, [r5, r2]
	add r0, r7, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _022377E4 ; =0x02239A2C
	ldr r2, [r2, r3]
	blx r2
	add r6, r6, #1
	add r4, #0xc
	add r5, #0xc
	cmp r6, #4
	blt _022377B2
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl ov63_0222BE84
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl ov63_0222CEE4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022377E4: .word 0x02239A2C
	thumb_func_end ov65_022377A4

	thumb_func_start ov65_022377E8
ov65_022377E8: ; 0x022377E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov63_0222CE24
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_022377E8

	thumb_func_start ov65_02237808
ov65_02237808: ; 0x02237808
	push {r3, lr}
	sub sp, #8
	add r0, sp, #0
	strh r1, [r0]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x16
	add r1, sp, #0
	mov r2, #8
	bl sub_020359DC
	cmp r0, #1
	beq _02237826
	bl sub_02022974
_02237826:
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov65_02237808

	thumb_func_start ov65_0223782C
ov65_0223782C: ; 0x0223782C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02237832:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	add r0, r0, #1
	cmp r0, r4
	bge _02237856
	add r0, r4, #0
	bl sub_02032DC4
	cmp r0, #1
	bne _02237856
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_02237808
	add r0, r4, #0
	bl sub_02032D98
_02237856:
	add r4, r4, #1
	cmp r4, #4
	blt _02237832
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0223782C

	thumb_func_start ov65_02237860
ov65_02237860: ; 0x02237860
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r4, #0
_0223786A:
	add r0, r5, r4
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _02237892
	add r0, r4, #0
	bl sub_02032DE0
	cmp r0, #1
	bne _02237892
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022376A0
	add r0, r5, r4
	add r0, #0x28
	strb r7, [r0]
	mov r0, #1
	strb r0, [r5, #0x12]
_02237892:
	add r4, r4, #1
	cmp r4, #4
	blt _0223786A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov65_02237860

	thumb_func_start ov65_0223789C
ov65_0223789C: ; 0x0223789C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022378AE
	bl sub_02022974
_022378AE:
	mov r0, #0x6f
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E7FC
	mov r1, #0x86
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0223789C

	thumb_func_start ov65_022378C4
ov65_022378C4: ; 0x022378C4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #0
	beq _02237902
	bl sub_0200EBA0
	mov r0, #0x86
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	str r6, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #0x30]
	add r2, r1, #0
	mov r3, #2
	bl sub_0200DD0C
_02237902:
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_022378C4

	thumb_func_start ov65_02237908
ov65_02237908: ; 0x02237908
	bx lr
	; .align 2, 0
	thumb_func_end ov65_02237908

	thumb_func_start ov65_0223790C
ov65_0223790C: ; 0x0223790C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov63_0222CFA4
	ldr r0, [r4, #4]
	bl ov63_0222CFA8
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov63_0222D008
	mov r0, #2
	strh r0, [r4, #8]
	ldr r0, [r4, #0]
	mov r1, #6
	bl ov63_0222BF90
	ldr r1, _0223793C ; =0x02239A20
	ldrb r0, [r1, r0]
	add r0, #0x10
	strh r0, [r4, #0xa]
	pop {r4, pc}
	; .align 2, 0
_0223793C: .word 0x02239A20
	thumb_func_end ov65_0223790C

	thumb_func_start ov65_02237940
ov65_02237940: ; 0x02237940
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	bl ov63_0222CFB4
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #0xa]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0223796A
	ldr r0, [r4, #4]
	bl ov63_0222CFC0
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov63_0222CFA4
	mov r0, #3
	strh r0, [r4, #8]
_0223796A:
	pop {r4, pc}
	thumb_func_end ov65_02237940

	thumb_func_start ov65_0223796C
ov65_0223796C: ; 0x0223796C
	bx lr
	; .align 2, 0
	thumb_func_end ov65_0223796C

	thumb_func_start ov65_02237970
ov65_02237970: ; 0x02237970
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	bl sub_02032AAC
	cmp r0, #0
	beq _02237A0C
	bl sub_02032E64
	add r7, r0, #0
	bl sub_02032D84
	cmp r0, #0
	beq _0223799E
	mov r0, #5
	bl sub_02036254
	cmp r0, #0
	bne _0223799E
	mov r0, #1
	str r0, [sp]
_0223799E:
	mov r4, #0
	cmp r7, #0
	ble _022379E6
_022379A4:
	cmp r4, #0
	bne _022379B0
	ldr r0, [r5, #0]
	add r0, #0x21
	ldrb r0, [r0]
	b _022379CC
_022379B0:
	add r0, r4, #0
	bl sub_02032F40
	add r6, r0, #0
	cmp r6, #0x20
	bne _022379C0
	bl sub_02022974
_022379C0:
	mov r0, #0x24
	ldr r1, [r5, #0]
	mul r0, r6
	add r0, r1, r0
	add r0, #0x45
	ldrb r0, [r0]
_022379CC:
	add r1, r5, r4
	add r1, #0x20
	ldrb r1, [r1]
	cmp r0, r1
	beq _022379DA
	mov r1, #1
	str r1, [sp]
_022379DA:
	add r1, r5, r4
	add r1, #0x20
	add r4, r4, #1
	strb r0, [r1]
	cmp r4, r7
	blt _022379A4
_022379E6:
	ldr r0, [sp]
	cmp r0, #1
	bne _02237A0C
	add r2, r5, #0
	add r5, #0x20
	ldrb r0, [r5]
	add r1, sp, #4
	add r2, #0x20
	strb r0, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r1, #1]
	ldrb r0, [r2, #2]
	strb r0, [r1, #2]
	ldrb r0, [r2, #3]
	mov r2, #4
	strb r0, [r1, #3]
	mov r0, #0x18
	bl sub_020359DC
_02237A0C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02237970

	thumb_func_start ov65_02237A10
ov65_02237A10: ; 0x02237A10
	push {r3, lr}
	mov r0, #0xd
	bl sub_02036540
	cmp r0, #0
	beq _02237A20
	mov r0, #1
	pop {r3, pc}
_02237A20:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov65_02237A10

	thumb_func_start ov65_02237A24
ov65_02237A24: ; 0x02237A24
	push {r3, r4, r5, lr}
	ldr r0, [r0, #8]
	add r5, r1, #0
	bl sub_0202B628
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x1d
	bl sub_0202C244
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl sub_0202B758
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02237A24

	thumb_func_start ov65_02237A44
ov65_02237A44: ; 0x02237A44
	mov r1, #1
	strb r1, [r0, #0x10]
	ldr r1, _02237A50 ; =0x00000708
	str r1, [r0, #0xc]
	bx lr
	nop
_02237A50: .word 0x00000708
	thumb_func_end ov65_02237A44

	thumb_func_start ov65_02237A54
ov65_02237A54: ; 0x02237A54
	ldrb r1, [r0, #0x10]
	cmp r1, #0
	bne _02237A5E
	mov r0, #0
	bx lr
_02237A5E:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ble _02237A6C
	sub r1, r1, #1
	str r1, [r0, #0xc]
	mov r0, #0
	bx lr
_02237A6C:
	mov r0, #1
	bx lr
	thumb_func_end ov65_02237A54

	thumb_func_start ov65_02237A70
ov65_02237A70: ; 0x02237A70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	add r4, r2, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #1
	bne _02237A84
	bl ov65_02237520
_02237A84:
	mov r0, #0
	bl ov4_021D26EC
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl sub_0203608C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov65_022376D0
	mov r0, #1
	strb r0, [r5, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02237A70

	thumb_func_start ov65_02237AA8
ov65_02237AA8: ; 0x02237AA8
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x6b
	bl ov65_02236E44
	mov r0, #2
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237AA8

	thumb_func_start ov65_02237AC0
ov65_02237AC0: ; 0x02237AC0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x30
	add r6, r1, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237AD8
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_02237AD8:
	add r0, r5, #0
	bl ov65_02237450
	cmp r0, #1
	bne _02237B1E
	bl sub_02032E44
	add r4, r0, #0
	cmp r4, #0xff
	beq _02237B1E
	ldrb r1, [r5, #6]
	cmp r1, #0
	beq _02237B1E
	bl sub_02032F40
	cmp r0, #0x20
	bne _02237B1C
	add r0, sp, #0
	strh r4, [r0]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02032D98
	mov r0, #0x16
	add r1, sp, #0
	mov r2, #8
	bl sub_020359DC
	cmp r0, #1
	beq _02237B1E
	bl sub_02022974
	b _02237B1E
_02237B1C:
	strb r4, [r5, #6]
_02237B1E:
	ldr r0, _02237B94 ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _02237B56
	ldr r0, _02237B98 ; =0x000005DD
	bl sub_02005748
	add r0, r5, #0
	bl ov65_02237450
	cmp r0, #0
	bne _02237B3E
	mov r0, #6
	strb r0, [r5, #5]
	b _02237B8C
_02237B3E:
	add r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r6, #1]
	cmp r1, r0
	bgt _02237B50
	mov r0, #8
	strb r0, [r5, #5]
	b _02237B8C
_02237B50:
	mov r0, #6
	strb r0, [r5, #5]
	b _02237B8C
_02237B56:
	mov r1, #2
	add r2, r0, #0
	tst r2, r1
	beq _02237B6A
	ldr r0, _02237B98 ; =0x000005DD
	bl sub_02005748
	mov r0, #0x16
	strb r0, [r5, #5]
	b _02237B8C
_02237B6A:
	ldrb r2, [r5, #6]
	cmp r2, #0xff
	beq _02237B7C
	ldr r0, _02237B98 ; =0x000005DD
	bl sub_02005748
	mov r0, #3
	strb r0, [r5, #5]
	b _02237B8C
_02237B7C:
	lsl r1, r1, #9
	tst r0, r1
	beq _02237B8C
	mov r0, #0x1e
	strb r0, [r5, #5]
	ldr r0, _02237B98 ; =0x000005DD
	bl sub_02005748
_02237B8C:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02237B94: .word 0x021BF67C
_02237B98: .word 0x000005DD
	thumb_func_end ov65_02237AC0

	thumb_func_start ov65_02237B9C
ov65_02237B9C: ; 0x02237B9C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	ldrb r2, [r5, #6]
	add r0, #0x30
	add r3, r6, #0
	add r4, r1, #0
	bl ov65_02236F70
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	mov r2, #0x6c
	add r3, r6, #0
	bl ov65_02236E44
	mov r0, #4
	strb r0, [r5, #5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02237B9C

	thumb_func_start ov65_02237BC4
ov65_02237BC4: ; 0x02237BC4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x30
	add r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237BD8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237BD8:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _02237BF4 ; =0x02239A24
	mov r2, #0x30
	mov r3, #4
	bl sub_02002100
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #5
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237BF4: .word 0x02239A24
	thumb_func_end ov65_02237BC4

	thumb_func_start ov65_02237BF8
ov65_02237BF8: ; 0x02237BF8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	add r6, r2, #0
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02237C90
	ldrb r2, [r5, #6]
	add r1, sp, #0
	cmp r0, #0
	strh r2, [r1]
	bne _02237C5C
	mov r0, #1
	str r0, [sp, #4]
	ldrb r1, [r5, #6]
	add r0, r5, #0
	add r2, r6, #0
	bl ov65_022376A0
	ldr r0, [r5, #0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _02237C44
	add r0, r5, #0
	bl ov65_02237504
	add r0, r5, #0
	bl ov65_02237520
_02237C44:
	add r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02237C56
	mov r0, #8
	strb r0, [r5, #5]
	b _02237C6A
_02237C56:
	mov r0, #1
	strb r0, [r5, #5]
	b _02237C6A
_02237C5C:
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r5, #6]
	bl sub_02032D98
	mov r0, #1
	strb r0, [r5, #5]
_02237C6A:
	mov r0, #0x16
	add r1, sp, #0
	mov r2, #8
	bl sub_020359DC
	cmp r0, #1
	beq _02237C7C
	bl sub_02022974
_02237C7C:
	mov r0, #0xff
	strb r0, [r5, #6]
	add r0, r5, #0
	add r0, #0x30
	bl ov65_02237018
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02237C90:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02237BF8

	thumb_func_start ov65_02237C98
ov65_02237C98: ; 0x02237C98
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x77
	bl ov65_02236E44
	mov r0, #7
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237C98

	thumb_func_start ov65_02237CB0
ov65_02237CB0: ; 0x02237CB0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237CC2
	mov r0, #0
	pop {r4, pc}
_02237CC2:
	mov r0, #0x13
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237CB0

	thumb_func_start ov65_02237CCC
ov65_02237CCC: ; 0x02237CCC
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x6f
	bl ov65_02236E44
	mov r0, #9
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237CCC

	thumb_func_start ov65_02237CE4
ov65_02237CE4: ; 0x02237CE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x30
	add r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237CF8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237CF8:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _02237D14 ; =0x02239A24
	mov r2, #0x30
	mov r3, #4
	bl sub_02002100
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xa
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237D14: .word 0x02239A24
	thumb_func_end ov65_02237CE4

	thumb_func_start ov65_02237D18
ov65_02237D18: ; 0x02237D18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02237D5A
	cmp r0, #0
	bne _02237D3C
	mov r0, #0xb
	strb r0, [r5, #5]
	b _02237D52
_02237D3C:
	add r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02237D4E
	mov r0, #0x13
	strb r0, [r5, #5]
	b _02237D52
_02237D4E:
	mov r0, #1
	strb r0, [r5, #5]
_02237D52:
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02237D5A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02237D18

	thumb_func_start ov65_02237D60
ov65_02237D60: ; 0x02237D60
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0x1e
	add r6, r2, #0
	str r1, [r5, #8]
	bl ov65_0223758C
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	mov r2, #0x66
	add r3, r6, #0
	bl ov65_02236E44
	add r0, r5, #0
	bl ov65_0223789C
	add r0, r5, #0
	bl ov65_02237A44
	mov r0, #0xc
	strb r0, [r5, #5]
	bl ov4_021D25FC
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02237D60

	thumb_func_start ov65_02237D98
ov65_02237D98: ; 0x02237D98
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02035E18
	add r5, r0, #0
	bl sub_02032E64
	cmp r5, r0
	beq _02237DB4
	add r0, r4, #0
	bl ov65_0223758C
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237DB4:
	bl ov4_021D25C0
	cmp r0, #0
	bne _02237DC0
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237DC0:
	mov r0, #1
	bl ov4_021D26EC
	mov r0, #0xd
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02237D98

	thumb_func_start ov65_02237DD0
ov65_02237DD0: ; 0x02237DD0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02237DEE
	mov r1, #0
	mov r0, #0x17
	add r2, r1, #0
	bl sub_020359DC
	cmp r0, #0
	beq _02237DF2
	mov r0, #0xe
	strb r0, [r4, #5]
	b _02237DF2
_02237DEE:
	sub r0, r0, #1
	str r0, [r4, #8]
_02237DF2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237DD0

	thumb_func_start ov65_02237DF8
ov65_02237DF8: ; 0x02237DF8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xd
	add r5, r1, #0
	bl sub_02036540
	cmp r0, #0
	beq _02237E1E
	add r0, r4, #0
	add r1, r5, #0
	bl ov65_02237498
	bl sub_020365F4
	mov r0, #0xe
	bl sub_020364F0
	mov r0, #0xf
	strb r0, [r4, #5]
_02237E1E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02237DF8

	thumb_func_start ov65_02237E24
ov65_02237E24: ; 0x02237E24
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xe
	bl sub_02036540
	cmp r0, #0
	beq _02237E4E
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x1b]
	add r0, sp, #0
	strh r1, [r0]
	bl sub_0203608C
	add r1, sp, #0
	bl sub_02036614
	cmp r0, #1
	bne _02237E4E
	mov r0, #0x10
	strb r0, [r4, #5]
_02237E4E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov65_02237E24

	thumb_func_start ov65_02237E54
ov65_02237E54: ; 0x02237E54
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov65_02237548
	add r7, r0, #0
	bl sub_0203608C
	mov r5, #0
	add r4, r5, #0
	str r0, [sp]
	cmp r7, #0
	ble _02237E98
_02237E6C:
	ldr r0, [sp]
	cmp r0, r4
	beq _02237E90
	add r0, r4, #0
	bl sub_0203664C
	cmp r0, #0
	beq _02237E92
	ldrh r1, [r0]
	ldr r0, [r6, #0]
	ldrb r0, [r0, #0x1b]
	cmp r1, r0
	bne _02237E8A
	add r5, r5, #1
	b _02237E92
_02237E8A:
	mov r0, #0x1b
	strb r0, [r6, #5]
	b _02237E92
_02237E90:
	add r5, r5, #1
_02237E92:
	add r4, r4, #1
	cmp r4, r7
	blt _02237E6C
_02237E98:
	cmp r5, r7
	bne _02237EA0
	mov r0, #0x11
	strb r0, [r6, #5]
_02237EA0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_02237E54

	thumb_func_start ov65_02237EA4
ov65_02237EA4: ; 0x02237EA4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #0x12
	bl sub_020364F0
	mov r0, #0x12
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237EA4

	thumb_func_start ov65_02237EC0
ov65_02237EC0: ; 0x02237EC0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x12
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02036540
	cmp r0, #0
	beq _02237EEC
	mov r0, #1
	strb r0, [r5, #7]
	add r0, r4, #0
	add r1, r6, #0
	bl ov65_02237A24
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022378C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_02237EEC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02237EC0

	thumb_func_start ov65_02237EF0
ov65_02237EF0: ; 0x02237EF0
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x78
	bl ov65_02236E44
	mov r0, #0x14
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237EF0

	thumb_func_start ov65_02237F08
ov65_02237F08: ; 0x02237F08
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x30
	add r4, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237F20
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237F20:
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x30]
	ldr r1, _02237F44 ; =0x02239A24
	mov r2, #0x30
	mov r3, #4
	bl sub_02002054
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x15
	strb r0, [r5, #5]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02237F44: .word 0x02239A24
	thumb_func_end ov65_02237F08

	thumb_func_start ov65_02237F48
ov65_02237F48: ; 0x02237F48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02237F9A
	cmp r0, #0
	bne _02237F6C
	mov r0, #0x16
	strb r0, [r5, #5]
	b _02237F92
_02237F6C:
	add r0, r5, #0
	bl ov65_02237450
	cmp r0, #0
	beq _02237F8E
	add r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02237F88
	mov r0, #8
	strb r0, [r5, #5]
	b _02237F92
_02237F88:
	mov r0, #1
	strb r0, [r5, #5]
	b _02237F92
_02237F8E:
	mov r0, #1
	strb r0, [r5, #5]
_02237F92:
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02237F9A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02237F48

	thumb_func_start ov65_02237FA0
ov65_02237FA0: ; 0x02237FA0
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x79
	bl ov65_02236E44
	mov r0, #0x17
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02237FA0

	thumb_func_start ov65_02237FB8
ov65_02237FB8: ; 0x02237FB8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, #0x30
	add r4, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02237FD0
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_02237FD0:
	mov r0, #1
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5, #0x30]
	ldr r1, _02237FF4 ; =0x02239A24
	mov r2, #0x30
	mov r3, #4
	bl sub_02002054
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x18
	strb r0, [r5, #5]
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02237FF4: .word 0x02239A24
	thumb_func_end ov65_02237FB8

	thumb_func_start ov65_02237FF8
ov65_02237FF8: ; 0x02237FF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r1, r2, #0
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223804A
	cmp r0, #0
	bne _0223801C
	mov r0, #0x19
	strb r0, [r5, #5]
	b _02238042
_0223801C:
	add r0, r5, #0
	bl ov65_02237450
	cmp r0, #0
	beq _0223803E
	add r0, r5, #0
	bl ov65_02237548
	ldrb r1, [r4, #2]
	cmp r1, r0
	bgt _02238038
	mov r0, #8
	strb r0, [r5, #5]
	b _02238042
_02238038:
	mov r0, #1
	strb r0, [r5, #5]
	b _02238042
_0223803E:
	mov r0, #1
	strb r0, [r5, #5]
_02238042:
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_0223804A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02237FF8

	thumb_func_start ov65_02238050
ov65_02238050: ; 0x02238050
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x7a
	bl ov65_02236E44
	mov r0, #0x1e
	str r0, [r4, #8]
	mov r0, #0x1a
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02238050

	thumb_func_start ov65_0223806C
ov65_0223806C: ; 0x0223806C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223807E
	mov r0, #0
	pop {r4, pc}
_0223807E:
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	ble _0223808C
	mov r0, #0
	pop {r4, pc}
_0223808C:
	mov r0, #0
	strb r0, [r4, #7]
	bl sub_02038378
	add r0, r4, #0
	bl ov65_022375CC
	bl sub_02038B60
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0223806C

	thumb_func_start ov65_022380AC
ov65_022380AC: ; 0x022380AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _022380CC
	add r1, r4, #0
	bl sub_02002154
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_022380CC:
	add r0, r5, #0
	add r0, #0x30
	bl ov65_02237018
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov65_022378C4
	mov r0, #0x1c
	strb r0, [r5, #5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_022380AC

	thumb_func_start ov65_022380E8
ov65_022380E8: ; 0x022380E8
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x76
	bl ov65_02236E44
	mov r0, #0x1d
	strb r0, [r4, #5]
	add r0, r4, #0
	bl ov65_022375CC
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022380E8

	thumb_func_start ov65_02238104
ov65_02238104: ; 0x02238104
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _02238116
	mov r0, #0
	pop {r4, pc}
_02238116:
	bl sub_02038378
	bl sub_02038B60
	add r0, r4, #0
	bl ov65_022375CC
	mov r0, #0
	mov r1, #1
	strb r0, [r4, #7]
	bl sub_020388F4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02238104

	thumb_func_start ov65_02238134
ov65_02238134: ; 0x02238134
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r3, r2, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _02238148
	mov r2, #0x7d
	b _0223814A
_02238148:
	mov r2, #0x7c
_0223814A:
	add r0, r4, #0
	add r0, #0x30
	bl ov65_02236E44
	mov r0, #0x1f
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02238134

	thumb_func_start ov65_0223815C
ov65_0223815C: ; 0x0223815C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x30
	add r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _02238170
	mov r0, #0
	pop {r3, r4, r5, pc}
_02238170:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _0223818C ; =0x02239A24
	mov r2, #0x30
	mov r3, #4
	bl sub_02002100
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x20
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223818C: .word 0x02239A24
	thumb_func_end ov65_0223815C

	thumb_func_start ov65_02238190
ov65_02238190: ; 0x02238190
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	add r4, r2, #0
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022381C8
	cmp r0, #0
	bne _022381BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0223731C
	add r0, r5, #0
	bl ov65_02237698
_022381BC:
	mov r0, #1
	strb r0, [r5, #5]
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_022381C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_02238190

	thumb_func_start ov65_022381CC
ov65_022381CC: ; 0x022381CC
	push {r4, lr}
	add r4, r0, #0
	bl sub_02032AC0
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	mov r0, #1
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022381CC

	thumb_func_start ov65_022381E4
ov65_022381E4: ; 0x022381E4
	push {r4, lr}
	add r1, r2, #0
	add r4, r0, #0
	bl ov65_02237550
	mov r0, #0
	bl sub_02035D78
	cmp r0, #0
	bne _022381FE
	mov r0, #0xf
	strb r0, [r4, #5]
	b _0223820C
_022381FE:
	mov r0, #0
	bl sub_02032E00
	cmp r0, #0
	beq _0223820C
	mov r0, #2
	strb r0, [r4, #5]
_0223820C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022381E4

	thumb_func_start ov65_02238210
ov65_02238210: ; 0x02238210
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	bl ov65_02237550
	add r0, r5, #0
	mov r2, #0
	add r0, #0x30
	add r1, r4, #0
	add r3, r2, #0
	str r6, [sp]
	bl ov65_0223726C
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	mov r2, #0x72
	add r3, r6, #0
	bl ov65_02236E44
	add r0, r5, #0
	bl ov65_0223789C
	mov r0, #3
	strb r0, [r5, #5]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02238210

	thumb_func_start ov65_02238250
ov65_02238250: ; 0x02238250
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	bl ov65_02237550
	add r0, r5, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223826E
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223826E:
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _022382AA
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022378C4
	ldrb r0, [r5, #0x13]
	cmp r0, #1
	beq _0223828E
	cmp r0, #2
	beq _02238294
	cmp r0, #3
	beq _022382A0
	b _022382AA
_0223828E:
	mov r0, #4
	strb r0, [r5, #5]
	b _022382AA
_02238294:
	mov r0, #6
	strb r0, [r5, #5]
	mov r0, #0x74
	add r5, #0x2d
	strb r0, [r5]
	b _022382AA
_022382A0:
	mov r0, #6
	strb r0, [r5, #5]
	mov r0, #0x84
	add r5, #0x2d
	strb r0, [r5]
_022382AA:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02238250

	thumb_func_start ov65_022382B0
ov65_022382B0: ; 0x022382B0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r0, #0x30
	add r3, r2, #0
	add r6, r1, #0
	str r4, [sp]
	bl ov65_0223726C
	add r0, r5, #0
	add r0, #0x30
	add r1, r6, #0
	mov r2, #0x73
	mov r3, #0x1e
	str r4, [sp]
	bl ov65_02236E50
	mov r0, #5
	strb r0, [r5, #5]
	bl sub_0203608C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0x60
	bl ov65_022376A0
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_022382B0

	thumb_func_start ov65_022382F0
ov65_022382F0: ; 0x022382F0
	push {r4, lr}
	add r4, r0, #0
	add r1, r2, #0
	bl ov65_02237550
	add r0, r4, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223830A
	mov r0, #0
	pop {r4, pc}
_0223830A:
	mov r0, #8
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_022382F0

	thumb_func_start ov65_02238314
ov65_02238314: ; 0x02238314
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	mov r2, #0
	add r5, r0, #0
	add r0, #0x30
	add r3, r2, #0
	add r4, r1, #0
	str r6, [sp]
	bl ov65_0223726C
	add r2, r5, #0
	add r2, #0x2d
	add r0, r5, #0
	ldrb r2, [r2]
	add r0, #0x30
	add r1, r4, #0
	add r3, r6, #0
	bl ov65_02236E44
	mov r0, #7
	strb r0, [r5, #5]
	bl sub_02038378
	bl sub_02038B60
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02238314

	thumb_func_start ov65_02238350
ov65_02238350: ; 0x02238350
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _02238362
	mov r0, #0
	pop {r4, pc}
_02238362:
	mov r0, #0
	mov r1, #1
	strb r0, [r4, #7]
	bl sub_020388F4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov65_02238350

	thumb_func_start ov65_02238370
ov65_02238370: ; 0x02238370
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	bl ov65_02237550
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	mov r2, #0x7b
	add r3, r6, #0
	bl ov65_02236E44
	add r0, r5, #0
	bl ov65_0223789C
	mov r0, #9
	strb r0, [r5, #5]
	ldr r0, [r5, #0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _022383A6
	add r0, r5, #0
	bl ov65_02237520
_022383A6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02238370

	thumb_func_start ov65_022383AC
ov65_022383AC: ; 0x022383AC
	push {r4, lr}
	add r4, r0, #0
	add r1, r2, #0
	bl ov65_02237550
	add r0, r4, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _022383C6
	mov r0, #0
	pop {r4, pc}
_022383C6:
	mov r0, #0xa
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_022383AC

	thumb_func_start ov65_022383D0
ov65_022383D0: ; 0x022383D0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	bl ov65_02237550
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	beq _02238404
	mov r0, #0
	strb r0, [r5, #0x12]
	ldr r0, [r5, #0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _022383FE
	add r0, r5, #0
	bl ov65_02237504
	add r0, r5, #0
	bl ov65_02237520
_022383FE:
	add r0, r5, #0
	bl ov65_02237698
_02238404:
	add r0, r5, #0
	bl ov65_02237A10
	cmp r0, #1
	bne _02238448
	bl sub_020365F4
	mov r0, #0xe
	bl sub_020364F0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022378C4
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	mov r2, #0x66
	add r3, r6, #0
	bl ov65_02236E44
	add r0, r5, #0
	bl ov65_02237A44
	mov r0, #0x4b
	lsl r0, r0, #2
	str r0, [r5, #8]
	add r0, r5, #0
	bl ov65_0223789C
	mov r0, #0xb
	strb r0, [r5, #5]
	b _02238462
_02238448:
	ldr r0, _02238468 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	tst r0, r1
	beq _02238462
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022378C4
	mov r0, #0x12
	strb r0, [r5, #5]
_02238462:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02238468: .word 0x021BF67C
	thumb_func_end ov65_022383D0

	thumb_func_start ov65_0223846C
ov65_0223846C: ; 0x0223846C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0xe
	bl sub_02036540
	cmp r0, #0
	beq _022384B6
	ldr r0, [r4, #0]
	ldrb r1, [r0, #0x1b]
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	bl ov65_02237548
	add r5, r0, #0
	bl sub_02035E18
	cmp r5, r0
	beq _022384A4
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _022384A0
	mov r0, #0xf
	strb r0, [r4, #5]
_022384A0:
	mov r0, #0
	pop {r3, r4, r5, pc}
_022384A4:
	bl sub_0203608C
	add r1, sp, #0
	bl sub_02036614
	cmp r0, #1
	bne _022384B6
	mov r0, #0xc
	strb r0, [r4, #5]
_022384B6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_0223846C

	thumb_func_start ov65_022384BC
ov65_022384BC: ; 0x022384BC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl ov65_02237548
	add r7, r0, #0
	bl sub_0203608C
	mov r5, #0
	add r4, r5, #0
	str r0, [sp]
	cmp r7, #0
	ble _02238500
_022384D4:
	ldr r0, [sp]
	cmp r0, r4
	beq _022384F8
	add r0, r4, #0
	bl sub_0203664C
	cmp r0, #0
	beq _022384FA
	ldrh r1, [r0]
	ldr r0, [r6, #0]
	ldrb r0, [r0, #0x1b]
	cmp r1, r0
	bne _022384F2
	add r5, r5, #1
	b _022384FA
_022384F2:
	mov r0, #0xf
	strb r0, [r6, #5]
	b _022384FA
_022384F8:
	add r5, r5, #1
_022384FA:
	add r4, r4, #1
	cmp r4, r7
	blt _022384D4
_02238500:
	cmp r5, r7
	bne _02238508
	mov r0, #0xd
	strb r0, [r6, #5]
_02238508:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov65_022384BC

	thumb_func_start ov65_0223850C
ov65_0223850C: ; 0x0223850C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #0x12
	bl sub_020364F0
	mov r0, #0xe
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_0223850C

	thumb_func_start ov65_02238528
ov65_02238528: ; 0x02238528
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x12
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02036540
	cmp r0, #0
	beq _02238554
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov65_022378C4
	mov r0, #1
	strb r0, [r5, #7]
	add r0, r4, #0
	add r1, r6, #0
	bl ov65_02237A24
	mov r0, #1
	pop {r4, r5, r6, pc}
_02238554:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov65_02238528

	thumb_func_start ov65_02238558
ov65_02238558: ; 0x02238558
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	beq _02238578
	add r1, r4, #0
	bl sub_02002154
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02238578:
	add r0, r5, #0
	add r0, #0x30
	bl ov65_02237018
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov65_022378C4
	mov r0, #0x10
	strb r0, [r5, #5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02238558

	thumb_func_start ov65_02238594
ov65_02238594: ; 0x02238594
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x76
	bl ov65_02236E44
	mov r0, #0x11
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02238594

	thumb_func_start ov65_022385AC
ov65_022385AC: ; 0x022385AC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _022385BE
	mov r0, #0
	pop {r4, pc}
_022385BE:
	bl sub_02038378
	bl sub_02038B60
	mov r0, #0
	mov r1, #1
	strb r0, [r4, #7]
	bl sub_020388F4
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov65_022385AC

	thumb_func_start ov65_022385D4
ov65_022385D4: ; 0x022385D4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r1, r6, #0
	bl ov65_02237550
	ldr r0, [r5, #0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #1
	bne _022385F0
	mov r2, #0x7d
	b _022385F2
_022385F0:
	mov r2, #0x7c
_022385F2:
	add r0, r5, #0
	add r0, #0x30
	add r1, r4, #0
	add r3, r6, #0
	bl ov65_02236E44
	mov r0, #0x13
	strb r0, [r5, #5]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_022385D4

	thumb_func_start ov65_02238608
ov65_02238608: ; 0x02238608
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r0, #0
	add r1, r5, #0
	bl ov65_02237550
	add r0, r4, #0
	bl ov65_02237A10
	cmp r0, #1
	bne _0223862E
	mov r0, #0xa
	strb r0, [r4, #5]
	add r4, #0x30
	add r0, r4, #0
	bl ov65_02236F38
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223862E:
	add r0, r4, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223863E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223863E:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _0223865C ; =0x02239A24
	mov r2, #0x30
	mov r3, #4
	bl sub_02002100
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x14
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223865C: .word 0x02239A24
	thumb_func_end ov65_02238608

	thumb_func_start ov65_02238660
ov65_02238660: ; 0x02238660
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r1, r4, #0
	bl ov65_02237550
	add r0, r5, #0
	bl ov65_02237A10
	cmp r0, #1
	bne _02238698
	mov r0, #0xa
	strb r0, [r5, #5]
	add r0, r5, #0
	add r0, #0x30
	bl ov65_02236F38
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02002154
	mov r1, #0x83
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_02238698:
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022386CA
	cmp r0, #0
	bne _022386BE
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_0223731C
	add r0, r5, #0
	bl ov65_02237698
_022386BE:
	mov r0, #8
	strb r0, [r5, #5]
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_022386CA:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov65_02238660

	thumb_func_start ov65_022386D0
ov65_022386D0: ; 0x022386D0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02032F40
	add r1, r5, #0
	add r1, #0x26
	strb r0, [r1]
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0x20
	bne _022386F4
	bl sub_02022974
_022386F4:
	add r0, r5, #0
	mov r2, #0
	add r0, #0x30
	add r1, r6, #0
	add r3, r2, #0
	str r4, [sp]
	bl ov65_0223726C
	bl sub_02038378
	add r0, r5, #0
	mov r1, #0
	add r0, #0x27
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x30
	add r1, r6, #0
	mov r2, #0x84
	add r3, r4, #0
	bl ov65_02236E44
	mov r0, #0x16
	strb r0, [r5, #5]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov65_022386D0

	thumb_func_start ov65_02238728
ov65_02238728: ; 0x02238728
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x30
	add r5, r2, #0
	bl ov65_02236EF8
	cmp r0, #0
	bne _0223873C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223873C:
	str r5, [sp]
	ldr r0, [r4, #0x30]
	ldr r1, _02238758 ; =0x02239A24
	mov r2, #0x30
	mov r3, #4
	bl sub_02002100
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x17
	strb r0, [r4, #5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238758: .word 0x02239A24
	thumb_func_end ov65_02238728

	thumb_func_start ov65_0223875C
ov65_0223875C: ; 0x0223875C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r2, #0
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02238788
	cmp r0, #0
	bne _0223877C
	mov r0, #0x18
	b _0223877E
_0223877C:
	mov r0, #0x1d
_0223877E:
	strb r0, [r4, #5]
	mov r0, #0x83
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02238788:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0223875C

	thumb_func_start ov65_0223878C
ov65_0223878C: ; 0x0223878C
	push {r4, lr}
	add r4, r0, #0
	add r3, r2, #0
	add r0, #0x30
	mov r2, #0x11
	bl ov65_02236E44
	add r0, r4, #0
	bl ov65_0223789C
	mov r0, #0x5a
	str r0, [r4, #8]
	mov r0, #0x19
	strb r0, [r4, #5]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_0223878C

	thumb_func_start ov65_022387AC
ov65_022387AC: ; 0x022387AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	ble _022387C0
	sub r0, r0, #1
	str r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_022387C0:
	add r0, r5, #0
	add r0, #0x30
	bl ov65_02236EF8
	cmp r0, #0
	bne _022387D0
	mov r0, #0
	pop {r3, r4, r5, pc}
_022387D0:
	add r0, r5, #0
	add r0, #0x26
	ldrb r0, [r0]
	ldrb r1, [r4]
	bl ov65_02237464
	cmp r0, #0
	beq _022387E4
	mov r0, #0x1a
	strb r0, [r5, #5]
_022387E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov65_022387AC

	thumb_func_start ov65_022387E8
ov65_022387E8: ; 0x022387E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov65_0223742C
	bl sub_020380E4
	cmp r0, #1
	bne _02238832
	mov r0, #0
	bl sub_02035D78
	cmp r0, #1
	bne _02238832
	mov r0, #0
	bl sub_0203632C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov65_022378C4
	mov r1, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	str r4, [sp, #8]
	bl sub_0200F174
	mov r0, #0x1b
	strb r0, [r5, #5]
_02238832:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov65_022387E8

	thumb_func_start ov65_02238838
ov65_02238838: ; 0x02238838
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _022388F4
	ldr r0, [r6, #8]
	mov r1, #0
	bl sub_020329E0
	add r0, r5, #0
	mov r1, #1
	add r0, #0x27
	strb r1, [r0]
	add r0, r5, #0
	bl ov65_022377E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov65_022367F8
	add r0, r5, #0
	mov r2, #0x7e
	add r0, #0x30
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	add r0, r5, #0
	bl ov65_0223760C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov65_022367A8
	bl sub_02039734
	mov r1, #0
	strb r1, [r5, #0x12]
	strb r1, [r5, #0x13]
	add r0, r5, #0
	add r0, #0x14
	strb r1, [r5, #0x14]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	add r0, r5, #0
	add r0, #0x18
	strb r1, [r5, #0x18]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	add r0, r5, #0
	add r0, #0x1c
	mov r1, #1
	mov r2, #4
	bl sub_020C4CF4
	add r0, r5, #0
	add r0, #0x20
	mov r1, #1
	mov r2, #4
	bl sub_020C4CF4
	add r0, r5, #0
	add r1, r5, #0
	mov r3, #0
	add r0, #0x24
	strb r3, [r0]
	add r0, r5, #0
	add r0, #0x26
	strb r3, [r0]
	add r0, r5, #0
	add r0, #0x28
	strb r3, [r0]
	add r1, #0x28
	strb r3, [r1, #1]
	strb r3, [r1, #2]
	strb r3, [r1, #3]
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #3
	add r2, r1, #0
	str r4, [sp, #8]
	bl sub_0200F174
	mov r0, #0x1c
	strb r0, [r5, #5]
_022388F4:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov65_02238838

	thumb_func_start ov65_022388FC
ov65_022388FC: ; 0x022388FC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223890C
	mov r0, #0
	strb r0, [r4, #5]
_0223890C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov65_022388FC

	thumb_func_start ov65_02238910
ov65_02238910: ; 0x02238910
	push {r4, lr}
	add r4, r0, #0
	bl sub_02038378
	bl sub_02038B60
	mov r0, #0
	mov r1, #1
	strb r0, [r4, #7]
	bl sub_020388F4
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov65_02238910

	.rodata


	.global Unk_ov65_02239A20
Unk_ov65_02239A20: ; 0x02239A20
	.incbin "incbin/overlay65_rodata.bin", 0x10F4, 0x10F8 - 0x10F4

	.global Unk_ov65_02239A24
Unk_ov65_02239A24: ; 0x02239A24
	.incbin "incbin/overlay65_rodata.bin", 0x10F8, 0x1100 - 0x10F8

	.global Unk_ov65_02239A2C
Unk_ov65_02239A2C: ; 0x02239A2C
	.incbin "incbin/overlay65_rodata.bin", 0x1100, 0x1110 - 0x1100

	.global Unk_ov65_02239A3C
Unk_ov65_02239A3C: ; 0x02239A3C
	.incbin "incbin/overlay65_rodata.bin", 0x1110, 0x1120 - 0x1110

	.global Unk_ov65_02239A4C
Unk_ov65_02239A4C: ; 0x02239A4C
	.incbin "incbin/overlay65_rodata.bin", 0x1120, 0x1130 - 0x1120

	.global Unk_ov65_02239A5C
Unk_ov65_02239A5C: ; 0x02239A5C
	.incbin "incbin/overlay65_rodata.bin", 0x1130, 0x114C - 0x1130

	.global Unk_ov65_02239A78
Unk_ov65_02239A78: ; 0x02239A78
	.incbin "incbin/overlay65_rodata.bin", 0x114C, 0x1168 - 0x114C

	.global Unk_ov65_02239A94
Unk_ov65_02239A94: ; 0x02239A94
	.incbin "incbin/overlay65_rodata.bin", 0x1168, 0x1184 - 0x1168

	.global Unk_ov65_02239AB0
Unk_ov65_02239AB0: ; 0x02239AB0
	.incbin "incbin/overlay65_rodata.bin", 0x1184, 0x11AC - 0x1184

	.global Unk_ov65_02239AD8
Unk_ov65_02239AD8: ; 0x02239AD8
	.incbin "incbin/overlay65_rodata.bin", 0x11AC, 0x11DC - 0x11AC

	.global Unk_ov65_02239B08
Unk_ov65_02239B08: ; 0x02239B08
	.incbin "incbin/overlay65_rodata.bin", 0x11DC, 0x1254 - 0x11DC

	.global Unk_ov65_02239B80
Unk_ov65_02239B80: ; 0x02239B80
	.incbin "incbin/overlay65_rodata.bin", 0x1254, 0x12D8 - 0x1254

	.global Unk_ov65_02239C04
Unk_ov65_02239C04: ; 0x02239C04
	.incbin "incbin/overlay65_rodata.bin", 0x12D8, 0x12


	.data


	.global Unk_ov65_02239E5C
Unk_ov65_02239E5C: ; 0x02239E5C
	.incbin "incbin/overlay65_data.bin", 0x23C, 0x4

