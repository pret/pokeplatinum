	.include "macros/function.inc"
	.include "overlay018/ov18_02239D3C.inc"

	

	.text


	arm_func_start ov18_02239D3C
ov18_02239D3C: ; 0x02239D3C
	ldr r0, _02239D58 ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_02239D58: .word 0x027FFFA8
	arm_func_end ov18_02239D3C

	arm_func_start ov18_02239D5C
ov18_02239D5C: ; 0x02239D5C
	stmfd sp!, {r3, lr}
	ldr r0, _02239DB0 ; =0x02253344
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239DB8
	bl ov18_0222BC1C
	mov r0, #0x37
	sub r1, r0, #0x38
	mov r2, #0
	bl ov18_0222B594
	mov r0, #2
	bl ov18_0222B740
	mov r0, #0x24
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _02239DB4 ; =ov18_02239E60
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239DB0: .word Unk_ov18_02253344
_02239DB4: .word ov18_02239E60
	arm_func_end ov18_02239D5C

	arm_func_start ov18_02239DB8
ov18_02239DB8: ; 0x02239DB8
	stmfd sp!, {r3, lr}
	ldr r0, _02239E40 ; =0x0224A364
	ldr r1, _02239E44 ; =0x020C07EC
	bl ov18_0222B700
	ldr r0, _02239E48 ; =0x0224A37C
	ldr r1, _02239E4C ; =GX_LoadBGPltt
	bl ov18_0222B700
	ldr r0, _02239E50 ; =0x0224A394
	ldr r1, _02239E54 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _02239E58 ; =0x04001008
	ldr r1, _02239E5C ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239E40: .word 0x0224A364
_02239E44: .word 0x020C07EC
_02239E48: .word 0x0224A37C
_02239E4C: .word GX_LoadBGPltt
_02239E50: .word 0x0224A394
_02239E54: .word GX_LoadBG2Scr
_02239E58: .word 0x04001008
_02239E5C: .word 0x0400000A
	arm_func_end ov18_02239DB8

	arm_func_start ov18_02239E60
ov18_02239E60: ; 0x02239E60
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02239EB0 ; =ov18_02239EB4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239EB0: .word ov18_02239EB4
	arm_func_end ov18_02239E60

	arm_func_start ov18_02239EB4
ov18_02239EB4: ; 0x02239EB4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222FD3C
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _02239EF0 ; =ov18_02239EF4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239EF0: .word ov18_02239EF4
	arm_func_end ov18_02239EB4

	arm_func_start ov18_02239EF4
ov18_02239EF4: ; 0x02239EF4
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02239F18 ; =ov18_02239F1C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239F18: .word ov18_02239F1C
	arm_func_end ov18_02239EF4

	arm_func_start ov18_02239F1C
ov18_02239F1C: ; 0x02239F1C
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl OS_Sleep
	bl ov18_0223A100
	bl ov18_02239F3C
	bl ov18_02239F74
	bl ov18_02239F78
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02239F1C

	arm_func_start ov18_02239F3C
ov18_02239F3C: ; 0x02239F3C
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02239F5C
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
_02239F5C:
	bl ov18_02239D3C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02239F3C

	arm_func_start ov18_02239F74
ov18_02239F74: ; 0x02239F74
	bx lr
	arm_func_end ov18_02239F74

	arm_func_start ov18_02239F78
ov18_02239F78: ; 0x02239F78
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _02239FA0 ; =ov18_02239FA4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239FA0: .word ov18_02239FA4
	arm_func_end ov18_02239F78

	arm_func_start ov18_02239FA4
ov18_02239FA4: ; 0x02239FA4
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02239FC0 ; =ov18_02239FC4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239FC0: .word ov18_02239FC4
	arm_func_end ov18_02239FA4

	arm_func_start ov18_02239FC4
ov18_02239FC4: ; 0x02239FC4
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223A030 ; =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239FEC
	bl ov18_0222B004
_02239FEC:
	ldr r0, _0223A030 ; =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A010
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223A010:
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223A034 ; =ov18_0223A038
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A030: .word Unk_ov18_02253344
_0223A034: .word ov18_0223A038
	arm_func_end ov18_02239FC4

	arm_func_start ov18_0223A038
ov18_0223A038: ; 0x0223A038
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223A0F4 ; =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A06C
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_0223A06C:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _0223A0F4 ; =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A0A4
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_0223A0A4:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _0223A0F4 ; =0x02253344
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A0DC
	bl ov18_0222FDA8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223A0F8 ; =ov18_0223B3F4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223A0DC:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223A0FC ; =ov18_022392EC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A0F4: .word Unk_ov18_02253344
_0223A0F8: .word ov18_0223B3F4
_0223A0FC: .word ov18_022392EC
	arm_func_end ov18_0223A038

	arm_func_start ov18_0223A100
ov18_0223A100: ; 0x0223A100
	stmfd sp!, {r3, lr}
	bl ov18_0222FDCC
	cmp r0, #1
	beq _0223A11C
	cmp r0, #4
	beq _0223A134
	ldmia sp!, {r3, pc}
_0223A11C:
	ldr r1, _0223A178 ; =0x02253344
	mov r2, #1
	ldr r0, _0223A17C ; =ov18_02239FA4
	strb r2, [r1]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_0223A134:
	ldr r0, _0223A178 ; =0x02253344
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _0223A180 ; =ov18_0223A184
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A178: .word Unk_ov18_02253344
_0223A17C: .word ov18_02239FA4
_0223A180: .word ov18_0223A184
	arm_func_end ov18_0223A100

	arm_func_start ov18_0223A184
ov18_0223A184: ; 0x0223A184
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _0223A1AC ; =ov18_0223A1B0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A1AC: .word ov18_0223A1B0
	arm_func_end ov18_0223A184

	arm_func_start ov18_0223A1B0
ov18_0223A1B0: ; 0x0223A1B0
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0223A1CC ; =ov18_02239FA4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A1CC: .word ov18_02239FA4
	arm_func_end ov18_0223A1B0

	.data


	.global Unk_ov18_0224A364
Unk_ov18_0224A364: ; 0x0224A364
	.incbin "incbin/overlay18_data.bin", 0xC04, 0xC1C - 0xC04

	.global Unk_ov18_0224A37C
Unk_ov18_0224A37C: ; 0x0224A37C
	.incbin "incbin/overlay18_data.bin", 0xC1C, 0xC34 - 0xC1C

	.global Unk_ov18_0224A394
Unk_ov18_0224A394: ; 0x0224A394
	.incbin "incbin/overlay18_data.bin", 0xC34, 0x14



	.bss


	.global Unk_ov18_02253344
Unk_ov18_02253344: ; 0x02253344
	.space 0x4

