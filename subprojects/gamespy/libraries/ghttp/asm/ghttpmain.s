	.include "macros/function.inc"
	.include "include/ghttpmain.inc"

	.extern Unk_ov60_02229E28

	.extern Unk_ov60_0222911C
	.extern Unk_ov60_02229120
	.text


	arm_func_start ghiHandleStatus
ghiHandleStatus: ; 0x02221390
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0xec]
	ldr r3, _02221448 ; =0x51EB851F
	mov r1, lr, lsr #0x1f
	smull r2, ip, r3, lr
	add ip, r1, ip, asr #5
	cmp ip, #5
	addls pc, pc, ip, lsl #2
	ldmia sp!, {r3, pc}
_022213B4: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _022213CC ; case 1
	b _022213CC ; case 2
	b _022213CC ; case 3
	b _022213D0 ; case 4
	b _0222143C ; case 5
_022213CC:
	ldmia sp!, {r3, pc}
_022213D0:
	sub r1, lr, #0x91
	sub r1, r1, #0x100
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _02221430
_022213E4: ; jump table
	b _0222140C ; case 0
	b _02221430 ; case 1
	b _02221418 ; case 2
	b _02221424 ; case 3
	b _02221430 ; case 4
	b _02221430 ; case 5
	b _02221430 ; case 6
	b _02221430 ; case 7
	b _02221430 ; case 8
	b _02221424 ; case 9
_0222140C:
	mov r1, #9
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_02221418:
	mov r1, #0xa
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_02221424:
	mov r1, #0xb
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_02221430:
	mov r1, #8
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_0222143C:
	mov r1, #0xc
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02221448: .word 0x51EB851F
	arm_func_end ghiHandleStatus

	arm_func_start ghiProcessConnection
ghiProcessConnection: ; 0x0222144C
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	bne _0222146C
	ldr r0, _022215A4 ; =0x02229280
	ldr r1, _022215A8 ; =0x0222928C
	ldr r2, _022215AC ; =0x02229268
	mov r3, #0x5b
	bl __msl_assertion_failed
