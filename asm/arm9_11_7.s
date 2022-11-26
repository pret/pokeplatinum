
	.include "macros/function.inc"
	.include "global.inc"

	.text

	arm_func_start sub_020C4F40
sub_020C4F40: ; 0x020C4F40
	.word 0xE1010090
	bx lr
	arm_func_end sub_020C4F40

	arm_func_start sub_020C4F48
sub_020C4F48: ; 0x020C4F48
	stmfd sp!, {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0], #4
	mov r2, r5, lsr #8
	mov r7, #0
	tst r5, #0xf
	bne _020C4F64
	b _020C4F68
_020C4F64:
	mov r7, #1
_020C4F68:
	cmp r2, #0
	ble _020C5040
	ldrb lr, [r0], #1
	mov r4, #8
_020C4F78:
	subs r4, r4, #1
	blt _020C4F68
	tst lr, #0x80
	bne _020C4F9C
	ldrb r6, [r0], #1
	.word 0xE1416096
	add r1, r1, #1
	sub r2, r2, #1
	b _020C5028
_020C4F9C:
	ldrb r5, [r0]
	cmp r7, #0
	beq _020C4FAC
	b _020C4FB0
_020C4FAC:
	mov r6, #3
_020C4FB0:
	beq _020C4FF4
	tst r5, #0xe0
	bne _020C4FC0
	b _020C4FC4
_020C4FC0:
	mov r6, #1
_020C4FC4:
	bne _020C4FF4
	add r0, r0, #1
	and r6, r5, #0xf
	mov r6, r6, lsl #4
	tst r5, #0x10
	beq _020C4FEC
	mov r6, r6, lsl #8
	ldrb r5, [r0], #1
	add r6, r6, r5, lsl #4
	add r6, r6, #0x100
_020C4FEC:
	add r6, r6, #0x11
	ldrb r5, [r0]
_020C4FF4:
	add r3, r6, r5, asr #4
	add r0, r0, #1
	and r5, r5, #0xf
	mov ip, r5, lsl #8
	ldrb r6, [r0], #1
	orr r5, r6, ip
	add ip, r5, #1
	sub r2, r2, r3
_020C5014:
	ldrb r5, [r1, -ip]
	.word 0xE1415095
	add r1, r1, #1
	subs r3, r3, #1
	bgt _020C5014
_020C5028:
	cmp r2, #0
	bgt _020C5034
	b _020C5038
_020C5034:
	mov lr, lr, lsl #1
_020C5038:
	bgt _020C4F78
	b _020C4F68
_020C5040:
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_020C4F48

	arm_func_start sub_020C5048
sub_020C5048: ; 0x020C5048
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	mov r6, r0
	mov r7, r3
	mvn r1, #0
	mov r4, r2
	bl sub_020C4670
	mov r0, r6
	mov r1, r5
	mov r2, r7
	mov r3, #0x1000000
	bl sub_020C46F4
	cmp r7, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, r6, lsl #1
	add r0, r0, #2
	mov r0, r0, lsl #2
	add r0, r0, #0xb0
	add r1, r0, #0x4000000
