	.include "macros/function.inc"
	.include "include/unk_0202EEC0.inc"

	

	.text


	thumb_func_start sub_0202EEC0
sub_0202EEC0: ; 0x0202EEC0
	ldr r0, _0202EEC4 ; =0x00000688
	bx lr
	; .align 2, 0
_0202EEC4: .word 0x00000688
	thumb_func_end sub_0202EEC0

	thumb_func_start sub_0202EEC8
sub_0202EEC8: ; 0x0202EEC8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, _0202EF00 ; =0x00000688
	mov r0, #0
	add r1, r5, #0
	bl sub_020C4BB8
	mov r4, #0
	mov r6, #0xac
	add r7, r4, #0
_0202EEDC:
	add r0, r5, #0
	bl sub_02073C2C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074470
	cmp r0, #0
	beq _0202EEF4
	bl sub_02022974
_0202EEF4:
	add r4, r4, #1
	add r5, #0xec
	cmp r4, #6
	blt _0202EEDC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202EF00: .word 0x00000688
	thumb_func_end sub_0202EEC8

	thumb_func_start sub_0202EF04
sub_0202EF04: ; 0x0202EF04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r2, _0202EF3C ; =0x00000588
	mov r0, #0
	add r1, r5, #0
	bl sub_020C4BB8
	mov r4, #0
	mov r6, #0xac
	add r7, r4, #0
_0202EF18:
	add r0, r5, #0
	bl sub_02073C2C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02074470
	cmp r0, #0
	beq _0202EF30
	bl sub_02022974
_0202EF30:
	add r4, r4, #1
	add r5, #0xec
	cmp r4, #6
	blt _0202EF18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202EF3C: .word 0x00000588
	thumb_func_end sub_0202EF04

	thumb_func_start sub_0202EF40
sub_0202EF40: ; 0x0202EF40
	push {r4, r5, r6, r7}
	add r2, r0, #0
	ldr r3, _0202EF98 ; =0x00000588
	mov r0, #0
	add r5, r2, #0
_0202EF4A:
	ldr r4, [r5, r3]
	cmp r1, r4
	beq _0202EF94
	add r0, r0, #1
	add r5, r5, #4
	cmp r0, #0x14
	blt _0202EF4A
	ldr r1, _0202EF98 ; =0x00000588
	mov r0, #0
	add r4, r2, #0
_0202EF5E:
	ldr r3, [r4, r1]
	cmp r3, #0
	beq _0202EF94
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, #0x14
	blt _0202EF5E
	mov r3, #0
	ldr r4, _0202EF9C ; =0x7FFFFFFF
	add r5, r3, #0
_0202EF72:
	ldr r0, _0202EFA0 ; =0x000005D8
	ldr r1, [r2, r0]
	add r0, r0, #4
	ldr r0, [r2, r0]
	sub r6, r1, r4
	mov ip, r0
	mov r6, ip
	sbc r6, r3
	bge _0202EF8A
	add r4, r1, #0
	add r3, r0, #0
	add r7, r5, #0
_0202EF8A:
	add r5, r5, #1
	add r2, #8
	cmp r5, #0x14
	blt _0202EF72
	add r0, r7, #0
_0202EF94:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0202EF98: .word 0x00000588
_0202EF9C: .word 0x7FFFFFFF
_0202EFA0: .word 0x000005D8
	thumb_func_end sub_0202EF40

	thumb_func_start sub_0202EFA4
sub_0202EFA4: ; 0x0202EFA4
	add r3, r0, #0
	add r0, r1, #0
	mov r1, #0xec
	mul r1, r2
	add r1, r3, r1
	ldr r3, _0202EFB4 ; =sub_020774C8
	bx r3
	nop
_0202EFB4: .word sub_020774C8
	thumb_func_end sub_0202EFA4

	thumb_func_start sub_0202EFB8
