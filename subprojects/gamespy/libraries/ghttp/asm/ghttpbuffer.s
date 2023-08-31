	.include "macros/function.inc"
	.include "include/ghttpbuffer.inc"

	

	.text


	arm_func_start ghiResizeBuffer
ghiResizeBuffer: ; 0x0221FE2C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0221FE50
	ldr r0, _0221FEA8 ; =0x02228FD4
	ldr r1, _0221FEAC ; =0x02228FDC
	ldr r2, _0221FEB0 ; =0x02228F68
	mov r3, #0x20
	bl __msl_assertion_failed
_0221FE50:
	cmp r4, #0
	bgt _0221FE6C
	ldr r0, _0221FEB4 ; =0x02228FEC
	ldr r1, _0221FEAC ; =0x02228FDC
	ldr r2, _0221FEB0 ; =0x02228F68
	mov r3, #0x21
	bl __msl_assertion_failed
_0221FE6C:
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldmib r5, {r0, r1}
	add r4, r1, r4
	mov r1, r4
	bl DWCi_GsRealloc
	cmp r0, #0
	moveq r0, #0
	stmneib r5, {r0, r4}
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0221FEA8: .word Unk_ov60_02228FD4
_0221FEAC: .word Unk_ov60_02228FDC
_0221FEB0: .word Unk_ov60_02228F68
_0221FEB4: .word Unk_ov60_02228FEC
	arm_func_end ghiResizeBuffer

	arm_func_start ghiInitBuffer
ghiInitBuffer: ; 0x0221FEB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _0221FEE4
	ldr r0, _0221FFBC ; =0x02229000
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x43
	bl __msl_assertion_failed
_0221FEE4:
	cmp r6, #0
	bne _0221FF00
	ldr r0, _0221FFC8 ; =0x02228FD4
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x44
	bl __msl_assertion_failed
_0221FF00:
	cmp r5, #0
	bgt _0221FF1C
	ldr r0, _0221FFCC ; =0x0222900C
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x45
	bl __msl_assertion_failed
_0221FF1C:
	cmp r4, #0
	bgt _0221FF38
	ldr r0, _0221FFD0 ; =0x02228FEC
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x46
	bl __msl_assertion_failed
