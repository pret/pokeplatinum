	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021D5600
ov21_021D5600: ; 0x021D5600
	ldr r3, _021D5604 ; =sub_020237BC
	bx r3
	; .align 2, 0
_021D5604: .word sub_020237BC
	thumb_func_end ov21_021D5600

	thumb_func_start ov21_021D5608
ov21_021D5608: ; 0x021D5608
	add r1, r0, #1
	ldr r0, _021D5614 ; =0x021E9CC4
	ldr r3, _021D5618 ; =sub_020986E8
	ldrb r0, [r0, r1]
	bx r3
	nop
_021D5614: .word 0x021E9CC4
_021D5618: .word sub_020986E8
	thumb_func_end ov21_021D5608

	thumb_func_start ov21_021D561C
ov21_021D561C: ; 0x021D561C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, r2, #0
	add r2, sp, #4
	str r2, [sp]
	add r2, sp, #0xc
	add r3, sp, #8
	add r5, r0, #0
	bl ov21_021D5764
	ldr r2, [sp, #4]
	cmp r2, #6
	bne _021D5642
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B32C
	add sp, #0x28
	pop {r4, r5, r6, pc}
_021D5642:
	ldr r6, _021D5668 ; =0x021E9CCC
	add r5, sp, #0x10
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	lsl r0, r2, #2
	ldr r1, [sp, #0xc]
	ldr r0, [r3, r0]
	add r2, r4, #0
	str r1, [sp, #4]
	bl ov21_021D5724
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D5668: .word 0x021E9CCC
	thumb_func_end ov21_021D561C

	thumb_func_start ov21_021D566C
ov21_021D566C: ; 0x021D566C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, r2, #0
	add r2, sp, #4
	str r2, [sp]
	add r2, sp, #0xc
	add r3, sp, #8
	add r5, r0, #0
	bl ov21_021D5764
	ldr r2, [sp, #4]
	cmp r2, #6
	bne _021D568C
	str r5, [sp, #4]
	ldr r0, _021D56B4 ; =0x000002C7
	b _021D56A6
_021D568C:
	ldr r6, _021D56B8 ; =0x021E9CE4
	add r5, sp, #0x10
	add r3, r5, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	lsl r0, r2, #2
	ldr r1, [sp, #0xc]
	ldr r0, [r3, r0]
	str r1, [sp, #4]
_021D56A6:
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov21_021D5724
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D56B4: .word 0x000002C7
_021D56B8: .word 0x021E9CE4
	thumb_func_end ov21_021D566C

	thumb_func_start ov21_021D56BC
ov21_021D56BC: ; 0x021D56BC
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, r2, #0
	add r2, sp, #4
	add r6, r3, #0
	str r2, [sp]
	add r2, sp, #0xc
	add r3, sp, #8
	add r5, r0, #0
	bl ov21_021D5764
	ldr r0, [sp, #4]
	cmp r0, #6
	bne _021D56E8
	cmp r4, #1
	blt _021D56E0
	bl sub_02022974
_021D56E0:
	add r0, r5, r4
	str r0, [sp, #4]
	ldr r0, _021D571C ; =0x000002C2
	b _021D570E
_021D56E8:
	ldr r3, _021D5720 ; =0x021E9CFC
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r4, #1
	blt _021D5700
	bl sub_02022974
_021D5700:
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	add r0, sp, #0x10
	ldr r0, [r0, r1]
	ldr r1, [sp, #0xc]
	add r1, r1, r4
	str r1, [sp, #4]
_021D570E:
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl ov21_021D5724
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D571C: .word 0x000002C2
_021D5720: .word 0x021E9CFC
	thumb_func_end ov21_021D56BC

	thumb_func_start ov21_021D5724
ov21_021D5724: ; 0x021D5724
	push {r4, r5, r6, lr}
	add r3, r0, #0
	add r5, r2, #0
	add r6, r1, #0
	add r2, r3, #0
	mov r0, #1
	mov r1, #0x1a
	add r3, r5, #0
	bl sub_0200B144
	add r4, r0, #0
	beq _021D575E
	mov r0, #1
	lsl r0, r0, #8
	add r1, r5, #0
	bl sub_02023790
	add r5, r0, #0
	beq _021D5754
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200B1B8
_021D5754:
	add r0, r4, #0
	bl sub_0200B190
	add r0, r5, #0
	pop {r4, r5, r6, pc}
_021D575E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D5724

	thumb_func_start ov21_021D5764
ov21_021D5764: ; 0x021D5764
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r5, r3, #0
	ldr r6, [sp, #0x18]
	bl sub_020986CC
	str r0, [r5, #0]
	cmp r0, #6
	blt _021D577E
	bl sub_02022974
_021D577E:
	str r7, [r4, #0]
	ldr r5, [r5, #0]
	cmp r5, #6
	blt _021D578A
	bl sub_02022974
_021D578A:
	cmp r5, #1
	bne _021D5790
	mov r5, #6
_021D5790:
	str r5, [r6, #0]
	ldr r1, [r4, #0]
	ldr r0, _021D57B0 ; =0x000001ED
	cmp r1, r0
	ble _021D57A2
	cmp r5, #6
	beq _021D57A2
	mov r0, #0
	b _021D57A4
_021D57A2:
	mov r0, #1
_021D57A4:
	cmp r0, #0
	bne _021D57AC
	bl sub_02022974
_021D57AC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D57B0: .word 0x000001ED
	thumb_func_end ov21_021D5764

	.rodata


	.global Unk_ov21_021E9CC4
Unk_ov21_021E9CC4: ; 0x021E9CC4
	.incbin "incbin/overlay21_rodata.bin", 0x1A0, 0x1A8 - 0x1A0

	.global Unk_ov21_021E9CCC
Unk_ov21_021E9CCC: ; 0x021E9CCC
	.incbin "incbin/overlay21_rodata.bin", 0x1A8, 0x1C0 - 0x1A8

	.global Unk_ov21_021E9CE4
Unk_ov21_021E9CE4: ; 0x021E9CE4
	.incbin "incbin/overlay21_rodata.bin", 0x1C0, 0x1D8 - 0x1C0

	.global Unk_ov21_021E9CFC
Unk_ov21_021E9CFC: ; 0x021E9CFC
	.incbin "incbin/overlay21_rodata.bin", 0x1D8, 0x18

