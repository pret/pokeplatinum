	.include "macros/function.inc"
	.include "include/unk_020D0FB4.inc"

	

	.text


	arm_func_start sub_020D0FB4
sub_020D0FB4: ; 0x020D0FB4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D1054 ; =0x021D01E0
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	str r1, [r0, #8]
	bl sub_020D0888
	ldr r0, _020D1054 ; =0x021D01E0
	mov r1, #0
	str r1, [r0, #0xc]
	bl sub_020C6350
	mov r5, #0xd
	mov r4, #1
_020D0FEC:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020D0FEC
	ldr r1, _020D1058 ; =sub_020D125C
	mov r0, #0xd
	bl sub_020C645C
	bl sub_020D1068
	mov r0, #0xd
	mov r1, #0
	bl sub_020C645C
	ldr r1, _020D105C ; =sub_020D1288
	mov r0, #0xd
	bl sub_020C645C
	ldr r1, _020D1054 ; =0x021D01E0
	mov r2, #0
	ldr r0, _020D1060 ; =0x021D02C0
	str r2, [r1, #0x18]
	bl sub_020D2D90
	ldr r1, _020D1064 ; =sub_020D12F8
	mov r0, #0x11
	bl sub_020C645C
	mov r0, #0
	bl sub_020D0F48
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D1054: .word 0x021D01E0
_020D1058: .word sub_020D125C
_020D105C: .word sub_020D1288
_020D1060: .word 0x021D02C0
_020D1064: .word sub_020D12F8
	arm_func_end sub_020D0FB4

	arm_func_start sub_020D1068
sub_020D1068: ; 0x020D1068
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r0, _020D1230 ; =0x021D01E0
	ldr r1, [r0, #0]
	cmp r1, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020D1234 ; =0x04000300
	mov r2, #1
	ldrh r1, [r1]
	str r2, [r0, #0]
	tst r1, #1
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x40000
	bl sub_020C15F0
	ldr r3, _020D1238 ; =0x04000208
	mov r2, #1
	ldrh r5, [r3]
	ldr r1, _020D123C ; =0x021D01C4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #2]
	add r1, sp, #8
	bl sub_020D0B8C
	ldr r1, _020D1240 ; =0x04000204
	add r0, sp, #0
	ldrh r1, [r1]
	and r1, r1, #0x8000
	mov r6, r1, asr #0xf
	bl sub_020D0B10
	ldr r3, _020D1240 ; =0x04000204
	ldr r0, _020D1244 ; =0x021D0200
	ldrh r2, [r3]
	add r0, r0, #0x80
	mov r1, #0x40
	bic r2, r2, #0x8000
	strh r2, [r3]
	bl sub_020C2C1C
	ldr r2, _020D1244 ; =0x021D0200
	ldr r1, _020D1248 ; =0x08000080
	mov r0, #1
	mov r3, #0x40
	add r2, r2, #0x80
	bl sub_020C43C4
	ldr r2, _020D1240 ; =0x04000204
	add r0, sp, #0
	ldrh r1, [r2]
	bic r1, r1, #0x8000
	orr r1, r1, r6, lsl #15
	strh r1, [r2]
	bl sub_020D0B58
	ldr r0, _020D123C ; =0x021D01C4
	add r1, sp, #8
	ldrh r0, [r0, #2]
	bl sub_020D0BE8
	ldr r1, _020D124C ; =0x027FFF9B
	ldrb r0, [r1]
	cmp r0, #0
	bne _020D1164
	ldrb r0, [r1, #-1]
	cmp r0, #0
	bne _020D11C8
_020D1164:
	ldr r3, _020D1244 ; =0x021D0200
	ldr r6, _020D1250 ; =0x027FFC30
	ldrh r0, [r3, #0xbe]
	mov r2, #0
	strh r0, [r6]
	b _020D1190
_020D117C:
	add r0, r3, r2
	ldrb r1, [r0, #0xb5]
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #2]
_020D1190:
	cmp r2, #3
	blt _020D117C
	ldrh r0, [r3, #0xb0]
	strh r0, [r6, #6]
	ldr r0, [r3, #0xac]
	str r0, [r6, #8]
	bl sub_020D0A04
	cmp r0, #0
	movne r2, #1
	ldr r1, _020D124C ; =0x027FFF9B
	moveq r2, #0
	mov r0, #1
	strb r2, [r1]
	strb r0, [r1, #-1]
_020D11C8:
	ldr r0, _020D1254 ; =0xFFFF0020
	ldr r1, _020D1258 ; =0x021D0204
	mov r2, #0x9c
	bl sub_020C4B68
	bl sub_020C2BE8
	ldr r0, _020D1244 ; =0x021D0200
	add r0, r0, #-0x2000000
	mov r0, r0, lsr #5
	mov r0, r0, lsl #6
	orr r0, r0, #1
	bl sub_020D0C0C
	mov r7, #1
	ldr r6, _020D123C ; =0x021D01C4
	b _020D1208
_020D1200:
	mov r0, r7
	bl sub_02000522
_020D1208:
	ldrh r0, [r6]
	cmp r0, #1
	bne _020D1200
	ldr r2, _020D1238 ; =0x04000208
	mov r0, r4
	ldrh r1, [r2]
	strh r5, [r2]
	bl sub_020C15F0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D1230: .word 0x021D01E0
_020D1234: .word 0x04000300
_020D1238: .word 0x04000208
_020D123C: .word 0x021D01C4
_020D1240: .word 0x04000204
_020D1244: .word 0x021D0200
_020D1248: .word 0x08000080
_020D124C: .word 0x027FFF9B
_020D1250: .word 0x027FFC30
_020D1254: .word 0xFFFF0020
_020D1258: .word 0x021D0204
	arm_func_end sub_020D1068

	arm_func_start sub_020D125C
sub_020D125C: ; 0x020D125C
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #1
	bne _020D127C
	ldr r0, _020D1284 ; =0x021D01C4
	mov r1, #1
	strh r1, [r0]
	ldmia sp!, {r3, pc}
_020D127C:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1284: .word 0x021D01C4
	arm_func_end sub_020D125C

	arm_func_start sub_020D1288
sub_020D1288: ; 0x020D1288
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _020D12D8
	ldr r0, _020D12E0 ; =0x021D01E0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	mov r0, #0
	cmp r1, #0
	beq _020D12BC
	blx r1
_020D12BC:
	cmp r0, #0
	beq _020D12C8
	bl sub_020D12E4
_020D12C8:
	ldr r0, _020D12E0 ; =0x021D01E0
	mov r1, #1
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
_020D12D8:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D12E0: .word 0x021D01E0
	arm_func_end sub_020D1288

	arm_func_start sub_020D12E4
sub_020D12E4: ; 0x020D12E4
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl sub_020D0C0C
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D12E4

	arm_func_start sub_020D12F8
sub_020D12F8: ; 0x020D12F8
	ldr r0, _020D1308 ; =0x021D01E0
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020D1308: .word 0x021D01E0
	arm_func_end sub_020D12F8

	.bss


	.global Unk_021D01E0
Unk_021D01E0: ; 0x021D01E0
	.space 0x4

	.global Unk_021D01E4
Unk_021D01E4: ; 0x021D01E4
	.space 0x4

	.global Unk_021D01E8
Unk_021D01E8: ; 0x021D01E8
	.space 0x4

	.global Unk_021D01EC
Unk_021D01EC: ; 0x021D01EC
	.space 0x4

	.global Unk_021D01F0
Unk_021D01F0: ; 0x021D01F0
	.space 0x4

	.global Unk_021D01F4
Unk_021D01F4: ; 0x021D01F4
	.space 0x4

	.global Unk_021D01F8
Unk_021D01F8: ; 0x021D01F8
	.space 0x8

	.global Unk_021D0200
Unk_021D0200: ; 0x021D0200
	.space 0xC0

	.global Unk_021D02C0
Unk_021D02C0: ; 0x021D02C0
	.space 0xE8