_0221FF38:
	cmp r7, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	str r7, [r6, #0]
	mov r2, #0
	str r2, [r6, #4]
	str r2, [r6, #8]
	str r2, [r6, #0xc]
	str r2, [r6, #0x10]
	str r4, [r6, #0x14]
	str r2, [r6, #0x18]
	str r2, [r6, #0x1c]
	mov r0, r6
	mov r1, r5
	str r2, [r6, #0x20]
	bl ghiResizeBuffer
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0221FFBC: .word Unk_ov60_02229000
_0221FFC0: .word Unk_ov60_02228FDC
_0221FFC4: .word Unk_ov60_02228F48
_0221FFC8: .word Unk_ov60_02228FD4
_0221FFCC: .word Unk_ov60_0222900C
_0221FFD0: .word Unk_ov60_02228FEC
	arm_func_end ghiInitBuffer

	arm_func_start ghiInitFixedBuffer
ghiInitFixedBuffer: ; 0x0221FFD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _02220000
	ldr r0, _022200B8 ; =0x02229000
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x74
	bl __msl_assertion_failed
_02220000:
	cmp r6, #0
	bne _0222001C
	ldr r0, _022200C4 ; =0x02228FD4
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x75
	bl __msl_assertion_failed
_0222001C:
	cmp r5, #0
	bne _02220038
	ldr r0, _022200C8 ; =0x0222901C
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x76
	bl __msl_assertion_failed
_02220038:
	cmp r4, #0
	bgt _02220054
	ldr r0, _022200CC ; =0x02229028
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x77
	bl __msl_assertion_failed
_02220054:
	cmp r7, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	str r7, [r6, #0]
	str r5, [r6, #4]
	str r4, [r6, #8]
	mov r2, #0
	str r2, [r6, #0xc]
	str r2, [r6, #0x14]
	mov r0, #1
	str r0, [r6, #0x18]
	str r0, [r6, #0x1c]
	str r2, [r6, #0x20]
	ldr r1, [r6, #4]
	strb r2, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022200B8: .word Unk_ov60_02229000
_022200BC: .word Unk_ov60_02228FDC
_022200C0: .word Unk_ov60_02228F78
_022200C4: .word Unk_ov60_02228FD4
_022200C8: .word Unk_ov60_0222901C
_022200CC: .word Unk_ov60_02229028
	arm_func_end ghiInitFixedBuffer

	arm_func_start ghiFreeBuffer
ghiFreeBuffer: ; 0x022200D0
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _022200F0
	ldr r0, _02220124 ; =0x02228FD4
	ldr r1, _02220128 ; =0x02228FDC
	ldr r2, _0222012C ; =0x02228F38
	mov r3, #0x9b
	bl __msl_assertion_failed
_022200F0:
	cmp r4, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _02220110
	bl DWCi_GsFree
_02220110:
	mov r0, r4
	mov r1, #0
	mov r2, #0x24
	bl memset
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02220124: .word Unk_ov60_02228FD4
_02220128: .word Unk_ov60_02228FDC
_0222012C: .word Unk_ov60_02228F38
	arm_func_end ghiFreeBuffer

	arm_func_start ghiAppendDataToBuffer
ghiAppendDataToBuffer: ; 0x02220130
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	movs sb, r0
	mov r8, r1
	ldr r6, [sb]
	bne _02220160
	ldr r0, _022203D4 ; =0x02228FD4
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xb7
	bl __msl_assertion_failed
_02220160:
	cmp r8, #0
	bne _0222017C
	ldr r0, _022203E0 ; =0x02229034
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xb8
	bl __msl_assertion_failed
_0222017C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _0222019C
	ldr r0, _022203E4 ; =0x0222903C
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xb9
	bl __msl_assertion_failed
_0222019C:
	cmp sb, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r8, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x30]
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, lr}
	addlt sp, sp, #0x10
	bxlt lr
	bne _022201F8
	mov r0, r8
	bl strlen
	str r0, [sp, #0x30]
_022201F8:
	ldr r0, [sb, #0x20]
	cmp r0, #1
	bne _02220300
	ldr r0, [r6, #0x168]
	cmp r0, #0
	bne _02220224
	ldr r0, _022203E8 ; =0x0222904C
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xce
	bl __msl_assertion_failed
_02220224:
	add r5, sp, #8
	add r4, sp, #0x30
_0222022C:
	ldr r2, [sb, #8]
	ldr r1, [sb, #0xc]
	mov r0, r6
	sub r1, r2, r1
	str r1, [sp, #8]
	ldr r3, [sb, #4]
	ldr r1, [sb, #0xc]
	mov r2, r8
	add r1, r3, r1
	stmia sp, {r1, r5}
	ldr r7, [r6, #0x17c]
	mov r3, r4
	add r1, r6, #0x164
	blx r7
	mov r7, r0
	cmp r7, #2
	bne _022202E4
	ldr r0, [sb, #0x18]
	cmp r0, #0
	beq _022202A8
	ldr r0, [sb]
	mov r1, #1
	str r1, [r0, #0xfc]
	ldr r0, [sb]
	mov r1, #2
	str r1, [r0, #0x38]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_022202A8:
	ldr r1, [sb, #0x14]
	mov r0, sb
	bl ghiResizeBuffer
	cmp r0, #0
	beq _022202F4
	ldr r0, [sb]
	mov r2, #1
	str r2, [r0, #0xfc]
	ldr r1, [sb]
	add sp, sp, #0xc
	str r2, [r1, #0x38]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_022202E4:
	ldr r1, [sb, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sb, #0xc]
_022202F4:
	cmp r7, #2
	beq _0222022C
	b _022203C0
_02220300:
	ldr r2, [sb, #0xc]
	ldr r1, [sp, #0x30]
	ldr r0, [sb, #8]
	add r4, r2, r1
	cmp r4, r0
	blt _02220398
_02220318:
	ldr r0, [sb, #0x18]
	cmp r0, #0
	beq _02220350
	ldr r0, [sb]
	mov r1, #1
	str r1, [r0, #0xfc]
	ldr r0, [sb]
	mov r1, #2
	str r1, [r0, #0x38]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_02220350:
	ldr r1, [sb, #0x14]
	mov r0, sb
	bl ghiResizeBuffer
	cmp r0, #0
	bne _0222038C
	ldr r0, [sb]
	mov r2, #1
	str r2, [r0, #0xfc]
	ldr r1, [sb]
	add sp, sp, #0xc
	str r2, [r1, #0x38]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_0222038C:
	ldr r0, [sb, #8]
	cmp r4, r0
	bge _02220318
_02220398:
	ldr r3, [sb, #4]
	ldr r0, [sb, #0xc]
	ldr r2, [sp, #0x30]
	mov r1, r8
	add r0, r3, r0
	bl memcpy
	str r4, [sb, #0xc]
	ldr r0, [sb, #4]
	mov r1, #0
	strb r1, [r0, r4]
_022203C0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_022203D4: .word Unk_ov60_02228FD4
_022203D8: .word Unk_ov60_02228FDC
_022203DC: .word Unk_ov60_02228FA4
_022203E0: .word Unk_ov60_02229034
_022203E4: .word Unk_ov60_0222903C
_022203E8: .word Unk_ov60_0222904C
	arm_func_end ghiAppendDataToBuffer

	arm_func_start ghiAppendHeaderToBuffer
ghiAppendHeaderToBuffer: ; 0x022203EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r2, #0
	mov r5, r0
	bl ghiAppendDataToBuffer
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02220464 ; =0x02229088
	mov r0, r5
	mov r2, #2
	bl ghiAppendDataToBuffer
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl ghiAppendDataToBuffer
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02220468 ; =0x0222908C
	mov r0, r5
	mov r2, #2
	bl ghiAppendDataToBuffer
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02220464: .word Unk_ov60_02229088
_02220468: .word Unk_ov60_0222908C
	arm_func_end ghiAppendHeaderToBuffer

	arm_func_start ghiAppendCharToBuffer
ghiAppendCharToBuffer: ; 0x0222046C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	movs r4, r0
	strb r1, [sp]
	bne _02220494
	ldr r0, _022204BC ; =0x02228FD4
	ldr r1, _022204C0 ; =0x02228FDC
	ldr r2, _022204C4 ; =0x02228F8C
	ldr r3, _022204C8 ; =0x00000131
	bl __msl_assertion_failed
_02220494:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r1, sp, #0
	mov r0, r4
	mov r2, #1
	bl ghiAppendDataToBuffer
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_022204BC: .word Unk_ov60_02228FD4
_022204C0: .word Unk_ov60_02228FDC
_022204C4: .word Unk_ov60_02228F8C
_022204C8: .word 0x00000131
	arm_func_end ghiAppendCharToBuffer

	arm_func_start ghiAppendIntToBuffer
ghiAppendIntToBuffer: ; 0x022204CC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r2, r1
	mov r4, r0
	ldr r1, _02220500 ; =0x02229090
	add r0, sp, #0
	bl sprintf
	add r1, sp, #0
	mov r0, r4
	mov r2, #0
	bl ghiAppendDataToBuffer
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02220500: .word Unk_ov60_02229090
	arm_func_end ghiAppendIntToBuffer

	arm_func_start ghiResetBuffer
ghiResetBuffer: ; 0x02220504
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _02220524
	ldr r0, _0222053C ; =0x02228FD4
	ldr r1, _02220540 ; =0x02228FDC
	ldr r2, _02220544 ; =0x02228F58
	mov r3, #0x16c
	bl __msl_assertion_failed
_02220524:
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	ldr r0, [r4, #4]
	strb r1, [r0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222053C: .word Unk_ov60_02228FD4
_02220540: .word Unk_ov60_02228FDC
_02220544: .word Unk_ov60_02228F58
	arm_func_end ghiResetBuffer

	arm_func_start ghiSendBufferedData
ghiSendBufferedData: ; 0x02220548
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, #0
	add r5, sp, #4
	add r4, sp, #0
	mvn r8, #0
_02220564:
	ldr r0, [r7, #0x48]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl GSISocketSelect
	cmp r0, r8
	beq _0222058C
	ldr r0, [sp]
	cmp r0, #0
	beq _022205B4
_0222058C:
	mov r0, #1
	str r0, [r7, #0xfc]
	mov r0, #5
	str r0, [r7, #0x38]
	ldr r0, [r7, #0x48]
	bl GOAGetLastError
	str r0, [r7, #0x4c]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022205B4:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r7, #0x60]
	ldr r1, [r7, #0x54]
	ldr r2, [r7, #0x5c]
	mov r0, r7
	add r1, r1, r3
	sub r2, r2, r3
	bl ghiDoSend
	cmp r0, r8
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r7, #0x60]
	add r1, r1, r0
	str r1, [r7, #0x60]
	ldr r0, [r7, #0x5c]
	cmp r1, r0
	blt _02220564
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ghiSendBufferedData

	arm_func_start ghiReadDataFromBuffer
ghiReadDataFromBuffer: ; 0x02220618
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	bne _02220640
	ldr r0, _022206C0 ; =0x02229094
	ldr r1, _022206C4 ; =0x02228FDC
	ldr r2, _022206C8 ; =0x02228FBC
	ldr r3, _022206CC ; =0x000001B7
	bl __msl_assertion_failed
_02220640:
	cmp r5, #0
	bne _0222065C
	ldr r0, _022206D0 ; =0x022290A8
	ldr r1, _022206C4 ; =0x02228FDC
	ldr r2, _022206C8 ; =0x02228FBC
	mov r3, #0x1b8
	bl __msl_assertion_failed
_0222065C:
	ldr r4, [r5, #0]
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r7, #0x10]
	ldr r0, [r7, #0xc]
	sub r0, r0, r3
	cmp r0, #0
	movle r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #4]
	cmp r4, r0
	movge r4, r0
	mov r0, r6
	mov r2, r4
	add r1, r1, r3
	bl memcpy
	mov r0, #0
	strb r0, [r6, r4]
	str r4, [r5, #0]
	ldr r1, [r7, #0x10]
	mov r0, #1
	add r1, r1, r4
	str r1, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022206C0: .word Unk_ov60_02229094
_022206C4: .word Unk_ov60_02228FDC
_022206C8: .word Unk_ov60_02228FBC
_022206CC: .word 0x000001B7
_022206D0: .word Unk_ov60_022290A8
	arm_func_end ghiReadDataFromBuffer

	.data


	.global Unk_ov60_02228F38
Unk_ov60_02228F38: ; 0x02228F38
	.incbin "incbin/overlay60_data.bin", 0xF8, 0x108 - 0xF8

	.global Unk_ov60_02228F48
Unk_ov60_02228F48: ; 0x02228F48
	.incbin "incbin/overlay60_data.bin", 0x108, 0x118 - 0x108

	.global Unk_ov60_02228F58
Unk_ov60_02228F58: ; 0x02228F58
	.incbin "incbin/overlay60_data.bin", 0x118, 0x128 - 0x118

	.global Unk_ov60_02228F68
Unk_ov60_02228F68: ; 0x02228F68
	.incbin "incbin/overlay60_data.bin", 0x128, 0x138 - 0x128

	.global Unk_ov60_02228F78
Unk_ov60_02228F78: ; 0x02228F78
	.incbin "incbin/overlay60_data.bin", 0x138, 0x14C - 0x138

	.global Unk_ov60_02228F8C
Unk_ov60_02228F8C: ; 0x02228F8C
	.incbin "incbin/overlay60_data.bin", 0x14C, 0x164 - 0x14C

	.global Unk_ov60_02228FA4
Unk_ov60_02228FA4: ; 0x02228FA4
	.incbin "incbin/overlay60_data.bin", 0x164, 0x17C - 0x164

	.global Unk_ov60_02228FBC
Unk_ov60_02228FBC: ; 0x02228FBC
	.incbin "incbin/overlay60_data.bin", 0x17C, 0x194 - 0x17C

	.global Unk_ov60_02228FD4
Unk_ov60_02228FD4: ; 0x02228FD4
	.incbin "incbin/overlay60_data.bin", 0x194, 0x19C - 0x194

	.global Unk_ov60_02228FDC
Unk_ov60_02228FDC: ; 0x02228FDC
	.incbin "incbin/overlay60_data.bin", 0x19C, 0x1AC - 0x19C

	.global Unk_ov60_02228FEC
Unk_ov60_02228FEC: ; 0x02228FEC
	.incbin "incbin/overlay60_data.bin", 0x1AC, 0x1C0 - 0x1AC

	.global Unk_ov60_02229000
Unk_ov60_02229000: ; 0x02229000
	.incbin "incbin/overlay60_data.bin", 0x1C0, 0x1CC - 0x1C0

	.global Unk_ov60_0222900C
Unk_ov60_0222900C: ; 0x0222900C
	.incbin "incbin/overlay60_data.bin", 0x1CC, 0x1DC - 0x1CC

	.global Unk_ov60_0222901C
Unk_ov60_0222901C: ; 0x0222901C
	.incbin "incbin/overlay60_data.bin", 0x1DC, 0x1E8 - 0x1DC

	.global Unk_ov60_02229028
Unk_ov60_02229028: ; 0x02229028
	.incbin "incbin/overlay60_data.bin", 0x1E8, 0x1F4 - 0x1E8

	.global Unk_ov60_02229034
Unk_ov60_02229034: ; 0x02229034
	.incbin "incbin/overlay60_data.bin", 0x1F4, 0x1FC - 0x1F4

	.global Unk_ov60_0222903C
Unk_ov60_0222903C: ; 0x0222903C
	.incbin "incbin/overlay60_data.bin", 0x1FC, 0x20C - 0x1FC

	.global Unk_ov60_0222904C
Unk_ov60_0222904C: ; 0x0222904C
	.incbin "incbin/overlay60_data.bin", 0x20C, 0x248 - 0x20C

	.global Unk_ov60_02229088
Unk_ov60_02229088: ; 0x02229088
	.incbin "incbin/overlay60_data.bin", 0x248, 0x24C - 0x248

	.global Unk_ov60_0222908C
Unk_ov60_0222908C: ; 0x0222908C
	.incbin "incbin/overlay60_data.bin", 0x24C, 0x250 - 0x24C

	.global Unk_ov60_02229090
Unk_ov60_02229090: ; 0x02229090
	.incbin "incbin/overlay60_data.bin", 0x250, 0x254 - 0x250

	.global Unk_ov60_02229094
Unk_ov60_02229094: ; 0x02229094
	.incbin "incbin/overlay60_data.bin", 0x254, 0x268 - 0x254

	.global Unk_ov60_022290A8
Unk_ov60_022290A8: ; 0x022290A8
	.incbin "incbin/overlay60_data.bin", 0x268, 0xC

