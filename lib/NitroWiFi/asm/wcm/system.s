	.include "macros/function.inc"
	.include "include/system.inc"

	

	.text


	arm_func_start ov4_02212CC8
ov4_02212CC8: ; 0x02212CC8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl OS_DisableInterrupts
	ldr r2, _02212DDC ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _02212CF8
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02212CF8:
	cmp r6, #0
	bne _02212D0C
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02212D0C:
	tst r6, #0x1f
	beq _02212D20
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02212D20:
	cmp r5, #0x2300
	bhs _02212D34
	bl OS_RestoreInterrupts
	mov r0, #6
	ldmia sp!, {r4, r5, r6, pc}
_02212D34:
	str r6, [r2, #0]
	add r0, r6, #0x2000
	mov r1, #1
	str r1, [r0, #0x260]
	ldr r1, [r2, #0]
	mov r0, #0
	add r1, r1, #0x2200
	strh r0, [r1, #0x80]
	ldr r1, [r2, #0]
	add r1, r1, #0x2200
	strh r0, [r1, #0x68]
	ldr r1, [r2, #0]
	add r1, r1, #0x2000
	strb r0, [r1, #0x26a]
	ldr r1, [r2, #0]
	add r1, r1, #0x2000
	strb r0, [r1, #0x26b]
	ldr r1, [r2, #0]
	add r1, r1, #0x2200
	strh r0, [r1, #0x82]
	ldr r1, [r2, #0]
	add r1, r1, #0x2200
	strh r0, [r1, #0xf8]
	bl ov4_02213C2C
	bl ov4_022152B4
	bl OS_IsTickAvailable
	cmp r0, #0
	bne _02212DA8
	bl OS_InitTick
_02212DA8:
	bl OS_IsAlarmAvailable
	cmp r0, #0
	bne _02212DB8
	bl OS_InitAlarm
_02212DB8:
	ldr r0, _02212DDC ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2cc
	add r0, r0, #0x2000
	bl OS_CreateAlarm
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02212DDC: .word Unk_ov4_0221F7AC
	arm_func_end ov4_02212CC8

	arm_func_start ov4_02212DE0
ov4_02212DE0: ; 0x02212DE0
	stmfd sp!, {r3, lr}
	bl OS_DisableInterrupts
	ldr r2, _02212E34 ; =0x0221F7AC
	ldr r1, [r2, #0]
	cmp r1, #0
	bne _02212E04
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, pc}
_02212E04:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #1
	beq _02212E20
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, pc}
_02212E20:
	mov r1, #0
	str r1, [r2, #0]
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02212E34: .word Unk_ov4_0221F7AC
	arm_func_end ov4_02212DE0

	arm_func_start ov4_02212E38
ov4_02212E38: ; 0x02212E38
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl OS_DisableInterrupts
	ldr r1, _02213030 ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02212E68
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02212E68:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #1
	beq _02212E8C
	cmp r1, #2
	beq _02212E9C
	cmp r1, #3
	beq _02212EA8
	b _02212EB4
_02212E8C:
	mov r0, r6
	mov r1, r5
	bl ov4_02213974
	b _02212EC0
_02212E9C:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_02212EA8:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02212EB4:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02212EC0:
	ldr r0, _02213030 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r1, r0, #0x2000
	ldr r1, [r1, #0x26c]
	mov r1, r1, lsl #0x10
	mov r1, r1, lsr #0x10
	bl WM_Init
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02212F2C
_02212EE8: ; jump table
	b _02212F44 ; case 0
	b _02212F2C ; case 1
	b _02212F2C ; case 2
	b _02212F04 ; case 3
	b _02212F1C ; case 4
	b _02212F2C ; case 5
	b _02212F2C ; case 6
_02212F04:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_02212F1C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #5
	ldmia sp!, {r4, r5, r6, pc}
_02212F2C:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_02212F44:
	bl WM_GetAllowedChannel
	cmp r0, #0
	bne _02212F84
	bl WM_Finish
	cmp r0, #0
	beq _02212F74
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_02212F74:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #5
	ldmia sp!, {r4, r5, r6, pc}
_02212F84:
	ldr r0, _02213034 ; =ov4_02213F20
	bl WM_SetIndCallback
	cmp r0, #0
	beq _02212FAC
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_02212FAC:
	ldr r0, _02213038 ; =ov4_02213F98
	bl WM_Enable
	cmp r0, #2
	beq _02212FD0
	cmp r0, #3
	beq _02213008
	cmp r0, #8
	beq _02212FF0
	b _02213008
_02212FD0:
	mov r0, #2
	bl ov4_02213D74
	ldr r0, _02213030 ; =0x0221F7AC
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _02213020
_02212FF0:
	mov r0, #0xc
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02213008:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_02213020:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02213030: .word Unk_ov4_0221F7AC
_02213034: .word ov4_02213F20
_02213038: .word ov4_02213F98
	arm_func_end ov4_02212E38

	arm_func_start ov4_0221303C
ov4_0221303C: ; 0x0221303C
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _02213124 ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02213064
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, pc}
_02213064:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #1
	beq _02213090
	cmp r1, #3
	beq _022130A8
	cmp r1, #4
	bne _0221309C
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmia sp!, {r4, pc}
_02213090:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, pc}
_0221309C:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, pc}
_022130A8:
	ldr r0, _02213128 ; =ov4_02213F98
	bl WM_PowerOff
	cmp r0, #2
	beq _022130CC
	cmp r0, #3
	beq _022130FC
	cmp r0, #8
	beq _022130EC
	b _022130FC
_022130CC:
	mov r0, #4
	bl ov4_02213D74
	ldr r0, _02213124 ; =0x0221F7AC
	mov r1, #2
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _02213114
_022130EC:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r4, pc}
_022130FC:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r4, pc}
_02213114:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02213124: .word Unk_ov4_0221F7AC
_02213128: .word ov4_02213F98
	arm_func_end ov4_0221303C

	arm_func_start ov4_0221312C
ov4_0221312C: ; 0x0221312C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	cmpne r1, #0
	bne _02213144
	bl ov4_022132C4
	ldmia sp!, {r3, pc}
_02213144:
	bl ov4_0221314C
	ldmia sp!, {r3, pc}
	arm_func_end ov4_0221312C

	arm_func_start ov4_0221314C
ov4_0221314C: ; 0x0221314C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r1, _022132BC ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02213180
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02213180:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #3
	beq _022131F0
	cmp r1, #5
	beq _022131A4
	cmp r1, #6
	beq _022131C4
	b _022131E4
_022131A4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov4_02213A94
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022131C4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov4_02213A94
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022131E4:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022131F0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov4_02213A94
	ldr r0, _022132BC ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r1, r0, #0x2200
	add r0, r0, #0x2000
	ldrh r1, [r1, #0x8c]
	ldr r0, [r0, #0x288]
	bl DC_InvalidateRange
	ldr r2, _022132BC ; =0x0221F7AC
	ldr r0, _022132C0 ; =ov4_02214254
	ldr r1, [r2, #0]
	add r1, r1, #0x2000
	ldr r3, [r1, #0x284]
	add r3, r3, #1
	str r3, [r1, #0x284]
	ldr r1, [r2, #0]
	add r1, r1, #0x288
	add r1, r1, #0x2000
	bl WM_StartScanEx
	cmp r0, #2
	beq _02213264
	cmp r0, #3
	beq _02213294
	cmp r0, #8
	beq _02213284
	b _02213294
_02213264:
	mov r0, #5
	bl ov4_02213D74
	ldr r0, _022132BC ; =0x0221F7AC
	mov r1, #3
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _022132AC
_02213284:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02213294:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022132AC:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022132BC: .word Unk_ov4_0221F7AC
_022132C0: .word ov4_02214254
	arm_func_end ov4_0221314C

	arm_func_start ov4_022132C4
ov4_022132C4: ; 0x022132C4
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _02213364 ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _022132EC
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, pc}
_022132EC:
	add r1, r1, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #3
	beq _0221333C
	cmp r1, #6
	beq _02213310
	cmp r1, #7
	beq _02213330
	b _02213348
_02213310:
	mov r0, #7
	bl ov4_02213D74
	ldr r0, _02213364 ; =0x0221F7AC
	mov r1, #4
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _02213354
_02213330:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmia sp!, {r4, pc}
_0221333C:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, pc}
_02213348:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, pc}
_02213354:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02213364: .word Unk_ov4_0221F7AC
	arm_func_end ov4_022132C4

	arm_func_start ov4_02213368
ov4_02213368: ; 0x02213368
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r2, _02213560 ; =0x0221F7AC
	mov r4, r0
	ldr ip, [r2]
	cmp ip, #0
	bne _0221339C
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0221339C:
	add r1, ip, #0x2000
	ldr r3, [r1, #0x260]
	cmp r3, #3
	beq _022133C0
	cmp r3, #8
	beq _022134B0
	cmp r3, #9
	beq _022134BC
	b _022134C8
_022133C0:
	cmp r7, #0
	bne _022133D4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022133D4:
	ldrh r3, [r7, #0x3c]
	cmp r3, #0
	beq _022133EC
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022133EC:
	cmp r6, #0
	beq _02213464
	ldrb r3, [r6]
	cmp r3, #4
	ldrlob r0, [r6, #1]
	cmplo r0, #4
	blo _02213418
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02213418:
	strb r3, [r1, #0x250]
	ldr r0, [r2, #0]
	ldrb r1, [r6, #1]
	add r0, r0, #0x2000
	strb r1, [r0, #0x251]
	ldr r1, [r2, #0]
	mov r2, #0x50
	add r0, r1, #0x2000
	ldrb r0, [r0, #0x250]
	cmp r0, #0
	bne _02213454
	add r0, r1, #0x2200
	mov r1, #0
	bl MI_CpuFill8
	b _02213474
_02213454:
	add r0, r6, #2
	add r1, r1, #0x2200
	bl MI_CpuCopy8
	b _02213474
_02213464:
	add r0, ip, #0x2200
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
_02213474:
	ldr r1, _02213560 ; =0x0221F7AC
	mov r0, r7
	ldr r1, [r1, #0]
	mov r2, #0xc0
	add r1, r1, #0x2140
	bl MI_CpuCopy8
	ldr r1, _02213560 ; =0x0221F7AC
	mov r0, r5
	ldr r1, [r1, #0]
	add r1, r1, #0x2100
	ldrh r2, [r1, #0x6e]
	orr r2, r2, #3
	strh r2, [r1, #0x70]
	bl ov4_022138C8
	b _022134D4
_022134B0:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022134BC:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022134C8:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022134D4:
	ldr r1, _02213564 ; =0x0000FFFF
	ldr r0, _02213568 ; =ov4_02213F98
	mov r3, r1
	mov r2, #0x50
	str r1, [sp]
	bl WM_SetLifeTime
	cmp r0, #2
	beq _02213508
	cmp r0, #3
	beq _02213538
	cmp r0, #8
	beq _02213528
	b _02213538
_02213508:
	mov r0, #8
	bl ov4_02213D74
	ldr r0, _02213560 ; =0x0221F7AC
	mov r1, #5
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _02213550
_02213528:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02213538:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02213550:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02213560: .word Unk_ov4_0221F7AC
_02213564: .word 0x0000FFFF
_02213568: .word ov4_02213F98
	arm_func_end ov4_02213368

	arm_func_start ov4_0221356C
ov4_0221356C: ; 0x0221356C
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _02213680 ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02213594
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, pc}
_02213594:
	add r1, r1, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #3
	beq _022135C0
	cmp r2, #9
	beq _022135D8
	cmp r2, #0xa
	bne _022135CC
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmia sp!, {r4, pc}
_022135C0:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r4, pc}
_022135CC:
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r4, pc}
_022135D8:
	ldrb r0, [r1, #0x26b]
	cmp r0, #1
	bne _02213604
	mov r0, #0xa
	bl ov4_02213D74
	ldr r0, _02213680 ; =0x0221F7AC
	mov r1, #6
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _02213670
_02213604:
	ldr r0, _02213684 ; =ov4_022149EC
	bl WM_EndDCF
	cmp r0, #2
	beq _02213628
	cmp r0, #3
	beq _02213658
	cmp r0, #8
	beq _02213648
	b _02213658
_02213628:
	mov r0, #0xa
	bl ov4_02213D74
	ldr r0, _02213680 ; =0x0221F7AC
	mov r1, #6
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _02213670
_02213648:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r4, pc}
_02213658:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r4, pc}
_02213670:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02213680: .word Unk_ov4_0221F7AC
_02213684: .word ov4_022149EC
	arm_func_end ov4_0221356C

	arm_func_start ov4_02213688
ov4_02213688: ; 0x02213688
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	ldr r1, _0221388C ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _022136B0
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_022136B0:
	add r1, r1, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #0xd
	addls pc, pc, r2, lsl #2
	b _02213740
_022136C4: ; jump table
	b _02213740 ; case 0
	b _02213708 ; case 1
	b _02213740 ; case 2
	b _02213750 ; case 3
	b _02213740 ; case 4
	b _02213740 ; case 5
	b _02213714 ; case 6
	b _02213740 ; case 7
	b _02213740 ; case 8
	b _02213750 ; case 9
	b _02213740 ; case 10
	b _02213740 ; case 11
	b _02213750 ; case 12
	b _022136FC ; case 13
_022136FC:
	bl OS_RestoreInterrupts
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_02213708:
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02213714:
	mov r0, #0xd
	bl ov4_02213D74
	ldr r1, _0221388C ; =0x0221F7AC
	mov r2, #9
	ldr r1, [r1, #0]
	mov r0, r4
	add r1, r1, #0x2200
	strh r2, [r1, #0x80]
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r3, r4, r5, pc}
_02213740:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02213750:
	ldrb r0, [r1, #0x26b]
	cmp r0, #1
	bne _0221377C
	mov r0, #0xd
	bl ov4_02213D74
	ldr r0, _0221388C ; =0x0221F7AC
	mov r1, #9
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _0221387C
_0221377C:
	bl WMi_GetStatusAddress
	mov r5, r0
	mov r1, #2
	bl DC_InvalidateRange
	ldrh r0, [r5]
	cmp r0, #0
	beq _022137AC
	cmp r0, #1
	beq _022137E4
	cmp r0, #2
	beq _022137F0
	b _022137FC
_022137AC:
	bl WM_Finish
	cmp r0, #0
	bne _02213818
	mov r0, #1
	bl ov4_02213D74
	ldr r1, _0221388C ; =0x0221F7AC
	mov r2, #0
	ldr r1, [r1, #0]
	mov r0, r4
	add r1, r1, #0x2200
	strh r2, [r1, #0x80]
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022137E4:
	ldr r0, _02213890 ; =ov4_02213F98
	bl WM_Disable
	b _02213818
_022137F0:
	ldr r0, _02213890 ; =ov4_02213F98
	bl WM_PowerOff
	b _02213818
_022137FC:
	ldr r1, _0221388C ; =0x0221F7AC
	ldr r0, _02213894 ; =ov4_02214B08
	ldr r1, [r1, #0]
	mov r2, #1
	add r1, r1, #0x2000
	strb r2, [r1, #0x26b]
	bl WM_Reset
_02213818:
	cmp r0, #2
	beq _02213834
	cmp r0, #3
	beq _02213864
	cmp r0, #8
	beq _02213854
	b _02213864
_02213834:
	mov r0, #0xd
	bl ov4_02213D74
	ldr r0, _0221388C ; =0x0221F7AC
	mov r1, #9
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
	b _0221387C
_02213854:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #4
	ldmia sp!, {r3, r4, r5, pc}
_02213864:
	mov r0, #0xb
	bl ov4_02213D74
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #7
	ldmia sp!, {r3, r4, r5, pc}
_0221387C:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #3
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0221388C: .word Unk_ov4_0221F7AC
_02213890: .word ov4_02213F98
_02213894: .word ov4_02214B08
	arm_func_end ov4_02213688

	arm_func_start WCM_GetPhase
WCM_GetPhase: ; 0x02213898
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	ldr r1, _022138C4 ; =0x0221F7AC
	mov r4, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	addne r1, r1, #0x2000
	ldrne r4, [r1, #0x260]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022138C4: .word Unk_ov4_0221F7AC
	arm_func_end WCM_GetPhase

	arm_func_start ov4_022138C8
ov4_022138C8: ; 0x022138C8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _0221395C ; =0x0221F7AC
	mov r2, #0
	ldr r3, [r1, #0]
	add r1, r3, #0x2000
	cmp r3, #0
	ldr r4, [r1, #0x264]
	bne _022138FC
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022138FC:
	tst r5, #0x8000
	beq _0221391C
	ldr r1, _02213960 ; =0x00003FFE
	orr r2, r2, #0xfe
	tst r5, r1
	orreq r5, r5, #0x82
	orr r2, r2, #0x3f00
	orreq r5, r5, #0xa000
_0221391C:
	tst r5, #0x20000
	orrne r2, r2, #0x10000
	tst r5, #0x80000
	orrne r2, r2, #0x40000
	tst r5, #0x200000
	orrne r2, r2, #0x100000
	tst r5, #0x800000
	orrne r2, r2, #0x400000
	mvn r1, r2
	and r1, r4, r1
	orr r2, r5, r1
	add r1, r3, #0x2000
	str r2, [r1, #0x264]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0221395C: .word Unk_ov4_0221F7AC
_02213960: .word 0x00003FFE
	arm_func_end ov4_022138C8

	arm_func_start ov4_02213964
ov4_02213964: ; 0x02213964
	ldr r0, _02213970 ; =0x0221F7AC
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_02213970: .word Unk_ov4_0221F7AC
	arm_func_end ov4_02213964

	arm_func_start ov4_02213974
ov4_02213974: ; 0x02213974
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _022139C4
	ldr r1, _02213A90 ; =0x0221F7AC
	mov r3, #3
	ldr r0, [r1, #0]
	mov r2, #0
	add r0, r0, #0x2000
	str r3, [r0, #0x26c]
	ldr r0, [r1, #0]
	add r0, r0, #0x2000
	str r2, [r0, #0x270]
	ldr r0, [r1, #0]
	add r0, r0, #0x2000
	str r2, [r0, #0x274]
	ldr r0, [r1, #0]
	add r0, r0, #0x2000
	str r2, [r0, #0x278]
	b _02213A7C
_022139C4:
	ldr r1, _02213A90 ; =0x0221F7AC
	ldr r2, [r5, #0]
	ldr r0, [r1, #0]
	and r2, r2, #3
	add r0, r0, #0x2000
	str r2, [r0, #0x26c]
	ldr r3, [r5, #4]
	ldr r0, [r5, #8]
	and r2, r3, #3
	rsb r2, r2, #4
	and r2, r2, #3
	add r2, r2, #0xc
	cmp r2, r0
	ldr r0, [r1, #0]
	bls _02213A1C
	mov r2, #0
	add r0, r0, #0x2000
	str r2, [r0, #0x270]
	ldr r0, [r1, #0]
	add r0, r0, #0x2000
	str r2, [r0, #0x274]
	b _02213A68
_02213A1C:
	add r2, r3, #3
	bic r2, r2, #3
	add r0, r0, #0x2000
	str r2, [r0, #0x270]
	ldr r2, [r5, #4]
	ldr r0, [r1, #0]
	and r2, r2, #3
	rsb r2, r2, #4
	ldr r3, [r5, #8]
	and r2, r2, #3
	sub r2, r3, r2
	add r0, r0, #0x2000
	str r2, [r0, #0x274]
	ldr r0, [r1, #0]
	mov r1, #0
	add r2, r0, #0x2000
	ldr r0, [r2, #0x270]
	ldr r2, [r2, #0x274]
	bl MI_CpuFill8
_02213A68:
	ldr r0, _02213A90 ; =0x0221F7AC
	ldr r1, [r5, #0xc]
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	str r1, [r0, #0x278]
_02213A7C:
	ldr r0, _02213A90 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	str r4, [r0, #0x27c]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02213A90: .word Unk_ov4_0221F7AC
	arm_func_end ov4_02213974

	arm_func_start ov4_02213A94
ov4_02213A94: ; 0x02213A94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, r2
	mov r4, r1
	bl ov4_022138C8
	ldr r2, _02213C20 ; =0x0221F7AC
	mov r3, #0x400
	ldr r1, [r2, #0]
	mov r0, #0
	add ip, r1, #0x1500
	add r1, r1, #0x2000
	str ip, [r1, #0x288]
	ldr r1, [r2, #0]
	add r1, r1, #0x2200
	strh r3, [r1, #0x8c]
	bl ov4_02213C4C
	ldr r1, _02213C20 ; =0x0221F7AC
	mov r2, #1
	mov r2, r2, lsl r0
	ldr r0, [r1, #0]
	mov r2, r2, asr #1
	add r0, r0, #0x2200
	strh r2, [r0, #0x8e]
	ldr r0, [r1, #0]
	add r0, r0, #0x2200
	ldrh r0, [r0, #0x68]
	cmp r0, #0
	bne _02213B08
	bl WM_GetDispersionScanPeriod
_02213B08:
	ldr r2, _02213C20 ; =0x0221F7AC
	ldr r1, [r2, #0]
	add r1, r1, #0x2200
	strh r0, [r1, #0x90]
	ldr r1, [r2, #0]
	add r0, r1, #0x2000
	ldr r0, [r0, #0x264]
	and r0, r0, #0x300000
	cmp r0, #0x300000
	movne r2, #1
	moveq r2, #0
	add r0, r1, #0x2200
	strh r2, [r0, #0x98]
	cmp r5, #0
	mov r2, #6
	bne _02213B64
	ldr r1, _02213C20 ; =0x0221F7AC
	ldr r0, _02213C24 ; =0x02215E48
	ldr r1, [r1, #0]
	add r1, r1, #0x92
	add r1, r1, #0x2200
	bl MI_CpuCopy8
	b _02213B7C
_02213B64:
	ldr r1, _02213C20 ; =0x0221F7AC
	mov r0, r5
	ldr r1, [r1, #0]
	add r1, r1, #0x92
	add r1, r1, #0x2200
	bl MI_CpuCopy8
_02213B7C:
	cmp r4, #0
	ldrne r0, _02213C28 ; =0x02215E50
	mov r2, #0x20
	cmpne r4, r0
	bne _02213BC0
	ldr r1, _02213C20 ; =0x0221F7AC
	ldr r0, _02213C28 ; =0x02215E50
	ldr r1, [r1, #0]
	add r1, r1, #0x29c
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	ldr r0, _02213C20 ; =0x0221F7AC
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x9a]
	b _02213C08
_02213BC0:
	ldr r1, _02213C20 ; =0x0221F7AC
	mov r0, r4
	ldr r1, [r1, #0]
	add r1, r1, #0x29c
	add r1, r1, #0x2000
	bl MI_CpuCopy8
	mov r1, #0
_02213BDC:
	ldrb r0, [r4]
	cmp r0, #0
	beq _02213BF8
	add r1, r1, #1
	cmp r1, #0x20
	add r4, r4, #1
	blt _02213BDC
_02213BF8:
	ldr r0, _02213C20 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0x9a]
_02213C08:
	ldr r0, _02213C20 ; =0x0221F7AC
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	str r1, [r0, #0x284]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02213C20: .word Unk_ov4_0221F7AC
_02213C24: .word Unk_ov4_02215E48
_02213C28: .word Unk_ov4_02215E50
	arm_func_end ov4_02213A94

	arm_func_start ov4_02213C2C
ov4_02213C2C: ; 0x02213C2C
	ldr r0, _02213C44 ; =0x0221F7AC
	ldr r1, _02213C48 ; =0x00AAA082
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	str r1, [r0, #0x264]
	bx lr
	; .align 2, 0
_02213C44: .word Unk_ov4_0221F7AC
_02213C48: .word 0x00AAA082
	arm_func_end ov4_02213C2C

	arm_func_start ov4_02213C4C
ov4_02213C4C: ; 0x02213C4C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r2, _02213CD4 ; =0x0221F7AC
	ldr lr, _02213CD8 ; =0x4EC4EC4F
	ldr r2, [r2, #0]
	mov r1, r0
	add r2, r2, #0x2000
	ldr r7, [r2, #0x264]
	mov r6, #0
	mov r5, #1
	mov ip, #0xd
_02213C74:
	mov r2, r1, lsr #0x1f
	smull r3, r4, lr, r1
	add r4, r2, r4, asr #2
	smull r2, r3, ip, r4
	sub r4, r1, r2
	add r2, r4, #1
	tst r7, r5, lsl r2
	bne _02213CA4
	add r6, r6, #1
	cmp r6, #0xd
	add r1, r1, #1
	blt _02213C74
_02213CA4:
	add r3, r0, r6
	ldr r2, _02213CD8 ; =0x4EC4EC4F
	mov r0, r3, lsr #0x1f
	smull r1, ip, r2, r3
	add ip, r0, ip, asr #2
	mov r2, #0xd
	smull r0, r1, r2, ip
	sub ip, r3, r0
	add r0, ip, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02213CD4: .word Unk_ov4_0221F7AC
_02213CD8: .word 0x4EC4EC4F
	arm_func_end ov4_02213C4C

	arm_func_start ov4_02213CDC
ov4_02213CDC: ; 0x02213CDC
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, _02213D1C ; =0x0221F7AC
	mov r5, r0
	ldr r0, [ip]
	mov r4, r1
	add r1, r0, #0x2200
	ldrsh r0, [r1, #0x80]
	mov ip, #0
	mov lr, r2
	strh ip, [r1, #0x80]
	str r3, [sp]
	mov r1, r5
	mov r2, r4
	mov r3, lr
	bl ov4_02213D20
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02213D1C: .word Unk_ov4_0221F7AC
	arm_func_end ov4_02213CDC

	arm_func_start ov4_02213D20
ov4_02213D20: ; 0x02213D20
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr ip, _02213D70 ; =0x0221F7AC
	ldr ip, [ip]
	add ip, ip, #0x2000
	ldr lr, [ip, #0x27c]
	cmp lr, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, pc}
	ldr lr, [sp, #0x18]
	strh r0, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	str lr, [sp, #0xc]
	strh r1, [sp, #2]
	ldr r1, [ip, #0x27c]
	add r0, sp, #0
	blx r1
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02213D70: .word Unk_ov4_0221F7AC
	arm_func_end ov4_02213D20

	arm_func_start ov4_02213D74
ov4_02213D74: ; 0x02213D74
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _02213E00 ; =0x0221F7AC
	mov r4, r0
	ldr r1, [r1, #0]
	add r0, r1, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #9
	bne _02213DB0
	cmp r5, #9
	beq _02213DB0
	add r0, r1, #0x2cc
	add r0, r0, #0x2000
	bl OS_CancelAlarm
_02213DB0:
	ldr r0, _02213E00 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	ldr r1, [r0, #0x260]
	cmp r1, #0xb
	strne r5, [r0, #0x260]
	cmp r5, #9
	bne _02213DF4
	mov r2, #0
	ldr r0, _02213E00 ; =0x0221F7AC
	str r2, [sp]
	ldr r0, [r0, #0]
	ldr r1, _02213E04 ; =0x022F5341
	add r0, r0, #0x2cc
	ldr r3, _02213E08 ; =ov4_02213E80
	add r0, r0, #0x2000
	bl OS_SetAlarm
_02213DF4:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02213E00: .word Unk_ov4_0221F7AC
_02213E04: .word 0x022F5341
_02213E08: .word ov4_02213E80
	arm_func_end ov4_02213D74

	arm_func_start ov4_02213E0C
ov4_02213E0C: ; 0x02213E0C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	bl OS_DisableInterrupts
	ldr r1, _02213E74 ; =0x0221F7AC
	mov r4, r0
	ldr r0, [r1, #0]
	add r0, r0, #0x2cc
	add r0, r0, #0x2000
	bl OS_CancelAlarm
	ldr r0, _02213E74 ; =0x0221F7AC
	ldr r1, [r0, #0]
	add r0, r1, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #9
	bne _02213E64
	add r0, r1, #0x2cc
	mov r2, #0
	ldr r1, _02213E78 ; =0x022F5341
	ldr r3, _02213E7C ; =ov4_02213E80
	add r0, r0, #0x2000
	str r2, [sp]
	bl OS_SetAlarm
_02213E64:
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02213E74: .word Unk_ov4_0221F7AC
_02213E78: .word 0x022F5341
_02213E7C: .word ov4_02213E80
	arm_func_end ov4_02213E0C

	arm_func_start ov4_02213E80
ov4_02213E80: ; 0x02213E80
	stmfd sp!, {r3, lr}
	bl ov4_02215328
	bl ov4_02213E0C
	ldmia sp!, {r3, pc}
	arm_func_end ov4_02213E80

	arm_func_start ov4_02213E90
ov4_02213E90: ; 0x02213E90
	mov r1, r0
	mov r0, #0
	mov r3, #1
_02213E9C:
	clz r2, r1
	rsbs r2, r2, #0x1f
	blo _02213EAC
	b _02213EB0
_02213EAC:
	bx lr
_02213EB0:
	bic r1, r1, r3, lsl r2
	add r0, r0, #1
	b _02213E9C
	arm_func_end ov4_02213E90

	arm_func_start ov4_02213EBC
ov4_02213EBC: ; 0x02213EBC
	clz r0, r0
	bx lr
	arm_func_end ov4_02213EBC

	arm_func_start ov4_02213EC4
ov4_02213EC4: ; 0x02213EC4
	stmfd sp!, {r3, lr}
	ldr r0, _02213F18 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r1, r0, #0x2000
	ldrb r0, [r1, #0x26b]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	ldr r0, _02213F1C ; =ov4_02214B08
	strb r2, [r1, #0x26b]
	bl WM_Reset
	cmp r0, #2
	ldmeqia sp!, {r3, pc}
	mov r0, #0xb
	bl ov4_02213D74
	mov r1, #0
	mov r2, r1
	mov r0, #7
	mov r3, #0x610
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02213F18: .word Unk_ov4_0221F7AC
_02213F1C: .word ov4_02214B08
	arm_func_end ov4_02213EC4

	arm_func_start ov4_02213F20
ov4_02213F20: ; 0x02213F20
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	cmp r1, #8
	ldreqh r1, [r0, #4]
	cmpeq r1, #0x16
	ldreqh r0, [r0, #6]
	cmpeq r0, #0x25
	ldmneia sp!, {r3, pc}
	ldr r0, _02213F94 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_02213F60: ; jump table
	b _02213F74 ; case 0
	b _02213F80 ; case 1
	b _02213F88 ; case 2
	ldmia sp!, {r3, pc} ; case 3
	b _02213F80 ; case 4
_02213F74:
	mov r0, #0xc
	bl ov4_02213D74
	ldmia sp!, {r3, pc}
_02213F80:
	bl ov4_02213EC4
	ldmia sp!, {r3, pc}
_02213F88:
	mov r0, #0xc
	bl ov4_02213D74
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02213F94: .word Unk_ov4_0221F7AC
	arm_func_end ov4_02213F20

	arm_func_start ov4_02213F98
ov4_02213F98: ; 0x02213F98
	stmfd sp!, {r3, lr}
	ldrh r1, [r0, #2]
	mov r2, #0x14
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _022141F8
_02213FB0: ; jump table
	b _02213FC4 ; case 0
	b _022141C0 ; case 1
	b _022141F8 ; case 2
	b _022141F8 ; case 3
	b _022141F8 ; case 4
_02213FC4:
	ldrh r0, [r0]
	cmp r0, #0x19
	bgt _02213FFC
	bge _022140C0
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _02214138
_02213FE0: ; jump table
	b _02214138 ; case 0
	b _02214138 ; case 1
	b _02214138 ; case 2
	b _02214018 ; case 3
	b _02214028 ; case 4
	b _0221407C ; case 5
	b _0221409C ; case 6
_02213FFC:
	cmp r0, #0x1d
	bgt _0221400C
	beq _022140AC
	b _02214138
_0221400C:
	cmp r0, #0x27
	beq _022140E8
	b _02214138
_02214018:
	ldr r0, _02214230 ; =ov4_02213F98
	bl WM_PowerOn
	mov r2, r0
	b _02214138
_02214028:
	bl WM_Finish
	cmp r0, #0
	beq _0221403C
	cmp r0, #4
	b _0221405C
_0221403C:
	mov r0, #1
	bl ov4_02213D74
	mov r0, #0
	ldr r3, _02214234 ; =0x00000663
	mov r1, r0
	mov r2, r0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_0221405C:
	mov r0, #0xb
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _02214238 ; =0x0000066C
	mov r2, r1
	mov r0, #7
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_0221407C:
	mov r0, #3
	bl ov4_02213D74
	mov r0, #0
	ldr r3, _0221423C ; =0x00000673
	mov r1, r0
	mov r2, r0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_0221409C:
	ldr r0, _02214230 ; =ov4_02213F98
	bl WM_Disable
	mov r2, r0
	b _02214138
_022140AC:
	ldr r0, _02214230 ; =ov4_02213F98
	mov r1, #0
	bl WM_SetBeaconIndication
	mov r2, r0
	b _02214138
_022140C0:
	ldr r1, _02214240 ; =0x0221F7AC
	ldr r0, _02214230 ; =ov4_02213F98
	ldr r3, [r1, #0]
	add r2, r3, #0x2000
	ldrb r1, [r2, #0x250]
	ldrb r2, [r2, #0x251]
	add r3, r3, #0x2200
	bl WM_SetWEPKeyEx
	mov r2, r0
	b _02214138
_022140E8:
	ldr r0, _02214240 ; =0x0221F7AC
	ldr r2, [r0, #0]
	add r0, r2, #0x2000
	ldr r1, [r0, #0x264]
	and r0, r1, #0xc0000
	cmp r0, #0xc0000
	moveq r0, #1
	movne r0, #0
	mov r0, r0, lsl #0x10
	mov ip, r0, lsr #0x10
	and r1, r1, #0x30000
	cmp r1, #0x30000
	movne r3, #1
	add r1, r2, #0x2140
	ldr r0, _02214244 ; =ov4_022145B0
	moveq r3, #0
	mov r2, #0
	str ip, [sp]
	bl WM_StartConnectEx
	mov r2, r0
_02214138:
	cmp r2, #2
	ldmeqia sp!, {r3, pc}
	cmp r2, #3
	beq _02214188
	cmp r2, #8
	bne _02214188
	mov r0, #0xc
	bl ov4_02213D74
	ldr r0, _02214240 ; =0x0221F7AC
	mov r2, #0
	ldr r1, [r0, #0]
	add r0, r1, #0x2200
	ldrsh r0, [r0, #0x80]
	cmp r0, #5
	addeq r1, r1, #0x2140
	mov r0, #1
	movne r1, #0
	rsb r3, r0, #0x6b0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_02214188:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _02214240 ; =0x0221F7AC
	ldr r3, _02214248 ; =0x000006B8
	ldr r1, [r0, #0]
	mov r2, #0
	add r0, r1, #0x2200
	ldrsh r0, [r0, #0x80]
	cmp r0, #5
	addeq r1, r1, #0x2140
	movne r1, #0
	mov r0, #7
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_022141C0:
	mov r0, #0xc
	bl ov4_02213D74
	ldr r0, _02214240 ; =0x0221F7AC
	ldr r3, _0221424C ; =0x000006DE
	ldr r1, [r0, #0]
	mov r2, #0
	add r0, r1, #0x2200
	ldrsh r0, [r0, #0x80]
	cmp r0, #5
	addeq r1, r1, #0x2140
	movne r1, #0
	mov r0, #1
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_022141F8:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _02214240 ; =0x0221F7AC
	ldr r3, _02214250 ; =0x000006E8
	ldr r1, [r0, #0]
	mov r2, #0
	add r0, r1, #0x2200
	ldrsh r0, [r0, #0x80]
	cmp r0, #5
	addeq r1, r1, #0x2140
	movne r1, #0
	mov r0, #7
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02214230: .word ov4_02213F98
_02214234: .word 0x00000663
_02214238: .word 0x0000066C
_0221423C: .word 0x00000673
_02214240: .word Unk_ov4_0221F7AC
_02214244: .word ov4_022145B0
_02214248: .word 0x000006B8
_0221424C: .word 0x000006DE
_02214250: .word 0x000006E8
	arm_func_end ov4_02213F98

	arm_func_start ov4_02214254
ov4_02214254: ; 0x02214254
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r5, r0
	ldrh r0, [r5, #2]
	mov r4, #0x14
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _022144EC
_02214274: ; jump table
	b _02214288 ; case 0
	b _022144E0 ; case 1
	b _022144EC ; case 2
	b _022144EC ; case 3
	b _022144EC ; case 4
_02214288:
	ldr r0, _02214510 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #5
	bne _022142BC
	mov r0, #6
	bl ov4_02213D74
	mov r0, #0
	ldr r3, _02214514 ; =0x00000704
	mov r1, r0
	mov r2, r0
	bl ov4_02213CDC
_022142BC:
	ldr r1, _02214510 ; =0x0221F7AC
	ldr r2, [r1, #0]
	add r0, r2, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #6
	beq _022142E8
	cmp r0, #7
	beq _02214460
	cmp r0, #0xd
	beq _02214470
	b _0221447C
_022142E8:
	add r0, r2, #0x2200
	mov r2, #7
	strh r2, [r0, #0x80]
	ldrh r0, [r5, #8]
	cmp r0, #5
	bne _02214374
	ldr r0, [r1, #0]
	add r1, r0, #0x2200
	add r0, r0, #0x2000
	ldrh r1, [r1, #0x8c]
	ldr r0, [r0, #0x288]
	bl DC_InvalidateRange
	ldrh r0, [r5, #0xe]
	mov r4, #0
	cmp r0, #0
	ble _02214374
	ldr r8, _02214518 ; =0x0000071A
	mov r7, #7
	mov r6, r4
_02214334:
	add r0, r5, r4, lsl #1
	add r2, r5, r4, lsl #2
	ldrh r1, [r0, #0x50]
	ldr r0, [r2, #0x10]
	bl ov4_02214FB4
	str r8, [sp]
	add r0, r5, r4, lsl #2
	ldr r2, [r0, #0x10]
	mov r0, r7
	mov r1, r6
	mov r3, r5
	bl ov4_02213D20
	ldrh r0, [r5, #0xe]
	add r4, r4, #1
	cmp r4, r0
	blt _02214334
_02214374:
	ldr r0, _02214510 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	ldr r1, [r0, #0x264]
	and r0, r1, #0xc00000
	cmp r0, #0xc00000
	bne _022143E0
	ldr r0, _0221451C ; =0x00003FFE
	and r0, r1, r0
	bl ov4_02213E90
	movs r1, r0
	beq _022143E0
	ldr r0, _02214510 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	ldr r6, [r0, #0x284]
	mov r0, r6
	bl _u32_div_f
	cmp r1, #0
	bne _022143E0
	ldr r4, _02214520 ; =0x00000728
	mov r1, #0
	mov r2, r6
	mov r3, r1
	mov r0, #8
	str r4, [sp]
	bl ov4_02213D20
_022143E0:
	ldrh r0, [r5, #0xa]
	bl ov4_02213EBC
	rsb r0, r0, #0x20
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl ov4_02213C4C
	ldr r1, _02214510 ; =0x0221F7AC
	mov r2, #1
	mov r2, r2, lsl r0
	ldr r0, [r1, #0]
	mov r2, r2, asr #1
	add r0, r0, #0x2200
	strh r2, [r0, #0x8e]
	ldr r0, [r1, #0]
	add r1, r0, #0x2200
	add r0, r0, #0x2000
	ldrh r1, [r1, #0x8c]
	ldr r0, [r0, #0x288]
	bl DC_InvalidateRange
	ldr r2, _02214510 ; =0x0221F7AC
	ldr r0, _02214524 ; =ov4_02214254
	ldr r1, [r2, #0]
	add r1, r1, #0x2000
	ldr r3, [r1, #0x284]
	add r3, r3, #1
	str r3, [r1, #0x284]
	ldr r1, [r2, #0]
	add r1, r1, #0x288
	add r1, r1, #0x2000
	bl WM_StartScanEx
	mov r4, r0
	b _0221447C
_02214460:
	ldr r0, _02214528 ; =ov4_02214538
	bl WM_EndScan
	mov r4, r0
	b _0221447C
_02214470:
	bl ov4_02213EC4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_0221447C:
	cmp r4, #2
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r4, #3
	beq _022144BC
	cmp r4, #8
	bne _022144BC
	mov r0, #0xc
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _0221452C ; =0x00000753
	mov r2, r1
	mov r0, #1
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022144BC:
	mov r0, #0xb
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _02214530 ; =0x0000075C
	mov r2, r1
	mov r0, #7
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022144E0:
	bl ov4_02213EC4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022144EC:
	mov r0, #0xb
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _02214534 ; =0x0000076D
	mov r2, r1
	mov r0, #7
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02214510: .word Unk_ov4_0221F7AC
_02214514: .word 0x00000704
_02214518: .word 0x0000071A
_0221451C: .word 0x00003FFE
_02214520: .word 0x00000728
_02214524: .word ov4_02214254
_02214528: .word ov4_02214538
_0221452C: .word 0x00000753
_02214530: .word 0x0000075C
_02214534: .word 0x0000076D
	arm_func_end ov4_02214254

	arm_func_start ov4_02214538
ov4_02214538: ; 0x02214538
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02214588
_0221454C: ; jump table
	b _02214560 ; case 0
	b _02214580 ; case 1
	b _02214588 ; case 2
	b _02214588 ; case 3
	b _02214588 ; case 4
_02214560:
	mov r0, #3
	bl ov4_02213D74
	mov r0, #0
	ldr r3, _022145A8 ; =0x00000783
	mov r1, r0
	mov r2, r0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_02214580:
	bl ov4_02213EC4
	ldmia sp!, {r3, pc}
_02214588:
	mov r0, #0xb
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _022145AC ; =0x00000793
	mov r2, r1
	mov r0, #7
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022145A8: .word 0x00000783
_022145AC: .word 0x00000793
	arm_func_end ov4_02214538

	arm_func_start ov4_022145B0
ov4_022145B0: ; 0x022145B0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _022147D0
_022145C8: ; jump table
	b _022145FC ; case 0
	b _022147AC ; case 1
	b _022147D0 ; case 2
	b _022147D0 ; case 3
	b _022147D0 ; case 4
	b _022147D0 ; case 5
	b _022147C0 ; case 6
	b _022147D0 ; case 7
	b _022147D0 ; case 8
	b _022147D0 ; case 9
	b _022147D0 ; case 10
	b _022147C0 ; case 11
	b _022147C0 ; case 12
_022145FC:
	ldrh r0, [r4, #8]
	cmp r0, #9
	bgt _0221463C
	cmp r0, #0
	addge pc, pc, r0, lsl #2
	b _02214784
_02214614: ; jump table
	b _02214784 ; case 0
	b _02214784 ; case 1
	b _02214784 ; case 2
	b _02214784 ; case 3
	b _02214784 ; case 4
	b _02214784 ; case 5
	ldmia sp!, {r4, pc} ; case 6
	b _022146B8 ; case 7
	b _02214648 ; case 8
	b _02214648 ; case 9
_0221463C:
	cmp r0, #0x1a
	ldmeqia sp!, {r4, pc}
	b _02214784
_02214648:
	ldr r1, _022147F8 ; =0x0221F7AC
	ldr r2, [r1, #0]
	add r0, r2, #0x2000
	ldr r0, [r0, #0x260]
	sub r0, r0, #8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r4, pc}
_02214668: ; jump table
	b _02214688 ; case 0
	b _02214694 ; case 1
	b _0221467C ; case 2
	ldmia sp!, {r4, pc} ; case 3
	b _022146B0 ; case 4
_0221467C:
	add r0, r2, #0x2200
	mov r1, #0
	strh r1, [r0, #0x82]
_02214688:
	mov r0, #0xc
	bl ov4_02213D74
	ldmia sp!, {r4, pc}
_02214694:
	add r0, r2, #0x2200
	mov r2, #0
	strh r2, [r0, #0x82]
	ldr r0, [r1, #0]
	mov r1, #6
	add r0, r0, #0x2200
	strh r1, [r0, #0x80]
_022146B0:
	bl ov4_02213EC4
	ldmia sp!, {r4, pc}
_022146B8:
	ldr r1, _022147F8 ; =0x0221F7AC
	ldr r3, [r1, #0]
	add r0, r3, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #0xc
	bne _022146E0
	mov r0, #8
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r4, pc}
_022146E0:
	ldrh r2, [r4, #0xa]
	cmp r2, #1
	blo _0221477C
	ldr r0, _022147FC ; =0x000007D7
	cmp r2, r0
	bhi _0221477C
	add r0, r3, #0x2200
	strh r2, [r0, #0x82]
	ldr r1, [r1, #0]
	ldr r0, _02214800 ; =ov4_022148DC
	add r1, r1, #0x1500
	mov r2, #0x620
	bl WM_StartDCF
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	cmp r0, #3
	beq _02214754
	cmp r0, #8
	bne _02214754
	mov r0, #0xc
	bl ov4_02213D74
	ldr r0, _022147F8 ; =0x0221F7AC
	ldr r3, _02214804 ; =0x000007ED
	ldr r1, [r0, #0]
	mov r0, #1
	add r1, r1, #0x2140
	mov r2, #0
	bl ov4_02213CDC
	ldmia sp!, {r4, pc}
_02214754:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _022147F8 ; =0x0221F7AC
	ldr r3, _02214808 ; =0x000007F6
	ldr r1, [r0, #0]
	mov r0, #7
	add r1, r1, #0x2140
	mov r2, #0
	bl ov4_02213CDC
	ldmia sp!, {r4, pc}
_0221477C:
	bl ov4_02213EC4
	ldmia sp!, {r4, pc}
_02214784:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _022147F8 ; =0x0221F7AC
	ldrh r2, [r4, #8]
	ldr r0, [r0, #0]
	ldr r3, _0221480C ; =0x00000804
	add r1, r0, #0x2140
	mov r0, #7
	bl ov4_02213CDC
	ldmia sp!, {r4, pc}
_022147AC:
	ldr r0, _022147F8 ; =0x0221F7AC
	ldrh r1, [r4, #0xe]
	ldr r0, [r0, #0]
	add r0, r0, #0x2200
	strh r1, [r0, #0xf8]
_022147C0:
	mov r0, #8
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r4, pc}
_022147D0:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _022147F8 ; =0x0221F7AC
	ldr r3, _02214810 ; =0x0000081B
	ldr r1, [r0, #0]
	mov r0, #7
	add r1, r1, #0x2140
	mov r2, #0
	bl ov4_02213CDC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022147F8: .word Unk_ov4_0221F7AC
_022147FC: .word 0x000007D7
_02214800: .word ov4_022148DC
_02214804: .word 0x000007ED
_02214808: .word 0x000007F6
_0221480C: .word 0x00000804
_02214810: .word 0x0000081B
	arm_func_end ov4_022145B0

	arm_func_start ov4_02214814
ov4_02214814: ; 0x02214814
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _022148A8
_02214828: ; jump table
	b _0221483C ; case 0
	b _02214898 ; case 1
	b _022148A8 ; case 2
	b _02214898 ; case 3
	b _022148A8 ; case 4
_0221483C:
	ldr r0, _022148D0 ; =0x0221F7AC
	ldr r1, [r0, #0]
	add r0, r1, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #0xc
	bne _02214864
	mov r0, #0xa
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r3, pc}
_02214864:
	add r1, r1, #0x2200
	mov r2, #0
	mov r0, #3
	strh r2, [r1, #0x82]
	bl ov4_02213D74
	ldr r1, _022148D0 ; =0x0221F7AC
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r3, _022148D4 ; =0x0000083D
	mov r2, r0
	add r1, r1, #0x2140
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_02214898:
	mov r0, #0xa
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r3, pc}
_022148A8:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _022148D0 ; =0x0221F7AC
	ldr r3, _022148D8 ; =0x0000084F
	ldr r1, [r0, #0]
	mov r0, #7
	add r1, r1, #0x2140
	mov r2, #0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022148D0: .word Unk_ov4_0221F7AC
_022148D4: .word 0x0000083D
_022148D8: .word 0x0000084F
	arm_func_end ov4_02214814

	arm_func_start ov4_022148DC
ov4_022148DC: ; 0x022148DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022148F8
	cmp r0, #4
	b _022149B4
_022148F8:
	ldrh r0, [r4, #4]
	cmp r0, #0xe
	beq _02214910
	cmp r0, #0xf
	beq _02214960
	b _0221498C
_02214910:
	ldr r0, _022149DC ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #0xc
	bne _02214938
	mov r0, #8
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r4, pc}
_02214938:
	mov r0, #9
	bl ov4_02213D74
	ldr r1, _022149DC ; =0x0221F7AC
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r3, _022149E0 ; =0x00000872
	mov r2, r0
	add r1, r1, #0x2140
	bl ov4_02213CDC
	ldmia sp!, {r4, pc}
_02214960:
	ldr r0, [r4, #8]
	ldrh r0, [r0, #0xe]
	mov r0, r0, asr #8
	and r0, r0, #0xff
	bl ov4_022157E4
	ldr r0, [r4, #8]
	mov r1, #0x620
	bl DC_InvalidateRange
	ldr r0, [r4, #8]
	bl ov4_022152F4
	ldmia sp!, {r4, pc}
_0221498C:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _022149DC ; =0x0221F7AC
	ldrh r2, [r4, #4]
	ldr r0, [r0, #0]
	ldr r3, _022149E4 ; =0x00000881
	add r1, r0, #0x2140
	mov r0, #7
	bl ov4_02213CDC
	ldmia sp!, {r4, pc}
_022149B4:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _022149DC ; =0x0221F7AC
	ldr r3, _022149E8 ; =0x0000088C
	ldr r1, [r0, #0]
	mov r0, #7
	add r1, r1, #0x2140
	mov r2, #0
	bl ov4_02213CDC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022149DC: .word Unk_ov4_0221F7AC
_022149E0: .word 0x00000872
_022149E4: .word 0x00000881
_022149E8: .word 0x0000088C
	arm_func_end ov4_022148DC

	arm_func_start ov4_022149EC
ov4_022149EC: ; 0x022149EC
	stmfd sp!, {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _02214AD0
_02214A00: ; jump table
	b _02214A14 ; case 0
	b _02214AC0 ; case 1
	b _02214AD0 ; case 2
	b _02214AC0 ; case 3
	b _02214AD0 ; case 4
_02214A14:
	ldr r0, _02214AF8 ; =0x0221F7AC
	ldr r0, [r0, #0]
	add r0, r0, #0x2000
	ldr r0, [r0, #0x260]
	cmp r0, #0xc
	bne _02214A3C
	mov r0, #0xa
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r3, pc}
_02214A3C:
	ldr r0, _02214AFC ; =ov4_02214814
	mov r1, #0
	bl WM_Disconnect
	cmp r0, #2
	ldmeqia sp!, {r3, pc}
	cmp r0, #3
	beq _02214A88
	cmp r0, #8
	bne _02214A98
	mov r0, #0xc
	bl ov4_02213D74
	ldr r0, _02214AF8 ; =0x0221F7AC
	ldr r3, _02214B00 ; =0x000008B4
	ldr r1, [r0, #0]
	mov r0, #1
	add r1, r1, #0x2140
	mov r2, #0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_02214A88:
	mov r0, #0xa
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r3, pc}
_02214A98:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r1, _02214AF8 ; =0x0221F7AC
	mov r0, #7
	ldr r1, [r1, #0]
	mov r2, #0
	add r1, r1, #0x2140
	mov r3, #0x8c0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
_02214AC0:
	mov r0, #0xa
	bl ov4_02213D74
	bl ov4_02213EC4
	ldmia sp!, {r3, pc}
_02214AD0:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _02214AF8 ; =0x0221F7AC
	ldr r3, _02214B04 ; =0x000008D3
	ldr r1, [r0, #0]
	mov r0, #7
	add r1, r1, #0x2140
	mov r2, #0
	bl ov4_02213CDC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02214AF8: .word Unk_ov4_0221F7AC
_02214AFC: .word ov4_02214814
_02214B00: .word 0x000008B4
_02214B04: .word 0x000008D3
	arm_func_end ov4_022149EC

	arm_func_start ov4_02214B08
ov4_02214B08: ; 0x02214B08
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02214DE0
	ldr r2, _02214E04 ; =0x0221F7AC
	mov r0, #0
	ldr r1, [r2, #0]
	add r1, r1, #0x2000
	strb r0, [r1, #0x26b]
	ldr r1, [r2, #0]
	add r1, r1, #0x2200
	strh r0, [r1, #0x82]
	ldr r3, [r2, #0]
	add r1, r3, #0x2000
	ldr r1, [r1, #0x260]
	cmp r1, #0xd
	addls pc, pc, r1, lsl #2
	b _02214DB0
_02214B54: ; jump table
	b _02214DB0 ; case 0
	b _02214DB0 ; case 1
	b _02214DB0 ; case 2
	b _02214DB0 ; case 3
	b _02214DB0 ; case 4
	b _02214B8C ; case 5
	b _02214B8C ; case 6
	b _02214BB0 ; case 7
	b _02214BD4 ; case 8
	b _02214CEC ; case 9
	b _02214D18 ; case 10
	b _02214DB0 ; case 11
	b _02214CEC ; case 12
	b _02214D44 ; case 13
_02214B8C:
	mov r0, #3
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _02214E08 ; =0x000008F5
	mov r2, r1
	mov r0, #1
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214BB0:
	mov r0, #3
	bl ov4_02213D74
	mov r0, #0
	ldr r3, _02214E0C ; =0x000008FB
	mov r1, r0
	mov r2, r0
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214BD4:
	add r1, r3, #0x2200
	ldrh r4, [r1, #0xf8]
	strh r0, [r1, #0xf8]
	cmp r4, #0x12
	bne _02214CC0
	ldr r1, [r2, #0]
	add r1, r1, #0x2100
	ldrh r3, [r1, #0x70]
	and ip, r3, #0x24
	cmp ip, #0x24
	beq _02214CC0
	orr r3, r3, #0x24
	strh r3, [r1, #0x70]
	ldr lr, [r2]
	add r1, lr, #0x2000
	ldr r2, [r1, #0x264]
	and r1, r2, #0xc0000
	cmp r1, #0xc0000
	moveq r0, #1
	and r1, r2, #0x30000
	cmp r1, #0x30000
	mov r0, r0, lsl #0x10
	mov ip, r0, lsr #0x10
	movne r3, #1
	ldr r0, _02214E10 ; =ov4_022145B0
	moveq r3, #0
	add r1, lr, #0x2140
	mov r2, #0
	str ip, [sp]
	bl WM_StartConnectEx
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	cmp r0, #3
	beq _02214C94
	cmp r0, #8
	bne _02214C94
	mov r0, #0xc
	bl ov4_02213D74
	ldr r0, _02214E04 ; =0x0221F7AC
	ldr r3, _02214E14 ; =0x0000091C
	ldr r0, [r0, #0]
	mov r2, r4
	add r1, r0, #0x2140
	mov r0, #1
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214C94:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r0, _02214E04 ; =0x0221F7AC
	ldr r3, _02214E18 ; =0x00000925
	ldr r0, [r0, #0]
	mov r2, r4
	add r1, r0, #0x2140
	mov r0, #7
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214CC0:
	mov r0, #3
	bl ov4_02213D74
	ldr r0, _02214E04 ; =0x0221F7AC
	ldr r3, _02214E1C ; =0x0000092D
	ldr r0, [r0, #0]
	mov r2, r4
	add r1, r0, #0x2140
	mov r0, #1
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214CEC:
	mov r0, #3
	bl ov4_02213D74
	ldr r0, _02214E04 ; =0x0221F7AC
	ldr r3, _02214E20 ; =0x00000935
	ldr r1, [r0, #0]
	mov r0, #0
	add r1, r1, #0x2140
	mov r2, #1
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214D18:
	mov r0, #3
	bl ov4_02213D74
	ldr r1, _02214E04 ; =0x0221F7AC
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r3, _02214E24 ; =0x0000093C
	mov r2, r0
	add r1, r1, #0x2140
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214D44:
	ldr r0, _02214E28 ; =ov4_02213F98
	bl WM_PowerOff
	cmp r0, #2
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	cmp r0, #3
	beq _02214D8C
	cmp r0, #8
	bne _02214D8C
	mov r0, #0xc
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _02214E2C ; =0x0000094A
	mov r2, r1
	mov r0, #1
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214D8C:
	mov r0, #0xb
	bl ov4_02213D74
	mov r1, #0
	ldr r3, _02214E30 ; =0x00000953
	mov r2, r1
	mov r0, #7
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214DB0:
	mov r0, #0xb
	bl ov4_02213D74
	ldr r1, _02214E04 ; =0x0221F7AC
	mov r0, #7
	ldr r1, [r1, #0]
	rsb r3, r0, #0x960
	add r1, r1, #0x2000
	ldr r2, [r1, #0x260]
	mov r1, #0
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_02214DE0:
	mov r0, #0xb
	bl ov4_02213D74
	mov r1, #0
	mov r2, r1
	mov r0, #7
	mov r3, #0x960
	bl ov4_02213CDC
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02214E04: .word Unk_ov4_0221F7AC
_02214E08: .word 0x000008F5
_02214E0C: .word 0x000008FB
_02214E10: .word ov4_022145B0
_02214E14: .word 0x0000091C
_02214E18: .word 0x00000925
_02214E1C: .word 0x0000092D
_02214E20: .word 0x00000935
_02214E24: .word 0x0000093C
_02214E28: .word ov4_02213F98
_02214E2C: .word 0x0000094A
_02214E30: .word 0x00000953
	arm_func_end ov4_02214B08

	.rodata


	.global Unk_ov4_02215E48
Unk_ov4_02215E48: ; 0x02215E48
	.incbin "incbin/overlay4_rodata.bin", 0x5E0, 0x5E8 - 0x5E0

	.global Unk_ov4_02215E50
Unk_ov4_02215E50: ; 0x02215E50
	.incbin "incbin/overlay4_rodata.bin", 0x5E8, 0x20



	.bss


	.global Unk_ov4_0221F7AC
Unk_ov4_0221F7AC: ; 0x0221F7AC
	.space 0x4

