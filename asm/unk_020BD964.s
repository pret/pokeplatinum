	.include "macros/function.inc"
	.include "include/unk_020BD964.inc"

	

	.text


	arm_func_start FX_AtanIdx
FX_AtanIdx: ; 0x020BD964
	stmfd sp!, {r3, lr}
	cmp r0, #0
	blt _020BD9B8
	cmp r0, #0x1000
	ble _020BD99C
	bl FX_Inv
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	rsb r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
_020BD99C:
	movge r0, #0x2000
	ldmgeia sp!, {r3, pc}
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	ldmia sp!, {r3, pc}
_020BD9B8:
	mov r1, #0x1000
	rsb r1, r1, #0
	cmp r0, r1
	bge _020BD9F0
	rsb r0, r0, #0
	bl FX_Inv
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	sub r0, r0, #0x4000
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
_020BD9F0:
	movle r0, #0xe000
	ldmleia sp!, {r3, pc}
	rsb r0, r0, #0
	mov r1, r0, asr #5
	ldr r0, _020BDA1C ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	rsb r0, r0, #0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BDA1C: .word FX_AtanIdxTable_
	arm_func_end FX_AtanIdx

	arm_func_start FX_Atan2Idx
FX_Atan2Idx: ; 0x020BDA20
	stmfd sp!, {r4, lr}
	cmp r0, #0
	ble _020BDAB4
	cmp r1, #0
	ble _020BDA6C
	cmp r1, r0
	ble _020BDA4C
	mov r2, r0
	mov r4, #0
	mov r0, #1
	b _020BDB64
_020BDA4C:
	bge _020BDA64
	mov r2, r1
	mov r1, r0
	mov r4, #0x4000
	mov r0, #0
	b _020BDB64
_020BDA64:
	mov r0, #0x2000
	ldmia sp!, {r4, pc}
_020BDA6C:
	bge _020BDAAC
	rsb r1, r1, #0
	cmp r1, r0
	bge _020BDA90
	mov r2, r1
	mov r1, r0
	mov r4, #0x4000
	mov r0, #1
	b _020BDB64
_020BDA90:
	ble _020BDAA4
	mov r2, r0
	mov r4, #0x8000
	mov r0, #0
	b _020BDB64
_020BDAA4:
	mov r0, #0x6000
	ldmia sp!, {r4, pc}
_020BDAAC:
	mov r0, #0x4000
	ldmia sp!, {r4, pc}
_020BDAB4:
	bge _020BDB54
	cmp r1, #0
	rsb r0, r0, #0
	bge _020BDB08
	rsb r1, r1, #0
	cmp r1, r0
	ble _020BDAE4
	mov r4, #0x8000
	mov r2, r0
	rsb r4, r4, #0
	mov r0, #1
	b _020BDB64
_020BDAE4:
	bge _020BDB00
	mov r4, #0x4000
	mov r2, r1
	mov r1, r0
	rsb r4, r4, #0
	mov r0, #0
	b _020BDB64
_020BDB00:
	mov r0, #0xa000
	ldmia sp!, {r4, pc}
_020BDB08:
	cmp r1, #0
	ble _020BDB4C
	cmp r1, r0
	bge _020BDB30
	mov r4, #0x4000
	mov r2, r1
	mov r1, r0
	rsb r4, r4, #0
	mov r0, #1
	b _020BDB64
_020BDB30:
	ble _020BDB44
	mov r4, #0
	mov r2, r0
	mov r0, r4
	b _020BDB64
_020BDB44:
	mov r0, #0xe000
	ldmia sp!, {r4, pc}
_020BDB4C:
	mov r0, #0xc000
	ldmia sp!, {r4, pc}
_020BDB54:
	cmp r1, #0
	movge r0, #0
	movlt r0, #0x8000
	ldmia sp!, {r4, pc}
_020BDB64:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #0
	mov r0, r2
	beq _020BDBA0
	bl FX_Div
	mov r1, r0, asr #5
	ldr r0, _020BDBC4 ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	add r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
_020BDBA0:
	bl FX_Div
	mov r1, r0, asr #5
	ldr r0, _020BDBC4 ; =0x020FD83C
	mov r1, r1, lsl #1
	ldrsh r0, [r0, r1]
	sub r0, r4, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BDBC4: .word FX_AtanIdxTable_
	arm_func_end FX_Atan2Idx

	.rodata


	.global FX_AtanIdxTable_
FX_AtanIdxTable_: ; 0x020FD83C
	.incbin "incbin/arm9_rodata.bin", 0x18BFC, 0x102

