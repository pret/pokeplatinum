	.include "macros/function.inc"
	.include "include/sb_server.inc"

	.extern __lower_mapC

	.text


	arm_func_start RefStringHash
RefStringHash: ; 0x021FE0AC
	ldr ip, _021FE0B8 ; =StringHash
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_021FE0B8: .word StringHash
	arm_func_end RefStringHash

	arm_func_start RefStringCompare
RefStringCompare: ; 0x021FE0BC
	ldr ip, _021FE0CC ; =strcasecmp
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bx ip
	; .align 2, 0
_021FE0CC: .word strcasecmp
	arm_func_end RefStringCompare

	arm_func_start RefStringFree
RefStringFree: ; 0x021FE0D0
	ldr ip, _021FE0DC ; =DWCi_GsFree
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_021FE0DC: .word DWCi_GsFree
	arm_func_end RefStringFree

	arm_func_start SBRefStrHash
SBRefStrHash: ; 0x021FE0E0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _021FE134 ; =0x0221B750
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _021FE124
	ldr r0, _021FE138 ; =RefStringCompare
	ldr ip, _021FE13C ; =RefStringFree
	str r0, [sp]
	ldr r3, _021FE140 ; =RefStringHash
	mov r0, #8
	mov r1, #0x64
	mov r2, #2
	str ip, [sp, #4]
	bl TableNew2
	ldr r1, _021FE134 ; =0x0221B750
	str r0, [r1, #8]
_021FE124:
	ldr r0, _021FE134 ; =0x0221B750
	ldr r0, [r0, #8]
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FE134: .word Unk_ov4_0221B750
_021FE138: .word RefStringCompare
_021FE13C: .word RefStringFree
_021FE140: .word RefStringHash
	arm_func_end SBRefStrHash

	arm_func_start SBRefStrHashCleanup
SBRefStrHashCleanup: ; 0x021FE144
	stmfd sp!, {r3, lr}
	ldr r0, _021FE180 ; =0x0221B750
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl TableCount
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021FE180 ; =0x0221B750
	ldr r0, [r0, #8]
	bl TableFree
	ldr r0, _021FE180 ; =0x0221B750
	mov r1, #0
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FE180: .word Unk_ov4_0221B750
	arm_func_end SBRefStrHashCleanup

	arm_func_start SBServerFree
SBServerFree: ; 0x021FE184
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x18]
	bl TableFree
	mov r1, #0
	mov r0, r4
	str r1, [r4, #0x18]
	bl DWCi_GsFree
	ldmia sp!, {r4, pc}
	arm_func_end SBServerFree

	arm_func_start SBServerAddKeyValue
SBServerAddKeyValue: ; 0x021FE1A8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r2
	mov r0, #0
	bl SBRefStr
	str r0, [sp]
	mov r1, r4
	mov r0, #0
	bl SBRefStr
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	add r1, sp, #0
	bl TableEnter
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SBServerAddKeyValue

	arm_func_start SBServerAddIntKeyValue
SBServerAddIntKeyValue: ; 0x021FE1E8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	mov r5, r0
	ldr r1, _021FE21C ; =0x02219F7C
	add r0, sp, #0
	bl sprintf
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl SBServerAddKeyValue
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_021FE21C: .word Unk_ov4_02219F7C
	arm_func_end SBServerAddIntKeyValue

	arm_func_start SBServerGetStringValueA
SBServerGetStringValueA: ; 0x021FE220
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _021FE24C
	ldr r0, _021FE280 ; =0x02219F80
	ldr r1, _021FE284 ; =0x02219F88
	ldr r2, _021FE288 ; =0x02219F64
	mov r3, #0x97
	bl __msl_assertion_failed
_021FE24C:
	cmp r6, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	str r5, [sp]
	ldr r0, [r6, #0x18]
	add r1, sp, #0
	bl TableLookup
	cmp r0, #0
	ldrne r4, [r0, #4]
	mov r0, r4
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FE280: .word Unk_ov4_02219F80
_021FE284: .word Unk_ov4_02219F88
_021FE288: .word Unk_ov4_02219F64
	arm_func_end SBServerGetStringValueA

	arm_func_start SBServerGetIntValueA
SBServerGetIntValueA: ; 0x021FE28C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r6, r0
	ldr r1, _021FE314 ; =0x02219F94
	mov r0, r5
	mov r4, r2
	bl strcmp
	cmp r0, #0
	mov r0, r6
	bne _021FE2BC
	bl SBServerGetPing
	ldmia sp!, {r4, r5, r6, pc}
_021FE2BC:
	mov r1, r5
	mov r2, #0
	bl SBServerGetStringValueA
	cmp r0, #0
	beq _021FE304
	ldrb r2, [r0]
	cmp r2, #0
	blt _021FE2E4
	cmp r2, #0x80
	blt _021FE2EC
_021FE2E4:
	mov r1, #0
	b _021FE2FC
_021FE2EC:
	ldr r1, _021FE318 ; =0x020FE864
	mov r2, r2, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #8
_021FE2FC:
	cmp r1, #0
	bne _021FE30C
_021FE304:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_021FE30C:
	bl atoi
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FE314: .word Unk_ov4_02219F94
_021FE318: .word 0x020FE864
	arm_func_end SBServerGetIntValueA

	arm_func_start SBServerGetFloatValueA
SBServerGetFloatValueA: ; 0x021FE31C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r2
	mov r2, #0
	mov r4, r3
	bl SBServerGetStringValueA
	cmp r0, #0
	beq _021FE344
	bl atof
	mov r5, r0
	mov r4, r1
_021FE344:
	mov r0, r5
	mov r1, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SBServerGetFloatValueA

	arm_func_start SBServerGetPublicInetAddress
SBServerGetPublicInetAddress: ; 0x021FE350
	ldr r0, [r0, #0]
	bx lr
	arm_func_end SBServerGetPublicInetAddress

	arm_func_start SBServerGetPublicQueryPort
SBServerGetPublicQueryPort: ; 0x021FE358
	ldrh r0, [r0, #4]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end SBServerGetPublicQueryPort

	arm_func_start SBServerGetPublicQueryPortNBO
SBServerGetPublicQueryPortNBO: ; 0x021FE37C
	ldrh r0, [r0, #4]
	bx lr
	arm_func_end SBServerGetPublicQueryPortNBO

	arm_func_start SBServerHasPrivateAddress
SBServerHasPrivateAddress: ; 0x021FE384
	ldrb r0, [r0, #0x15]
	and r0, r0, #2
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end SBServerHasPrivateAddress

	arm_func_start SBServerGetPrivateInetAddress
SBServerGetPrivateInetAddress: ; 0x021FE39C
	ldr r0, [r0, #8]
	bx lr
	arm_func_end SBServerGetPrivateInetAddress

	arm_func_start SBServerGetPrivateQueryPort
SBServerGetPrivateQueryPort: ; 0x021FE3A4
	ldrh r0, [r0, #0xc]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end SBServerGetPrivateQueryPort

	arm_func_start SBServerSetNext
SBServerSetNext: ; 0x021FE3C8
	str r1, [r0, #0x20]
	bx lr
	arm_func_end SBServerSetNext

	arm_func_start SBServerGetNext
SBServerGetNext: ; 0x021FE3D0
	ldr r0, [r0, #0x20]
	bx lr
	arm_func_end SBServerGetNext

	arm_func_start CheckValidKey
CheckValidKey: ; 0x021FE3D8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	ldr r1, _021FE434 ; =0x02215C30
	add r4, sp, #0
	ldr r2, [r1, #0]
	ldr r1, [r1, #4]
	mov r6, r0
	str r2, [sp]
	str r1, [sp, #4]
	mov r5, #0
_021FE400:
	ldr r1, [r4, r5, lsl #2]
	mov r0, r6
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r5, r5, #1
	cmp r5, #2
	blo _021FE400
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FE434: .word Unk_ov4_02215C30
	arm_func_end CheckValidKey

	arm_func_start mytok
mytok: ; 0x021FE438
	cmp r0, #0
	ldrne r2, _021FE498 ; =0x0221B750
	strne r0, [r2]
	ldr r2, _021FE498 ; =0x0221B750
	ldr r0, [r2, #0]
	mov ip, r0
	b _021FE45C
_021FE454:
	add ip, ip, #1
	str ip, [r2]
_021FE45C:
	ldrsb r3, [ip]
	cmp r3, #0
	cmpne r3, r1
	bne _021FE454
	cmp ip, r0
	moveq r0, #0
	cmp r3, #0
	bxeq lr
	ldr r1, _021FE498 ; =0x0221B750
	mov r2, #0
	ldr r3, [r1, #0]
	strb r2, [ip]
	add r2, r3, #1
	str r2, [r1, #0]
	bx lr
	; .align 2, 0
_021FE498: .word Unk_ov4_0221B750
	arm_func_end mytok

	arm_func_start SBServerParseKeyVals
SBServerParseKeyVals: ; 0x021FE49C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	add r0, r1, #1
	mov r1, #0x5c
	bl mytok
	movs r8, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0
	mov fp, #0x5c
	ldr r5, _021FE518 ; =0x02219F9C
	mov r7, r4
	mov r6, fp
_021FE4CC:
	mov r0, r7
	mov r1, r6
	bl mytok
	movs sb, r0
	mov r0, r8
	moveq sb, r5
	bl CheckValidKey
	cmp r0, #0
	beq _021FE500
	mov r0, sl
	mov r1, r8
	mov r2, sb
	bl SBServerAddKeyValue
_021FE500:
	mov r0, r4
	mov r1, fp
	bl mytok
	movs r8, r0
	bne _021FE4CC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FE518: .word Unk_ov4_02219F9C
	arm_func_end SBServerParseKeyVals

	arm_func_start SBServerParseQR2FullKeys
SBServerParseQR2FullKeys: ; 0x021FE51C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x8c
	mov sl, r1
	ldrsb r1, [sl]
	mov fp, r0
	mov sb, r2
	cmp r1, #0
	beq _021FE59C
_021FE53C:
	mov r0, sl
	mov r1, sb
	bl NTSLengthSB
	cmp r0, #0
	addlt sp, sp, #0x8c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, sl
	sub sb, sb, r0
	add sl, sl, r0
	mov r0, sl
	mov r1, sb
	bl NTSLengthSB
	cmp r0, #0
	addlt sp, sp, #0x8c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, sl
	mov r1, r4
	add sl, sl, r0
	sub sb, sb, r0
	mov r0, fp
	bl SBServerAddKeyValue
	ldrsb r0, [sl]
	cmp r0, #0
	bne _021FE53C
_021FE59C:
	mov r0, #0
	add sl, sl, #1
	sub sb, sb, #1
	str r0, [sp]
_021FE5AC:
	cmp sb, #2
	addlt sp, sp, #0x8c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r1, [sl]
	ldrb r0, [sl, #1]
	add r2, sp, #8
	add sl, sl, #2
	strb r1, [r2]
	strb r0, [r2, #1]
	ldrh r0, [sp, #8]
	str sl, [sp, #4]
	sub sb, sb, #2
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #8]
	ldrsb r0, [sl]
	mov r5, #0
	cmp r0, #0
	beq _021FE63C
_021FE604:
	mov r0, sl
	mov r1, sb
	bl NTSLengthSB
	cmp r0, #0
	addlt sp, sp, #0x8c
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0x64
	addgt sp, sp, #0x8c
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r1, [sl, r0]!
	add r5, r5, #1
	sub sb, sb, r0
	cmp r1, #0
	bne _021FE604
_021FE63C:
	ldrh r0, [sp, #8]
	add sl, sl, #1
	sub sb, sb, #1
	cmp r0, #0
	mov r6, #0
	ble _021FE6D4
_021FE654:
	ldr r8, [sp, #4]
	mov r7, #0
	cmp r5, #0
	ble _021FE6C4
_021FE664:
	mov r0, sl
	mov r1, sb
	bl NTSLengthSB
	movs r4, r0
	addmi sp, sp, #0x8c
	ldmmiia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _021FE6F0 ; =0x02219FA0
	add r0, sp, #0xa
	mov r2, r8
	mov r3, r6
	bl sprintf
	mov r0, fp
	add r1, sp, #0xa
	mov r2, sl
	bl SBServerAddKeyValue
	mov r0, r8
	add sl, sl, r4
	sub sb, sb, r4
	bl strlen
	add r0, r0, #1
	add r7, r7, #1
	add r8, r8, r0
	cmp r7, r5
	blt _021FE664
_021FE6C4:
	ldrh r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	blt _021FE654
_021FE6D4:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #2
	blt _021FE5AC
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021FE6F0: .word Unk_ov4_02219FA0
	arm_func_end SBServerParseQR2FullKeys

	arm_func_start StringHash
StringHash: ; 0x021FE6F4
	stmfd sp!, {r3, lr}
	ldrsb lr, [r0]
	mov ip, #0
	cmp lr, #0
	beq _021FE734
	ldr r3, _021FE744 ; =0x020FE764
	ldr r2, _021FE748 ; =0x9CCF9319
_021FE710:
	cmp lr, #0
	blt _021FE724
	cmp lr, #0x80
	bge _021FE724
	ldrb lr, [r3, lr]
_021FE724:
	mla ip, r2, ip, lr
	ldrsb lr, [r0, #1]!
	cmp lr, #0
	bne _021FE710
_021FE734:
	mov r0, ip
	bl _u32_div_f
	mov r0, r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FE744: .word __lower_mapC
_021FE748: .word 0x9CCF9319
	arm_func_end StringHash

	arm_func_start KeyValFree
KeyValFree: ; 0x021FE74C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0]
	mov r0, #0
	bl SBReleaseStr
	ldr r1, [r4, #4]
	mov r0, #0
	bl SBReleaseStr
	ldmia sp!, {r4, pc}
	arm_func_end KeyValFree

	arm_func_start KeyValHashKey
KeyValHashKey: ; 0x021FE770
	ldr ip, _021FE77C ; =StringHash
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_021FE77C: .word StringHash
	arm_func_end KeyValHashKey

	arm_func_start KeyValCompareKey
KeyValCompareKey: ; 0x021FE780
	ldr ip, _021FE790 ; =strcasecmp
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bx ip
	; .align 2, 0
_021FE790: .word strcasecmp
	arm_func_end KeyValCompareKey

	arm_func_start SBServerGetPing
SBServerGetPing: ; 0x021FE794
	ldr r0, [r0, #0x1c]
	bx lr
	arm_func_end SBServerGetPing

	arm_func_start SBAllocServer
SBAllocServer: ; 0x021FE79C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r0, #0x24
	mov r6, r1
	mov r5, r2
	bl DWCi_GsMalloc
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, _021FE83C ; =KeyValCompareKey
	ldr ip, _021FE840 ; =KeyValFree
	str r1, [sp]
	mov r0, #8
	ldr r3, _021FE844 ; =KeyValHashKey
	mov r1, r0
	mov r2, #4
	str ip, [sp, #4]
	bl TableNew2
	str r0, [r4, #0x18]
	cmp r0, #0
	bne _021FE808
	mov r0, r4
	bl DWCi_GsFree
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021FE808:
	mov r1, #0
	strb r1, [r4, #0x14]
	strb r1, [r4, #0x15]
	str r1, [r4, #0x20]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x10]
	str r6, [r4, #0]
	strh r5, [r4, #4]
	str r1, [r4, #8]
	mov r0, r4
	strh r1, [r4, #0xc]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FE83C: .word KeyValCompareKey
_021FE840: .word KeyValFree
_021FE844: .word KeyValHashKey
	arm_func_end SBAllocServer

	arm_func_start SBServerSetFlags
SBServerSetFlags: ; 0x021FE848
	strb r1, [r0, #0x15]
	bx lr
	arm_func_end SBServerSetFlags

	arm_func_start SBServerSetPrivateAddr
SBServerSetPrivateAddr: ; 0x021FE850
	str r1, [r0, #8]
	strh r2, [r0, #0xc]
	bx lr
	arm_func_end SBServerSetPrivateAddr

	arm_func_start SBServerSetICMPIP
SBServerSetICMPIP: ; 0x021FE85C
	str r1, [r0, #0x10]
	bx lr
	arm_func_end SBServerSetICMPIP

	arm_func_start SBServerSetState
SBServerSetState: ; 0x021FE864
	strb r1, [r0, #0x14]
	bx lr
	arm_func_end SBServerSetState

	arm_func_start SBServerGetState
SBServerGetState: ; 0x021FE86C
	ldrb r0, [r0, #0x14]
	bx lr
	arm_func_end SBServerGetState

	arm_func_start SBIsNullServer
SBIsNullServer: ; 0x021FE874
	ldr r1, _021FE88C ; =0x0221B750
	ldr r1, [r1, #4]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	bx lr
	; .align 2, 0
_021FE88C: .word Unk_ov4_0221B750
	arm_func_end SBIsNullServer

	.rodata


	.global Unk_ov4_02215C30
Unk_ov4_02215C30: ; 0x02215C30
	.word Unk_ov4_02219F5C
	.word Unk_ov4_02219F54



	.data


	.global Unk_ov4_02219F54
Unk_ov4_02219F54: ; 0x02219F54
	.asciz "final"
	.space 0x2

	.global Unk_ov4_02219F5C
Unk_ov4_02219F5C: ; 0x02219F5C
	.asciz "queryid"

	.global Unk_ov4_02219F64
Unk_ov4_02219F64: ; 0x02219F64
	.asciz "SBServerGetStringValueA"

	.global Unk_ov4_02219F7C
Unk_ov4_02219F7C: ; 0x02219F7C
	.ascii "%d"
	.space 0x2

	.global Unk_ov4_02219F80
Unk_ov4_02219F80: ; 0x02219F80
	.ascii "server"
	.space 0x2

	.global Unk_ov4_02219F88
Unk_ov4_02219F88: ; 0x02219F88
	.asciz "sb_server.c"

	.global Unk_ov4_02219F94
Unk_ov4_02219F94: ; 0x02219F94
	.ascii "ping"
	.space 0x4

	.global Unk_ov4_02219F9C
Unk_ov4_02219F9C: ; 0x02219F9C
	.space 0x4

	.global Unk_ov4_02219FA0
Unk_ov4_02219FA0: ; 0x02219FA0
	.ascii "%s%d"
	.space 0x4



	.bss


	.global Unk_ov4_0221B750
Unk_ov4_0221B750: ; 0x0221B750
	.space 0x4

	.global Unk_ov4_0221B754
Unk_ov4_0221B754: ; 0x0221B754
	.space 0x4

	.global Unk_ov4_0221B758
Unk_ov4_0221B758: ; 0x0221B758
	.space 0x4

