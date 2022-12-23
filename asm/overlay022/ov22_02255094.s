	.include "macros/function.inc"
	.include "overlay022/ov22_02255094.inc"

	

	.text


	thumb_func_start ov22_02255094
ov22_02255094: ; 0x02255094
	push {r3, lr}
	bl ov22_02255634
	bl ov22_02255654
	bl ov22_022556DC
	ldr r0, _022550B0 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	pop {r3, pc}
	nop
_022550B0: .word 0x021BF6DC
	thumb_func_end ov22_02255094

	thumb_func_start ov22_022550B4
ov22_022550B4: ; 0x022550B4
	push {r3, lr}
	ldr r0, _022550D0 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl ov22_02255738
	bl ov22_0225572C
	bl GX_ResetBankForTex
	pop {r3, pc}
	nop
_022550D0: .word 0x021BF6DC
	thumb_func_end ov22_022550B4

	thumb_func_start ov22_022550D4
ov22_022550D4: ; 0x022550D4
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _02255130 ; =0x0225BD98
	add r2, sp, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x19
	mov r1, #0xe
	bl sub_02006C24
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov22_02255748
	mov r2, #0xa
	add r0, r4, #0
	mov r1, #0xe
	lsl r2, r2, #0xa
	mov r3, #0x20
	bl ov22_02255C24
	add r0, r4, #0
	bl ov22_022559B4
	add r0, r4, #0
	mov r1, #0xd
	bl ov22_02255BF4
	add r0, r4, #0
	bl ov22_022559F8
	mov r0, #0xe
	bl sub_02018340
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl ov22_02255860
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02255130: .word 0x0225BD98
	thumb_func_end ov22_022550D4

	thumb_func_start ov22_02255134
