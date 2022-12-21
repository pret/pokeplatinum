	.include "macros/function.inc"
	.include "include/unk_02012744.inc"

	

	.text


	thumb_func_start sub_02012744
sub_02012744: ; 0x02012744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0x68
	bl sub_02018144
	str r0, [sp, #8]
	cmp r0, #0
	bne _0201275E
	bl sub_02022974
_0201275E:
	ldr r4, [sp, #8]
	ldr r5, [sp, #8]
	mov r6, #0
	add r4, #0x30
_02012766:
	mov r0, #0x23
	add r1, r6, #0
	mov r2, #0
	add r3, r4, #0
	str r7, [sp]
	bl sub_02006FA0
	str r0, [r5, #0]
	cmp r0, #0
	bne _0201277E
	bl sub_02022974
_0201277E:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #0xc
	blt _02012766
	ldr r0, [sp, #4]
	mov r1, #0x14
	add r4, r0, #0
	mul r4, r1
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02018144
	ldr r1, [sp, #8]
	cmp r0, #0
	str r0, [r1, #0x60]
	bne _020127A4
	bl sub_02022974
_020127A4:
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r2, r4, #0
	str r1, [r0, #0x64]
	ldr r0, [r0, #0x60]
	mov r1, #0
	bl sub_020D5124
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012744

	thumb_func_start sub_020127BC
sub_020127BC: ; 0x020127BC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bne _020127C6
	bl sub_02022974
_020127C6:
	mov r4, #0
	add r5, r6, #0
_020127CA:
	ldr r0, [r5, #0]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _020127CA
	ldr r0, [r6, #0x60]
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020127BC

	thumb_func_start sub_020127E8
sub_020127E8: ; 0x020127E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bne _020127F4
	bl sub_02022974
_020127F4:
	ldr r0, [r5, #0]
	bl sub_02012CE0
	add r4, r0, #0
	bne _02012802
	bl sub_02022974
_02012802:
	ldr r0, [r5, #0x10]
	add r3, sp, #8
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r1, [r5, #4]
	ldr r2, [r5, #0x2c]
	ldrb r0, [r1, #7]
	ldrb r1, [r1, #8]
	bl sub_02012DE4
	add r6, r0, #0
	mov r1, #0x24
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl sub_02018184
	add r7, r0, #0
	mov r1, #0xc
	ldr r0, [r5, #0x2c]
	mul r1, r6
	bl sub_02018144
	str r0, [r4, #0]
	str r6, [r4, #4]
	ldr r0, [r5, #0x28]
	add r1, sp, #8
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, [r5, #0x14]
	bl sub_02012E6C
	add r0, r5, #0
	add r1, sp, #8
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013088
	add r0, r7, #0
	bl sub_020181C4
	add r0, sp, #8
	bl sub_020131B8
	add r0, r4, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020127E8

	thumb_func_start sub_02012870
sub_02012870: ; 0x02012870
	push {r4, lr}
	add r4, r0, #0
	bne _0201287A
	bl sub_02022974
_0201287A:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02012884
	bl sub_02022974
_02012884:
	add r0, r4, #0
	bl sub_020130DC
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_02012CD0
	pop {r4, pc}
	thumb_func_end sub_02012870

	thumb_func_start sub_02012898
sub_02012898: ; 0x02012898
	push {r4, r5, lr}
	sub sp, #0x14
	add r3, sp, #0
	add r5, r0, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r4, r1, #0
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #8]
	bl sub_02012DE4
	add r0, sp, #0
	add r1, r4, #0
	bl sub_02013034
	add r4, r0, #0
	add r0, sp, #0
	bl sub_020131B8
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end sub_02012898

	thumb_func_start sub_020128C4
sub_020128C4: ; 0x020128C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r2, #0
	str r1, [sp]
	cmp r5, #0
	bne _020128D6
	bl sub_02022974
_020128D6:
	ldr r0, [sp]
	str r0, [r5, #0xc]
	str r7, [r5, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r5, #8]
	lsl r7, r7, #0xc
	cmp r0, #0
	beq _020128F8
	bl sub_02021D28
	ldr r2, [r0, #0]
	ldr r1, [sp]
	ldr r0, [r0, #4]
	add r1, r1, r2
	str r1, [sp]
	add r7, r7, r0
_020128F8:
	mov r6, #0
	str r6, [sp, #0xc]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02012932
	add r4, r6, #0
_02012904:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	lsl r1, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #4
	add r0, r0, r4
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	bl sub_02021C50
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012904
_02012932:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020128C4

	thumb_func_start sub_02012938
sub_02012938: ; 0x02012938
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	bne _02012944
	bl sub_02022974
_02012944:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0201299E
	ldr r1, [r5, #0xc]
	lsl r1, r1, #0xc
	str r1, [sp]
	ldr r1, [r5, #0x10]
	lsl r7, r1, #0xc
	bl sub_02021D28
	ldr r2, [r0, #0]
	ldr r0, [r0, #4]
	mov r6, #0
	ldr r1, [sp]
	str r6, [sp, #0xc]
	add r7, r7, r0
	add r1, r1, r2
	ldr r0, [r5, #4]
	str r1, [sp]
	cmp r0, #0
	ble _0201299E
	add r4, r6, #0
_02012970:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldr r0, [r0, #4]
	lsl r1, r0, #0xc
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, sp, #4
	add r0, r0, r4
	ldr r0, [r0, #8]
	lsl r0, r0, #0xc
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	bl sub_02021C50
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012970
_0201299E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012938

	thumb_func_start sub_020129A4
sub_020129A4: ; 0x020129A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _020129B4
	bl sub_02022974
_020129B4:
	cmp r4, #0
	bne _020129BC
	bl sub_02022974
_020129BC:
	cmp r6, #0
	bne _020129C4
	bl sub_02022974
_020129C4:
	ldr r0, [r5, #0xc]
	str r0, [r4, #0]
	ldr r0, [r5, #0x10]
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020129A4

	thumb_func_start sub_020129D0
sub_020129D0: ; 0x020129D0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _020129DE
	bl sub_02022974
_020129DE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _020129FC
	add r4, r6, #0
_020129E8:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021CAC
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020129E8
_020129FC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020129D0

	thumb_func_start sub_02012A00
sub_02012A00: ; 0x02012A00
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A0E
	bl sub_02022974
_02012A0E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012A2C
	add r4, r6, #0
_02012A18:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021E80
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012A18
_02012A2C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A00

	thumb_func_start sub_02012A30
sub_02012A30: ; 0x02012A30
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A3E
	bl sub_02022974
_02012A3E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012A5C
	add r4, r6, #0
_02012A48:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021F58
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012A48
_02012A5C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A30

	thumb_func_start sub_02012A60
sub_02012A60: ; 0x02012A60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A6E
	bl sub_02022974
_02012A6E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012A8C
	add r4, r6, #0
_02012A78:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021E90
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012A78
_02012A8C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A60

	thumb_func_start sub_02012A90
sub_02012A90: ; 0x02012A90
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012A9E
	bl sub_02022974
_02012A9E:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012ABC
	add r4, r6, #0
_02012AA8:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021EF0
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012AA8
_02012ABC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012A90

	thumb_func_start sub_02012AC0
sub_02012AC0: ; 0x02012AC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012ACE
	bl sub_02022974
_02012ACE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012AEC
	add r4, r6, #0
_02012AD8:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021F24
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012AD8
_02012AEC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012AC0

	thumb_func_start sub_02012AF0
sub_02012AF0: ; 0x02012AF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	cmp r5, #0
	bne _02012AFE
	bl sub_02022974
_02012AFE:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02012B1C
	add r4, r6, #0
_02012B08:
	ldr r0, [r5, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02021FE0
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _02012B08
_02012B1C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012AF0

	thumb_func_start sub_02012B20
sub_02012B20: ; 0x02012B20
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0x18
	bl sub_02018144
	add r4, r0, #0
	str r4, [r4, #0xc]
	str r4, [r4, #0x10]
	ldrb r0, [r5, #7]
	ldrb r1, [r5, #8]
	add r2, r6, #0
	add r3, r4, #0
	bl sub_02012DE4
	str r0, [r4, #0x14]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02012B20

	thumb_func_start sub_02012B48
sub_02012B48: ; 0x02012B48
	push {r4, lr}
	add r4, r0, #0
	bl sub_020131B8
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02012B48

	thumb_func_start sub_02012B58
sub_02012B58: ; 0x02012B58
	ldr r3, _02012B5C ; =sub_02013034
	bx r3
	; .align 2, 0
_02012B5C: .word sub_02013034
	thumb_func_end sub_02012B58

	thumb_func_start sub_02012B60
sub_02012B60: ; 0x02012B60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	cmp r5, #0
	bne _02012B70
	bl sub_02022974
_02012B70:
	ldr r0, [r5, #0]
	bl sub_02012CE0
	add r4, r0, #0
	bne _02012B7E
	bl sub_02022974
_02012B7E:
	ldr r0, [r5, #0x10]
	mov r1, #0x24
	str r0, [r4, #8]
	ldr r0, [r5, #0x18]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x10]
	ldr r2, [r6, #0x14]
	ldr r0, [r5, #0x2c]
	mul r1, r2
	bl sub_02018184
	add r7, r0, #0
	ldr r2, [r6, #0x14]
	mov r1, #0xc
	ldr r0, [r5, #0x2c]
	mul r1, r2
	bl sub_02018144
	str r0, [r4, #0]
	ldr r0, [r6, #0x14]
	add r1, r6, #0
	str r0, [r4, #4]
	ldr r0, [r5, #0x28]
	add r2, r7, #0
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r3, [r5, #0x14]
	bl sub_02012E6C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013088
	add r0, r7, #0
	bl sub_020181C4
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012B60

	thumb_func_start sub_02012BD8
sub_02012BD8: ; 0x02012BD8
	ldr r3, _02012BDC ; =sub_02012870
	bx r3
	; .align 2, 0
_02012BDC: .word sub_02012870
	thumb_func_end sub_02012BD8

	thumb_func_start sub_02012BE0
sub_02012BE0: ; 0x02012BE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0, #0]
	add r7, r1, #0
	ldr r0, [r0, #0]
	str r2, [sp, #4]
	add r5, r3, #0
	str r0, [sp, #8]
	bl sub_02021FC8
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl sub_02012B58
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02018184
	mov r1, #0
	add r2, r6, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, [sp, #4]
	ldr r3, [sp, #0xc]
	add r1, r4, #0
	add r2, r7, #0
	str r5, [sp]
	bl sub_02012F98
	add r0, r4, #0
	add r1, r6, #0
	bl sub_020C2C54
	ldr r0, [sp, #8]
	bl sub_02021F98
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bne _02012C46
	mov r1, #1
	bl sub_020A81B0
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020C02BC
	b _02012C56
_02012C46:
	mov r1, #2
	bl sub_020A81B0
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020C0314
_02012C56:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02012BE0

	thumb_func_start sub_02012C60
sub_02012C60: ; 0x02012C60
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [sp, #0x20]
	add r7, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldrb r1, [r6, #7]
	str r0, [sp, #0x24]
	add r0, r3, #0
	add r0, r7, r0
	str r2, [sp]
	str r3, [sp, #4]
	cmp r1, r0
	bge _02012C82
	bl sub_02022974
_02012C82:
	ldrb r2, [r6, #8]
	ldr r1, [sp]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	cmp r2, r0
	bge _02012C92
	bl sub_02022974
_02012C92:
	ldr r0, [sp]
	mov r4, #0
	cmp r0, #0
	ble _02012CCA
	lsl r0, r7, #5
	add r5, r4, #0
	str r0, [sp, #8]
_02012CA0:
	ldrb r1, [r6, #7]
	ldr r0, [sp, #0x20]
	add r2, r1, #0
	add r0, r4, r0
	mul r2, r0
	ldr r0, [sp, #4]
	lsl r1, r5, #5
	add r2, r2, r0
	ldr r0, [sp, #0x24]
	lsl r2, r2, #5
	add r0, r0, r1
	ldr r1, [r6, #0xc]
	add r1, r1, r2
	ldr r2, [sp, #8]
	bl sub_020D50B8
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, r0
	blt _02012CA0
_02012CCA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02012C60

	thumb_func_start sub_02012CD0
sub_02012CD0: ; 0x02012CD0
	mov r2, #0x14
	mov r1, #0
_02012CD4:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02012CD4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02012CD0

	thumb_func_start sub_02012CE0
sub_02012CE0: ; 0x02012CE0
	ldr r1, [r0, #0x64]
	mov r2, #0
	cmp r1, #0
	ble _02012D04
	ldr r3, [r0, #0x60]
_02012CEA:
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _02012CFA
	ldr r1, [r0, #0x60]
	mov r0, #0x14
	mul r0, r2
	add r0, r1, r0
	bx lr
_02012CFA:
	ldr r1, [r0, #0x64]
	add r2, r2, #1
	add r3, #0x14
	cmp r2, r1
	blt _02012CEA
_02012D04:
	mov r0, #0
	bx lr
	thumb_func_end sub_02012CE0

	thumb_func_start sub_02012D08
sub_02012D08: ; 0x02012D08
	push {r3, r4}
	ldr r4, _02012D30 ; =0x020E52E4
	mov r3, #0
_02012D0E:
	ldrb r2, [r4]
	cmp r2, r0
	bgt _02012D20
	ldrb r2, [r4, #1]
	cmp r2, r1
	bgt _02012D20
	add r0, r3, #0
	pop {r3, r4}
	bx lr
_02012D20:
	add r3, r3, #1
	add r4, r4, #2
	cmp r3, #0xc
	blt _02012D0E
	mov r0, #0xc
	pop {r3, r4}
	bx lr
	nop
_02012D30: .word 0x020E52E4
	thumb_func_end sub_02012D08

	thumb_func_start sub_02012D34
sub_02012D34: ; 0x02012D34
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	bl sub_02013188
	ldr r1, [r6, #0x10]
	add r4, r0, #0
	bl sub_020131D0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl sub_02012D08
	str r0, [r4, #8]
	ldr r0, [r5, #4]
	ldr r1, _02012DDC ; =0x020E52E4
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	ldr r6, _02012DE0 ; =0x020E52E5
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	ldr r2, [r5, #8]
	lsl r3, r0, #1
	ldrb r0, [r1, r3]
	ldrb r3, [r6, r3]
	sub r2, r2, r0
	ldr r0, [r5, #0xc]
	sub r6, r0, r3
	cmp r2, #0
	ble _02012D9C
	str r0, [r5, #0x1c]
	str r2, [r5, #0x18]
	ldr r0, [r5, #0]
	str r0, [r5, #0x10]
	ldr r2, [r4, #8]
	ldr r0, [r5, #4]
	lsl r2, r2, #1
	ldrb r1, [r1, r2]
	add r0, r0, r1
	str r0, [r5, #0x14]
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02012D94
	bl sub_02022974
_02012D94:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x20
	strb r1, [r0]
_02012D9C:
	cmp r6, #0
	ble _02012DB2
	ldr r0, [r4, #8]
	ldr r2, [r5, #0]
	lsl r1, r0, #1
	ldr r0, _02012DE0 ; =0x020E52E5
	ldrb r0, [r0, r1]
	add r0, r2, r0
	str r0, [r5, #0]
	str r6, [r5, #0xc]
	b _02012DD6
_02012DB2:
	add r0, r5, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02012DD2
	add r3, r5, #0
	add r3, #0x10
	add r2, r5, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0
	add r5, #0x20
	strb r0, [r5]
	b _02012DD6
_02012DD2:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02012DD6:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_02012DDC: .word 0x020E52E4
_02012DE0: .word 0x020E52E5
	thumb_func_end sub_02012D34

	thumb_func_start sub_02012DE4
sub_02012DE4: ; 0x02012DE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r7, r0, #0
	str r1, [sp]
	add r5, r2, #0
	add r6, r3, #0
	cmp r7, #0
	bne _02012DF8
	bl sub_02022974
_02012DF8:
	ldr r0, [sp]
	cmp r0, #0
	bne _02012E02
	bl sub_02022974
_02012E02:
	ldr r0, [sp]
	mov r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	add r0, sp, #0x24
	strb r4, [r0]
	ldr r0, [sp]
	str r4, [sp, #0x2c]
	str r7, [sp, #0x30]
	cmp r0, #0
	beq _02012E60
	add r7, sp, #4
_02012E1E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	bl sub_02012D08
	lsl r1, r0, #1
	ldr r0, _02012E68 ; =0x020E52E4
	add r0, r0, r1
	ldrb r0, [r0, #1]
	ldr r1, [sp, #4]
	add r1, r1, r0
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x10]
	sub r1, r1, r0
	str r1, [sp, #0x34]
	str r0, [sp, #0x10]
_02012E3C:
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	add r4, r4, #1
	bl sub_02012D34
	cmp r0, #0
	beq _02012E3C
	add r2, sp, #0x28
	add r3, sp, #4
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x10]
	str r0, [sp]
	cmp r0, #0
	bne _02012E1E
_02012E60:
	add r0, r4, #0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02012E68: .word 0x020E52E4
	thumb_func_end sub_02012DE4

	thumb_func_start sub_02012E6C
sub_02012E6C: ; 0x02012E6C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x14]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r6, r3, #0
	cmp r0, #1
	bne _02012E8E
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02012E92
_02012E8E:
	ldr r0, _02012ED8 ; =0x04001000
	ldr r1, [r0, #0]
_02012E92:
	ldr r0, _02012EDC ; =0x00300010
	add r7, r1, #0
	and r7, r0
	add r0, r7, #0
	bl sub_0201F6F4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r4, [r0, #0xc]
	cmp r4, r0
	beq _02012ED2
_02012EA8:
	add r0, r5, #0
	bl sub_020A818C
	str r7, [sp]
	ldr r0, [sp, #0x30]
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r4, #0
	add r2, r5, #0
	bl sub_02012EE0
	add r6, r0, #0
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #0x14]
	add r5, #0x24
	cmp r4, r0
	bne _02012EA8
_02012ED2:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02012ED8: .word 0x04001000
_02012EDC: .word 0x00300010
	thumb_func_end sub_02012E6C

	thumb_func_start sub_02012EE0
sub_02012EE0: ; 0x02012EE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [r6, #8]
	add r5, r2, #0
	lsl r1, r0, #1
	ldr r0, _02012F84 ; =0x020E52E4
	ldrb r0, [r0, r1]
	str r0, [sp, #0x10]
	ldr r0, _02012F88 ; =0x020E52E5
	ldrb r0, [r0, r1]
	ldr r1, [sp, #0x10]
	add r4, r1, #0
	mul r4, r0
	str r0, [sp, #0xc]
	cmp r4, r3
	bge _02012F06
	add r4, r3, #0
_02012F06:
	lsl r4, r4, #5
	ldr r0, [sp, #0x34]
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	ldr r0, [r6, #4]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [r6, #0]
	bl sub_02012C60
	add r0, r7, #0
	add r1, r4, #0
	bl sub_020C2C54
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne _02012F48
	ldr r6, [sp, #0x2c]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020C02BC
	mov r0, #1
	str r6, [r5, #4]
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02012F5A
_02012F48:
	ldr r6, [sp, #0x2c]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020C0314
	ldr r0, _02012F8C ; =0x04001000
	str r6, [r5, #8]
	ldr r1, [r0, #0]
_02012F5A:
	ldr r0, _02012F90 ; =0x00300010
	and r0, r1
	str r0, [r5, #0x20]
	ldr r0, _02012F94 ; =0x0000FFFF
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	mov r0, #3
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x28]
	str r0, [r5, #0x20]
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #0x2c]
	add r0, r0, r4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02012F84: .word 0x020E52E4
_02012F88: .word 0x020E52E5
_02012F8C: .word 0x04001000
_02012F90: .word 0x00300010
_02012F94: .word 0x0000FFFF
	thumb_func_end sub_02012EE0

	thumb_func_start sub_02012F98
sub_02012F98: ; 0x02012F98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r7, [sp, #0x30]
	cmp r3, #1
	bne _02012FB0
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02012FB4
_02012FB0:
	ldr r0, _02012FE8 ; =0x04001000
	ldr r1, [r0, #0]
_02012FB4:
	ldr r0, _02012FEC ; =0x00300010
	add r5, r1, #0
	and r5, r0
	add r0, r5, #0
	bl sub_0201F6F4
	ldr r4, [r6, #0xc]
	str r0, [sp, #0x14]
	mov r3, #0
	cmp r4, r6
	beq _02012FE4
_02012FCA:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0xc]
	str r7, [sp, #8]
	add r1, r4, #0
	bl sub_02012FF0
	ldr r4, [r4, #0xc]
	add r3, r0, #0
	cmp r4, r6
	bne _02012FCA
_02012FE4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02012FE8: .word 0x04001000
_02012FEC: .word 0x00300010
	thumb_func_end sub_02012F98

	thumb_func_start sub_02012FF0
sub_02012FF0: ; 0x02012FF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	ldr r1, [r6, #8]
	add r7, r0, #0
	add r0, r2, #0
	lsl r2, r1, #1
	ldr r1, _0201302C ; =0x020E52E4
	add r5, r3, #0
	ldrb r1, [r1, r2]
	ldr r3, _02013030 ; =0x020E52E5
	ldrb r2, [r3, r2]
	add r4, r1, #0
	ldr r3, [sp, #0x20]
	mul r4, r2
	cmp r4, r3
	bge _02013014
	add r4, r3, #0
_02013014:
	ldr r3, [r6, #4]
	add r0, r0, r5
	str r3, [sp]
	str r0, [sp, #4]
	ldr r3, [r6, #0]
	add r0, r7, #0
	bl sub_02012C60
	lsl r0, r4, #5
	add r0, r5, r0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201302C: .word 0x020E52E4
_02013030: .word 0x020E52E5
	thumb_func_end sub_02012FF0

	thumb_func_start sub_02013034
sub_02013034: ; 0x02013034
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	cmp r1, #1
	bne _02013044
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	b _02013048
_02013044:
	ldr r0, _0201307C ; =0x04001000
	ldr r1, [r0, #0]
_02013048:
	ldr r0, _02013080 ; =0x00300010
	and r0, r1
	bl sub_0201F6F4
	ldr r2, [r4, #0xc]
	mov r3, #0
	cmp r2, r4
	beq _02013076
	ldr r1, _02013084 ; =0x020E52E4
_0201305A:
	ldr r5, [r2, #8]
	lsl r5, r5, #1
	add r7, r1, r5
	ldrb r6, [r1, r5]
	ldrb r5, [r7, #1]
	mul r5, r6
	cmp r5, r0
	bge _0201306C
	add r5, r0, #0
_0201306C:
	ldr r2, [r2, #0xc]
	lsl r5, r5, #5
	add r3, r3, r5
	cmp r2, r4
	bne _0201305A
_02013076:
	add r0, r3, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0201307C: .word 0x04001000
_02013080: .word 0x00300010
_02013084: .word 0x020E52E4
	thumb_func_end sub_02013034

	thumb_func_start sub_02013088
sub_02013088: ; 0x02013088
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, r1, #0
	ldr r4, [r0, #0xc]
	str r1, [sp, #4]
	add r7, r2, #0
	add r6, r3, #0
	cmp r4, r0
	beq _020130D8
	mov r5, #0
_0201309E:
	ldr r0, [sp]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02013100
	ldr r1, [r6, #0]
	str r0, [r1, r5]
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _020130B8
	bl sub_02022974
_020130B8:
	ldr r0, [r4, #0]
	add r7, #0x24
	lsl r1, r0, #3
	ldr r0, [r6, #0]
	add r0, r0, r5
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	lsl r1, r0, #3
	ldr r0, [r6, #0]
	add r0, r0, r5
	str r1, [r0, #8]
	ldr r4, [r4, #0xc]
	ldr r0, [sp, #4]
	add r5, #0xc
	cmp r4, r0
	bne _0201309E
_020130D8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02013088

	thumb_func_start sub_020130DC
sub_020130DC: ; 0x020130DC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _020130FC
	add r4, r6, #0
_020130EA:
	ldr r0, [r5, #0]
	ldr r0, [r0, r4]
	bl sub_02021BD4
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020130EA
_020130FC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020130DC

	thumb_func_start sub_02013100
sub_02013100: ; 0x02013100
	push {r4, r5, lr}
	sub sp, #0x44
	add r5, r0, #0
	mov r0, #0
	str r2, [sp]
	str r0, [sp, #4]
	add r4, r1, #0
	ldr r1, [r5, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4, #8]
	ldr r2, [r5, #0]
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r1, [r1, #0x30]
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r2, [r5, #0x20]
	add r1, sp, #0x20
	strb r2, [r1]
	ldr r1, [r5, #8]
	str r1, [sp, #0x24]
	add r1, sp, #0
	str r1, [sp, #0x28]
	ldr r1, [r5, #0x24]
	str r1, [sp, #0x38]
	ldr r1, [r5, #0x28]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0x2c]
	str r1, [sp, #0x40]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _0201315C
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_0201315C:
	ldr r1, [r4, #0]
	ldr r2, [r5, #0x18]
	lsl r1, r1, #3
	add r1, r2, r1
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r1, [r4, #4]
	ldr r2, [r5, #0x1c]
	lsl r1, r1, #3
	add r1, r2, r1
	ldr r0, [sp, #0x30]
	lsl r1, r1, #0xc
	add r0, r0, r1
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	bl sub_02021B90
	add sp, #0x44
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02013100

	thumb_func_start sub_02013188
sub_02013188: ; 0x02013188
	push {r4, lr}
	mov r1, #0x14
	bl sub_02018184
	add r4, r0, #0
	bne _02013198
	bl sub_02022974
_02013198:
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013188

	thumb_func_start sub_020131A4
sub_020131A4: ; 0x020131A4
	push {r4, lr}
	add r4, r0, #0
	bne _020131AE
	bl sub_02022974
_020131AE:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020131A4

	thumb_func_start sub_020131B8
sub_020131B8: ; 0x020131B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, r5
	beq _020131CE
_020131C2:
	ldr r4, [r0, #0xc]
	bl sub_020131A4
	add r0, r4, #0
	cmp r4, r5
	bne _020131C2
_020131CE:
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020131B8

	thumb_func_start sub_020131D0
sub_020131D0: ; 0x020131D0
	ldr r2, [r1, #0xc]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r2, [r1, #0xc]
	str r0, [r2, #0x10]
	str r0, [r1, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020131D0

	thumb_func_start sub_020131E0
sub_020131E0: ; 0x020131E0
	ldr r3, _020131E8 ; =sub_02012938
	str r1, [r0, #8]
	bx r3
	nop
_020131E8: .word sub_02012938
	thumb_func_end sub_020131E0

	.rodata


	.global Unk_020E52E4
Unk_020E52E4: ; 0x020E52E4
	.incbin "incbin/arm9_rodata.bin", 0x6A4, 0x18

