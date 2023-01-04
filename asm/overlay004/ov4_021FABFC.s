	.include "macros/function.inc"
	.include "overlay004/ov4_021FABFC.inc"

	

	.text


	arm_func_start ov4_021FABFC
ov4_021FABFC: ; 0x021FABFC
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r2
	mov r5, r1
	bne _021FAC28
	ldr r2, _021FAC98 ; =0x0221B3B4
	ldr r3, _021FAC9C ; =0x0221B3B8
	ldr ip, [r2]
	mov r1, #0x16
	eor ip, ip, #1
	mla r4, ip, r1, r3
	str ip, [r2]
_021FAC28:
	cmp r0, #0
	beq _021FAC70
	str r0, [sp]
	cmp r5, #0
	beq _021FAC58
	bl ov4_022089F4
	mov r2, r0
	ldr r1, _021FACA0 ; =0x02219764
	mov r0, r4
	mov r3, r5
	bl sprintf
	b _021FAC90
_021FAC58:
	bl ov4_022089F4
	mov r2, r0
	ldr r1, _021FACA4 ; =0x0221976C
	mov r0, r4
	bl sprintf
	b _021FAC90
_021FAC70:
	cmp r5, #0
	moveq r0, #0
	streqb r0, [r4]
	beq _021FAC90
	ldr r1, _021FACA8 ; =0x02219770
	mov r0, r4
	mov r2, r5
	bl sprintf
_021FAC90:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FAC98: .word Unk_ov4_0221B3B4
_021FAC9C: .word Unk_ov4_0221B3B8
_021FACA0: .word 0x02219764
_021FACA4: .word 0x0221976C
_021FACA8: .word 0x02219770
	arm_func_end ov4_021FABFC

	arm_func_start ov4_021FACAC
ov4_021FACAC: ; 0x021FACAC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x104
	movs r8, r0
	mov r7, r1
	ldrnesb r1, [r8]
	mov r6, r2
	cmpne r1, #0
	moveq r4, #0
	moveq r5, r4
	beq _021FAE00
	mov r1, #0x3a
	bl strchr
	movs r5, r0
	moveq r5, #0
	beq _021FADBC
	cmp r5, r8
	moveq r8, #0
	moveq r4, r8
	beq _021FAD34
	sub sb, r5, r8
	cmp sb, #0x100
	blt _021FAD18
	ldr r0, _021FAE1C ; =0x02219774
	ldr r1, _021FAE20 ; =0x02219794
	ldr r2, _021FAE24 ; =0x02219750
	mov r3, #0x81
	bl __msl_assertion_failed
_021FAD18:
	add r0, sp, #0
	mov r1, r8
	mov r2, sb
	bl memcpy
	add r8, sp, #0
	mov r0, #0
	strb r0, [r8, sb]
_021FAD34:
	ldrsb r0, [r5, #1]
	add r3, r5, #1
	cmp r0, #0
	beq _021FAD8C
	ldr r1, _021FAE28 ; =0x020FE864
	mov r2, #0
_021FAD4C:
	cmp r0, #0
	blt _021FAD5C
	cmp r0, #0x80
	blt _021FAD64
_021FAD5C:
	mov r0, r2
	b _021FAD70
_021FAD64:
	mov r0, r0, lsl #1
	ldrh r0, [r1, r0]
	and r0, r0, #8
_021FAD70:
	cmp r0, #0
	addeq sp, sp, #0x104
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrsb r0, [r3, #1]!
	cmp r0, #0
	bne _021FAD4C
_021FAD8C:
	add r0, r5, #1
	bl atoi
	cmp r0, #0
	blt _021FADA8
	ldr r1, _021FAE2C ; =0x0000FFFF
	cmp r0, r1
	ble _021FADB4
_021FADA8:
	add sp, sp, #0x104
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FADB4:
	mov r0, r0, lsl #0x10
	mov r5, r0, lsr #0x10
_021FADBC:
	cmp r8, #0
	beq _021FAE00
	mov r0, r8
	bl ov4_021EAF1C
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	bne _021FAE00
	mov r0, r8
	bl ov4_0220854C
	cmp r0, #0
	addeq sp, sp, #0x104
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r4, [r0, #0]
_021FAE00:
	cmp r7, #0
	strne r4, [r7]
	cmp r6, #0
	strneh r5, [r6]
	mov r0, #1
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021FAE1C: .word 0x02219774
_021FAE20: .word 0x02219794
_021FAE24: .word 0x02219750
_021FAE28: .word 0x020FE864
_021FAE2C: .word 0x0000FFFF
	arm_func_end ov4_021FACAC

	arm_func_start ov4_021FAE30
ov4_021FAE30: ; 0x021FAE30
	stmfd sp!, {r4, lr}
	ldr r2, [r0, #0]
	mov r4, r1
	cmp r2, #0
	bne _021FAE58
	ldr r2, _021FAE7C ; =0x022197A4
	mov r1, #0
	str r2, [r0, #0]
	str r1, [r4, #0]
	ldmia sp!, {r4, pc}
_021FAE58:
	ldr r1, [r4, #0]
	mvn r0, #0
	cmp r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r2
	bl strlen
	add r0, r0, #1
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FAE7C: .word 0x022197A4
	arm_func_end ov4_021FAE30

	.data


	.global Unk_ov4_02219750
Unk_ov4_02219750: ; 0x02219750
	.incbin "incbin/overlay4_data.bin", 0x38D0, 0x38E4 - 0x38D0

	.global Unk_ov4_02219764
Unk_ov4_02219764: ; 0x02219764
	.incbin "incbin/overlay4_data.bin", 0x38E4, 0x38EC - 0x38E4

	.global Unk_ov4_0221976C
Unk_ov4_0221976C: ; 0x0221976C
	.incbin "incbin/overlay4_data.bin", 0x38EC, 0x38F0 - 0x38EC

	.global Unk_ov4_02219770
Unk_ov4_02219770: ; 0x02219770
	.incbin "incbin/overlay4_data.bin", 0x38F0, 0x38F4 - 0x38F0

	.global Unk_ov4_02219774
Unk_ov4_02219774: ; 0x02219774
	.incbin "incbin/overlay4_data.bin", 0x38F4, 0x3914 - 0x38F4

	.global Unk_ov4_02219794
Unk_ov4_02219794: ; 0x02219794
	.incbin "incbin/overlay4_data.bin", 0x3914, 0x3924 - 0x3914

	.global Unk_ov4_022197A4
Unk_ov4_022197A4: ; 0x022197A4
	.incbin "incbin/overlay4_data.bin", 0x3924, 0x1



	.bss


	.global Unk_ov4_0221B3B4
Unk_ov4_0221B3B4: ; 0x0221B3B4
	.space 0x4

	.global Unk_ov4_0221B3B8
Unk_ov4_0221B3B8: ; 0x0221B3B8
	.space 0x2C

