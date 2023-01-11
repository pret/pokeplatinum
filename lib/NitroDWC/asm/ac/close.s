	.include "macros/function.inc"
	.include "include/close.inc"

	

	.text


	arm_func_start ov4_021E70C8
ov4_021E70C8: ; 0x021E70C8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrb r0, [r4]
	cmp r0, #0xa
	bhi _021E7114
	bl ov4_021E7150
	cmp r0, #1
	bne _021E70F8
	mov r0, #0
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_021E70F8:
	mvn r1, #0
	cmp r0, r1
	bne _021E7148
	mov r0, #0x12
	strb r0, [r4]
	mov r0, #1
	ldmia sp!, {r4, pc}
_021E7114:
	cmp r0, #0xe
	bne _021E7130
	bl DWC_Netcheck_Abort
	bl DWC_Netcheck_Destroy
	mov r0, #0xc
	strb r0, [r4]
	b _021E7148
_021E7130:
	cmp r0, #0x12
	bhs _021E7148
	bl ov4_021E71E0
	cmp r0, #1
	moveq r0, #0xa
	streqb r0, [r4]
_021E7148:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E70C8

	arm_func_start ov4_021E7150
ov4_021E7150: ; 0x021E7150
	stmfd sp!, {r3, lr}
	bl WCM_GetPhase
	cmp r0, #0xc
	addls pc, pc, r0, lsl #2
	b _021E71D8
_021E7164: ; jump table
	b _021E7198 ; case 0
	b _021E71A0 ; case 1
	b _021E71D8 ; case 2
	b _021E71A8 ; case 3
	b _021E71D8 ; case 4
	b _021E71D8 ; case 5
	b _021E71B0 ; case 6
	b _021E71D8 ; case 7
	b _021E71D8 ; case 8
	b _021E71B8 ; case 9
	b _021E71D8 ; case 10
	b _021E71C8 ; case 11
	b _021E71C0 ; case 12
_021E7198:
	mov r0, #1
	ldmia sp!, {r3, pc}
_021E71A0:
	bl WCM_Finish
	b _021E71D8
_021E71A8:
	bl WCM_CleanupAsync
	b _021E71D8
_021E71B0:
	bl WCM_EndSearchAsync
	b _021E71D8
_021E71B8:
	bl WCM_DisconnectAsync
	b _021E71D8
_021E71C0:
	bl WCM_TerminateAsync
	b _021E71D8
_021E71C8:
	mov r0, #0
	bl ov4_021E63C0
	mvn r0, #0
	ldmia sp!, {r3, pc}
_021E71D8:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E7150

	arm_func_start ov4_021E71E0
ov4_021E71E0: ; 0x021E71E0
	stmfd sp!, {r3, lr}
	bl SOCL_CalmDown
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl SOC_Cleanup
	cmp r0, #0
	mvnne r1, #0x26
	cmpne r0, r1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E71E0