	.include "macros/function.inc"
	.include "include/unk_02054BD0.inc"

	

	.text


	thumb_func_start sub_02054BD0
sub_02054BD0: ; 0x02054BD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r1, #0
	cmp r0, #0
	bne _02054BF0
	ldr r1, _02054BF4 ; =0x000080E2
	mov r0, #0xb
	bl sub_02018144
	str r0, [r5, #0x58]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x58]
	add r2, r4, #0
	bl sub_02054C18
_02054BF0:
	pop {r3, r4, r5, pc}
	nop
_02054BF4: .word 0x000080E2
	thumb_func_end sub_02054BD0

	thumb_func_start sub_02054BF8
sub_02054BF8: ; 0x02054BF8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x58]
	cmp r0, #0
	beq _02054C0A
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x58]
_02054C0A:
	pop {r4, pc}
	thumb_func_end sub_02054BF8

	thumb_func_start sub_02054C0C
sub_02054C0C: ; 0x02054C0C
	ldrb r0, [r1, r0]
	add r2, r1, #0
	add r2, #0xe2
	lsl r0, r0, #0xb
	add r0, r2, r0
	bx lr
	thumb_func_end sub_02054C0C

	thumb_func_start sub_02054C18
sub_02054C18: ; 0x02054C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #4]
	mov r2, #0
	add r1, sp, #0x18
	strb r2, [r1]
	bl sub_02039E10
	add r6, r0, #0
	ldr r0, [sp, #4]
	bl sub_02039E20
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _02054C78
	ldr r7, [sp, #0x14]
_02054C42:
	mov r5, #0
	cmp r6, #0
	ble _02054C6A
_02054C48:
	add r0, r5, r7
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02039DEC
	add r1, sp, #0x18
	add r1, #2
	add r2, sp, #0x18
	bl sub_02054CC4
	ldr r1, [sp, #8]
	add r5, r5, #1
	strb r0, [r1, r4]
	cmp r5, r6
	blt _02054C48
_02054C6A:
	ldr r0, [sp, #0x14]
	add r7, r7, r6
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x14]
	cmp r1, r0
	blt _02054C42
_02054C78:
	mov r0, #0x43
	mov r1, #0xb
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _02054CBA
	ldr r0, [sp, #8]
	add r4, sp, #0x18
	add r0, #0xe2
	add r4, #2
	add r5, r6, #0
	str r0, [sp, #8]
_02054C96:
	ldr r0, [sp, #8]
	lsl r1, r5, #1
	add r0, r0, r1
	str r0, [sp]
	ldrh r1, [r4]
	mov r2, #0x10
	add r0, r7, #0
	lsl r3, r2, #7
	bl sub_02006DC8
	mov r0, #1
	lsl r0, r0, #0xa
	add r5, r5, r0
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r0
	blt _02054C96
_02054CBA:
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02054C18

	thumb_func_start sub_02054CC4
sub_02054CC4: ; 0x02054CC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	ldrb r0, [r7]
	add r6, r1, #0
	mov r4, #0
	cmp r0, #0
	bls _02054CEA
_02054CD4:
	lsl r1, r4, #1
	ldrh r1, [r6, r1]
	cmp r5, r1
	bne _02054CE0
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02054CE0:
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r4, r0
	blo _02054CD4
_02054CEA:
	cmp r4, #0x10
	blo _02054CF2
	bl GF_AssertFail
_02054CF2:
	lsl r0, r4, #1
	strh r5, [r6, r0]
	ldrb r0, [r7]
	add r0, r0, #1
	strb r0, [r7]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02054CC4