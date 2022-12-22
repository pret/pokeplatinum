	.include "macros/function.inc"
	.include "include/ov70_02269190.inc"

	

	.text


	thumb_func_start ov70_02269190
ov70_02269190: ; 0x02269190
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, _022691FC ; =0x0001082C
	str r2, [sp]
	str r3, [sp, #4]
	ldr r5, [sp, #0x24]
	bl sub_02018144
	ldr r2, _022691FC ; =0x0001082C
	mov r1, #0
	add r4, r0, #0
	bl memset
	ldr r0, [sp, #4]
	str r6, [r4, #0]
	str r0, [r4, #4]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	str r0, [r4, #8]
	mov r0, #0xba
	str r7, [r4, #0xc]
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, _02269200 ; =0x0001081C
	add r1, r5, #0
	add r0, r4, r0
	mov r2, #4
	bl sub_020182CC
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_02269540
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_022695E0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov70_0226965C
	add r0, r6, #0
	bl sub_02006CA8
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022691FC: .word 0x0001082C
_02269200: .word 0x0001081C
	thumb_func_end ov70_02269190

	thumb_func_start ov70_02269204
ov70_02269204: ; 0x02269204
	push {r4, lr}
	add r4, r0, #0
	bl ov70_022695C4
	add r0, r4, #0
	bl ov70_02269608
	add r0, r4, #0
	bl ov70_02269700
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov70_02269204

	thumb_func_start ov70_02269220
ov70_02269220: ; 0x02269220
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r7, #0xd1
	mov r4, #0
	add r5, #0x10
	lsl r7, r7, #4
_0226922E:
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_0226978C
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x14
	blt _0226922E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02269220

	thumb_func_start ov70_02269240
ov70_02269240: ; 0x02269240
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	bl ov70_0225CCAC
	add r5, r6, #0
	mov r7, #0xd1
	mov r4, #0
	add r5, #0x10
	lsl r7, r7, #4
_02269254:
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_022697C8
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x14
	blt _02269254
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02269240

	thumb_func_start ov70_02269268
ov70_02269268: ; 0x02269268
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0x14
	blo _02269278
	bl sub_02022974
_02269278:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov70_0225CC70
	add r2, r0, #0
	beq _02269296
	mov r1, #0xd1
	lsl r1, r1, #4
	add r0, r5, #0
	add r5, #0x10
	mul r1, r4
	add r1, r5, r1
	add r3, r6, #0
	bl ov70_02269738
_02269296:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02269268

	thumb_func_start ov70_02269298
ov70_02269298: ; 0x02269298
	push {r3, lr}
	mov r2, #0xd1
	lsl r2, r2, #4
	add r0, #0x10
	mul r2, r1
	add r0, r0, r2
	bl ov70_02269800
	cmp r0, #1
	beq _022692B0
	mov r0, #1
	pop {r3, pc}
_022692B0:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov70_02269298

	thumb_func_start ov70_022692B4
ov70_022692B4: ; 0x022692B4
	push {r3, r4}
	ldr r4, [sp, #0x14]
	sub r2, r2, r1
	str r4, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r3, [r0, #8]
	sub r1, r1, r3
	str r1, [r0, #0x18]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r3, [r0, #0x1c]
	str r2, [r0, #0xc]
	sub r1, r1, r2
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_022692B4

	thumb_func_start ov70_022692DC
ov70_022692DC: ; 0x022692DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r7, #0
	cmp r4, r0
	ble _022692F0
	add r4, r0, #0
	mov r7, #1
_022692F0:
	ldr r6, [r5, #0x10]
	cmp r6, #0
	beq _02269374
	cmp r0, #0
	ble _0226930E
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	str r0, [sp, #8]
	b _0226931E
_0226930E:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	str r0, [sp, #8]
_0226931E:
	cmp r4, #0
	ble _02269334
	lsl r0, r4, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _02269342
_02269334:
	lsl r0, r4, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_02269342:
	bl _f_ftoi
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp, #8]
	bl _f_ftoi
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Div
	ldr r1, [r5, #0x14]
	add r0, r1, r0
	str r0, [r5, #4]
_02269374:
	ldr r6, [r5, #0x18]
	cmp r6, #0
	beq _022693FA
	ldr r0, [r5, #0]
	cmp r0, #0
	ble _02269394
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	str r0, [sp, #4]
	b _022693A4
_02269394:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	str r0, [sp, #4]
_022693A4:
	cmp r4, #0
	ble _022693BA
	lsl r0, r4, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _022693C8
_022693BA:
	lsl r0, r4, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_022693C8:
	bl _f_ftoi
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r6, r2, #0xc
	orr r6, r0
	ldr r0, [sp, #4]
	bl _f_ftoi
	add r1, r0, #0
	add r0, r6, #0
	bl FX_Div
	ldr r1, [r5, #0x1c]
	add r0, r1, r0
	str r0, [r5, #8]
_022693FA:
	ldr r6, [r5, #0x20]
	cmp r6, #0
	beq _02269480
	ldr r0, [r5, #0]
	cmp r0, #0
	ble _0226941A
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	str r0, [sp]
	b _0226942A
_0226941A:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	str r0, [sp]
_0226942A:
	cmp r4, #0
	ble _02269440
	lsl r0, r4, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226944E
_02269440:
	lsl r0, r4, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226944E:
	bl _f_ftoi
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	ldr r0, [sp]
	bl _f_ftoi
	add r1, r0, #0
	add r0, r4, #0
	bl FX_Div
	ldr r1, [r5, #0x24]
	add r0, r1, r0
	str r0, [r5, #0xc]
_02269480:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022692DC

	thumb_func_start ov70_02269488
ov70_02269488: ; 0x02269488
	push {r3, r4}
	ldr r4, [r0, #4]
	str r4, [r1, #0]
	ldr r1, [r0, #8]
	str r1, [r2, #0]
	ldr r0, [r0, #0xc]
	str r0, [r3, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269488

	thumb_func_start ov70_0226949C
ov70_0226949C: ; 0x0226949C
	push {r4, lr}
	add r4, r0, #0
	strh r1, [r4]
	asr r0, r1, #4
	lsl r1, r0, #2
	ldr r0, _022694CC ; =0x020F983C
	strh r2, [r4, #2]
	ldrsh r0, [r0, r1]
	add r2, r3, #0
	str r3, [r4, #4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_022694CC: .word 0x020F983C
	thumb_func_end ov70_0226949C

	thumb_func_start ov70_022694D0
ov70_022694D0: ; 0x022694D0
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, [r4, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _02269504 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_02269504: .word 0x020F983C
	thumb_func_end ov70_022694D0

	thumb_func_start ov70_02269508
ov70_02269508: ; 0x02269508
	ldr r0, [r0, #8]
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269508

	thumb_func_start ov70_02269510
ov70_02269510: ; 0x02269510
	push {r3, r4, r5, lr}
	ldr r0, [r0, #4]
	ldr r4, [r1, #8]
	add r5, r2, #0
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226952C
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #5
	bl sub_02005770
	pop {r3, r4, r5, pc}
_0226952C:
	add r0, r4, #0
	bl ov70_0225CE70
	cmp r0, #0
	bne _0226953E
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0226953E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02269510

	thumb_func_start ov70_02269540
ov70_02269540: ; 0x02269540
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_0226954A:
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, #0x81
	mov r2, #0
	add r3, r7, #0
	bl sub_0200723C
	ldr r1, _022695B4 ; =0x00010550
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	bl NNS_G3dGetMdlSet
	ldr r1, _022695B8 ; =0x00010554
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02269594
	add r0, r1, #0
	add r0, #8
	beq _02269588
	ldrb r2, [r1, #9]
	cmp r2, #0
	bls _02269588
	ldrh r2, [r1, #0xe]
	add r0, r0, r2
	add r0, r0, #4
	b _0226958A
_02269588:
	mov r0, #0
_0226958A:
	cmp r0, #0
	beq _02269594
	ldr r0, [r0, #0]
	add r1, r1, r0
	b _02269596
_02269594:
	mov r1, #0
_02269596:
	ldr r0, _022695BC ; =0x00010558
	str r1, [r5, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _022695BC ; =0x00010558
	ldr r1, _022695C0 ; =0x00007FFF
	ldr r0, [r5, r0]
	bl NNS_G3dMdlSetMdlEmiAll
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blt _0226954A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022695B4: .word 0x00010550
_022695B8: .word 0x00010554
_022695BC: .word 0x00010558
_022695C0: .word 0x00007FFF
	thumb_func_end ov70_02269540

	thumb_func_start ov70_022695C4
ov70_022695C4: ; 0x022695C4
	push {r4, r5, r6, lr}
	ldr r6, _022695DC ; =0x00010550
	add r5, r0, #0
	mov r4, #0
_022695CC:
	ldr r0, [r5, r6]
	bl sub_020181C4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blt _022695CC
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022695DC: .word 0x00010550
	thumb_func_end ov70_022695C4

	thumb_func_start ov70_022695E0
ov70_022695E0: ; 0x022695E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _02269604 ; =0x00010640
	add r7, r2, #0
	mov r4, #0
	add r5, r0, r1
_022695EC:
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x90
	add r3, r7, #0
	bl ov70_0225C730
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _022695EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269604: .word 0x00010640
	thumb_func_end ov70_022695E0

	thumb_func_start ov70_02269608
ov70_02269608: ; 0x02269608
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _02269650 ; =0x02100DF0
	add r5, r0, #0
	mov r4, #0
_02269612:
	ldr r0, _02269654 ; =0x00010640
	ldr r0, [r5, r0]
	bl NNS_G3dGetTex
	add r1, sp, #4
	add r2, sp, #0
	add r6, r0, #0
	bl NNS_G3dTexReleaseTexKey
	ldr r0, [sp, #4]
	ldr r1, [r7, #0]
	blx r1
	ldr r0, [sp]
	ldr r1, [r7, #0]
	blx r1
	add r0, r6, #0
	bl NNS_G3dPlttReleasePlttKey
	ldr r1, _02269658 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02269654 ; =0x00010640
	ldr r0, [r5, r0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _02269612
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269650: .word 0x02100DF0
_02269654: .word 0x00010640
_02269658: .word 0x02100DF8
	thumb_func_end ov70_02269608

	thumb_func_start ov70_0226965C
ov70_0226965C: ; 0x0226965C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	ldr r4, _022696E8 ; =0x0226E5A4
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
_0226966C:
	ldr r0, _022696EC ; =0x0001081C
	mov r6, #0
	add r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _022696F0 ; =0x000106DC
	add r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, _022696F4 ; =0x00010550
	add r0, r5, r0
	str r0, [sp, #0x1c]
_02269680:
	add r7, r4, r6
	ldrb r1, [r7, #2]
	cmp r1, #0x11
	beq _022696D2
	mov r0, #0x14
	mul r0, r1
	add r1, r5, r0
	ldr r0, _022696F0 ; =0x000106DC
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022696D2
	ldrb r0, [r4, #1]
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _022696F8 ; =0x00010640
	ldr r0, [r1, r0]
	bl NNS_G3dGetTex
	ldrb r1, [r4]
	lsl r1, r1, #4
	add r2, r5, r1
	ldr r1, _022696FC ; =0x0001055C
	str r0, [r2, r1]
	ldrb r3, [r7, #2]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r1, r3, #0
	str r0, [sp, #4]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x18]
	add r3, #0xb7
	add r0, r0, r1
	ldrb r1, [r4]
	lsl r2, r1, #4
	ldr r1, [sp, #0x1c]
	add r1, r1, r2
	ldr r2, [sp, #8]
	bl sub_02017164
_022696D2:
	add r6, r6, #1
	cmp r6, #2
	blt _02269680
	ldr r0, [sp, #0x10]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x27
	blt _0226966C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022696E8: .word 0x0226E5A4
_022696EC: .word 0x0001081C
_022696F0: .word 0x000106DC
_022696F4: .word 0x00010550
_022696F8: .word 0x00010640
_022696FC: .word 0x0001055C
	thumb_func_end ov70_0226965C

	thumb_func_start ov70_02269700
ov70_02269700: ; 0x02269700
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02269730 ; =0x000106DC
	mov r6, #0
	add r4, r5, r0
	ldr r0, _02269734 ; =0x0001081C
	add r7, r5, r0
_0226970E:
	ldr r0, _02269730 ; =0x000106DC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02269724
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020171A0
	ldr r0, _02269730 ; =0x000106DC
	mov r1, #0
	str r1, [r5, r0]
_02269724:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0x10
	blt _0226970E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269730: .word 0x000106DC
_02269734: .word 0x0001081C
	thumb_func_end ov70_02269700

	thumb_func_start ov70_02269738
ov70_02269738: ; 0x02269738
	push {r3, r4, r5, r6, r7, lr}
	add r7, r3, #0
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r7, #0x1b
	blo _0226974A
	bl sub_02022974
_0226974A:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_022697F0
	str r6, [r4, #8]
	add r0, r6, #0
	mov r1, #5
	strb r7, [r4]
	bl ov70_0225CD60
	add r0, #0x28
	str r0, [r4, #4]
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _02269784 ; =0x0226E43C
	ldr r2, [r2, r3]
	blx r2
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _02269788 ; =0x0226E4A8
	ldr r2, [r2, r3]
	bl ov70_02269510
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269784: .word 0x0226E43C
_02269788: .word 0x0226E4A8
	thumb_func_end ov70_02269738

	thumb_func_start ov70_0226978C
ov70_0226978C: ; 0x0226978C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_02269800
	cmp r0, #0
	beq _022697C0
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022697A6
	bl sub_02022974
_022697A6:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r3, r2, #2
	ldr r2, _022697C4 ; =0x0226E3D0
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _022697C0
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_022697F0
_022697C0:
	pop {r3, r4, r5, pc}
	nop
_022697C4: .word 0x0226E3D0
	thumb_func_end ov70_0226978C

	thumb_func_start ov70_022697C8
ov70_022697C8: ; 0x022697C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov70_02269800
	cmp r0, #0
	bne _022697DC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022697DC:
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022697E6
	bl sub_02022974
_022697E6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226A998
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022697C8

	thumb_func_start ov70_022697F0
ov70_022697F0: ; 0x022697F0
	ldr r3, _022697FC ; =memset
	mov r2, #0xd1
	add r0, r1, #0
	mov r1, #0
	lsl r2, r2, #4
	bx r3
	; .align 2, 0
_022697FC: .word memset
	thumb_func_end ov70_022697F0

	thumb_func_start ov70_02269800
ov70_02269800: ; 0x02269800
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0226980A
	mov r0, #1
	bx lr
_0226980A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02269800

	thumb_func_start ov70_02269810
ov70_02269810: ; 0x02269810
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _02269824 ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02269820
	mov r0, #1
	bx lr
_02269820:
	mov r0, #0
	bx lr
	; .align 2, 0
_02269824: .word 0x0000087C
	thumb_func_end ov70_02269810

	thumb_func_start ov70_02269828
ov70_02269828: ; 0x02269828
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	str r0, [sp]
	add r5, r1, #0
	add r6, r3, #0
	cmp r4, #0x12
	blo _0226983C
	bl sub_02022974
_0226983C:
	ldr r0, _02269870 ; =0x0000087C
	add r7, r5, r0
	lsl r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0226984E
	bl sub_02022974
_0226984E:
	ldr r0, [sp, #4]
	ldr r2, _02269874 ; =0x00010550
	ldr r1, [sp]
	str r6, [r7, r0]
	add r2, r1, r2
	ldrb r1, [r6]
	mov r0, #0x78
	add r5, #0xc
	mul r0, r4
	lsl r1, r1, #4
	add r0, r5, r0
	add r1, r2, r1
	bl sub_02017258
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269870: .word 0x0000087C
_02269874: .word 0x00010550
	thumb_func_end ov70_02269828

	thumb_func_start ov70_02269878
ov70_02269878: ; 0x02269878
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r2, #0
	str r0, [sp]
	lsl r7, r5, #2
	add r0, r1, #0
	str r1, [sp, #4]
	add r1, r0, r7
	ldr r0, _022699AC ; =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02269894
	bl sub_02022974
_02269894:
	mov r0, #0x78
	add r6, r5, #0
	mul r6, r0
	ldr r0, [sp, #4]
	add r0, #0xc
	add r0, r0, r6
	bl sub_0201734C
	cmp r0, #0
	beq _022699A6
	ldr r0, [sp, #4]
	add r1, r0, r7
	ldr r0, _022699AC ; =0x0000087C
	ldr r2, [r1, r0]
	ldr r0, _022699B0 ; =0x00010550
	ldrb r3, [r2]
	ldr r1, [sp]
	add r1, r1, r0
	lsl r3, r3, #4
	add r1, r1, r3
	str r1, [sp, #0xc]
	ldrb r1, [r2, #1]
	add r0, #0xf0
	lsl r2, r1, #2
	ldr r1, [sp]
	add r1, r1, r2
	ldr r0, [r1, r0]
	bl NNS_G3dGetTex
	ldr r1, [sp, #0xc]
	mov r2, #0
	str r0, [r1, #0xc]
	add r0, r1, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl NNS_G3dForceBindMdlTex
	cmp r0, #0
	bne _022698E8
	bl sub_02022974
_022698E8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	mov r2, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl NNS_G3dForceBindMdlPltt
	cmp r0, #0
	bne _02269900
	bl sub_02022974
_02269900:
	ldr r0, [sp, #4]
	lsl r1, r5, #3
	add r5, r0, r1
	add r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _022699B4 ; =0x000106DC
	str r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r4, #0
	add r7, r0, r1
_0226991A:
	ldr r1, [sp, #8]
	ldr r0, _022699AC ; =0x0000087C
	ldr r0, [r1, r0]
	add r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _0226994E
	mov r0, #0x14
	mul r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r6
	add r1, r7, r1
	bl sub_0201727C
	ldr r1, _022699B8 ; =0x000008C4
	ldr r0, [sp, #0x14]
	ldr r1, [r5, r1]
	add r0, r7, r0
	bl sub_02017240
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0226991A
_0226994E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	bl NNS_G3dMdlSetMdlPolygonIDAll
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	add r0, r0, r6
	bl sub_02017294
	ldr r1, _022699B4 ; =0x000106DC
	ldr r0, [sp]
	ldr r7, _022699AC ; =0x0000087C
	mov r4, #0
	add r5, r0, r1
_02269970:
	ldr r0, [sp, #8]
	ldr r0, [r0, r7]
	add r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _02269990
	ldr r0, [sp, #4]
	mov r2, #0x14
	mul r2, r1
	add r0, r0, r6
	add r1, r5, r2
	bl sub_02017288
	add r4, r4, #1
	cmp r4, #2
	blt _02269970
_02269990:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dReleaseMdlTex
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dReleaseMdlPltt
	ldr r0, [sp, #0xc]
	mov r1, #0
	str r1, [r0, #0xc]
_022699A6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022699AC: .word 0x0000087C
_022699B0: .word 0x00010550
_022699B4: .word 0x000106DC
_022699B8: .word 0x000008C4
	thumb_func_end ov70_02269878

	thumb_func_start ov70_022699BC
ov70_022699BC: ; 0x022699BC
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	lsl r4, r4, #0xc
	str r4, [sp]
	bl ov70_022699E4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022699BC

	thumb_func_start ov70_022699D0
ov70_022699D0: ; 0x022699D0
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	lsl r4, r4, #0xc
	str r4, [sp]
	bl ov70_02269A3C
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov70_022699D0

	thumb_func_start ov70_022699E4
ov70_022699E4: ; 0x022699E4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r1, _02269A30 ; =0x000106DC
	add r6, r2, #0
	add r0, r0, r1
	lsl r1, r6, #2
	add r2, r4, r1
	ldr r1, _02269A34 ; =0x0000087C
	add r5, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r5
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_0201724C
	add r1, r0, #0
	ldr r0, _02269A38 ; =0x000008C4
	lsl r2, r6, #3
	add r0, r4, r0
	add r4, r0, r2
	lsl r5, r5, #2
	ldr r2, [r4, r5]
	ldr r0, [sp, #0x10]
	add r0, r0, r2
	cmp r0, r1
	bge _02269A20
	str r0, [r4, r5]
	pop {r4, r5, r6, pc}
_02269A20:
	mov r0, #2
	lsl r0, r0, #0xc
	add r0, r2, r0
	bl _s32_div_f
	str r1, [r4, r5]
	pop {r4, r5, r6, pc}
	nop
_02269A30: .word 0x000106DC
_02269A34: .word 0x0000087C
_02269A38: .word 0x000008C4
	thumb_func_end ov70_022699E4

	thumb_func_start ov70_02269A3C
ov70_02269A3C: ; 0x02269A3C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02269A84 ; =0x000106DC
	add r4, r2, #0
	add r0, r0, r1
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _02269A88 ; =0x0000087C
	add r6, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r6
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_0201724C
	ldr r3, _02269A8C ; =0x000008C4
	lsl r1, r4, #3
	add r2, r5, r3
	add r2, r2, r1
	lsl r1, r6, #2
	ldr r5, [sp, #0x10]
	ldr r4, [r2, r1]
	add r4, r5, r4
	cmp r4, r0
	bge _02269A78
	str r4, [r2, r1]
	mov r0, #0
	pop {r4, r5, r6, pc}
_02269A78:
	sub r3, #0xc4
	sub r0, r0, r3
	str r0, [r2, r1]
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_02269A84: .word 0x000106DC
_02269A88: .word 0x0000087C
_02269A8C: .word 0x000008C4
	thumb_func_end ov70_02269A3C

	thumb_func_start ov70_02269A90
ov70_02269A90: ; 0x02269A90
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02269ADC ; =0x000106DC
	add r4, r2, #0
	add r0, r0, r1
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _02269AE0 ; =0x0000087C
	add r6, r3, #0
	ldr r1, [r2, r1]
	add r1, r1, r6
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_0201724C
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _02269ACC
	mov r1, #2
	lsl r2, r4, #3
	lsl r1, r1, #0xa
	add r3, r5, r2
	lsl r2, r6, #2
	sub r0, r0, r1
	add r2, r3, r2
	add r1, #0xc4
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_02269ACC:
	lsl r0, r4, #3
	add r2, r5, r0
	lsl r0, r6, #2
	add r2, r2, r0
	ldr r0, _02269AE4 ; =0x000008C4
	str r1, [r2, r0]
	pop {r4, r5, r6, pc}
	nop
_02269ADC: .word 0x000106DC
_02269AE0: .word 0x0000087C
_02269AE4: .word 0x000008C4
	thumb_func_end ov70_02269A90

	thumb_func_start ov70_02269AE8
ov70_02269AE8: ; 0x02269AE8
	push {r4, lr}
	lsl r2, r2, #2
	add r2, r1, r2
	ldr r1, _02269B08 ; =0x0000087C
	ldr r4, _02269B0C ; =0x000106DC
	ldr r1, [r2, r1]
	add r0, r0, r4
	add r1, r1, r3
	ldrb r2, [r1, #2]
	mov r1, #0x14
	mul r1, r2
	add r0, r0, r1
	bl sub_02017248
	pop {r4, pc}
	nop
_02269B08: .word 0x0000087C
_02269B0C: .word 0x000106DC
	thumb_func_end ov70_02269AE8

	thumb_func_start ov70_02269B10
ov70_02269B10: ; 0x02269B10
	ldr r3, _02269B18 ; =ov70_0226B92C
	mov r2, #1
	bx r3
	nop
_02269B18: .word ov70_0226B92C
	thumb_func_end ov70_02269B10

	thumb_func_start ov70_02269B1C
ov70_02269B1C: ; 0x02269B1C
	ldr r3, _02269B24 ; =ov70_0226B92C
	mov r2, #2
	bx r3
	nop
_02269B24: .word ov70_0226B92C
	thumb_func_end ov70_02269B1C

	thumb_func_start ov70_02269B28
ov70_02269B28: ; 0x02269B28
	ldr r3, _02269B30 ; =ov70_0226B92C
	mov r2, #3
	bx r3
	nop
_02269B30: .word ov70_0226B92C
	thumb_func_end ov70_02269B28

	thumb_func_start ov70_02269B34
ov70_02269B34: ; 0x02269B34
	ldr r3, _02269B3C ; =ov70_0226BAC8
	mov r2, #1
	bx r3
	nop
_02269B3C: .word ov70_0226BAC8
	thumb_func_end ov70_02269B34

	thumb_func_start ov70_02269B40
ov70_02269B40: ; 0x02269B40
	ldr r3, _02269B48 ; =ov70_0226BAC8
	mov r2, #2
	bx r3
	nop
_02269B48: .word ov70_0226BAC8
	thumb_func_end ov70_02269B40

	thumb_func_start ov70_02269B4C
ov70_02269B4C: ; 0x02269B4C
	ldr r3, _02269B54 ; =ov70_0226BAC8
	mov r2, #3
	bx r3
	nop
_02269B54: .word ov70_0226BAC8
	thumb_func_end ov70_02269B4C

	thumb_func_start ov70_02269B58
ov70_02269B58: ; 0x02269B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r7, #0
	str r0, [sp]
	mov r4, #0
	add r5, #0xc
_02269B66:
	add r3, r4, #3
	lsl r6, r3, #2
	ldr r3, _02269BB0 ; =0x0226E5A4
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #4
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r2, r1, r0
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r5, #0
	str r2, [sp, #8]
	bl sub_02017350
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #3
	blt _02269B66
	ldr r0, _02269BB4 ; =0x00000954
	mov r1, #0xff
	str r1, [r7, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269BB0: .word 0x0226E5A4
_02269BB4: .word 0x00000954
	thumb_func_end ov70_02269B58

	thumb_func_start ov70_02269BB8
ov70_02269BB8: ; 0x02269BB8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02269CE8 ; =0x0226E5C8
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02269828
	ldr r3, _02269CEC ; =0x0226E5D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_02017348
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #8
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02269CF0 ; =0x00000958
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	cmp r0, #3
	bhi _02269CC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02269C28: ; jump table
	.short _02269C30 - _02269C28 - 2 ; case 0
	.short _02269C50 - _02269C28 - 2 ; case 1
	.short _02269C72 - _02269C28 - 2 ; case 2
	.short _02269C9E - _02269C28 - 2 ; case 3
_02269C30:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269CF4 ; =0x0000BFFF
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	b _02269CC8
_02269C50:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269CF8 ; =0x00003FFF
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	b _02269CC8
_02269C72:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	mov r2, #1
	bl sub_02017388
	b _02269CC8
_02269C9E:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r1, #2
	ldr r0, [sp, #8]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x84
	sub r1, r1, #1
	mov r2, #1
	bl sub_02017388
_02269CC8:
	add r0, r4, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02269CE8: .word 0x0226E5C8
_02269CEC: .word 0x0226E5D4
_02269CF0: .word 0x00000958
_02269CF4: .word 0x0000BFFF
_02269CF8: .word 0x00003FFF
	thumb_func_end ov70_02269BB8

	thumb_func_start ov70_02269CFC
ov70_02269CFC: ; 0x02269CFC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02269F00 ; =0x0226E5C8
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02269828
	ldr r3, _02269F04 ; =0x0226E5D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _02269F08 ; =0x0226E5CC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_02269828
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_02017348
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #8
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02269F0C ; =0x00000958
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	cmp r0, #3
	bls _02269D72
	b _02269EEE
_02269D72:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02269D7E: ; jump table
	.short _02269D86 - _02269D7E - 2 ; case 0
	.short _02269DDA - _02269D7E - 2 ; case 1
	.short _02269E30 - _02269D7E - 2 ; case 2
	.short _02269E90 - _02269D7E - 2 ; case 3
_02269D86:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F10 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F14 ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	b _02269EEE
_02269DDA:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F18 ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F1C ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	b _02269EEE
_02269E30:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F20 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F24 ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_02017350
	b _02269EEE
_02269E90:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _02269F28 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _02269F2C ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_02017350
_02269EEE:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02269F00: .word 0x0226E5C8
_02269F04: .word 0x0226E5D4
_02269F08: .word 0x0226E5CC
_02269F0C: .word 0x00000958
_02269F10: .word 0x0000A38D
_02269F14: .word 0x0000DC70
_02269F18: .word 0x0000238E
_02269F1C: .word 0x00005C71
_02269F20: .word 0x0000E38F
_02269F24: .word 0x00001C71
_02269F28: .word 0x0000638D
_02269F2C: .word 0x00009C71
	thumb_func_end ov70_02269CFC

	thumb_func_start ov70_02269F30
ov70_02269F30: ; 0x02269F30
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _0226A1BC ; =0x0226E5C8
	mov r2, #1
	add r5, r0, #0
	add r4, r1, #0
	bl ov70_02269828
	ldr r3, _0226A1C0 ; =0x0226E5D4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _0226A1C4 ; =0x0226E5CC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_02269828
	ldr r3, _0226A1C8 ; =0x0226E5D0
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #3
	bl ov70_02269828
	add r0, r4, #0
	add r0, #0x84
	mov r1, #0
	bl sub_02017348
	ldr r1, _0226A1CC ; =0x00000958
	mov r2, #8
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #8
	str r2, [r4, r1]
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	mov r2, #1
	ldr r0, [sp, #0x10]
	lsl r2, r2, #0x10
	add r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsr r0, r2, #1
	add r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	add r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov70_0225CD60
	cmp r0, #3
	bls _02269FB6
	b _0226A1AA
_02269FB6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02269FC2: ; jump table
	.short _02269FCA - _02269FC2 - 2 ; case 0
	.short _0226A03C - _02269FC2 - 2 ; case 1
	.short _0226A0B0 - _02269FC2 - 2 ; case 2
	.short _0226A12E - _02269FC2 - 2 ; case 3
_02269FCA:
	mov r0, #7
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsr r0, r0, #1
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1D0 ; =0x0000A38D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1D4 ; =0x0000DC70
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226A1D8 ; =0x0000BFFF
	add r0, r4, r0
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
	b _0226A1AA
_0226A03C:
	mov r0, #6
	ldr r1, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #0xb
	ldr r1, [sp, #8]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1DC ; =0x0000238E
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1E0 ; =0x00005C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226A1E4 ; =0x00003FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_02017388
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	sub r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0x84
	bl sub_02017350
	mov r1, #2
	add r0, r4, #0
	ldr r2, [sp, #0xc]
	lsl r1, r1, #0xe
	add r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, #0xfc
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
	b _0226A1AA
_0226A0B0:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1E8 ; =0x0000E38F
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1EC ; =0x00001C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	sub r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	add r3, r5, r3
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
	b _0226A1AA
_0226A12E:
	mov r0, #0x17
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #7
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
	mov r0, #2
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r1, _0226A1F0 ; =0x0000638D
	add r0, #0x84
	mov r2, #1
	bl sub_02017388
	add r0, r4, #0
	ldr r1, _0226A1F4 ; =0x00009C71
	add r0, #0xfc
	mov r2, #1
	bl sub_02017388
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, _0226A1F8 ; =0x00007FFF
	add r0, r4, r0
	mov r2, #1
	bl sub_02017388
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0x84
	add r3, r5, r3
	bl sub_02017350
	mov r3, #2
	add r0, r4, #0
	ldr r5, [sp, #0x14]
	lsl r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r0, #0xfc
	sub r3, r5, r3
	bl sub_02017350
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r4, r0
	bl sub_02017350
_0226A1AA:
	add r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl sub_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226A1BC: .word 0x0226E5C8
_0226A1C0: .word 0x0226E5D4
_0226A1C4: .word 0x0226E5CC
_0226A1C8: .word 0x0226E5D0
_0226A1CC: .word 0x00000958
_0226A1D0: .word 0x0000A38D
_0226A1D4: .word 0x0000DC70
_0226A1D8: .word 0x0000BFFF
_0226A1DC: .word 0x0000238E
_0226A1E0: .word 0x00005C71
_0226A1E4: .word 0x00003FFF
_0226A1E8: .word 0x0000E38F
_0226A1EC: .word 0x00001C71
_0226A1F0: .word 0x0000638D
_0226A1F4: .word 0x00009C71
_0226A1F8: .word 0x00007FFF
	thumb_func_end ov70_02269F30

	thumb_func_start ov70_0226A1FC
ov70_0226A1FC: ; 0x0226A1FC
	ldr r3, _0226A204 ; =ov70_0226A9D0
	mov r2, #1
	bx r3
	nop
_0226A204: .word ov70_0226A9D0
	thumb_func_end ov70_0226A1FC

	thumb_func_start ov70_0226A208
ov70_0226A208: ; 0x0226A208
	ldr r3, _0226A210 ; =ov70_0226A9D0
	mov r2, #2
	bx r3
	nop
_0226A210: .word ov70_0226A9D0
	thumb_func_end ov70_0226A208

	thumb_func_start ov70_0226A214
ov70_0226A214: ; 0x0226A214
	ldr r3, _0226A21C ; =ov70_0226A9D0
	mov r2, #3
	bx r3
	nop
_0226A21C: .word ov70_0226A9D0
	thumb_func_end ov70_0226A214

	thumb_func_start ov70_0226A220
ov70_0226A220: ; 0x0226A220
	ldr r3, _0226A228 ; =ov70_0226B7B0
	mov r2, #1
	bx r3
	nop
_0226A228: .word ov70_0226B7B0
	thumb_func_end ov70_0226A220

	thumb_func_start ov70_0226A22C
ov70_0226A22C: ; 0x0226A22C
	ldr r3, _0226A234 ; =ov70_0226B7B0
	mov r2, #2
	bx r3
	nop
_0226A234: .word ov70_0226B7B0
	thumb_func_end ov70_0226A22C

	thumb_func_start ov70_0226A238
ov70_0226A238: ; 0x0226A238
	ldr r3, _0226A240 ; =ov70_0226B7B0
	mov r2, #4
	bx r3
	nop
_0226A240: .word ov70_0226B7B0
	thumb_func_end ov70_0226A238

	thumb_func_start ov70_0226A244
ov70_0226A244: ; 0x0226A244
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A284 ; =0x0226E640
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A250:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A288 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A250
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A28C ; =0x00000954
	ldr r1, _0226A290 ; =0x0226E2EC
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A284: .word 0x0226E640
_0226A288: .word 0x0226E5A4
_0226A28C: .word 0x00000954
_0226A290: .word 0x0226E2EC
	thumb_func_end ov70_0226A244

	thumb_func_start ov70_0226A294
ov70_0226A294: ; 0x0226A294
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A2D4 ; =0x0226E650
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A2A0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A2D8 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A2A0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A2DC ; =0x00000954
	ldr r1, _0226A2E0 ; =0x0226E304
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A2D4: .word 0x0226E650
_0226A2D8: .word 0x0226E5A4
_0226A2DC: .word 0x00000954
_0226A2E0: .word 0x0226E304
	thumb_func_end ov70_0226A294

	thumb_func_start ov70_0226A2E4
ov70_0226A2E4: ; 0x0226A2E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A324 ; =0x0226E660
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A2F0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A328 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A2F0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A32C ; =0x00000954
	ldr r1, _0226A330 ; =0x0226E34C
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A324: .word 0x0226E660
_0226A328: .word 0x0226E5A4
_0226A32C: .word 0x00000954
_0226A330: .word 0x0226E34C
	thumb_func_end ov70_0226A2E4

	thumb_func_start ov70_0226A334
ov70_0226A334: ; 0x0226A334
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A374 ; =0x0226E640
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A340:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A378 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A340
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226A37C ; =0x00000954
	ldr r1, _0226A380 ; =0x0226E2FC
	add r0, r7, r0
	mov r2, #2
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A374: .word 0x0226E640
_0226A378: .word 0x0226E5A4
_0226A37C: .word 0x00000954
_0226A380: .word 0x0226E2FC
	thumb_func_end ov70_0226A334

	thumb_func_start ov70_0226A384
ov70_0226A384: ; 0x0226A384
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A3C4 ; =0x0226E650
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A390:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A3C8 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A390
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226A3CC ; =0x00000954
	ldr r1, _0226A3D0 ; =0x0226E334
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x29
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A3C4: .word 0x0226E650
_0226A3C8: .word 0x0226E5A4
_0226A3CC: .word 0x00000954
_0226A3D0: .word 0x0226E334
	thumb_func_end ov70_0226A384

	thumb_func_start ov70_0226A3D4
ov70_0226A3D4: ; 0x0226A3D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A414 ; =0x0226E660
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A3E0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A418 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A3E0
	mov r0, #1
	str r0, [sp]
	ldr r0, _0226A41C ; =0x00000954
	ldr r1, _0226A420 ; =0x0226E358
	add r0, r7, r0
	mov r2, #3
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A414: .word 0x0226E660
_0226A418: .word 0x0226E5A4
_0226A41C: .word 0x00000954
_0226A420: .word 0x0226E358
	thumb_func_end ov70_0226A3D4

	thumb_func_start ov70_0226A424
ov70_0226A424: ; 0x0226A424
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A468 ; =0x0226E640
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A430:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A46C ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A430
	ldr r0, _0226A470 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _0226A474 ; =0x0226E314
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A468: .word 0x0226E640
_0226A46C: .word 0x0226E5A4
_0226A470: .word 0x00000954
_0226A474: .word 0x0226E314
	thumb_func_end ov70_0226A424

	thumb_func_start ov70_0226A478
ov70_0226A478: ; 0x0226A478
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A4BC ; =0x0226E650
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A484:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A4C0 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A484
	ldr r0, _0226A4C4 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _0226A4C8 ; =0x0226E2F4
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A4BC: .word 0x0226E650
_0226A4C0: .word 0x0226E5A4
_0226A4C4: .word 0x00000954
_0226A4C8: .word 0x0226E2F4
	thumb_func_end ov70_0226A478

	thumb_func_start ov70_0226A4CC
ov70_0226A4CC: ; 0x0226A4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A510 ; =0x0226E660
	str r0, [sp, #8]
	add r7, r1, #0
	mov r4, #0
_0226A4D8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	add r1, r7, #0
	lsl r6, r3, #2
	ldr r3, _0226A514 ; =0x0226E5A4
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0226A4D8
	ldr r0, _0226A518 ; =0x00000954
	mov r2, #2
	str r2, [sp]
	ldr r1, _0226A51C ; =0x0226E30C
	add r0, r7, r0
	mov r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A510: .word 0x0226E660
_0226A514: .word 0x0226E5A4
_0226A518: .word 0x00000954
_0226A51C: .word 0x0226E30C
	thumb_func_end ov70_0226A4CC

	thumb_func_start ov70_0226A520
ov70_0226A520: ; 0x0226A520
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #2
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	cmp r0, #0x36
	bgt _0226A534
	strh r0, [r5, #2]
_0226A534:
	mov r0, #2
	ldrsh r1, [r5, r0]
	mov r0, #6
	mul r0, r1
	mov r1, #0x36
	bl _s32_div_f
	add r6, r0, #0
	ldr r0, _0226A5E8 ; =0x00000955
	ldrsb r4, [r5, r0]
	cmp r4, r6
	bhs _0226A572
	add r7, r5, #0
	add r7, #0xc
_0226A550:
	add r0, r4, #0
	mov r1, #3
	bl _s32_div_f
	ldr r0, _0226A5EC ; =0x00000954
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bhs _0226A56C
	mov r0, #0x78
	mul r0, r1
	add r0, r7, r0
	mov r1, #1
	bl sub_02017348
_0226A56C:
	add r4, r4, #1
	cmp r4, r6
	blo _0226A550
_0226A572:
	ldr r1, _0226A5E8 ; =0x00000955
	mov r0, #1
	str r0, [sp, #8]
	strb r6, [r5, r1]
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _0226A5CC
	add r7, r5, #0
	add r7, #0xc
	add r6, r7, #0
_0226A58A:
	add r0, r7, #0
	bl sub_0201734C
	cmp r0, #1
	bne _0226A5BE
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699D0
	str r0, [sp, #8]
	cmp r0, #0
	beq _0226A5BE
	add r0, r6, #0
	mov r1, #0
	bl sub_02017348
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_02269A90
_0226A5BE:
	ldr r0, _0226A5EC ; =0x00000954
	add r4, r4, #1
	ldrsb r0, [r5, r0]
	add r7, #0x78
	add r6, #0x78
	cmp r4, r0
	blt _0226A58A
_0226A5CC:
	ldr r0, _0226A5E8 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #6
	blt _0226A5E0
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0226A5E0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226A5E0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A5E8: .word 0x00000955
_0226A5EC: .word 0x00000954
	thumb_func_end ov70_0226A520

	thumb_func_start ov70_0226A5F0
ov70_0226A5F0: ; 0x0226A5F0
	ldr r3, _0226A5F8 ; =ov70_0226B998
	mov r2, #0
	bx r3
	nop
_0226A5F8: .word ov70_0226B998
	thumb_func_end ov70_0226A5F0

	thumb_func_start ov70_0226A5FC
ov70_0226A5FC: ; 0x0226A5FC
	ldr r3, _0226A604 ; =ov70_0226B998
	mov r2, #1
	bx r3
	nop
_0226A604: .word ov70_0226B998
	thumb_func_end ov70_0226A5FC

	thumb_func_start ov70_0226A608
ov70_0226A608: ; 0x0226A608
	ldr r3, _0226A610 ; =ov70_0226B998
	mov r2, #2
	bx r3
	nop
_0226A610: .word ov70_0226B998
	thumb_func_end ov70_0226A608

	thumb_func_start ov70_0226A614
ov70_0226A614: ; 0x0226A614
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #2
	ldrsh r1, [r5, r0]
	lsl r0, r1, #1
	add r1, r1, r0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r4, r0, #5
	ldr r0, _0226A6C0 ; =0x00000954
	ldrsh r1, [r5, r0]
	cmp r4, r1
	beq _0226A662
	strh r4, [r5, r0]
	add r0, r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bls _0226A662
	cmp r4, #0
	beq _0226A652
	add r2, r5, #0
	sub r1, r4, #1
	mov r0, #0x78
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	mov r1, #0
	bl sub_02017348
_0226A652:
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r4
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
_0226A662:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x20
	bge _0226A66E
	add r0, r0, #1
	strh r0, [r5, #2]
_0226A66E:
	ldr r0, _0226A6C4 ; =0x00000956
	mov r4, #0
	ldrsh r0, [r5, r0]
	str r4, [sp]
	cmp r0, #0
	ble _0226A6BA
	add r6, r5, #0
	add r6, #0xc
_0226A67E:
	add r0, r6, #0
	bl sub_0201734C
	cmp r0, #0
	beq _0226A6AE
	ldr r0, _0226A6C4 ; =0x00000956
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	cmp r4, r0
	bne _0226A6A2
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699D0
	str r0, [sp]
	b _0226A6AE
_0226A6A2:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699BC
_0226A6AE:
	ldr r0, _0226A6C4 ; =0x00000956
	add r4, r4, #1
	ldrsh r0, [r5, r0]
	add r6, #0x78
	cmp r4, r0
	blt _0226A67E
_0226A6BA:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A6C0: .word 0x00000954
_0226A6C4: .word 0x00000956
	thumb_func_end ov70_0226A614

	thumb_func_start ov70_0226A6C8
ov70_0226A6C8: ; 0x0226A6C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, _0226A810 ; =0x0000087C
	add r5, r1, #0
	ldr r0, [r5, r0]
	ldrb r0, [r0, #2]
	cmp r0, #0x11
	bne _0226A6DE
	bl sub_02022974
_0226A6DE:
	ldr r0, _0226A814 ; =0x00000954
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _0226A6F6
	sub r1, r1, #1
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_02017348
	b _0226A752
_0226A6F6:
	mov r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #3
	bge _0226A752
	add r0, r5, #0
	add r1, r1, #1
	bl ov70_02269810
	cmp r0, #1
	bne _0226A752
	add r0, r5, #0
	add r0, #0xc
	mov r1, #1
	bl sub_02017348
	mov r2, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r3, r2, #0
	bl ov70_022699D0
	cmp r0, #1
	bne _0226A752
	mov r1, #2
	ldrsh r0, [r5, r1]
	mov r2, #3
	add r0, r0, #1
	strh r0, [r5, #2]
	ldr r0, _0226A814 ; =0x00000954
	str r2, [r5, r0]
	ldrsh r0, [r5, r1]
	cmp r0, #3
	bge _0226A748
	mov r2, #0
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r3, r2, #0
	str r2, [sp]
	bl ov70_02269A90
	b _0226A752
_0226A748:
	add r0, r5, #0
	add r0, #0xc
	mov r1, #0
	bl sub_02017348
_0226A752:
	add r7, r5, #0
	mov r4, #1
	add r7, #0xc
	str r4, [sp, #8]
	add r7, #0x78
	add r6, r5, #4
_0226A75E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02269810
	cmp r0, #1
	bne _0226A7FE
	mov r0, #2
	ldrsh r1, [r5, r0]
	sub r0, r4, #1
	cmp r1, r0
	ble _0226A7FA
	add r0, r7, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0xa
	lsl r0, r0, #0xa
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_02269A3C
	cmp r0, #0
	bne _0226A798
	mov r0, #0
	str r0, [sp, #8]
	b _0226A7FE
_0226A798:
	sub r0, r4, #1
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, _0226A818 ; =0x00000958
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0226A7C6
	add r0, r7, #0
	mov r1, #0
	bl sub_02017348
	ldr r0, _0226A810 ; =0x0000087C
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsl r1, r0, #4
	ldr r0, [sp, #4]
	add r1, r0, r1
	ldr r0, _0226A81C ; =0x00010558
	ldr r0, [r1, r0]
	mov r1, #0x1f
	bl NNS_G3dMdlSetMdlAlphaAll
	b _0226A7FE
_0226A7C6:
	ldr r0, _0226A818 ; =0x00000958
	ldr r0, [r1, r0]
	sub r2, r0, #1
	ldr r0, _0226A818 ; =0x00000958
	str r2, [r1, r0]
	sub r0, #0xdc
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsl r2, r0, #4
	ldr r0, [sp, #4]
	add r2, r0, r2
	ldr r0, _0226A81C ; =0x00010558
	ldr r0, [r2, r0]
	ldr r2, _0226A818 ; =0x00000958
	ldr r1, [r1, r2]
	mov r2, #0x14
	mul r2, r1
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r1, r1, #3
	bl NNS_G3dMdlSetMdlAlphaAll
	mov r0, #0
	str r0, [sp, #8]
	b _0226A7FE
_0226A7FA:
	mov r0, #0
	str r0, [sp, #8]
_0226A7FE:
	add r4, r4, #1
	add r7, #0x78
	add r6, r6, #4
	cmp r4, #3
	ble _0226A75E
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A810: .word 0x0000087C
_0226A814: .word 0x00000954
_0226A818: .word 0x00000958
_0226A81C: .word 0x00010558
	thumb_func_end ov70_0226A6C8

	thumb_func_start ov70_0226A820
ov70_0226A820: ; 0x0226A820
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r2, [r4, #1]
	add r5, r0, #0
	cmp r2, #0
	beq _0226A832
	cmp r2, #1
	beq _0226A848
	b _0226A854
_0226A832:
	bl ov70_0226AC08
	cmp r0, #0
	beq _0226A854
	mov r0, #1
	strb r0, [r4, #1]
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226ADA0
	b _0226A854
_0226A848:
	bl ov70_0226AF60
	cmp r0, #0
	beq _0226A854
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226A854:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0226A820

	thumb_func_start ov70_0226A858
ov70_0226A858: ; 0x0226A858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, _0226A924 ; =0x00000955
	str r0, [sp]
	add r0, r1, #1
	ldrsb r2, [r5, r1]
	ldrb r0, [r5, r0]
	cmp r2, r0
	bge _0226A8C4
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	add r2, r0, #1
	sub r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r0]
	cmp r0, #8
	blt _0226A888
	mov r2, #0
	sub r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r1]
	add r0, r0, #1
	strb r0, [r5, r1]
_0226A888:
	ldr r0, _0226A928 ; =0x00000954
	ldrsb r1, [r5, r0]
	lsl r2, r1, #2
	asr r1, r2, #2
	lsr r1, r1, #0x1d
	add r1, r2, r1
	asr r2, r1, #3
	add r1, r0, #1
	ldrsb r1, [r5, r1]
	add r0, r0, #3
	ldrb r6, [r5, r0]
	lsl r1, r1, #2
	add r7, r2, r1
	cmp r6, r7
	bhs _0226A8C0
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r6
	add r4, r1, r0
_0226A8B0:
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	add r6, r6, #1
	add r4, #0x78
	cmp r6, r7
	blo _0226A8B0
_0226A8C0:
	ldr r0, _0226A92C ; =0x00000957
	strb r7, [r5, r0]
_0226A8C4:
	ldr r0, _0226A92C ; =0x00000957
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0226A904
	add r7, r5, #0
	add r7, #0xc
	add r6, r7, #0
_0226A8D4:
	add r0, r7, #0
	bl sub_0201734C
	cmp r0, #1
	bne _0226A8F6
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_0226B8C4
	str r0, [sp, #4]
	cmp r0, #1
	bne _0226A8F6
	add r0, r6, #0
	mov r1, #0
	bl sub_02017348
_0226A8F6:
	ldr r0, _0226A92C ; =0x00000957
	add r4, r4, #1
	ldrb r0, [r5, r0]
	add r7, #0x78
	add r6, #0x78
	cmp r4, r0
	blt _0226A8D4
_0226A904:
	ldr r0, _0226A924 ; =0x00000955
	ldrsb r1, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	bne _0226A91C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0226A91C
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226A91C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A924: .word 0x00000955
_0226A928: .word 0x00000954
_0226A92C: .word 0x00000957
	thumb_func_end ov70_0226A858

	thumb_func_start ov70_0226A930
ov70_0226A930: ; 0x0226A930
	push {r4, lr}
	add r4, r1, #0
	mov r1, #2
	ldr r0, _0226A954 ; =0x00000954
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov70_0226BCC0
	mov r1, #2
	ldrsh r1, [r4, r1]
	add r1, r1, #1
	strh r1, [r4, #2]
	cmp r0, #2
	bne _0226A950
	mov r0, #1
	pop {r4, pc}
_0226A950:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0226A954: .word 0x00000954
	thumb_func_end ov70_0226A930

	thumb_func_start ov70_0226A958
ov70_0226A958: ; 0x0226A958
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #2
	add r6, r0, #0
	ldr r0, _0226A994 ; =0x00000954
	ldrsh r1, [r5, r1]
	add r0, r5, r0
	bl ov70_0226BCC0
	add r4, r0, #0
	mov r0, #2
	ldrsh r0, [r5, r0]
	add r0, r0, #1
	strh r0, [r5, #2]
	cmp r4, #1
	bne _0226A980
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_0226BBA8
_0226A980:
	add r0, r6, #0
	add r1, r5, #0
	bl ov70_0226BBDC
	cmp r4, #2
	bne _0226A990
	mov r0, #1
	pop {r4, r5, r6, pc}
_0226A990:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0226A994: .word 0x00000954
	thumb_func_end ov70_0226A958

	thumb_func_start ov70_0226A998
ov70_0226A998: ; 0x0226A998
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #8]
	bl ov70_0225CE70
	cmp r0, #1
	bne _0226A9AC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0226A9AC:
	mov r4, #0
_0226A9AE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02269810
	cmp r0, #1
	bne _0226A9C4
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_02269878
_0226A9C4:
	add r4, r4, #1
	cmp r4, #0x12
	blt _0226A9AE
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0226A998

	thumb_func_start ov70_0226A9D0
ov70_0226A9D0: ; 0x0226A9D0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	add r6, r2, #0
	bl ov70_0225CCAC
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _0226A9EC
	ldr r0, [r5, #8]
	bl ov70_02260B3C
_0226A9EC:
	ldr r0, [r4, #8]
	bl ov70_0225CD34
	add r2, sp, #0
	strh r0, [r2]
	lsr r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	mov r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r5, #0xc]
	asr r3, r1, #3
	lsr r3, r3, #0x1c
	add r3, r1, r3
	lsl r1, r3, #0xc
	mov r3, #6
	ldrsh r2, [r2, r3]
	lsr r1, r1, #0x10
	asr r3, r2, #3
	lsr r3, r3, #0x1c
	add r3, r2, r3
	lsl r2, r3, #0xc
	lsr r2, r2, #0x10
	bl ov70_0225C8C4
	cmp r0, #0x2a
	bne _0226AA2C
	mov r1, #1
	b _0226AA2E
_0226AA2C:
	mov r1, #0
_0226AA2E:
	ldr r0, _0226AB00 ; =0x00000965
	cmp r6, #1
	strb r1, [r4, r0]
	beq _0226AA3E
	cmp r6, #2
	beq _0226AA58
	cmp r6, #3
	b _0226AA8A
_0226AA3E:
	ldr r3, _0226AB04 ; =0x0226E5E4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0226B714
	b _0226AAD2
_0226AA58:
	ldr r3, _0226AB04 ; =0x0226E5E4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _0226AB08 ; =0x0226E5E8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_02269828
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	mov r3, #2
	bl ov70_0226B714
	mov r2, #1
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0226B714
	b _0226AAD2
_0226AA8A:
	ldr r3, _0226AB04 ; =0x0226E5E4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl ov70_02269828
	ldr r3, _0226AB08 ; =0x0226E5E8
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov70_02269828
	ldr r3, _0226AB0C ; =0x0226E5EC
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov70_02269828
	mov r2, #0
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov70_0226B714
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	mov r3, #2
	bl ov70_0226B714
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	mov r3, #1
	bl ov70_0226B714
_0226AAD2:
	ldr r0, _0226AB10 ; =0x00000955
	mov r1, #0
	strb r6, [r4, r0]
	ldr r0, [r4, #8]
	bl ov70_0225D030
	ldr r0, _0226AB00 ; =0x00000965
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0226AAF2
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226AB14
	add sp, #8
	pop {r4, r5, r6, pc}
_0226AAF2:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_0226ABAC
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0226AB00: .word 0x00000965
_0226AB04: .word 0x0226E5E4
_0226AB08: .word 0x0226E5E8
_0226AB0C: .word 0x0226E5EC
_0226AB10: .word 0x00000955
	thumb_func_end ov70_0226A9D0

	thumb_func_start ov70_0226AB14
ov70_0226AB14: ; 0x0226AB14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	ldr r0, [r5, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	ldr r0, _0226AB94 ; =0x00000955
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	ldr r0, _0226AB98 ; =0x0226E2E8
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0226AB42
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226AB50
_0226AB42:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226AB50:
	ldr r6, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r7, [sp, #0x10]
	bl _f_ftoi
	add r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0x6c
	str r0, [sp, #0xc]
	ldr r0, _0226AB9C ; =0x00000A04
	add r1, r7, #0
	add r0, r5, r0
	add r2, r7, #0
	add r3, r6, #0
	bl ov70_022692B4
	ldr r0, _0226ABA0 ; =0x00000A2C
	mov r3, #2
	ldr r2, _0226ABA4 ; =0x0000071C
	add r0, r5, r0
	mov r1, #0
	lsl r3, r3, #0xe
	bl ov70_0226949C
	add r0, r5, #0
	bl ov70_0226B324
	ldr r0, _0226ABA8 ; =0x00000956
	mov r1, #0
	strh r1, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AB94: .word 0x00000955
_0226AB98: .word 0x0226E2E8
_0226AB9C: .word 0x00000A04
_0226ABA0: .word 0x00000A2C
_0226ABA4: .word 0x0000071C
_0226ABA8: .word 0x00000956
	thumb_func_end ov70_0226AB14

	thumb_func_start ov70_0226ABAC
ov70_0226ABAC: ; 0x0226ABAC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	mov r0, #2
	ldr r3, [sp, #0x14]
	lsl r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, _0226ABF8 ; =0x00000A04
	add r2, r1, #0
	add r0, r4, r0
	bl ov70_022692B4
	ldr r0, _0226ABFC ; =0x00000A2C
	mov r1, #0
	ldr r2, _0226AC00 ; =0x0000071C
	add r0, r4, r0
	add r3, r1, #0
	bl ov70_0226949C
	add r0, r4, #0
	bl ov70_0226B51C
	ldr r0, _0226AC04 ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0226ABF8: .word 0x00000A04
_0226ABFC: .word 0x00000A2C
_0226AC00: .word 0x0000071C
_0226AC04: .word 0x00000956
	thumb_func_end ov70_0226ABAC

	thumb_func_start ov70_0226AC08
ov70_0226AC08: ; 0x0226AC08
	push {r3, lr}
	ldr r2, _0226AC20 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226AC18
	bl ov70_0226AC24
	pop {r3, pc}
_0226AC18:
	bl ov70_0226AD20
	pop {r3, pc}
	nop
_0226AC20: .word 0x00000965
	thumb_func_end ov70_0226AC08

	thumb_func_start ov70_0226AC24
ov70_0226AC24: ; 0x0226AC24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r1, _0226AD0C ; =0x00000A04
	add r6, r0, #0
	add r0, r5, r1
	sub r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226AD10 ; =0x00000A2C
	add r0, r5, r0
	bl ov70_022694D0
	ldr r0, _0226AD14 ; =0x00000956
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	ldr r0, _0226AD0C ; =0x00000A04
	add r1, sp, #0xc
	add r0, r5, r0
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl ov70_02269488
	ldr r0, _0226AD10 ; =0x00000A2C
	add r1, sp, #8
	add r0, r5, r0
	bl ov70_02269508
	ldr r0, [sp]
	cmp r0, #0
	bne _0226AC78
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0xc]
_0226AC78:
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov70_0225D048
	add r0, r5, #0
	bl ov70_0226B324
	ldr r0, _0226AD18 ; =0x00000955
	mov r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226ACA4
	ldr r7, _0226AD18 ; =0x00000955
_0226AC92:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_0226B744
	ldrsb r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _0226AC92
_0226ACA4:
	ldr r0, [r6, #4]
	ldr r7, [r5, #8]
	bl ov70_0225CCAC
	cmp r7, r0
	bne _0226AD06
	ldr r0, _0226AD1C ; =0x021BF67C
	mov r1, #0x40
	ldr r0, [r0, #0x48]
	mov r4, #4
	tst r1, r0
	beq _0226ACBE
	mov r4, #0
_0226ACBE:
	mov r1, #0x80
	tst r1, r0
	beq _0226ACC6
	mov r4, #1
_0226ACC6:
	mov r1, #0x10
	tst r1, r0
	beq _0226ACCE
	mov r4, #3
_0226ACCE:
	mov r1, #0x20
	tst r0, r1
	beq _0226ACD6
	mov r4, #2
_0226ACD6:
	cmp r4, #4
	beq _0226AD06
	add r0, r7, #0
	add r1, r4, #0
	bl ov70_0225D060
	ldr r0, [r5, #8]
	bl ov70_0225CD34
	add r1, sp, #4
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r5, #8]
	sub r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	add r2, r4, #0
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_0225CD04
_0226AD06:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AD0C: .word 0x00000A04
_0226AD10: .word 0x00000A2C
_0226AD14: .word 0x00000956
_0226AD18: .word 0x00000955
_0226AD1C: .word 0x021BF67C
	thumb_func_end ov70_0226AC24

	thumb_func_start ov70_0226AD20
ov70_0226AD20: ; 0x0226AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r1, _0226AD90 ; =0x00000A04
	add r6, r0, #0
	add r0, r5, r1
	sub r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226AD94 ; =0x00000A2C
	add r0, r5, r0
	bl ov70_022694D0
	ldr r0, _0226AD98 ; =0x00000956
	ldrsh r1, [r5, r0]
	add r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov70_0225D054
	ldr r0, _0226AD90 ; =0x00000A04
	add r1, sp, #4
	add r0, r5, r0
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov70_02269488
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov70_0225D048
	add r0, r5, #0
	bl ov70_0226B51C
	ldr r0, _0226AD9C ; =0x00000955
	mov r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226AD88
	ldr r7, _0226AD9C ; =0x00000955
_0226AD76:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_0226B744
	ldrsb r0, [r5, r7]
	add r4, r4, #1
	cmp r4, r0
	blt _0226AD76
_0226AD88:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226AD90: .word 0x00000A04
_0226AD94: .word 0x00000A2C
_0226AD98: .word 0x00000956
_0226AD9C: .word 0x00000955
	thumb_func_end ov70_0226AD20

	thumb_func_start ov70_0226ADA0
ov70_0226ADA0: ; 0x0226ADA0
	push {r3, lr}
	ldr r2, _0226ADB8 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226ADB0
	bl ov70_0226ADBC
	pop {r3, pc}
_0226ADB0:
	bl ov70_0226AF1C
	pop {r3, pc}
	nop
_0226ADB8: .word 0x00000965
	thumb_func_end ov70_0226ADA0

	thumb_func_start ov70_0226ADBC
ov70_0226ADBC: ; 0x0226ADBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, sp, #0x24
	bl ov70_0225D054
	ldr r0, _0226AF04 ; =0x00000955
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	ldr r0, _0226AF08 ; =0x0226E2E8
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0226ADEC
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226ADFA
_0226ADEC:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226ADFA:
	ldr r6, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	ldr r7, [sp, #0x24]
	bl _f_ftoi
	sub r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, _0226AF0C ; =0x00000A04
	add r1, r7, #0
	add r0, r5, r0
	add r2, r7, #0
	add r3, r6, #0
	bl ov70_022692B4
	ldr r1, _0226AF10 ; =0x00000956
	mov r4, #0
	strh r4, [r5, r1]
	sub r0, r1, #2
	strb r4, [r5, r0]
	sub r0, r1, #1
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226AEFA
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	add r0, r1, #0
	add r0, #0x36
	add r1, #0x12
	add r7, r5, r0
	add r6, r5, r1
_0226AE42:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x24
	add r2, sp, #0x28
	add r3, sp, #0x2c
	bl sub_02017358
	mov r0, #0x96
	add r1, r5, r4
	lsl r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0226AE64
	cmp r0, #1
	beq _0226AE7E
	cmp r0, #2
	beq _0226AE98
	b _0226AEB0
_0226AE64:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	mov r0, #1
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #1
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0x12
	sub r0, r1, r0
	str r0, [sp, #0x18]
	b _0226AEB0
_0226AE7E:
	mov r0, #1
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	b _0226AEB0
_0226AE98:
	mov r0, #1
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x12
	sub r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
_0226AEB0:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0x1a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r0, r7, #0
	bl ov70_022692B4
	mov r3, #6
	ldr r2, _0226AF14 ; =0x00000AAA
	add r0, r6, #0
	mov r1, #0
	lsl r3, r3, #0xc
	bl ov70_0226949C
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	bl ov70_0226B714
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, #0x78
	str r0, [sp, #0x14]
	ldr r0, _0226AF04 ; =0x00000955
	add r7, #0x28
	ldrsb r0, [r5, r0]
	add r6, #0xc
	cmp r4, r0
	blt _0226AE42
_0226AEFA:
	ldr r0, _0226AF18 ; =0x00000964
	mov r1, #0
	strb r1, [r5, r0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AF04: .word 0x00000955
_0226AF08: .word 0x0226E2E8
_0226AF0C: .word 0x00000A04
_0226AF10: .word 0x00000956
_0226AF14: .word 0x00000AAA
_0226AF18: .word 0x00000964
	thumb_func_end ov70_0226ADBC

	thumb_func_start ov70_0226AF1C
ov70_0226AF1C: ; 0x0226AF1C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	mov r0, #2
	ldr r3, [sp, #0x14]
	lsl r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	sub r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r0, _0226AF58 ; =0x00000A04
	add r2, r1, #0
	add r0, r4, r0
	bl ov70_022692B4
	ldr r0, _0226AF5C ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	sub r0, r0, #2
	strb r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_0226AF58: .word 0x00000A04
_0226AF5C: .word 0x00000956
	thumb_func_end ov70_0226AF1C

	thumb_func_start ov70_0226AF60
ov70_0226AF60: ; 0x0226AF60
	push {r3, lr}
	ldr r2, _0226AF78 ; =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226AF70
	bl ov70_0226AF7C
	pop {r3, pc}
_0226AF70:
	bl ov70_0226B1D0
	pop {r3, pc}
	nop
_0226AF78: .word 0x00000965
	thumb_func_end ov70_0226AF60

	thumb_func_start ov70_0226AF7C
ov70_0226AF7C: ; 0x0226AF7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r1, #0
	ldr r1, _0226B1A8 ; =0x00000954
	add r6, r0, #0
	ldrsb r0, [r4, r1]
	cmp r0, #4
	bhi _0226AFB2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226AF98: ; jump table
	.short _0226AFA2 - _0226AF98 - 2 ; case 0
	.short _0226AFBA - _0226AF98 - 2 ; case 1
	.short _0226AFD0 - _0226AF98 - 2 ; case 2
	.short _0226B006 - _0226AF98 - 2 ; case 3
	.short _0226B05E - _0226AF98 - 2 ; case 4
_0226AFA2:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bge _0226AFB4
_0226AFB2:
	b _0226B0D8
_0226AFB4:
	mov r0, #1
	strb r0, [r4, r1]
	b _0226B0D8
_0226AFBA:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D09C
	ldr r0, _0226B1AC ; =0x00000956
	mov r1, #0x10
	strh r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _0226B0D8
_0226AFD0:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226B0D8
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov70_0225D09C
	ldr r0, _0226B1A8 ; =0x00000954
	mov r1, #3
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov70_0225D060
	b _0226B0D8
_0226B006:
	add r0, r1, #0
	add r1, r1, #2
	add r0, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov70_022692DC
	add r5, r0, #0
	ldr r0, _0226B1AC ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov70_0225D054
	ldr r0, _0226B1B0 ; =0x00000A04
	add r1, sp, #0x30
	add r0, r4, r0
	add r2, sp, #0x34
	add r3, sp, #0x38
	bl ov70_02269488
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov70_0225D048
	cmp r5, #1
	bne _0226B0D8
	ldr r0, _0226B1A8 ; =0x00000954
	mov r1, #4
	strb r1, [r4, r0]
	add r1, r0, #2
	mov r2, #0
	strh r2, [r4, r1]
	ldr r1, [sp, #0x34]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r2, _0226B1B4 ; =0x000005AB
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
	b _0226B0D8
_0226B05E:
	add r0, r1, #2
	ldrsh r1, [r4, r0]
	ldr r0, _0226B1B8 ; =0x00007FFF
	mul r0, r1
	mov r1, #0xa
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0226B1BC ; =0x020F983C
	ldrsh r2, [r0, r1]
	asr r0, r2, #0x1f
	lsr r1, r2, #0x11
	lsl r0, r0, #0xf
	orr r0, r1
	mov r1, #2
	lsl r3, r2, #0xf
	mov r2, #0
	lsl r1, r1, #0xa
	add r1, r3, r1
	adc r0, r2
	lsr r5, r1, #0xc
	lsl r0, r0, #0x14
	orr r5, r0
	ldr r0, [r4, #8]
	add r1, sp, #0x24
	bl ov70_0225D054
	ldr r0, _0226B1C0 ; =0x00000958
	add r1, sp, #0x24
	ldr r0, [r4, r0]
	add r0, r0, r5
	str r0, [sp, #0x28]
	ldr r0, [r4, #8]
	bl ov70_0225D048
	ldr r0, _0226B1AC ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	cmp r1, #0xa
	ble _0226B0D6
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226B0D0
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov70_02260B38
_0226B0D0:
	add sp, #0x3c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226B0D6:
	strh r1, [r4, r0]
_0226B0D8:
	ldr r1, _0226B1C4 ; =0x00000964
	mov r5, #0
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xf
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0226B1A0
	add r0, r1, #0
	add r0, #0x28
	add r7, r4, r0
	add r0, r1, #4
	add r0, r4, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp]
_0226B10A:
	ldr r1, _0226B1C4 ; =0x00000964
	add r0, r7, #0
	ldrb r1, [r4, r1]
	bl ov70_022692DC
	cmp r0, #0
	bne _0226B152
	ldr r0, [sp, #0x10]
	bl ov70_022694D0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl sub_02017358
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov70_02269488
	ldr r0, [sp, #4]
	add r1, sp, #0x14
	bl ov70_02269508
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp]
	ldr r3, [sp, #0x20]
	str r1, [sp, #0x18]
	bl sub_02017350
	b _0226B16C
_0226B152:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #4
	bl ov70_0226B714
	cmp r0, #1
	bne _0226B16C
	ldr r2, _0226B1C8 ; =0x00000591
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
_0226B16C:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov70_0226B744
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r7, #0x28
	add r0, #0x78
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, #0x28
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp]
	add r0, #0x78
	str r0, [sp]
	ldr r0, _0226B1CC ; =0x00000955
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _0226B10A
_0226B1A0:
	mov r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0226B1A8: .word 0x00000954
_0226B1AC: .word 0x00000956
_0226B1B0: .word 0x00000A04
_0226B1B4: .word 0x000005AB
_0226B1B8: .word 0x00007FFF
_0226B1BC: .word 0x020F983C
_0226B1C0: .word 0x00000958
_0226B1C4: .word 0x00000964
_0226B1C8: .word 0x00000591
_0226B1CC: .word 0x00000955
	thumb_func_end ov70_0226AF7C

	thumb_func_start ov70_0226B1D0
ov70_0226B1D0: ; 0x0226B1D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, _0226B30C ; =0x00000955
	add r4, r1, #0
	ldrsb r0, [r4, r0]
	mov r5, #0
	cmp r0, #0
	ble _0226B1F6
	ldr r7, _0226B30C ; =0x00000955
_0226B1E4:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov70_0226B744
	ldrsb r0, [r4, r7]
	add r5, r5, #1
	cmp r5, r0
	blt _0226B1E4
_0226B1F6:
	ldr r1, _0226B310 ; =0x00000954
	ldrsb r0, [r4, r1]
	cmp r0, #3
	bls _0226B200
	b _0226B304
_0226B200:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226B20C: ; jump table
	.short _0226B214 - _0226B20C - 2 ; case 0
	.short _0226B246 - _0226B20C - 2 ; case 1
	.short _0226B25C - _0226B20C - 2 ; case 2
	.short _0226B292 - _0226B20C - 2 ; case 3
_0226B214:
	ldr r2, _0226B314 ; =0x00000591
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
	ldr r0, _0226B30C ; =0x00000955
	mov r5, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0226B23E
	ldr r7, _0226B30C ; =0x00000955
_0226B22A:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	mov r3, #4
	bl ov70_0226B714
	ldrsb r0, [r4, r7]
	add r5, r5, #1
	cmp r5, r0
	blt _0226B22A
_0226B23E:
	ldr r0, _0226B310 ; =0x00000954
	mov r1, #1
	strb r1, [r4, r0]
	b _0226B304
_0226B246:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D09C
	ldr r0, _0226B318 ; =0x00000956
	mov r1, #8
	strh r1, [r4, r0]
	mov r1, #2
	sub r0, r0, #2
	strb r1, [r4, r0]
	b _0226B304
_0226B25C:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226B304
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov70_0225D09C
	ldr r0, _0226B310 ; =0x00000954
	mov r1, #3
	strb r1, [r4, r0]
	mov r1, #0
	add r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #6
	bl ov70_0225CD60
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl ov70_0225D060
	b _0226B304
_0226B292:
	add r0, r1, #0
	add r1, r1, #2
	add r0, #0xb0
	ldrsh r1, [r4, r1]
	add r0, r4, r0
	bl ov70_022692DC
	add r5, r0, #0
	ldr r0, _0226B318 ; =0x00000956
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B31C ; =0x00000A04
	add r1, sp, #0
	add r0, r4, r0
	add r2, sp, #4
	add r3, sp, #8
	bl ov70_02269488
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov70_0225D048
	cmp r5, #1
	bne _0226B304
	ldr r0, _0226B318 ; =0x00000956
	mov r1, #0
	strh r1, [r4, r0]
	ldr r1, [sp, #4]
	add r0, r0, #2
	str r1, [r4, r0]
	ldr r2, _0226B320 ; =0x000005AB
	add r0, r6, #0
	add r1, r4, #0
	bl ov70_02269510
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226B2FE
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov70_02260B38
_0226B2FE:
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226B304:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226B30C: .word 0x00000955
_0226B310: .word 0x00000954
_0226B314: .word 0x00000591
_0226B318: .word 0x00000956
_0226B31C: .word 0x00000A04
_0226B320: .word 0x000005AB
	thumb_func_end ov70_0226B1D0

	thumb_func_start ov70_0226B324
ov70_0226B324: ; 0x0226B324
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B518 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0226B342
	cmp r0, #2
	beq _0226B392
	cmp r0, #3
	b _0226B42E
_0226B342:
	mov r0, #0xf
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0xc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B392:
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0xc
	add r3, r4, r3
	bl sub_02017350
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0x84
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B42E:
	mov r0, #0xf
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0xc
	add r3, r4, r3
	bl sub_02017350
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, #0x84
	add r3, r4, r3
	bl sub_02017350
	mov r0, #0xe
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #1
	add r5, #0xfc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xc
	add r0, r5, #0
	add r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226B518: .word 0x00000955
	thumb_func_end ov70_0226B324

	thumb_func_start ov70_0226B51C
ov70_0226B51C: ; 0x0226B51C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B710 ; =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0226B53A
	cmp r0, #2
	beq _0226B58A
	cmp r0, #3
	b _0226B626
_0226B53A:
	mov r0, #3
	lsl r0, r0, #0x10
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0xc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B58A:
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0xc
	sub r3, r4, r3
	bl sub_02017350
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0x84
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B626:
	mov r0, #3
	lsl r0, r0, #0x10
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0xc
	sub r3, r4, r3
	bl sub_02017350
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #2
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	add r3, r0, #0
	ldr r2, [sp, #4]
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r0, r5, #0
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, #0x84
	sub r3, r4, r3
	bl sub_02017350
	mov r0, #0xb
	lsl r0, r0, #0xe
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	add r6, r0, #0
	mov r0, #0xe
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	bl _f_ftoi
	add r4, r0, #0
	add r0, r6, #0
	bl _f_ftoi
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r3, r0, #0
	add r1, r1, r4
	add r2, r2, r3
	mov r3, #2
	add r5, #0xfc
	ldr r4, [sp, #8]
	lsl r3, r3, #0xe
	add r0, r5, #0
	sub r3, r4, r3
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226B710: .word 0x00000955
	thumb_func_end ov70_0226B51C

	thumb_func_start ov70_0226B714
ov70_0226B714: ; 0x0226B714
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r6, #0x96
	lsl r6, r6, #4
	add r5, r1, r6
	add r4, r3, #0
	ldrb r3, [r5, r2]
	cmp r4, r3
	beq _0226B73E
	strb r4, [r5, r2]
	mov r3, #0
	add r5, r1, r2
	sub r6, r6, #4
	strb r3, [r5, r6]
	lsl r4, r4, #0xd
	str r4, [sp]
	bl ov70_02269A90
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0226B73E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_0226B714

	thumb_func_start ov70_0226B744
ov70_0226B744: ; 0x0226B744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r3, #0x96
	add r7, r1, #0
	add r5, r2, #0
	add r4, r7, r5
	lsl r3, r3, #4
	ldrb r6, [r4, r3]
	sub r3, r3, #4
	add r4, r7, r3
	ldrb r3, [r4, r5]
	str r0, [sp, #4]
	cmp r3, #0
	bne _0226B7A4
	mov r3, #0
	bl ov70_02269AE8
	lsl r1, r6, #0xd
	str r0, [sp, #8]
	cmp r0, r1
	bne _0226B778
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #8]
	b _0226B790
_0226B778:
	cmp r6, #4
	beq _0226B780
	str r1, [sp, #8]
	b _0226B790
_0226B780:
	add r1, r7, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r5
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
_0226B790:
	ldr r0, [sp, #8]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r5, #0
	mov r3, #0
	bl ov70_02269A90
	mov r0, #8
	strb r0, [r4, r5]
_0226B7A4:
	ldrb r0, [r4, r5]
	sub r0, r0, #1
	strb r0, [r4, r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226B744

	thumb_func_start ov70_0226B7B0
ov70_0226B7B0: ; 0x0226B7B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #0x10]
	add r0, r1, #0
	str r1, [sp, #0x14]
	ldr r0, [r0, #8]
	add r1, sp, #0x50
	str r2, [sp, #0x18]
	bl ov70_0225D054
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bls _0226B88E
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
_0226B7D2:
	ldr r1, [sp, #0x20]
	add r1, #0xd
	cmp r1, #0xf
	bls _0226B7DC
	mov r1, #0xf
_0226B7DC:
	ldr r0, _0226B8AC ; =0x0226E370
	ldr r7, _0226B8B0 ; =0x0226E3A0
	str r0, [sp, #0x34]
	lsl r0, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r1, _0226B8B4 ; =0x00000968
	str r0, [sp, #0x28]
	add r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	mov r4, #0
	add r0, r0, r1
	str r0, [sp, #0x30]
_0226B7F8:
	ldr r0, [sp, #0x1c]
	ldr r6, _0226B8B8 ; =0x0226E5A4
	add r5, r4, r0
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r2, r5, #0
	add r3, r6, r3
	bl ov70_02269828
	ldr r1, [sp, #0x34]
	add r0, sp, #0x50
	add r2, sp, #0x44
	bl VEC_Add
	add r0, sp, #0x44
	add r1, r7, #0
	add r2, sp, #0x38
	bl VEC_Add
	mov r0, #0x78
	mul r0, r5
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r0, r1, r0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl sub_02017350
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	add r0, r1, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r2, r0, r5
	ldr r0, _0226B8BC ; =0x00000958
	strb r1, [r2, r0]
	ldr r0, [sp, #0x3c]
	add r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x28
	mul r1, r0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	add r0, r0, r1
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl ov70_022692B4
	ldr r0, [sp, #0x34]
	add r4, r4, #1
	add r0, #0xc
	add r7, #0xc
	str r0, [sp, #0x34]
	cmp r4, #4
	blt _0226B7F8
	ldr r0, [sp, #0x1c]
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	add r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x20]
	cmp r1, r0
	blo _0226B7D2
_0226B88E:
	ldr r2, _0226B8C0 ; =0x00000956
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r3, r2, #1
	strb r1, [r0, r2]
	ldr r1, [sp, #0x14]
	mov r0, #0
	strb r0, [r1, r3]
	sub r3, r2, #2
	strb r0, [r1, r3]
	add r2, r2, #1
	strb r0, [r1, r2]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0226B8AC: .word 0x0226E370
_0226B8B0: .word 0x0226E3A0
_0226B8B4: .word 0x00000968
_0226B8B8: .word 0x0226E5A4
_0226B8BC: .word 0x00000958
_0226B8C0: .word 0x00000956
	thumb_func_end ov70_0226B7B0

	thumb_func_start ov70_0226B8C4
ov70_0226B8C4: ; 0x0226B8C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r2, #0
	ldr r2, _0226B924 ; =0x00000958
	add r5, r1, #0
	add r1, r5, r2
	add r7, r0, #0
	ldrsb r0, [r1, r4]
	add r6, r4, #0
	add r2, #0x10
	add r0, r0, #1
	strb r0, [r1, r4]
	mov r0, #0x28
	mul r6, r0
	add r0, r5, r2
	ldrsb r1, [r1, r4]
	add r0, r0, r6
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226B928 ; =0x00000968
	add r1, sp, #4
	add r0, r5, r0
	add r0, r0, r6
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov70_02269488
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r4
	add r0, r1, r0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl sub_02017350
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov70_022699BC
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226B924: .word 0x00000958
_0226B928: .word 0x00000968
	thumb_func_end ov70_0226B8C4

	thumb_func_start ov70_0226B92C
ov70_0226B92C: ; 0x0226B92C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r7, r1, #0
	mov r6, #0
	str r2, [sp, #4]
	add r0, r2, #0
	beq _0226B986
	add r5, r7, #0
	ldr r4, _0226B990 ; =0x0226E5A4
	add r5, #0xc
_0226B942:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	add r3, r4, #0
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	add r3, r1, r0
	ldr r1, [sp, #8]
	add r0, r5, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl sub_02017350
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x78
	cmp r6, r0
	blo _0226B942
_0226B986:
	ldr r1, _0226B994 ; =0x00000954
	ldr r0, [sp, #4]
	strb r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226B990: .word 0x0226E5A4
_0226B994: .word 0x00000954
	thumb_func_end ov70_0226B92C

	thumb_func_start ov70_0226B998
ov70_0226B998: ; 0x0226B998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #2
	ldrsh r1, [r5, r0]
	mov r0, #0xc
	add r6, r2, #0
	mul r0, r1
	mov r1, #0x30
	bl _s32_div_f
	add r4, r0, #0
	ldr r0, _0226BABC ; =0x00000954
	ldr r1, [r5, r0]
	cmp r4, r1
	beq _0226BA9C
	str r4, [r5, r0]
	cmp r4, #0
	beq _0226B9EA
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _0226BAC0 ; =0x0226E510
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r0, [r1, r0]
	add r1, sp, #8
	strh r0, [r1, #4]
	ldrh r0, [r2, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	add r0, r5, #0
	mov r1, #0x78
	add r0, #0xc
	mul r1, r2
	add r0, r0, r1
	mov r1, #0
	bl sub_02017348
_0226B9EA:
	mov r0, #0x30
	add r2, r6, #0
	mul r2, r0
	ldr r0, _0226BAC4 ; =0x0226E514
	lsl r1, r4, #2
	add r0, r0, r2
	add r2, r1, r0
	ldrh r1, [r1, r0]
	add r0, sp, #8
	strh r1, [r0]
	ldrh r4, [r2, #2]
	strh r4, [r0, #2]
	cmp r4, #0
	beq _0226BA8A
	beq _0226BA1C
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226BA2C
_0226BA1C:
	lsl r7, r4, #0xc
	add r0, r7, #0
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226BA2C:
	add r1, sp, #8
	ldrh r6, [r1]
	bl _f_ftoi
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov70_02269A90
	cmp r4, #0
	beq _0226BA58
	add r0, r7, #0
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0226BA66
_0226BA58:
	add r0, r7, #0
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0226BA66:
	bl _f_ftoi
	str r0, [sp]
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov70_02269A90
	add r1, r5, #0
	mov r0, #0x78
	add r1, #0xc
	mul r0, r6
	add r0, r1, r0
	mov r1, #1
	bl sub_02017348
	b _0226BA9C
_0226BA8A:
	ldrh r1, [r0]
	add r2, r5, #0
	mov r0, #0x78
	mul r0, r1
	add r2, #0xc
	add r0, r2, r0
	mov r1, #0
	bl sub_02017348
_0226BA9C:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	bge _0226BAA8
	add r0, r0, #1
	strh r0, [r5, #2]
_0226BAA8:
	mov r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	blt _0226BAB6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226BAB6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BABC: .word 0x00000954
_0226BAC0: .word 0x0226E510
_0226BAC4: .word 0x0226E514
	thumb_func_end ov70_0226B998

	thumb_func_start ov70_0226BAC8
ov70_0226BAC8: ; 0x0226BAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	add r7, r1, #0
	mov r4, #0
	str r2, [sp, #4]
	add r0, r2, #0
	beq _0226BB1C
	add r5, r7, #0
	add r5, #0xc
_0226BADC:
	add r3, r4, #6
	lsl r6, r3, #2
	ldr r3, _0226BB2C ; =0x0226E5A4
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	add r3, r3, r6
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl sub_02017350
	add r0, r5, #0
	mov r1, #0
	bl sub_02017348
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r5, #0x78
	cmp r4, r0
	blo _0226BADC
_0226BB1C:
	ldr r0, _0226BB30 ; =0x00000954
	mov r1, #0xff
	strh r1, [r7, r0]
	add r1, r0, #2
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BB2C: .word 0x0226E5A4
_0226BB30: .word 0x00000954
	thumb_func_end ov70_0226BAC8

	thumb_func_start ov70_0226BB34
ov70_0226BB34: ; 0x0226BB34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r1, #8]
	str r1, [sp, #4]
	add r1, sp, #8
	bl ov70_0225D054
	mov r0, #0xa
	ldr r7, [sp, #4]
	mov r4, #0
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0xc
	sub r0, r1, r0
	str r0, [sp, #0x10]
	mov r0, #1
	ldr r1, [sp, #8]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r5, r4, #0
	add r7, #0xc
_0226BB68:
	add r3, r4, #0
	add r3, #0x25
	lsl r6, r3, #2
	ldr r3, _0226BBA4 ; =0x0226E5A4
	add r2, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, #0x10
	add r3, r3, r6
	bl ov70_02269828
	add r1, r4, #0
	add r1, #0x10
	mov r0, #0x78
	mul r0, r1
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r7, r0
	add r1, r1, r5
	bl sub_02017350
	mov r0, #6
	lsl r0, r0, #0xe
	add r4, r4, #1
	add r5, r5, r0
	cmp r4, #2
	blt _0226BB68
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BBA4: .word 0x0226E5A4
	thumb_func_end ov70_0226BB34

	thumb_func_start ov70_0226BBA8
ov70_0226BBA8: ; 0x0226BBA8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0226BBD8 ; =0x00000D0C
	mov r2, #1
	strh r2, [r1, r0]
	add r4, r1, #0
	mov r5, #0
	add r0, r0, #2
	strh r5, [r1, r0]
	add r4, #0xc
	add r7, r2, #0
	mov r6, #0x78
_0226BBBE:
	add r0, r5, #0
	add r0, #0x10
	add r1, r0, #0
	mul r1, r6
	add r0, r4, r1
	add r1, r7, #0
	bl sub_02017348
	add r5, r5, #1
	cmp r5, #2
	blt _0226BBBE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226BBD8: .word 0x00000D0C
	thumb_func_end ov70_0226BBA8

	thumb_func_start ov70_0226BBDC
ov70_0226BBDC: ; 0x0226BBDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _0226BC38 ; =0x00000D0C
	add r7, r0, #0
	ldrh r0, [r5, r1]
	cmp r0, #0
	beq _0226BC36
	add r0, r1, #2
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _0226BBFE
	add r0, r1, #2
	ldrh r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r5, r0]
	b _0226BC02
_0226BBFE:
	mov r0, #0
	strh r0, [r5, r1]
_0226BC02:
	add r6, r5, #0
	mov r4, #0
	add r6, #0xc
_0226BC08:
	ldr r0, _0226BC3C ; =0x00000D0E
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _0226BC20
	add r2, r4, #0
	add r0, r7, #0
	add r1, r5, #0
	add r2, #0x10
	mov r3, #0
	bl ov70_022699BC
	b _0226BC30
_0226BC20:
	add r1, r4, #0
	add r1, #0x10
	mov r0, #0x78
	mul r0, r1
	add r0, r6, r0
	mov r1, #0
	bl sub_02017348
_0226BC30:
	add r4, r4, #1
	cmp r4, #2
	blt _0226BC08
_0226BC36:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BC38: .word 0x00000D0C
_0226BC3C: .word 0x00000D0E
	thumb_func_end ov70_0226BBDC

	thumb_func_start ov70_0226BC40
ov70_0226BC40: ; 0x0226BC40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	mov r7, #2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	mov r6, #1
	str r0, [sp, #0x34]
	mov r0, #0x3b
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r4, [sp, #0x34]
	strh r2, [r5, r1]
	add r0, r0, #6
	strh r3, [r5, r0]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r4, #0xc
	str r0, [sp, #0xc]
_0226BC70:
	ldr r1, [sp, #0x10]
	mov r0, #0x78
	mul r0, r1
	add r0, r4, r0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #8]
	mov r1, #0x78
	mul r1, r2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	mov r2, #0x78
	mov r3, #0x78
	mul r2, r6
	mul r3, r7
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov70_0226BD64
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r5, #0xec
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0226BC70
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226BC40

	thumb_func_start ov70_0226BCC0
ov70_0226BCC0: ; 0x0226BCC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	str r1, [sp]
	cmp r0, #0
	ble _0226BD2E
	ldr r4, [sp, #8]
	add r6, sp, #0x10
_0226BCDC:
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, r4
	ldrh r0, [r0, r4]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, [sp]
	cmp r1, r0
	bne _0226BD1A
	ldrb r7, [r6, #2]
	cmp r7, #4
	blo _0226BCFE
	bl sub_02022974
_0226BCFE:
	ldrb r0, [r6, #3]
	str r0, [sp, #4]
	cmp r0, #4
	bls _0226BD0A
	bl sub_02022974
_0226BD0A:
	mov r0, #0xec
	mul r0, r7
	ldr r1, [sp, #4]
	add r0, r5, r0
	bl ov70_0226BDA0
	mov r0, #1
	str r0, [sp, #8]
_0226BD1A:
	ldr r0, [sp, #0xc]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0xed
	lsl r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0226BCDC
_0226BD2E:
	mov r7, #1
	mov r6, #0
	add r4, r5, #0
_0226BD34:
	add r0, r4, #0
	bl ov70_0226BDE8
	cmp r0, #0
	bne _0226BD40
	mov r7, #0
_0226BD40:
	add r6, r6, #1
	add r4, #0xec
	cmp r6, #4
	blt _0226BD34
	ldr r0, _0226BD60 ; =0x000003B6
	ldrh r1, [r5, r0]
	ldr r0, [sp]
	cmp r1, r0
	bhi _0226BD5A
	cmp r7, #1
	bne _0226BD5A
	mov r0, #2
	str r0, [sp, #8]
_0226BD5A:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BD60: .word 0x000003B6
	thumb_func_end ov70_0226BCC0

	thumb_func_start ov70_0226BD64
ov70_0226BD64: ; 0x0226BD64
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x20]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #3
	blo _0226BD78
	bl sub_02022974
_0226BD78:
	add r0, r5, #0
	add r0, #0xd8
	str r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xdc
	str r6, [r0, #0]
	add r0, r5, #0
	add r0, #0xe0
	str r7, [r0, #0]
	add r0, r5, #0
	ldr r1, [sp, #0x18]
	add r0, #0xe4
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [sp, #0x1c]
	add r0, #0xe8
	str r1, [r0, #0]
	ldr r0, [sp, #0x20]
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226BD64

	thumb_func_start ov70_0226BDA0
ov70_0226BDA0: ; 0x0226BDA0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r4, _0226BDE0 ; =0x00000000
	beq _0226BDC0
	add r5, r7, #0
_0226BDAC:
	add r0, r5, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02017348
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blo _0226BDAC
_0226BDC0:
	mov r0, #0
	strh r0, [r7]
	mov r0, #1
	strb r0, [r7, #6]
	strh r6, [r7, #4]
	ldrh r2, [r7, #2]
	add r1, r7, #0
	add r1, #0xe8
	lsl r3, r2, #2
	ldr r2, _0226BDE4 ; =0x0226E364
	ldr r1, [r1, #0]
	ldr r2, [r2, r3]
	add r0, r7, #0
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226BDE0: .word 0x00000000
_0226BDE4: .word 0x0226E364
	thumb_func_end ov70_0226BDA0

	thumb_func_start ov70_0226BDE8
ov70_0226BDE8: ; 0x0226BDE8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r1, [r5, #6]
	cmp r1, #0
	bne _0226BDF6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226BDF6:
	ldrh r1, [r5, #2]
	lsl r2, r1, #2
	ldr r1, _0226BE38 ; =0x0226E31C
	ldr r1, [r1, r2]
	blx r1
	mov r6, #0
	str r0, [sp]
	ldrsh r0, [r5, r6]
	add r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	bne _0226BE34
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226BE30
	add r4, r5, #0
	add r7, r6, #0
_0226BE1A:
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r1, r7, #0
	bl sub_02017348
	ldrh r0, [r5, #4]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0226BE1A
_0226BE30:
	mov r0, #0
	strb r0, [r5, #6]
_0226BE34:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BE38: .word 0x0226E31C
	thumb_func_end ov70_0226BDE8

	thumb_func_start ov70_0226BE3C
ov70_0226BE3C: ; 0x0226BE3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x24
	bl ov70_0225D054
	mov r1, #2
	ldr r0, [sp, #0x24]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	lsl r0, r1, #1
	add r0, r2, r0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226BF50
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	add r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0xa8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
_0226BE80:
	cmp r4, #3
	bhi _0226BEFE
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226BE90: ; jump table
	.short _0226BE98 - _0226BE90 - 2 ; case 0
	.short _0226BEB0 - _0226BE90 - 2 ; case 1
	.short _0226BEC8 - _0226BE90 - 2 ; case 2
	.short _0226BEE4 - _0226BE90 - 2 ; case 3
_0226BE98:
	mov r0, #3
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	sub r7, r1, r0
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	add r6, r1, r0
	ldr r5, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEB0:
	mov r0, #3
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r7, r1, r0
	mov r0, #1
	ldr r1, [sp, #0x28]
	lsl r0, r0, #0x10
	add r6, r1, r0
	ldr r5, [sp, #0x2c]
	ldr r0, _0226BF54 ; =0x00007FFF
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEC8:
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	sub r7, r1, r0
	ldr r1, [sp, #0x28]
	lsl r0, r0, #1
	add r6, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	sub r5, r1, r0
	ldr r0, _0226BF54 ; =0x00007FFF
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEE4:
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0xe
	add r7, r1, r0
	ldr r1, [sp, #0x28]
	lsl r0, r0, #1
	add r6, r1, r0
	mov r0, #6
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #0xc
	sub r5, r1, r0
	mov r0, #0
	str r0, [sp, #0x20]
_0226BEFE:
	str r6, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x12
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl ov70_022692B4
	mov r3, #6
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldr r2, _0226BF58 ; =0x00000CCC
	lsl r3, r3, #0xc
	bl ov70_0226949C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl sub_02017350
	ldr r0, [sp, #0x1c]
	add r4, r4, #1
	add r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0226BE80
_0226BF50:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BF54: .word 0x00007FFF
_0226BF58: .word 0x00000CCC
	thumb_func_end ov70_0226BE3C

	thumb_func_start ov70_0226BF5C
ov70_0226BF5C: ; 0x0226BF5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226BFDC
	ldr r0, [sp]
	ldr r6, [sp]
	str r0, [sp, #4]
	add r0, #0xa8
	add r6, #8
	ldr r5, [sp]
	str r0, [sp, #4]
	add r4, r0, #0
	add r7, r6, #0
_0226BF80:
	ldr r0, [sp, #4]
	bl ov70_022694D0
	ldr r2, [sp]
	mov r1, #0
	ldrsh r1, [r2, r1]
	add r0, r6, #0
	bl ov70_022692DC
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0x10
	bl ov70_02269508
	add r0, r7, #0
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	bl ov70_02269488
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r1, r1, r0
	add r0, r5, #0
	str r1, [sp, #0x14]
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x1c]
	bl sub_02017350
	ldr r0, [sp, #4]
	add r6, #0x28
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r7, #0x28
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	cmp r0, r1
	blt _0226BF80
_0226BFDC:
	ldr r0, [sp, #8]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226BF5C

	thumb_func_start ov70_0226BFE4
ov70_0226BFE4: ; 0x0226BFE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x1c
	bl ov70_0225D054
	mov r0, #2
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xe
	add r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	mov r4, #0
	add r1, r1, r0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x24]
	sub r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226C0C6
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x18]
	add r1, #8
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r1, #0xa8
	str r1, [sp, #0x14]
_0226C022:
	cmp r4, #3
	bhi _0226C08A
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226C032: ; jump table
	.short _0226C03A - _0226C032 - 2 ; case 0
	.short _0226C04A - _0226C032 - 2 ; case 1
	.short _0226C05A - _0226C032 - 2 ; case 2
	.short _0226C07C - _0226C032 - 2 ; case 3
_0226C03A:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	add r5, r1, r0
	b _0226C08A
_0226C04A:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	add r5, r1, r0
	b _0226C08A
_0226C05A:
	cmp r0, #3
	bne _0226C06C
	mov r0, #2
	ldr r1, [sp, #0x24]
	lsl r0, r0, #0x10
	ldr r7, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
	b _0226C08A
_0226C06C:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	sub r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
	b _0226C08A
_0226C07C:
	mov r0, #1
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0x10
	add r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	sub r5, r1, r0
_0226C08A:
	str r6, [sp]
	ldr r0, [sp, #0x24]
	add r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x13
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl ov70_022692B4
	mov r3, #2
	ldr r0, [sp, #0x14]
	ldr r1, _0226C0D0 ; =0x00001555
	ldr r2, _0226C0D4 ; =0x0000071C
	lsl r3, r3, #0x10
	bl ov70_0226949C
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0226C022
_0226C0C6:
	ldr r0, [sp, #0x10]
	bl ov70_0226C0D8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C0D0: .word 0x00001555
_0226C0D4: .word 0x0000071C
	thumb_func_end ov70_0226BFE4

	thumb_func_start ov70_0226C0D8
ov70_0226C0D8: ; 0x0226C0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226C16A
	add r4, r5, #0
	add r0, r5, #0
	add r4, #0xa8
	str r0, [sp, #4]
	add r0, #8
	str r0, [sp, #4]
	str r4, [sp]
	add r6, r0, #0
	add r7, r5, #0
_0226C0FA:
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0xe
	bne _0226C112
	mov r3, #3
	ldr r2, _0226C178 ; =0x00000E38
	add r0, r4, #0
	mov r1, #0
	lsl r3, r3, #0xe
	bl ov70_0226949C
	b _0226C118
_0226C112:
	add r0, r4, #0
	bl ov70_022694D0
_0226C118:
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #4]
	bl ov70_022692DC
	ldr r0, [sp]
	add r1, sp, #0xc
	bl ov70_02269508
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0x14
	add r3, sp, #0x18
	bl ov70_02269488
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	add r2, r1, r0
	add r0, r7, #0
	str r2, [sp, #0x14]
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	bl sub_02017350
	ldr r0, [sp, #4]
	ldrh r1, [r5, #4]
	add r0, #0x28
	str r0, [sp, #4]
	ldr r0, [sp]
	add r4, #0xc
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	add r6, #0x28
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #8]
	cmp r0, r1
	blt _0226C0FA
_0226C16A:
	mov r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x16
	blt _0226C174
	mov r0, #1
_0226C174:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C178: .word 0x00000E38
	thumb_func_end ov70_0226C0D8

	thumb_func_start ov70_0226C17C
ov70_0226C17C: ; 0x0226C17C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, r1, #0
	add r1, sp, #0x10
	bl ov70_0225D054
	mov r1, #2
	ldr r0, [sp, #0x10]
	lsl r1, r1, #0xe
	add r0, r0, r1
	str r0, [sp, #0x10]
	mov r0, #5
	ldr r2, [sp, #0x14]
	lsl r0, r0, #0xe
	add r0, r2, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r4, #0
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226C1D8
	mov r6, #5
	mov r7, #7
	lsl r6, r6, #0xc
	lsl r7, r7, #0xc
_0226C1B4:
	str r6, [sp]
	mov r0, #0xe
	mov r3, #0xd
	str r7, [sp, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #0x10
	lsl r3, r3, #0xc
	bl ov70_0226C2A4
	ldrh r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _0226C1B4
_0226C1D8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C17C

	thumb_func_start ov70_0226C1DC
ov70_0226C1DC: ; 0x0226C1DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldrh r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _0226C27E
	add r4, r5, #0
	str r4, [sp, #0x10]
	add r4, #8
	str r4, [sp, #0x10]
	add r7, r5, #0
_0226C1F4:
	mov r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #0x10]
	bl ov70_022692DC
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov70_02269488
	add r0, r7, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl sub_02017350
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0226C26C
	ldrb r0, [r5, #7]
	add r2, sp, #0x18
	cmp r0, #0
	bne _0226C24A
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	ldr r0, _0226C2A0 ; =0xFFFFD000
	ldr r3, _0226C2A0 ; =0xFFFFD000
	str r0, [sp, #4]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov70_0226C2A4
	b _0226C26C
_0226C24A:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #0xa
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, #4
	mov r3, #0xa
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	lsl r3, r3, #0xc
	bl ov70_0226C2A4
_0226C26C:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, #0x28
	str r0, [sp, #0x10]
	ldrh r0, [r5, #4]
	add r4, #0x28
	add r7, r7, #4
	cmp r6, r0
	blt _0226C1F4
_0226C27E:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0226C29A
	ldrb r0, [r5, #7]
	add r0, r0, #1
	cmp r0, #3
	bge _0226C294
	strb r0, [r5, #7]
	mov r0, #0
	strh r0, [r5]
	b _0226C29A
_0226C294:
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226C29A:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C2A0: .word 0xFFFFD000
	thumb_func_end ov70_0226C1DC

	thumb_func_start ov70_0226C2A4
ov70_0226C2A4: ; 0x0226C2A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	cmp r5, #3
	bhi _0226C302
	add r3, r5, r5
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0226C2C0: ; jump table
	.short _0226C2C8 - _0226C2C0 - 2 ; case 0
	.short _0226C2D6 - _0226C2C0 - 2 ; case 1
	.short _0226C2E4 - _0226C2C0 - 2 ; case 2
	.short _0226C2F4 - _0226C2C0 - 2 ; case 3
_0226C2C8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	sub r2, r0, r6
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2D6:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r0, r6
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2E4:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x2c]
	sub r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2F4:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x2c]
	add r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	add r0, r1, r0
	ldr r1, [r4, #8]
_0226C302:
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x34]
	add r1, r7, #0
	str r0, [sp, #0xc]
	mov r0, #0x28
	add r1, #8
	mul r0, r5
	add r0, r1, r0
	ldr r1, [r4, #0]
	ldr r3, [r4, #4]
	bl ov70_022692B4
	lsl r0, r5, #2
	add r0, r7, r0
	add r0, #0xd8
	ldr r0, [r0, #0]
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl sub_02017350
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_0226C2A4

	.rodata


	.global Unk_ov70_0226E2E8
Unk_ov70_0226E2E8: ; 0x0226E2E8
	.incbin "incbin/overlay70_rodata.bin", 0xE1C, 0xE20 - 0xE1C

	.global Unk_ov70_0226E2EC
Unk_ov70_0226E2EC: ; 0x0226E2EC
	.incbin "incbin/overlay70_rodata.bin", 0xE20, 0xE28 - 0xE20

	.global Unk_ov70_0226E2F4
Unk_ov70_0226E2F4: ; 0x0226E2F4
	.incbin "incbin/overlay70_rodata.bin", 0xE28, 0xE30 - 0xE28

	.global Unk_ov70_0226E2FC
Unk_ov70_0226E2FC: ; 0x0226E2FC
	.incbin "incbin/overlay70_rodata.bin", 0xE30, 0xE38 - 0xE30

	.global Unk_ov70_0226E304
Unk_ov70_0226E304: ; 0x0226E304
	.incbin "incbin/overlay70_rodata.bin", 0xE38, 0xE40 - 0xE38

	.global Unk_ov70_0226E30C
Unk_ov70_0226E30C: ; 0x0226E30C
	.incbin "incbin/overlay70_rodata.bin", 0xE40, 0xE48 - 0xE40

	.global Unk_ov70_0226E314
Unk_ov70_0226E314: ; 0x0226E314
	.incbin "incbin/overlay70_rodata.bin", 0xE48, 0xE50 - 0xE48

	.global Unk_ov70_0226E31C
Unk_ov70_0226E31C: ; 0x0226E31C
	.incbin "incbin/overlay70_rodata.bin", 0xE50, 0xE5C - 0xE50

	.global Unk_ov70_0226E328
Unk_ov70_0226E328: ; 0x0226E328
	.incbin "incbin/overlay70_rodata.bin", 0xE5C, 0xE68 - 0xE5C

	.global Unk_ov70_0226E334
Unk_ov70_0226E334: ; 0x0226E334
	.incbin "incbin/overlay70_rodata.bin", 0xE68, 0xE74 - 0xE68

	.global Unk_ov70_0226E340
Unk_ov70_0226E340: ; 0x0226E340
	.incbin "incbin/overlay70_rodata.bin", 0xE74, 0xE80 - 0xE74

	.global Unk_ov70_0226E34C
Unk_ov70_0226E34C: ; 0x0226E34C
	.incbin "incbin/overlay70_rodata.bin", 0xE80, 0xE8C - 0xE80

	.global Unk_ov70_0226E358
Unk_ov70_0226E358: ; 0x0226E358
	.incbin "incbin/overlay70_rodata.bin", 0xE8C, 0xE98 - 0xE8C

	.global Unk_ov70_0226E364
Unk_ov70_0226E364: ; 0x0226E364
	.incbin "incbin/overlay70_rodata.bin", 0xE98, 0xEA4 - 0xE98

	.global Unk_ov70_0226E370
Unk_ov70_0226E370: ; 0x0226E370
	.incbin "incbin/overlay70_rodata.bin", 0xEA4, 0xED4 - 0xEA4

	.global Unk_ov70_0226E3A0
Unk_ov70_0226E3A0: ; 0x0226E3A0
	.incbin "incbin/overlay70_rodata.bin", 0xED4, 0xF04 - 0xED4

	.global Unk_ov70_0226E3D0
Unk_ov70_0226E3D0: ; 0x0226E3D0
	.incbin "incbin/overlay70_rodata.bin", 0xF04, 0xF70 - 0xF04

	.global Unk_ov70_0226E43C
Unk_ov70_0226E43C: ; 0x0226E43C
	.incbin "incbin/overlay70_rodata.bin", 0xF70, 0xFDC - 0xF70

	.global Unk_ov70_0226E4A8
Unk_ov70_0226E4A8: ; 0x0226E4A8
	.incbin "incbin/overlay70_rodata.bin", 0xFDC, 0x1048 - 0xFDC

	.global Unk_ov70_0226E514
Unk_ov70_0226E514: ; 0x0226E514
	.incbin "incbin/overlay70_rodata.bin", 0x1048, 0x10D8 - 0x1048

	.global Unk_ov70_0226E5A4
Unk_ov70_0226E5A4: ; 0x0226E5A4
	.incbin "incbin/overlay70_rodata.bin", 0x10D8, 0x1174 - 0x10D8

	.global Unk_ov70_0226E640
Unk_ov70_0226E640: ; 0x0226E640
	.incbin "incbin/overlay70_rodata.bin", 0x1174, 0x1184 - 0x1174

	.global Unk_ov70_0226E650
Unk_ov70_0226E650: ; 0x0226E650
	.incbin "incbin/overlay70_rodata.bin", 0x1184, 0x1194 - 0x1184

	.global Unk_ov70_0226E660
Unk_ov70_0226E660: ; 0x0226E660
	.incbin "incbin/overlay70_rodata.bin", 0x1194, 0x10

