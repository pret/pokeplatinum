	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov70_0226CC74
ov70_0226CC74: ; 0x0226CC74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	bl ov70_02262E80
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp]
	add r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #4]
	bl ov70_0225CCB0
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl ov70_0225CCAC
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _0226CCAC
	b _0226CE46
_0226CCAC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226CCB8: ; jump table
	.short _0226CCC4 - _0226CCB8 - 2 ; case 0
	.short _0226CD9A - _0226CCB8 - 2 ; case 1
	.short _0226CDAA - _0226CCB8 - 2 ; case 2
	.short _0226CDDC - _0226CCB8 - 2 ; case 3
	.short _0226CDFC - _0226CCB8 - 2 ; case 4
	.short _0226CE32 - _0226CCB8 - 2 ; case 5
_0226CCC4:
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E3C
	add r6, r0, #0
	ldr r0, _0226CE50 ; =0x000005DC
	bl sub_02005748
	ldr r0, [sp, #8]
	mov r1, #6
	bl ov70_0225CD60
	bl ov63_0222C0AC
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	bl ov70_0225CDEC
	add r0, r7, #0
	mov r1, #0
	bl ov70_0225D030
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov70_0225D060
	ldr r0, [sp]
	bl ov66_0222E12C
	cmp r0, #0
	beq _0226CD26
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD26:
	ldr r0, [sp]
	bl ov66_0222E19C
	cmp r0, #1
	bne _0226CD50
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x58
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD50:
	ldr r0, [sp]
	bl ov66_0222E0DC
	cmp r0, #1
	bne _0226CD7A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x57
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD7A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x51
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #1
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD9A:
	add r0, r4, #0
	bl ov70_0225E164
	add r0, r5, #0
	mov r1, #2
	bl ov70_02262E88
	b _0226CE4A
_0226CDAA:
	add r0, r4, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _0226CDBC
	cmp r0, #1
	beq _0226CDCC
	cmp r0, #2
	b _0226CE4A
_0226CDBC:
	add r0, r5, #0
	mov r1, #3
	bl ov70_02262E88
	add r0, r4, #0
	bl ov70_0225E1F8
	b _0226CE4A
_0226CDCC:
	add r0, r5, #0
	mov r1, #4
	bl ov70_02262E88
	add r0, r4, #0
	bl ov70_0225E1F8
	b _0226CE4A
_0226CDDC:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	bl ov70_0225E20C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6, #0]
	add r0, r4, #0
	bl ov70_0225DF8C
	add r0, r5, #0
	mov r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CDFC:
	add r0, r4, #0
	bl ov70_0225DFEC
	add r0, r4, #0
	bl ov70_0225E1F8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #1
	bl ov70_0225CDEC
	add r0, r5, #0
	bl ov70_02262E64
	add r0, r7, #0
	mov r1, #1
	bl ov70_0225D030
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	mov r3, #1
	bl ov70_0225CDAC
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226CE32:
	add r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _0226CE4A
	ldr r1, [r6, #0]
	add r0, r5, #0
	bl ov70_02262E88
	b _0226CE4A
_0226CE46:
	bl sub_02022974
_0226CE4A:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226CE50: .word 0x000005DC
	thumb_func_end ov70_0226CC74