	.include "macros/function.inc"
	.include "include/ov17_0224F080.inc"

	

	.text


	thumb_func_start ov17_0224F080
ov17_0224F080: ; 0x0224F080
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #5
	blo _0224F08C
	bl GF_AssertFail
_0224F08C:
	ldr r0, _0224F094 ; =0x02254A90
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	; .align 2, 0
_0224F094: .word 0x02254A90
	thumb_func_end ov17_0224F080

	thumb_func_start ov17_0224F098
ov17_0224F098: ; 0x0224F098
	mov r0, #0x31
	bx lr
	thumb_func_end ov17_0224F098

	thumb_func_start ov17_0224F09C
ov17_0224F09C: ; 0x0224F09C
	mov r0, #0x32
	bx lr
	thumb_func_end ov17_0224F09C

	thumb_func_start ov17_0224F0A0
ov17_0224F0A0: ; 0x0224F0A0
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #5
	blo _0224F0AC
	bl GF_AssertFail
_0224F0AC:
	ldr r0, _0224F0B4 ; =0x02254A88
	ldrb r0, [r0, r4]
	pop {r4, pc}
	nop
_0224F0B4: .word 0x02254A88
	thumb_func_end ov17_0224F0A0

	thumb_func_start ov17_0224F0B8
ov17_0224F0B8: ; 0x0224F0B8
	mov r0, #0x2e
	bx lr
	thumb_func_end ov17_0224F0B8

	thumb_func_start ov17_0224F0BC
ov17_0224F0BC: ; 0x0224F0BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r3, #0
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov17_0224F0B8
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl ov17_0224F080
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r4, [sp, #4]
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200CBDC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov17_0224F0BC

	thumb_func_start ov17_0224F0F0
ov17_0224F0F0: ; 0x0224F0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov17_0224F0B8
	str r0, [sp, #8]
	bl ov17_0224F098
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	str r6, [sp, #4]
	bl sub_0200CE0C
	bl ov17_0224F0B8
	add r6, r0, #0
	bl ov17_0224F09C
	add r3, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	str r7, [sp, #4]
	bl sub_0200CE3C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224F0F0

	thumb_func_start ov17_0224F138
ov17_0224F138: ; 0x0224F138
	ldr r3, _0224F13C ; =sub_0200D070
	bx r3
	; .align 2, 0
_0224F13C: .word sub_0200D070
	thumb_func_end ov17_0224F138

	thumb_func_start ov17_0224F140
ov17_0224F140: ; 0x0224F140
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl sub_0200D090
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov17_0224F140

	thumb_func_start ov17_0224F154
ov17_0224F154: ; 0x0224F154
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r3, #0
	add r4, r0, #0
	add r7, r1, #0
	add r5, sp, #0
	mov r3, #6
_0224F162:
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	sub r3, r3, #1
	bne _0224F162
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	add r0, r2, #0
	bl ov17_0224F0A0
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	add r2, sp, #0
	bl sub_0200CE6C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov17_0224F154

	thumb_func_start ov17_0224F184
ov17_0224F184: ; 0x0224F184
	ldr r3, _0224F188 ; =sub_0200D0F4
	bx r3
	; .align 2, 0
_0224F188: .word sub_0200D0F4
	thumb_func_end ov17_0224F184

	.rodata


	.global Unk_ov17_02254A88
Unk_ov17_02254A88: ; 0x02254A88
	.incbin "incbin/overlay17_rodata.bin", 0x1CFC, 0x1D04 - 0x1CFC

	.global Unk_ov17_02254A90
Unk_ov17_02254A90: ; 0x02254A90
	.incbin "incbin/overlay17_rodata.bin", 0x1D04, 0x14

