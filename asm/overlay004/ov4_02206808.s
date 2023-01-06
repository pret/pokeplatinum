	.include "macros/function.inc"
	.include "overlay004/ov4_02206808.inc"

	

	.text


	arm_func_start ov4_02206808
ov4_02206808: ; 0x02206808
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_022082CC
	cmp r0, #0
	mvnne r0, #0x1b
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mov r1, #0
	beq _0220683C
	ldrsh r0, [r5, #0x70]
	tst r0, #1
	movne r1, #1
_0220683C:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsh r0, [r5, #0x70]
	tst r0, #2
	mvnne r0, #6
	ldmneia sp!, {r3, r4, r5, pc}
	strh r4, [r5, #0x74]
	ldrsb r0, [r5, #0x73]
	cmp r0, #1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl ov4_02206960
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02206808

	arm_func_start ov4_02206878
ov4_02206878: ; 0x02206878
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov4_022082CC
	cmp r0, #0
	bne _022068A0
	ldrsh r0, [r6, #0x70]
	tst r0, #8
	beq _022068A8
_022068A0:
	mvn r0, #0x1b
	ldmia sp!, {r4, r5, r6, pc}
_022068A8:
	cmp r6, #0
	mov r1, #0
	beq _022068C0
	ldrsh r0, [r6, #0x70]
	tst r0, #1
	movne r1, #1
_022068C0:
	cmp r1, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrsb r0, [r6, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _0220694C
	ldrsh r0, [r6, #0x70]
	tst r0, #4
	beq _02206908
	ldrsb r0, [r6, #0x72]
	cmp r0, #1
	mvneq r0, #0x1d
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02206908:
	ldrsh r0, [r6, #0x70]
	tst r0, #2
	beq _0220692C
	ldrsh r0, [r6, #0x70]
	tst r0, #0x40
	ldrne r0, [r6, #0x6c]
	ldreq r0, _0220695C ; =0x0221A138
	ldreq r0, [r0]
	ldmia sp!, {r4, r5, r6, pc}
_0220692C:
	strh r5, [r6, #0x76]
	mov r0, r6
	str r4, [r6, #0x78]
	bl ov4_02206960
	ldrsb r1, [r6, #0x72]
	cmp r1, #1
	mvnne r0, #0x19
	ldmia sp!, {r4, r5, r6, pc}
_0220694C:
	strh r5, [r6, #0x76]
	str r4, [r6, #0x78]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0220695C: .word Unk_ov4_0221A138
	arm_func_end ov4_02206878

	arm_func_start ov4_02206960
ov4_02206960: ; 0x02206960
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrsb r2, [r4, #0x72]
	ldr r0, _022069B4 ; =ov4_022069B8
	mov r1, r4
	bl ov4_02205FF4
	movs r1, r0
	mvneq r0, #0x20
	ldmeqia sp!, {r4, pc}
	ldrh r2, [r4, #0x74]
	mov r0, r4
	strh r2, [r1, #0x10]
	ldrh r2, [r4, #0x76]
	strh r2, [r1, #0x12]
	ldr r2, [r4, #0x78]
	str r2, [r1, #0x14]
	ldrsh r2, [r4, #0x70]
	orr r2, r2, #2
	strh r2, [r4, #0x70]
	bl ov4_0220613C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022069B4: .word ov4_022069B8
	arm_func_end ov4_02206960

	arm_func_start ov4_022069B8
ov4_022069B8: ; 0x022069B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #4]
	mov r6, #0
	ldr r5, [r4, #0x64]
	add r0, r5, #0xe0
	bl OS_LockMutex
	ldrh r0, [r7, #0x10]
	ldrh r1, [r7, #0x12]
	ldr r2, [r7, #0x14]
	bl ov4_0220BD48
	mov r0, r6
	str r0, [r5, #0xf8]
	ldrsb r0, [r7, #0xc]
	cmp r0, #0
	cmpne r0, #4
	bne _02206A04
	bl ov4_0220BF5C
	mov r6, r0
_02206A04:
	add r0, r5, #0xe0
	bl OS_UnlockMutex
	cmp r6, #0
	beq _02206A28
	ldrsh r1, [r4, #0x70]
	mvn r0, #0x4b
	orr r1, r1, #0x40
	strh r1, [r4, #0x70]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02206A28:
	ldrsh r1, [r4, #0x70]
	mov r0, #0
	orr r1, r1, #4
	strh r1, [r4, #0x70]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_022069B8

	.data


	.global Unk_ov4_0221A138
Unk_ov4_0221A138: ; 0x0221A138
	.incbin "incbin/overlay4_data.bin", 0x42B8, 0x4

