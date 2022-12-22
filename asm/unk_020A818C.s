	.include "macros/function.inc"
	.include "include/unk_020A818C.inc"

	

	.text


	arm_func_start NNS_G2dInitImageProxy
NNS_G2dInitImageProxy: ; 0x020A818C
	mov r2, #0
	mvn r1, #0
_020A8194:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blt _020A8194
	bx lr
	arm_func_end NNS_G2dInitImageProxy

	arm_func_start NNS_G2dSetImageLocation
NNS_G2dSetImageLocation: ; 0x020A81A8
	str r2, [r0, r1, lsl #2]
	bx lr
	arm_func_end NNS_G2dSetImageLocation

	arm_func_start NNS_G2dGetImageLocation
NNS_G2dGetImageLocation: ; 0x020A81B0
	ldr r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end NNS_G2dGetImageLocation

	arm_func_start NNS_G2dIsImageReadyToUse
NNS_G2dIsImageReadyToUse: ; 0x020A81B8
	ldr r1, [r0, r1, lsl #2]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end NNS_G2dIsImageReadyToUse

	arm_func_start NNS_G2dInitImagePaletteProxy
NNS_G2dInitImagePaletteProxy: ; 0x020A81D0
	mov r3, #0
	mvn r2, #0
_020A81D8:
	add r1, r0, r3, lsl #2
	add r3, r3, #1
	str r2, [r1, #8]
	cmp r3, #3
	blt _020A81D8
	bx lr
	arm_func_end NNS_G2dInitImagePaletteProxy

	arm_func_start NNS_G2dSetImagePaletteLocation
NNS_G2dSetImagePaletteLocation: ; 0x020A81F0
	add r0, r0, r1, lsl #2
	str r2, [r0, #8]
	bx lr
	arm_func_end NNS_G2dSetImagePaletteLocation

	arm_func_start NNS_G2dGetImagePaletteLocation
NNS_G2dGetImagePaletteLocation: ; 0x020A81FC
	add r0, r0, r1, lsl #2
	ldr r0, [r0, #8]
	bx lr
	arm_func_end NNS_G2dGetImagePaletteLocation

	arm_func_start NNS_G2dIsImagePaletteReadyToUse
NNS_G2dIsImagePaletteReadyToUse: ; 0x020A8208
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #8]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end NNS_G2dIsImagePaletteReadyToUse

	arm_func_start NNS_G2dLoadImage1DMapping
NNS_G2dLoadImage1DMapping: ; 0x020A8224
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r5, r2
	mov r6, r1
	mov r4, r3
	ldr r0, [r7, #8]
	beq _020A8288
	cmp r5, #1
	beq _020A8254
	cmp r5, #2
	beq _020A8270
	b _020A8288
_020A8254:
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r1, _020A8448 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
	b _020A8288
_020A8270:
	ldr r3, _020A844C ; =0x04001000
	ldr r1, _020A8448 ; =0xFFCFFFEF
	ldr r2, [r3, #0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
_020A8288:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl DC_FlushRange
	cmp r5, #0
	beq _020A82B0
	cmp r5, #1
	beq _020A82CC
	cmp r5, #2
	beq _020A82E0
	b _020A82F0
_020A82B0:
	bl GX_BeginLoadTex
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadTex
	bl GX_EndLoadTex
	b _020A82F0
_020A82CC:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadOBJ
	b _020A82F0
_020A82E0:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GXS_LoadOBJ
_020A82F0:
	ldr r0, [r7, #8]
	cmp r0, #0
	ldrh r0, [r7, #2]
	bne _020A8408
	cmp r0, #0x10
	bgt _020A833C
	bge _020A8368
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A8378
_020A8318: ; jump table
	b _020A8378 ; case 0
	b _020A8348 ; case 1
	b _020A8350 ; case 2
	b _020A8378 ; case 3
	b _020A8358 ; case 4
	b _020A8378 ; case 5
	b _020A8378 ; case 6
	b _020A8378 ; case 7
	b _020A8360 ; case 8
_020A833C:
	cmp r0, #0x20
	beq _020A8370
	b _020A8378
_020A8348:
	mov r0, #0
	b _020A837C
_020A8350:
	mov r0, #1
	b _020A837C
_020A8358:
	mov r0, #2
	b _020A837C
_020A8360:
	mov r0, #3
	b _020A837C
_020A8368:
	mov r0, #4
	b _020A837C
_020A8370:
	mov r0, #5
	b _020A837C
_020A8378:
	mov r0, #0
_020A837C:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	cmp r0, #0x10
	bgt _020A83C0
	bge _020A83EC
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A83FC
_020A839C: ; jump table
	b _020A83FC ; case 0
	b _020A83CC ; case 1
	b _020A83D4 ; case 2
	b _020A83FC ; case 3
	b _020A83DC ; case 4
	b _020A83FC ; case 5
	b _020A83FC ; case 6
	b _020A83FC ; case 7
	b _020A83E4 ; case 8
_020A83C0:
	cmp r0, #0x20
	beq _020A83F4
	b _020A83FC
_020A83CC:
	mov r0, #0
	b _020A8400
_020A83D4:
	mov r0, #1
	b _020A8400
_020A83DC:
	mov r0, #2
	b _020A8400
_020A83E4:
	mov r0, #3
	b _020A8400
_020A83EC:
	mov r0, #4
	b _020A8400
_020A83F4:
	mov r0, #5
	b _020A8400
_020A83FC:
	mov r0, #0
_020A8400:
	str r0, [r4, #0x10]
	b _020A8414
_020A8408:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	str r0, [r4, #0x10]
_020A8414:
	ldr r1, [r7, #4]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl NNS_G2dSetImageLocation
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A8448: .word 0xFFCFFFEF
_020A844C: .word 0x04001000
	arm_func_end NNS_G2dLoadImage1DMapping

	arm_func_start NNS_G2dLoadImage2DMapping
NNS_G2dLoadImage2DMapping: ; 0x020A8450
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	movs r5, r2
	mov r6, r1
	mov r4, r3
	ldr r0, [r7, #8]
	beq _020A84B4
	cmp r5, #1
	beq _020A8480
	cmp r5, #2
	beq _020A849C
	b _020A84B4
_020A8480:
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r1, _020A8674 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
	b _020A84B4
_020A849C:
	ldr r3, _020A8678 ; =0x04001000
	ldr r1, _020A8674 ; =0xFFCFFFEF
	ldr r2, [r3, #0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
_020A84B4:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	bl DC_FlushRange
	cmp r5, #0
	beq _020A84DC
	cmp r5, #1
	beq _020A84F8
	cmp r5, #2
	beq _020A850C
	b _020A851C
_020A84DC:
	bl GX_BeginLoadTex
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadTex
	bl GX_EndLoadTex
	b _020A851C
_020A84F8:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GX_LoadOBJ
	b _020A851C
_020A850C:
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x10]
	mov r1, r6
	bl GXS_LoadOBJ
_020A851C:
	ldr r0, [r7, #8]
	cmp r0, #0
	ldrh r0, [r7, #2]
	bne _020A8634
	cmp r0, #0x10
	bgt _020A8568
	bge _020A8594
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A85A4
_020A8544: ; jump table
	b _020A85A4 ; case 0
	b _020A8574 ; case 1
	b _020A857C ; case 2
	b _020A85A4 ; case 3
	b _020A8584 ; case 4
	b _020A85A4 ; case 5
	b _020A85A4 ; case 6
	b _020A85A4 ; case 7
	b _020A858C ; case 8
_020A8568:
	cmp r0, #0x20
	beq _020A859C
	b _020A85A4
_020A8574:
	mov r0, #0
	b _020A85A8
_020A857C:
	mov r0, #1
	b _020A85A8
_020A8584:
	mov r0, #2
	b _020A85A8
_020A858C:
	mov r0, #3
	b _020A85A8
_020A8594:
	mov r0, #4
	b _020A85A8
_020A859C:
	mov r0, #5
	b _020A85A8
_020A85A4:
	mov r0, #0
_020A85A8:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	cmp r0, #0x10
	bgt _020A85EC
	bge _020A8618
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A8628
_020A85C8: ; jump table
	b _020A8628 ; case 0
	b _020A85F8 ; case 1
	b _020A8600 ; case 2
	b _020A8628 ; case 3
	b _020A8608 ; case 4
	b _020A8628 ; case 5
	b _020A8628 ; case 6
	b _020A8628 ; case 7
	b _020A8610 ; case 8
_020A85EC:
	cmp r0, #0x20
	beq _020A8620
	b _020A8628
_020A85F8:
	mov r0, #0
	b _020A862C
_020A8600:
	mov r0, #1
	b _020A862C
_020A8608:
	mov r0, #2
	b _020A862C
_020A8610:
	mov r0, #3
	b _020A862C
_020A8618:
	mov r0, #4
	b _020A862C
_020A8620:
	mov r0, #5
	b _020A862C
_020A8628:
	mov r0, #0
_020A862C:
	str r0, [r4, #0x10]
	b _020A8640
_020A8634:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	str r0, [r4, #0x10]
_020A8640:
	ldr r1, [r7, #4]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl NNS_G2dSetImageLocation
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A8674: .word 0xFFCFFFEF
_020A8678: .word 0x04001000
	arm_func_end NNS_G2dLoadImage2DMapping

	arm_func_start NNS_G2dLoadImageVramTransfer
NNS_G2dLoadImageVramTransfer: ; 0x020A867C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	mov r5, r2
	mov r4, r3
	bl DC_FlushRange
	cmp r5, #0
	ldr r0, [r7, #8]
	beq _020A86F0
	cmp r5, #1
	beq _020A86BC
	cmp r5, #2
	beq _020A86D8
	b _020A86F0
_020A86BC:
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r1, _020A8848 ; =0xFFCFFFEF
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
	b _020A86F0
_020A86D8:
	ldr r3, _020A884C ; =0x04001000
	ldr r1, _020A8848 ; =0xFFCFFFEF
	ldr r2, [r3, #0]
	and r1, r2, r1
	orr r0, r1, r0
	str r0, [r3, #0]
_020A86F0:
	ldr r0, [r7, #8]
	cmp r0, #0
	ldrh r0, [r7, #2]
	bne _020A8808
	cmp r0, #0x10
	bgt _020A873C
	bge _020A8768
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A8778
_020A8718: ; jump table
	b _020A8778 ; case 0
	b _020A8748 ; case 1
	b _020A8750 ; case 2
	b _020A8778 ; case 3
	b _020A8758 ; case 4
	b _020A8778 ; case 5
	b _020A8778 ; case 6
	b _020A8778 ; case 7
	b _020A8760 ; case 8
_020A873C:
	cmp r0, #0x20
	beq _020A8770
	b _020A8778
_020A8748:
	mov r0, #0
	b _020A877C
_020A8750:
	mov r0, #1
	b _020A877C
_020A8758:
	mov r0, #2
	b _020A877C
_020A8760:
	mov r0, #3
	b _020A877C
_020A8768:
	mov r0, #4
	b _020A877C
_020A8770:
	mov r0, #5
	b _020A877C
_020A8778:
	mov r0, #0
_020A877C:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	cmp r0, #0x10
	bgt _020A87C0
	bge _020A87EC
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _020A87FC
_020A879C: ; jump table
	b _020A87FC ; case 0
	b _020A87CC ; case 1
	b _020A87D4 ; case 2
	b _020A87FC ; case 3
	b _020A87DC ; case 4
	b _020A87FC ; case 5
	b _020A87FC ; case 6
	b _020A87FC ; case 7
	b _020A87E4 ; case 8
_020A87C0:
	cmp r0, #0x20
	beq _020A87F4
	b _020A87FC
_020A87CC:
	mov r0, #0
	b _020A8800
_020A87D4:
	mov r0, #1
	b _020A8800
_020A87DC:
	mov r0, #2
	b _020A8800
_020A87E4:
	mov r0, #3
	b _020A8800
_020A87EC:
	mov r0, #4
	b _020A8800
_020A87F4:
	mov r0, #5
	b _020A8800
_020A87FC:
	mov r0, #0
_020A8800:
	str r0, [r4, #0x10]
	b _020A8814
_020A8808:
	str r0, [r4, #0xc]
	ldrh r0, [r7]
	str r0, [r4, #0x10]
_020A8814:
	ldr r1, [r7, #4]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	mov r0, #1
	str r0, [r4, #0x1c]
	ldr r3, [r7, #8]
	mov r0, r4
	mov r1, r5
	mov r2, r6
	str r3, [r4, #0x20]
	bl NNS_G2dSetImageLocation
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A8848: .word 0xFFCFFFEF
_020A884C: .word 0x04001000
	arm_func_end NNS_G2dLoadImageVramTransfer

	arm_func_start NNS_G2dLoadPalette
NNS_G2dLoadPalette: ; 0x020A8850
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r4, [sb, #0xc]
	ldr r5, [sb, #8]
	mov r8, r1
	mov r7, r2
	mov r0, r4
	mov r1, r5
	mov r6, r3
	bl DC_FlushRange
	cmp r7, #0
	beq _020A890C
	cmp r7, #1
	beq _020A8894
	cmp r7, #2
	beq _020A88D0
	b _020A8924
_020A8894:
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _020A88BC
	bl GX_BeginLoadOBJExtPltt
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl GX_LoadOBJExtPltt
	bl GX_EndLoadOBJExtPltt
	b _020A8924
_020A88BC:
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl GX_LoadOBJPltt
	b _020A8924
_020A88D0:
	ldr r0, [sb, #4]
	cmp r0, #0
	beq _020A88F8
	bl GXS_BeginLoadOBJExtPltt
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl GXS_LoadOBJExtPltt
	bl GXS_EndLoadOBJExtPltt
	b _020A8924
_020A88F8:
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl GXS_LoadOBJPltt
	b _020A8924
_020A890C:
	bl GX_BeginLoadTexPltt
	mov r0, r4
	mov r1, r8
	mov r2, r5
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
_020A8924:
	ldr r1, [sb]
	mov r0, r6
	str r1, [r6, #0]
	ldr r3, [sb, #4]
	mov r1, r7
	mov r2, r8
	str r3, [r6, #4]
	bl NNS_G2dSetImagePaletteLocation
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end NNS_G2dLoadPalette

	arm_func_start NNS_G2dLoadPaletteEx
NNS_G2dLoadPaletteEx: ; 0x020A8948
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	ldr r0, [sl]
	str r1, [sp]
	cmp r0, #3
	ldr r0, [sp, #0x30]
	moveq r8, #0x20
	str r0, [sp, #0x30]
	ldr r0, [sp]
	mov sb, r2
	ldrh r0, [r0]
	mov fp, r3
	movne r8, #0x200
	str r0, [sp, #4]
	mov r7, #0
	movs r0, r0
	beq _020A8A7C
_020A8990:
	ldr r0, [sp]
	ldr r5, [sl, #0xc]
	ldr r1, [r0, #4]
	mov r0, r7, lsl #1
	ldrh r0, [r1, r0]
	mul r4, r8, r7
	mul r6, r8, r0
	ldr r1, [sl, #8]
	mov r0, r5
	bl DC_FlushRange
	cmp fp, #0
	beq _020A8A4C
	cmp fp, #1
	beq _020A89D4
	cmp fp, #2
	beq _020A8A10
	b _020A8A64
_020A89D4:
	ldr r0, [sl, #4]
	cmp r0, #0
	beq _020A89FC
	bl GX_BeginLoadOBJExtPltt
	add r0, r5, r4
	mov r2, r8
	add r1, sb, r6
	bl GX_LoadOBJExtPltt
	bl GX_EndLoadOBJExtPltt
	b _020A8A64
_020A89FC:
	mov r2, r8
	add r0, r5, r4
	add r1, sb, r6
	bl GX_LoadOBJPltt
	b _020A8A64
_020A8A10:
	ldr r0, [sl, #4]
	cmp r0, #0
	beq _020A8A38
	bl GXS_BeginLoadOBJExtPltt
	add r0, r5, r4
	mov r2, r8
	add r1, sb, r6
	bl GXS_LoadOBJExtPltt
	bl GXS_EndLoadOBJExtPltt
	b _020A8A64
_020A8A38:
	mov r2, r8
	add r0, r5, r4
	add r1, sb, r6
	bl GXS_LoadOBJPltt
	b _020A8A64
_020A8A4C:
	bl GX_BeginLoadTexPltt
	add r0, r5, r4
	mov r2, r8
	add r1, sb, r6
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
_020A8A64:
	add r0, r7, #1
	mov r1, r0, lsl #0x10
	ldr r0, [sp, #4]
	mov r7, r1, lsr #0x10
	cmp r0, r1, lsr #16
	bhi _020A8990
_020A8A7C:
	ldr r0, [sp, #0x30]
	ldr r2, [sl]
	mov r1, r0
	str r2, [r1, #0]
	ldr r4, [sl, #4]
	mov r3, r0
	mov r1, fp
	mov r2, sb
	str r4, [r3, #4]
	bl NNS_G2dSetImagePaletteLocation
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNS_G2dLoadPaletteEx

	arm_func_start NNSi_G2dInitializeVRamLocation
NNSi_G2dInitializeVRamLocation: ; 0x020A8AAC
	mov r2, #0
	mvn r1, #0
_020A8AB4:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blt _020A8AB4
	bx lr
	arm_func_end NNSi_G2dInitializeVRamLocation

	arm_func_start NNSi_G2dSetVramLocation
NNSi_G2dSetVramLocation: ; 0x020A8AC8
	str r2, [r0, r1, lsl #2]
	bx lr
	arm_func_end NNSi_G2dSetVramLocation

	arm_func_start NNSi_G2dGetVramLocation
NNSi_G2dGetVramLocation: ; 0x020A8AD0
	ldr r0, [r0, r1, lsl #2]
	bx lr
	arm_func_end NNSi_G2dGetVramLocation