ov22_02255134: ; 0x02255134
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02255C14
	add r0, r4, #0
	bl ov22_02255784
	add r0, r4, #0
	bl ov22_02255984
	ldr r0, [r4, #0x40]
	bl sub_020181C4
	add r0, r4, #0
	bl ov22_02255C90
	add r0, r4, #0
	bl ov22_02255A98
	add r0, r4, #0
	bl ov22_022559E0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ov22_02255134

	thumb_func_start ov22_02255180
ov22_02255180: ; 0x02255180
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02255198
	add r0, r4, #0
	bl ov22_02255794
_02255198:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _022551A4
	ldr r0, [r4, #0x20]
	bl sub_02007768
_022551A4:
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add r0, r4, #0
	bl ov22_02255AC0
	pop {r4, pc}
	thumb_func_end ov22_02255180

	thumb_func_start ov22_022551B4
ov22_022551B4: ; 0x022551B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	add r5, r0, #0
	bl ov22_022557A0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ov22_02255800
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_022551B4

	thumb_func_start ov22_022551D0
ov22_022551D0: ; 0x022551D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0201517C
	ldr r0, [r4, #0]
	bl sub_020151EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022551D0

	thumb_func_start ov22_022551E4
ov22_022551E4: ; 0x022551E4
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r4, r2, #0
	ldr r2, [r5, #0x48]
	add r6, r3, #0
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	add r3, r1, #0
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x50]
	str r2, [sp, #0x1c]
	ldr r2, [r5, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #0x44]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x34]
	lsl r0, r6, #0xc
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x84]
	str r0, [sp, #0x44]
	mov r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022551E4

	thumb_func_start ov22_02255248
ov22_02255248: ; 0x02255248
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x48]
	bl sub_02009A4C
	bl sub_0200A3DC
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255248

	thumb_func_start ov22_02255268
ov22_02255268: ; 0x02255268
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	mov r4, #0xe
	str r4, [sp, #0xc]
	ldr r0, [r0, #0x4c]
	bl sub_02009B04
	bl sub_0200A640
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255268

	thumb_func_start ov22_0225528C
ov22_0225528C: ; 0x0225528C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x50]
	bl sub_02009BC4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225528C

	thumb_func_start ov22_022552A8
ov22_022552A8: ; 0x022552A8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x54]
	bl sub_02009BC4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022552A8

	thumb_func_start ov22_022552C4
ov22_022552C4: ; 0x022552C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552C4

	thumb_func_start ov22_022552D8
ov22_022552D8: ; 0x022552D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552D8

	thumb_func_start ov22_022552EC
ov22_022552EC: ; 0x022552EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552EC

	thumb_func_start ov22_02255300
ov22_02255300: ; 0x02255300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_02255300

	thumb_func_start ov22_02255314
ov22_02255314: ; 0x02255314
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x76
	mov r2, #0x13
	mov r3, #0xe
	bl ov22_02255CB8
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255ACC
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255B50
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255314

	thumb_func_start ov22_02255338
ov22_02255338: ; 0x02255338
	ldr r3, _0225533C ; =ov22_02255D0C
	bx r3
	; .align 2, 0
_0225533C: .word ov22_02255D0C
	thumb_func_end ov22_02255338

	thumb_func_start ov22_02255340
ov22_02255340: ; 0x02255340
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	add r6, r1, #0
	add r5, r2, #0
	bl sub_02022A1C
	ldr r1, [r4, #0x38]
	lsl r5, r5, #2
	add r0, r6, #0
	add r1, r1, r5
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [r4, #0x38]
	ldr r0, [r0, r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02255340

	thumb_func_start ov22_02255360
ov22_02255360: ; 0x02255360
	push {r3, r4}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0225538C ; =0xFFFF1FFF
	add r3, r0, #0
	and r1, r2
	str r1, [r0, #0]
	add r3, #8
	ldrh r4, [r3]
	mov r2, #3
	mov r1, #1
	bic r4, r2
	orr r1, r4
	add r0, #0xa
	strh r1, [r3]
	ldrh r1, [r0]
	bic r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_0225538C: .word 0xFFFF1FFF
	thumb_func_end ov22_02255360

	thumb_func_start ov22_02255390
ov22_02255390: ; 0x02255390
	push {r3, r4}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _022553EC ; =0xFFFF1FFF
	add r3, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r3, #0x48
	ldrh r4, [r3]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r3, r0, #0
	add r3, #0x4a
	ldrh r4, [r3]
	mov r1, #0x12
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r1, r0, #0
	ldr r2, _022553F0 ; =0x00000AF6
	add r1, #0x40
	strh r2, [r1]
	add r1, r0, #0
	ldr r2, _022553F4 ; =0x0000128F
	add r1, #0x44
	strh r2, [r1]
	add r2, r0, #0
	add r2, #8
	ldrh r3, [r2]
	mov r1, #3
	add r0, #0xa
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022553EC: .word 0xFFFF1FFF
_022553F0: .word 0x00000AF6
_022553F4: .word 0x0000128F
	thumb_func_end ov22_02255390

	thumb_func_start ov22_022553F8
ov22_022553F8: ; 0x022553F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0201C2B8
	ldr r0, [r4, #0x20]
	bl sub_02008A94
	bl sub_0200A858
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022553F8

	thumb_func_start ov22_02255410
ov22_02255410: ; 0x02255410
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0x76
	mov r2, #0x13
	bl ov22_02255CB8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02255410

	thumb_func_start ov22_02255420
ov22_02255420: ; 0x02255420
	push {r4, r5}
	ldrh r5, [r0, #2]
	ldrh r4, [r0]
	lsl r5, r5, #3
	cmp r1, #0
	blt _0225543A
	cmp r2, #0
	blt _0225543A
	cmp r1, r5
	bge _0225543A
	lsl r4, r4, #3
	cmp r2, r4
	blt _02255440
_0225543A:
	mov r0, #2
	pop {r4, r5}
	bx lr
_02255440:
	add r4, r2, #0
	mul r4, r5
	add r4, r1, r4
	lsr r5, r4, #0x1f
	lsl r2, r4, #0x1d
	sub r2, r2, r5
	mov r1, #0x1d
	ror r2, r1
	add r1, r5, r2
	lsl r2, r1, #2
	add r1, r3, #0
	ldr r3, [r0, #0x14]
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r0, r0, #3
	lsl r0, r0, #2
	ldr r3, [r3, r0]
	mov r0, #0xf
	lsl r0, r2
	lsl r1, r2
	and r0, r3
	cmp r1, r0
	bne _02255476
	mov r0, #1
	pop {r4, r5}
	bx lr
_02255476:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov22_02255420

	thumb_func_start ov22_0225547C
ov22_0225547C: ; 0x0225547C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov22_02255748
	mov r2, #0xa
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0xa
	mov r3, #0x20
	bl ov22_02255C24
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_02008B2C
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255BF4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225547C

	thumb_func_start ov22_022554A8
ov22_022554A8: ; 0x022554A8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r3, _022554F4 ; =0x0225BDFC
	add r5, r0, #0
	str r1, [r5, #0x40]
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	ldr r0, [r5, #0x40]
	bl sub_02019044
	ldr r0, [r5, #0x40]
	mov r1, #2
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0x40]
	mov r1, #2
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_022554F4: .word 0x0225BDFC
	thumb_func_end ov22_022554A8

	thumb_func_start ov22_022554F8
ov22_022554F8: ; 0x022554F8
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02255C14
	add r0, r4, #0
	bl ov22_02255784
	add r0, r4, #0
	bl ov22_02255C90
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022554F8

	thumb_func_start ov22_02255524
ov22_02255524: ; 0x02255524
	ldr r3, _0225552C ; =sub_02019044
	ldr r0, [r0, #0x40]
	mov r1, #2
	bx r3
	; .align 2, 0
_0225552C: .word sub_02019044
	thumb_func_end ov22_02255524

	thumb_func_start ov22_02255530
ov22_02255530: ; 0x02255530
	ldr r3, _02255538 ; =sub_02008A94
	ldr r0, [r0, #0x20]
	bx r3
	nop
_02255538: .word sub_02008A94
	thumb_func_end ov22_02255530

	thumb_func_start ov22_0225553C
ov22_0225553C: ; 0x0225553C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _022555C0 ; =0x04000454
	str r3, [sp]
	mov r1, #0
	str r1, [r0, #0]
	sub r0, #0x10
	add r6, r2, #0
	ldr r7, [sp, #0x18]
	str r1, [r0, #0]
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r1, _022555C4 ; =0x04000470
	lsl r0, r4, #0xc
	str r0, [r1, #0]
	lsl r0, r6, #0xc
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r1, _022555C8 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl G3_RotZ
	ldr r2, [r7, #8]
	ldr r1, [r7, #4]
	ldr r3, [r7, #0]
	ldr r0, _022555CC ; =0x0400046C
	str r3, [r0, #0]
	str r1, [r0, #0]
	neg r1, r4
	str r2, [r0, #0]
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	neg r1, r6
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #4]
	sub r0, #0x28
	str r1, [r0, #0]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _022555A8
	add r0, r5, #0
	bl ov22_02255794
_022555A8:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _022555B4
	ldr r0, [r5, #0x20]
	bl sub_02007768
_022555B4:
	ldr r0, _022555D0 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022555C0: .word 0x04000454
_022555C4: .word 0x04000470
_022555C8: .word 0x020F983C
_022555CC: .word 0x0400046C
_022555D0: .word 0x04000448
	thumb_func_end ov22_0225553C

	thumb_func_start ov22_022555D4
ov22_022555D4: ; 0x022555D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x19
	mov r1, #0xe
	bl sub_02006C24
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov22_022559F8
	mov r0, #0xe
	bl sub_02018340
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl ov22_02255860
	pop {r4, pc}
	thumb_func_end ov22_022555D4

	thumb_func_start ov22_022555FC
ov22_022555FC: ; 0x022555FC
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02255984
	ldr r0, [r4, #0x40]
	bl sub_020181C4
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	add r0, r4, #0
	bl ov22_02255A98
	pop {r4, pc}
	thumb_func_end ov22_022555FC

	thumb_func_start ov22_0225561C
ov22_0225561C: ; 0x0225561C
	push {r3, lr}
	ldr r0, [r0, #0x40]
	bl sub_0201C2B8
	bl sub_0200A858
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225561C

	thumb_func_start ov22_0225562C
ov22_0225562C: ; 0x0225562C
	ldr r3, _02255630 ; =ov22_02255AC0
	bx r3
	; .align 2, 0
_02255630: .word ov22_02255AC0
	thumb_func_end ov22_0225562C

	thumb_func_start ov22_02255634
ov22_02255634: ; 0x02255634
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02255650 ; =0x0225BE50
	add r3, sp, #0
	mov r2, #5
_0225563E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225563E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02255650: .word 0x0225BE50
	thumb_func_end ov22_02255634

	thumb_func_start ov22_02255654
ov22_02255654: ; 0x02255654
	push {r3, lr}
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _022556C8 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	ldr r2, _022556CC ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _022556D0 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r2, _022556D4 ; =0x04000540
	mov r0, #2
	ldr r1, _022556D8 ; =0xBFFF0000
	str r0, [r2, #0]
	str r1, [r2, #0x40]
	mov r1, #1
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	pop {r3, pc}
	; .align 2, 0
_022556C8: .word 0x04000008
_022556CC: .word 0xFFFFCFFD
_022556D0: .word 0x0000CFFB
_022556D4: .word 0x04000540
_022556D8: .word 0xBFFF0000
	thumb_func_end ov22_02255654

	thumb_func_start ov22_022556DC
ov22_022556DC: ; 0x022556DC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02255724 ; =0x0225BD78
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02255728 ; =0xFFCFFFEF
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2, #0]
	bl NNS_G2dInitOamManagerModule
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #0x1f
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x13
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02255724: .word 0x0225BD78
_02255728: .word 0xFFCFFFEF
	thumb_func_end ov22_022556DC

	thumb_func_start ov22_0225572C
ov22_0225572C: ; 0x0225572C
	push {r3, lr}
	bl NNS_GfdResetFrmTexVramState
	bl NNS_GfdResetFrmPlttVramState
	pop {r3, pc}
	thumb_func_end ov22_0225572C

	thumb_func_start ov22_02255738
ov22_02255738: ; 0x02255738
	push {r3, lr}
	bl sub_0201FF00
	bl sub_0201FF68
	bl NNS_G2dInitOamManagerModule
	pop {r3, pc}
	thumb_func_end ov22_02255738

	thumb_func_start ov22_02255748
ov22_02255748: ; 0x02255748
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02015064
	str r0, [r5, #0]
	mov r1, #0x76
	ldr r0, [r4, #0xc]
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r5, #4]
	mov r0, #0x76
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #0x4c
	bl sub_02018144
	str r0, [r5, #0x10]
	mov r0, #0x13
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02255748

	thumb_func_start ov22_02255784
ov22_02255784: ; 0x02255784
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020150A8
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov22_02255784

	thumb_func_start ov22_02255794
ov22_02255794: ; 0x02255794
	ldr r3, _0225579C ; =sub_020150EC
	ldr r0, [r0, #0]
	bx r3
	nop
_0225579C: .word sub_020150EC
	thumb_func_end ov22_02255794

	thumb_func_start ov22_022557A0
ov22_022557A0: ; 0x022557A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r2, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _022557FC
	add r7, r5, #0
	add r6, r4, #0
	add r7, #0xc
_022557BA:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _022557C6
	bl GF_AssertFail
_022557C6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022557DC
	add r0, r6, #0
	bl sub_02015128
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	b _022557E6
_022557DC:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #4]
	lsl r2, r1, #2
	mov r1, #0
	str r1, [r0, r2]
_022557E6:
	ldr r0, [r7, #0]
	add r4, #8
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r0, [sp, #4]
	add r6, #8
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _022557BA
_022557FC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022557A0

	thumb_func_start ov22_02255800
ov22_02255800: ; 0x02255800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r2, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _0225585C
	add r7, r5, #0
	add r6, r4, #0
	add r7, #0x18
_0225581A:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _02255826
	bl GF_AssertFail
_02255826:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225583C
	add r0, r6, #0
	bl sub_020151A4
	ldr r2, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsl r2, r2, #2
	str r0, [r1, r2]
	b _02255846
_0225583C:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	lsl r2, r1, #2
	mov r1, #0
	str r1, [r0, r2]
_02255846:
	ldr r0, [r7, #0]
	add r4, #0xc
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r0, [sp, #4]
	add r6, #0xc
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0225581A
_0225585C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02255800

	thumb_func_start ov22_02255860
ov22_02255860: ; 0x02255860
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _02255970 ; =0x0225BDC4
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02255974 ; =0x0225BDE0
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02255978 ; =0x0225BE18
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _0225597C ; =0x0225BDA8
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _02255980 ; =0x0225BE34
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #5
	bl sub_02019EBC
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_02255970: .word 0x0225BDC4
_02255974: .word 0x0225BDE0
_02255978: .word 0x0225BE18
_0225597C: .word 0x0225BDA8
_02255980: .word 0x0225BE34
	thumb_func_end ov22_02255860

	thumb_func_start ov22_02255984
ov22_02255984: ; 0x02255984
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #5
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255984

	thumb_func_start ov22_022559B4
ov22_022559B4: ; 0x022559B4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x77
	mov r1, #0xe
	bl sub_0202298C
	mov r1, #0x77
	str r0, [r4, #0x34]
	mov r0, #0xe
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x77
	mov r1, #0
	lsl r2, r2, #2
	str r0, [r4, #0x38]
	bl memset
	mov r0, #0x77
	str r0, [r4, #0x3c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022559B4

	thumb_func_start ov22_022559E0
ov22_022559E0: ; 0x022559E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_020181C4
	ldr r0, [r4, #0x34]
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0x3c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022559E0

	thumb_func_start ov22_022559F8
ov22_022559F8: ; 0x022559F8
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _02255A94 ; =0x0225BD88
	add r3, sp, #0x14
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #5
	mov r1, #0xe
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #0xe
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r4, #0
	mov r0, #0x30
	add r1, #0x58
	mov r2, #0xe
	bl sub_020095C4
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r2, #2
	add r0, #0x58
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r0, #8
	mov r1, #0
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x48]
	mov r0, #5
	mov r1, #1
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x4c]
	mov r0, #0x30
	mov r1, #2
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x50]
	mov r0, #0x30
	mov r1, #3
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x54]
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02255A94: .word 0x0225BD88
	thumb_func_end ov22_022559F8

	thumb_func_start ov22_02255A98
ov22_02255A98: ; 0x02255A98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	bl sub_02021964
	mov r4, #0
_02255AA4:
	ldr r0, [r5, #0x48]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02255AA4
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255A98

	thumb_func_start ov22_02255AC0
ov22_02255AC0: ; 0x02255AC0
	ldr r3, _02255AC8 ; =sub_020219F8
	ldr r0, [r0, #0x44]
	bx r3
	nop
_02255AC8: .word sub_020219F8
	thumb_func_end ov22_02255AC0

	thumb_func_start ov22_02255ACC
ov22_02255ACC: ; 0x02255ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	add r6, r0, #0
	add r7, r1, #0
	add r5, r4, #0
_02255AD8:
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r4, #1
	mov r2, #0
	mov r3, #0xe
	bl sub_0200723C
	str r0, [sp, #4]
	cmp r0, #0
	bne _02255AF6
	bl GF_AssertFail
_02255AF6:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	bl ov22_02255340
	ldr r1, [r7, #0]
	add r4, r4, #1
	add r1, r1, r5
	str r0, [r1, #4]
	ldr r1, [r6, #0]
	ldr r0, [r7, #0]
	str r1, [r0, r5]
	add r5, #8
	cmp r4, #0x64
	blt _02255AD8
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200723C
	add r4, r0, #0
	ldr r0, [r7, #0x14]
	add r1, r4, #0
	mov r2, #0
	bl sub_02022A1C
	ldr r1, [r7, #8]
	add r0, r4, #0
	add r1, r1, #4
	bl NNS_G2dGetUnpackedPaletteData
	ldr r1, [r6, #0]
	ldr r0, [r7, #8]
	str r1, [r0, #0]
	ldr r0, [r7, #8]
	mov r1, #3
	str r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02255ACC

	thumb_func_start ov22_02255B50
ov22_02255B50: ; 0x02255B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x87
	add r4, r1, #0
	mov r6, #0
	str r0, [sp, #8]
_02255B5E:
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0xce
	mov r2, #0
	mov r3, #0xe
	bl sub_0200723C
	add r2, r6, #0
	add r1, r0, #0
	add r2, #0x64
	add r0, r5, #0
	lsl r7, r2, #3
	bl ov22_02255340
	ldr r1, [r4, #0]
	mov r2, #0
	add r1, r1, r7
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	ldr r0, [r4, #0]
	mov r3, #0xe
	str r1, [r0, r7]
	add r0, r6, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #8]
	bl sub_0200723C
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	bl sub_02022A1C
	ldr r1, [sp, #4]
	mov r0, #0xc
	add r7, r1, #0
	mul r7, r0
	ldr r1, [r4, #8]
	ldr r0, [sp, #0xc]
	add r1, r1, r7
	add r1, r1, #4
	bl NNS_G2dGetUnpackedPaletteData
	ldr r0, [r4, #8]
	add r0, r0, r7
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02255BD4
	bl GF_AssertFail
_02255BD4:
	ldr r1, [r5, #0]
	ldr r0, [r4, #8]
	add r6, r6, #1
	str r1, [r0, r7]
	ldr r0, [r4, #8]
	add r1, r0, r7
	mov r0, #1
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r6, #0x12
	blt _02255B5E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02255B50

	thumb_func_start ov22_02255BF4
ov22_02255BF4: ; 0x02255BF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0
	mov r0, #6
	add r3, r1, #0
	str r2, [sp]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0xeb
	bl sub_0200723C
	str r0, [r4, #0x30]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255BF4

	thumb_func_start ov22_02255C14
ov22_02255C14: ; 0x02255C14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ov22_02255C14

	thumb_func_start ov22_02255C24
ov22_02255C24: ; 0x02255C24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200762C
	str r0, [r5, #0x20]
	ldr r3, _02255C80 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r0, r4, #0
	add r2, r1, #0
	blx r3
	str r0, [r5, #0x24]
	ldr r3, _02255C84 ; =0x02100DF4
	add r0, r6, #0
	ldr r3, [r3, #0]
	mov r1, #0
	mov r2, #1
	blx r3
	str r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r2, _02255C88 ; =0x7FFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r3, [r5, #0x28]
	ldr r2, _02255C8C ; =0xFFFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	mov r0, #1
	str r0, [r5, #0x2c]
	pop {r4, r5, r6, pc}
	nop
_02255C80: .word 0x02100DEC
_02255C84: .word 0x02100DF4
_02255C88: .word 0x7FFF0000
_02255C8C: .word 0xFFFF0000
	thumb_func_end ov22_02255C24

	thumb_func_start ov22_02255C90
ov22_02255C90: ; 0x02255C90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02007B6C
	ldr r1, _02255CB0 ; =0x02100DF0
	ldr r0, [r4, #0x24]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _02255CB4 ; =0x02100DF8
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	; .align 2, 0
_02255CB0: .word 0x02100DF0
_02255CB4: .word 0x02100DF8
	thumb_func_end ov22_02255C90

	thumb_func_start ov22_02255CB8
ov22_02255CB8: ; 0x02255CB8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #3
	str r0, [sp]
	add r7, r3, #0
	ldr r1, [sp]
	add r0, r7, #0
	add r6, r2, #0
	bl sub_02018144
	ldr r2, [sp]
	mov r1, #0
	str r0, [r5, #0]
	bl memset
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r5, #0x10]
	str r4, [r5, #4]
	mov r0, #0xc
	add r4, r6, #0
	mul r4, r0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0
	add r2, r4, #0
	str r0, [r5, #8]
	bl memset
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r5, #0x14]
	str r6, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02255CB8

	thumb_func_start ov22_02255D0C
ov22_02255D0C: ; 0x02255D0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02255D1E
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0x10]
_02255D1E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02255D2C
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0x14]
_02255D2C:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255D0C

	.rodata


	.global Unk_ov22_0225BD78
Unk_ov22_0225BD78: ; 0x0225BD78
	.incbin "incbin/overlay22_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov22_0225BD88
Unk_ov22_0225BD88: ; 0x0225BD88
	.incbin "incbin/overlay22_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov22_0225BD98
Unk_ov22_0225BD98: ; 0x0225BD98
	.incbin "incbin/overlay22_rodata.bin", 0x20, 0x30 - 0x20

	.global Unk_ov22_0225BDA8
Unk_ov22_0225BDA8: ; 0x0225BDA8
	.incbin "incbin/overlay22_rodata.bin", 0x30, 0x4C - 0x30

	.global Unk_ov22_0225BDC4
Unk_ov22_0225BDC4: ; 0x0225BDC4
	.incbin "incbin/overlay22_rodata.bin", 0x4C, 0x68 - 0x4C

	.global Unk_ov22_0225BDE0
Unk_ov22_0225BDE0: ; 0x0225BDE0
	.incbin "incbin/overlay22_rodata.bin", 0x68, 0x84 - 0x68

	.global Unk_ov22_0225BDFC
Unk_ov22_0225BDFC: ; 0x0225BDFC
	.incbin "incbin/overlay22_rodata.bin", 0x84, 0xA0 - 0x84

	.global Unk_ov22_0225BE18
Unk_ov22_0225BE18: ; 0x0225BE18
	.incbin "incbin/overlay22_rodata.bin", 0xA0, 0xBC - 0xA0

	.global Unk_ov22_0225BE34
Unk_ov22_0225BE34: ; 0x0225BE34
	.incbin "incbin/overlay22_rodata.bin", 0xBC, 0xD8 - 0xBC

	.global Unk_ov22_0225BE50
Unk_ov22_0225BE50: ; 0x0225BE50
	.incbin "incbin/overlay22_rodata.bin", 0xD8, 0x28

