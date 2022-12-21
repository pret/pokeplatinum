	.include "macros/function.inc"
	.include "include/unk_020D50B8.inc"

	

	.text


	arm_func_start sub_020D50B8
sub_020D50B8: ; 0x020D50B8
	mov ip, r0
	cmp r2, #0
	bxeq lr
_020D50C4:
	ldrsb r3, [r1], #1
	subs r2, r2, #1
	strb r3, [ip], #1
	bne _020D50C4
	bx lr
	arm_func_end sub_020D50B8

	arm_func_start sub_020D50D8
sub_020D50D8: ; 0x020D50D8
	cmp r1, r0
	blo _020D5100
	mov ip, r0
	cmp r2, #0
	bxeq lr
_020D50EC:
	ldrsb r3, [r1], #1
	subs r2, r2, #1
	strb r3, [ip], #1
	bne _020D50EC
	bx lr
_020D5100:
	cmp r2, #0
	add r3, r1, r2
	add ip, r0, r2
	bxeq lr
_020D5110:
	ldrsb r1, [r3, #-1]!
	subs r2, r2, #1
	strb r1, [ip, #-1]!
	bne _020D5110
	bx lr
	arm_func_end sub_020D50D8

	arm_func_start sub_020D5124
sub_020D5124: ; 0x020D5124
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020D51D0
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020D5124

	arm_func_start sub_020D5138
sub_020D5138: ; 0x020D5138
	cmp r2, #0
	and r3, r1, #0xff
	beq _020D515C
_020D5144:
	ldrb r1, [r0], #1
	cmp r1, r3
	subeq r0, r0, #1
	bxeq lr
	subs r2, r2, #1
	bne _020D5144
_020D515C:
	mov r0, #0
	bx lr
	arm_func_end sub_020D5138

	arm_func_start sub_020D5164
sub_020D5164: ; 0x020D5164
	cmp r2, #0
	and r3, r1, #0xff
	add r0, r0, r2
	beq _020D5188
_020D5174:
	ldrb r1, [r0, #-1]!
	cmp r1, r3
	bxeq lr
	subs r2, r2, #1
	bne _020D5174
_020D5188:
	mov r0, #0
	bx lr
	arm_func_end sub_020D5164

	arm_func_start sub_020D5190
sub_020D5190: ; 0x020D5190
	cmp r2, #0
	beq _020D51C8
_020D5198:
	ldrb ip, [r0], #1
	ldrb r3, [r1], #1
	cmp ip, r3
	beq _020D51C0
	ldrb r2, [r0, #-1]
	ldrb r0, [r1, #-1]
	cmp r2, r0
	mvnlo r0, #0
	movhs r0, #1
	bx lr
_020D51C0:
	subs r2, r2, #1
	bne _020D5198
_020D51C8:
	mov r0, #0
	bx lr
	arm_func_end sub_020D5190