sub_0202EFB8: ; 0x0202EFB8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202EF40
	add r6, r0, #0
	lsl r0, r6, #2
	add r1, r5, r0
	ldr r0, _0202EFF4 ; =0x00000588
	str r4, [r1, r0]
	bl sub_020138EC
	lsl r2, r6, #3
	add r3, r5, r2
	ldr r2, _0202EFF8 ; =0x000005D8
	str r0, [r3, r2]
	add r0, r2, #4
	str r1, [r3, r0]
	bl sub_020C4040
	ldr r2, _0202EFFC ; =0x00000678
	str r0, [r5, r2]
	add r0, r2, #4
	add r2, #8
	str r1, [r5, r0]
	add r0, r5, r2
	bl sub_020C3FA0
	pop {r4, r5, r6, pc}
	nop
_0202EFF4: .word 0x00000588
_0202EFF8: .word 0x000005D8
_0202EFFC: .word 0x00000678
	thumb_func_end sub_0202EFB8

	thumb_func_start sub_0202F000
sub_0202F000: ; 0x0202F000
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #6
	blt _0202F010
	bl sub_02022974
_0202F010:
	mov r0, #0xec
	mul r0, r5
	add r3, r6, r0
	mov r2, #0x1d
_0202F018:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0202F018
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202F000

	thumb_func_start sub_0202F028
sub_0202F028: ; 0x0202F028
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	mov r7, #0xac
_0202F032:
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0202F042
	add r4, r4, #1
_0202F042:
	add r6, r6, #1
	add r5, #0xec
	cmp r6, #6
	blt _0202F032
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202F028

	thumb_func_start sub_0202F050
sub_0202F050: ; 0x0202F050
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020138EC
	ldr r1, _0202F080 ; =0x00000588
	mov r3, #0
	add r6, r5, #0
_0202F060:
	ldr r2, [r6, r1]
	cmp r4, r2
	bne _0202F072
	lsl r1, r3, #3
	add r2, r5, r1
	ldr r1, _0202F084 ; =0x000005D8
	ldr r1, [r2, r1]
	sub r0, r0, r1
	pop {r4, r5, r6, pc}
_0202F072:
	add r3, r3, #1
	add r6, r6, #4
	cmp r3, #0x14
	blt _0202F060
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0202F080: .word 0x00000588
_0202F084: .word 0x000005D8
	thumb_func_end sub_0202F050

	thumb_func_start sub_0202F088
sub_0202F088: ; 0x0202F088
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020C3FA0
	mov r0, #0x1a
	mov r3, #0
	add r5, sp, #0
	lsl r0, r0, #6
_0202F09C:
	add r1, r4, r3
	ldrb r2, [r5]
	ldrb r1, [r1, r0]
	cmp r2, r1
	beq _0202F0AC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, pc}
_0202F0AC:
	add r3, r3, #1
	add r5, r5, #1
	cmp r3, #6
	blt _0202F09C
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202F088

	thumb_func_start sub_0202F0BC
sub_0202F0BC: ; 0x0202F0BC
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C4040
	ldr r2, _0202F0DC ; =0x00000678
	ldr r3, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	eor r0, r3
	eor r1, r2
	orr r0, r1
	bne _0202F0D8
	mov r0, #1
	pop {r4, pc}
_0202F0D8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0202F0DC: .word 0x00000678
	thumb_func_end sub_0202F0BC

	thumb_func_start sub_0202F0E0
sub_0202F0E0: ; 0x0202F0E0
	push {r3, r4}
	mov r4, #0
	mov r1, #0x1a
	add r3, r4, #0
	lsl r1, r1, #6
_0202F0EA:
	add r2, r0, r3
	ldrb r2, [r2, r1]
	add r3, r3, #1
	orr r4, r2
	cmp r3, #6
	blt _0202F0EA
	cmp r4, #0
	bne _0202F100
	mov r0, #1
	pop {r3, r4}
	bx lr
_0202F100:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202F0E0