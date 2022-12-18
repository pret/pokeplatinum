	.include "macros/function.inc"
	.include "include/ov16_02268520.inc"

	

	.text


	thumb_func_start ov16_02268520
ov16_02268520: ; 0x02268520
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov16_0223E010
	str r0, [sp, #0x24]
	ldr r0, [r5, #4]
	bl ov16_0223E018
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	bl ov16_0223EC04
	add r7, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	ldrb r0, [r5, #9]
	bne _02268566
	lsl r1, r0, #1
	ldr r0, _02268614 ; =0x0227009C
	ldrh r3, [r0, r1]
	ldr r0, _02268618 ; =0x00004E2D
	mov r1, #0x80
	str r1, [sp, #0x1c]
	add r6, r0, #0
	mov r1, #0x81
	sub r6, #8
	str r1, [sp, #0x18]
	b _0226857A
_02268566:
	lsl r1, r0, #1
	ldr r0, _0226861C ; =0x0227006C
	ldrh r3, [r0, r1]
	ldr r0, _02268620 ; =0x00004E2E
	mov r1, #0x83
	str r1, [sp, #0x1c]
	add r6, r0, #0
	mov r1, #0x84
	sub r6, #8
	str r1, [sp, #0x18]
_0226857A:
	mov r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r2, r4, #0
	bl sub_0200CC3C
	ldr r0, [r5, #4]
	bl ov16_0223E064
	str r4, [sp]
	ldrb r1, [r5, #9]
	mov r2, #6
	add r3, r1, #0
	mul r3, r2
	ldr r2, _02268624 ; =0x02270134
	lsl r1, r7, #1
	add r2, r2, r3
	ldrh r1, [r1, r2]
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #1
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r1, _02268628 ; =0x00004E29
	str r1, [sp, #0x14]
	mov r1, #2
	bl sub_0200CDC4
	ldr r0, [r5, #4]
	bl ov16_0223E064
	mov r1, #0
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #0x70
	str r1, [sp, #8]
	ldrb r2, [r5, #9]
	mov r3, #6
	lsl r5, r7, #1
	mul r3, r2
	ldr r2, _02268624 ; =0x02270134
	mov r1, #0x1b
	add r2, r2, r3
	ldrh r2, [r5, r2]
	mov r3, #5
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x1c]
	add r2, r4, #0
	str r6, [sp, #4]
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x18]
	add r2, r4, #0
	str r6, [sp, #4]
	bl sub_0200CE54
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02268614: .word 0x0227009C
_02268618: .word 0x00004E2D
_0226861C: .word 0x0227006C
_02268620: .word 0x00004E2E
_02268624: .word 0x02270134
_02268628: .word 0x00004E29
	thumb_func_end ov16_02268520

	thumb_func_start ov16_0226862C
ov16_0226862C: ; 0x0226862C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov16_0223E010
	add r5, r0, #0
	ldr r0, [r4, #4]
	bl ov16_0223E018
	add r1, r0, #0
	add r0, r5, #0
	ldrb r3, [r4, #8]
	mov r2, #0x34
	ldr r5, _0226865C ; =0x022700CC
	mul r2, r3
	add r2, r5, r2
	bl sub_0200CE6C
	str r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	pop {r3, r4, r5, pc}
	nop
_0226865C: .word 0x022700CC
	thumb_func_end ov16_0226862C

	thumb_func_start ov16_02268660
ov16_02268660: ; 0x02268660
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02268672
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r4, #0]
_02268672:
	pop {r4, pc}
	thumb_func_end ov16_02268660

	thumb_func_start ov16_02268674
ov16_02268674: ; 0x02268674
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl ov16_0223E018
	add r4, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0226868A
	ldr r1, _022686B0 ; =0x00004E2D
	b _0226868C
_0226868A:
	ldr r1, _022686B4 ; =0x00004E2E
_0226868C:
	add r5, r1, #0
	add r0, r4, #0
	sub r5, #8
	bl sub_0200D070
	ldr r1, _022686B8 ; =0x00004E29
	add r0, r4, #0
	bl sub_0200D080
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200D090
	add r0, r4, #0
	add r1, r5, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022686B0: .word 0x00004E2D
_022686B4: .word 0x00004E2E
_022686B8: .word 0x00004E29
	thumb_func_end ov16_02268674

	thumb_func_start ov16_022686BC
ov16_022686BC: ; 0x022686BC
	push {r3, lr}
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022686C8
	bl sub_0200D3F4
_022686C8:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_022686BC

	thumb_func_start ov16_022686CC
ov16_022686CC: ; 0x022686CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x10
	add r7, r3, #0
	bl sub_020C4BB8
	str r4, [r5, #4]
	strb r6, [r5, #8]
	strb r7, [r5, #9]
	cmp r7, #0x18
	blt _022686F2
	bl sub_02022974
	mov r0, #0
	strb r0, [r5, #9]
_022686F2:
	add r0, r5, #0
	bl ov16_02268520
	add r0, r5, #0
	bl ov16_0226862C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_022686CC

	thumb_func_start ov16_02268700
ov16_02268700: ; 0x02268700
	push {r4, lr}
	add r4, r0, #0
	bl ov16_02268660
	add r0, r4, #0
	bl ov16_02268674
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020C4BB8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02268700

	.rodata


	.global Unk_ov16_0227006C
Unk_ov16_0227006C: ; 0x0227006C
	.incbin "incbin/overlay16_rodata.bin", 0x1E10, 0x1E40 - 0x1E10

	.global Unk_ov16_0227009C
Unk_ov16_0227009C: ; 0x0227009C
	.incbin "incbin/overlay16_rodata.bin", 0x1E40, 0x1E70 - 0x1E40

	.global Unk_ov16_022700CC
Unk_ov16_022700CC: ; 0x022700CC
	.incbin "incbin/overlay16_rodata.bin", 0x1E70, 0x1ED8 - 0x1E70

	.global Unk_ov16_02270134
Unk_ov16_02270134: ; 0x02270134
	.incbin "incbin/overlay16_rodata.bin", 0x1ED8, 0x90