_020C5094:
	ldr r0, [r1, #0]
	tst r0, #-0x80000000
	bne _020C5094
	ldr r3, _020C50B8 ; =0xAF000001
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_01FF8480
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C50B8: .word 0xAF000001
	arm_func_end sub_020C5048

	arm_func_start sub_020C50BC
sub_020C50BC: ; 0x020C50BC
	stmfd sp!, {r3, lr}
	mov r0, #3
	bl sub_020C42C4
	mov r0, #0
	bl sub_020C45F4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C50BC

	arm_func_start sub_020C50D4
sub_020C50D4: ; 0x020C50D4
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #1
	str r2, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C50D4

	arm_func_start sub_020C50F4
sub_020C50F4: ; 0x020C50F4
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #2
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C50F4

	arm_func_start sub_020C511C
sub_020C511C: ; 0x020C511C
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #3
	str r2, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C511C

	arm_func_start sub_020C513C
sub_020C513C: ; 0x020C513C
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #4
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C513C

	arm_func_start sub_020C515C
sub_020C515C: ; 0x020C515C
	ldr ip, _020C5170 ; =sub_020C54EC
	mov r2, r1
	mov r1, #0x1a
	mov r3, #2
	bx ip
	; .align 2, 0
_020C5170: .word sub_020C54EC
	arm_func_end sub_020C515C

	arm_func_start sub_020C5174
sub_020C5174: ; 0x020C5174
	ldr ip, _020C5188 ; =sub_020C54EC
	mov r2, r1
	mov r1, #6
	mov r3, #2
	bx ip
	; .align 2, 0
_020C5188: .word sub_020C54EC
	arm_func_end sub_020C5174

	arm_func_start sub_020C518C
sub_020C518C: ; 0x020C518C
	ldr ip, _020C51A0 ; =sub_020C54EC
	mov r2, r1
	mov r1, #4
	mov r3, #1
	bx ip
	; .align 2, 0
_020C51A0: .word sub_020C54EC
	arm_func_end sub_020C518C

	arm_func_start sub_020C51A4
sub_020C51A4: ; 0x020C51A4
	stmfd sp!, {r3, lr}
	mov r3, r2
	mov ip, #2
	mov r2, #0xc
	str ip, [sp]
	bl sub_020C5514
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C51A4

	arm_func_start sub_020C51C0
sub_020C51C0: ; 0x020C51C0
	stmfd sp!, {r3, lr}
	mov r3, r2
	mov ip, #1
	mov r2, #9
	str ip, [sp]
	bl sub_020C5514
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C51C0

	arm_func_start sub_020C51DC
sub_020C51DC: ; 0x020C51DC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0
	mov r1, r0
	mov r2, lr
	mov r0, #9
	str ip, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C51DC

	arm_func_start sub_020C5204
sub_020C5204: ; 0x020C5204
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0xc
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5204

	arm_func_start sub_020C522C
sub_020C522C: ; 0x020C522C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r2
	mov sb, r0
	mov r8, r1
	mov r6, r3
	mov r5, r7
	mov r4, #0
	b _020C5264
_020C524C:
	tst r5, #1
	beq _020C525C
	mov r0, r4
	bl sub_020C5D20
_020C525C:
	add r4, r4, #1
	mov r5, r5, lsr #1
_020C5264:
	cmp r4, #8
	bge _020C5274
	cmp r5, #0
	bne _020C524C
_020C5274:
	mov r1, sb
	mov r2, r8
	mov r3, r7
	mov r0, #0xd
	str r6, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020C522C

	arm_func_start sub_020C5290
sub_020C5290: ; 0x020C5290
	stmfd sp!, {r3, lr}
	mov r1, r1, lsl #0x1e
	orr r0, r1, r0, lsl #31
	ldr ip, [sp, #8]
	mov r1, r2
	orr r0, r0, ip, lsl #29
	ldr r2, [sp, #0xc]
	mov lr, #0
	orr r0, r0, r2, lsl #28
	ldr ip, [sp, #0x10]
	mov r2, r3
	orr r3, r0, ip, lsl #27
	mov r0, #0x11
	str lr, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5290

	arm_func_start sub_020C52D0
sub_020C52D0: ; 0x020C52D0
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	mov r5, r1
	ldr r2, [sp, #0x18]
	mov r6, r0
	mov r1, r3
	bl sub_020C5D40
	str r0, [sp]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	mov r0, #0x12
	bl sub_020C553C
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end sub_020C52D0

	arm_func_start sub_020C5310
sub_020C5310: ; 0x020C5310
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1a
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5310

	arm_func_start sub_020C5330
sub_020C5330: ; 0x020C5330
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1b
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5330

	arm_func_start sub_020C5350
sub_020C5350: ; 0x020C5350
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x13
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5350

	arm_func_start sub_020C5370
sub_020C5370: ; 0x020C5370
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0
	mov r1, r0
	mov r2, lr
	mov r0, #0x14
	str ip, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5370

	arm_func_start sub_020C5398
sub_020C5398: ; 0x020C5398
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x15
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5398

	arm_func_start sub_020C53B8
sub_020C53B8: ; 0x020C53B8
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, [sp, #0x1c]
	mov r1, r1, lsl #0x18
	orr r4, r1, r3, lsl #26
	ldr r5, [sp, #0x24]
	mov r1, ip, lsl #0x16
	ldr r3, [sp, #0x18]
	ldr ip, [sp, #0x10]
	orr r4, r4, r5, lsl #16
	orr r4, ip, r4
	ldr lr, [sp, #0x20]
	orr r3, r1, r3, lsl #24
	ldr ip, [sp, #0x14]
	orr r1, r0, lr, lsl #16
	orr r3, ip, r3
	mov r0, #0xe
	str r4, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C53B8

	arm_func_start sub_020C5404
sub_020C5404: ; 0x020C5404
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1e
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5404

	arm_func_start sub_020C5424
sub_020C5424: ; 0x020C5424
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x1f
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5424

	arm_func_start sub_020C5444
sub_020C5444: ; 0x020C5444
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov r3, #0
	mov r1, r0
	mov r0, #0x20
	str r3, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5444

	arm_func_start sub_020C5464
sub_020C5464: ; 0x020C5464
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #0x17
	str r2, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5464

	arm_func_start sub_020C5484
sub_020C5484: ; 0x020C5484
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0x19
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5484

	arm_func_start sub_020C54AC
sub_020C54AC: ; 0x020C54AC
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r1, r0
	mov r3, r2
	mov r0, #0x18
	str r2, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C54AC

	arm_func_start sub_020C54CC
sub_020C54CC: ; 0x020C54CC
	stmfd sp!, {r3, lr}
	mov r2, #0
	mov r0, #0x18
	mov r3, r2
	sub r1, r0, #0x19
	str r2, [sp]
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C54CC

	arm_func_start sub_020C54EC
sub_020C54EC: ; 0x020C54EC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #6
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C54EC

	arm_func_start sub_020C5514
sub_020C5514: ; 0x020C5514
	stmfd sp!, {r3, lr}
	ldr ip, [sp, #8]
	mov lr, r2
	str r3, [sp]
	mov r2, r1
	orr r1, r0, ip, lsl #24
	mov r3, lr
	mov r0, #7
	bl sub_020C553C
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C5514

	arm_func_start sub_020C553C
sub_020C553C: ; 0x020C553C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #1
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020C57C4
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	str r7, [r0, #4]
	str r6, [r0, #8]
	str r5, [r0, #0xc]
	ldr r1, [sp, #0x18]
	str r4, [r0, #0x10]
	str r1, [r0, #0x14]
	bl sub_020C584C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C553C

	arm_func_start sub_020C5580
sub_020C5580: ; 0x020C5580
	stmfd sp!, {r3, lr}
	ldr r1, _020C55B0 ; =0x021CD020
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _020C55B4 ; =0x021CD024
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020C29C0
	bl sub_020C55E0
	bl sub_020C5CF0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C55B0: .word 0x021CD020
_020C55B4: .word 0x021CD024
	arm_func_end sub_020C5580

	arm_func_start sub_020C55B8
sub_020C55B8: ; 0x020C55B8
	ldr ip, _020C55C4 ; =sub_020C29D8
	ldr r0, _020C55C8 ; =0x021CD024
	bx ip
	; .align 2, 0
_020C55C4: .word sub_020C29D8
_020C55C8: .word 0x021CD024
	arm_func_end sub_020C55B8

	arm_func_start sub_020C55CC
sub_020C55CC: ; 0x020C55CC
	ldr ip, _020C55D8 ; =sub_020C2A5C
	ldr r0, _020C55DC ; =0x021CD024
	bx ip
	; .align 2, 0
_020C55D8: .word sub_020C2A5C
_020C55DC: .word 0x021CD024
	arm_func_end sub_020C55CC

	arm_func_start sub_020C55E0
sub_020C55E0: ; 0x020C55E0
	stmfd sp!, {r4, lr}
	bl sub_020C5BE0
	ldr lr, _020C569C ; =0x021CD320
	ldr r0, _020C56A0 ; =0x021CD040
	mov r4, #0
	str lr, [r0]
	mov r0, #0x18
	mov r1, r0
	b _020C5618
_020C5604:
	add r3, r4, #1
	mul r2, r4, r1
	mla ip, r3, r0, lr
	mov r4, r3
	str ip, [lr, r2]
_020C5618:
	cmp r4, #0xff
	blt _020C5604
	ldr r0, _020C56A4 ; =0x021CE040
	mov r3, #0
	str r3, [r0, #0xac8]
	ldr r1, _020C56A8 ; =0x021CEB08
	ldr r2, _020C56A0 ; =0x021CD040
	mov r0, #1
	str r1, [r2, #0x10]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x1c]
	str r3, [r2, #0x14]
	str r3, [r2, #0x18]
	str r0, [r2, #0x20]
	ldr r0, _020C56AC ; =0x021CD0A0
	ldr r1, _020C56B0 ; =0x021CEB80
	str r3, [r2, #4]
	str r0, [r1, #0]
	bl sub_020C5E70
	mov r0, #1
	bl sub_020C57C4
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0x1d
	ldr r1, _020C56B0 ; =0x021CEB80
	str r2, [r0, #4]
	ldr r1, [r1, #0]
	str r1, [r0, #8]
	bl sub_020C584C
	mov r0, #1
	bl sub_020C5884
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C569C: .word 0x021CD320
_020C56A0: .word 0x021CD040
_020C56A4: .word 0x021CE040
_020C56A8: .word 0x021CEB08
_020C56AC: .word 0x021CD0A0
_020C56B0: .word 0x021CEB80
	arm_func_end sub_020C55E0

	arm_func_start sub_020C56B4
sub_020C56B4: ; 0x020C56B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_020C3D98
	mov r4, r0
	tst r5, #1
	beq _020C5710
	bl sub_020C5E48
	ldr r5, _020C57BC ; =0x021CD040
	ldr r1, [r5, #4]
	cmp r1, r0
	bne _020C5734
	mov r6, #0x64
_020C56E4:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r6
	bl sub_020C3E08
	bl sub_020C3D98
	mov r4, r0
	bl sub_020C5E48
	ldr r1, [r5, #4]
	cmp r1, r0
	beq _020C56E4
	b _020C5734
_020C5710:
	bl sub_020C5E48
	ldr r1, _020C57BC ; =0x021CD040
	ldr r1, [r1, #4]
	cmp r1, r0
	bne _020C5734
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_020C5734:
	ldr r0, _020C57BC ; =0x021CD040
	ldr r2, _020C57C0 ; =0x021CD064
	ldr r3, [r0, #0x14]
	add r1, r3, #1
	ldr r5, [r2, r3, lsl #2]
	str r1, [r0, #0x14]
	cmp r1, #8
	movgt r1, #0
	strgt r1, [r0, #0x14]
	ldr r0, [r5, #0]
	mov r2, r5
	cmp r0, #0
	beq _020C5778
_020C5768:
	ldr r2, [r2, #0]
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _020C5768
_020C5778:
	ldr r0, _020C57BC ; =0x021CD040
	ldr r1, [r0, #0x10]
	cmp r1, #0
	strne r5, [r1]
	streq r5, [r0]
	ldr r1, _020C57BC ; =0x021CD040
	mov r0, r4
	str r2, [r1, #0x10]
	ldr r2, [r1, #0x1c]
	sub r2, r2, #1
	str r2, [r1, #0x1c]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C57BC: .word 0x021CD040
_020C57C0: .word 0x021CD064
	arm_func_end sub_020C56B4

	arm_func_start sub_020C57C4
sub_020C57C4: ; 0x020C57C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C5CB0
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020C5C68
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	tst r4, #1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020C5BA0
	cmp r0, #0
	ble _020C5824
	mov r4, #0
_020C5804:
	mov r0, r4
	bl sub_020C56B4
	cmp r0, #0
	bne _020C5804
	bl sub_020C5C68
	cmp r0, #0
	beq _020C582C
	ldmia sp!, {r4, pc}
_020C5824:
	mov r0, #1
	bl sub_020C5884
_020C582C:
	bl sub_020C5C40
	mov r4, #1
_020C5834:
	mov r0, r4
	bl sub_020C56B4
	bl sub_020C5C68
	cmp r0, #0
	beq _020C5834
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C57C4

	arm_func_start sub_020C584C
sub_020C584C: ; 0x020C584C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _020C5880 ; =0x021CD040
	ldr r2, [r1, #0xc]
	cmp r2, #0
	streq r4, [r1, #8]
	strne r4, [r2]
	str r4, [r1, #0xc]
	mov r1, #0
	str r1, [r4, #0]
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5880: .word 0x021CD040
	arm_func_end sub_020C584C

	arm_func_start sub_020C5884
sub_020C5884: ; 0x020C5884
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bl sub_020C3D98
	ldr r4, _020C5A34 ; =0x021CD040
	mov sb, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _020C58B0
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C58B0:
	ldr r1, [r4, #0x1c]
	cmp r1, #8
	blt _020C5908
	tst sl, #1
	bne _020C58D0
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C58D0:
	mov r5, #1
_020C58D4:
	mov r0, r5
	bl sub_020C56B4
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _020C58D4
	ldr r0, _020C5A34 ; =0x021CD040
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020C5908
	mov r0, sb
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C5908:
	ldr r0, _020C5A38 ; =0x021CD320
	mov r1, #0x1800
	bl sub_020C2C54
	ldr r1, _020C5A34 ; =0x021CD040
	mov r0, #7
	ldr r1, [r1, #8]
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	bge _020C59C8
	tst sl, #1
	bne _020C5948
	mov r0, sb
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C5948:
	mov fp, #0
	mov r5, #7
	mov r8, fp
	ldr r7, _020C5A38 ; =0x021CD320
	mov r6, #0x1800
	ldr r4, _020C5A34 ; =0x021CD040
	b _020C59A4
_020C5964:
	mov r0, sb
	bl sub_020C3DAC
	mov r0, r8
	bl sub_020C56B4
	bl sub_020C3D98
	mov sb, r0
	mov r0, r7
	mov r1, r6
	bl sub_020C2C54
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _020C59A4
	mov r0, sb
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C59A4:
	ldr r0, [r4, #0x1c]
	cmp r0, #8
	bge _020C5964
	ldr r1, [r4, #8]
	mov r0, r5
	mov r2, fp
	bl sub_020C64CC
	cmp r0, #0
	blt _020C5964
_020C59C8:
	ldr r0, _020C5A34 ; =0x021CD040
	ldr r2, _020C5A3C ; =0x021CD064
	ldr r3, [r0, #0x18]
	ldr r4, [r0, #8]
	add r1, r3, #1
	str r4, [r2, r3, lsl #2]
	str r1, [r0, #0x18]
	cmp r1, #8
	movgt r1, #0
	strgt r1, [r0, #0x18]
	ldr r1, _020C5A34 ; =0x021CD040
	mov r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldr r2, [r1, #0x1c]
	mov r0, sb
	add r2, r2, #1
	str r2, [r1, #0x1c]
	ldr r2, [r1, #0x20]
	add r2, r2, #1
	str r2, [r1, #0x20]
	bl sub_020C3DAC
	tst sl, #2
	beq _020C5A2C
	bl sub_020C5C40
_020C5A2C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020C5A34: .word 0x021CD040
_020C5A38: .word 0x021CD320
_020C5A3C: .word 0x021CD064
	arm_func_end sub_020C5884

	arm_func_start sub_020C5A40
sub_020C5A40: ; 0x020C5A40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C5AD8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C5A58:
	mov r0, r4
	bl sub_020C56B4
	cmp r0, #0
	bne _020C5A58
	mov r0, r5
	bl sub_020C5AD8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl sub_020C5C40
	mov r0, r5
	bl sub_020C5AD8
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r4, #1
_020C5A90:
	mov r0, r4
	bl sub_020C56B4
	mov r0, r5
	bl sub_020C5AD8
	cmp r0, #0
	beq _020C5A90
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C5A40

	arm_func_start sub_020C5AAC
sub_020C5AAC: ; 0x020C5AAC
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5AD4 ; =0x021CD040
	ldr r2, [r1, #8]
	cmp r2, #0
	ldreq r4, [r1, #4]
	ldrne r4, [r1, #0x20]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5AD4: .word 0x021CD040
	arm_func_end sub_020C5AAC

	arm_func_start sub_020C5AD8
sub_020C5AD8: ; 0x020C5AD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _020C5B24 ; =0x021CD040
	ldr r1, [r1, #4]
	cmp r4, r1
	bls _020C5B08
	sub r1, r4, r1
	cmp r1, #-0x80000000
	movlo r4, #0
	movhs r4, #1
	b _020C5B18
_020C5B08:
	sub r1, r1, r4
	cmp r1, #-0x80000000
	movlo r4, #1
	movhs r4, #0
_020C5B18:
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B24: .word 0x021CD040
	arm_func_end sub_020C5AD8

	arm_func_start sub_020C5B28
sub_020C5B28: ; 0x020C5B28
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5B60 ; =0x021CD040
	mov r4, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _020C5B54
_020C5B44:
	ldr r1, [r1, #0]
	add r4, r4, #1
	cmp r1, #0
	bne _020C5B44
_020C5B54:
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B60: .word 0x021CD040
	arm_func_end sub_020C5B28

	arm_func_start sub_020C5B64
sub_020C5B64: ; 0x020C5B64
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5B9C ; =0x021CD040
	mov r4, #0
	ldr r1, [r1, #8]
	cmp r1, #0
	beq _020C5B90
_020C5B80:
	ldr r1, [r1, #0]
	add r4, r4, #1
	cmp r1, #0
	bne _020C5B80
_020C5B90:
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5B9C: .word 0x021CD040
	arm_func_end sub_020C5B64

	arm_func_start sub_020C5BA0
sub_020C5BA0: ; 0x020C5BA0
	stmfd sp!, {r4, lr}
	bl sub_020C5B28
	mov r4, r0
	bl sub_020C5B64
	rsb r1, r4, #0x100
	sub r0, r1, r0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C5BA0

	arm_func_start sub_020C5BBC
sub_020C5BBC: ; 0x020C5BBC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	bl sub_020C3D98
	mov r4, r0
	mov r0, r5
	bl sub_020C5D70
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C5BBC

	arm_func_start sub_020C5BE0
sub_020C5BE0: ; 0x020C5BE0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _020C5C3C ; =sub_020C5BBC
	mov r0, #7
	bl sub_020C645C
	bl sub_020C5CB0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #7
	mov r1, #1
	bl sub_020C64A8
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r6, #0x64
	mov r5, #7
	mov r4, #1
_020C5C1C:
	mov r0, r6
	bl sub_020C3E08
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020C5C1C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C5C3C: .word sub_020C5BBC
	arm_func_end sub_020C5BE0

	arm_func_start sub_020C5C40
sub_020C5C40: ; 0x020C5C40
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #7
	mov r4, #0
_020C5C4C:
	mov r0, r5
	mov r1, r4
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	blt _020C5C4C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C5C40

	arm_func_start sub_020C5C68
sub_020C5C68: ; 0x020C5C68
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	ldr r1, _020C5CAC ; =0x021CD040
	ldr r4, [r1, #0]
	cmp r4, #0
	bne _020C5C8C
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, pc}
_020C5C8C:
	ldr r2, [r4, #0]
	str r2, [r1, #0]
	cmp r2, #0
	moveq r2, #0
	streq r2, [r1, #0x10]
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5CAC: .word 0x021CD040
	arm_func_end sub_020C5C68

	arm_func_start sub_020C5CB0
sub_020C5CB0: ; 0x020C5CB0
	stmfd sp!, {r4, lr}
	bl sub_020C2728
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	bl sub_020C3D98
	ldr r1, _020C5CEC ; =0x04FFF200
	mov r2, #0x10
	str r2, [r1, #0]
	ldr r4, [r1, #0]
	bl sub_020C3DAC
	cmp r4, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5CEC: .word 0x04FFF200
	arm_func_end sub_020C5CB0

	arm_func_start sub_020C5CF0
sub_020C5CF0: ; 0x020C5CF0
	mov r1, #0
	ldr r2, _020C5D1C ; =0x021CEB20
	mov r0, r1
_020C5CFC:
	str r0, [r2, #0]
	str r0, [r2, #4]
	add r1, r1, #1
	strb r0, [r2, #8]
	cmp r1, #8
	add r2, r2, #0xc
	blt _020C5CFC
	bx lr
	; .align 2, 0
_020C5D1C: .word 0x021CEB20
	arm_func_end sub_020C5CF0

	arm_func_start sub_020C5D20
sub_020C5D20: ; 0x020C5D20
	ldr r2, _020C5D3C ; =0x021CEB20
	mov r1, #0xc
	mla r1, r0, r1, r2
	ldrb r0, [r1, #8]
	add r0, r0, #1
	strb r0, [r1, #8]
	bx lr
	; .align 2, 0
_020C5D3C: .word 0x021CEB20
	arm_func_end sub_020C5D20

	arm_func_start sub_020C5D40
sub_020C5D40: ; 0x020C5D40
	mov r3, #0xc
	mul r3, r0, r3
	ldr r0, _020C5D6C ; =0x021CEB20
	str r1, [r0, r3]
	add r1, r0, r3
	str r2, [r1, #4]
	ldrb r0, [r1, #8]
	add r0, r0, #1
	strb r0, [r1, #8]
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_020C5D6C: .word 0x021CEB20
	arm_func_end sub_020C5D40

	arm_func_start sub_020C5D70
sub_020C5D70: ; 0x020C5D70
	stmfd sp!, {r3, lr}
	ldr r3, _020C5DB0 ; =0x021CEB20
	and r2, r0, #0xff
	mov r1, #0xc
	mla r3, r2, r1, r3
	mov r1, r0, asr #8
	ldrb r0, [r3, #8]
	and r1, r1, #0xff
	cmp r1, r0
	ldmneia sp!, {r3, pc}
	ldr r1, [r3, #0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r3, #4]
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C5DB0: .word 0x021CEB20
	arm_func_end sub_020C5D70

	arm_func_start sub_020C5DB4
sub_020C5DB4: ; 0x020C5DB4
	stmfd sp!, {r3, lr}
	ldr r0, _020C5DDC ; =0x021CEB80
	mov r1, #4
	ldr r0, [r0, #0]
	add r0, r0, #4
	bl sub_020C2C1C
	ldr r0, _020C5DDC ; =0x021CEB80
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C5DDC: .word 0x021CEB80
	arm_func_end sub_020C5DB4

	arm_func_start sub_020C5DE0
sub_020C5DE0: ; 0x020C5DE0
	stmfd sp!, {r3, lr}
	ldr r0, _020C5E08 ; =0x021CEB80
	mov r1, #2
	ldr r0, [r0, #0]
	add r0, r0, #8
	bl sub_020C2C1C
	ldr r0, _020C5E08 ; =0x021CEB80
	ldr r0, [r0, #0]
	ldrh r0, [r0, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C5E08: .word 0x021CEB80
	arm_func_end sub_020C5DE0

	arm_func_start sub_020C5E0C
sub_020C5E0C: ; 0x020C5E0C
	stmfd sp!, {r4, lr}
	mov r1, #0x24
	mul r4, r0, r1
	ldr r0, _020C5E44 ; =0x021CEB80
	mov r1, #4
	ldr r0, [r0, #0]
	add r0, r0, #0x40
	add r0, r0, r4
	bl sub_020C2C1C
	ldr r0, _020C5E44 ; =0x021CEB80
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldr r0, [r0, #0x40]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C5E44: .word 0x021CEB80
	arm_func_end sub_020C5E0C

	arm_func_start sub_020C5E48
sub_020C5E48: ; 0x020C5E48
	stmfd sp!, {r3, lr}
	ldr r0, _020C5E6C ; =0x021CEB80
	mov r1, #4
	ldr r0, [r0, #0]
	bl sub_020C2C1C
	ldr r0, _020C5E6C ; =0x021CEB80
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C5E6C: .word 0x021CEB80
	arm_func_end sub_020C5E48

	arm_func_start sub_020C5E70
sub_020C5E70: ; 0x020C5E70
	stmfd sp!, {r4, lr}
	mov ip, #0
	str ip, [r0, #4]
	strh ip, [r0, #8]
	strh ip, [r0, #0xa]
	mov r4, r0
	str ip, [r0]
	mvn r2, #0
	mov r3, ip
_020C5E94:
	mov lr, r3
	str r3, [r4, #0x40]
_020C5E9C:
	add r1, r4, lr, lsl #1
	add lr, lr, #1
	strh r2, [r1, #0x20]
	cmp lr, #0x10
	blt _020C5E9C
	add ip, ip, #1
	cmp ip, #0x10
	add r4, r4, #0x24
	blt _020C5E94
	mov r3, #0
	mvn r2, #0
_020C5EC8:
	add r1, r0, r3, lsl #1
	add r1, r1, #0x200
	add r3, r3, #1
	strh r2, [r1, #0x60]
	cmp r3, #0x10
	blt _020C5EC8
	mov r1, #0x280
	bl sub_020C2C54
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C5E70

	arm_func_start sub_020C5EEC
sub_020C5EEC: ; 0x020C5EEC
	ldr r1, _020C5F54 ; =0xFFFFFD2D
	cmp r0, r1
	movlt r0, r1
	blt _020C5F04
	cmp r0, #0
	movgt r0, #0
_020C5F04:
	add r1, r0, #0xd3
	mvn r2, #0xef
	cmp r0, r2
	ldr r3, _020C5F58 ; =0x020FE1B0
	add r1, r1, #0x200
	ldrb r3, [r3, r1]
	movlt r0, #3
	blt _020C5F44
	add r1, r2, #0x78
	cmp r0, r1
	movlt r0, #2
	blt _020C5F44
	add r1, r2, #0xb4
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
_020C5F44:
	orr r0, r3, r0, lsl #8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	; .align 2, 0
_020C5F54: .word 0xFFFFFD2D
_020C5F58: .word 0x020FE1B0
	arm_func_end sub_020C5EEC

	arm_func_start sub_020C5F5C
sub_020C5F5C: ; 0x020C5F5C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C55B8
	add r3, r6, r5, lsl #3
	ldr r2, [r3, #0x18]
	cmp r2, #0
	beq _020C5FEC
	cmp r4, r2
	bne _020C5F90
	bl sub_020C55CC
	ldmia sp!, {r4, r5, r6, pc}
_020C5F90:
	add r1, r6, #0x18
	ldr r0, [r2, #0x18]
	add ip, r1, r5, lsl #3
	cmp ip, r0
	bne _020C5FBC
	ldr r0, [r3, #0x1c]
	mov r1, #0x3c
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x18]
	bl sub_020C2C38
	b _020C5FEC
_020C5FBC:
	cmp r0, #0
	beq _020C5FD8
_020C5FC4:
	ldr r1, [r0, #4]
	cmp ip, r1
	movne r0, r1
	cmpne r1, #0
	bne _020C5FC4
_020C5FD8:
	add r1, r6, r5, lsl #3
	ldr r2, [r1, #0x1c]
	mov r1, #8
	str r2, [r0, #4]
	bl sub_020C2C38
_020C5FEC:
	add r0, r6, #0x18
	ldr r1, [r4, #0x18]
	add r0, r0, r5, lsl #3
	str r0, [r4, #0x18]
	add r0, r6, r5, lsl #3
	str r1, [r0, #0x1c]
	str r4, [r0, #0x18]
	bl sub_020C55CC
	mov r0, r6
	mov r1, #0x3c
	bl sub_020C2C38
	mov r0, r4
	mov r1, #0x3c
	bl sub_020C2C38
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C5F5C

	arm_func_start sub_020C6028
sub_020C6028: ; 0x020C6028
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl sub_020C55B8
	add r5, r7, #0x18
	mov r6, #0
	mov r8, #8
	mov r4, #0x3c
_020C6044:
	add r1, r7, r6, lsl #3
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _020C60A8
	ldr r3, [r0, #0x18]
	cmp r5, r3
	bne _020C6074
	ldr r2, [r1, #0x1c]
	mov r1, r4
	str r2, [r0, #0x18]
	bl sub_020C2C38
	b _020C60A8
_020C6074:
	cmp r3, #0
	beq _020C6090
_020C607C:
	ldr r0, [r3, #4]
	cmp r5, r0
	movne r3, r0
	cmpne r0, #0
	bne _020C607C
_020C6090:
	add r0, r7, r6, lsl #3
	ldr r2, [r0, #0x1c]
	mov r0, r3
	mov r1, r8
	str r2, [r3, #4]
	bl sub_020C2C38
_020C60A8:
	add r6, r6, #1
	cmp r6, #4
	add r5, r5, #8
	blt _020C6044
	bl sub_020C55CC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C6028

	arm_func_start sub_020C60C0
sub_020C60C0: ; 0x020C60C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl sub_020C55B8
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020C6100
	mov r5, #0
	mov r4, #8
_020C60E0:
	ldr r6, [r0, #4]
	mov r1, r4
	str r5, [r0, #0]
	str r5, [r0, #4]
	bl sub_020C2C38
	mov r0, r6
	cmp r6, #0
	bne _020C60E0
_020C6100:
	bl sub_020C55CC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C60C0

	arm_func_start sub_020C6108
sub_020C6108: ; 0x020C6108
	sub sp, sp, #8
	mov r1, #0
	str r1, [r0, #0]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [r0, #4]
	add sp, sp, #8
	bx lr
	arm_func_end sub_020C6108

	arm_func_start sub_020C6128
sub_020C6128: ; 0x020C6128
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r2, #0]
	ldr r3, [r0, #0x38]
	cmp r4, r3
	bhs _020C62D0
	mov ip, #0
_020C6140:
	add r3, r0, r4, lsl #2
	ldr r4, [r3, #0x3c]
	and r3, r4, #0xff
	strb r4, [r1]
	cmp r3, #0x10
	mov r4, r4, lsr #8
	bgt _020C6188
	cmp r3, #0x10
	bge _020C61D4
	cmp r3, #5
	addls pc, pc, r3, lsl #2
	b _020C62B4
_020C6170: ; jump table
	b _020C62B4 ; case 0
	b _020C6194 ; case 1
	b _020C6194 ; case 2
	b _020C6194 ; case 3
	b _020C6194 ; case 4
	b _020C6194 ; case 5
_020C6188:
	cmp r3, #0x11
	beq _020C6248
	b _020C62B4
_020C6194:
	add r5, r0, r4
	ldrh r4, [r0, r4]
	ldrh r3, [r5, #2]
	mov r0, #1
	strh r4, [r1, #2]
	strh r3, [r1, #4]
	ldrh r4, [r5, #4]
	ldrh r3, [r5, #6]
	strh r4, [r1, #6]
	strh r3, [r1, #8]
	ldrh r3, [r5, #8]
	strh r3, [r1, #0xa]
	ldr r1, [r2, #0]
	add r1, r1, #1
	str r1, [r2, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020C61D4:
	add r5, r0, r4
	b _020C6228
_020C61DC:
	mov r0, #0xc
	mla ip, lr, r0, r5
	ldrh r4, [ip, #2]
	ldrh r3, [ip, #4]
	mov r0, #1
	strh r4, [r1]
	strh r3, [r1, #2]
	ldrh r4, [ip, #6]
	ldrh r3, [ip, #8]
	strh r4, [r1, #4]
	strh r3, [r1, #6]
	ldrh r4, [ip, #0xa]
	ldrh r3, [ip, #0xc]
	strh r4, [r1, #8]
	strh r3, [r1, #0xa]
	ldr r1, [r2, #4]
	add r1, r1, #1
	str r1, [r2, #4]
	ldmia sp!, {r3, r4, r5, pc}
_020C6228:
	ldrb r4, [r5, #1]
	ldrb r3, [r5]
	ldr lr, [r2, #4]
	sub r3, r4, r3
	add r3, r3, #1
	cmp lr, r3
	blo _020C61DC
	b _020C62B4
_020C6248:
	add r4, r0, r4
	b _020C62A8
_020C6250:
	ldrb lr, [r4, r3]
	cmp lr, #0
	beq _020C62B4
	mov r0, #0xc
	mla lr, r3, r0, r4
	ldrh ip, [lr, #8]
	ldrh r3, [lr, #0xa]
	mov r0, #1
	strh ip, [r1]
	strh r3, [r1, #2]
	ldrh ip, [lr, #0xc]
	ldrh r3, [lr, #0xe]
	strh ip, [r1, #4]
	strh r3, [r1, #6]
	ldrh ip, [lr, #0x10]
	ldrh r3, [lr, #0x12]
	strh ip, [r1, #8]
	strh r3, [r1, #0xa]
	ldr r1, [r2, #4]
	add r1, r1, #1
	str r1, [r2, #4]
	ldmia sp!, {r3, r4, r5, pc}
_020C62A8:
	ldr r3, [r2, #4]
	cmp r3, #8
	blo _020C6250
_020C62B4:
	ldr r3, [r2, #0]
	add r3, r3, #1
	stmia r2, {r3, ip}
	ldr r4, [r2, #0]
	ldr r3, [r0, #0x38]
	cmp r4, r3
	blo _020C6140
_020C62D0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C6128

	arm_func_start sub_020C62D8
sub_020C62D8: ; 0x020C62D8
	ldr r0, [r0, #0x38]
	bx lr
	arm_func_end sub_020C62D8

	arm_func_start sub_020C62E0
sub_020C62E0: ; 0x020C62E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C55B8
	add r0, r6, #0x3c
	add r2, r6, r5, lsl #2
	add r0, r0, r5, lsl #2
	mov r1, #4
	str r4, [r2, #0x3c]
	bl sub_020C2C38
	bl sub_020C55CC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C62E0

	arm_func_start sub_020C6314
sub_020C6314: ; 0x020C6314
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020C55B8
	add r0, r5, r4, lsl #2
	ldr r4, [r0, #0x3c]
	cmp r4, #0
	beq _020C6340
	cmp r4, #0x2000000
	addlo r4, r5, r4
	b _020C6344
_020C6340:
	mov r4, #0
_020C6344:
	bl sub_020C55CC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C6314

	arm_func_start sub_020C6350
sub_020C6350: ; 0x020C6350
	ldr ip, _020C6358 ; =sub_020C635C
	bx ip
	; .align 2, 0
_020C6358: .word sub_020C635C
	arm_func_end sub_020C6350

	arm_func_start sub_020C635C
sub_020C635C: ; 0x020C635C
	stmfd sp!, {r3, r4, r5, lr}
	bl sub_020C3D98
	ldr r1, _020C6440 ; =0x021CEB84
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #0
	bne _020C6434
	mov r2, #1
	strh r2, [r1]
	mov r2, #0
	ldr r0, _020C6444 ; =0x027FFC00
	mov r1, r2
	str r2, [r0, #0x388]
	ldr r0, _020C6448 ; =0x021CEB88
_020C6394:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x20
	blt _020C6394
	ldr r2, _020C644C ; =0x0000C408
	ldr r1, _020C6450 ; =0x04000184
	mov r0, #0x40000
	strh r2, [r1]
	bl sub_020C167C
	ldr r1, _020C6454 ; =sub_020C6554
	mov r0, #0x40000
	bl sub_020C144C
	mov r0, #0x40000
	bl sub_020C161C
	mov r5, #0
	ldr r3, _020C6458 ; =0x04000180
	mov r1, r5
	mov r2, #0x3e8
_020C63DC:
	ldrh r0, [r3]
	ands lr, r0, #0xf
	mov r0, lr, lsl #8
	strh r0, [r3]
	bne _020C63F8
	cmp r5, #4
	bgt _020C6434
_020C63F8:
	ldrh r0, [r3]
	mov ip, r2
	and r0, r0, #0xf
	cmp r0, lr
	bne _020C642C
_020C640C:
	cmp ip, #0
	movle r5, r1
	ble _020C642C
	ldrh r0, [r3]
	sub ip, ip, #1
	and r0, r0, #0xf
	cmp r0, lr
	beq _020C640C
_020C642C:
	add r5, r5, #1
	b _020C63DC
_020C6434:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C6440: .word 0x021CEB84
_020C6444: .word 0x027FFC00
_020C6448: .word 0x021CEB88
_020C644C: .word 0x0000C408
_020C6450: .word 0x04000184
_020C6454: .word sub_020C6554
_020C6458: .word 0x04000180
	arm_func_end sub_020C635C

	arm_func_start sub_020C645C
sub_020C645C: ; 0x020C645C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl sub_020C3D98
	ldr r1, _020C64A0 ; =0x021CEB88
	ldr r3, _020C64A4 ; =0x027FFC00
	str r5, [r1, r4, lsl #2]
	cmp r5, #0
	ldrne r2, [r3, #0x388]
	mov r1, #1
	orrne r1, r2, r1, lsl r4
	mvneq r1, r1, lsl r4
	ldreq r2, [r3, #0x388]
	andeq r1, r2, r1
	str r1, [r3, #0x388]
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C64A0: .word 0x021CEB88
_020C64A4: .word 0x027FFC00
	arm_func_end sub_020C645C

	arm_func_start sub_020C64A8
sub_020C64A8: ; 0x020C64A8
	ldr r2, _020C64C8 ; =0x027FFC00
	mov r3, #1
	add r1, r2, r1, lsl #2
	ldr r1, [r1, #0x388]
	tst r1, r3, lsl r0
	moveq r3, #0
	mov r0, r3
	bx lr
	; .align 2, 0
_020C64C8: .word 0x027FFC00
	arm_func_end sub_020C64A8

	arm_func_start sub_020C64CC
sub_020C64CC: ; 0x020C64CC
	stmfd sp!, {r3, lr}
	ldr ip, [sp]
	ldr r3, _020C6550 ; =0x04000184
	bic ip, ip, #0x1f
	and r0, r0, #0x1f
	orr ip, ip, r0
	ldrh r0, [r3]
	bic ip, ip, #0x20
	mov r2, r2, lsl #0x1f
	orr r2, ip, r2, lsr #26
	and r2, r2, #0x3f
	orr r1, r2, r1, lsl #6
	str r1, [sp]
	tst r0, #0x4000
	beq _020C651C
	ldrh r1, [r3]
	mvn r0, #0
	orr r1, r1, #0xc000
	strh r1, [r3]
	ldmia sp!, {r3, pc}
_020C651C:
	bl sub_020C3D98
	ldr r2, _020C6550 ; =0x04000184
	ldrh r1, [r2]
	tst r1, #2
	beq _020C653C
	bl sub_020C3DAC
	mvn r0, #1
	ldmia sp!, {r3, pc}
_020C653C:
	ldr r1, [sp]
	str r1, [r2, #4]
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C6550: .word 0x04000184
	arm_func_end sub_020C64CC

	arm_func_start sub_020C6554
sub_020C6554: ; 0x020C6554
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mvn r8, #3
	ldr r6, [sp]
	ldr sb, _020C6664 ; =0x04000184
	ldr r4, _020C6668 ; =0x021CEB88
	add sl, r8, #1
	mov r7, #0x4100000
	mov r5, #0
_020C6578:
	ldrh r0, [sb]
	tst r0, #0x4000
	beq _020C6598
	ldrh r0, [sb]
	add r1, r8, #1
	orr r0, r0, #0xc000
	strh r0, [sb]
	b _020C65C4
_020C6598:
	bl sub_020C3D98
	ldrh r1, [sb]
	tst r1, #0x100
	beq _020C65B4
	bl sub_020C3DAC
	mov r1, r8
	b _020C65C4
_020C65B4:
	ldr r6, [r7, #0]
	str r6, [sp]
	bl sub_020C3DAC
	mov r1, r5
_020C65C4:
	cmp r1, r8
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r1, sl
	beq _020C6578
	mov r0, r6, lsl #0x1b
	movs r0, r0, lsr #0x1b
	beq _020C6578
	ldr r3, [r4, r0, lsl #2]
	cmp r3, #0
	beq _020C6604
	mov r2, r6, lsl #0x1a
	mov r1, r6, lsr #6
	mov r2, r2, lsr #0x1f
	blx r3
	b _020C6578
_020C6604:
	mov r0, r6, lsl #0x1a
	movs r0, r0, lsr #0x1f
	bne _020C6578
	ldrh r0, [sb]
	orr r6, r6, #0x20
	str r6, [sp]
	tst r0, #0x4000
	beq _020C6634
	ldrh r0, [sb]
	orr r0, r0, #0xc000
	strh r0, [sb]
	b _020C6578
_020C6634:
	bl sub_020C3D98
	ldrh r1, [sb]
	tst r1, #2
	beq _020C664C
	bl sub_020C3DAC
	b _020C6578
_020C664C:
	mov r1, r6
	str r1, [sb, #4]
	bl sub_020C3DAC
	b _020C6578
_020C665C:
	.byte 0x04, 0xD0, 0x8D, 0xE2
	.byte 0xF8, 0x87, 0xBD, 0xE8
_020C6664: .word 0x04000184
_020C6668: .word 0x021CEB88
	arm_func_end sub_020C6554

	arm_func_start sub_020C666C
sub_020C666C: ; 0x020C666C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020C3D98
	ldr r1, [r5, #0]
	mov r6, r0
	ldr r0, [r5, #4]
	cmp r1, #0
	strne r0, [r1, #4]
	cmp r0, #0
	strne r1, [r0]
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #4]
	ldr r1, [r5, #0xc]
	add r0, r5, #0x18
	bic r1, r1, #0x4f
	str r1, [r5, #0xc]
	str r4, [r5, #0x14]
	bl sub_020C2268
	mov r0, r6
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C666C

	arm_func_start sub_020C66C8
sub_020C66C8: ; 0x020C66C8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8, #0xc]
	ldr r5, [r8, #8]
	mov r7, r1
	mov r1, #1
	tst r0, #4
	mov r6, r1, lsl r7
	moveq r1, #0
	ldr r0, [r5, #0x1c]
	cmp r1, #0
	orrne r0, r0, #0x200
	orreq r0, r0, #0x100
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x58]
	tst r0, r6
	beq _020C6770
	ldr r2, [r5, #0x54]
	mov r0, r8
	mov r1, r7
	blx r2
	mov r4, r0
	cmp r4, #8
	addls pc, pc, r4, lsl #2
	b _020C6774
_020C672C: ; jump table
	b _020C6750 ; case 0
	b _020C6750 ; case 1
	b _020C6774 ; case 2
	b _020C6774 ; case 3
	b _020C6750 ; case 4
	b _020C6774 ; case 5
	b _020C6774 ; case 6
	b _020C6774 ; case 7
	b _020C6758 ; case 8
_020C6750:
	str r4, [r8, #0x14]
	b _020C6774
_020C6758:
	ldr r1, [r5, #0x58]
	mvn r0, r6
	and r0, r1, r0
	str r0, [r5, #0x58]
	mov r4, #7
	b _020C6774
_020C6770:
	mov r4, #7
_020C6774:
	cmp r4, #7
	bne _020C6790
	ldr r1, _020C6854 ; =0x020FE484
	mov r0, r8
	ldr r1, [r1, r7, lsl #2]
	blx r1
	mov r4, r0
_020C6790:
	cmp r4, #6
	bne _020C6808
	ldr r0, [r8, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C684C
	bl sub_020C3D98
	ldr r1, [r5, #0x1c]
	mov r7, r0
	tst r1, #0x200
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C67F8
	mov r4, #0
	mov r6, #1
_020C67D8:
	add r0, r5, #0xc
	bl sub_020C2218
	ldr r0, [r5, #0x1c]
	tst r0, #0x200
	movne r0, r6
	moveq r0, r4
	cmp r0, #0
	bne _020C67D8
_020C67F8:
	mov r0, r7
	ldr r4, [r8, #0x14]
	bl sub_020C3DAC
	b _020C684C
_020C6808:
	ldr r0, [r8, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C683C
	ldr r1, [r5, #0x1c]
	mov r0, r8
	bic r2, r1, #0x100
	mov r1, r4
	str r2, [r5, #0x1c]
	bl sub_020C666C
	b _020C684C
_020C683C:
	ldr r0, [r5, #0x1c]
	bic r0, r0, #0x200
	str r0, [r5, #0x1c]
	str r4, [r8, #0x14]
_020C684C:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C6854: .word 0x020FE484
	arm_func_end sub_020C66C8

	arm_func_start sub_020C6858
sub_020C6858: ; 0x020C6858
	stmfd sp!, {r3, lr}
	cmp r2, #0
	mov lr, #0
	bls _020C68A0
_020C6868:
	ldrb ip, [r0, lr]
	ldrb r3, [r1, lr]
	sub ip, ip, #0x41
	cmp ip, #0x19
	sub r3, r3, #0x41
	addls ip, ip, #0x20
	cmp r3, #0x19
	addls r3, r3, #0x20
	cmp ip, r3
	subne r0, ip, r3
	ldmneia sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r2
	blo _020C6868
_020C68A0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C6858

	arm_func_start sub_020C68A8
sub_020C68A8: ; 0x020C68A8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	ldr r4, [r7, #0]
	mov r6, r2
	ldr r2, [r4, #0x1c]
	mov r0, r4
	orr r2, r2, #0x200
	str r2, [r4, #0x1c]
	ldr r2, [r7, #4]
	ldr r5, [r4, #0x50]
	mov r3, r6
	blx r5
	cmp r0, #0
	cmpne r0, #1
	beq _020C68F0
	cmp r0, #6
	beq _020C6900
	b _020C6958
_020C68F0:
	ldr r1, [r4, #0x1c]
	bic r1, r1, #0x200
	str r1, [r4, #0x1c]
	b _020C6958
_020C6900:
	bl sub_020C3D98
	ldr r1, [r4, #0x1c]
	mov r5, r0
	tst r1, #0x200
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C6948
	mov r8, #0
	mov sb, #1
_020C6928:
	add r0, r4, #0xc
	bl sub_020C2218
	ldr r0, [r4, #0x1c]
	tst r0, #0x200
	movne r0, sb
	moveq r0, r8
	cmp r0, #0
	bne _020C6928
_020C6948:
	mov r0, r5
	bl sub_020C3DAC
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0x14]
_020C6958:
	ldr r1, [r7, #4]
	add r1, r1, r6
	str r1, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020C68A8

	arm_func_start sub_020C6968
sub_020C6968: ; 0x020C6968
	ldr r3, [r0, #0xc]
	mov r2, #0
	orr r3, r3, #4
	str r3, [r0, #0xc]
	ldr r3, [r0, #8]
	ldr ip, _020C6998 ; =sub_020C66C8
	str r3, [r0, #0x30]
	str r2, [r0, #0x38]
	strh r2, [r0, #0x36]
	strh r1, [r0, #0x34]
	mov r1, #2
	bx ip
	; .align 2, 0
_020C6998: .word sub_020C66C8
	arm_func_end sub_020C6968

	arm_func_start sub_020C699C
sub_020C699C: ; 0x020C699C
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr lr, [r0, #8]
	ldr r1, [r0, #0x30]
	add ip, r2, r3
	str ip, [r0, #0x2c]
	ldr ip, [lr, #0x48]
	mov r0, lr
	blx ip
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C699C

	arm_func_start sub_020C69C8
sub_020C69C8: ; 0x020C69C8
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x2c]
	ldr r3, [r0, #0x38]
	ldr lr, [r0, #8]
	ldr r1, [r0, #0x30]
	add ip, r2, r3
	str ip, [r0, #0x2c]
	ldr ip, [lr, #0x4c]
	mov r0, lr
	blx ip
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C69C8

	arm_func_start sub_020C69F4
sub_020C69F4: ; 0x020C69F4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r0
	ldr r4, [r6, #8]
	add r5, r6, #0x30
	str r4, [sp]
	ldrh r1, [r5, #4]
	ldr r2, [r4, #0x34]
	add r0, sp, #0
	add r3, r2, r1, lsl #3
	add r1, sp, #8
	mov r2, #8
	str r3, [sp, #4]
	bl sub_020C68A8
	movs r3, r0
	bne _020C6A7C
	add ip, r6, #0x20
	ldmia r5, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	ldrh r0, [r5, #6]
	cmp r0, #0
	ldreq r0, [r5, #8]
	cmpeq r0, #0
	bne _020C6A6C
	ldrh r0, [sp, #0xc]
	strh r0, [r6, #0x26]
	ldr r1, [r4, #0x34]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r6, #0x28]
_020C6A6C:
	ldrh r1, [sp, #0xe]
	ldr r0, _020C6A88 ; =0x00000FFF
	and r0, r1, r0
	str r0, [r6, #0x2c]
_020C6A7C:
	mov r0, r3
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C6A88: .word 0x00000FFF
	arm_func_end sub_020C69F4

	arm_func_start sub_020C6A8C
sub_020C6A8C: ; 0x020C6A8C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r4, [r5, #0x30]
	ldr r1, [r5, #8]
	add r0, sp, #4
	str r1, [sp, #4]
	ldr r3, [r5, #0x28]
	add r1, sp, #0
	mov r2, #1
	str r3, [sp, #8]
	bl sub_020C68A8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	ldrb r1, [sp]
	and r2, r1, #0x7f
	mov r1, r1, asr #7
	str r2, [r4, #0x10]
	and r1, r1, #1
	str r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	cmp r2, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, [r5, #0x34]
	cmp r1, #0
	bne _020C6B2C
	add r0, sp, #4
	add r1, r4, #0x14
	bl sub_020C68A8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	ldr r1, [r4, #0x10]
	mov r2, #0
	add r1, r4, r1
	strb r2, [r1, #0x14]
	b _020C6B38
_020C6B2C:
	ldr r1, [sp, #8]
	add r1, r1, r2
	str r1, [sp, #8]
_020C6B38:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _020C6B88
	add r0, sp, #4
	add r1, sp, #2
	mov r2, #2
	bl sub_020C68A8
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, pc}
	ldr r2, [r5, #8]
	ldr r1, _020C6BB4 ; =0x00000FFF
	str r2, [r4, #0]
	ldrh r3, [sp, #2]
	mov r2, #0
	and r1, r3, r1
	strh r1, [r4, #4]
	strh r2, [r4, #6]
	str r2, [r4, #8]
	b _020C6BA4
_020C6B88:
	ldr r1, [r5, #8]
	str r1, [r4, #0]
	ldrh r1, [r5, #0x26]
	str r1, [r4, #4]
	ldrh r1, [r5, #0x26]
	add r1, r1, #1
	strh r1, [r5, #0x26]
_020C6BA4:
	ldr r1, [sp, #8]
	str r1, [r5, #0x28]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_020C6BB4: .word 0x00000FFF
	arm_func_end sub_020C6A8C

	arm_func_start sub_020C6BB8
sub_020C6BB8: ; 0x020C6BB8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x94
	mov sb, r0
	ldr r5, [sb, #0x3c]
	mov r1, #2
	ldr r6, [sb, #0x40]
	bl sub_020C66C8
	ldrb r3, [r5]
	cmp r3, #0
	beq _020C6D70
_020C6BE0:
	mov r8, #0
	mov r0, #1
	mov r1, r8
	b _020C6BF4
_020C6BF0:
	add r8, r8, #1
_020C6BF4:
	ldrb r7, [r5, r8]
	mov r2, r1
	cmp r7, #0
	cmpne r7, #0x2f
	cmpne r7, #0x5c
	movne r2, r0
	cmp r2, #0
	bne _020C6BF0
	cmp r7, #0
	cmpeq r6, #0
	movne r7, #1
	cmp r8, #0
	addeq sp, sp, #0x94
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r3, #0x2e
	bne _020C6C88
	cmp r8, #1
	addeq r5, r5, #1
	beq _020C6D54
	ldrb r0, [r5, #1]
	cmp r8, #2
	moveq r1, #1
	movne r1, #0
	cmp r0, #0x2e
	moveq r0, #1
	movne r0, #0
	tst r1, r0
	beq _020C6C88
	ldrh r0, [sb, #0x24]
	cmp r0, #0
	beq _020C6C80
	ldr r1, [sb, #0x2c]
	mov r0, sb
	bl sub_020C6968
_020C6C80:
	add r5, r5, #2
	b _020C6D54
_020C6C88:
	cmp r8, #0x7f
	addgt sp, sp, #0x94
	movgt r0, #1
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r1, sp, #0
	mov r0, #0
	str r1, [sb, #0x30]
	str r0, [sb, #0x34]
	add sl, sp, #0x14
	mov r4, #3
_020C6CB0:
	mov r0, sb
	mov r1, r4
	bl sub_020C66C8
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [sp, #0xc]
	cmp r7, r0
	ldreq r0, [sp, #0x10]
	cmpeq r8, r0
	bne _020C6CB0
	mov r0, r5
	mov r1, sl
	mov r2, r8
	bl sub_020C6858
	cmp r0, #0
	bne _020C6CB0
	cmp r7, #0
	beq _020C6D24
	add r0, sp, #0
	add r3, sb, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, sb
	mov r1, #2
	add r5, r5, r8
	bl sub_020C66C8
	b _020C6D54
_020C6D24:
	cmp r6, #0
	addne sp, sp, #0x94
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r3, [sb, #0x44]
	ldr r2, [sp]
	ldr r1, [sp, #4]
	add sp, sp, #0x94
	str r2, [r3, #0]
	mov r0, #0
	str r1, [r3, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020C6D54:
	ldrb r0, [r5]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldrb r3, [r5, r0]!
	cmp r3, #0
	bne _020C6BE0
_020C6D70:
	cmp r6, #0
	addeq sp, sp, #0x94
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r3, [sb, #0x44]
	add r0, sb, #0x20
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, #0
	add sp, sp, #0x94
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end sub_020C6BB8

	arm_func_start sub_020C6D9C
sub_020C6D9C: ; 0x020C6D9C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xe0
	mov sl, r0
	ldr r1, [sl, #8]
	add r0, sp, #4
	str r1, [sp]
	bl sub_020C7DA0
	ldr r0, [sl, #8]
	str r0, [sp, #0xc]
	ldr r0, [sl, #0xc]
	tst r0, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldrneh sb, [sl, #0x24]
	movne r6, #0x10000
	bne _020C6E80
	ldrh r0, [sl, #0x38]
	ldr r6, [sl, #0x20]
	cmp r0, #0
	ldrneh sb, [sl, #0x3a]
	bne _020C6E80
	mov r7, #0
	mov r8, r7
	mov sb, #0x10000
	add r5, sp, #4
	mov r4, #3
	add fp, sp, #0x4c
_020C6E0C:
	mov r0, r5
	mov r1, r7
	bl sub_020C6968
	mov r2, #1
	cmp r7, #0
	mov r0, r5
	mov r1, #3
	ldreq r8, [sp, #0x30]
	str fp, [sp, #0x34]
	str r2, [sp, #0x38]
	bl sub_020C66C8
	cmp r0, #0
	bne _020C6E6C
_020C6E40:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	ldreq r0, [sp, #0x50]
	cmpeq r0, r6
	ldreqh sb, [sp, #0x28]
	beq _020C6E6C
	mov r0, r5
	mov r1, r4
	bl sub_020C66C8
	cmp r0, #0
	beq _020C6E40
_020C6E6C:
	cmp sb, #0x10000
	bne _020C6E80
	add r7, r7, #1
	cmp r7, r8
	blo _020C6E0C
_020C6E80:
	cmp sb, #0x10000
	bne _020C6E9C
	mov r0, #0
	strh r0, [sl, #0x38]
	add sp, sp, #0xe0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C6E9C:
	ldrh r0, [sl, #0x38]
	cmp r0, #0
	bne _020C6F80
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0xff
	addls r8, r1, #1
	bls _020C6ECC
	cmp r0, #0xff00
	addls r8, r1, #2
	addhi r8, r1, #3
_020C6ECC:
	cmp r6, #0x10000
	ldrne r0, [sp, #0x5c]
	add r8, r8, #2
	addne r8, r8, r0
	mov r7, sb
	cmp sb, #0
	beq _020C6F74
	add r0, sp, #4
	mov r1, sb
	bl sub_020C6968
	add r5, sp, #4
	mov r4, #3
	add fp, sp, #0x4c
_020C6F00:
	ldr r1, [sp, #0x30]
	mov r0, r5
	bl sub_020C6968
	mov r1, #1
	str r1, [sp, #0x38]
	mov r0, r5
	mov r1, #3
	str fp, [sp, #0x34]
	bl sub_020C66C8
	cmp r0, #0
	bne _020C6F68
_020C6F2C:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _020C6F54
	ldrh r0, [sp, #0x50]
	cmp r0, r7
	bne _020C6F54
	ldr r0, [sp, #0x5c]
	add r0, r0, #1
	add r8, r8, r0
	b _020C6F68
_020C6F54:
	mov r0, r5
	mov r1, r4
	bl sub_020C66C8
	cmp r0, #0
	beq _020C6F2C
_020C6F68:
	ldrh r7, [sp, #0x28]
	cmp r7, #0
	bne _020C6F00
_020C6F74:
	add r0, r8, #1
	strh r0, [sl, #0x38]
	strh sb, [sl, #0x3a]
_020C6F80:
	ldr r5, [sl, #0x30]
	cmp r5, #0
	addeq sp, sp, #0xe0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r4, [sl, #0x38]
	ldr r0, [sl, #0x34]
	cmp r0, r4
	addlo sp, sp, #0xe0
	movlo r0, #1
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp]
	mov r7, #0
	ldr r0, [r0, #0]
	cmp r0, #0xff
	movls r8, #1
	bls _020C6FD0
	cmp r0, #0xff00
	movls r8, #2
	movhi r8, #3
_020C6FD0:
	ldr r0, [sp]
	mov r1, r5
	mov r2, r8
	bl sub_020C4DB0
	add r1, r7, r8
	ldr r0, _020C7144 ; =0x02101160
	add r1, r5, r1
	mov r2, #2
	bl sub_020C4DB0
	add r0, sp, #4
	mov r1, sb
	bl sub_020C6968
	cmp r6, #0x10000
	beq _020C7080
	add r3, sp, #0x4c
	mov r2, #0
	add r0, sp, #4
	mov r1, #3
	str r3, [sp, #0x34]
	str r2, [sp, #0x38]
	bl sub_020C66C8
	cmp r0, #0
	bne _020C705C
	add r8, sp, #4
	mov r7, #3
_020C7034:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	ldreq r0, [sp, #0x50]
	cmpeq r0, r6
	beq _020C705C
	mov r0, r8
	mov r1, r7
	bl sub_020C66C8
	cmp r0, #0
	beq _020C7034
_020C705C:
	ldr r0, [sp, #0x5c]
	add r1, r5, r4
	add r6, r0, #1
	add r0, sp, #0x60
	mov r2, r6
	sub r1, r1, r6
	bl sub_020C4DB0
	sub r4, r4, r6
	b _020C7090
_020C7080:
	add r0, r5, r4
	mov r1, #0
	strb r1, [r0, #-1]
	sub r4, r4, #1
_020C7090:
	cmp sb, #0
	beq _020C7138
	add sl, sp, #4
	mov r6, #3
	add r8, sp, #0x4c
	mov r7, #0
	mov fp, #0x2f
_020C70AC:
	ldr r1, [sp, #0x30]
	mov r0, sl
	bl sub_020C6968
	add r1, r5, r4
	str r8, [sp, #0x34]
	str r7, [sp, #0x38]
	strb fp, [r1, #-1]
	mov r0, sl
	mov r1, #3
	sub r4, r4, #1
	bl sub_020C66C8
	cmp r0, #0
	bne _020C712C
_020C70E0:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _020C7118
	ldrh r0, [sp, #0x50]
	cmp r0, sb
	bne _020C7118
	ldr sb, [sp, #0x5c]
	add r1, r5, r4
	add r0, sp, #0x60
	mov r2, sb
	sub r1, r1, sb
	bl sub_020C4DB0
	sub r4, r4, sb
	b _020C712C
_020C7118:
	mov r0, sl
	mov r1, r6
	bl sub_020C66C8
	cmp r0, #0
	beq _020C70E0
_020C712C:
	ldrh sb, [sp, #0x28]
	cmp sb, #0
	bne _020C70AC
_020C7138:
	mov r0, #0
	add sp, sp, #0xe0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020C7144: .word 0x02101160
	arm_func_end sub_020C6D9C

	arm_func_start sub_020C7148
sub_020C7148: ; 0x020C7148
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r1, [r5, #8]
	ldr r4, [r5, #0x34]
	ldr r0, [r1, #0x30]
	mov r2, r4, lsl #3
	cmp r0, r4, lsl #3
	addls sp, sp, #0x10
	movls r0, #1
	ldmlsia sp!, {r3, r4, r5, pc}
	str r1, [sp]
	ldr r1, [r1, #0x2c]
	add r0, sp, #0
	add r3, r1, r2
	add r1, sp, #8
	mov r2, #8
	str r3, [sp, #4]
	bl sub_020C68A8
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #8]
	mov r0, r5
	str r1, [r5, #0x30]
	ldr r2, [sp, #0xc]
	mov r1, #7
	str r2, [r5, #0x34]
	str r4, [r5, #0x38]
	bl sub_020C66C8
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C7148

	arm_func_start sub_020C71C8
sub_020C71C8: ; 0x020C71C8
	ldr r1, [r0, #0x30]
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x30]
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x34]
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0x20]
	mov r0, #0
	bx lr
	arm_func_end sub_020C71C8

	arm_func_start sub_020C71F0
sub_020C71F0: ; 0x020C71F0
	mov r0, #0
	bx lr
	arm_func_end sub_020C71F0

	arm_func_start sub_020C71F8
sub_020C71F8: ; 0x020C71F8
	stmfd sp!, {r3, lr}
	cmp r1, #3
	mov r3, #0
	bgt _020C7248
	mov ip, r3
	cmp r1, #0
	ble _020C7248
	mov lr, r3
_020C7218:
	ldrb r2, [r0, ip]
	cmp r2, #0
	beq _020C7248
	sub r2, r2, #0x41
	cmp r2, #0x19
	addls r2, r2, #0x61
	addhi r2, r2, #0x41
	add ip, ip, #1
	orr r3, r3, r2, lsl lr
	cmp ip, r1
	add lr, lr, #8
	blt _020C7218
_020C7248:
	mov r0, r3
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C71F8

	arm_func_start sub_020C7250
sub_020C7250: ; 0x020C7250
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x28]
	add r0, r0, r2
	mov r2, r3
	bl sub_020C4DB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C7250

	arm_func_start sub_020C726C
sub_020C726C: ; 0x020C726C
	stmfd sp!, {r3, lr}
	ldr ip, [r0, #0x28]
	mov r0, r1
	add r1, ip, r2
	mov r2, r3
	bl sub_020C4DB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C726C

	arm_func_start sub_020C728C
sub_020C728C: ; 0x020C728C
	stmfd sp!, {r3, lr}
	mov r0, r2
	mov r2, r3
	bl sub_020C4DB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C728C

	arm_func_start sub_020C72A4
sub_020C72A4: ; 0x020C72A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x48
	mov r6, r0
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	tst r1, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7338
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0x20
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _020C7338
	mov r8, #0
	mov sb, #1
	mov r7, #3
_020C72F4:
	ldr r1, [r0, #0xc]
	ldr r5, [r0, #4]
	tst r1, #2
	movne r1, sb
	moveq r1, r8
	cmp r1, #0
	beq _020C732C
	ldr r1, [r6, #0x24]
	cmp r1, r0
	mov r1, r7
	streq r5, [r6, #0x24]
	bl sub_020C666C
	cmp r5, #0
	ldreq r5, [r6, #0x24]
_020C732C:
	mov r0, r5
	cmp r5, #0
	bne _020C72F4
_020C7338:
	ldr r0, [r6, #0x1c]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C7428
	ldr r0, [r6, #0x1c]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C7428
	ldr r5, [r6, #0x24]
	cmp r5, #0
	beq _020C7428
	ldr r0, [r6, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	cmp r7, #0
	ldrne r0, [r6, #0x1c]
	orrne r0, r0, #0x10
	strne r0, [r6, #0x1c]
	mov r0, r4
	bl sub_020C3DAC
	cmp r7, #0
	beq _020C73CC
	ldr r0, [r6, #0x58]
	tst r0, #0x200
	beq _020C73CC
	ldr r2, [r6, #0x54]
	mov r0, r5
	mov r1, #9
	blx r2
_020C73CC:
	bl sub_020C3D98
	ldr r1, [r5, #0xc]
	mov r4, r0
	orr r0, r1, #0x40
	str r0, [r5, #0xc]
	ldr r0, [r5, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7414
	add r0, r5, #0x18
	bl sub_020C2268
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #0x48
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020C7414:
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #0x48
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020C7428:
	ldr r0, [r6, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7474
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0x10
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x58]
	tst r0, #0x400
	beq _020C7474
	add r0, sp, #0
	bl sub_020C7DA0
	str r6, [sp, #8]
	ldr r2, [r6, #0x54]
	add r0, sp, #0
	mov r1, #0xa
	blx r2
_020C7474:
	ldr r0, [r6, #0x1c]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C74A4
	ldr r1, [r6, #0x1c]
	add r0, r6, #0x14
	bic r1, r1, #0x40
	orr r1, r1, #8
	str r1, [r6, #0x1c]
	bl sub_020C2268
_020C74A4:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020C72A4

	arm_func_start sub_020C74B8
sub_020C74B8: ; 0x020C74B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r0
	ldr r4, [r6, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r8, #1
_020C74D0:
	bl sub_020C3D98
	ldr r1, [r6, #0xc]
	mov r5, r0
	orr r0, r1, #0x40
	str r0, [r6, #0xc]
	ldr r0, [r6, #0xc]
	tst r0, #4
	movne r0, r8
	moveq r0, r7
	cmp r0, #0
	beq _020C7510
	add r0, r6, #0x18
	bl sub_020C2268
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C7510:
	ldr r1, [r6, #0xc]
	mov r0, r5
	orr r1, r1, #8
	str r1, [r6, #0xc]
	bl sub_020C3DAC
	ldr r1, [r6, #0x10]
	mov r0, r6
	bl sub_020C66C8
	cmp r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_020C72A4
	movs r6, r0
	bne _020C74D0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C74B8

	arm_func_start sub_020C754C
sub_020C754C: ; 0x020C754C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	bl sub_020C66C8
	mov r1, r0
	mov r0, r4
	bl sub_020C666C
	ldr r0, [r4, #8]
	bl sub_020C72A4
	cmp r0, #0
	beq _020C757C
	bl sub_020C74B8
_020C757C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C754C

	arm_func_start sub_020C7590
sub_020C7590: ; 0x020C7590
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r4, [r6, #8]
	mov r2, #1
	str r1, [r6, #0x10]
	mov r0, #2
	str r0, [r6, #0x14]
	ldr r0, [r6, #0xc]
	mov r7, r2, lsl r1
	orr r0, r0, #1
	str r0, [r6, #0xc]
	bl sub_020C3D98
	ldr r1, [r4, #0x1c]
	mov r5, r0
	tst r1, #0x80
	beq _020C75EC
	mov r0, r6
	mov r1, #3
	bl sub_020C666C
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C75EC:
	tst r7, #0x1fc
	ldrne r0, [r6, #0xc]
	orrne r0, r0, #4
	strne r0, [r6, #0xc]
	ldr r1, [r6, #0]
	ldr r2, [r6, #4]
	cmp r1, #0
	strne r2, [r1, #4]
	cmp r2, #0
	add r0, r4, #0x20
	strne r1, [r2]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C7634
_020C7624:
	mov r0, r1
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020C7624
_020C7634:
	str r6, [r0, #4]
	str r0, [r6, #0]
	mov r1, #0
	str r1, [r6, #4]
	ldr r0, [r4, #0x1c]
	tst r0, #8
	movne r1, #1
	cmp r1, #0
	bne _020C76E4
	ldr r0, [r4, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C76E4
	ldr r1, [r4, #0x1c]
	mov r0, r5
	orr r1, r1, #0x10
	str r1, [r4, #0x1c]
	bl sub_020C3DAC
	ldr r0, [r4, #0x58]
	tst r0, #0x200
	beq _020C76A0
	ldr r2, [r4, #0x54]
	mov r0, r6
	mov r1, #9
	blx r2
_020C76A0:
	bl sub_020C3D98
	ldr r1, [r6, #0xc]
	orr r1, r1, #0x40
	str r1, [r6, #0xc]
	ldr r1, [r6, #0xc]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _020C76DC
	bl sub_020C3DAC
	mov r0, r6
	bl sub_020C74B8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C76DC:
	bl sub_020C3DAC
	b _020C7728
_020C76E4:
	ldr r0, [r6, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C770C
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C770C:
	add r0, r6, #0x18
	bl sub_020C2218
	ldr r0, [r6, #0xc]
	tst r0, #0x40
	beq _020C770C
	mov r0, r5
	bl sub_020C3DAC
_020C7728:
	mov r0, r6
	bl sub_020C754C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C7590

	arm_func_start sub_020C7734
sub_020C7734: ; 0x020C7734
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C7734

	arm_func_start sub_020C7760
sub_020C7760: ; 0x020C7760
	stmfd sp!, {r3, r4, r5, lr}
	bl sub_020C71F8
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _020C779C ; =0x021CEC08
	ldr r5, [r1, #0]
	b _020C7780
_020C777C:
	ldr r5, [r5, #4]
_020C7780:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, r4
	bne _020C777C
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C779C: .word 0x021CEC08
	arm_func_end sub_020C7760

	arm_func_start sub_020C77A0
sub_020C77A0: ; 0x020C77A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r8, #0
	bl sub_020C3D98
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_020C7760
	cmp r0, #0
	bne _020C7840
	ldr r0, _020C7850 ; =0x021CEC08
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020C77FC
	str r7, [r0, #0]
	str r7, [r0, #4]
	mov r1, r8
	str r1, [r0, #0xc]
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	b _020C7820
_020C77FC:
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020C7818
_020C7808:
	mov r1, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020C7808
_020C7818:
	str r7, [r1, #4]
	str r1, [r7, #8]
_020C7820:
	mov r0, r6
	mov r1, r5
	bl sub_020C71F8
	str r0, [r7, #0]
	ldr r0, [r7, #0x1c]
	mov r8, #1
	orr r0, r0, #1
	str r0, [r7, #0x1c]
_020C7840:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C7850: .word 0x021CEC08
	arm_func_end sub_020C77A0

	arm_func_start sub_020C7854
sub_020C7854: ; 0x020C7854
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020C3D98
	ldr r2, [r4, #4]
	mov r3, #0
	cmp r2, #0
	ldrne r1, [r4, #8]
	strne r1, [r2, #8]
	ldr r2, [r4, #8]
	cmp r2, #0
	ldrne r1, [r4, #4]
	strne r1, [r2, #4]
	str r3, [r4, #0]
	str r3, [r4, #8]
	str r3, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r1, _020C78D4 ; =0x021CEC08
	bic r2, r2, #1
	str r2, [r4, #0x1c]
	ldr r2, [r1, #4]
	cmp r2, r4
	bne _020C78CC
	ldr r2, [r1, #0]
	str r2, [r1, #4]
	str r3, [r1, #0xc]
	strh r3, [r1, #0xa]
	strh r3, [r1, #8]
_020C78CC:
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C78D4: .word 0x021CEC08
	arm_func_end sub_020C7854

	arm_func_start sub_020C78D8
sub_020C78D8: ; 0x020C78D8
	str r1, [r0, #0x28]
	str r3, [r0, #0x30]
	str r2, [r0, #0x3c]
	ldr r3, [sp, #4]
	str r2, [r0, #0x2c]
	ldr ip, [sp, #8]
	ldr r1, [sp]
	str r3, [r0, #0x38]
	str r1, [r0, #0x40]
	str r1, [r0, #0x34]
	cmp ip, #0
	ldreq ip, _020C7940 ; =sub_020C7250
	ldr r1, [sp, #0xc]
	str ip, [r0, #0x48]
	cmp r1, #0
	ldreq r1, _020C7944 ; =sub_020C726C
	str r1, [r0, #0x4c]
	ldr r2, [r0, #0x48]
	mov r1, #0
	str r2, [r0, #0x50]
	str r1, [r0, #0x44]
	ldr r1, [r0, #0x1c]
	orr r1, r1, #2
	str r1, [r0, #0x1c]
	mov r0, #1
	bx lr
	; .align 2, 0
_020C7940: .word sub_020C7250
_020C7944: .word sub_020C726C
	arm_func_end sub_020C78D8

	arm_func_start sub_020C7948
sub_020C7948: ; 0x020C7948
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	tst r1, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C79F8
	mov r0, r6
	ldr r1, [r6, #0x1c]
	bl sub_020C7BB8
	ldr r1, [r6, #0x1c]
	mov r5, r0
	orr r0, r1, #0x80
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _020C79B4
	mov r7, #3
_020C799C:
	ldr r8, [r0, #4]
	mov r1, r7
	bl sub_020C666C
	mov r0, r8
	cmp r8, #0
	bne _020C799C
_020C79B4:
	mov r0, #0
	str r0, [r6, #0x24]
	cmp r5, #0
	beq _020C79CC
	mov r0, r6
	bl sub_020C7C54
_020C79CC:
	mov r0, #0
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	str r0, [r6, #0x30]
	str r0, [r6, #0x34]
	str r0, [r6, #0x38]
	str r0, [r6, #0x40]
	str r0, [r6, #0x3c]
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0xa2
	str r0, [r6, #0x1c]
_020C79F8:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C7948

	arm_func_start sub_020C7A08
sub_020C7A08: ; 0x020C7A08
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	mov r7, r0
	ldr r3, [r7, #0x30]
	ldr r0, [r7, #0x38]
	mov r6, r1
	add r0, r3, r0
	add r0, r0, #0x3f
	bic r4, r0, #0x1f
	cmp r4, r2
	bhi _020C7B1C
	add r1, r6, #0x1f
	add r0, sp, #4
	bic r5, r1, #0x1f
	bl sub_020C7DA0
	ldr r2, [r7, #0x2c]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r7, #0x30]
	add r0, sp, #4
	mov r1, r7
	add r3, r2, r3
	bl sub_020C7FC8
	cmp r0, #0
	beq _020C7A9C
	ldr r2, [r7, #0x30]
	add r0, sp, #4
	mov r1, r5
	bl sub_020C81D4
	cmp r0, #0
	bge _020C7A94
	ldr r2, [r7, #0x30]
	mov r0, r5
	mov r1, #0
	bl sub_020C4CF4
_020C7A94:
	add r0, sp, #4
	bl sub_020C80C8
_020C7A9C:
	str r5, [r7, #0x2c]
	ldr ip, [r7, #0x30]
	ldr r2, [r7, #0x34]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r7, #0x38]
	add r0, sp, #4
	mov r1, r7
	add r3, r2, r3
	add r5, r5, ip
	bl sub_020C7FC8
	cmp r0, #0
	beq _020C7B00
	ldr r2, [r7, #0x38]
	add r0, sp, #4
	mov r1, r5
	bl sub_020C81D4
	cmp r0, #0
	bge _020C7AF8
	ldr r2, [r7, #0x38]
	mov r0, r5
	mov r1, #0
	bl sub_020C4CF4
_020C7AF8:
	add r0, sp, #4
	bl sub_020C80C8
_020C7B00:
	str r5, [r7, #0x34]
	ldr r0, _020C7B28 ; =sub_020C728C
	str r6, [r7, #0x44]
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x1c]
	orr r0, r0, #4
	str r0, [r7, #0x1c]
_020C7B1C:
	mov r0, r4
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020C7B28: .word sub_020C728C
	arm_func_end sub_020C7A08

	arm_func_start sub_020C7B2C
sub_020C7B2C: ; 0x020C7B2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	mov r4, #0
	tst r0, #2
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	beq _020C7BB0
	mov r0, r5
	bl sub_020C7BB8
	ldr r1, [r5, #0x1c]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _020C7BA0
	ldr r2, [r5, #0x1c]
	mov r1, #0
	bic r2, r2, #4
	str r2, [r5, #0x1c]
	ldr r4, [r5, #0x44]
	str r1, [r5, #0x44]
	ldr r1, [r5, #0x3c]
	str r1, [r5, #0x2c]
	ldr r1, [r5, #0x40]
	str r1, [r5, #0x34]
	ldr r1, [r5, #0x48]
	str r1, [r5, #0x50]
_020C7BA0:
	cmp r0, #0
	beq _020C7BB0
	mov r0, r5
	bl sub_020C7C54
_020C7BB0:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C7B2C

	arm_func_start sub_020C7BB8
sub_020C7BB8: ; 0x020C7BB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	tst r1, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r5, #1
	movne r5, #0
	cmp r5, #0
	beq _020C7C44
	ldr r0, [r6, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq _020C7C3C
	orr r0, r0, #0x40
	str r0, [r6, #0x1c]
	mov r7, #0
	mov r8, #1
_020C7C18:
	add r0, r6, #0x14
	bl sub_020C2218
	ldr r0, [r6, #0x1c]
	tst r0, #0x40
	movne r0, r8
	moveq r0, r7
	cmp r0, #0
	bne _020C7C18
	b _020C7C44
_020C7C3C:
	orr r0, r0, #8
	str r0, [r6, #0x1c]
_020C7C44:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C7BB8

	arm_func_start sub_020C7C54
sub_020C7C54: ; 0x020C7C54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, #0
	bl sub_020C3D98
	ldr r1, [r4, #0x1c]
	mov r6, r0
	tst r1, #8
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	cmp r7, #0
	bne _020C7CA4
	ldr r1, [r4, #0x1c]
	mov r0, r4
	bic r1, r1, #8
	str r1, [r4, #0x1c]
	bl sub_020C72A4
	mov r5, r0
_020C7CA4:
	mov r0, r6
	bl sub_020C3DAC
	cmp r5, #0
	beq _020C7CBC
	mov r0, r5
	bl sub_020C74B8
_020C7CBC:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C7C54

	arm_func_start sub_020C7CC4
sub_020C7CC4: ; 0x020C7CC4
	cmp r2, #0
	moveq r1, #0
	beq _020C7CD8
	cmp r1, #0
	moveq r2, #0
_020C7CD8:
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	bx lr
	arm_func_end sub_020C7CC4

	arm_func_start sub_020C7CE4
sub_020C7CE4: ; 0x020C7CE4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	mov r6, r1
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7D38
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	bic r2, r1, #0x100
	mov r1, r6
	str r2, [r4, #0x1c]
	bl sub_020C666C
	mov r0, r4
	bl sub_020C72A4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_020C74B8
	ldmia sp!, {r4, r5, r6, pc}
_020C7D38:
	ldr r5, [r4, #0x24]
	bl sub_020C3D98
	str r6, [r5, #0x14]
	ldr r1, [r4, #0x1c]
	mov r5, r0
	bic r1, r1, #0x200
	add r0, r4, #0xc
	str r1, [r4, #0x1c]
	bl sub_020C2268
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C7CE4

	arm_func_start sub_020C7D68
sub_020C7D68: ; 0x020C7D68
	stmfd sp!, {r3, lr}
	ldr r1, _020C7D8C ; =0x021CEC18
	ldr r2, [r1, #0]
	cmp r2, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020C8398
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C7D8C: .word 0x021CEC18
	arm_func_end sub_020C7D68

	arm_func_start sub_020C7D90
sub_020C7D90: ; 0x020C7D90
	ldr r0, _020C7D9C ; =0x021CEC18
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020C7D9C: .word 0x021CEC18
	arm_func_end sub_020C7D90

	arm_func_start sub_020C7DA0
sub_020C7DA0: ; 0x020C7DA0
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x18]
	str r2, [r0, #8]
	mov r1, #0xe
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end sub_020C7DA0

	arm_func_start sub_020C7DC8
sub_020C7DC8: ; 0x020C7DC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r1
	ldrb r1, [r7]
	mov r8, r0
	mov r6, r2
	cmp r1, #0x2f
	mov r5, r3
	cmpne r1, #0x5c
	bne _020C7E14
	ldr r0, _020C7F08 ; =0x021CEC0C
	mov r1, #0
	ldr r0, [r0, #0]
	strh r1, [sp, #4]
	str r0, [sp]
	str r1, [sp, #8]
	strh r1, [sp, #6]
	add r7, r7, #1
	b _020C7EB8
_020C7E14:
	ldr r0, _020C7F08 ; =0x021CEC0C
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r4, #0
_020C7E28:
	ldrb r0, [r7, r4]
	cmp r0, #0
	cmpne r0, #0x2f
	cmpne r0, #0x5c
	beq _020C7EB8
	cmp r0, #0x3a
	bne _020C7EAC
	mov r0, r7
	mov r1, r4
	bl sub_020C7760
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r0, #0x1c]
	tst r1, #2
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #8]
	strh r1, [sp, #6]
	strh r1, [sp, #4]
	add r0, r4, #1
	ldrb r0, [r7, r0]!
	cmp r0, #0x2f
	cmpne r0, #0x5c
	addeq r7, r7, #1
	b _020C7EB8
_020C7EAC:
	add r4, r4, #1
	cmp r4, #3
	ble _020C7E28
_020C7EB8:
	ldr r1, [sp]
	add r0, sp, #0
	str r1, [r8, #8]
	str r7, [r8, #0x3c]
	add r3, r8, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	cmp r5, #0
	moveq r0, #0
	streq r0, [r8, #0x40]
	streq r6, [r8, #0x44]
	beq _020C7EF4
	mov r0, #1
	str r0, [r8, #0x40]
	str r5, [r8, #0x44]
_020C7EF4:
	mov r0, r8
	mov r1, #4
	bl sub_020C7590
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C7F08: .word 0x021CEC0C
	arm_func_end sub_020C7DC8

	arm_func_start sub_020C7F0C
sub_020C7F0C: ; 0x020C7F0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #0x2c]
	ldr r0, [r7, #0x28]
	mov r6, r2
	str r1, [r7, #0x30]
	sub r0, r0, r4
	cmp r6, r0
	movgt r6, r0
	cmp r6, #0
	movlt r6, #0
	str r2, [r7, #0x34]
	mov r5, r3
	str r6, [r7, #0x38]
	cmp r5, #0
	ldreq r0, [r7, #0xc]
	mov r1, #0
	orreq r0, r0, #4
	streq r0, [r7, #0xc]
	mov r0, r7
	bl sub_020C7590
	cmp r5, #0
	bne _020C7F80
	mov r0, r7
	bl sub_020C8104
	cmp r0, #0
	ldrne r0, [r7, #0x2c]
	subne r6, r0, r4
	mvneq r6, #0
_020C7F80:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C7F0C

	arm_func_start sub_020C7F88
sub_020C7F88: ; 0x020C7F88
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl sub_020C7DA0
	add r0, sp, #0
	mov r1, r4
	mov r2, r5
	mov r3, #0
	bl sub_020C7DC8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C7F88

	arm_func_start sub_020C7FC8
sub_020C7FC8: ; 0x020C7FC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #8]
	ldr ip, [sp, #8]
	mov r1, #7
	str ip, [r4, #0x38]
	str r2, [r4, #0x30]
	str r3, [r4, #0x34]
	bl sub_020C7590
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xc]
	mov r0, #1
	orr r1, r1, #0x10
	bic r1, r1, #0x20
	str r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C7FC8

	arm_func_start sub_020C8010
sub_020C8010: ; 0x020C8010
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r1, [sp, #0xc]
	mov r4, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	str r1, [r4, #8]
	str r1, [r4, #0x30]
	ldr r2, [sp, #0x10]
	mov r1, #6
	str r2, [r4, #0x34]
	bl sub_020C7590
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [r4, #0xc]
	mov r0, #1
	orr r1, r1, #0x10
	bic r1, r1, #0x20
	str r1, [r4, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020C8010

	arm_func_start sub_020C8080
sub_020C8080: ; 0x020C8080
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl sub_020C7F88
	cmp r0, #0
	beq _020C80BC
	add r1, sp, #0
	mov r0, r4
	ldmia r1, {r1, r2}
	bl sub_020C8010
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020C80BC:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C8080

	arm_func_start sub_020C80C8
sub_020C80C8: ; 0x020C80C8
	stmfd sp!, {r4, lr}
	mov r1, #8
	mov r4, r0
	bl sub_020C7590
	cmp r0, #0
	mov r0, #0
	ldmeqia sp!, {r4, pc}
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	mov r0, #1
	bic r1, r1, #0x30
	str r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C80C8

	arm_func_start sub_020C8104
sub_020C8104: ; 0x020C8104
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, #0
	bl sub_020C3D98
	ldr r1, [r6, #0xc]
	mov r4, r0
	tst r1, #1
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	beq _020C8194
	ldr r0, [r6, #0xc]
	tst r0, #0x44
	moveq r5, #1
	movne r5, #0
	cmp r5, #0
	beq _020C816C
	ldr r0, [r6, #0xc]
	orr r0, r0, #4
	str r0, [r6, #0xc]
_020C8154:
	add r0, r6, #0x18
	bl sub_020C2218
	ldr r0, [r6, #0xc]
	tst r0, #0x40
	beq _020C8154
	b _020C8194
_020C816C:
	mov r7, #0
	mov r8, #1
_020C8174:
	add r0, r6, #0x18
	bl sub_020C2218
	ldr r0, [r6, #0xc]
	tst r0, #1
	movne r0, r8
	moveq r0, r7
	cmp r0, #0
	bne _020C8174
_020C8194:
	mov r0, r4
	bl sub_020C3DAC
	cmp r5, #0
	beq _020C81B0
	mov r0, r6
	bl sub_020C754C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C81B0:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C8104

	arm_func_start sub_020C81C4
sub_020C81C4: ; 0x020C81C4
	ldr ip, _020C81D0 ; =sub_020C7F0C
	mov r3, #1
	bx ip
	; .align 2, 0
_020C81D0: .word sub_020C7F0C
	arm_func_end sub_020C81C4

	arm_func_start sub_020C81D4
sub_020C81D4: ; 0x020C81D4
	ldr ip, _020C81E0 ; =sub_020C7F0C
	mov r3, #0
	bx ip
	; .align 2, 0
_020C81E0: .word sub_020C7F0C
	arm_func_end sub_020C81D4

	arm_func_start sub_020C81E4
sub_020C81E4: ; 0x020C81E4
	cmp r2, #0
	beq _020C8200
	cmp r2, #1
	beq _020C820C
	cmp r2, #2
	beq _020C8218
	b _020C8224
_020C8200:
	ldr r2, [r0, #0x24]
	add r1, r1, r2
	b _020C822C
_020C820C:
	ldr r2, [r0, #0x2c]
	add r1, r1, r2
	b _020C822C
_020C8218:
	ldr r2, [r0, #0x28]
	add r1, r1, r2
	b _020C822C
_020C8224:
	mov r0, #0
	bx lr
_020C822C:
	ldr r2, [r0, #0x24]
	cmp r1, r2
	movlt r1, r2
	ldr r2, [r0, #0x28]
	cmp r1, r2
	movgt r1, r2
	str r1, [r0, #0x2c]
	mov r0, #1
	bx lr
	arm_func_end sub_020C81E4

	arm_func_start sub_020C8250
sub_020C8250: ; 0x020C8250
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x54
	mov r4, r0
	add r0, sp, #0xc
	bl sub_020C7DA0
	add r0, sp, #0xc
	add r3, sp, #0
	mov r1, r4
	mov r2, #0
	bl sub_020C7DC8
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r3, _020C82A4 ; =0x021CEC0C
	add r0, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, #1
	add sp, sp, #0x54
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020C82A4: .word 0x021CEC0C
	arm_func_end sub_020C8250

	arm_func_start sub_020C82A8
sub_020C82A8: ; 0x020C82A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020CD9CC
	cmp r0, #0
	movne r1, #5
	moveq r1, #0
	mov r0, r4
	bl sub_020C7CE4
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C82A8

	arm_func_start sub_020C82CC
sub_020C82CC: ; 0x020C82CC
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _020C830C ; =sub_020C82A8
	mov lr, r1
	str ip, [sp]
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, _020C8310 ; =0x021CEC1C
	str r1, [sp, #8]
	mov r1, r2
	ldr r0, [r0, #4]
	mov r2, lr
	bl sub_020CD600
	mov r0, #6
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020C830C: .word sub_020C82A8
_020C8310: .word 0x021CEC1C
	arm_func_end sub_020C82CC

	arm_func_start sub_020C8314
sub_020C8314: ; 0x020C8314
	mov r0, #1
	bx lr
	arm_func_end sub_020C8314

	arm_func_start sub_020C831C
sub_020C831C: ; 0x020C831C
	stmfd sp!, {r3, lr}
	cmp r1, #1
	beq _020C8374
	cmp r1, #9
	beq _020C833C
	cmp r1, #0xa
	beq _020C8358
	b _020C837C
_020C833C:
	ldr r0, _020C8384 ; =0x021CEC1C
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_020CC854
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C8358:
	ldr r0, _020C8384 ; =0x021CEC1C
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_020CC870
	mov r0, #0
	ldmia sp!, {r3, pc}
_020C8374:
	mov r0, #4
	ldmia sp!, {r3, pc}
_020C837C:
	mov r0, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C8384: .word 0x021CEC1C
	arm_func_end sub_020C831C

	arm_func_start sub_020C8388
sub_020C8388: ; 0x020C8388
	mov r0, #1
	bx lr
	arm_func_end sub_020C8388

	arm_func_start sub_020C8390
sub_020C8390: ; 0x020C8390
	mov r0, #4
	bx lr
	arm_func_end sub_020C8390

	arm_func_start sub_020C8398
sub_020C8398: ; 0x020C8398
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r1, _020C84B8 ; =0x021CEC1C
	str r0, [r1, #4]
	bl sub_020C1A00
	ldr r1, _020C84B8 ; =0x021CEC1C
	mov r2, #0
	str r0, [r1, #0]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	bl sub_020CD6F8
	ldr r0, _020C84BC ; =0x021CEC34
	bl sub_020C7734
	ldr r0, _020C84BC ; =0x021CEC34
	ldr r1, _020C84C0 ; =0x02101164
	mov r2, #3
	bl sub_020C77A0
	ldr r4, _020C84C4 ; =0x027FFC40
	ldrh r0, [r4]
	cmp r0, #2
	bne _020C8450
	ldr r3, _020C84B8 ; =0x021CEC1C
	mvn r2, #0
	str r2, [r3, #8]
	mov ip, #0
	str ip, [r3, #0xc]
	str r2, [r3, #0x10]
	ldr r0, _020C84BC ; =0x021CEC34
	ldr r1, _020C84C8 ; =sub_020C8390
	str ip, [r3, #0x14]
	bl sub_020C7CC4
	mov r1, #0
	str r1, [sp]
	ldr r0, _020C84CC ; =sub_020C8388
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr ip, _020C84D0 ; =sub_020C8314
	ldr r0, _020C84BC ; =0x021CEC34
	mov r2, r1
	mov r3, r1
	str ip, [sp, #0xc]
	bl sub_020C78D8
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
_020C8450:
	ldr r0, _020C84BC ; =0x021CEC34
	ldr r1, _020C84D4 ; =sub_020C831C
	ldr r2, _020C84D8 ; =0x00000602
	bl sub_020C7CC4
	ldr r1, [r4, #0x200]
	mvn r0, #0
	cmp r1, r0
	cmpne r1, #0
	ldrne r2, [r4, #0x208]
	cmpne r2, r0
	cmpne r2, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	str r1, [sp]
	ldr r0, [r4, #0x204]
	ldr r1, _020C84DC ; =sub_020C82CC
	str r0, [sp, #4]
	ldr r0, _020C84D0 ; =sub_020C8314
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r3, [r4, #0x20c]
	ldr r0, _020C84BC ; =0x021CEC34
	mov r1, #0
	bl sub_020C78D8
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C84B8: .word 0x021CEC1C
_020C84BC: .word 0x021CEC34
_020C84C0: .word 0x02101164
_020C84C4: .word 0x027FFC40
_020C84C8: .word sub_020C8390
_020C84CC: .word sub_020C8388
_020C84D0: .word sub_020C8314
_020C84D4: .word sub_020C831C
_020C84D8: .word 0x00000602
_020C84DC: .word sub_020C82CC
	arm_func_end sub_020C8398

	arm_func_start sub_020C84E0
sub_020C84E0: ; 0x020C84E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_020C3D98
	mov r4, r0
	ldr r1, _020C8528 ; =0x021CEC1C
	ldr r0, _020C852C ; =0x021CEC34
	ldr r5, [r1, #4]
	bl sub_020C7BB8
	ldr r1, _020C8528 ; =0x021CEC1C
	cmp r0, #0
	str r6, [r1, #4]
	beq _020C8518
	ldr r0, _020C852C ; =0x021CEC34
	bl sub_020C7C54
_020C8518:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C8528: .word 0x021CEC1C
_020C852C: .word 0x021CEC34
	arm_func_end sub_020C84E0

	arm_func_start sub_020C8530
sub_020C8530: ; 0x020C8530
	ldr ip, _020C8548 ; =sub_020C7A08
	mov r3, r0
	mov r2, r1
	ldr r0, _020C854C ; =0x021CEC34
	mov r1, r3
	bx ip
	; .align 2, 0
_020C8548: .word sub_020C7A08
_020C854C: .word 0x021CEC34
	arm_func_end sub_020C8530

	arm_func_start sub_020C8550
sub_020C8550: ; 0x020C8550
	ldr r1, [r0, #0x1c]
	mov r2, r1, lsr #0x18
	tst r2, #1
	movne r0, r1, lsl #8
	movne r0, r0, lsr #8
	ldreq r0, [r0, #8]
	bx lr
	arm_func_end sub_020C8550

	arm_func_start sub_020C856C
sub_020C856C: ; 0x020C856C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [r0, #0xc]
	ldmib r0, {r4, r5}
	add r6, r5, r1
	mov r0, r4
	mov r1, r6
	bl sub_020C2C90
	mov r0, r4
	mov r1, r6
	bl sub_020C2C1C
	add r0, r4, r5
	sub r2, r6, r5
	mov r1, #0
	bl sub_020C4CF4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C856C

	arm_func_start sub_020C85A8
sub_020C85A8: ; 0x020C85A8
	sub sp, sp, #8
	ldr r1, [r1, #0x18]
	ldr r2, _020C85CC ; =0x021CEC34
	str r1, [sp, #4]
	str r2, [r0, #0]
	str r2, [sp]
	str r1, [r0, #4]
	add sp, sp, #8
	bx lr
	; .align 2, 0
_020C85CC: .word 0x021CEC34
	arm_func_end sub_020C85A8

	arm_func_start sub_020C85D0
sub_020C85D0: ; 0x020C85D0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x54
	movs sb, r1
	ldreq r7, [sp, #0x74]
	ldreq r6, [sp, #0x70]
	ldrne r7, [sp, #0x7c]
	ldrne r6, [sp, #0x78]
	cmp r7, r2, lsl #5
	mov r4, r0
	mov r8, r3
	mov r5, r2, lsl #5
	addls sp, sp, #0x54
	movls r0, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, sp, #0xc
	bl sub_020C7DA0
	mvn ip, #0
	add r0, sp, #0xc
	mov r1, r8
	add r2, r6, r5
	add r3, r6, r7
	str ip, [sp]
	bl sub_020C7FC8
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r0, sp, #0xc
	mov r1, r4
	mov r2, #0x20
	bl sub_020C81D4
	cmp r0, #0x20
	add r0, sp, #0xc
	beq _020C8668
	bl sub_020C80C8
	add sp, sp, #0x54
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_020C8668:
	bl sub_020C80C8
	add r0, sp, #4
	mov r1, r4
	str sb, [r4, #0x20]
	bl sub_020C85A8
	add r1, sp, #4
	add r0, sp, #0xc
	ldmia r1, {r1, r2}
	bl sub_020C8010
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [sp, #0x30]
	add r0, sp, #0xc
	str r1, [r4, #0x24]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x30]
	sub r1, r2, r1
	str r1, [r4, #0x28]
	bl sub_020C80C8
	mov r0, #1
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020C85D0

	arm_func_start sub_020C86C8
sub_020C86C8: ; 0x020C86C8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x60
	movs r4, r1
	mov r5, r0
	ldreq r0, _020C87B4 ; =0x021CEC24
	ldrne r0, _020C87B8 ; =0x021CEC2C
	ldr ip, [r0]
	cmp ip, #0
	beq _020C8778
	ldr r0, [r0, #4]
	mov r3, r2, lsl #5
	cmp r0, r2, lsl #5
	addls sp, sp, #0x60
	movls r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
	mov r1, r5
	add r0, ip, r3
	mov r2, #0x20
	bl sub_020C4DB0
	add r0, sp, #0x18
	str r4, [r5, #0x20]
	bl sub_020C7DA0
	add r0, sp, #0x10
	mov r1, r5
	bl sub_020C85A8
	add r1, sp, #0x10
	add r0, sp, #0x18
	ldmia r1, {r1, r2}
	bl sub_020C8010
	cmp r0, #0
	addeq sp, sp, #0x60
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp, #0x3c]
	add r0, sp, #0x18
	str r1, [r5, #0x24]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x3c]
	sub r1, r2, r1
	str r1, [r5, #0x28]
	bl sub_020C80C8
	add sp, sp, #0x60
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020C8778:
	ldr ip, _020C87BC ; =0x027FFE50
	ldr r3, _020C87C0 ; =0x021CEC34
	ldr r1, [ip]
	mov r0, r5
	str r1, [sp]
	ldr r5, [ip, #4]
	mov r1, r4
	str r5, [sp, #4]
	ldr r4, [ip, #8]
	str r4, [sp, #8]
	ldr r4, [ip, #0xc]
	str r4, [sp, #0xc]
	bl sub_020C85D0
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C87B4: .word 0x021CEC24
_020C87B8: .word 0x021CEC2C
_020C87BC: .word 0x027FFE50
_020C87C0: .word 0x021CEC34
	arm_func_end sub_020C86C8

	arm_func_start sub_020C87C4
sub_020C87C4: ; 0x020C87C4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r6, r0
	mov r0, r5
	bl sub_020C7DA0
	add r0, sp, #0
	mov r1, r6
	bl sub_020C85A8
	add r1, sp, #0
	mov r0, r5
	ldmia r1, {r1, r2}
	bl sub_020C8010
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl sub_020C8550
	mov r4, r0
	mov r0, r6
	bl sub_020C856C
	ldr r1, [r6, #4]
	mov r0, r5
	mov r2, r4
	bl sub_020C81C4
	cmp r4, r0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl sub_020C80C8
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C87C4

	arm_func_start sub_020C8850
sub_020C8850: ; 0x020C8850
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	mov r5, r0
	add r0, sp, #8
	bl sub_020C7DA0
	add r0, sp, #0
	mov r1, r5
	bl sub_020C85A8
	add r1, sp, #0
	add r0, sp, #8
	ldmia r1, {r1, r2}
	bl sub_020C8010
	cmp r0, #0
	addeq sp, sp, #0x50
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl sub_020C8550
	mov r4, r0
	mov r0, r5
	bl sub_020C856C
	ldr r1, [r5, #4]
	add r0, sp, #8
	mov r2, r4
	bl sub_020C81D4
	cmp r4, r0
	add r0, sp, #8
	beq _020C88D0
	bl sub_020C80C8
	add sp, sp, #0x50
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020C88D0:
	bl sub_020C80C8
	mov r0, #1
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C8850

	arm_func_start sub_020C88E0
sub_020C88E0: ; 0x020C88E0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x58
	mov r4, r0
	mov r6, r1
	mov r5, r2
	add r0, sp, #0x44
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	ldr r2, _020C8970 ; =0x02101168
	add r1, sp, #4
	ldmia r2, {r0, r2}
	bl sub_020C4DB0
	ldr r3, _020C8970 ; =0x02101168
	mov r1, r6
	ldr ip, [r3, #4]
	mov r2, r5
	add r0, sp, #0x44
	add r3, sp, #4
	str ip, [sp]
	bl sub_020C951C
	add r3, sp, #0x44
	mov r2, #0
_020C893C:
	ldr r1, [r3, #0]
	ldr r0, [r4, r2]
	cmp r1, r0
	bne _020C895C
	add r2, r2, #4
	cmp r2, #0x14
	add r3, r3, #4
	blo _020C893C
_020C895C:
	cmp r2, #0x14
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C8970: .word 0x02101168
	arm_func_end sub_020C88E0

	arm_func_start sub_020C8974
sub_020C8974: ; 0x020C8974
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C8550
	ldr r1, _020C8A58 ; =0x027FFC40
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #2
	bne _020C8A04
	ldr r1, [r5, #0x1c]
	mov r0, #0
	mov r1, r1, lsr #0x18
	tst r1, #2
	beq _020C89E4
	ldr r1, _020C8A5C ; =0x02101D14
	ldr r3, _020C8A60 ; =0x02101D14
	ldr r2, _020C8A64 ; =0x66666667
	sub ip, r1, r3
	smull r1, lr, r2, ip
	mov r1, ip, lsr #0x1f
	ldr r2, [r5, #0]
	add lr, r1, lr, asr #3
	cmp r2, lr
	bhs _020C89E4
	mov r0, #0x14
	mla r0, r2, r0, r3
	ldr r1, [r5, #4]
	mov r2, r4
	bl sub_020C88E0
_020C89E4:
	cmp r0, #0
	bne _020C8A04
	ldr r0, [r5, #4]
	mov r2, r4
	mov r1, #0
	bl sub_020C4CF4
	bl sub_020C42A8
	ldmia sp!, {r3, r4, r5, pc}
_020C8A04:
	ldr r0, [r5, #0x1c]
	mov r0, r0, lsr #0x18
	tst r0, #1
	beq _020C8A20
	ldr r0, [r5, #4]
	add r0, r0, r4
	bl sub_02000970
_020C8A20:
	ldmib r5, {r0, r1}
	bl sub_020C2C54
	ldr r4, [r5, #0x10]
	ldr r5, [r5, #0x14]
	cmp r4, r5
	ldmhsia sp!, {r3, r4, r5, pc}
_020C8A38:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _020C8A48
	blx r0
_020C8A48:
	add r4, r4, #4
	cmp r4, r5
	blo _020C8A38
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C8A58: .word 0x027FFC40
_020C8A5C: .word 0x02101D14
_020C8A60: .word 0x02101D14
_020C8A64: .word 0x66666667
	arm_func_end sub_020C8974

	arm_func_start sub_020C8A68
sub_020C8A68: ; 0x020C8A68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
_020C8A70:
	ldr r1, [fp, #8]
	ldr r0, [fp, #0xc]
	mov r4, #0
	ldr r6, [fp, #4]
	add r0, r1, r0
	mov r5, r4
	add r7, r6, r0
	bl sub_020C3D98
	ldr r1, _020C8B54 ; =0x021D0D68
	mov ip, r4
	ldr lr, [r1]
	mov r8, lr
	cmp lr, #0
	beq _020C8B1C
	mov r2, r4
_020C8AAC:
	ldr sl, [r8, #8]
	ldr sb, [r8]
	cmp sl, #0
	ldr r3, [r8, #4]
	bne _020C8AD0
	cmp r3, r6
	blo _020C8AD0
	cmp r3, r7
	blo _020C8AE0
_020C8AD0:
	cmp sl, r6
	blo _020C8B0C
	cmp sl, r7
	bhs _020C8B0C
_020C8AE0:
	cmp r5, #0
	strne r8, [r5]
	moveq r4, r8
	cmp lr, r8
	streq sb, [r1]
	moveq lr, sb
	str r2, [r8]
	cmp ip, #0
	mov r5, r8
	strne sb, [ip]
	b _020C8B10
_020C8B0C:
	mov ip, r8
_020C8B10:
	mov r8, sb
	cmp sb, #0
	bne _020C8AAC
_020C8B1C:
	bl sub_020C3DAC
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C8B28:
	ldr r1, [r4, #4]
	ldr r5, [r4, #0]
	cmp r1, #0
	beq _020C8B40
	ldr r0, [r4, #8]
	blx r1
_020C8B40:
	mov r4, r5
	cmp r5, #0
	bne _020C8B28
	b _020C8A70
_020C8B50:
	.byte 0xF8, 0x8F, 0xBD, 0xE8
_020C8B54: .word 0x021D0D68
	arm_func_end sub_020C8A68

	arm_func_start sub_020C8B58
sub_020C8B58: ; 0x020C8B58
	stmfd sp!, {r3, lr}
	bl sub_020C8A68
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C8B58

	arm_func_start sub_020C8B68
sub_020C8B68: ; 0x020C8B68
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_020C86C8
	cmp r0, #0
	beq _020C8B9C
	add r0, sp, #0
	bl sub_020C8850
	cmp r0, #0
	bne _020C8BA8
_020C8B9C:
	add sp, sp, #0x2c
	mov r0, #0
	ldmia sp!, {pc}
_020C8BA8:
	add r0, sp, #0
	bl sub_020C8974
	mov r0, #1
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end sub_020C8B68

	arm_func_start sub_020C8BBC
sub_020C8BBC: ; 0x020C8BBC
	stmdb sp!, {lr}
	sub sp, sp, #0x2c
	mov r3, r0
	mov r2, r1
	add r0, sp, #0
	mov r1, r3
	bl sub_020C86C8
	cmp r0, #0
	beq _020C8BF0
	add r0, sp, #0
	bl sub_020C8B58
	cmp r0, #0
	bne _020C8BFC
_020C8BF0:
	add sp, sp, #0x2c
	mov r0, #0
	ldmia sp!, {pc}
_020C8BFC:
	mov r0, #1
	add sp, sp, #0x2c
	ldmia sp!, {pc}
	arm_func_end sub_020C8BBC

	arm_func_start sub_020C8C08
sub_020C8C08: ; 0x020C8C08
	ldr r2, _020C8C38 ; =0x67452301
	ldr r1, _020C8C3C ; =0xEFCDAB89
	str r2, [r0, #0]
	ldr r2, _020C8C40 ; =0x98BADCFE
	str r1, [r0, #4]
	ldr r1, _020C8C44 ; =0x10325476
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
_020C8C38: .word 0x67452301
_020C8C3C: .word 0xEFCDAB89
_020C8C40: .word 0x98BADCFE
_020C8C44: .word 0x10325476
	arm_func_end sub_020C8C08

	arm_func_start sub_020C8C48
sub_020C8C48: ; 0x020C8C48
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	ldr r3, [r6, #0x10]
	mov r4, r2
	and ip, r3, #0x3f
	ldr r0, [r6, #0x14]
	adds r3, r3, r4
	str r3, [r6, #0x10]
	adc r0, r0, #0
	rsb r7, ip, #0x40
	mov r5, r1
	str r0, [r6, #0x14]
	cmp r7, r4
	bls _020C8C9C
	cmp r4, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r1, r6, #0x18
	mov r0, r5
	add r1, r1, ip
	bl sub_020C4DB0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C8C9C:
	add r1, r6, #0x18
	mov r0, r5
	mov r2, r7
	add r1, r1, ip
	bl sub_020C4DB0
	mov r0, r6
	bl sub_020C8DC8
	sub r4, r4, r7
	mov r8, r4, lsr #6
	cmp r8, #0
	add r7, r5, r7
	ble _020C8CF8
	mov r5, #0x40
_020C8CD0:
	mov r0, r7
	mov r2, r5
	add r1, r6, #0x18
	bl sub_020C4DB0
	mov r0, r6
	add r7, r7, #0x40
	bl sub_020C8DC8
	sub r8, r8, #1
	cmp r8, #0
	bgt _020C8CD0
_020C8CF8:
	ands r2, r4, #0x3f
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r7
	add r1, r6, #0x18
	bl sub_020C4DB0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C8C48

	arm_func_start sub_020C8D10
sub_020C8D10: ; 0x020C8D10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0x10]
	mov r5, r0
	mov r6, r1, lsl #3
	ldr r1, _020C8DC4 ; =0x02101170
	mov r0, r4
	mov r2, #1
	orr r6, r6, r3, lsr #29
	mov r7, r3, lsl #3
	bl sub_020C8C48
	ldr r0, [r4, #0x10]
	mov r1, #0
	and r3, r0, #0x3f
	rsb r2, r3, #0x40
	cmp r2, #8
	bhs _020C8D74
	add r0, r4, #0x18
	add r0, r0, r3
	bl sub_020C4CF4
	mov r0, r4
	bl sub_020C8DC8
	mov r3, #0
	mov r2, #0x40
_020C8D74:
	cmp r2, #8
	bls _020C8D90
	add r0, r4, #0x18
	add r0, r0, r3
	sub r2, r2, #8
	mov r1, #0
	bl sub_020C4CF4
_020C8D90:
	str r7, [r4, #0x50]
	mov r0, r4
	str r6, [r4, #0x54]
	bl sub_020C8DC8
	mov r0, r4
	mov r1, r5
	mov r2, #0x10
	bl sub_020C4DB0
	mov r0, r4
	mov r1, #0
	mov r2, #0x58
	bl sub_020C4CF4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C8DC4: .word 0x02101170
	arm_func_end sub_020C8D10

	arm_func_start sub_020C8DC8
sub_020C8DC8: ; 0x020C8DC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldmia r0, {r2, r3, ip, lr}
	add r4, r0, #0x18
	ldr r5, _020C9174 ; =0x02101234
	mov r7, r4
	mov r8, #0
_020C8DE0:
	mvn r1, r3
	and r6, r3, ip
	and r1, r1, lr
	orr r1, r6, r1
	ldr r6, [r7, #0]
	add r1, r2, r1
	ldr r2, [r5, #0]
	add r1, r6, r1
	add r2, r2, r1
	mov r1, r2, lsr #0x19
	orr r1, r1, r2, lsl #7
	add r2, r3, r1
	mvn r1, r2
	and r6, r2, r3
	and r1, r1, ip
	orr r1, r6, r1
	ldr r6, [r7, #4]
	add r1, lr, r1
	ldr sb, [r5, #4]
	add r1, r6, r1
	add r6, sb, r1
	mov r1, r6, lsr #0x14
	orr r1, r1, r6, lsl #12
	add lr, r2, r1
	mvn r1, lr
	and r6, lr, r2
	and r1, r1, r3
	orr r1, r6, r1
	ldr sb, [r7, #8]
	add r6, ip, r1
	ldr r1, [r7, #0xc]
	add sb, sb, r6
	ldr sl, [r5, #8]
	ldr r6, [r5, #0xc]
	add sl, sl, sb
	mov sb, sl, lsr #0xf
	orr sb, sb, sl, lsl #17
	add ip, lr, sb
	add r5, r5, #0x10
	add r7, r7, #0x10
	and sl, ip, lr
	mvn sb, ip
	and sb, sb, r2
	orr sb, sl, sb
	add r3, r3, sb
	add r1, r1, r3
	add r3, r6, r1
	mov r1, r3, lsr #0xa
	orr r1, r1, r3, lsl #22
	add r3, ip, r1
	add r8, r8, #1
	cmp r8, #4
	blt _020C8DE0
	ldr r1, _020C9178 ; =0x02101174
	mov r6, #0
_020C8EBC:
	mvn r7, lr
	ldr sb, [r1]
	and r8, r3, lr
	and r7, ip, r7
	orr r7, r8, r7
	ldr r8, [r4, sb, lsl #2]
	add r2, r2, r7
	ldr r7, [r5, #0]
	add r2, r8, r2
	add r7, r7, r2
	mov r2, r7, lsr #0x1b
	orr r2, r2, r7, lsl #5
	add r2, r3, r2
	mvn r8, ip
	ldr r7, [r1, #4]
	and sb, r2, ip
	and r8, r3, r8
	orr sl, sb, r8
	mvn r8, r3
	ldr sb, [r1, #8]
	ldr fp, [r4, r7, lsl #2]
	add r7, lr, sl
	add r7, fp, r7
	ldr sl, [r5, #4]
	ldr sb, [r4, sb, lsl #2]
	add sl, sl, r7
	ldr r7, [r1, #0xc]
	and r8, r2, r8
	ldr r7, [r4, r7, lsl #2]
	mov fp, sl, lsr #0x17
	orr sl, fp, sl, lsl #9
	add lr, r2, sl
	ldr sl, [r5, #8]
	and fp, lr, r3
	orr r8, fp, r8
	add r8, ip, r8
	add r8, sb, r8
	add sb, sl, r8
	mov r8, sb, lsr #0x12
	orr r8, r8, sb, lsl #14
	add ip, lr, r8
	mvn r8, r2
	and sb, lr, r8
	ldr r8, [r5, #0xc]
	add r5, r5, #0x10
	add r1, r1, #0x10
	and sl, ip, r2
	orr sb, sl, sb
	add r3, r3, sb
	add r3, r7, r3
	add r7, r8, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r7, lsl #20
	add r3, ip, r3
	add r6, r6, #1
	cmp r6, #4
	blt _020C8EBC
	mov r6, #0
_020C8FA4:
	ldr r8, [r1]
	eor r7, r3, ip
	eor r7, lr, r7
	ldr r8, [r4, r8, lsl #2]
	add r2, r2, r7
	ldr r7, [r5, #0]
	add r2, r8, r2
	add r7, r7, r2
	mov r2, r7, lsr #0x1c
	orr r2, r2, r7, lsl #4
	add r2, r3, r2
	ldr r8, [r1, #4]
	eor r7, r2, r3
	eor r7, ip, r7
	ldr r8, [r4, r8, lsl #2]
	add r7, lr, r7
	ldr sb, [r1, #8]
	ldr sl, [r5, #4]
	add r7, r8, r7
	add r8, sl, r7
	mov r7, r8, lsr #0x15
	orr r7, r7, r8, lsl #11
	add lr, r2, r7
	eor r8, lr, r2
	ldr r7, [r1, #0xc]
	ldr sb, [r4, sb, lsl #2]
	eor r8, r3, r8
	add r8, ip, r8
	add sb, sb, r8
	ldr sl, [r5, #8]
	ldr r8, [r4, r7, lsl #2]
	add sb, sl, sb
	mov r7, sb, lsr #0x10
	orr r7, r7, sb, lsl #16
	add ip, lr, r7
	eor r7, ip, lr
	eor r7, r2, r7
	add r3, r3, r7
	add r3, r8, r3
	ldr r7, [r5, #0xc]
	add r5, r5, #0x10
	add r7, r7, r3
	add r1, r1, #0x10
	mov r3, r7, lsr #9
	orr r3, r3, r7, lsl #23
	add r3, ip, r3
	add r6, r6, #1
	cmp r6, #4
	blt _020C8FA4
	mov r8, #0
_020C906C:
	mvn r6, lr
	ldr r7, [r1, #0]
	orr r6, r3, r6
	eor r6, ip, r6
	ldr r7, [r4, r7, lsl #2]
	add r2, r2, r6
	ldr r6, [r5, #0]
	add r2, r7, r2
	add r6, r6, r2
	mov r2, r6, lsr #0x1a
	orr r2, r2, r6, lsl #6
	add r2, r3, r2
	mvn r6, ip
	ldr sb, [r1, #4]
	orr r6, r2, r6
	eor r7, r3, r6
	ldr r6, [r1, #8]
	ldr sb, [r4, sb, lsl #2]
	add r7, lr, r7
	ldr sl, [r5, #4]
	add r7, sb, r7
	add sb, sl, r7
	mov r7, sb, lsr #0x16
	orr sb, r7, sb, lsl #10
	ldr r7, [r1, #0xc]
	add lr, r2, sb
	mvn sb, r3
	ldr r6, [r4, r6, lsl #2]
	orr sb, lr, sb
	eor sb, r2, sb
	add sb, ip, sb
	add sb, r6, sb
	ldr sl, [r5, #8]
	ldr r6, [r4, r7, lsl #2]
	add sb, sl, sb
	mov r7, sb, lsr #0x11
	orr sb, r7, sb, lsl #15
	ldr r7, [r5, #0xc]
	add ip, lr, sb
	add r5, r5, #0x10
	add r1, r1, #0x10
	mvn sb, r2
	orr sb, ip, sb
	eor sb, lr, sb
	add r3, r3, sb
	add r3, r6, r3
	add r6, r7, r3
	mov r3, r6, lsr #0xb
	orr r3, r3, r6, lsl #21
	add r3, ip, r3
	add r8, r8, #1
	cmp r8, #4
	blt _020C906C
	ldr r1, [r0, #0]
	add r1, r1, r2
	str r1, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r1, r3
	str r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, ip
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	add r1, r1, lr
	str r1, [r0, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020C9174: .word 0x02101234
_020C9178: .word 0x02101174
	arm_func_end sub_020C8DC8

	arm_func_start sub_020C917C
sub_020C917C: ; 0x020C917C
	ldr r1, _020C91B8 ; =0x67452301
	ldr r2, _020C91BC ; =0xEFCDAB89
	str r1, [r0, #0]
	ldr r1, _020C91C0 ; =0x98BADCFE
	str r2, [r0, #4]
	ldr r2, _020C91C4 ; =0x10325476
	str r1, [r0, #8]
	ldr r1, _020C91C8 ; =0xC3D2E1F0
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	bx lr
	; .align 2, 0
_020C91B8: .word 0x67452301
_020C91BC: .word 0xEFCDAB89
_020C91C0: .word 0x98BADCFE
_020C91C4: .word 0x10325476
_020C91C8: .word 0xC3D2E1F0
	arm_func_end sub_020C917C

	arm_func_start sub_020C91CC
sub_020C91CC: ; 0x020C91CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	movs r8, r2
	mov sb, r1
	add r6, sl, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x14]
	add r1, r0, r8, lsl #3
	cmp r1, r0
	ldrlo r0, [sl, #0x18]
	addlo r0, r0, #1
	strlo r0, [sl, #0x18]
	ldr r0, [sl, #0x18]
	add r0, r0, r8, lsr #29
	str r0, [sl, #0x18]
	str r1, [sl, #0x14]
	ldr r1, [sl, #0x1c]
	cmp r1, #0
	beq _020C9284
	add r0, r1, r8
	cmp r0, #0x40
	blo _020C9264
	rsb r4, r1, #0x40
	mov r0, sb
	mov r2, r4
	add r1, r6, r1
	bl sub_020C4DB0
	ldr r1, _020C931C ; =0x02101338
	mov r0, sl
	ldr r3, [r1, #0]
	mov r1, r6
	mov r2, #0x40
	sub r8, r8, r4
	add sb, sb, r4
	blx r3
	mov r0, #0
	str r0, [sl, #0x1c]
	b _020C9284
_020C9264:
	mov r0, sb
	mov r2, r8
	add r1, r6, r1
	bl sub_020C4DB0
	ldr r0, [sl, #0x1c]
	add r0, r0, r8
	str r0, [sl, #0x1c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020C9284:
	cmp r8, #0x40
	blo _020C92FC
	bic r7, r8, #0x3f
	tst sb, #3
	sub r8, r8, r7
	bne _020C92BC
	ldr r1, _020C931C ; =0x02101338
	mov r0, sl
	ldr r3, [r1, #0]
	mov r1, sb
	mov r2, r7
	blx r3
	add sb, sb, r7
	b _020C92FC
_020C92BC:
	mov r5, #0x40
	ldr r4, _020C931C ; =0x02101338
	mov fp, r5
_020C92C8:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl sub_020C4DB0
	ldr r3, [r4, #0]
	mov r0, sl
	mov r1, r6
	add sb, sb, #0x40
	mov r2, fp
	blx r3
	sub r7, r7, #0x40
	cmp r7, #0
	bgt _020C92C8
_020C92FC:
	str r8, [sl, #0x1c]
	cmp r8, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb
	mov r1, r6
	mov r2, r8
	bl sub_020C4DB0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020C931C: .word 0x02101338
	arm_func_end sub_020C91CC

	arm_func_start sub_020C9320
sub_020C9320: ; 0x020C9320
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	ldr r0, [sp, #0x10]
	mov r6, r1
	ldr r3, [r0, #0x1c]
	add r4, r0, #0x20
	tst r3, #3
	mov r2, r3, asr #2
	moveq r0, #0
	streq r0, [r4, r2, lsl #2]
	ldr r1, [sp, #0x10]
	mov r0, #0x80
	add r5, r1, #0x20
	strb r0, [r5, r3]
	add r3, r3, #1
	tst r3, #3
	beq _020C9378
	mov r0, #0
_020C9368:
	strb r0, [r5, r3]
	add r3, r3, #1
	tst r3, #3
	bne _020C9368
_020C9378:
	ldr r0, [sp, #0x10]
	add r2, r2, #1
	ldr r0, [r0, #0x1c]
	cmp r0, #0x38
	blt _020C93C4
	cmp r2, #0x10
	bge _020C93A8
	mov r0, #0
_020C9398:
	str r0, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x10
	blt _020C9398
_020C93A8:
	ldr r1, _020C9518 ; =0x02101338
	ldr r0, [sp, #0x10]
	ldr r3, [r1, #0]
	mov r1, r4
	mov r2, #0x40
	blx r3
	mov r2, #0
_020C93C4:
	cmp r2, #0xe
	bge _020C93E0
	mov r0, #0
_020C93D0:
	str r0, [r4, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0xe
	blt _020C93D0
_020C93E0:
	ldr r0, [sp, #0x10]
	ldr r3, _020C9518 ; =0x02101338
	ldr r2, [r0, #0x14]
	mov r1, r4
	strb r2, [r5, #0x3f]
	mov r0, r2, lsr #8
	strb r0, [r5, #0x3e]
	mov r0, r2, lsr #0x10
	strb r0, [r5, #0x3d]
	mov r0, r2, lsr #0x18
	strb r0, [r5, #0x3c]
	ldr r0, [sp, #0x10]
	mov r2, #0x40
	ldr r4, [r0, #0x18]
	strb r4, [r5, #0x3b]
	mov r0, r4, lsr #8
	strb r0, [r5, #0x3a]
	mov r0, r4, lsr #0x10
	strb r0, [r5, #0x39]
	mov r0, r4, lsr #0x18
	strb r0, [r5, #0x38]
	ldr r0, [sp, #0x10]
	ldr r3, [r3, #0]
	blx r3
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0]
	mov r0, r1, lsr #0x18
	strb r0, [r6]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #1]
	mov r0, r1, lsr #8
	strb r0, [r6, #2]
	strb r1, [r6, #3]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #4]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #4]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #5]
	mov r0, r1, lsr #8
	strb r0, [r6, #6]
	strb r1, [r6, #7]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #8]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #8]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #9]
	mov r0, r1, lsr #8
	strb r0, [r6, #0xa]
	strb r1, [r6, #0xb]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0xc]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #0xc]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #0xd]
	mov r0, r1, lsr #8
	strb r0, [r6, #0xe]
	strb r1, [r6, #0xf]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	mov r0, r1, lsr #0x18
	strb r0, [r6, #0x10]
	mov r0, r1, lsr #0x10
	strb r0, [r6, #0x11]
	mov r0, r1, lsr #8
	strb r0, [r6, #0x12]
	strb r1, [r6, #0x13]
	ldr r3, [sp, #0x10]
	mov r0, #0
	add r1, sp, #0x10
	mov r2, #4
	str r0, [r3, #0x1c]
	bl sub_020C4B4C
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020C9518: .word 0x02101338
	arm_func_end sub_020C9320

	arm_func_start sub_020C951C
sub_020C951C: ; 0x020C951C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xa0
	ldr lr, _020C95A0 ; =0x020FE4E8
	add ip, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mov r4, ip
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	add lr, sp, #0x38
	add ip, sp, #0x24
	str lr, [sp, #0x10]
	ldr lr, _020C95A4 ; =sub_020C917C
	str ip, [sp, #0x14]
	ldr ip, _020C95A8 ; =sub_020C91CC
	str lr, [sp, #0x18]
	ldr lr, _020C95AC ; =sub_020C9320
	str ip, [sp, #0x1c]
	ldr ip, [sp, #0xb8]
	str lr, [sp, #0x20]
	str ip, [sp]
	mov r3, r5
	mov r0, r8
	mov r1, r7
	mov r2, r6
	str r4, [sp, #4]
	bl sub_020C95B0
	add sp, sp, #0xa0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C95A0: .word 0x020FE4E8
_020C95A4: .word sub_020C917C
_020C95A8: .word sub_020C91CC
_020C95AC: .word sub_020C9320
	arm_func_end sub_020C951C

	arm_func_start sub_020C95B0
sub_020C95B0: ; 0x020C95B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc0
	ldr r5, [sp, #0xe0]
	ldr r4, [sp, #0xe4]
	mov r8, r1
	movs sb, r0
	mov r7, r2
	cmpne r8, #0
	mov r6, r3
	cmpne r7, #0
	cmpne r6, #0
	cmpne r5, #0
	cmpne r4, #0
	addeq sp, sp, #0xc0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [r4, #4]
	cmp r5, r0
	ble _020C9630
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r3, [r4, #0x14]
	mov r1, r6
	mov r2, r5
	blx r3
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x18]
	add r1, sp, #0x80
	blx r2
	ldr r5, [r4, #0]
	add r6, sp, #0x80
_020C9630:
	cmp r5, #0
	mov r2, #0
	ble _020C9658
	add r1, sp, #0x40
_020C9640:
	ldrb r0, [r6, r2]
	add r2, r2, #1
	cmp r2, r5
	eor r0, r0, #0x36
	strb r0, [r1], #1
	blt _020C9640
_020C9658:
	ldr r0, [r4, #4]
	cmp r2, r0
	bge _020C9684
	add r0, sp, #0x40
	add r3, r0, r2
	mov r1, #0x36
_020C9670:
	strb r1, [r3], #1
	ldr r0, [r4, #4]
	add r2, r2, #1
	cmp r2, r0
	blt _020C9670
_020C9684:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x14]
	add r1, sp, #0x40
	blx r3
	ldr r0, [r4, #8]
	ldr r3, [r4, #0x14]
	mov r1, r8
	mov r2, r7
	blx r3
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x18]
	blx r2
	cmp r5, #0
	mov r3, #0
	ble _020C96F0
	add r1, sp, #0
_020C96D8:
	ldrb r0, [r6, r3]
	add r3, r3, #1
	cmp r3, r5
	eor r0, r0, #0x5c
	strb r0, [r1], #1
	blt _020C96D8
_020C96F0:
	ldr r0, [r4, #4]
	cmp r3, r0
	bge _020C971C
	add r0, sp, #0
	add r2, r0, r3
	mov r1, #0x5c
_020C9708:
	strb r1, [r2], #1
	ldr r0, [r4, #4]
	add r3, r3, #1
	cmp r3, r0
	blt _020C9708
_020C971C:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	blx r1
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	ldr r3, [r4, #0x14]
	add r1, sp, #0
	blx r3
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0]
	ldr r3, [r4, #0x14]
	blx r3
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x18]
	mov r1, sb
	blx r2
	add sp, sp, #0xc0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020C9768: .word 0x00FF00FF
_020C976C: .word 0x5A827999
_020C9770: .word 0x6ED9EBA1
_020C9774: .word 0x8F1BBCDC
_020C9778: .word 0xCA62C1D6
	arm_func_end sub_020C95B0

	arm_func_start sub_020C977C
sub_020C977C: ; 0x020C977C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, lr}
	ldmia r0, {r3, sb, sl, fp, ip}
	sub sp, sp, #0x84
	str r2, [sp, #0x80]
_020C978C:
	ldr r8, _020C976C ; =0x5A827999
	ldr r7, _020C9768 ; =0x00FF00FF
	mov r6, sp
	mov r5, #0
_020C979C:
	ldr r4, [r1, #0], #4
	add r2, r8, ip
	add r2, r2, r3, ror #27
	and lr, r4, r7
	and r4, r7, r4, ror #24
	orr r4, r4, lr, ror #8
	str r4, [r6, #0x40]
	str r4, [r6, #0], #4
	add r2, r2, r4
	eor r4, sl, fp
	and r4, r4, sb
	eor r4, r4, fp
	add r2, r2, r4
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r5, r5, #4
	cmp r5, #0x40
	blt _020C979C
	mov r7, #0
	mov r6, sp
_020C97FC:
	ldr r2, [r6, #0]
	ldr r5, [r6, #8]
	ldr r4, [r6, #0x20]
	ldr lr, [r6, #0x34]
	eor r2, r2, r5
	eor r4, r4, lr
	eor r2, r2, r4
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6, #0], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	eor r4, sl, fp
	and r4, r4, sb
	eor r4, r4, fp
	add r2, r2, r4
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #4
	cmp r7, #0x10
	blt _020C97FC
	ldr r8, _020C9770 ; =0x6ED9EBA1
	mov r7, #0
_020C986C:
	ldr r2, [r6, #0]
	ldr r4, [r6, #8]
	ldr lr, [r6, #0x20]
	ldr r5, [r6, #0x34]
	eor r2, r2, r4
	eor lr, lr, r5
	eor r2, r2, lr
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6, #0], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	eor lr, sb, sl
	eor lr, lr, fp
	add r2, r2, lr
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #1
	cmp r7, #0xc
	moveq r6, sp
	cmp r7, #0x14
	blt _020C986C
	ldr r8, _020C9774 ; =0x8F1BBCDC
	mov r7, #0
_020C98E0:
	ldr r2, [r6, #0]
	ldr lr, [r6, #8]
	ldr r5, [r6, #0x20]
	ldr r4, [r6, #0x34]
	eor r2, r2, lr
	eor r5, r5, r4
	eor r2, r2, r5
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6, #0], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	orr r5, sb, sl
	and r5, r5, fp
	and r4, sb, sl
	orr r5, r5, r4
	add r2, r2, r5
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #1
	cmp r7, #8
	moveq r6, sp
	cmp r7, #0x14
	blt _020C98E0
	ldr r8, _020C9778 ; =0xCA62C1D6
	mov r7, #0
_020C995C:
	ldr r2, [r6, #0]
	ldr r5, [r6, #8]
	ldr r4, [r6, #0x20]
	ldr lr, [r6, #0x34]
	eor r2, r2, r5
	eor r4, r4, lr
	eor r2, r2, r4
	mov r2, r2, ror #0x1f
	str r2, [r6, #0x40]
	str r2, [r6, #0], #4
	add r2, r2, ip
	add r2, r2, r8
	add r2, r2, r3, ror #27
	eor r4, sb, sl
	eor r4, r4, fp
	add r2, r2, r4
	mov sb, sb, ror #2
	mov ip, fp
	mov fp, sl
	mov sl, sb
	mov sb, r3
	mov r3, r2
	add r7, r7, #1
	cmp r7, #4
	moveq r6, sp
	cmp r7, #0x14
	blt _020C995C
	ldmia r0, {r2, r4, r6, r7, lr}
	add r3, r3, r2
	add sb, sb, r4
	add sl, sl, r6
	add fp, fp, r7
	add ip, ip, lr
	stmia r0, {r3, sb, sl, fp, ip}
	ldr lr, [sp, #0x80]
	subs lr, lr, #0x40
	str lr, [sp, #0x80]
	bgt _020C978C
	add sp, sp, #0x84
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, ip, pc}
	arm_func_end sub_020C977C

	arm_func_start sub_020C99FC
sub_020C99FC: ; 0x020C99FC
	ldr r1, _020C9A38 ; =0x04000290
	stmdb sp!, {r4}
	ldmia r1, {r2, r3, r4, ip}
	stmia r0!, {r2, r3, r4, ip}
	ldrh ip, [r1, #-0x10]
	add r1, r1, #0x28
	ldmia r1, {r2, r3}
	stmia r0!, {r2, r3}
	and ip, ip, #3
	ldrh r2, [r1, #-8]
	strh ip, [r0]
	and r2, r2, #1
	strh r2, [r0, #2]
	ldmia sp!, {r4}
	bx lr
	; .align 2, 0
_020C9A38: .word 0x04000290
	arm_func_end sub_020C99FC

	arm_func_start sub_020C9A3C
sub_020C9A3C: ; 0x020C9A3C
	stmdb sp!, {r4}
	ldr r1, _020C9A74 ; =0x04000290
	ldmia r0, {r2, r3, r4, ip}
	stmia r1, {r2, r3, r4, ip}
	ldrh r2, [r0, #0x18]
	ldrh r3, [r0, #0x1a]
	strh r2, [r1, #-0x10]
	strh r3, [r1, #0x20]
	add r0, r0, #0x10
	add r1, r1, #0x28
	ldmia r0, {r2, r3}
	stmia r1, {r2, r3}
	ldmia sp!, {r4}
	bx lr
	; .align 2, 0
_020C9A74: .word 0x04000290
	arm_func_end sub_020C9A3C

	arm_func_start sub_020C9A78
sub_020C9A78: ; 0x020C9A78
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r0, r1, lsl #0x10
	mov r3, r0, lsr #0x10
	and r0, r3, #0x7f00
	mov r0, r0, lsl #8
	cmp r2, #0
	mov r0, r0, lsr #0x10
	beq _020C9AD4
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov r2, #1
	ldrh r3, [r1, #0x38]
	orr r2, r3, r2, lsl r0
	strh r2, [r1, #0x38]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #4
	mov r2, #0
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9AD4:
	cmp r0, #0x10
	bne _020C9B8C
	ldr r1, _020C9CF0 ; =0x021CEC90
	ldrh r2, [r1, #0x10]
	add r2, r2, #1
	strh r2, [r1, #0x10]
	ldrh r3, [r1, #0x10]
	ldrh r2, [r1, #0x18]
	cmp r3, r2
	movhs r2, #0
	strhsh r2, [r1, #0x10]
	ldr r2, _020C9CF4 ; =0x027FFFAA
	ldr r1, _020C9CF0 ; =0x021CEC90
	ldrh r3, [r2]
	ldrh r2, [r2, #2]
	ldrh lr, [r1, #0x10]
	strh r3, [sp, #4]
	strh r2, [sp, #6]
	ldr r5, [sp, #4]
	ldr r7, [r1, #0x14]
	mov r2, r5, lsl #7
	mov r3, r2, lsr #0x1f
	mov r4, r5, lsl #8
	mov r2, r5, lsl #5
	mov ip, r5, lsl #0x14
	mov r2, r2, lsr #0x1e
	mov r6, lr, lsl #3
	mov r5, ip, lsr #0x14
	strh r5, [r7, r6]
	add r5, r7, lr, lsl #3
	mov r4, r4, lsr #0x14
	strh r4, [r5, #2]
	and r3, r3, #0xff
	strh r3, [r5, #4]
	and r2, r2, #0xff
	strh r2, [r5, #6]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r2, [r1, #0x10]
	mov r1, #0
	and r2, r2, #0xff
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9B8C:
	tst r1, #0x1000000
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	and r1, r3, #0xff
	cmp r1, #4
	addls pc, pc, r1, lsl #2
	b _020C9CE4
_020C9BA8: ; jump table
	b _020C9BBC ; case 0
	b _020C9CE4 ; case 1
	b _020C9C90 ; case 2
	b _020C9C98 ; case 3
	b _020C9C88 ; case 4
_020C9BBC:
	cmp r0, #0
	beq _020C9BE0
	cmp r0, #1
	beq _020C9C40
	cmp r0, #2
	ldreq r1, _020C9CF0 ; =0x021CEC90
	moveq r2, #0
	streqh r2, [r1, #0x36]
	b _020C9C4C
_020C9BE0:
	ldr r2, _020C9CF4 ; =0x027FFFAA
	ldr r1, _020C9CF0 ; =0x021CEC90
	ldrh r4, [r2]
	ldrh r3, [r2, #2]
	mov r2, #0
	strh r4, [sp]
	strh r3, [sp, #2]
	ldr r4, [sp]
	mov r3, r4, lsl #0x14
	mov r5, r3, lsr #0x14
	mov lr, r4, lsl #8
	mov r3, r4, lsl #7
	mov ip, r3, lsr #0x1f
	mov r3, r4, lsl #5
	mov r3, r3, lsr #0x1e
	strh r5, [r1, #8]
	mov lr, lr, lsr #0x14
	strh lr, [r1, #0xa]
	and ip, ip, #0xff
	strh ip, [r1, #0xc]
	and r3, r3, #0xff
	strh r3, [r1, #0xe]
	strh r2, [r1, #0x36]
	b _020C9C4C
_020C9C40:
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov r2, #2
	strh r2, [r1, #0x36]
_020C9C4C:
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov r2, #1
	ldrh r3, [r1, #0x3a]
	mvn r2, r2, lsl r0
	and r2, r3, r2
	strh r2, [r1, #0x3a]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, r1
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9C88:
	mov r4, #3
	b _020C9C9C
_020C9C90:
	mov r4, #1
	b _020C9C9C
_020C9C98:
	mov r4, #2
_020C9C9C:
	ldr r1, _020C9CF0 ; =0x021CEC90
	mov ip, #1
	ldrh r3, [r1, #0x38]
	mvn r2, ip, lsl r0
	orr r3, r3, ip, lsl r0
	strh r3, [r1, #0x38]
	ldrh r3, [r1, #0x3a]
	and r2, r3, r2
	strh r2, [r1, #0x3a]
	ldr r3, [r1, #4]
	cmp r3, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	and r1, r4, #0xff
	mov r2, #0
	blx r3
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C9CE4:
	bl sub_020C42A8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C9CF0: .word 0x021CEC90
_020C9CF4: .word 0x027FFFAA
	arm_func_end sub_020C9A78

	arm_func_start sub_020C9CF8
sub_020C9CF8: ; 0x020C9CF8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C9D68 ; =0x021CEC90
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	bl sub_020C6350
	ldr r0, _020C9D68 ; =0x021CEC90
	mov r1, #0
	strh r1, [r0, #0x10]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	strh r1, [r0, #0x36]
	strh r1, [r0, #0x34]
	strh r1, [r0, #0x3a]
	strh r1, [r0, #0x38]
	mov r5, #6
	mov r4, #1
_020C9D44:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020C9D44
	ldr r1, _020C9D6C ; =sub_020C9A78
	mov r0, #6
	bl sub_020C645C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C9D68: .word 0x021CEC90
_020C9D6C: .word sub_020C9A78
	arm_func_end sub_020C9CF8

	arm_func_start sub_020C9D70
sub_020C9D70: ; 0x020C9D70
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr ip, _020C9E00 ; =0x027FFC80
	mov r4, r0
	ldrh r1, [ip, #0x58]
	ldrh r2, [ip, #0x5a]
	ldrh r0, [ip, #0x5e]
	cmp r1, #0
	ldrh lr, [ip, #0x60]
	cmpeq r0, #0
	cmpeq r2, #0
	ldrb r3, [ip, #0x5c]
	ldrb r5, [ip, #0x5d]
	ldrb r6, [ip, #0x62]
	ldrb ip, [ip, #0x63]
	cmpeq lr, #0
	beq _020C9DD4
	str r5, [sp]
	stmib sp, {r0, lr}
	str r6, [sp, #0xc]
	mov r0, r4
	str ip, [sp, #0x10]
	bl sub_020CA2FC
	cmp r0, #0
	beq _020C9DF4
_020C9DD4:
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	add sp, sp, #0x14
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_020C9DF4:
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020C9E00: .word 0x027FFC80
	arm_func_end sub_020C9D70

	arm_func_start sub_020C9E04
sub_020C9E04: ; 0x020C9E04
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _020C9E20
	ldr r0, _020C9F20 ; =0x021CEC90
	mov r1, #0
	strh r1, [r0, #0x34]
	ldmia sp!, {r4, pc}
_020C9E20:
	bl sub_020C3D98
	ldrsh r2, [r4, #4]
	cmp r2, #0
	beq _020C9E84
	ldr r3, _020C9F24 ; =0x04000280
	mov r1, #0
	strh r1, [r3]
	mov r1, #0x10000000
	str r1, [r3, #0x10]
	str r2, [r3, #0x18]
	mov r1, #0
	str r1, [r3, #0x1c]
	ldrsh r2, [r4]
	ldr r1, _020C9F20 ; =0x021CEC90
	str r2, [r1, #0x1c]
	ldrsh r2, [r4, #4]
	str r2, [r1, #0x20]
_020C9E64:
	ldrh r1, [r3]
	tst r1, #0x8000
	bne _020C9E64
	ldr r2, _020C9F28 ; =0x040002A0
	ldr r1, _020C9F20 ; =0x021CEC90
	ldr r2, [r2, #0]
	str r2, [r1, #0x24]
	b _020C9E98
_020C9E84:
	ldr r1, _020C9F20 ; =0x021CEC90
	mov r2, #0
	str r2, [r1, #0x1c]
	str r2, [r1, #0x20]
	str r2, [r1, #0x24]
_020C9E98:
	ldrsh r2, [r4, #6]
	cmp r2, #0
	beq _020C9EF8
	ldr r3, _020C9F24 ; =0x04000280
	mov r1, #0
	strh r1, [r3]
	mov r1, #0x10000000
	str r1, [r3, #0x10]
	str r2, [r3, #0x18]
	mov r1, #0
	str r1, [r3, #0x1c]
	ldrsh r2, [r4, #2]
	ldr r1, _020C9F20 ; =0x021CEC90
	str r2, [r1, #0x28]
	ldrsh r2, [r4, #6]
	str r2, [r1, #0x2c]
_020C9ED8:
	ldrh r1, [r3]
	tst r1, #0x8000
	bne _020C9ED8
	ldr r2, _020C9F28 ; =0x040002A0
	ldr r1, _020C9F20 ; =0x021CEC90
	ldr r2, [r2, #0]
	str r2, [r1, #0x30]
	b _020C9F0C
_020C9EF8:
	ldr r1, _020C9F20 ; =0x021CEC90
	mov r2, #0
	str r2, [r1, #0x28]
	str r2, [r1, #0x2c]
	str r2, [r1, #0x30]
_020C9F0C:
	bl sub_020C3DAC
	ldr r0, _020C9F20 ; =0x021CEC90
	mov r1, #1
	strh r1, [r0, #0x34]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C9F20: .word 0x021CEC90
_020C9F24: .word 0x04000280
_020C9F28: .word 0x040002A0
	arm_func_end sub_020C9E04

	arm_func_start sub_020C9F2C
sub_020C9F2C: ; 0x020C9F2C
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	mov r4, r0
	mov r0, #6
	mov r1, #0x3000000
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	bne _020C9F94
	mov r0, r4
	bl sub_020C3DAC
	ldr r0, _020C9FBC ; =0x021CEC90
	ldrh r1, [r0, #0x38]
	orr r1, r1, #1
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #0
	mov r2, r0
	mov r1, #4
	blx r3
	ldmia sp!, {r4, pc}
_020C9F94:
	ldr r1, _020C9FBC ; =0x021CEC90
	mov r0, r4
	ldrh r2, [r1, #0x3a]
	orr r2, r2, #1
	strh r2, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	bic r2, r2, #1
	strh r2, [r1, #0x38]
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C9FBC: .word 0x021CEC90
	arm_func_end sub_020C9F2C

	arm_func_start sub_020C9FC0
sub_020C9FC0: ; 0x020C9FC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	bl sub_020CA60C
	ldr r1, _020CA00C ; =0x021CEC90
	ldrh r0, [r1, #0x38]
	tst r0, #1
	movne r0, #1
	ldmneia sp!, {r4, pc}
	ldrh r3, [r1, #8]
	ldrh r2, [r1, #0xa]
	mov r0, #0
	strh r3, [r4]
	strh r2, [r4, #2]
	ldrh r2, [r1, #0xc]
	ldrh r1, [r1, #0xe]
	strh r2, [r4, #4]
	strh r1, [r4, #6]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CA00C: .word 0x021CEC90
	arm_func_end sub_020C9FC0

	arm_func_start sub_020CA010
sub_020CA010: ; 0x020CA010
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, _020CA10C ; =0x021CEC90
	mov lr, #0
	str r2, [ip, #0x14]
	mov r5, r1
	strh lr, [ip, #0x10]
	strh r5, [ip, #0x12]
	mov r4, r0
	strh r3, [ip, #0x18]
	cmp r3, #0
	bls _020CA058
	mov r1, lr
_020CA040:
	ldr r0, [ip, #0x14]
	add r0, r0, lr, lsl #3
	add lr, lr, #1
	strh r1, [r0, #4]
	cmp lr, r3
	blo _020CA040
_020CA058:
	bl sub_020C3D98
	and r1, r5, #0xff
	orr r1, r1, #0x100
	mov r5, r0
	orr r1, r1, #0x2000000
	mov r0, #6
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	blt _020CA0A4
	orr r1, r4, #0x10000
	orr r1, r1, #0x1000000
	mov r0, #6
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	movge r0, #1
_020CA0A4:
	tst r0, #0xff
	bne _020CA0E4
	mov r0, r5
	bl sub_020C3DAC
	ldr r0, _020CA10C ; =0x021CEC90
	ldrh r1, [r0, #0x38]
	orr r1, r1, #2
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #1
	mov r1, #4
	mov r2, #0
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
_020CA0E4:
	ldr r1, _020CA10C ; =0x021CEC90
	mov r0, r5
	ldrh r2, [r1, #0x3a]
	orr r2, r2, #2
	strh r2, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	bic r2, r2, #2
	strh r2, [r1, #0x38]
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CA10C: .word 0x021CEC90
	arm_func_end sub_020CA010

	arm_func_start sub_020CA110
sub_020CA110: ; 0x020CA110
	stmfd sp!, {r4, lr}
	bl sub_020C3D98
	mov r4, r0
	ldr r1, _020CA1A0 ; =0x03000200
	mov r0, #6
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	bne _020CA178
	mov r0, r4
	bl sub_020C3DAC
	ldr r0, _020CA1A4 ; =0x021CEC90
	ldrh r1, [r0, #0x38]
	orr r1, r1, #4
	strh r1, [r0, #0x38]
	ldr r3, [r0, #4]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	mov r0, #2
	mov r1, #4
	mov r2, #0
	blx r3
	ldmia sp!, {r4, pc}
_020CA178:
	ldr r1, _020CA1A4 ; =0x021CEC90
	mov r0, r4
	ldrh r2, [r1, #0x3a]
	orr r2, r2, #4
	strh r2, [r1, #0x3a]
	ldrh r2, [r1, #0x38]
	bic r2, r2, #4
	strh r2, [r1, #0x38]
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CA1A0: .word 0x03000200
_020CA1A4: .word 0x021CEC90
	arm_func_end sub_020CA110

	arm_func_start sub_020CA1A8
sub_020CA1A8: ; 0x020CA1A8
	stmfd sp!, {r4, lr}
	ldr ip, _020CA2E8 ; =0x021CEC90
	mov r1, #3
	strh r1, [r0, #6]
	ldrh r1, [ip, #0x12]
	ldrh r2, [ip, #0x10]
	cmp r1, #1
	ldrneh r1, [ip, #0x18]
	cmpne r1, #1
	bne _020CA204
	ldr r1, _020CA2E8 ; =0x021CEC90
	mov ip, r2, lsl #3
	ldr r1, [r1, #0x14]
	add r3, r1, r2, lsl #3
	ldrh r2, [r1, ip]
	ldrh r1, [r3, #2]
	strh r2, [r0]
	strh r1, [r0, #2]
	ldrh r2, [r3, #4]
	ldrh r1, [r3, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldmia sp!, {r4, pc}
_020CA204:
	mov r1, #0
	b _020CA2C4
_020CA20C:
	subs lr, r2, r1
	ldr r3, [ip, #0x14]
	addmi lr, lr, r4
	add r3, r3, lr, lsl #3
	ldrh lr, [r3, #4]
	cmp lr, #0
	bne _020CA24C
	ldrh r2, [r3]
	ldrh r1, [r3, #2]
	strh r2, [r0]
	strh r1, [r0, #2]
	ldrh r2, [r3, #4]
	ldrh r1, [r3, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldmia sp!, {r4, pc}
_020CA24C:
	ldrh lr, [r0, #6]
	tst lr, #1
	beq _020CA27C
	ldrh lr, [r3, #6]
	tst lr, #1
	bne _020CA27C
	ldrh lr, [r3]
	cmp r1, #0
	strh lr, [r0]
	ldrneh lr, [r0, #6]
	bicne lr, lr, #1
	strneh lr, [r0, #6]
_020CA27C:
	ldrh lr, [r0, #6]
	tst lr, #2
	beq _020CA2AC
	ldrh lr, [r3, #6]
	tst lr, #2
	bne _020CA2AC
	ldrh r3, [r3, #2]
	cmp r1, #0
	strh r3, [r0, #2]
	ldrneh r3, [r0, #6]
	bicne r3, r3, #2
	strneh r3, [r0, #6]
_020CA2AC:
	ldrh r3, [r0, #6]
	cmp r3, #0
	moveq r1, #1
	streqh r1, [r0, #4]
	ldmeqia sp!, {r4, pc}
	add r1, r1, #1
_020CA2C4:
	ldrh r3, [ip, #0x12]
	cmp r1, r3
	ldrlth r4, [ip, #0x18]
	sublt r3, r4, #1
	cmplt r1, r3
	blt _020CA20C
	mov r1, #1
	strh r1, [r0, #4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CA2E8: .word 0x021CEC90
	arm_func_end sub_020CA1A8

	arm_func_start sub_020CA2EC
sub_020CA2EC: ; 0x020CA2EC
	ldr r0, _020CA2F8 ; =0x021CEC90
	ldrh r0, [r0, #0x10]
	bx lr
	; .align 2, 0
_020CA2F8: .word 0x021CEC90
	arm_func_end sub_020CA2EC

	arm_func_start sub_020CA2FC
sub_020CA2FC: ; 0x020CA2FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov r8, r2
	cmp sb, #0x1000
	cmplo r8, #0x1000
	ldrloh r4, [sp, #0x2c]
	mov r7, r3
	mov sl, r0
	cmplo r4, #0x1000
	ldrloh r3, [sp, #0x30]
	cmplo r3, #0x1000
	movhs r0, #1
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0x100
	ldrloh r2, [sp, #0x34]
	cmplo r2, #0x100
	ldrloh r1, [sp, #0x28]
	cmplo r1, #0xc0
	ldrloh r0, [sp, #0x38]
	cmplo r0, #0xc0
	movhs r0, #1
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, r2
	cmpne r1, r0
	cmpne sb, r4
	cmpne r8, r3
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl sub_020C3D98
	ldrh lr, [sp, #0x2c]
	ldrh ip, [sp, #0x34]
	ldr r3, _020CA4E0 ; =0x04000280
	sub r1, sb, lr
	mov r2, #0
	ldrh r4, [sp, #0x38]
	ldrh r5, [sp, #0x28]
	ldrh r6, [sp, #0x30]
	strh r2, [r3]
	mov r1, r1, lsl #8
	str r1, [r3, #0x10]
	sub r1, r7, ip
	str r1, [r3, #0x18]
	mov r1, r2
	sub r2, r5, r4
	str r1, [r3, #0x1c]
	sub r1, r8, r6
	str r2, [sp]
_020CA3B8:
	ldrh r2, [r3]
	tst r2, #0x8000
	bne _020CA3B8
	mov fp, r1, lsl #8
	ldr r1, _020CA4E4 ; =0x040002A0
	ldr r2, [r1, #0]
	mov r1, #0
	strh r1, [r3]
	ldr r1, _020CA4E4 ; =0x040002A0
	cmp r2, #0x8000
	str fp, [r1, #-0x10]
	sub r3, r1, #8
	ldr r1, [sp]
	mov fp, #0
	stmia r3, {r1, fp}
	bge _020CA408
	mov r1, fp
	sub r1, r1, #0x8000
	cmp r2, r1
	bge _020CA414
_020CA408:
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA414:
	strh r2, [sl, #4]
	ldrsh r2, [sl, #4]
	add r1, r7, ip
	add r3, sb, lr
	mul r1, r2, r1
	rsb r1, r1, r3, lsl #8
	mov r1, r1, lsl #9
	mov r2, r1, asr #0x10
	cmp r2, #0x8000
	bge _020CA44C
	mov r1, fp
	sub r1, r1, #0x8000
	cmp r2, r1
	bge _020CA458
_020CA44C:
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA458:
	ldr r1, _020CA4E4 ; =0x040002A0
	strh r2, [sl]
	sub r2, r1, #0x20
_020CA464:
	ldrh r1, [r2]
	tst r1, #0x8000
	bne _020CA464
	ldr r1, _020CA4E4 ; =0x040002A0
	ldr r7, [r1, #0]
	bl sub_020C3DAC
	cmp r7, #0x8000
	bge _020CA494
	mov r1, #0x8000
	rsb r1, r1, #0
	cmp r7, r1
	bge _020CA49C
_020CA494:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA49C:
	strh r7, [sl, #6]
	ldrsh r2, [sl, #6]
	add r0, r5, r4
	add r3, r8, r6
	mul r0, r2, r0
	rsb r0, r0, r3, lsl #8
	mov r0, r0, lsl #9
	mov r0, r0, asr #0x10
	cmp r0, #0x8000
	bge _020CA4CC
	cmp r0, r1
	bge _020CA4D4
_020CA4CC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020CA4D4:
	strh r0, [sl, #2]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020CA4E0: .word 0x04000280
_020CA4E4: .word 0x040002A0
	arm_func_end sub_020CA2FC

	arm_func_start sub_020CA4E8
sub_020CA4E8: ; 0x020CA4E8
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020CA604 ; =0x021CEC90
	ldrh r2, [r2, #0x34]
	cmp r2, #0
	bne _020CA520
	ldrh r3, [r1]
	ldrh r2, [r1, #2]
	strh r3, [r0]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	ldmia sp!, {r4, r5, r6, pc}
_020CA520:
	ldrh r3, [r1, #4]
	ldr r2, _020CA608 ; =0x021CECAC
	strh r3, [r0, #4]
	ldrh r3, [r1, #6]
	strh r3, [r0, #6]
	ldrh r3, [r1, #4]
	cmp r3, #0
	bne _020CA550
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldmia sp!, {r4, r5, r6, pc}
_020CA550:
	ldrh r4, [r1]
	ldr r3, [r2, #0]
	ldr lr, [r2, #8]
	mov r4, r4, lsl #2
	subs ip, r4, r3
	mov r3, r3, asr #0x1f
	rsc r3, r3, r4, asr #31
	umull r6, r5, lr, ip
	mla r5, lr, r3, r5
	mov r3, lr, asr #0x1f
	mla r5, r3, ip, r5
	mov r3, r6, lsr #0x16
	orr r3, r3, r5, lsl #10
	strh r3, [r0]
	ldrsh r3, [r0]
	cmp r3, #0
	movlt r3, #0
	strlth r3, [r0]
	blt _020CA5A8
	cmp r3, #0xff
	movgt r3, #0xff
	strgth r3, [r0]
_020CA5A8:
	ldrh r3, [r1, #2]
	ldr r1, [r2, #0xc]
	ldr ip, [r2, #0x14]
	mov r2, r3, lsl #2
	subs r3, r2, r1
	mov r1, r1, asr #0x1f
	rsc r1, r1, r2, asr #31
	umull r4, lr, ip, r3
	mla lr, ip, r1, lr
	mov r1, ip, asr #0x1f
	mla lr, r1, r3, lr
	mov r1, r4, lsr #0x16
	orr r1, r1, lr, lsl #10
	strh r1, [r0, #2]
	ldrsh r1, [r0, #2]
	cmp r1, #0
	movlt r1, #0
	strlth r1, [r0, #2]
	ldmltia sp!, {r4, r5, r6, pc}
	cmp r1, #0xbf
	movgt r1, #0xbf
	strgth r1, [r0, #2]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CA604: .word 0x021CEC90
_020CA608: .word 0x021CECAC
	arm_func_end sub_020CA4E8

	arm_func_start sub_020CA60C
sub_020CA60C: ; 0x020CA60C
	ldr r1, _020CA620 ; =0x021CEC90
_020CA610:
	ldrh r2, [r1, #0x3a]
	tst r2, r0
	bne _020CA610
	bx lr
	; .align 2, 0
_020CA620: .word 0x021CEC90
	arm_func_end sub_020CA60C

	arm_func_start sub_020CA624
sub_020CA624: ; 0x020CA624
	ldr r1, _020CA634 ; =0x021CEC90
	ldrh r1, [r1, #0x38]
	and r0, r1, r0
	bx lr
	; .align 2, 0
_020CA634: .word 0x021CEC90
	arm_func_end sub_020CA624

	arm_func_start sub_020CA638
sub_020CA638: ; 0x020CA638
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CA69C ; =0x021CECCC
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	bl sub_020C6350
	mov r5, #9
	mov r4, #1
_020CA66C:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020CA66C
	ldr r2, _020CA6A0 ; =0x027FFF90
	mov r3, #0
	ldr r1, _020CA6A4 ; =sub_020CA968
	mov r0, #9
	str r3, [r2, #0]
	bl sub_020C645C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CA69C: .word 0x021CECCC
_020CA6A0: .word 0x027FFF90
_020CA6A4: .word sub_020CA968
	arm_func_end sub_020CA638

	arm_func_start sub_020CA6A8
sub_020CA6A8: ; 0x020CA6A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	cmp r0, #6
	mov r6, r2
	mov r5, r3
	movge r0, #2
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020CA700
_020CA6D0: ; jump table
	b _020CA6E0 ; case 0
	b _020CA6E8 ; case 1
	b _020CA6F0 ; case 2
	b _020CA6F8 ; case 3
_020CA6E0:
	mov r4, #0
	b _020CA708
_020CA6E8:
	mov r4, #1
	b _020CA708
_020CA6F0:
	mov r4, #2
	b _020CA708
_020CA6F8:
	mov r4, #3
	b _020CA708
_020CA700:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA708:
	bl sub_020C3D98
	ldr r1, _020CA75C ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020CA728
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA728:
	mov r2, #1
	str r2, [r1, #4]
	bl sub_020C3DAC
	ldr r1, _020CA75C ; =0x021CECCC
	mov r0, r4
	str r6, [r1, #8]
	str r5, [r1, #0xc]
	str r7, [r1, #0x1c]
	bl sub_020CAA90
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CA75C: .word 0x021CECCC
	arm_func_end sub_020CA6A8

	arm_func_start sub_020CA760
sub_020CA760: ; 0x020CA760
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #4]
	mov r6, r1
	tst r0, #0x1f
	mov r5, r2
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #8]
	tst r0, #0x1f
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xc]
	cmp r0, #0x400
	movlo r0, #2
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020CA804
_020CA7BC: ; jump table
	b _020CA7D4 ; case 0
	b _020CA7DC ; case 1
	b _020CA7E4 ; case 2
	b _020CA7EC ; case 3
	b _020CA7F4 ; case 4
	b _020CA7FC ; case 5
_020CA7D4:
	mov r1, #0
	b _020CA80C
_020CA7DC:
	mov r1, #1
	b _020CA80C
_020CA7E4:
	mov r1, #2
	b _020CA80C
_020CA7EC:
	mov r1, #3
	b _020CA80C
_020CA7F4:
	mov r1, #5
	b _020CA80C
_020CA7FC:
	mov r1, #7
	b _020CA80C
_020CA804:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA80C:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	orrne r0, r1, #0x10
	andne r0, r0, #0xff
	andeq r0, r1, #0xff
	and r4, r0, #0xff
	bl sub_020C3D98
	ldr r1, _020CA888 ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020CA844
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA844:
	mov r2, #1
	str r2, [r1, #4]
	bl sub_020C3DAC
	ldr r0, _020CA888 ; =0x021CECCC
	mov r3, r4
	str r6, [r0, #8]
	str r5, [r0, #0xc]
	ldr r1, [r7, #0x14]
	str r1, [r0, #0x14]
	ldr r1, [r7, #0x18]
	str r1, [r0, #0x18]
	ldmib r7, {r0, r1, r2}
	bl sub_020CAAB8
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CA888: .word 0x021CECCC
	arm_func_end sub_020CA760

	arm_func_start sub_020CA88C
sub_020CA88C: ; 0x020CA88C
	stmfd sp!, {r3, lr}
	ldr r1, _020CA8BC ; =sub_020CABE4
	mov r2, #0
	bl sub_020CA760
	ldr r1, _020CA8C0 ; =0x021CECCC
	cmp r0, #0
	str r0, [r1, #0x10]
	bne _020CA8B0
	bl sub_020CABF4
_020CA8B0:
	ldr r0, _020CA8C0 ; =0x021CECCC
	ldr r0, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CA8BC: .word sub_020CABE4
_020CA8C0: .word 0x021CECCC
	arm_func_end sub_020CA88C

	arm_func_start sub_020CA8C4
sub_020CA8C4: ; 0x020CA8C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020C3D98
	ldr r1, _020CA91C ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020CA8F0
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020CA8F0:
	mov r2, #1
	str r2, [r1, #4]
	bl sub_020C3DAC
	ldr r0, _020CA91C ; =0x021CECCC
	str r5, [r0, #8]
	str r4, [r0, #0xc]
	bl sub_020CABBC
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CA91C: .word 0x021CECCC
	arm_func_end sub_020CA8C4

	arm_func_start sub_020CA920
sub_020CA920: ; 0x020CA920
	stmfd sp!, {r3, lr}
	ldr r0, _020CA950 ; =sub_020CABE4
	mov r1, #0
	bl sub_020CA8C4
	ldr r1, _020CA954 ; =0x021CECCC
	cmp r0, #0
	str r0, [r1, #0x10]
	bne _020CA944
	bl sub_020CABF4
_020CA944:
	ldr r0, _020CA954 ; =0x021CECCC
	ldr r0, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CA950: .word sub_020CABE4
_020CA954: .word 0x021CECCC
	arm_func_end sub_020CA920

	arm_func_start sub_020CA958
sub_020CA958: ; 0x020CA958
	ldr r0, _020CA964 ; =0x027FFF90
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CA964: .word 0x027FFF90
	arm_func_end sub_020CA958

	arm_func_start sub_020CA968
sub_020CA968: ; 0x020CA968
	stmfd sp!, {r4, lr}
	mov r4, r1
	cmp r2, #0
	beq _020CA9B0
	ldr r0, _020CAA88 ; =0x021CECCC
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #4]
	ldr r0, _020CAA88 ; =0x021CECCC
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _020CA9B0
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	mov r0, #6
	blx r2
_020CA9B0:
	and r0, r4, #0x7f00
	and r1, r4, #0xff
	mov r0, r0, lsl #8
	cmp r1, #4
	mov r2, r0, lsr #0x10
	addls pc, pc, r1, lsl #2
	b _020CAA08
_020CA9CC: ; jump table
	b _020CA9E0 ; case 0
	b _020CA9E8 ; case 1
	b _020CA9F0 ; case 2
	b _020CA9F8 ; case 3
	b _020CAA00 ; case 4
_020CA9E0:
	mov r0, #0
	b _020CAA0C
_020CA9E8:
	mov r0, #4
	b _020CAA0C
_020CA9F0:
	mov r0, #2
	b _020CAA0C
_020CA9F8:
	mov r0, #5
	b _020CAA0C
_020CAA00:
	mov r0, #1
	b _020CAA0C
_020CAA08:
	mov r0, #6
_020CAA0C:
	cmp r2, #0x51
	bne _020CAA30
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r2, [r1, #0x14]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x18]
	blx r2
	ldmia sp!, {r4, pc}
_020CAA30:
	cmp r2, #0x40
	bne _020CAA50
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	ldrne r1, _020CAA8C ; =0x027FFF94
	ldrneh r1, [r1]
	strneh r1, [r2]
_020CAA50:
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	movne r2, #0
	strne r2, [r1, #4]
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r3, [r1, #8]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	str r2, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CAA88: .word 0x021CECCC
_020CAA8C: .word 0x027FFF94
	arm_func_end sub_020CA968

	arm_func_start sub_020CAA90
sub_020CAA90: ; 0x020CAA90
	stmfd sp!, {r3, lr}
	orr r1, r0, #0x4000
	orr r1, r1, #0x3000000
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020CAA90

	arm_func_start sub_020CAAB8
sub_020CAAB8: ; 0x020CAAB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	orr r1, r3, #0x4100
	mov r6, r0
	mov r4, r2
	orr r1, r1, #0x2000000
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r6, lsr #0x10
	orr r1, r0, #0x10000
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r1, r0, #0x20000
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r5, lsr #0x10
	orr r1, r0, #0x30000
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r1, r0, #0x40000
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r4, lsr #0x10
	orr r1, r0, #0x50000
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r1, _020CABB8 ; =0x01060000
	mov r0, r4, lsl #0x10
	orr r1, r1, r0, lsr #16
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CABB8: .word 0x01060000
	arm_func_end sub_020CAAB8

	arm_func_start sub_020CABBC
sub_020CABBC: ; 0x020CABBC
	stmfd sp!, {r3, lr}
	ldr r1, _020CABE0 ; =0x03004200
	mov r0, #9
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CABE0: .word 0x03004200
	arm_func_end sub_020CABBC

	arm_func_start sub_020CABE4
sub_020CABE4: ; 0x020CABE4
	ldr r1, _020CABF0 ; =0x021CECCC
	str r0, [r1, #0x10]
	bx lr
	; .align 2, 0
_020CABF0: .word 0x021CECCC
	arm_func_end sub_020CABE4

	arm_func_start sub_020CABF4
sub_020CABF4: ; 0x020CABF4
	ldr ip, _020CAC08 ; =0x021CECD0
_020CABF8:
	ldr r0, [ip]
	cmp r0, #1
	beq _020CABF8
	bx lr
	; .align 2, 0
_020CAC08: .word 0x021CECD0
	arm_func_end sub_020CABF4

	arm_func_start sub_020CAC0C
sub_020CAC0C: ; 0x020CAC0C
	stmfd sp!, {r3, lr}
	bl sub_020C3D98
	ldr r1, _020CAC44 ; =0x021CECEC
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	beq _020CAC30
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, pc}
_020CAC30:
	mov r2, #1
	str r2, [r1, #0x1c]
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CAC44: .word 0x021CECEC
	arm_func_end sub_020CAC0C

	arm_func_start sub_020CAC48
sub_020CAC48: ; 0x020CAC48
	stmfd sp!, {r4, lr}
	ldr r0, _020CAC80 ; =0x021CECEC
	ldr r4, _020CAC84 ; =0x021CED08
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_020CAC60:
	bl sub_020C3DF0
	cmp r0, #0x80
	bne _020CAC70
	bl sub_020C6554
_020CAC70:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _020CAC60
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CAC80: .word 0x021CECEC
_020CAC84: .word 0x021CED08
	arm_func_end sub_020CAC48

	arm_func_start sub_020CAC88
sub_020CAC88: ; 0x020CAC88
	str r0, [r1, #0]
	bx lr
	arm_func_end sub_020CAC88

	arm_func_start sub_020CAC90
sub_020CAC90: ; 0x020CAC90
	stmfd sp!, {r3, lr}
	ldr r2, _020CACCC ; =0x021CECEC
	ldr r1, [r2, #0x1c]
	ldr ip, [r2, #0x20]
	cmp r1, #0
	ldr r1, [r2, #0x24]
	movne r3, #0
	strne r3, [r2, #0x1c]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _020CACCC ; =0x021CECEC
	mov r3, #0
	str r3, [r2, #0x20]
	blx ip
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CACCC: .word 0x021CECEC
	arm_func_end sub_020CAC90

	arm_func_start sub_020CACD0
sub_020CACD0: ; 0x020CACD0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CAD60 ; =0x021CECEC
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	bl sub_020C6350
	mov r5, #8
	mov r4, #1
_020CAD04:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020CAD04
	ldr r1, _020CAD64 ; =sub_020CAD74
	mov r0, #8
	bl sub_020C645C
	mov r3, #0
	ldr r0, _020CAD68 ; =0x021CED30
	mov r2, r3
_020CAD30:
	mov r1, r3, lsl #3
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #5
	blt _020CAD30
	ldr r0, _020CAD6C ; =0x021CED18
	bl sub_020C29C0
	ldr r1, _020CAD70 ; =0x027FFC3C
	ldr r0, _020CAD60 ; =0x021CECEC
	ldr r1, [r1, #0]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CAD60: .word 0x021CECEC
_020CAD64: .word sub_020CAD74
_020CAD68: .word 0x021CED30
_020CAD6C: .word 0x021CED18
_020CAD70: .word 0x027FFC3C
	arm_func_end sub_020CACD0

	arm_func_start sub_020CAD74
sub_020CAD74: ; 0x020CAD74
	stmfd sp!, {r3, lr}
	cmp r2, #0
	beq _020CAD8C
	mov r0, #2
	bl sub_020CAC90
	ldmia sp!, {r3, pc}
_020CAD8C:
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r2, r0, lsr #0x10
	and r0, r1, #0xff
	cmp r2, #0x70
	blo _020CADDC
	cmp r2, #0x74
	bhi _020CADDC
	ldr r1, _020CAE30 ; =0x021CED34
	sub r2, r2, #0x70
	ldr r1, [r1, r2, lsl #3]
	and r0, r0, #0xff
	cmp r1, #0
	strneh r0, [r1]
	mov r1, r2, lsl #3
	ldr r0, _020CAE34 ; =0x021CED30
	mov r2, #1
	strh r2, [r0, r1]
	mov r0, #0
	b _020CAE28
_020CADDC:
	cmp r2, #0x60
	bne _020CADF4
	ldr r1, _020CAE38 ; =0x021CECEC
	mov r2, #1
	str r2, [r1, #4]
	b _020CAE28
_020CADF4:
	cmp r2, #0x62
	bne _020CAE0C
	ldr r1, _020CAE38 ; =0x021CECEC
	mov r2, #1
	str r2, [r1, #8]
	b _020CAE28
_020CAE0C:
	cmp r2, #0x67
	bne _020CAE28
	ldr r1, _020CAE38 ; =0x021CECEC
	ldr r1, [r1, #0x28]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
_020CAE28:
	bl sub_020CAC90
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CAE30: .word 0x021CED34
_020CAE34: .word 0x021CED30
_020CAE38: .word 0x021CECEC
	arm_func_end sub_020CAD74

	arm_func_start sub_020CAE3C
sub_020CAE3C: ; 0x020CAE3C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _020CAEC4 ; =0x021CECEC
	mov r2, #0
	ldr r0, _020CAEC8 ; =0x03006000
	str r2, [r1, #4]
	bl sub_020CB2F8
	ldr r0, _020CAEC4 ; =0x021CECEC
_020CAE70:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020CAE70
	ldr ip, _020CAEC4 ; =0x021CECEC
	mov r0, #0
	str r0, [ip, #4]
	mov r2, r0
	mov r1, #2
	mov r3, #1
	str r0, [ip, #8]
	bl sub_020CB564
	and r0, r5, #0xff
	orr r0, r0, #0x6100
	orr r0, r0, #0x2000000
	bl sub_020CB2F8
	ldr r1, _020CAECC ; =0x01010000
	mov r0, r4, lsl #0x10
	orr r0, r1, r0, lsr #16
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CAEC4: .word 0x021CECEC
_020CAEC8: .word 0x03006000
_020CAECC: .word 0x01010000
	arm_func_end sub_020CAE3C

	arm_func_start sub_020CAED0
sub_020CAED0: ; 0x020CAED0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6, lsr #0x10
	and r0, r0, #0xff
	ldr r1, _020CAF28 ; =0x021CECEC
	orr r0, r0, #0x6300
	str r5, [r1, #0x20]
	orr r0, r0, #0x2000000
	str r4, [r1, #0x24]
	bl sub_020CB2F8
	ldr r1, _020CAF2C ; =0x01010000
	mov r0, r6, lsl #0x10
	orr r0, r1, r0, lsr #16
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CAF28: .word 0x021CECEC
_020CAF2C: .word 0x01010000
	arm_func_end sub_020CAED0

	arm_func_start sub_020CAF30
sub_020CAF30: ; 0x020CAF30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	mov r7, r2
	mov r6, r3
	bl sub_020CAC0C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020CAF90 ; =0x021CECEC
	and r0, r5, #0xff
	str r7, [r1, #0x20]
	orr r0, r0, #0x6500
	ldr r2, _020CAF94 ; =0x021CED30
	str r6, [r1, #0x24]
	mov r3, r5, lsl #3
	mov ip, #0
	ldr r1, _020CAF98 ; =0x021CED34
	strh ip, [r2, r3]
	orr r0, r0, #0x3000000
	str r4, [r1, r5, lsl #3]
	bl sub_020CB2F8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CAF90: .word 0x021CECEC
_020CAF94: .word 0x021CED30
_020CAF98: .word 0x021CED34
	arm_func_end sub_020CAF30

	arm_func_start sub_020CAF9C
sub_020CAF9C: ; 0x020CAF9C
	stmfd sp!, {r3, lr}
	ldr r2, _020CAFC0 ; =sub_020CAC88
	add r3, sp, #0
	bl sub_020CAF30
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl sub_020CAC48
	ldr r0, [sp]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CAFC0: .word sub_020CAC88
	arm_func_end sub_020CAF9C
