	.include "macros/function.inc"
	.include "overlay097/ov97_02232054.inc"

	

	.text


	thumb_func_start ov97_02232054
ov97_02232054: ; 0x02232054
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02232070 ; =0x0223D83C
	add r3, sp, #0
	mov r2, #5
_0223205E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223205E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02232070: .word 0x0223D83C
	thumb_func_end ov97_02232054

	thumb_func_start ov97_02232074
ov97_02232074: ; 0x02232074
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02232134 ; =0x0223D7BC
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02232138 ; =0x0223D7E8
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0223213C ; =0x0223D820
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02232140 ; =0x0223D804
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02232144 ; =0x0223D7CC
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02232134: .word 0x0223D7BC
_02232138: .word 0x0223D7E8
_0223213C: .word 0x0223D820
_02232140: .word 0x0223D804
_02232144: .word 0x0223D7CC
	thumb_func_end ov97_02232074

	thumb_func_start ov97_02232148
ov97_02232148: ; 0x02232148
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl sub_0202442C
	mov r1, #0
	ldr r4, [r5, #0x48]
	mvn r1, r1
	add r6, r0, #0
	cmp r4, r1
	bne _0223217C
	add r2, r5, #0
	add r2, #0x4c
	ldrh r2, [r2]
	lsr r1, r1, #0x10
	cmp r2, r1
	bne _0223217C
	bl sub_0202DABC
	add r0, r7, #0
	mov r1, #0
	bl sub_02024760
	mov r0, #0
	bl OS_ResetSystem
_0223217C:
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	cmp r1, #0x64
	blo _02232190
	cmp r1, #0x98
	bhi _02232190
	mov r0, #0x46
	lsl r0, r0, #6
	orr r4, r0
_02232190:
	cmp r4, #0
	bne _02232198
	mov r4, #0
	mvn r4, r4
_02232198:
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r4
	bne _022321A4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022321A4:
	add r0, r5, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022321C0
	add r0, r6, #0
	bl sub_0202DE2C
	cmp r0, #1
	bne _022321C0
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_022321C0:
	add r0, r5, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022321DC
	add r0, r6, #0
	bl sub_0202DD08
	cmp r0, #0
	bne _022321DC
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_022321DC:
	add r0, r6, #0
	bl sub_0202DCE0
	cmp r0, #0
	bne _022321EA
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_022321EA:
	add r5, #0x4e
	ldrb r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022321FA
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022321FA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02232148

	.rodata


	.global Unk_ov97_0223D7BC
Unk_ov97_0223D7BC: ; 0x0223D7BC
	.incbin "incbin/overlay97_rodata.bin", 0x148, 0x158 - 0x148

	.global Unk_ov97_0223D7CC
Unk_ov97_0223D7CC: ; 0x0223D7CC
	.incbin "incbin/overlay97_rodata.bin", 0x158, 0x174 - 0x158

	.global Unk_ov97_0223D7E8
Unk_ov97_0223D7E8: ; 0x0223D7E8
	.incbin "incbin/overlay97_rodata.bin", 0x174, 0x190 - 0x174

	.global Unk_ov97_0223D804
Unk_ov97_0223D804: ; 0x0223D804
	.incbin "incbin/overlay97_rodata.bin", 0x190, 0x1AC - 0x190

	.global Unk_ov97_0223D820
Unk_ov97_0223D820: ; 0x0223D820
	.incbin "incbin/overlay97_rodata.bin", 0x1AC, 0x1C8 - 0x1AC

	.global Unk_ov97_0223D83C
Unk_ov97_0223D83C: ; 0x0223D83C
	.incbin "incbin/overlay97_rodata.bin", 0x1C8, 0x28