_0222146C:
	ldr r0, [r4, #4]
	bl ghiRequestToConnection
	cmp r0, r4
	beq _02221490
	ldr r0, _022215B0 ; =0x02229298
	ldr r1, _022215A8 ; =0x0222928C
	ldr r2, _022215AC ; =0x02229268
	mov r3, #0x5c
	bl __msl_assertion_failed
_02221490:
	ldr r0, [r4, #0x12c]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #1
	str r0, [r4, #0x12c]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _022214BC
	mov r0, r4
	bl ghiDoHostLookup
_022214BC:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _022214D0
	mov r0, r4
	bl ghiDoConnecting
_022214D0:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _022214E4
	mov r0, r4
	bl ghiDoSecuringSession
_022214E4:
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bne _022214F8
	mov r0, r4
	bl ghiDoSendingRequest
_022214F8:
	ldr r0, [r4, #0x10]
	cmp r0, #4
	bne _0222150C
	mov r0, r4
	bl ghiDoPosting
_0222150C:
	ldr r0, [r4, #0x10]
	cmp r0, #5
	bne _02221520
	mov r0, r4
	bl ghiDoWaiting
_02221520:
	ldr r0, [r4, #0x10]
	cmp r0, #6
	bne _02221534
	mov r0, r4
	bl ghiDoReceivingStatus
_02221534:
	ldr r0, [r4, #0x10]
	cmp r0, #7
	bne _02221548
	mov r0, r4
	bl ghiDoReceivingHeaders
_02221548:
	ldr r0, [r4, #0x10]
	cmp r0, #8
	bne _0222155C
	mov r0, r4
	bl ghiDoReceivingFile
_0222155C:
	ldr r0, [r4, #0x108]
	cmp r0, #0
	beq _02221570
	mov r0, r4
	bl ghiRedirectConnection
_02221570:
	ldr r5, [r4, #0xfc]
	cmp r5, #0
	moveq r0, #0
	streq r0, [r4, #0x12c]
	beq _0222159C
	mov r0, r4
	bl ghiHandleStatus
	mov r0, r4
	bl ghiCallCompletedCallback
	mov r0, r4
	bl ghiFreeConnection
_0222159C:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022215A4: .word Unk_ov60_02229280
_022215A8: .word Unk_ov60_0222928C
_022215AC: .word Unk_ov60_02229268
_022215B0: .word Unk_ov60_02229298
	arm_func_end ghiProcessConnection

	arm_func_start ghttpStartup
ghttpStartup: ; 0x022215B4
	stmfd sp!, {r3, lr}
	bl ghiLock
	ldr r0, _022215FC ; =0x02229E3C
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	cmp r1, #1
	bne _022215F4
	bl ghiCreateLock
	ldr r0, _02221600 ; =0x0222911C
	mov r2, #0xfa
	ldr r1, _02221604 ; =0x02229120
	mov r3, #0x7d
	str r2, [r0, #0]
	str r3, [r1, #0]
	ldmia sp!, {r3, pc}
_022215F4:
	bl ghiUnlock
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022215FC: .word Unk_ov60_02229E3C
_02221600: .word Unk_ov60_0222911C
_02221604: .word Unk_ov60_02229120
	arm_func_end ghttpStartup

	arm_func_start ghttpCleanup
ghttpCleanup: ; 0x02221608
	stmfd sp!, {r3, lr}
	bl ghiLock
	ldr r0, _0222165C ; =0x02229E3C
	ldr r1, [r0, #0]
	subs r1, r1, #1
	str r1, [r0, #0]
	bne _02221654
	bl ghiCleanupConnections
	ldr r0, _02221660 ; =0x02229E28
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02221648
	bl DWCi_GsFree
	ldr r0, _02221660 ; =0x02229E28
	mov r1, #0
	str r1, [r0, #0]
_02221648:
	bl ghiUnlock
	bl ghiFreeLock
	ldmia sp!, {r3, pc}
_02221654:
	bl ghiUnlock
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222165C: .word Unk_ov60_02229E3C
_02221660: .word Unk_ov60_02229E28
	arm_func_end ghttpCleanup

	arm_func_start ghttpGetA
ghttpGetA: ; 0x02221664
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	mov ip, #0
	str ip, [sp]
	str ip, [sp, #4]
	str r1, [sp, #8]
	str ip, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r1, ip
	mov r2, ip
	mov r3, ip
	bl ghttpGetExA
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	arm_func_end ghttpGetA

	arm_func_start ghttpGetExA
ghttpGetExA: ; 0x022216A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r8, r0
	ldrnesb r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmpne r0, #0
	bne _022216D4
	ldr r0, _022218CC ; =0x022292D4
	ldr r1, _022218D0 ; =0x0222928C
	ldr r2, _022218D4 ; =0x0222925C
	mov r3, #0x128
	bl __msl_assertion_failed
_022216D4:
	cmp r5, #0
	bge _022216F0
	ldr r0, _022218D8 ; =0x022292E4
	ldr r1, _022218D0 ; =0x0222928C
	ldr r2, _022218D4 ; =0x0222925C
	ldr r3, _022218DC ; =0x00000129
	bl __msl_assertion_failed
_022216F0:
	cmp r6, #0
	beq _02221714
	cmp r5, #0
	bne _02221714
	ldr r0, _022218E0 ; =0x022292F4
	ldr r1, _022218D0 ; =0x0222928C
	ldr r2, _022218D4 ; =0x0222925C
	ldr r3, _022218E4 ; =0x0000012A
	bl __msl_assertion_failed
_02221714:
	cmp r8, #0
	ldrnesb r0, [r8]
	cmpne r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	beq _02221748
	cmp r5, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02221748:
	ldr r0, _022218E8 ; =0x02229E3C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0222175C
	bl ghttpStartup
_0222175C:
	bl ghiNewConnection
	movs r4, r0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	mov r0, r8
	str r1, [r4, #0xc]
	bl goastrdup
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _02221798
	mov r0, r4
	bl ghiFreeConnection
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221798:
	cmp r7, #0
	ldrnesb r0, [r7]
	cmpne r0, #0
	beq _022217CC
	mov r0, r7
	bl goastrdup
	str r0, [r4, #0x28]
	cmp r0, #0
	bne _022217CC
	mov r0, r4
	bl ghiFreeConnection
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022217CC:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r1, [r4, #0x13c]
	str r0, [r4, #0x30]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	str r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0x44]
	str r0, [r4, #0x134]
	cmp r6, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r4, #0xe0]
	cmp r0, #0
	beq _0222182C
	mov r0, r4
	mov r2, r6
	mov r3, r5
	add r1, r4, #0xbc
	bl ghiInitFixedBuffer
	b _02221840
_0222182C:
	mov r2, #0x800
	mov r0, r4
	mov r3, r2
	add r1, r4, #0xbc
	bl ghiInitBuffer
_02221840:
	cmp r0, #0
	bne _02221858
	mov r0, r4
	bl ghiFreeConnection
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221858:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02221884
	mov r0, r4
	bl ghiPostInitState
	cmp r0, #0
	bne _02221884
	mov r0, r4
	bl ghiFreeConnection
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221884:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _022218C4
	mov r0, r4
	bl ghiProcessConnection
	cmp r0, #0
	bne _022218BC
	mov r5, #0xa
_022218A4:
	mov r0, r5
	bl msleep
	mov r0, r4
	bl ghiProcessConnection
	cmp r0, #0
	beq _022218A4
_022218BC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022218C4:
	ldr r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022218CC: .word Unk_ov60_022292D4
_022218D0: .word Unk_ov60_0222928C
_022218D4: .word Unk_ov60_0222925C
_022218D8: .word Unk_ov60_022292E4
_022218DC: .word 0x00000129
_022218E0: .word Unk_ov60_022292F4
_022218E4: .word 0x0000012A
_022218E8: .word Unk_ov60_02229E3C
	arm_func_end ghttpGetExA

	arm_func_start ghttpThink
ghttpThink: ; 0x022218EC
	ldr ip, _022218F8 ; =ghiEnumConnections
	ldr r0, _022218FC ; =ghiProcessConnection
	bx ip
	; .align 2, 0
_022218F8: .word ghiEnumConnections
_022218FC: .word ghiProcessConnection
	arm_func_end ghttpThink

	.data


	.global Unk_ov60_0222925C
Unk_ov60_0222925C: ; 0x0222925C
	.incbin "incbin/overlay60_data.bin", 0x41C, 0x428 - 0x41C

	.global Unk_ov60_02229268
Unk_ov60_02229268: ; 0x02229268
	.incbin "incbin/overlay60_data.bin", 0x428, 0x440 - 0x428

	.global Unk_ov60_02229280
Unk_ov60_02229280: ; 0x02229280
	.incbin "incbin/overlay60_data.bin", 0x440, 0x44C - 0x440

	.global Unk_ov60_0222928C
Unk_ov60_0222928C: ; 0x0222928C
	.incbin "incbin/overlay60_data.bin", 0x44C, 0x458 - 0x44C

	.global Unk_ov60_02229298
Unk_ov60_02229298: ; 0x02229298
	.incbin "incbin/overlay60_data.bin", 0x458, 0x494 - 0x458

	.global Unk_ov60_022292D4
Unk_ov60_022292D4: ; 0x022292D4
	.incbin "incbin/overlay60_data.bin", 0x494, 0x4A4 - 0x494

	.global Unk_ov60_022292E4
Unk_ov60_022292E4: ; 0x022292E4
	.incbin "incbin/overlay60_data.bin", 0x4A4, 0x4B4 - 0x4A4

	.global Unk_ov60_022292F4
Unk_ov60_022292F4: ; 0x022292F4
	.incbin "incbin/overlay60_data.bin", 0x4B4, 0x16



	.bss


	.global Unk_ov60_02229E3C
Unk_ov60_02229E3C: ; 0x02229E3C
	.space 0x4

