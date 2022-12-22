	.include "macros/function.inc"

	

	.text


	arm_func_start strlen
strlen: ; 0x020D8B60
	mvn r2, #0
_020D8B64:
	ldrsb r1, [r0], #1
	add r2, r2, #1
	cmp r1, #0
	bne _020D8B64
	mov r0, r2
	bx lr
	arm_func_end strlen

	arm_func_start strcpy
strcpy: ; 0x020D8B7C
	stmfd sp!, {r3, r4, r5, lr}
	and r4, r1, #3
	and r3, r0, #3
	mov r2, r0
	cmp r3, r4
	bne _020D8C18
	cmp r4, #0
	beq _020D8BD4
	ldrb r3, [r1]
	strb r3, [r0]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	rsbs r4, r4, #3
	beq _020D8BCC
_020D8BB4:
	ldrb r3, [r1, #1]!
	cmp r3, #0
	strb r3, [r2, #1]!
	ldmeqia sp!, {r3, r4, r5, pc}
	subs r4, r4, #1
	bne _020D8BB4
_020D8BCC:
	add r2, r2, #1
	add r1, r1, #1
_020D8BD4:
	ldr r5, [r1, #0]
	ldr r3, _020D8C3C ; =0xFEFEFEFF
	mvn r4, r5
	add lr, r5, r3
	ldr ip, _020D8C40 ; =0x80808080
	and r4, lr, r4
	tst r4, ip
	bne _020D8C18
	sub r2, r2, #4
_020D8BF8:
	str r5, [r2, #4]!
	ldr r5, [r1, #4]!
	add r4, r5, r3
	mvn lr, r5
	and lr, r4, lr
	tst lr, ip
	beq _020D8BF8
	add r2, r2, #4
_020D8C18:
	ldrb r3, [r1]
	strb r3, [r2]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020D8C28:
	ldrb r3, [r1, #1]!
	cmp r3, #0
	strb r3, [r2, #1]!
	bne _020D8C28
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D8C3C: .word 0xFEFEFEFF
_020D8C40: .word 0x80808080
	arm_func_end strcpy

	arm_func_start strncpy
strncpy: ; 0x020D8C44
	stmfd sp!, {r3, lr}
	mov lr, r0
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
_020D8C54:
	ldrsb r3, [r1], #1
	mov ip, lr
	strb r3, [lr], #1
	ldrsb r3, [ip]
	cmp r3, #0
	bne _020D8C88
	subs r2, r2, #1
	ldmeqia sp!, {r3, pc}
	mov r1, #0
_020D8C78:
	strb r1, [lr], #1
	subs r2, r2, #1
	bne _020D8C78
	ldmia sp!, {r3, pc}
_020D8C88:
	subs r2, r2, #1
	bne _020D8C54
	ldmia sp!, {r3, pc}
	arm_func_end strncpy

	arm_func_start strcat
strcat: ; 0x020D8C94
	mov r3, r0
_020D8C98:
	ldrsb r2, [r3], #1
	cmp r2, #0
	bne _020D8C98
	sub r3, r3, #1
_020D8CA8:
	ldrsb r2, [r1], #1
	mov ip, r3
	strb r2, [r3], #1
	ldrsb r2, [ip]
	cmp r2, #0
	bne _020D8CA8
	bx lr
	arm_func_end strcat

	arm_func_start strncat
strncat: ; 0x020D8CC4
	stmfd sp!, {r3, lr}
	mov ip, r0
_020D8CCC:
	ldrsb r3, [ip], #1
	cmp r3, #0
	bne _020D8CCC
	cmp r2, #0
	sub ip, ip, #1
	beq _020D8D08
_020D8CE4:
	ldrsb r3, [r1], #1
	mov lr, ip
	strb r3, [ip], #1
	ldrsb r3, [lr]
	cmp r3, #0
	subeq ip, ip, #1
	beq _020D8D08
	subs r2, r2, #1
	bne _020D8CE4
_020D8D08:
	mov r1, #0
	strb r1, [ip]
	ldmia sp!, {r3, pc}
	arm_func_end strncat

	arm_func_start strcmp
strcmp: ; 0x020D8D14
	stmfd sp!, {r4, lr}
	ldrb r2, [r0]
	ldrb r3, [r1]
	subs r3, r2, r3
	movne r0, r3
	ldmneia sp!, {r4, pc}
	and r4, r0, #3
	and r3, r1, #3
	cmp r3, r4
	bne _020D8DF0
	cmp r4, #0
	beq _020D8D88
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	rsbs r4, r4, #3
	beq _020D8D80
_020D8D58:
	ldrb r3, [r0, #1]!
	ldrb r2, [r1, #1]!
	subs r2, r3, r2
	movne r0, r2
	ldmneia sp!, {r4, pc}
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	subs r4, r4, #1
	bne _020D8D58
_020D8D80:
	add r0, r0, #1
	add r1, r1, #1
_020D8D88:
	ldr r2, [r0, #0]
	ldr r3, _020D8E20 ; =0xFEFEFEFF
	mvn r4, r2
	add lr, r2, r3
	ldr ip, _020D8E24 ; =0x80808080
	and r4, lr, r4
	tst r4, ip
	ldr r4, [r1, #0]
	bne _020D8DDC
	cmp r2, r4
	bne _020D8DD0
_020D8DB4:
	ldr r2, [r0, #4]!
	ldr r4, [r1, #4]!
	add lr, r2, r3
	tst lr, ip
	bne _020D8DDC
	cmp r2, r4
	beq _020D8DB4
_020D8DD0:
	sub r0, r0, #1
	sub r1, r1, #1
	b _020D8DF0
_020D8DDC:
	ldrb r2, [r0]
	ldrb r3, [r1]
	subs r3, r2, r3
	movne r0, r3
	ldmneia sp!, {r4, pc}
_020D8DF0:
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_020D8DFC:
	ldrb r3, [r0, #1]!
	ldrb r2, [r1, #1]!
	subs r2, r3, r2
	movne r0, r2
	ldmneia sp!, {r4, pc}
	cmp r3, #0
	bne _020D8DFC
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D8E20: .word 0xFEFEFEFF
_020D8E24: .word 0x80808080
	arm_func_end strcmp

	arm_func_start strncmp
strncmp: ; 0x020D8E28
	cmp r2, #0
	beq _020D8E54
_020D8E30:
	ldrb ip, [r1], #1
	ldrb r3, [r0], #1
	cmp r3, ip
	subne r0, r3, ip
	bxne lr
	cmp r3, #0
	beq _020D8E54
	subs r2, r2, #1
	bne _020D8E30
_020D8E54:
	mov r0, #0
	bx lr
	arm_func_end strncmp

	arm_func_start strchr
strchr: ; 0x020D8E5C
	ldrsb r2, [r0], #1
	mov r1, r1, lsl #0x18
	mov r1, r1, asr #0x18
	cmp r2, #0
	beq _020D8E88
_020D8E70:
	cmp r2, r1
	subeq r0, r0, #1
	bxeq lr
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _020D8E70
_020D8E88:
	cmp r1, #0
	movne r0, #0
	subeq r0, r0, #1
	bx lr
	arm_func_end strchr

	arm_func_start strcspn
strcspn: ; 0x020D8E98
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	add ip, sp, #0
	mov r3, #8
	mov r2, #0
_020D8EAC:
	strb r2, [ip]
	strb r2, [ip, #1]
	strb r2, [ip, #2]
	strb r2, [ip, #3]
	add ip, ip, #4
	subs r3, r3, #1
	bne _020D8EAC
	ldrb r3, [r1]
	add r4, r1, #1
	cmp r3, #0
	beq _020D8F08
	add lr, sp, #0
	mov r2, #1
_020D8EE0:
	and ip, r3, #0xff
	and r1, r3, #7
	mov r1, r2, lsl r1
	ldrb r3, [lr, ip, asr #3]
	and r1, r1, #0xff
	orr r1, r3, r1
	strb r1, [lr, ip, asr #3]
	ldrb r3, [r4], #1
	cmp r3, #0
	bne _020D8EE0
_020D8F08:
	ldrb r1, [r0]
	add r4, r0, #1
	cmp r1, #0
	beq _020D8F48
	add ip, sp, #0
	mov r2, #1
_020D8F20:
	and r3, r1, #0xff
	and r1, r1, #7
	mov r1, r2, lsl r1
	ldrb r3, [ip, r3, asr #3]
	and r1, r1, #0xff
	tst r3, r1
	bne _020D8F48
	ldrb r1, [r4], #1
	cmp r1, #0
	bne _020D8F20
_020D8F48:
	sub r0, r4, r0
	sub r0, r0, #1
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	arm_func_end strcspn

	arm_func_start strtok
strtok: ; 0x020D8F58
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x20
	add ip, sp, #0
	mov r3, #8
	mov r2, #0
_020D8F6C:
	strb r2, [ip]
	strb r2, [ip, #1]
	strb r2, [ip, #2]
	strb r2, [ip, #3]
	add ip, ip, #4
	subs r3, r3, #1
	bne _020D8F6C
	cmp r0, #0
	ldrne r2, _020D90AC ; =0x02101820
	add lr, r1, #1
	strne r0, [r2, #4]
	ldrb r0, [r1]
	cmp r0, #0
	beq _020D8FD4
	add ip, sp, #0
	mov r1, #1
_020D8FAC:
	and r3, r0, #0xff
	and r0, r0, #7
	mov r0, r1, lsl r0
	ldrb r2, [ip, r3, asr #3]
	and r0, r0, #0xff
	orr r0, r2, r0
	strb r0, [ip, r3, asr #3]
	ldrb r0, [lr], #1
	cmp r0, #0
	bne _020D8FAC
_020D8FD4:
	ldr r0, _020D90AC ; =0x02101820
	ldr r0, [r0, #4]
	ldrb r4, [r0]
	add r1, r0, #1
	cmp r4, #0
	beq _020D9018
	add ip, sp, #0
	mov r2, #1
_020D8FF4:
	and r3, r4, #0xff
	and r0, r4, #7
	mov r0, r2, lsl r0
	ldrb r3, [ip, r3, asr #3]
	and r0, r0, #0xff
	tst r3, r0
	ldrneb r4, [r1], #1
	cmpne r4, #0
	bne _020D8FF4
_020D9018:
	cmp r4, #0
	bne _020D9038
	ldr r1, _020D90AC ; =0x02101820
	add sp, sp, #0x20
	ldr r2, [r1, #0]
	mov r0, #0
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}
_020D9038:
	sub r0, r1, #1
	ldrb r4, [r1], #1
	cmp r4, #0
	beq _020D9078
	add lr, sp, #0
	mov r3, #1
_020D9050:
	and ip, r4, #0xff
	and r2, r4, #7
	mov r2, r3, lsl r2
	ldrb ip, [lr, ip, asr #3]
	and r2, r2, #0xff
	tst ip, r2
	bne _020D9078
	ldrb r4, [r1], #1
	cmp r4, #0
	bne _020D9050
_020D9078:
	cmp r4, #0
	bne _020D9094
	ldr r1, _020D90AC ; =0x02101820
	add sp, sp, #0x20
	ldr r2, [r1, #0]
	str r2, [r1, #4]
	ldmia sp!, {r4, pc}
_020D9094:
	ldr r2, _020D90AC ; =0x02101820
	mov r3, #0
	str r1, [r2, #4]
	strb r3, [r1, #-1]
	add sp, sp, #0x20
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D90AC: .word 0x02101820
	arm_func_end strtok

	arm_func_start strstr
strstr: ; 0x020D90B0
	stmfd sp!, {r4, lr}
	cmp r1, #0
	ldrneb r2, [r1]
	cmpne r2, #0
	ldmeqia sp!, {r4, pc}
	ldrb r3, [r0]
	add r4, r0, #1
	cmp r3, #0
	beq _020D9114
_020D90D4:
	cmp r3, r2
	bne _020D9108
	mov lr, r4
	add ip, r1, #1
_020D90E4:
	ldrb r3, [ip], #1
	ldrb r0, [lr], #1
	cmp r0, r3
	bne _020D90FC
	cmp r0, #0
	bne _020D90E4
_020D90FC:
	cmp r3, #0
	subeq r0, r4, #1
	ldmeqia sp!, {r4, pc}
_020D9108:
	ldrb r3, [r4], #1
	cmp r3, #0
	bne _020D90D4
_020D9114:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end strstr

	.data


	.global Unk_0210181C
Unk_0210181C: ; 0x0210181C
	.incbin "incbin/arm9_data.bin", 0x2B3C, 0x2B40 - 0x2B3C

	.global Unk_02101820
Unk_02101820: ; 0x02101820
	.incbin "incbin/arm9_data.bin", 0x2B40, 0x2B44 - 0x2B40

	.global Unk_02101824
Unk_02101824: ; 0x02101824
	.incbin "incbin/arm9_data.bin", 0x2B44, 0x4

