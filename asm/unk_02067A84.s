	.include "macros/function.inc"
	.include "include/unk_02067A84.inc"

	

	.text


	thumb_func_start sub_02067A84
sub_02067A84: ; 0x02067A84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r5, r0, #0
	ldr r7, [r5, #0x3c]
	add r4, r1, #0
	ldr r6, [r5, #0x38]
	add r1, sp, #0x40
	str r1, [sp]
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl sub_02067BA8
	cmp r0, #0
	bne _02067AA8
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02067AA8:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02067B2E
	ldr r1, _02067BA4 ; =0x00000F58
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_0203E880
	cmp r4, #0
	beq _02067AD0
	add r0, sp, #0x28
	str r0, [sp]
	ldr r3, [sp, #0x54]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02067BA8
	cmp r0, #0
	bne _02067AF0
_02067AD0:
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl sub_0203E8B0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067AF0:
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl sub_0203E8B0
	ldr r0, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0
	bl sub_0203E8B0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067B2E:
	cmp r0, #1
	bne _02067B9A
	cmp r4, #0
	bne _02067B3C
	add sp, #0x58
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02067B3C:
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x4c]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02067F2C
	add r1, r0, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, sp, #0x10
	bl sub_02067C28
	ldr r1, _02067BA4 ; =0x00000F58
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_0203E880
	ldr r0, [sp, #0x48]
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	add r0, r5, #0
	bl sub_0203E8B0
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl sub_0203E8B0
	add sp, #0x58
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067B9A:
	bl sub_02022974
	mov r0, #0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02067BA4: .word 0x00000F58
	thumb_func_end sub_02067A84

	thumb_func_start sub_02067BA8
sub_02067BA8: ; 0x02067BA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	str r0, [sp, #0xc]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _02067C20
_02067BCA:
	cmp r4, #0
	beq _02067BD4
	ldr r0, [sp, #4]
	cmp r4, r0
	beq _02067C10
_02067BD4:
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, sp, #8
	bl sub_02067C80
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _02067C10
	ldr r0, [sp, #4]
	bl sub_02067F14
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r6, #0
	lsr r1, r1, #0x10
	bl sub_0203F2A0
	cmp r0, #0
	bne _02067C10
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	ldr r3, [sp, #8]
	bl sub_02067C28
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067C10:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0xc
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _02067BCA
_02067C20:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067BA8

	thumb_func_start sub_02067C28
sub_02067C28: ; 0x02067C28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [r5, #0]
	str r3, [r5, #4]
	add r0, r4, #0
	bl sub_02062960
	str r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F254
	str r0, [r5, #0xc]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F28C
	str r0, [r5, #0x10]
	str r4, [r5, #0x14]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02067C28

	thumb_func_start sub_02067C54
sub_02067C54: ; 0x02067C54
	push {r3, lr}
	bl sub_02062950
	cmp r0, #8
	bhi _02067C7E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02067C6A: ; jump table
	.short _02067C7E - _02067C6A - 2 ; case 0
	.short _02067C7E - _02067C6A - 2 ; case 1
	.short _02067C7E - _02067C6A - 2 ; case 2
	.short _02067C7E - _02067C6A - 2 ; case 3
	.short _02067C7C - _02067C6A - 2 ; case 4
	.short _02067C7C - _02067C6A - 2 ; case 5
	.short _02067C7C - _02067C6A - 2 ; case 6
	.short _02067C7C - _02067C6A - 2 ; case 7
	.short _02067C7C - _02067C6A - 2 ; case 8
_02067C7C:
	mov r0, #1
_02067C7E:
	pop {r3, pc}
	thumb_func_end sub_02067C54

	thumb_func_start sub_02067C80
sub_02067C80: ; 0x02067C80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp, #8]
	bl sub_02067C54
	cmp r0, #1
	bne _02067CEE
	add r0, r4, #0
	bl sub_0205EABC
	add r7, r0, #0
	add r0, r4, #0
	bl sub_0205EAC8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0206298C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	add r2, r0, #0
	str r6, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	bl sub_02067DA8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02067CE6
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02067E74
	cmp r0, #0
	bne _02067CE6
	ldr r0, [sp, #8]
	add sp, #0x14
	str r4, [r0, #0]
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02067CE6:
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02067CEE:
	cmp r0, #2
	bne _02067D50
	add r0, r4, #0
	bl sub_0205EABC
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0205EAC8
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_020629D8
	str r0, [sp, #0xc]
	mov r4, #0
_02067D0E:
	str r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02067DA8
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02067D42
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02067E74
	cmp r0, #0
	bne _02067D42
	ldr r0, [sp, #8]
	add sp, #0x14
	str r4, [r0, #0]
	add r0, r6, #0
	pop {r4, r5, r6, r7, pc}
_02067D42:
	add r4, r4, #1
	cmp r4, #4
	blt _02067D0E
	mov r0, #0
	add sp, #0x14
	mvn r0, r0
	pop {r4, r5, r6, r7, pc}
_02067D50:
	mov r0, #0
	mvn r0, r0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02067C80

	thumb_func_start sub_02067D58
sub_02067D58: ; 0x02067D58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r4, r0, #0
	add r0, r5, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0205EABC
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_0205EAC8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02067DA8
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _02067DA0
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl sub_02067E74
	cmp r0, #1
	bne _02067DA0
	mov r5, #0
	mvn r5, r5
_02067DA0:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067D58

	thumb_func_start sub_02067DA8
sub_02067DA8: ; 0x02067DA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [sp, #0x14]
	lsl r5, r4, #2
	ldr r4, _02067DC0 ; =0x020EF6C0
	str r1, [sp]
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, [sp, #0x10]
	ldr r4, [r4, r5]
	blx r4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02067DC0: .word 0x020EF6C0
	thumb_func_end sub_02067DA8

	thumb_func_start sub_02067DC4
sub_02067DC4: ; 0x02067DC4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02063020
	cmp r0, r6
	bne _02067DEA
	add r0, r7, #0
	bl sub_02063040
	cmp r4, r0
	bge _02067DEA
	sub r1, r0, r5
	cmp r4, r1
	blt _02067DEA
	sub r0, r0, r4
	pop {r3, r4, r5, r6, r7, pc}
_02067DEA:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067DC4

	thumb_func_start sub_02067DF0
sub_02067DF0: ; 0x02067DF0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_02063020
	cmp r0, r6
	bne _02067E16
	add r0, r7, #0
	bl sub_02063040
	cmp r4, r0
	ble _02067E16
	add r1, r0, r5
	cmp r4, r1
	bgt _02067E16
	sub r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
_02067E16:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067DF0

	thumb_func_start sub_02067E1C
sub_02067E1C: ; 0x02067E1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02063040
	cmp r0, r4
	bne _02067E42
	add r0, r7, #0
	bl sub_02063020
	cmp r5, r0
	bge _02067E42
	sub r1, r0, r6
	cmp r5, r1
	blt _02067E42
	sub r0, r0, r5
	pop {r3, r4, r5, r6, r7, pc}
_02067E42:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067E1C

	thumb_func_start sub_02067E48
sub_02067E48: ; 0x02067E48
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	add r4, r3, #0
	bl sub_02063040
	cmp r0, r4
	bne _02067E6E
	add r0, r7, #0
	bl sub_02063020
	cmp r5, r0
	ble _02067E6E
	add r1, r0, r6
	cmp r5, r1
	bgt _02067E6E
	sub r0, r5, r0
	pop {r3, r4, r5, r6, r7, pc}
_02067E6E:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02067E48

	thumb_func_start sub_02067E74
sub_02067E74: ; 0x02067E74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	str r0, [sp, #4]
	str r2, [sp, #8]
	cmp r2, #0
	bne _02067E88
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067E88:
	bl sub_02063020
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl sub_02063040
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl sub_02063030
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl sub_0206419C
	add r6, r4, r0
	add r0, r5, #0
	bl sub_020641A8
	add r4, r7, r0
	ldr r0, [sp, #8]
	mov r7, #0
	sub r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _02067EF0
	mov r0, #1
	str r0, [sp, #0x14]
_02067EBE:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	add r3, r4, #0
	str r5, [sp]
	bl sub_02063E94
	ldr r1, [sp, #0x14]
	bic r0, r1
	beq _02067ED8
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02067ED8:
	add r0, r5, #0
	bl sub_0206419C
	add r6, r6, r0
	add r0, r5, #0
	bl sub_020641A8
	add r4, r4, r0
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	blt _02067EBE
_02067EF0:
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	add r3, r4, #0
	str r5, [sp]
	bl sub_02063E94
	mov r1, #1
	bic r0, r1
	cmp r0, #4
	bne _02067F0C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02067F0C:
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067E74

	thumb_func_start sub_02067F14
sub_02067F14: ; 0x02067F14
	push {r3, lr}
	bl sub_02062960
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0203F254
	pop {r3, pc}
	thumb_func_end sub_02067F14

	thumb_func_start sub_02067F24
sub_02067F24: ; 0x02067F24
	ldr r3, _02067F28 ; =sub_02067F14
	bx r3
	; .align 2, 0
_02067F28: .word sub_02067F14
	thumb_func_end sub_02067F24

	thumb_func_start sub_02067F2C
sub_02067F2C: ; 0x02067F2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r0, #0
	add r4, r2, #0
	add r6, r3, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	beq _02067F7C
	add r7, sp, #0
_02067F4C:
	ldr r0, [sp]
	cmp r0, r4
	beq _02067F6C
	bl sub_02067C54
	sub r0, r0, #1
	cmp r0, #1
	bhi _02067F6C
	ldr r0, [sp]
	bl sub_02067F14
	cmp r6, r0
	bne _02067F6C
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02067F6C:
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl sub_020625B0
	cmp r0, #0
	bne _02067F4C
_02067F7C:
	bl sub_02022974
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02067F2C

	thumb_func_start sub_02067F88
sub_02067F88: ; 0x02067F88
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02067C54
	sub r0, r0, #1
	cmp r0, #1
	bhi _02067FB4
	add r0, r4, #0
	bl sub_02067F14
	add r1, r0, #0
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl sub_0203F2A0
	cmp r0, #0
	bne _02067FB4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02067FB4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02067F88

	thumb_func_start sub_02067FB8
sub_02067FB8: ; 0x02067FB8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x18]
	str r4, [sp]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #4]
	ldr r4, [sp, #0x20]
	str r4, [sp, #8]
	ldr r4, [sp, #0x24]
	str r4, [sp, #0xc]
	bl sub_02067FF0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end sub_02067FB8

	thumb_func_start sub_02067FD4
sub_02067FD4: ; 0x02067FD4
	push {r4, lr}
	add r4, r0, #0
	bne _02067FDE
	bl sub_02022974
_02067FDE:
	add r0, r4, #0
	bl sub_02068048
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02067FD4

	thumb_func_start sub_02067FE8
sub_02067FE8: ; 0x02067FE8
	ldr r3, _02067FEC ; =sub_02068054
	bx r3
	; .align 2, 0
_02067FEC: .word sub_02068054
	thumb_func_end sub_02067FE8

	thumb_func_start sub_02067FF0
sub_02067FF0: ; 0x02067FF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	add r4, r0, #0
	bne _0206800A
	bl sub_02022974
_0206800A:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x30
	bl sub_020D5124
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [r4, #8]
	ldr r0, [sp, #0x18]
	mov r2, #0xff
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x18]
	str r5, [r4, #0x2c]
	str r6, [r4, #0x24]
	ldr r0, _02068044 ; =sub_0206806C
	str r7, [r4, #0x28]
	bl sub_0200D9E8
	add r4, r0, #0
	bne _02068040
	bl sub_02022974
_02068040:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02068044: .word sub_0206806C
	thumb_func_end sub_02067FF0

	thumb_func_start sub_02068048
sub_02068048: ; 0x02068048
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02068048

	thumb_func_start sub_02068054
sub_02068054: ; 0x02068054
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	add r1, r0, #0
	mov r0, #4
	bl sub_02018238
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end sub_02068054

	thumb_func_start sub_0206806C
sub_0206806C: ; 0x0206806C
	push {r3, r4, r5, lr}
	ldr r4, _02068084 ; =0x020EF6D0
	add r5, r1, #0
_02068072:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _02068072
	pop {r3, r4, r5, pc}
	nop
_02068084: .word 0x020EF6D0
	thumb_func_end sub_0206806C

	thumb_func_start sub_02068088
sub_02068088: ; 0x02068088
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x24]
	add r0, r4, #0
	bl sub_02062D1C
	cmp r0, #1
	bne _0206809E
	add r0, r4, #0
	bl sub_02062DDC
_0206809E:
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02068088

	thumb_func_start sub_020680A4
sub_020680A4: ; 0x020680A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x24]
	add r0, r5, #0
	bl sub_02062D1C
	cmp r0, #1
	bne _020680B8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020680B8:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #8]
	bl ov5_021ECDFC
	add r0, r5, #0
	mov r1, #0x40
	bl sub_020628BC
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020680A4

	thumb_func_start sub_020680D0
sub_020680D0: ; 0x020680D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0205EB3C
	bl sub_02065684
	cmp r0, #0
	bne _020680E6
	mov r0, #0
	pop {r4, pc}
_020680E6:
	ldr r0, [r4, #0x24]
	bl sub_02062948
	sub r0, #0x33
	cmp r0, #3
	bhi _0206810E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020680FE: ; jump table
	.short _02068106 - _020680FE - 2 ; case 0
	.short _02068106 - _020680FE - 2 ; case 1
	.short _02068106 - _020680FE - 2 ; case 2
	.short _02068106 - _020680FE - 2 ; case 3
_02068106:
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_0206810E:
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020680D0

	thumb_func_start sub_02068118
sub_02068118: ; 0x02068118
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_020655F4
	cmp r0, #0
	bne _0206812A
	mov r0, #0
	pop {r4, pc}
_0206812A:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	bne _02068138
	bl sub_02022974
_02068138:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065638
	mov r0, #4
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02068118

	thumb_func_start sub_02068150
sub_02068150: ; 0x02068150
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065684
	cmp r0, #0
	bne _02068162
	mov r0, #0
	pop {r4, pc}
_02068162:
	mov r0, #5
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02068150

	thumb_func_start sub_0206816C
sub_0206816C: ; 0x0206816C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	ldr r0, [r4, #0x24]
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021F5D8C
	str r0, [r4, #0x20]
	mov r0, #6
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206816C

	thumb_func_start sub_02068188
sub_02068188: ; 0x02068188
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov5_021F5C4C
	cmp r0, #1
	bne _020681A0
	ldr r0, [r4, #0x20]
	bl sub_0207136C
	mov r0, #9
	str r0, [r4, #0]
_020681A0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02068188

	thumb_func_start sub_020681A4
sub_020681A4: ; 0x020681A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0x65
	bl sub_02065638
	mov r0, #8
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020681A4

	thumb_func_start sub_020681B8
sub_020681B8: ; 0x020681B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065684
	cmp r0, #1
	bne _020681CA
	mov r0, #9
	str r0, [r4, #0]
_020681CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020681B8

	thumb_func_start sub_020681D0
sub_020681D0: ; 0x020681D0
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	cmp r1, #0x1e
	blt _020681E2
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r1, #0xa
	str r1, [r0, #0]
_020681E2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end sub_020681D0

	thumb_func_start sub_020681E8
sub_020681E8: ; 0x020681E8
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bgt _020681F6
	mov r1, #0xd
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_020681F6:
	mov r1, #0xb
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_020681E8

	thumb_func_start sub_02068200
sub_02068200: ; 0x02068200
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_020655F4
	cmp r0, #1
	bne _02068222
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065638
	mov r0, #0xc
	str r0, [r4, #0]
_02068222:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02068200

	thumb_func_start sub_02068228
sub_02068228: ; 0x02068228
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_02065684
	cmp r0, #0
	bne _0206823A
	mov r0, #0
	pop {r4, pc}
_0206823A:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_02068228

	thumb_func_start sub_02068248
sub_02068248: ; 0x02068248
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	cmp r1, #8
	bge _02068256
	mov r0, #0
	bx lr
_02068256:
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r1, #0xe
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_02068248

	thumb_func_start sub_02068264
sub_02068264: ; 0x02068264
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_0205EB3C
	add r4, r0, #0
	bl sub_02063020
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02063040
	add r7, r0, #0
	ldr r0, [r5, #0x24]
	bl sub_02063020
	str r0, [sp]
	ldr r0, [r5, #0x24]
	bl sub_02063040
	add r3, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02064488
	add r6, r0, #0
	ldr r0, [r5, #0x28]
	bl sub_0205EA78
	cmp r6, r0
	beq _020682D8
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _020682B0
	ldr r0, [r5, #0x14]
	cmp r0, #2
	bne _020682D8
_020682B0:
	add r0, r4, #0
	bl sub_020655F4
	cmp r0, #1
	bne _020682DC
	add r0, r4, #0
	mov r1, #0x80
	bl sub_020628C4
	add r0, r6, #0
	mov r1, #0
	bl sub_02065838
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02065638
	mov r0, #0xf
	str r0, [r5, #0]
	b _020682DC
_020682D8:
	mov r0, #0x10
	str r0, [r5, #0]
_020682DC:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02068264

	thumb_func_start sub_020682E0
sub_020682E0: ; 0x020682E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl sub_0205EB3C
	add r5, r0, #0
	bl sub_02065684
	cmp r0, #0
	bne _020682F8
	mov r0, #0
	pop {r3, r4, r5, pc}
_020682F8:
	add r0, r5, #0
	bl sub_020656AC
	mov r0, #0x10
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020682E0

	thumb_func_start sub_02068308
sub_02068308: ; 0x02068308
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl sub_020656AC
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl sub_02071CB4
	cmp r0, #0
	beq _0206832A
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x24]
	bl ov8_0224C5DC
	cmp r0, #0
	bne _02068332
_0206832A:
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl sub_020633A8
_02068332:
	mov r0, #0x11
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02068308

	thumb_func_start sub_0206833C
sub_0206833C: ; 0x0206833C
	mov r1, #1
	str r1, [r0, #4]
	mov r0, #0
	bx lr
	thumb_func_end sub_0206833C

	.rodata


	.global Unk_020EF6C0
Unk_020EF6C0: ; 0x020EF6C0
	.incbin "incbin/arm9_rodata.bin", 0xAA80, 0xAA90 - 0xAA80

	.global Unk_020EF6D0
Unk_020EF6D0: ; 0x020EF6D0
	.incbin "incbin/arm9_rodata.bin", 0xAA90, 0x48

