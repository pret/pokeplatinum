	.include "macros/function.inc"
	.include "include/unk_0202298C.inc"

	

	.text


	thumb_func_start sub_0202298C
sub_0202298C: ; 0x0202298C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02018144
	add r6, r0, #0
	bne _020229A2
	bl sub_02022974
_020229A2:
	add r0, r4, #0
	lsl r1, r7, #3
	bl sub_02018144
	str r0, [r6, #0]
	cmp r0, #0
	bne _020229B4
	bl sub_02022974
_020229B4:
	mov r4, #0
	cmp r7, #0
	ble _020229CC
	add r5, r4, #0
_020229BC:
	ldr r0, [r6, #0]
	add r0, r0, r5
	bl sub_02022BC0
	add r4, r4, #1
	add r5, #8
	cmp r4, r7
	blt _020229BC
_020229CC:
	str r7, [r6, #4]
	mov r0, #0
	str r0, [r6, #8]
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202298C

	thumb_func_start sub_020229D8
sub_020229D8: ; 0x020229D8
	push {r4, lr}
	add r4, r0, #0
	bne _020229E2
	bl sub_02022974
_020229E2:
	add r0, r4, #0
	bl sub_02022AE4
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020229D8

	thumb_func_start sub_020229F8
sub_020229F8: ; 0x020229F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022A06
	bl sub_02022974
_02022A06:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022B20
	cmp r0, #0
	bne _02022A16
	mov r0, #1
	pop {r3, r4, r5, pc}
_02022A16:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020229F8

	thumb_func_start sub_02022A1C
sub_02022A1C: ; 0x02022A1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	cmp r5, #0
	bne _02022A2C
	bl sub_02022974
_02022A2C:
	add r0, r5, #0
	bl sub_02022B90
	add r4, r0, #0
	bne _02022A3A
	bl sub_02022974
_02022A3A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020229F8
	cmp r0, #1
	beq _02022A4A
	bl sub_02022974
_02022A4A:
	str r7, [r4, #4]
	str r6, [r4, #0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022A1C

	thumb_func_start sub_02022A58
sub_02022A58: ; 0x02022A58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	cmp r5, #0
	bne _02022A6A
	bl sub_02022974
_02022A6A:
	cmp r6, #0
	bne _02022A72
	bl sub_02022974
_02022A72:
	add r0, r5, #0
	bl sub_02022B90
	add r4, r0, #0
	bne _02022A80
	bl sub_02022974
_02022A80:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020229F8
	cmp r0, #1
	beq _02022A90
	bl sub_02022974
_02022A90:
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_02017A40
	str r0, [r4, #4]
	cmp r0, #0
	bne _02022AA2
	bl sub_02022974
_02022AA2:
	str r7, [r4, #0]
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022A58

	thumb_func_start sub_02022AB0
sub_02022AB0: ; 0x02022AB0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022ABE
	bl sub_02022974
_02022ABE:
	cmp r4, #0
	bne _02022AC6
	bl sub_02022974
_02022AC6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02022AD4
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
_02022AD4:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	ldr r0, [r5, #8]
	sub r0, r0, #1
	str r0, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02022AB0

	thumb_func_start sub_02022AE4
sub_02022AE4: ; 0x02022AE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02022AEE
	bl sub_02022974
_02022AEE:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _02022AF8
	bl sub_02022974
_02022AF8:
	ldr r0, [r5, #4]
	mov r6, #0
	cmp r0, #0
	ble _02022B1E
	add r4, r6, #0
	sub r7, r6, #1
_02022B04:
	ldr r1, [r5, #0]
	ldr r0, [r1, r4]
	cmp r0, r7
	beq _02022B14
	add r0, r5, #0
	add r1, r1, r4
	bl sub_02022AB0
_02022B14:
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #8
	cmp r6, r0
	blt _02022B04
_02022B1E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022AE4

	thumb_func_start sub_02022B20
sub_02022B20: ; 0x02022B20
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022B2E
	bl sub_02022974
_02022B2E:
	ldr r6, [r5, #4]
	mov r1, #0
	cmp r6, #0
	ble _02022B4E
	ldr r3, [r5, #0]
	add r2, r3, #0
_02022B3A:
	ldr r0, [r2, #0]
	cmp r4, r0
	bne _02022B46
	lsl r0, r1, #3
	add r0, r3, r0
	pop {r4, r5, r6, pc}
_02022B46:
	add r1, r1, #1
	add r2, #8
	cmp r1, r6
	blt _02022B3A
_02022B4E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02022B20

	thumb_func_start sub_02022B54
sub_02022B54: ; 0x02022B54
	push {r4, lr}
	add r4, r0, #0
	bne _02022B5E
	bl sub_02022974
_02022B5E:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022B54

	thumb_func_start sub_02022B64
sub_02022B64: ; 0x02022B64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022B72
	bl sub_02022974
_02022B72:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02022B7C
	bl sub_020181C4
_02022B7C:
	str r4, [r5, #4]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022B64

	thumb_func_start sub_02022B80
sub_02022B80: ; 0x02022B80
	push {r4, lr}
	add r4, r0, #0
	bne _02022B8A
	bl sub_02022974
_02022B8A:
	ldr r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022B80

	thumb_func_start sub_02022B90
sub_02022B90: ; 0x02022B90
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bne _02022B9A
	bl sub_02022974
_02022B9A:
	ldr r5, [r4, #4]
	mov r2, #0
	cmp r5, #0
	ble _02022BBC
	ldr r4, [r4, #0]
	sub r0, r2, #1
	add r3, r4, #0
_02022BA8:
	ldr r1, [r3, #0]
	cmp r1, r0
	bne _02022BB4
	lsl r0, r2, #3
	add r0, r4, r0
	pop {r3, r4, r5, pc}
_02022BB4:
	add r2, r2, #1
	add r3, #8
	cmp r2, r5
	blt _02022BA8
_02022BBC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022B90

	thumb_func_start sub_02022BC0
sub_02022BC0: ; 0x02022BC0
	push {r4, lr}
	add r4, r0, #0
	bne _02022BCA
	bl sub_02022974
_02022BCA:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022BC0

	thumb_func_start sub_02022BD8
sub_02022BD8: ; 0x02022BD8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #8
	bl sub_02018144
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202298C
	mov r1, #0x18
	str r0, [r7, #0]
	add r0, r4, #0
	mul r1, r6
	bl sub_02018144
	mov r4, #0
	str r0, [r7, #4]
	cmp r6, #0
	ble _02022C16
	add r5, r4, #0
_02022C06:
	ldr r0, [r7, #4]
	add r0, r0, r5
	bl sub_02022F5C
	add r4, r4, #1
	add r5, #0x18
	cmp r4, r6
	blt _02022C06
_02022C16:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022BD8

	thumb_func_start sub_02022C1C
sub_02022C1C: ; 0x02022C1C
	push {r4, lr}
	add r4, r0, #0
	bne _02022C26
	bl sub_02022974
_02022C26:
	add r0, r4, #0
	bl sub_02022D58
	ldr r0, [r4, #0]
	bl sub_020229D8
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end sub_02022C1C

	thumb_func_start sub_02022C40
sub_02022C40: ; 0x02022C40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022C4E
	bl sub_02022974
_02022C4E:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl sub_020229F8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022C40

	thumb_func_start sub_02022C58
sub_02022C58: ; 0x02022C58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	str r2, [sp]
	cmp r5, #0
	bne _02022C6A
	bl sub_02022974
_02022C6A:
	add r0, r5, #0
	bl sub_02022F2C
	add r4, r0, #0
	strh r7, [r4, #0x16]
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _02022C88
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	bl sub_02023060
	add r1, r0, #0
	str r6, [r4, #0x10]
	b _02022C8E
_02022C88:
	mov r0, #0
	add r1, r6, #0
	str r0, [r4, #0x10]
_02022C8E:
	ldr r0, [r5, #0]
	ldr r2, [sp]
	bl sub_02022A1C
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02022C58

	thumb_func_start sub_02022C9C
sub_02022C9C: ; 0x02022C9C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl sub_02022C58
	add r4, r0, #0
	bl sub_02022EBC
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_02022C9C

	thumb_func_start sub_02022CB4
sub_02022CB4: ; 0x02022CB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022CC2
	bl sub_02022974
_02022CC2:
	cmp r4, #0
	bne _02022CCA
	bl sub_02022974
_02022CCA:
	ldrh r0, [r4, #0x16]
	cmp r0, #1
	bne _02022CE0
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _02022CE0
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	strh r0, [r4, #0x16]
_02022CE0:
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02022CEC
	ldr r0, [r5, #0]
	bl sub_02022AB0
_02022CEC:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02022D00
	ldr r1, _02022D30 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02022D00
	bl sub_02022974
_02022D00:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02022D14
	ldr r1, _02022D30 ; =0x02100DF0
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02022D14
	bl sub_02022974
_02022D14:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02022D28
	ldr r1, _02022D34 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	cmp r0, #0
	beq _02022D28
	bl sub_02022974
_02022D28:
	add r0, r4, #0
	bl sub_02022F5C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02022D30: .word 0x02100DF0
_02022D34: .word 0x02100DF8
	thumb_func_end sub_02022CB4

	thumb_func_start sub_02022D38
sub_02022D38: ; 0x02022D38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022D46
	bl sub_02022974
_02022D46:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022D98
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02022CB4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022D38

	thumb_func_start sub_02022D58
sub_02022D58: ; 0x02022D58
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bne _02022D62
	bl sub_02022974
_02022D62:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _02022D6C
	bl sub_02022974
_02022D6C:
	ldr r0, [r5, #0]
	mov r6, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _02022D94
	add r4, r6, #0
_02022D78:
	ldr r1, [r5, #4]
	ldr r0, [r1, r4]
	cmp r0, #0
	beq _02022D88
	add r0, r5, #0
	add r1, r1, r4
	bl sub_02022CB4
_02022D88:
	ldr r0, [r5, #0]
	add r6, r6, #1
	ldr r0, [r0, #4]
	add r4, #0x18
	cmp r6, r0
	blt _02022D78
_02022D94:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02022D58

	thumb_func_start sub_02022D98
sub_02022D98: ; 0x02022D98
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	cmp r6, #0
	bne _02022DA6
	bl sub_02022974
_02022DA6:
	ldr r0, [r6, #0]
	mov r4, #0
	ldr r0, [r0, #4]
	cmp r0, #0
	ble _02022DDA
	add r5, r4, #0
_02022DB2:
	ldr r1, [r6, #4]
	ldr r0, [r1, r5]
	cmp r0, #0
	beq _02022DCE
	add r0, r1, r5
	bl sub_02022DE0
	cmp r0, r7
	bne _02022DCE
	mov r0, #0x18
	ldr r1, [r6, #4]
	mul r0, r4
	add r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_02022DCE:
	ldr r0, [r6, #0]
	add r4, r4, #1
	ldr r0, [r0, #4]
	add r5, #0x18
	cmp r4, r0
	blt _02022DB2
_02022DDA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02022D98

	thumb_func_start sub_02022DE0
sub_02022DE0: ; 0x02022DE0
	push {r4, lr}
	add r4, r0, #0
	bne _02022DEA
	bl sub_02022974
_02022DEA:
	ldr r0, [r4, #0]
	bl sub_02022B80
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022DE0

	thumb_func_start sub_02022DF4
sub_02022DF4: ; 0x02022DF4
	push {r4, lr}
	add r4, r0, #0
	bne _02022DFE
	bl sub_02022974
_02022DFE:
	add r0, r4, #0
	bl sub_02022F70
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022DF4

	thumb_func_start sub_02022E08
sub_02022E08: ; 0x02022E08
	push {r4, lr}
	add r4, r0, #0
	bne _02022E12
	bl sub_02022974
_02022E12:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02022E1C
	bl sub_02022974
_02022E1C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02022E28
	bl sub_02022974
	pop {r4, pc}
_02022E28:
	add r0, r4, #0
	bl sub_02022F80
	add r1, r4, #0
	bl sub_02023008
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022E08

	thumb_func_start sub_02022E38
sub_02022E38: ; 0x02022E38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022E46
	bl sub_02022974
_02022E46:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022D98
	bl sub_02022E08
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022E38

	thumb_func_start sub_02022E54
sub_02022E54: ; 0x02022E54
	push {r4, lr}
	add r4, r0, #0
	bne _02022E5E
	bl sub_02022974
_02022E5E:
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _02022E6A
	bl sub_02022974
	pop {r4, pc}
_02022E6A:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02022E76
	bl sub_02022974
	pop {r4, pc}
_02022E76:
	add r0, r4, #0
	bl sub_02022F80
	bl sub_02023048
	add r0, r4, #0
	bl sub_02022F70
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	bl sub_02023034
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	strh r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end sub_02022E54

	thumb_func_start sub_02022EA0
sub_02022EA0: ; 0x02022EA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02022EAE
	bl sub_02022974
_02022EAE:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02022D98
	bl sub_02022E54
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02022EA0

	thumb_func_start sub_02022EBC
sub_02022EBC: ; 0x02022EBC
	push {r4, lr}
	add r4, r0, #0
	bne _02022EC6
	bl sub_02022974
_02022EC6:
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	beq _02022ED0
	bl sub_02022974
_02022ED0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02022EDC
	bl sub_02022974
	pop {r4, pc}
_02022EDC:
	add r0, r4, #0
	bl sub_02022F80
	add r2, r4, #0
	add r1, r4, #4
	add r4, #0xc
	add r2, #8
	add r3, r4, #0
	bl sub_02022F98
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022EBC

	thumb_func_start sub_02022EF4
sub_02022EF4: ; 0x02022EF4
	push {r4, lr}
	add r4, r0, #0
	bne _02022EFE
	bl sub_02022974
_02022EFE:
	ldr r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022EF4

	thumb_func_start sub_02022F04
sub_02022F04: ; 0x02022F04
	push {r4, lr}
	add r4, r0, #0
	bne _02022F0E
	bl sub_02022974
_02022F0E:
	ldr r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022F04

	thumb_func_start sub_02022F14
sub_02022F14: ; 0x02022F14
	push {r4, lr}
	add r4, r0, #0
	bne _02022F1E
	bl sub_02022974
_02022F1E:
	ldr r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02022F14

	thumb_func_start sub_02022F24
sub_02022F24: ; 0x02022F24
	ldr r3, _02022F28 ; =sub_02023084
	bx r3
	; .align 2, 0
_02022F28: .word sub_02023084
	thumb_func_end sub_02022F24

	thumb_func_start sub_02022F2C
sub_02022F2C: ; 0x02022F2C
	push {r3, r4}
	ldr r1, [r0, #0]
	mov r2, #0
	ldr r4, [r1, #4]
	cmp r4, #0
	ble _02022F54
	ldr r3, [r0, #4]
_02022F3A:
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _02022F4C
	ldr r1, [r0, #4]
	mov r0, #0x18
	mul r0, r2
	add r0, r1, r0
	pop {r3, r4}
	bx lr
_02022F4C:
	add r2, r2, #1
	add r3, #0x18
	cmp r2, r4
	blt _02022F3A
_02022F54:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022F2C

	thumb_func_start sub_02022F5C
sub_02022F5C: ; 0x02022F5C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02022F5C

	thumb_func_start sub_02022F70
sub_02022F70: ; 0x02022F70
	push {r3, lr}
	ldr r0, [r0, #0]
	bl sub_02022B54
	bl NNS_G3dGetTex
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02022F70

	thumb_func_start sub_02022F80
sub_02022F80: ; 0x02022F80
	push {r3, lr}
	ldrh r1, [r0, #0x16]
	cmp r1, #0
	bne _02022F90
	ldr r0, [r0, #0]
	bl sub_02022B54
	b _02022F92
_02022F90:
	ldr r0, [r0, #0x10]
_02022F92:
	bl NNS_G3dGetTex
	pop {r3, pc}
	thumb_func_end sub_02022F80

	thumb_func_start sub_02022F98
sub_02022F98: ; 0x02022F98
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl NNS_G3dTexGetRequiredSize
	add r7, r0, #0
	add r0, r5, #0
	bl NNS_G3dTex4x4GetRequiredSize
	add r6, r0, #0
	add r0, r5, #0
	bl NNS_G3dPlttGetRequiredSize
	add r4, r0, #0
	cmp r7, #0
	beq _02022FCE
	ldr r3, _02023000 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r0, r7, #0
	add r2, r1, #0
	blx r3
	ldr r1, [sp]
	str r0, [r1, #0]
_02022FCE:
	cmp r6, #0
	beq _02022FE2
	ldr r3, _02023000 ; =0x02100DEC
	add r0, r6, #0
	ldr r3, [r3, #0]
	mov r1, #1
	mov r2, #0
	blx r3
	ldr r1, [sp, #4]
	str r0, [r1, #0]
_02022FE2:
	cmp r4, #0
	beq _02022FFC
	ldr r3, _02023004 ; =0x02100DF4
	mov r1, #2
	ldrh r2, [r5, #0x20]
	lsl r1, r1, #0xe
	ldr r3, [r3, #0]
	and r1, r2
	add r0, r4, #0
	mov r2, #0
	blx r3
	ldr r1, [sp, #8]
	str r0, [r1, #0]
_02022FFC:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02023000: .word 0x02100DEC
_02023004: .word 0x02100DF4
	thumb_func_end sub_02022F98

	thumb_func_start sub_02023008
sub_02023008: ; 0x02023008
	push {r4, lr}
	add r3, r1, #0
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	add r4, r0, #0
	bl sub_02023034
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl DC_FlushRange
	add r0, r4, #0
	mov r1, #1
	bl NNS_G3dTexLoad
	add r0, r4, #0
	mov r1, #1
	bl NNS_G3dPlttLoad
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02023008

	thumb_func_start sub_02023034
sub_02023034: ; 0x02023034
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r3, #0
	bl NNS_G3dTexSetTexKey
	add r0, r5, #0
	add r1, r4, #0
	bl NNS_G3dPlttSetPlttKey
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023034

	thumb_func_start sub_02023048
sub_02023048: ; 0x02023048
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, sp, #4
	add r2, sp, #0
	bl NNS_G3dTexReleaseTexKey
	add r0, r4, #0
	bl NNS_G3dPlttReleasePlttKey
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02023048

	thumb_func_start sub_02023060
sub_02023060: ; 0x02023060
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r1, #0
	bl sub_02023084
	add r5, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02018144
	add r1, r6, #0
	add r2, r5, #0
	add r4, r0, #0
	bl memcpy
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02023060

	thumb_func_start sub_02023084
sub_02023084: ; 0x02023084
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl NNS_G3dGetTex
	add r4, r0, #0
	bne _02023094
	bl sub_02022974
_02023094:
	ldr r0, [r4, #0x14]
	add r0, r4, r0
	sub r0, r0, r5
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02023084