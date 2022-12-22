	.include "macros/function.inc"
	.include "include/unk_0208B284.inc"

	

	.text


	thumb_func_start sub_0208B284
sub_0208B284: ; 0x0208B284
	push {r0, r1, r2, r3}
	push {r4, lr}
	ldr r4, [sp, #0xc]
	mov r1, #0x42
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, [sp, #8]
	mov r3, #0
	str r1, [r0, #0x10]
	ldr r1, [sp, #0x10]
	str r4, [r0, #0x14]
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, #0xf
	str r1, [r0, #0x1c]
	ldr r1, [sp, #0x18]
	str r1, [r0, #0x20]
	ldr r1, [sp, #0x1c]
	str r1, [r0, #4]
	ldr r1, [sp, #0x20]
	str r1, [r0, #8]
	ldr r1, [sp, #0x24]
	str r1, [r0, #0xc]
	add r1, r0, #0
	add r1, #0xe4
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0xfc
	str r2, [r1, #0]
	add r1, r2, #0
	add r1, #0xf1
	str r2, [r0, r1]
	add r1, r0, #0
	add r1, #0xf4
	str r3, [r1, #0]
	add r1, r0, #0
	add r1, #0xf0
	str r3, [r1, #0]
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_0208B284

	thumb_func_start sub_0208B2DC
sub_0208B2DC: ; 0x0208B2DC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r6, r3, #0
	str r1, [sp]
	str r1, [sp, #4]
	bl _f_itof
	add r1, r4, #0
	bl _f_sub
	str r0, [sp, #8]
	add r0, r5, #0
	bl _f_itof
	add r1, r6, #0
	bl _f_sub
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r0, #0
	bl _f_mul
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	bl _f_mul
	add r1, r0, #0
	add r0, r4, #0
	bl _f_add
	mov r1, #0
	add r4, r0, #0
	bl _f_fgt
	ldr r0, _0208B3D0 ; =0x45800000
	bls _0208B344
	add r1, r4, #0
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0208B352
_0208B344:
	add r1, r4, #0
	bl _f_mul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0208B352:
	bl _f_ftoi
	bl FX_Sqrt
	bl _f_itof
	ldr r1, _0208B3D0 ; =0x45800000
	bl _fdiv
	ldr r1, [sp, #0x30]
	add r4, r0, #0
	bl _f_flt
	blo _0208B38A
	add r1, sp, #0x18
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	bl _f_itof
	add r1, r4, #0
	bl _f_fgt
	bhi _0208B38A
	mov r0, #0
	add r1, r4, #0
	bl _f_feq
	bne _0208B390
_0208B38A:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_0208B390:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x30]
	bl _f_mul
	add r1, r4, #0
	bl _fdiv
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x30]
	bl _f_mul
	add r1, r4, #0
	bl _fdiv
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl _f_add
	ldr r1, [sp, #0x28]
	str r0, [r1, #0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	bl _f_add
	ldr r1, [sp, #0x2c]
	str r0, [r1, #0]
	mov r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0208B3D0: .word 0x45800000
	thumb_func_end sub_0208B2DC

	thumb_func_start sub_0208B3D4
sub_0208B3D4: ; 0x0208B3D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r1, #0
	add r0, r6, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0208B3E6
	b _0208B632
_0208B3E6:
	ldr r0, [r6, #0x10]
	mov r4, #0
	str r4, [sp, #0x1c]
	cmp r0, #0
	bgt _0208B3F2
	b _0208B632
_0208B3F2:
	add r0, r6, #0
	mov r7, #0x3f
	str r0, [sp, #0x30]
	add r0, #0xec
	add r5, r6, #0
	lsl r7, r7, #0x18
	str r0, [sp, #0x30]
_0208B400:
	cmp r4, #0
	beq _0208B410
	mov r0, #0x18
	ldrsh r0, [r5, r0]
	strh r0, [r5, #0x28]
	mov r0, #0x1a
	ldrsh r0, [r5, r0]
	strh r0, [r5, #0x2a]
_0208B410:
	ldr r0, [r5, #0x24]
	ldr r3, [r6, #0x20]
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl sub_0200D67C
	ldr r0, [sp, #0x4c]
	bl _f_itof
	ldr r1, _0208B638 ; =0x45800000
	bl _fdiv
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x48]
	bl _f_itof
	ldr r1, _0208B638 ; =0x45800000
	bl _fdiv
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	sub r0, r4, r0
	bl _f_itof
	add r1, r0, #0
	add r0, r7, #0
	bl _f_mul
	add r1, r0, #0
	mov r0, #0x41
	lsl r0, r0, #0x18
	bl _f_sub
	mov r1, #1
	lsl r1, r1, #0x1e
	bl _fdiv
	add r1, sp, #0x44
	str r1, [sp]
	add r1, sp, #0x40
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r0, #0x28
	mov r1, #0x2a
	ldrsh r0, [r5, r0]
	ldrsh r1, [r5, r1]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_0208B2DC
	cmp r0, #0
	beq _0208B4EE
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _0208B4EE
	ldr r0, [sp, #0x40]
	mov r1, #0
	bl _f_fgt
	ldr r0, _0208B638 ; =0x45800000
	bls _0208B4A0
	ldr r1, [sp, #0x40]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	str r0, [sp, #0x14]
	b _0208B4AE
_0208B4A0:
	ldr r1, [sp, #0x40]
	bl _f_mul
	add r1, r7, #0
	bl _f_sub
	str r0, [sp, #0x14]
_0208B4AE:
	ldr r0, [sp, #0x44]
	mov r1, #0
	bl _f_fgt
	ldr r0, _0208B638 ; =0x45800000
	bls _0208B4CA
	ldr r1, [sp, #0x44]
	bl _f_mul
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	b _0208B4D6
_0208B4CA:
	ldr r1, [sp, #0x44]
	bl _f_mul
	add r1, r7, #0
	bl _f_sub
_0208B4D6:
	bl _f_ftoi
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	bl _f_ftoi
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x28]
	bl sub_0200D5E8
	b _0208B626
_0208B4EE:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _0208B4FA
	cmp r0, #1
	beq _0208B5CA
	b _0208B620
_0208B4FA:
	add r1, sp, #0x3c
	ldr r0, [r5, #0x24]
	ldr r3, [r6, #0x20]
	add r1, #2
	add r2, sp, #0x3c
	bl sub_0200D5A0
	add r0, r6, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [sp, #0x18]
	cmp r0, #0xff
	bne _0208B58E
	add r0, r6, #0
	add r0, #0xe8
	str r4, [r0, #0]
	mov r0, #0x28
	add r2, sp, #0x3c
	mov r1, #2
	ldrsh r0, [r6, r0]
	ldrsh r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #0
	ble _0208B53C
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	str r0, [sp, #0x10]
	b _0208B54A
_0208B53C:
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r7, #0
	bl _f_sub
	str r0, [sp, #0x10]
_0208B54A:
	mov r0, #0x2a
	add r2, sp, #0x3c
	mov r1, #0
	ldrsh r0, [r6, r0]
	ldrsh r1, [r2, r1]
	sub r0, r0, r1
	cmp r0, #0
	ble _0208B56A
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	add r0, r7, #0
	bl _f_add
	b _0208B576
_0208B56A:
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r7, #0
	bl _f_sub
_0208B576:
	bl _f_ftoi
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	bl _f_ftoi
	add r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl FX_Atan2Idx
	str r0, [r5, #0x30]
	b _0208B5AC
_0208B58E:
	mov r0, #0x2d
	ldr r1, [r6, #0x10]
	lsl r0, r0, #4
	bl _s32_div_f
	ldr r1, [sp, #0x18]
	add r2, r6, #0
	lsl r1, r1, #4
	add r2, #0xec
	add r1, r6, r1
	ldr r2, [r2, #0]
	ldr r1, [r1, #0x30]
	mul r2, r0
	sub r0, r1, r2
	str r0, [r5, #0x30]
_0208B5AC:
	mov r1, #0x2d
	ldr r0, [r5, #0x30]
	lsl r1, r1, #4
	bl _s32_div_f
	ldr r0, [sp, #0x30]
	str r1, [r5, #0x30]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0x30]
	str r1, [r0, #0]
	ldr r0, [r5, #0x2c]
	add r0, r0, #1
	str r0, [r5, #0x2c]
	b _0208B620
_0208B5CA:
	ldr r0, [r5, #0x30]
	mov r1, #0x2d
	add r0, r0, #4
	lsl r1, r1, #4
	str r0, [r5, #0x30]
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x30]
	bl sub_0201D250
	mov r1, #0x28
	ldrsh r1, [r6, r1]
	lsl r1, r1, #0xc
	str r1, [sp, #0x34]
	add r1, r6, #0
	add r1, #0xfc
	ldr r1, [r1, #0]
	mul r0, r1
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x30]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	mov r1, #0x2a
	ldrsh r1, [r6, r1]
	ldr r2, [sp, #0x34]
	lsl r3, r1, #0xc
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r6, r1]
	mul r0, r1
	ldr r1, [sp, #0x38]
	mov ip, r0
	add r1, r2, r1
	mov r2, ip
	add r2, r3, r2
	ldr r0, [r5, #0x24]
	ldr r3, [r6, #0x20]
	bl sub_0200D650
_0208B620:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_0208B626:
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	bge _0208B632
	b _0208B400
_0208B632:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0208B638: .word 0x45800000
	thumb_func_end sub_0208B3D4

	thumb_func_start sub_0208B63C
sub_0208B63C: ; 0x0208B63C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r1, #0
	ldr r1, [r0, #4]
	ldr r5, [r0, #8]
	str r1, [sp, #0x18]
	ldr r1, _0208B6A4 ; =0x000056CF
	ldr r7, [r0, #0xc]
	ldr r4, [r0, #0]
	add r0, r5, #0
	bl sub_0200D080
	ldr r1, _0208B6A8 ; =0x000056D0
	add r0, r5, #0
	bl sub_0200D080
	ldr r0, _0208B6AC ; =0x020F2FB0
	lsl r1, r6, #2
	ldr r6, [r0, r1]
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0208B6A4 ; =0x000056CF
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #2
	add r3, r5, #0
	bl sub_0200CDC4
	str r4, [sp]
	str r6, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0208B6A8 ; =0x000056D0
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #3
	add r3, r5, #0
	bl sub_0200CDC4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B6A4: .word 0x000056CF
_0208B6A8: .word 0x000056D0
_0208B6AC: .word 0x020F2FB0
	thumb_func_end sub_0208B63C

	thumb_func_start sub_0208B6B0
sub_0208B6B0: ; 0x0208B6B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r2, r1, #0
	ldr r3, [r0, #0x18]
	ldr r1, _0208B7AC ; =0x000056CE
	ldr r7, [r0, #4]
	add r5, r3, r1
	ldr r6, [r0, #8]
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #0]
	cmp r3, #1
	ldr r0, [r0, #0x1c]
	bne _0208B726
	cmp r0, #0
	str r4, [sp]
	bne _0208B6F2
	ldr r0, _0208B7B0 ; =0x020F2FB0
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, r7, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #2
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
	b _0208B70E
_0208B6F2:
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #2
	add r2, r7, #0
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
_0208B70E:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5f
	str r5, [sp, #8]
	bl sub_0200CC3C
	b _0208B784
_0208B726:
	cmp r0, #0
	str r4, [sp]
	bne _0208B750
	ldr r0, _0208B7B0 ; =0x020F2FB0
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	add r2, r7, #0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #3
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
	b _0208B76E
_0208B750:
	mov r0, #0x60
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	add r0, r1, #0
	mov r1, #3
	add r2, r7, #0
	add r3, r6, #0
	str r5, [sp, #0x14]
	bl sub_0200CDC4
_0208B76E:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5f
	str r5, [sp, #8]
	bl sub_0200CC3C
_0208B784:
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5d
	str r5, [sp, #4]
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x5e
	str r5, [sp, #4]
	bl sub_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B7AC: .word 0x000056CE
_0208B7B0: .word 0x020F2FB0
	thumb_func_end sub_0208B6B0

	thumb_func_start sub_0208B7B4
sub_0208B7B4: ; 0x0208B7B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r7, [r5, #8]
	str r0, [sp]
	mov r1, #0x80
	add r0, sp, #4
	strh r1, [r0]
	mov r1, #0x60
	strh r1, [r0, #2]
	mov r6, #0
	strh r6, [r0, #4]
	strh r6, [r0, #6]
	str r6, [sp, #0xc]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x14]
	str r6, [sp, #0x30]
	str r6, [sp, #0x34]
	str r6, [sp, #0x10]
	ldr r1, [r5, #0x18]
	ldr r0, _0208B82C ; =0x000056CE
	add r1, r1, r0
	str r1, [sp, #0x18]
	ldr r1, [r5, #0x18]
	add r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r1, [r5, #0x18]
	add r1, r1, r0
	str r1, [sp, #0x20]
	ldr r1, [r5, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x24]
	sub r0, r6, #1
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0208B828
	add r4, r5, #0
_0208B804:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, sp, #4
	bl sub_0200CE6C
	str r0, [r4, #0x24]
	bl sub_0200D330
	ldr r0, [r4, #0x24]
	mov r1, #0x80
	mov r2, #0x60
	bl sub_0200D4C4
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _0208B804
_0208B828:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B82C: .word 0x000056CE
	thumb_func_end sub_0208B7B4

	thumb_func_start sub_0208B830
sub_0208B830: ; 0x0208B830
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _0208B872
	ldr r7, _0208B874 ; =0x000056CE
	add r4, r5, #0
_0208B840:
	ldr r2, [r5, #0x18]
	ldr r1, _0208B874 ; =0x000056CE
	ldr r0, [r5, #8]
	add r1, r2, r1
	bl sub_0200D070
	ldr r2, [r5, #0x18]
	ldr r1, _0208B874 ; =0x000056CE
	ldr r0, [r5, #8]
	add r1, r2, r1
	bl sub_0200D090
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #8]
	add r1, r1, r7
	bl sub_0200D0A0
	ldr r0, [r4, #0x24]
	bl sub_0200D0F4
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _0208B840
_0208B872:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208B874: .word 0x000056CE
	thumb_func_end sub_0208B830

	thumb_func_start sub_0208B878
sub_0208B878: ; 0x0208B878
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x14]
	mov r0, #0xa2
	bl sub_02006C24
	str r0, [r5, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0208B6B0
	add r0, r5, #0
	bl sub_0208B7B4
	mov r2, #1
	ldr r0, _0208B8AC ; =sub_0208B3D4
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200DA04
	add r5, #0xf4
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0208B8AC: .word sub_0208B3D4
	thumb_func_end sub_0208B878

	thumb_func_start sub_0208B8B0
sub_0208B8B0: ; 0x0208B8B0
	add r0, #0xf0
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	thumb_func_end sub_0208B8B0

	thumb_func_start sub_0208B8B8
sub_0208B8B8: ; 0x0208B8B8
	push {r3, r4}
	strh r1, [r0, #0x28]
	add r1, r0, #0
	strh r2, [r0, #0x2a]
	mov r2, #0xff
	add r1, #0xe8
	str r2, [r1, #0]
	add r1, r0, #0
	mov r3, #0
	add r1, #0xec
	str r3, [r1, #0]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	ble _0208B8E4
	add r4, r0, #0
	add r2, r3, #0
_0208B8D8:
	str r2, [r4, #0x2c]
	ldr r1, [r0, #0x10]
	add r3, r3, #1
	add r4, #0x10
	cmp r3, r1
	blt _0208B8D8
_0208B8E4:
	mov r0, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208B8B8

	thumb_func_start sub_0208B8EC
sub_0208B8EC: ; 0x0208B8EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0208B930
	cmp r0, #0
	bne _0208B900
	mov r0, #0
	pop {r4, r5, r6, pc}
_0208B900:
	strh r4, [r5, #0x28]
	add r0, r5, #0
	strh r6, [r5, #0x2a]
	mov r1, #0xff
	add r0, #0xe8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r2, #0
	add r0, #0xec
	str r2, [r0, #0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0208B92A
	add r3, r5, #0
	add r1, r2, #0
_0208B91E:
	str r1, [r3, #0x2c]
	ldr r0, [r5, #0x10]
	add r2, r2, #1
	add r3, #0x10
	cmp r2, r0
	blt _0208B91E
_0208B92A:
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0208B8EC

	thumb_func_start sub_0208B930
sub_0208B930: ; 0x0208B930
	mov r3, #0x28
	ldrsh r3, [r0, r3]
	cmp r3, r1
	bne _0208B944
	mov r1, #0x2a
	ldrsh r0, [r0, r1]
	cmp r0, r2
	bne _0208B944
	mov r0, #0
	bx lr
_0208B944:
	mov r0, #1
	bx lr
	thumb_func_end sub_0208B930

	thumb_func_start sub_0208B948
sub_0208B948: ; 0x0208B948
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	str r2, [sp]
	mov r1, #0xff
	add r0, #0xe8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r7, #0
	add r0, #0xec
	str r7, [r0, #0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ble _0208B982
	add r4, r5, #0
_0208B966:
	strh r6, [r4, #0x28]
	ldr r0, [sp]
	add r1, r6, #0
	strh r0, [r4, #0x2a]
	ldr r0, [r4, #0x24]
	ldr r2, [sp]
	ldr r3, [r5, #0x20]
	bl sub_0200D500
	ldr r0, [r5, #0x10]
	add r7, r7, #1
	add r4, #0x10
	cmp r7, r0
	blt _0208B966
_0208B982:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208B948

	thumb_func_start sub_0208B988
sub_0208B988: ; 0x0208B988
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0208B99C
	cmp r1, #1
	beq _0208B9B0
	b _0208B9C6
_0208B99C:
	mov r1, #0
	bl sub_0208B8B0
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r4, #0xe4
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208B9DA
_0208B9B0:
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r4, #0xe4
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208B9DA
_0208B9C6:
	bl sub_0208B830
	ldr r0, [r4, #0]
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_0208B9DA:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0208B988

	thumb_func_start sub_0208B9E0
sub_0208B9E0: ; 0x0208B9E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	add r7, r1, #0
	mov r4, #0
	cmp r0, #0
	ble _0208BA02
	add r5, r6, #0
_0208B9F0:
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	bl sub_0200D3F4
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0208B9F0
_0208BA02:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0208B9E0

	thumb_func_start sub_0208BA08
sub_0208BA08: ; 0x0208BA08
	cmp r1, #0
	beq _0208BA1E
	cmp r2, #0
	beq _0208BA1E
	add r3, r0, #0
	add r3, #0xfc
	str r1, [r3, #0]
	mov r1, #1
	lsl r1, r1, #8
	str r2, [r0, r1]
	bx lr
_0208BA1E:
	add r1, r0, #0
	mov r2, #0xf
	add r1, #0xfc
	str r2, [r1, #0]
	add r1, r2, #0
	add r1, #0xf1
	str r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208BA08

	thumb_func_start sub_0208BA30
sub_0208BA30: ; 0x0208BA30
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0208BA52
	add r5, r6, #0
	mov r7, #1
_0208BA40:
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	bl sub_0200D364
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0208BA40
_0208BA52:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208BA30

	thumb_func_start sub_0208BA54
sub_0208BA54: ; 0x0208BA54
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0208BA76
	add r5, r6, #0
	add r7, r4, #0
_0208BA64:
	ldr r0, [r5, #0x24]
	add r1, r7, #0
	bl sub_0200D364
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _0208BA64
_0208BA76:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0208BA54

	.rodata


	.global Unk_020F2FB0
Unk_020F2FB0: ; 0x020F2FB0
	.incbin "incbin/arm9_rodata.bin", 0xE370, 0x1C

