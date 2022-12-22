	.include "macros/function.inc"
	.include "include/ov5_021ECE40.inc"

	

	.text


	thumb_func_start ov5_021ECE40
ov5_021ECE40: ; 0x021ECE40
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	mov r2, #0x41
	add r5, r0, #0
	lsl r2, r2, #2
	str r1, [r5, r2]
	add r1, r4, #0
	bl ov5_021EDDAC
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EE320
	mov r2, #4
	mov r1, #8
	ldr r0, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov5_021ED224
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED0A4
	ldr r1, [sp, #0x20]
	ldr r2, _021ECE8C ; =0x021FAF50
	ldr r3, _021ECE90 ; =0x021FAF48
	add r0, r5, #0
	bl ov5_021ED4E4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021ECE8C: .word 0x021FAF50
_021ECE90: .word 0x021FAF48
	thumb_func_end ov5_021ECE40

	thumb_func_start ov5_021ECE94
ov5_021ECE94: ; 0x021ECE94
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021EE3C4
	add r0, r4, #0
	bl ov5_021ED0F0
	add r0, r4, #0
	bl ov5_021EDC8C
	bl ov5_021EDDD4
	add r0, r4, #0
	bl ov5_021ED2AC
	pop {r4, pc}
	thumb_func_end ov5_021ECE94

	thumb_func_start ov5_021ECEB4
ov5_021ECEB4: ; 0x021ECEB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0
	add r6, r2, #0
	add r7, r0, #0
	str r1, [r5, #0]
	bl ov5_021EDEA8
	add r1, r6, #0
	str r0, [sp]
	bl ov5_021ED82C
	add r4, r0, #0
	bne _021ECEDE
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov5_021ED060
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ECEDE:
	sub r0, r4, #3
	cmp r0, #1
	bhi _021ECEF4
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r5, #0
	add r3, r6, #0
	bl ov5_021EE228
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ECEF4:
	add r0, r7, #0
	add r1, r6, #0
	bl ov5_021ECF1C
	str r0, [r5, #0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECEB4

	thumb_func_start ov5_021ECF04
ov5_021ECF04: ; 0x021ECF04
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062920
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ECEB4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECF04

	thumb_func_start ov5_021ECF1C
ov5_021ECF1C: ; 0x021ECF1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r4, r1, #0
	bl ov5_021EDEA8
	add r5, r0, #0
	bl ov5_021EDC8C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDA0C
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED110
	add r5, r0, #0
	bne _021ECF48
	bl sub_02022974
_021ECF48:
	add r0, r6, #0
	add r1, sp, #0
	bl ov5_021ECDA0
	add r0, r4, #0
	bl ov5_021EDD50
	add r3, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, sp, #0
	bl ov5_021EDDDC
	add r4, r0, #0
	bne _021ECF6A
	bl sub_02022974
_021ECF6A:
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov5_021ECF1C

	thumb_func_start ov5_021ECF70
ov5_021ECF70: ; 0x021ECF70
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r4, r2, #0
	bl sub_020211FC
	mov r0, #0
	str r0, [r5, #0]
	add r0, r6, #0
	bl sub_02062A40
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021ED1C8
	cmp r0, #0
	bne _021ECFA0
	add r0, r6, #0
	bl ov5_021EDEA8
	add r1, r4, #0
	bl ov5_021ED184
_021ECFA0:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021ECF70

	thumb_func_start ov5_021ECFA4
ov5_021ECFA4: ; 0x021ECFA4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl ov5_021ED094
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021ECFD6
	add r0, r5, #0
	bl sub_02062920
	add r6, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _021ECFCC
	add r0, r5, #0
	bl sub_02067800
	add r6, r0, #0
_021ECFCC:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov5_021ECF70
_021ECFD6:
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021ECFA4

	thumb_func_start ov5_021ECFD8
ov5_021ECFD8: ; 0x021ECFD8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl ov5_021ED094
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021ECFF2
	bl sub_020211FC
	mov r0, #0
	str r0, [r5, #0]
_021ECFF2:
	ldr r0, _021ED018 ; =0x0000FFFF
	cmp r4, r0
	beq _021ED016
	add r0, r6, #0
	bl sub_02062A40
	add r1, r6, #0
	add r2, r4, #0
	bl ov5_021ED1C8
	cmp r0, #0
	bne _021ED016
	add r0, r6, #0
	bl ov5_021EDEA8
	add r1, r4, #0
	bl ov5_021ED184
_021ED016:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021ED018: .word 0x0000FFFF
	thumb_func_end ov5_021ECFD8

	thumb_func_start ov5_021ED01C
ov5_021ED01C: ; 0x021ED01C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021334
	strh r0, [r4]
	add r0, r5, #0
	bl sub_02021358
	strh r0, [r4, #2]
	add r0, r5, #0
	bl sub_02021394
	str r0, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED01C

	thumb_func_start ov5_021ED03C
ov5_021ED03C: ; 0x021ED03C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrh r1, [r4]
	add r5, r0, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02021320
	ldrh r1, [r4, #2]
	add r0, r5, #0
	bl sub_02021344
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl sub_02021380
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED03C

	thumb_func_start ov5_021ED060
ov5_021ED060: ; 0x021ED060
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDEA8
	add r1, r6, #0
	add r7, r0, #0
	bl ov5_021ED3A4
	cmp r0, #0
	bne _021ED084
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021ECF1C
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021ED084:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov5_021EE228
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED060

	thumb_func_start ov5_021ED094
ov5_021ED094: ; 0x021ED094
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021EDEA8
	add r1, r4, #0
	bl ov5_021EE264
	pop {r4, pc}
	thumb_func_end ov5_021ED094

	thumb_func_start ov5_021ED0A4
ov5_021ED0A4: ; 0x021ED0A4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0x28
	add r7, r0, #0
	mov r0, #4
	mul r1, r5
	bl sub_02018144
	add r6, r0, #0
	add r0, r7, #0
	add r0, #0xe4
	str r6, [r0, #0]
	cmp r6, #0
	bne _021ED0C4
	bl sub_02022974
_021ED0C4:
	mov r0, #4
	lsl r1, r5, #3
	bl sub_02018144
	add r4, r0, #0
	add r7, #0xf4
	str r4, [r7, #0]
	cmp r4, #0
	bne _021ED0DA
	bl sub_02022974
_021ED0DA:
	ldr r0, _021ED0EC ; =0x0000FFFF
_021ED0DC:
	str r0, [r4, #0]
	str r6, [r4, #4]
	add r4, #8
	add r6, #0x28
	sub r5, r5, #1
	bne _021ED0DC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED0EC: .word 0x0000FFFF
	thumb_func_end ov5_021ED0A4

	thumb_func_start ov5_021ED0F0
ov5_021ED0F0: ; 0x021ED0F0
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021ED1A4
	add r1, r4, #0
	add r1, #0xe4
	ldr r1, [r1, #0]
	mov r0, #4
	bl sub_02018238
	add r4, #0xf4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	pop {r4, pc}
	thumb_func_end ov5_021ED0F0

	thumb_func_start ov5_021ED110
ov5_021ED110: ; 0x021ED110
	push {r4, r5, r6, lr}
	add r2, r0, #0
	add r2, #0xf4
	ldr r4, [r2, #0]
	ldr r2, [r0, #4]
	add r6, r4, #0
	add r5, r2, #0
_021ED11E:
	ldr r3, [r6, #0]
	cmp r3, r1
	bne _021ED128
	ldr r0, [r6, #4]
	pop {r4, r5, r6, pc}
_021ED128:
	add r6, #8
	sub r5, r5, #1
	bne _021ED11E
	ldr r3, _021ED14C ; =0x0000FFFF
_021ED130:
	ldr r5, [r4, #0]
	cmp r5, r3
	bne _021ED142
	str r1, [r4, #0]
	ldr r2, [r4, #4]
	bl ov5_021EDE3C
	ldr r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021ED142:
	add r4, #8
	sub r2, r2, #1
	bne _021ED130
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021ED14C: .word 0x0000FFFF
	thumb_func_end ov5_021ED110

	thumb_func_start ov5_021ED150
ov5_021ED150: ; 0x021ED150
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0206285C
	add r1, r0, #0
	add r1, #0xf4
	ldr r2, [r1, #0]
	ldr r1, [r0, #4]
_021ED162:
	ldr r0, [r2, #0]
	cmp r0, r5
	bne _021ED178
	ldr r3, [r2, #4]
	mov r2, #5
_021ED16C:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _021ED16C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED178:
	add r2, #8
	sub r1, r1, #1
	bne _021ED162
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED150

	thumb_func_start ov5_021ED184
ov5_021ED184: ; 0x021ED184
	add r2, r0, #0
	add r2, #0xf4
	ldr r3, [r2, #0]
	ldr r2, [r0, #4]
_021ED18C:
	ldr r0, [r3, #0]
	cmp r0, r1
	bne _021ED198
	ldr r0, _021ED1A0 ; =0x0000FFFF
	str r0, [r3, #0]
	bx lr
_021ED198:
	add r3, #8
	sub r2, r2, #1
	bne _021ED18C
	bx lr
	; .align 2, 0
_021ED1A0: .word 0x0000FFFF
	thumb_func_end ov5_021ED184

	thumb_func_start ov5_021ED1A4
ov5_021ED1A4: ; 0x021ED1A4
	push {r3, r4}
	add r1, r0, #0
	add r1, #0xf4
	ldr r4, [r1, #0]
	ldr r1, _021ED1C4 ; =0x0000FFFF
	ldr r3, [r0, #4]
	add r0, r1, #0
_021ED1B2:
	ldr r2, [r4, #0]
	cmp r2, r0
	beq _021ED1BA
	str r1, [r4, #0]
_021ED1BA:
	add r4, #8
	sub r3, r3, #1
	bne _021ED1B2
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021ED1C4: .word 0x0000FFFF
	thumb_func_end ov5_021ED1A4

	thumb_func_start ov5_021ED1C8
ov5_021ED1C8: ; 0x021ED1C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02062824
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062868
	str r0, [sp]
_021ED1DE:
	ldr r0, [sp]
	cmp r0, r6
	beq _021ED212
	bl sub_02062CF8
	cmp r0, #1
	bne _021ED212
	ldr r0, [sp]
	bl sub_02062920
	add r5, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _021ED204
	ldr r0, [sp]
	bl sub_02067800
	add r5, r0, #0
_021ED204:
	ldr r0, _021ED220 ; =0x0000FFFF
	cmp r5, r0
	beq _021ED212
	cmp r5, r7
	bne _021ED212
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ED212:
	add r0, sp, #0
	bl sub_02062880
	sub r4, r4, #1
	bne _021ED1DE
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED220: .word 0x0000FFFF
	thumb_func_end ov5_021ED1C8

	thumb_func_start ov5_021ED224
ov5_021ED224: ; 0x021ED224
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	mov r0, #4
	mov r1, #0x40
	lsl r2, r4, #0xc
	add r3, r4, #0
	bl ov5_021F067C
	add r1, r5, #0
	add r1, #0xf8
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov5_021ED558
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021EDCC4
	add r0, r5, #0
	sub r1, r4, r6
	bl ov5_021EDCCC
	mov r0, #4
	mov r1, #0x41
	lsl r2, r7, #7
	add r3, r7, #0
	bl ov5_021F067C
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov5_021ED694
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	bl ov5_021EDCD4
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	sub r1, r7, r1
	bl ov5_021EDCDC
	ldr r0, [sp, #0x1c]
	mov r1, #4
	bl sub_02022BD8
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EDCA8
	add r0, r5, #0
	bl ov5_021ED7D0
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov5_021EDCE4
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	sub r1, r2, r1
	bl ov5_021EDCEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021ED224

	thumb_func_start ov5_021ED2AC
ov5_021ED2AC: ; 0x021ED2AC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl ov5_021F06D8
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl ov5_021F06D8
	add r0, r4, #0
	bl ov5_021EDCB0
	bl sub_02022C1C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED2AC

	thumb_func_start ov5_021ED2D0
ov5_021ED2D0:
	ldr r3, [r2, #0]
	cmp r3, r0
	bne _021ED2DA
	add r0, r2, #0
	bx lr
_021ED2DA:
	add r2, #8
	ldr r3, [r2, #0]
	cmp r3, r1
	bne ov5_021ED2D0
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021ED2D0

	thumb_func_start ov5_021ED2E8
ov5_021ED2E8: ; 0x021ED2E8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r7, r3, #0
	bl ov5_021F0770
	cmp r0, #1
	bne _021ED302
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ED302:
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021ED2D0
	add r7, r0, #0
	bne _021ED314
	bl sub_02022974
_021ED314:
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_020628A0
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r3, [r7, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021F0784
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED2E8

	thumb_func_start ov5_021ED334
ov5_021ED334: ; 0x021ED334
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xf0
	add r4, r2, #0
	add r6, r1, #0
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r7, r3, #0
	bl sub_02022C40
	cmp r0, #0
	bne _021ED350
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ED350:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDFF0
	cmp r0, #0
	beq _021ED360
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021ED360:
	ldr r1, _021ED38C ; =0x0000FFFF
	add r0, r4, #0
	add r2, r7, #0
	bl ov5_021ED2D0
	add r2, r0, #0
	bne _021ED372
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_021ED372:
	ldr r2, [r2, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #0
	bl ov5_021EDF3C
	cmp r0, #1
	bne _021ED386
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021ED386:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED38C: .word 0x0000FFFF
	thumb_func_end ov5_021ED334

	thumb_func_start ov5_021ED390
ov5_021ED390: ; 0x021ED390
	push {r3, lr}
	ldr r3, _021ED3A0 ; =0x021FC9B4
	add r2, r1, #0
	mov r1, #0
	bl ov5_021ED334
	pop {r3, pc}
	nop
_021ED3A0: .word 0x021FC9B4
	thumb_func_end ov5_021ED390

	thumb_func_start ov5_021ED3A4
ov5_021ED3A4: ; 0x021ED3A4
	push {r3, lr}
	ldr r3, _021ED3B4 ; =0x021FC9B4
	add r2, r1, #0
	mov r1, #1
	bl ov5_021ED334
	pop {r3, pc}
	nop
_021ED3B4: .word 0x021FC9B4
	thumb_func_end ov5_021ED3A4

	thumb_func_start ov5_021ED3B8
ov5_021ED3B8: ; 0x021ED3B8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _021ED3D8 ; =0x0000FFFF
	cmp r1, r0
	beq _021ED3D6
	add r6, r0, #0
_021ED3C8:
	add r0, r5, #0
	bl ov5_021ED390
	add r4, r4, #4
	ldr r1, [r4, #0]
	cmp r1, r6
	bne _021ED3C8
_021ED3D6:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021ED3D8: .word 0x0000FFFF
	thumb_func_end ov5_021ED3B8

	thumb_func_start ov5_021ED3DC
ov5_021ED3DC: ; 0x021ED3DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDC98
	ldr r0, _021ED404 ; =0x021FB484
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xf8
	ldr r1, [r1, #0]
	ldr r3, _021ED408 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl ov5_021ED2E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED56C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021ED404: .word 0x021FB484
_021ED408: .word 0x0000FFFF
	thumb_func_end ov5_021ED3DC

	thumb_func_start ov5_021ED40C
ov5_021ED40C: ; 0x021ED40C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDC98
	ldr r0, _021ED434 ; =0x021FB484
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xf8
	ldr r1, [r1, #0]
	ldr r3, _021ED438 ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl ov5_021ED2E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED5B4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021ED434: .word 0x021FB484
_021ED438: .word 0x0000FFFF
	thumb_func_end ov5_021ED40C

	thumb_func_start ov5_021ED43C
ov5_021ED43C: ; 0x021ED43C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _021ED45C ; =0x0000FFFF
	cmp r1, r0
	beq _021ED45A
	add r6, r0, #0
_021ED44C:
	add r0, r5, #0
	bl ov5_021ED3DC
	add r4, r4, #4
	ldr r1, [r4, #0]
	cmp r1, r6
	bne _021ED44C
_021ED45A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021ED45C: .word 0x0000FFFF
	thumb_func_end ov5_021ED43C

	thumb_func_start ov5_021ED460
ov5_021ED460: ; 0x021ED460
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCA0
	ldr r0, _021ED488 ; =0x021FB5BC
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xfc
	ldr r1, [r1, #0]
	ldr r3, _021ED48C ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl ov5_021ED2E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED6A8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021ED488: .word 0x021FB5BC
_021ED48C: .word 0x0000FFFF
	thumb_func_end ov5_021ED460

	thumb_func_start ov5_021ED490
ov5_021ED490: ; 0x021ED490
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCA0
	ldr r0, _021ED4B8 ; =0x021FB5BC
	add r1, r5, #0
	str r0, [sp]
	add r1, #0xfc
	ldr r1, [r1, #0]
	ldr r3, _021ED4BC ; =0x0000FFFF
	add r0, r5, #0
	add r2, r4, #0
	bl ov5_021ED2E8
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED6F0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021ED4B8: .word 0x021FB5BC
_021ED4BC: .word 0x0000FFFF
	thumb_func_end ov5_021ED490

	thumb_func_start ov5_021ED4C0
ov5_021ED4C0: ; 0x021ED4C0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, [r4, #0]
	ldr r0, _021ED4E0 ; =0x0000FFFF
	cmp r1, r0
	beq _021ED4DE
	add r6, r0, #0
_021ED4D0:
	add r0, r5, #0
	bl ov5_021ED460
	add r4, r4, #4
	ldr r1, [r4, #0]
	cmp r1, r6
	bne _021ED4D0
_021ED4DE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021ED4E0: .word 0x0000FFFF
	thumb_func_end ov5_021ED4C0

	thumb_func_start ov5_021ED4E4
ov5_021ED4E4: ; 0x021ED4E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl ov5_021ED3B8
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED43C
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021ED4C0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED4E4
_021ED502: .space 0x2
_021ED504:
	stmia r0!, {r1}
	sub r2, r2, #1
	bne _021ED504
	bx lr

	thumb_func_start ov5_021ED50C
ov5_021ED50C: ; 0x021ED50C
	push {r3, r4}
_021ED50E:
	ldr r4, [r0, #0]
	cmp r4, r2
	bne _021ED51C
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021ED51C:
	add r0, r0, #4
	sub r3, r3, #1
	bne _021ED50E
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov5_021ED50C
_021ED528:
	ldr r3, [r0, #0]
	cmp r3, r1
	bne _021ED532
	mov r0, #1
	bx lr
_021ED532:
	add r0, r0, #4
	sub r2, r2, #1
	bne _021ED528
	mov r0, #0
	bx lr

	thumb_func_start ov5_021ED53C
ov5_021ED53C: ; 0x021ED53C
	push {r3, r4}
_021ED53E:
	ldr r4, [r0, #0]
	cmp r4, r1
	bne _021ED54C
	str r2, [r0, #0]
	mov r0, #1
	pop {r3, r4}
	bx lr
_021ED54C:
	add r0, r0, #4
	sub r3, r3, #1
	bne _021ED53E
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov5_021ED53C

	thumb_func_start ov5_021ED558
ov5_021ED558: ; 0x021ED558
	push {r3, lr}
	bl ov5_021EDCBC
	ldr r1, _021ED568 ; =0x0000FFFF
	mov r2, #8
	bl _021ED504
	pop {r3, pc}
	; .align 2, 0
_021ED568: .word 0x0000FFFF
	thumb_func_end ov5_021ED558

	thumb_func_start ov5_021ED56C
ov5_021ED56C: ; 0x021ED56C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCC8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCBC
	ldr r2, _021ED594 ; =0x0000FFFF
	add r1, r4, #0
	add r3, r6, #0
	bl ov5_021ED50C
	cmp r0, #0
	bne _021ED590
	bl sub_02022974
_021ED590:
	pop {r4, r5, r6, pc}
	nop
_021ED594: .word 0x0000FFFF
	thumb_func_end ov5_021ED56C

	thumb_func_start ov5_021ED598
ov5_021ED598: ; 0x021ED598
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCC8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCBC
	add r1, r4, #0
	add r2, r6, #0
	bl _021ED528
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021ED598

	thumb_func_start ov5_021ED5B4
ov5_021ED5B4: ; 0x021ED5B4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCBC
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCC8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCD0
	add r3, r0, #0
	ldr r2, _021ED5E4 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov5_021ED50C
	cmp r0, #0
	bne _021ED5E2
	bl sub_02022974
_021ED5E2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED5E4: .word 0x0000FFFF
	thumb_func_end ov5_021ED5B4

	thumb_func_start ov5_021ED5E8
ov5_021ED5E8: ; 0x021ED5E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCBC
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCC8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCD0
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021ED528
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED5E8

	thumb_func_start ov5_021ED610
ov5_021ED610: ; 0x021ED610
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCBC
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCC8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCD0
	add r3, r0, #0
	ldr r2, _021ED638 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov5_021ED53C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED638: .word 0x0000FFFF
	thumb_func_end ov5_021ED610

	thumb_func_start ov5_021ED63C
ov5_021ED63C: ; 0x021ED63C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl ov5_021EDC98
	add r0, r6, #0
	bl ov5_021EDCBC
	add r4, r0, #0
	add r0, r6, #0
	bl ov5_021EDCC8
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl ov5_021EDCD0
	add r4, r0, #0
_021ED662:
	ldr r1, [r5, #0]
	ldr r0, _021ED690 ; =0x0000FFFF
	cmp r1, r0
	beq _021ED686
	add r0, r7, #0
	mov r2, #0
	bl ov5_021EDAB4
	cmp r0, #0
	bne _021ED686
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	bl ov5_021F0740
	ldr r0, _021ED690 ; =0x0000FFFF
	str r0, [r5, #0]
_021ED686:
	add r5, r5, #4
	sub r4, r4, #1
	bne _021ED662
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED690: .word 0x0000FFFF
	thumb_func_end ov5_021ED63C

	thumb_func_start ov5_021ED694
ov5_021ED694: ; 0x021ED694
	push {r3, lr}
	bl ov5_021EDCC0
	ldr r1, _021ED6A4 ; =0x0000FFFF
	mov r2, #8
	bl _021ED504
	pop {r3, pc}
	; .align 2, 0
_021ED6A4: .word 0x0000FFFF
	thumb_func_end ov5_021ED694

	thumb_func_start ov5_021ED6A8
ov5_021ED6A8: ; 0x021ED6A8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCD8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCC0
	ldr r2, _021ED6D0 ; =0x0000FFFF
	add r1, r4, #0
	add r3, r6, #0
	bl ov5_021ED50C
	cmp r0, #0
	bne _021ED6CC
	bl sub_02022974
_021ED6CC:
	pop {r4, r5, r6, pc}
	nop
_021ED6D0: .word 0x0000FFFF
	thumb_func_end ov5_021ED6A8

	thumb_func_start ov5_021ED6D4
ov5_021ED6D4: ; 0x021ED6D4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCD8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCC0
	add r1, r4, #0
	add r2, r6, #0
	bl _021ED528
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021ED6D4

	thumb_func_start ov5_021ED6F0
ov5_021ED6F0: ; 0x021ED6F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCC0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCD8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCE0
	add r3, r0, #0
	ldr r2, _021ED720 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov5_021ED50C
	cmp r0, #0
	bne _021ED71E
	bl sub_02022974
_021ED71E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED720: .word 0x0000FFFF
	thumb_func_end ov5_021ED6F0

	thumb_func_start ov5_021ED724
ov5_021ED724: ; 0x021ED724
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCC0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCD8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCE0
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021ED528
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED724

	thumb_func_start ov5_021ED74C
ov5_021ED74C: ; 0x021ED74C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCC0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCD8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCE0
	add r3, r0, #0
	ldr r2, _021ED774 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov5_021ED53C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED774: .word 0x0000FFFF
	thumb_func_end ov5_021ED74C

	thumb_func_start ov5_021ED778
ov5_021ED778: ; 0x021ED778
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	bl ov5_021EDCA0
	add r0, r6, #0
	bl ov5_021EDCC0
	add r4, r0, #0
	add r0, r6, #0
	bl ov5_021EDCD8
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl ov5_021EDCE0
	add r4, r0, #0
_021ED79E:
	ldr r1, [r5, #0]
	ldr r0, _021ED7CC ; =0x0000FFFF
	cmp r1, r0
	beq _021ED7C2
	add r0, r7, #0
	mov r2, #0
	bl ov5_021EDB3C
	cmp r0, #0
	bne _021ED7C2
	add r0, r6, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	ldr r1, [r5, #0]
	bl ov5_021F0740
	ldr r0, _021ED7CC ; =0x0000FFFF
	str r0, [r5, #0]
_021ED7C2:
	add r5, r5, #4
	sub r4, r4, #1
	bne _021ED79E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED7CC: .word 0x0000FFFF
	thumb_func_end ov5_021ED778

	thumb_func_start ov5_021ED7D0
ov5_021ED7D0: ; 0x021ED7D0
	push {r3, lr}
	bl ov5_021EDCB8
	ldr r1, _021ED7E0 ; =0x0000FFFF
	mov r2, #0x20
	bl _021ED504
	pop {r3, pc}
	; .align 2, 0
_021ED7E0: .word 0x0000FFFF
	thumb_func_end ov5_021ED7D0

	thumb_func_start ov5_021ED7E4
ov5_021ED7E4: ; 0x021ED7E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCB8
	ldr r2, _021ED80C ; =0x0000FFFF
	add r1, r4, #0
	add r3, r6, #0
	bl ov5_021ED50C
	cmp r0, #0
	bne _021ED808
	bl sub_02022974
_021ED808:
	pop {r4, r5, r6, pc}
	nop
_021ED80C: .word 0x0000FFFF
	thumb_func_end ov5_021ED7E4

	thumb_func_start ov5_021ED810
ov5_021ED810: ; 0x021ED810
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EDCE8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCB8
	add r1, r4, #0
	add r2, r6, #0
	bl _021ED528
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021ED810

	thumb_func_start ov5_021ED82C
ov5_021ED82C: ; 0x021ED82C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED810
	cmp r0, #1
	bne _021ED83E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED83E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED924
	cmp r0, #1
	bne _021ED84E
	mov r0, #2
	pop {r3, r4, r5, pc}
_021ED84E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDFF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021ED82C

	thumb_func_start ov5_021ED858
ov5_021ED858: ; 0x021ED858
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCB8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCE8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCF0
	add r3, r0, #0
	ldr r2, _021ED888 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov5_021ED50C
	cmp r0, #0
	bne _021ED886
	bl sub_02022974
_021ED886:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED888: .word 0x0000FFFF
	thumb_func_end ov5_021ED858

	thumb_func_start ov5_021ED88C
ov5_021ED88C: ; 0x021ED88C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCB8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCE8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCF0
	add r3, r0, #0
	ldr r2, _021ED8B4 ; =0x0000FFFF
	add r0, r6, r4
	add r1, r7, #0
	bl ov5_021ED53C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021ED8B4: .word 0x0000FFFF
	thumb_func_end ov5_021ED88C

	thumb_func_start ov5_021ED8B8
ov5_021ED8B8: ; 0x021ED8B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	str r0, [sp]
	add r0, r6, #0
	bl ov5_021EDCB0
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov5_021EDCB8
	add r4, r0, #0
	add r0, r6, #0
	bl ov5_021EDCE8
	lsl r0, r0, #2
	add r5, r4, r0
	add r0, r6, #0
	bl ov5_021EDCF0
	add r7, r0, #0
_021ED8E2:
	ldr r4, [r5, #0]
	ldr r0, _021ED920 ; =0x0000FFFF
	cmp r4, r0
	beq _021ED914
	ldr r0, [sp]
	add r1, r4, #0
	mov r2, #0
	bl ov5_021EDA54
	cmp r0, #0
	bne _021ED914
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_02022D38
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021EDFBC
	add r0, r6, #0
	add r1, r4, #0
	bl ov5_021EE170
	ldr r0, _021ED920 ; =0x0000FFFF
	str r0, [r5, #0]
_021ED914:
	add r5, r5, #4
	sub r7, r7, #1
	bne _021ED8E2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021ED920: .word 0x0000FFFF
	thumb_func_end ov5_021ED8B8

	thumb_func_start ov5_021ED924
ov5_021ED924: ; 0x021ED924
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	bl ov5_021EDCB8
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDCE8
	lsl r4, r0, #2
	add r0, r5, #0
	bl ov5_021EDCF0
	add r2, r0, #0
	add r0, r6, r4
	add r1, r7, #0
	bl _021ED528
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED924

	thumb_func_start ov5_021ED94C
ov5_021ED94C: ; 0x021ED94C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED810
	cmp r0, #1
	bne _021ED95E
	mov r0, #0
	pop {r3, r4, r5, pc}
_021ED95E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED924
	cmp r0, #1
	bne _021ED96E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED96E:
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED94C

	thumb_func_start ov5_021ED974
ov5_021ED974: ; 0x021ED974
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED598
	cmp r0, #1
	bne _021ED986
	mov r0, #0
	pop {r3, r4, r5, pc}
_021ED986:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED5E8
	cmp r0, #1
	bne _021ED996
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED996:
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED974

	thumb_func_start ov5_021ED99C
ov5_021ED99C: ; 0x021ED99C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED6D4
	cmp r0, #1
	bne _021ED9AE
	mov r0, #0
	pop {r3, r4, r5, pc}
_021ED9AE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED724
	cmp r0, #1
	bne _021ED9BE
	mov r0, #1
	pop {r3, r4, r5, pc}
_021ED9BE:
	mov r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021ED99C

	thumb_func_start ov5_021ED9C4
ov5_021ED9C4: ; 0x021ED9C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED82C
	cmp r0, #0
	bne _021ED9DA
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED3A4
_021ED9DA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021ED9C4

	thumb_func_start ov5_021ED9DC
ov5_021ED9DC: ; 0x021ED9DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED974
	cmp r0, #2
	bne _021ED9F2
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED40C
_021ED9F2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021ED9DC

	thumb_func_start ov5_021ED9F4
ov5_021ED9F4: ; 0x021ED9F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED99C
	cmp r0, #2
	bne _021EDA0A
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED490
_021EDA0A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021ED9F4

	thumb_func_start ov5_021EDA0C
ov5_021EDA0C: ; 0x021EDA0C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021EDD2C
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021ED9DC
	add r0, r4, #0
	bl ov5_021EDD38
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021ED9F4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED9C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EDA0C

	thumb_func_start ov5_021EDA38
ov5_021EDA38: ; 0x021EDA38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021ED63C
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED778
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED8B8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EDA38

	thumb_func_start ov5_021EDA54
ov5_021EDA54: ; 0x021EDA54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl sub_020625B0
	cmp r0, #1
	bne _021EDAAE
_021EDA72:
	cmp r5, #0
	beq _021EDA7C
	ldr r0, [sp]
	cmp r5, r0
	beq _021EDA9E
_021EDA7C:
	ldr r0, [sp]
	bl sub_02062920
	add r4, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _021EDA94
	ldr r0, [sp]
	bl sub_02067800
	add r4, r0, #0
_021EDA94:
	cmp r4, r6
	bne _021EDA9E
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EDA9E:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _021EDA72
_021EDAAE:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EDA54

	thumb_func_start ov5_021EDAB4
ov5_021EDAB4: ; 0x021EDAB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl sub_020625B0
	cmp r0, #1
	bne _021EDB32
_021EDAD2:
	cmp r5, #0
	beq _021EDADC
	ldr r0, [sp]
	cmp r5, r0
	beq _021EDB22
_021EDADC:
	ldr r0, [sp]
	bl sub_02062920
	add r4, r0, #0
	ldr r0, _021EDB38 ; =0x0000FFFF
	cmp r4, r0
	beq _021EDB22
	ldr r0, [sp]
	bl ov5_021ECD04
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021EDB22
	add r0, r4, #0
	bl sub_020677F4
	cmp r0, #1
	bne _021EDB0C
	ldr r0, [sp]
	bl sub_02067800
	add r4, r0, #0
_021EDB0C:
	ldr r0, _021EDB38 ; =0x0000FFFF
	cmp r4, r0
	beq _021EDB22
	add r0, r4, #0
	bl ov5_021EDD2C
	cmp r6, r0
	bne _021EDB22
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EDB22:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _021EDAD2
_021EDB32:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EDB38: .word 0x0000FFFF
	thumb_func_end ov5_021EDAB4

	thumb_func_start ov5_021EDB3C
ov5_021EDB3C: ; 0x021EDB3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	mov r1, #0
	add r5, r2, #0
	str r1, [sp, #4]
	str r1, [sp]
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	add r7, r0, #0
	bl sub_020625B0
	cmp r0, #1
	bne _021EDBB8
_021EDB5A:
	cmp r5, #0
	beq _021EDB64
	ldr r0, [sp]
	cmp r0, r5
	beq _021EDBA8
_021EDB64:
	ldr r0, _021EDBC0 ; =0x0000FFFF
	cmp r4, r0
	beq _021EDBA8
	ldr r0, [sp]
	bl ov5_021ECD04
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021EDBA8
	ldr r0, [sp]
	bl sub_02062920
	add r4, r0, #0
	bl sub_020677F4
	cmp r0, #1
	bne _021EDB92
	ldr r0, [sp]
	bl sub_02067800
	add r4, r0, #0
_021EDB92:
	ldr r0, _021EDBC0 ; =0x0000FFFF
	cmp r4, r0
	beq _021EDBA8
	add r0, r4, #0
	bl ov5_021EDD38
	cmp r6, r0
	bne _021EDBA8
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EDBA8:
	add r0, r7, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #1
	beq _021EDB5A
_021EDBB8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EDBC0: .word 0x0000FFFF
	thumb_func_end ov5_021EDB3C

	thumb_func_start ov5_021EDBC4
ov5_021EDBC4: ; 0x021EDBC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	add r7, r2, #0
	bl sub_0206285C
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD2C
	str r0, [sp]
	ldr r1, [sp]
	add r0, r4, #0
	bl ov5_021ED974
	cmp r0, #1
	bne _021EDC0A
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl ov5_021EDAB4
	cmp r0, #0
	bne _021EDC0A
	add r0, r4, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	ldr r1, [sp]
	bl ov5_021F0740
	ldr r1, [sp]
	add r0, r4, #0
	bl ov5_021ED610
_021EDC0A:
	add r0, r5, #0
	bl ov5_021EDD38
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov5_021ED99C
	cmp r0, #1
	bne _021EDC40
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r7, #0
	bl ov5_021EDB3C
	cmp r0, #0
	bne _021EDC40
	add r0, r4, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	ldr r1, [sp, #4]
	bl ov5_021F0740
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov5_021ED74C
_021EDC40:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021ED94C
	cmp r0, #1
	bne _021EDC7E
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov5_021EDA54
	cmp r0, #0
	bne _021EDC7E
	add r0, r4, #0
	bl ov5_021EDCB0
	add r1, r5, #0
	bl sub_02022D38
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021ED88C
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021EDFBC
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021EE170
_021EDC7E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDBC4

	thumb_func_start ov5_021EDC84
ov5_021EDC84: ; 0x021EDC84
	add r0, #0xe0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDC84

	thumb_func_start ov5_021EDC8C
ov5_021EDC8C: ; 0x021EDC8C
	add r0, #0xe0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDC8C

	thumb_func_start ov5_021EDC94
ov5_021EDC94: ; 0x021EDC94
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov5_021EDC94

	thumb_func_start ov5_021EDC98
ov5_021EDC98: ; 0x021EDC98
	add r0, #0xe8
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDC98

	thumb_func_start ov5_021EDCA0
ov5_021EDCA0: ; 0x021EDCA0
	add r0, #0xec
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDCA0

	thumb_func_start ov5_021EDCA8
ov5_021EDCA8: ; 0x021EDCA8
	add r0, #0xf0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDCA8

	thumb_func_start ov5_021EDCB0
ov5_021EDCB0: ; 0x021EDCB0
	add r0, #0xf0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDCB0

	thumb_func_start ov5_021EDCB8
ov5_021EDCB8: ; 0x021EDCB8
	add r0, #0x60
	bx lr
	thumb_func_end ov5_021EDCB8

	thumb_func_start ov5_021EDCBC
ov5_021EDCBC: ; 0x021EDCBC
	add r0, #0x20
	bx lr
	thumb_func_end ov5_021EDCBC

	thumb_func_start ov5_021EDCC0
ov5_021EDCC0: ; 0x021EDCC0
	add r0, #0x40
	bx lr
	thumb_func_end ov5_021EDCC0

	thumb_func_start ov5_021EDCC4
ov5_021EDCC4: ; 0x021EDCC4
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov5_021EDCC4

	thumb_func_start ov5_021EDCC8
ov5_021EDCC8: ; 0x021EDCC8
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov5_021EDCC8

	thumb_func_start ov5_021EDCCC
ov5_021EDCCC: ; 0x021EDCCC
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021EDCCC

	thumb_func_start ov5_021EDCD0
ov5_021EDCD0: ; 0x021EDCD0
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov5_021EDCD0

	thumb_func_start ov5_021EDCD4
ov5_021EDCD4: ; 0x021EDCD4
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov5_021EDCD4

	thumb_func_start ov5_021EDCD8
ov5_021EDCD8: ; 0x021EDCD8
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov5_021EDCD8

	thumb_func_start ov5_021EDCDC
ov5_021EDCDC: ; 0x021EDCDC
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov5_021EDCDC

	thumb_func_start ov5_021EDCE0
ov5_021EDCE0: ; 0x021EDCE0
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov5_021EDCE0

	thumb_func_start ov5_021EDCE4
ov5_021EDCE4: ; 0x021EDCE4
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov5_021EDCE4

	thumb_func_start ov5_021EDCE8
ov5_021EDCE8: ; 0x021EDCE8
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov5_021EDCE8

	thumb_func_start ov5_021EDCEC
ov5_021EDCEC: ; 0x021EDCEC
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov5_021EDCEC

	thumb_func_start ov5_021EDCF0
ov5_021EDCF0: ; 0x021EDCF0
	ldr r0, [r0, #0x1c]
	bx lr
	thumb_func_end ov5_021EDCF0

	thumb_func_start ov5_021EDCF4
ov5_021EDCF4: ; 0x021EDCF4
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _021EDD00 ; =ov5_021ECD68
	bx r3
	nop
_021EDD00: .word ov5_021ECD68
	thumb_func_end ov5_021EDCF4

	thumb_func_start ov5_021EDD04
ov5_021EDD04: ; 0x021EDD04
	push {r3, lr}
	ldr r3, _021EDD24 ; =0x021FD77C
	ldr r1, _021EDD28 ; =0x0000FFFF
_021EDD0A:
	ldr r2, [r3, #0]
	cmp r2, r0
	bne _021EDD14
	add r0, r3, #0
	pop {r3, pc}
_021EDD14:
	add r3, #0x10
	ldr r2, [r3, #0]
	cmp r2, r1
	bne _021EDD0A
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021EDD24: .word 0x021FD77C
_021EDD28: .word 0x0000FFFF
	thumb_func_end ov5_021EDD04

	thumb_func_start ov5_021EDD2C
ov5_021EDD2C: ; 0x021EDD2C
	push {r3, lr}
	bl ov5_021EDD04
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDD2C

	thumb_func_start ov5_021EDD38
ov5_021EDD38: ; 0x021EDD38
	push {r3, lr}
	bl ov5_021EDD04
	ldr r0, [r0, #8]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDD38

	thumb_func_start ov5_021EDD44
ov5_021EDD44: ; 0x021EDD44
	push {r3, lr}
	bl ov5_021EDD04
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDD44

	thumb_func_start ov5_021EDD50
ov5_021EDD50: ; 0x021EDD50
	push {r3, lr}
	bl ov5_021EDD2C
	ldr r3, _021EDD70 ; =0x021FAF40
	ldr r1, _021EDD74 ; =0x0000FFFF
_021EDD5A:
	ldr r2, [r3, #0]
	cmp r2, r0
	bne _021EDD64
	mov r0, #0
	pop {r3, pc}
_021EDD64:
	add r3, r3, #4
	ldr r2, [r3, #0]
	cmp r2, r1
	bne _021EDD5A
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_021EDD70: .word 0x021FAF40
_021EDD74: .word 0x0000FFFF
	thumb_func_end ov5_021EDD50

	thumb_func_start ov5_021EDD78
ov5_021EDD78: ; 0x021EDD78
	push {r3, lr}
	cmp r1, #1
	bne _021EDD88
	mov r1, #1
	lsl r1, r1, #0x16
	bl sub_020628BC
	pop {r3, pc}
_021EDD88:
	mov r1, #1
	lsl r1, r1, #0x16
	bl sub_020628C4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDD78

	thumb_func_start ov5_021EDD94
ov5_021EDD94: ; 0x021EDD94
	push {r3, lr}
	mov r1, #1
	lsl r1, r1, #0x16
	bl sub_020628D0
	cmp r0, #0
	beq _021EDDA6
	mov r0, #1
	pop {r3, pc}
_021EDDA6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDD94

	thumb_func_start ov5_021EDDAC
ov5_021EDDAC: ; 0x021EDDAC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #4
	add r4, r1, #0
	str r0, [sp, #4]
	add r0, sp, #0
	str r4, [sp]
	bl sub_02020C44
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EDC84
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDC94
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EDDAC

	thumb_func_start ov5_021EDDD4
ov5_021EDDD4: ; 0x021EDDD4
	ldr r3, _021EDDD8 ; =sub_02020CCC
	bx r3
	; .align 2, 0
_021EDDD8: .word sub_02020CCC
	thumb_func_end ov5_021EDDD4

	thumb_func_start ov5_021EDDDC
ov5_021EDDDC: ; 0x021EDDDC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r3, #0
	ldmia r2!, {r0, r1}
	add r3, sp, #8
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	add r2, sp, #0x14
	str r0, [r3, #0]
	ldr r3, _021EDE38 ; =0x021FF4B4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, sp, #0
	bl sub_0202119C
	add r5, r0, #0
	beq _021EDE32
	mov r1, #0
	bl sub_02021320
	add r0, r5, #0
	mov r1, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	add r0, r5, #0
	bl sub_020213F4
	add r1, r4, #0
	bl NNS_G3dMdlSetMdlFogEnableFlagAll
	add r0, r5, #0
	bl sub_020213F4
	bl ov5_021D53A4
_021EDE32:
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021EDE38: .word 0x021FF4B4
	thumb_func_end ov5_021EDDDC

	thumb_func_start ov5_021EDE3C
ov5_021EDE3C: ; 0x021EDE3C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl ov5_021EDD2C
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl ov5_021F075C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov5_021EDD38
	add r1, r0, #0
	add r0, r6, #0
	add r0, #0xfc
	ldr r0, [r0, #0]
	bl ov5_021F075C
	add r1, r4, #0
	add r1, #0xc
	bl sub_02024184
	add r0, r6, #0
	bl ov5_021EDCB0
	add r1, r5, #0
	bl sub_02022D98
	add r6, r0, #0
	bl sub_02022DF4
	str r0, [r4, #4]
	add r0, r6, #0
	bl sub_02022EF4
	str r0, [r4, #0x1c]
	add r0, r6, #0
	bl sub_02022F04
	str r0, [r4, #0x20]
	add r0, r6, #0
	bl sub_02022F14
	str r0, [r4, #0x24]
	add r0, r5, #0
	bl ov5_021EDD44
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EDE3C

	thumb_func_start ov5_021EDEA8
ov5_021EDEA8: ; 0x021EDEA8
	push {r3, lr}
	bl sub_02062A40
	bl sub_0206285C
	pop {r3, pc}
	thumb_func_end ov5_021EDEA8

	thumb_func_start ov5_021EDEB4
ov5_021EDEB4: ; 0x021EDEB4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #0
	bl ov5_021ECDA0
	mov r0, #6
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_020212A8
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov5_021EDEB4

	thumb_func_start ov5_021EDED8
ov5_021EDED8: ; 0x021EDED8
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl sub_020628D8
	cmp r0, #1
	bne _021EDEEC
	mov r4, #0
_021EDEEC:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628D8
	cmp r0, #1
	bne _021EDF0A
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628D8
	cmp r0, #0
	bne _021EDF0A
	mov r4, #0
_021EDF0A:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02021320
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDED8

	thumb_func_start ov5_021EDF18
ov5_021EDF18: ; 0x021EDF18
	lsl r1, r0, #2
	ldr r0, _021EDF20 ; =0x021FF4C0
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_021EDF20: .word 0x021FF4C0
	thumb_func_end ov5_021EDF18

	thumb_func_start ov5_021EDF24
ov5_021EDF24: ; 0x021EDF24
	lsl r1, r0, #2
	ldr r0, _021EDF2C ; =0x021FF4D0
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_021EDF2C: .word 0x021FF4D0
	thumb_func_end ov5_021EDF24

	thumb_func_start ov5_021EDF30
ov5_021EDF30: ; 0x021EDF30
	lsl r1, r0, #2
	ldr r0, _021EDF38 ; =0x021FF4E0
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_021EDF38: .word 0x021FF4E0
	thumb_func_end ov5_021EDF30

	thumb_func_start ov5_021EDF3C
ov5_021EDF3C: ; 0x021EDF3C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r0]
	mov r0, #4
	add r6, r1, #0
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	add r7, r2, #0
	str r3, [sp]
	cmp r1, r0
	bge _021EDF66
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl sub_02020D50
	cmp r0, #1
	bne _021EDF98
_021EDF66:
	mov r2, #0
	ldrsh r3, [r4, r2]
	ldr r0, [r4, #0xc]
	cmp r3, #0
	ble _021EDF90
_021EDF70:
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _021EDF88
	add r5, #0xf0
	ldr r1, [r5, #0]
	str r1, [r0, #0xc]
	ldr r1, [sp]
	str r1, [r0, #8]
	str r6, [r0, #4]
	str r7, [r0, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EDF88:
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r3
	blt _021EDF70
_021EDF90:
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EDF98:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl ov5_021EDCF4
	add r2, r0, #0
	ldr r3, [sp]
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021EE0E8
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EDF3C

	thumb_func_start ov5_021EDFBC
ov5_021EDFBC: ; 0x021EDFBC
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #0xc]
	cmp r4, #0
	ble _021EDFEA
_021EDFCE:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021EDFE2
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021EDFE2
	mov r0, #0
	str r0, [r2, #0xc]
	pop {r3, r4}
	bx lr
_021EDFE2:
	add r3, r3, #1
	add r2, #0x10
	cmp r3, r4
	blt _021EDFCE
_021EDFEA:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDFBC

	thumb_func_start ov5_021EDFF0
ov5_021EDFF0: ; 0x021EDFF0
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #0xc]
	cmp r4, #0
	ble _021EE028
_021EE002:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021EE020
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq _021EE020
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _021EE01A
	mov r0, #3
	pop {r3, r4}
	bx lr
_021EE01A:
	mov r0, #4
	pop {r3, r4}
	bx lr
_021EE020:
	add r3, r3, #1
	add r2, #0x10
	cmp r3, r4
	blt _021EE002
_021EE028:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EDFF0

	thumb_func_start ov5_021EE030
ov5_021EE030: ; 0x021EE030
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	mov r1, #1
	ldr r0, [sp]
	lsl r1, r1, #8
	ldr r4, [r0, r1]
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r6, #0
	ldr r5, [r4, #0xc]
	bl sub_02020D50
	cmp r0, #1
	beq _021EE0E4
	add r7, r4, #4
	b _021EE07A
_021EE050:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _021EE076
	ldr r0, [sp]
	ldr r1, [r5, #0]
	mov r2, #0
	bl ov5_021EDCF4
	add r2, r0, #0
	ldr r0, [sp]
	ldr r1, [r5, #4]
	ldr r3, [r5, #8]
	bl ov5_021EE0E8
	mov r0, #0
	str r0, [r5, #0xc]
	ldrsh r0, [r7, r0]
	add r0, r0, #1
	strh r0, [r7]
_021EE076:
	add r5, #0x10
	add r6, r6, #1
_021EE07A:
	mov r0, #4
	ldrsh r1, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r1, r0
	bge _021EE08E
	mov r0, #0
	ldrsh r0, [r4, r0]
	cmp r6, r0
	blt _021EE050
_021EE08E:
	mov r6, #0
	ldrsh r0, [r4, r6]
	ldr r7, [r4, #0xc]
	sub r1, r0, #1
	cmp r1, #0
	ble _021EE0E0
	add r5, r7, #0
_021EE09C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bne _021EE0D2
	add r2, r6, #1
	cmp r2, r0
	bge _021EE0D2
	lsl r1, r2, #4
	add r3, r7, r1
_021EE0AC:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	beq _021EE0CA
	lsl r0, r2, #4
	add r3, r7, r0
	mov ip, r3
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r1, #0
	mov r0, ip
	str r1, [r0, #0xc]
	b _021EE0D2
_021EE0CA:
	add r2, r2, #1
	add r3, #0x10
	cmp r2, r0
	blt _021EE0AC
_021EE0D2:
	mov r0, #0
	ldrsh r0, [r4, r0]
	add r6, r6, #1
	add r5, #0x10
	sub r1, r0, #1
	cmp r6, r1
	blt _021EE09C
_021EE0E0:
	mov r0, #0
	strh r0, [r4, #4]
_021EE0E4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE030

	thumb_func_start ov5_021EE0E8
ov5_021EE0E8: ; 0x021EE0E8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #4
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xf0
	add r4, r1, #0
	add r6, r3, #0
	add r1, r2, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	mov r3, #1
	bl sub_02022C9C
	cmp r0, #0
	bne _021EE10E
	bl sub_02022974
_021EE10E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EE134
	cmp r6, #0
	bne _021EE126
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED7E4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021EE126:
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ED858
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE0E8

	thumb_func_start ov5_021EE134
ov5_021EE134: ; 0x021EE134
	push {r4, r5, r6, lr}
	mov r3, #1
	lsl r3, r3, #8
	ldr r3, [r0, r3]
	mov r5, #1
	ldr r4, [r3, #0x10]
	mov r2, #0
	strh r5, [r3, #6]
	ldrsh r6, [r3, r2]
	cmp r6, #0
	ble _021EE168
_021EE14A:
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _021EE160
	add r0, #0xf0
	ldr r0, [r0, #0]
	str r0, [r4, #8]
	str r1, [r4, #4]
	mov r0, #0
	str r0, [r4, #0]
	strh r0, [r3, #6]
	pop {r4, r5, r6, pc}
_021EE160:
	add r2, r2, #1
	add r4, #0xc
	cmp r2, r6
	blt _021EE14A
_021EE168:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE134

	thumb_func_start ov5_021EE170
ov5_021EE170: ; 0x021EE170
	push {r4, r5}
	mov r2, #1
	lsl r2, r2, #8
	ldr r2, [r0, r2]
	mov r0, #1
	ldr r4, [r2, #0x10]
	mov r3, #0
	strh r0, [r2, #6]
	ldrsh r5, [r2, r3]
	cmp r5, #0
	ble _021EE1A2
_021EE186:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EE19A
	ldr r0, [r4, #4]
	cmp r0, r1
	bne _021EE19A
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0]
	b _021EE1A2
_021EE19A:
	add r3, r3, #1
	add r4, #0xc
	cmp r3, r5
	blt _021EE186
_021EE1A2:
	mov r0, #0
	strh r0, [r2, #6]
	pop {r4, r5}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EE170

	thumb_func_start ov5_021EE1AC
ov5_021EE1AC: ; 0x021EE1AC
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r1, r0]
	ldrh r0, [r6, #6]
	cmp r0, #1
	beq _021EE1E6
	mov r4, #0
	ldrsh r0, [r6, r4]
	ldr r5, [r6, #0x10]
	cmp r0, #0
	ble _021EE1E6
	mov r7, #1
_021EE1C6:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _021EE1DA
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EE1DA
	ldr r1, [r5, #4]
	bl sub_02022E38
	str r7, [r5, #0]
_021EE1DA:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021EE1C6
_021EE1E6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EE1AC

	thumb_func_start ov5_021EE1E8
ov5_021EE1E8: ; 0x021EE1E8
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r1, r0]
	mov r4, #0
	ldr r5, [r6, #0x10]
	mov r0, #1
	strh r0, [r6, #6]
	ldrsh r0, [r6, r4]
	cmp r0, #0
	ble _021EE222
	add r7, r4, #0
_021EE200:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _021EE216
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EE216
	ldr r1, [r5, #4]
	bl sub_02022EA0
	str r7, [r5, #0]
	str r7, [r5, #8]
_021EE216:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021EE200
_021EE222:
	mov r0, #0
	strh r0, [r6, #6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EE1E8

	thumb_func_start ov5_021EE228
ov5_021EE228: ; 0x021EE228
	push {r4, r5, r6, lr}
	mov r5, #1
	lsl r5, r5, #8
	ldr r5, [r0, r5]
	mov r4, #0
	ldrsh r6, [r5, r4]
	ldr r0, [r5, #8]
	cmp r6, #0
	ble _021EE25E
_021EE23A:
	ldr r5, [r0, #4]
	cmp r5, #0
	bne _021EE256
	str r1, [r0, #4]
	str r2, [r0, #8]
	str r3, [r0, #0]
	ldr r0, [r0, #8]
	mov r2, #0
	str r2, [r0, #0]
	add r0, r1, #0
	mov r1, #1
	bl ov5_021EDD78
	pop {r4, r5, r6, pc}
_021EE256:
	add r4, r4, #1
	add r0, #0xc
	cmp r4, r6
	blt _021EE23A
_021EE25E:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EE228

	thumb_func_start ov5_021EE264
ov5_021EE264: ; 0x021EE264
	push {r3, r4}
	mov r2, #1
	lsl r2, r2, #8
	ldr r0, [r0, r2]
	mov r3, #0
	ldrsh r4, [r0, r3]
	ldr r2, [r0, #8]
	cmp r4, #0
	ble _021EE28E
_021EE276:
	ldr r0, [r2, #4]
	cmp r0, r1
	bne _021EE286
	mov r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	pop {r3, r4}
	bx lr
_021EE286:
	add r3, r3, #1
	add r2, #0xc
	cmp r3, r4
	blt _021EE276
_021EE28E:
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EE264

	thumb_func_start ov5_021EE294
ov5_021EE294: ; 0x021EE294
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r6, [r7, r0]
	mov r4, #0
	ldrsh r0, [r6, r4]
	ldr r5, [r6, #8]
	cmp r0, #0
	ble _021EE2C2
_021EE2A8:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021EE2B6
	add r0, r7, #0
	add r1, r5, #0
	bl ov5_021EE2D0
_021EE2B6:
	mov r0, #0
	ldrsh r0, [r6, r0]
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r0
	blt _021EE2A8
_021EE2C2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EE294

	thumb_func_start ov5_021EE2C4
ov5_021EE2C4: ; 0x021EE2C4
	ldr r3, _021EE2CC ; =ov5_021EE294
	add r0, r1, #0
	bx r3
	nop
_021EE2CC: .word ov5_021EE294
	thumb_func_end ov5_021EE2C4

	thumb_func_start ov5_021EE2D0
ov5_021EE2D0: ; 0x021EE2D0
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	bl ov5_021ED94C
	cmp r0, #2
	beq _021EE31E
	ldr r0, [r4, #4]
	ldr r1, [r4, #0]
	bl ov5_021ECF1C
	ldr r1, [r4, #8]
	str r0, [r1, #0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021EE2F6
	bl sub_02022974
_021EE2F6:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov5_021EDD78
	mov r1, #2
	ldr r0, [r4, #4]
	lsl r1, r1, #0x14
	bl sub_020628D8
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021EE314
	bl sub_02062BA4
	b _021EE318
_021EE314:
	bl sub_02062B68
_021EE318:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #8]
_021EE31E:
	pop {r4, pc}
	thumb_func_end ov5_021EE2D0

	thumb_func_start ov5_021EE320
ov5_021EE320: ; 0x021EE320
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	mov r0, #0xc
	add r7, r6, #0
	mul r7, r0
	lsl r0, r6, #4
	lsl r1, r7, #1
	str r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	mov r0, #4
	str r2, [sp]
	bl sub_02018144
	add r4, r0, #0
	bne _021EE34E
	bl sub_02022974
_021EE34E:
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	bl memset
	ldr r0, [sp]
	strh r6, [r4]
	strh r0, [r4, #2]
	add r0, r4, #0
	add r0, #0x28
	str r0, [r4, #8]
	add r1, r0, r7
	ldr r0, [sp, #4]
	str r1, [r4, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x10]
	mov r0, #1
	lsl r0, r0, #8
	str r4, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02062858
	add r6, r0, #0
	ldr r0, _021EE3B4 ; =ov5_021EE030
	add r1, r5, #0
	add r2, r6, #1
	bl sub_0200D9E8
	str r0, [r4, #0x18]
	ldr r0, _021EE3B8 ; =ov5_021EE2C4
	add r1, r5, #0
	add r2, r6, #2
	bl sub_0200D9E8
	str r0, [r4, #0x1c]
	ldr r0, _021EE3BC ; =ov5_021EE1AC
	add r1, r5, #0
	mov r2, #0xff
	bl sub_0200DA04
	str r0, [r4, #0x20]
	ldr r0, _021EE3C0 ; =ov5_021EE1E8
	add r1, r5, #0
	mov r2, #0xff
	bl sub_0200DA3C
	str r0, [r4, #0x24]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EE3B4: .word ov5_021EE030
_021EE3B8: .word ov5_021EE2C4
_021EE3BC: .word ov5_021EE1AC
_021EE3C0: .word ov5_021EE1E8
	thumb_func_end ov5_021EE320

	thumb_func_start ov5_021EE3C4
ov5_021EE3C4: ; 0x021EE3C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	ldr r4, [r5, r0]
	mov r0, #1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x18]
	bl sub_0200DA58
	ldr r0, [r4, #0x1c]
	bl sub_0200DA58
	ldr r0, [r4, #0x20]
	bl sub_0200DA58
	ldr r0, [r4, #0x24]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #8
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE3C4

	thumb_func_start ov5_021EE3FC
ov5_021EE3FC: ; 0x021EE3FC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EE418
	add r0, r5, #0
	bl ov5_021EB1A0
	cmp r0, #0
	bne _021EE444
_021EE418:
	add r0, r5, #0
	bl sub_02062920
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02062A40
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02061B48
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov5_021EDBC4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02061AB4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021EE444:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov5_021EE454
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE3FC

	thumb_func_start ov5_021EE454
ov5_021EE454: ; 0x021EE454
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r7, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl ov5_021EDEA8
	str r0, [sp, #0x20]
	bl ov5_021EDC8C
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ov5_021EB1A0
	str r0, [sp, #0x18]
	mov r0, #4
	mov r1, #0x60
	bl sub_02018184
	mov r1, #0
	mov r2, #0x60
	add r5, r0, #0
	bl memset
	ldr r0, [sp, #8]
	str r0, [r5, #0]
	add r0, r7, #0
	str r7, [r5, #0x50]
	bl sub_02062920
	add r6, r0, #0
	bl ov5_021EDD2C
	ldr r4, _021EE684 ; =0x021FB484
	ldr r2, _021EE688 ; =0x0000FFFF
_021EE49C:
	ldr r1, [r4, #0]
	cmp r1, r0
	beq _021EE4AA
	add r4, #8
	ldr r1, [r4, #0]
	cmp r1, r2
	bne _021EE49C
_021EE4AA:
	ldr r0, _021EE688 ; =0x0000FFFF
	cmp r1, r0
	bne _021EE4B4
	bl sub_02022974
_021EE4B4:
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #4]
	mov r2, #0
	bl ov5_021EDCF4
	str r0, [r5, #8]
	add r0, r6, #0
	bl ov5_021EDD38
	ldr r4, _021EE68C ; =0x021FB5BC
	ldr r2, _021EE688 ; =0x0000FFFF
_021EE4CA:
	ldr r1, [r4, #0]
	cmp r1, r0
	beq _021EE4D8
	add r4, #8
	ldr r1, [r4, #0]
	cmp r1, r2
	bne _021EE4CA
_021EE4D8:
	ldr r0, _021EE688 ; =0x0000FFFF
	cmp r1, r0
	bne _021EE4E2
	bl sub_02022974
_021EE4E2:
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #4]
	mov r2, #0
	bl ov5_021EDCF4
	add r1, r5, #0
	add r1, #0x14
	str r0, [r5, #0xc]
	bl sub_02024184
	ldr r4, _021EE690 ; =0x021FC9B4
	ldr r0, _021EE688 ; =0x0000FFFF
_021EE4FA:
	ldr r1, [r4, #0]
	cmp r1, r6
	beq _021EE508
	add r4, #8
	ldr r1, [r4, #0]
	cmp r1, r0
	bne _021EE4FA
_021EE508:
	ldr r0, _021EE688 ; =0x0000FFFF
	cmp r1, r0
	bne _021EE512
	bl sub_02022974
_021EE512:
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #4]
	mov r2, #0
	bl ov5_021EDCF4
	str r0, [r5, #0x10]
	bl NNS_G3dGetTex
	add r4, r0, #0
	add r0, r6, #0
	bl ov5_021EDD44
	add r3, r0, #0
	add r0, r5, #0
	add r0, #0x14
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r5, #8]
	add r0, #0x28
	add r2, r4, #0
	bl sub_02021284
	ldr r0, [sp, #0x18]
	bl sub_020212C0
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x34
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	add r0, r6, #0
	bl ov5_021EDD50
	add r3, r0, #0
	add r1, r5, #0
	ldr r0, [sp, #0x1c]
	add r1, #0x28
	add r2, sp, #0x34
	bl ov5_021EDDDC
	str r0, [r5, #0x24]
	cmp r0, #0
	bne _021EE56E
	bl sub_02022974
_021EE56E:
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x18]
	bl sub_02021310
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_020212FC
	ldr r0, [sp, #0x18]
	bl sub_02021358
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02021344
	ldr r0, [sp, #0x18]
	bl sub_020213D4
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_020213A4
	ldr r0, [sp, #0x18]
	bl sub_02021394
	add r1, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02021380
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_02021368
	ldr r0, [r5, #0x24]
	mov r1, #1
	bl sub_02021320
	ldr r0, [r5, #0x24]
	bl sub_02021414
	add r0, r7, #0
	bl sub_02062F64
	cmp r0, #1
	bne _021EE620
	add r0, r7, #0
	mov r1, #2
	bl sub_02062758
	str r0, [sp, #0x14]
	add r0, r7, #0
	mov r1, #1
	bl sub_02064238
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r4, #0
	bl sub_0205DF9C
	cmp r0, #1
	bne _021EE5EE
	mov r4, #2
	b _021EE5FE
_021EE5EE:
	add r0, r4, #0
	bl sub_0205DE5C
	cmp r0, #1
	bne _021EE5FC
	mov r4, #0
	b _021EE5FE
_021EE5FC:
	mov r4, #1
_021EE5FE:
	add r0, r7, #0
	add r1, sp, #0x28
	bl sub_02063050
	add r0, r7, #0
	bl ov5_021DF578
	ldr r1, [sp, #0x14]
	str r4, [sp]
	str r1, [sp, #4]
	add r1, r5, #0
	ldr r2, [r5, #0x24]
	add r1, #0x28
	add r3, sp, #0x28
	bl ov5_021F1BA4
	str r0, [r5, #0x54]
_021EE620:
	add r0, r7, #0
	bl sub_02061B48
	mov r1, #0x41
	ldr r0, [sp, #0x20]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r6, #0
	add r2, r7, #0
	bl ov5_021EDBC4
	ldr r1, [sp, #8]
	add r0, r7, #0
	bl sub_02061AB4
	mov r1, #0x41
	ldr r0, [sp, #0x20]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02062858
	ldr r0, _021EE694 ; =ov5_021EE698
	add r1, r5, #0
	mov r2, #0xff
	bl sub_0200DA3C
	add r4, r0, #0
	bne _021EE65C
	bl sub_02022974
_021EE65C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021EE698
	ldr r0, [r5, #0x24]
	bl sub_02021404
	cmp r0, #0
	bne _021EE674
	mov r0, #0
	str r0, [sp, #0x24]
	b _021EE67C
_021EE674:
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x58]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x5c]
_021EE67C:
	ldr r0, [sp, #0x24]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EE684: .word 0x021FB484
_021EE688: .word 0x0000FFFF
_021EE68C: .word 0x021FB5BC
_021EE690: .word 0x021FC9B4
_021EE694: .word ov5_021EE698
	thumb_func_end ov5_021EE454

	thumb_func_start ov5_021EE698
ov5_021EE698: ; 0x021EE698
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #4
	ldrsh r0, [r5, r0]
	ldr r4, [r5, #0x50]
	cmp r0, #0
	beq _021EE6AE
	cmp r0, #1
	beq _021EE714
	pop {r4, r5, r6, pc}
_021EE6AE:
	add r0, r4, #0
	bl sub_02062CF8
	cmp r0, #0
	beq _021EE6C2
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #0
	bne _021EE6FE
_021EE6C2:
	ldr r2, [r5, #0x5c]
	cmp r2, #0
	beq _021EE6CE
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x24]
	blx r2
_021EE6CE:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021EE6D8
	bl sub_0207136C
_021EE6D8:
	ldr r0, [r5, #0x24]
	bl sub_020211FC
	ldr r0, [r5, #8]
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
_021EE6FE:
	add r0, r4, #0
	bl sub_02062920
	ldr r1, [r5, #0]
	cmp r1, r0
	beq _021EE758
	mov r0, #4
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	strh r0, [r5, #4]
	pop {r4, r5, r6, pc}
_021EE714:
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #0
	bne _021EE758
	ldr r2, [r5, #0x5c]
	cmp r2, #0
	beq _021EE72A
	ldr r0, [r5, #0x58]
	ldr r1, [r5, #0x24]
	blx r2
_021EE72A:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021EE734
	bl sub_0207136C
_021EE734:
	ldr r0, [r5, #0x24]
	bl sub_020211FC
	ldr r0, [r5, #8]
	bl sub_020181C4
	ldr r0, [r5, #0xc]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_021EE758:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EE698

	.rodata


	.global Unk_ov5_021FF4B4
Unk_ov5_021FF4B4: ; 0x021FF4B4
	.incbin "incbin/overlay5_rodata.bin", 0x6BA0, 0x6BAC - 0x6BA0

	.global Unk_ov5_021FF4C0
Unk_ov5_021FF4C0: ; 0x021FF4C0
	.incbin "incbin/overlay5_rodata.bin", 0x6BAC, 0x6BBC - 0x6BAC

	.global Unk_ov5_021FF4D0
Unk_ov5_021FF4D0: ; 0x021FF4D0
	.incbin "incbin/overlay5_rodata.bin", 0x6BBC, 0x6BCC - 0x6BBC

	.global Unk_ov5_021FF4E0
Unk_ov5_021FF4E0: ; 0x021FF4E0
	.incbin "incbin/overlay5_rodata.bin", 0x6BCC, 0x10

