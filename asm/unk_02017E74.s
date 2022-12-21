	.include "macros/function.inc"
	.include "include/unk_02017E74.inc"

	

	.text


	thumb_func_start sub_02017E74
sub_02017E74: ; 0x02017E74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0x18
	add r6, r2, #0
	str r0, [sp, #4]
	cmp r6, r0
	bhs _02017E8C
	add r6, r0, #0
_02017E8C:
	cmp r3, #0
	beq _02017EAA
	mov r0, #3
	tst r0, r3
	beq _02017EA0
	mov r0, #3
_02017E98:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _02017E98
_02017EA0:
	mov r0, #0
	add r1, r3, #0
	mov r2, #4
	bl sub_020C3060
_02017EAA:
	ldr r1, [sp, #4]
	lsl r7, r6, #1
	lsl r2, r1, #1
	add r1, r1, r2
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r7, r1
	mov r0, #0
	add r1, r6, r1
	mov r2, #4
	bl sub_020C3060
	ldr r1, _02017F9C ; =0x021BFAF0
	str r0, [r1, #0]
	ldr r1, [sp, #4]
	add r1, r1, #1
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _02017F9C ; =0x021BFAF0
	str r1, [r0, #4]
	ldr r0, [sp, #4]
	lsl r0, r0, #2
	add r2, r1, r0
	ldr r1, _02017F9C ; =0x021BFAF0
	str r2, [r1, #8]
	add r1, r2, r0
	ldr r0, _02017F9C ; =0x021BFAF0
	str r1, [r0, #0xc]
	add r1, r1, r7
	str r1, [r0, #0x10]
	strh r6, [r0, #0x14]
	strh r4, [r0, #0x16]
	ldr r0, [sp, #4]
	mov r7, #0
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	ldr r0, _02017F9C ; =0x021BFAF0
	cmp r4, #0
	strh r1, [r0, #0x1a]
	strh r1, [r0, #0x18]
	bls _02017F4C
	str r7, [sp]
_02017EFE:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _02017F08
	cmp r0, #2
	beq _02017F14
_02017F08:
	ldr r1, [r5, #0]
	mov r0, #0
	mov r2, #4
	bl sub_020C3060
	b _02017F1E
_02017F14:
	ldr r1, [r5, #0]
	mov r0, #2
	mov r2, #4
	bl sub_020C30CC
_02017F1E:
	cmp r0, #0
	beq _02017F3A
	ldr r1, [r5, #0]
	mov r2, #0
	bl sub_020A5404
	ldr r1, _02017F9C ; =0x021BFAF0
	ldr r2, [r1, #0]
	ldr r1, [sp]
	str r0, [r2, r1]
	ldr r0, _02017F9C ; =0x021BFAF0
	ldr r0, [r0, #0x10]
	strb r7, [r0, r7]
	b _02017F3E
_02017F3A:
	bl sub_02022974
_02017F3E:
	ldr r0, [sp]
	add r7, r7, #1
	add r0, r0, #4
	add r5, #8
	str r0, [sp]
	cmp r7, r4
	blo _02017EFE
_02017F4C:
	ldr r0, [sp, #4]
	add r1, r0, #1
	cmp r4, r1
	bhs _02017F6C
	ldr r3, _02017F9C ; =0x021BFAF0
	lsl r2, r4, #2
	mov r0, #0
_02017F5A:
	ldr r5, [r3, #0]
	str r0, [r5, r2]
	ldrh r7, [r3, #0x1a]
	ldr r5, [r3, #0x10]
	add r2, r2, #4
	strb r7, [r5, r4]
	add r4, r4, #1
	cmp r4, r1
	blo _02017F5A
_02017F6C:
	cmp r4, r6
	bhs _02017F7E
	ldr r0, _02017F9C ; =0x021BFAF0
_02017F72:
	ldrh r2, [r0, #0x1a]
	ldr r1, [r0, #0x10]
	strb r2, [r1, r4]
	add r4, r4, #1
	cmp r4, r6
	blo _02017F72
_02017F7E:
	mov r4, #0
	cmp r6, #0
	bls _02017F96
	ldr r0, _02017F9C ; =0x021BFAF0
	add r3, r4, #0
	add r2, r4, #0
_02017F8A:
	ldr r1, [r0, #0xc]
	add r4, r4, #1
	strh r2, [r1, r3]
	add r3, r3, #2
	cmp r4, r6
	blo _02017F8A
_02017F96:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02017F9C: .word 0x021BFAF0
	thumb_func_end sub_02017E74

	thumb_func_start sub_02017FA0
sub_02017FA0: ; 0x02017FA0
	ldr r1, _02017FC4 ; =0x021BFAF0
	ldrh r0, [r1, #0x16]
	ldrh r3, [r1, #0x18]
	cmp r0, r3
	bge _02017FBE
	ldr r2, [r1, #0]
	lsl r1, r0, #2
	add r2, r2, r1
_02017FB0:
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _02017FC2
	add r0, r0, #1
	add r2, r2, #4
	cmp r0, r3
	blt _02017FB0
_02017FBE:
	mov r0, #0
	mvn r0, r0
_02017FC2:
	bx lr
	; .align 2, 0
_02017FC4: .word 0x021BFAF0
	thumb_func_end sub_02017FA0

	thumb_func_start sub_02017FC8
sub_02017FC8: ; 0x02017FC8
	push {r3, lr}
	mov r3, #4
	bl sub_02017FE0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02017FC8

	thumb_func_start sub_02017FD4
sub_02017FD4: ; 0x02017FD4
	push {r3, lr}
	mov r3, #3
	mvn r3, r3
	bl sub_02017FE0
	pop {r3, pc}
	thumb_func_end sub_02017FD4

	thumb_func_start sub_02017FE0
sub_02017FE0: ; 0x02017FE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	add r5, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _02017FF8
	bl sub_02022974
_02017FF8:
	ldr r1, _02018078 ; =0x021BFAF0
	ldr r0, [r1, #0x10]
	ldrh r3, [r1, #0x1a]
	ldrb r2, [r0, r5]
	cmp r3, r2
	bne _0201806E
	ldrb r0, [r0, r4]
	ldr r1, [r1, #0]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	beq _02018068
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_020A5448
	str r0, [sp, #4]
	cmp r0, #0
	beq _02018062
	bl sub_02017FA0
	add r7, r0, #0
	bmi _0201805C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	mov r2, #0
	lsl r4, r7, #2
	bl sub_020A5404
	ldr r1, _02018078 ; =0x021BFAF0
	ldr r2, [r1, #0]
	str r0, [r2, r4]
	ldr r0, [r1, #0]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02018056
	ldr r0, [r1, #4]
	str r6, [r0, r4]
	ldr r0, [sp, #4]
	ldr r2, [r1, #8]
	add sp, #8
	str r0, [r2, r4]
	ldr r0, [r1, #0x10]
	strb r7, [r0, r5]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02018056:
	bl sub_02022974
	b _02018072
_0201805C:
	bl sub_02022974
	b _02018072
_02018062:
	bl sub_02022974
	b _02018072
_02018068:
	bl sub_02022974
	b _02018072
_0201806E:
	bl sub_02022974
_02018072:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02018078: .word 0x021BFAF0
	thumb_func_end sub_02017FE0

	thumb_func_start sub_0201807C
sub_0201807C: ; 0x0201807C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _0201808C
	bl sub_02022974
_0201808C:
	ldr r0, _020180EC ; =0x021BFAF0
	ldr r1, [r0, #0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _020180EA
	bl sub_020A543C
	ldr r1, _020180EC ; =0x021BFAF0
	ldr r0, [r1, #0x10]
	ldrb r0, [r0, r4]
	lsl r2, r0, #2
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	ldr r0, [r0, r2]
	ldr r1, [r1, r2]
	cmp r0, #0
	beq _020180BE
	cmp r1, #0
	beq _020180BE
	bl sub_020A55D8
	b _020180C2
_020180BE:
	bl sub_02022974
_020180C2:
	ldr r1, _020180EC ; =0x021BFAF0
	mov r0, #0
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #0]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #4]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldr r2, [r1, #0x10]
	ldr r3, [r1, #8]
	ldrb r2, [r2, r4]
	lsl r2, r2, #2
	str r0, [r3, r2]
	ldrh r2, [r1, #0x1a]
	ldr r0, [r1, #0x10]
	strb r2, [r0, r4]
_020180EA:
	pop {r4, pc}
	; .align 2, 0
_020180EC: .word 0x021BFAF0
	thumb_func_end sub_0201807C

	thumb_func_start sub_020180F0
sub_020180F0: ; 0x020180F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r5, #0
	bne _02018102
	bl sub_02022974
_02018102:
	bl sub_020C3D98
	add r4, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_020A5448
	add r4, r0, #0
	ldr r0, [sp]
	bl sub_020C3DAC
	cmp r4, #0
	beq _02018130
	ldr r1, [r4, #0xc]
	mov r0, #0xff
	bic r1, r0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	str r0, [r4, #0xc]
	add r4, #0x10
_02018130:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020180F0

	thumb_func_start sub_02018134
sub_02018134: ; 0x02018134
	push {r3, lr}
	bl sub_02036780
	cmp r0, #0
	beq _02018142
	bl sub_0209B49C
_02018142:
	pop {r3, pc}
	thumb_func_end sub_02018134

	thumb_func_start sub_02018144
sub_02018144: ; 0x02018144
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02018180 ; =0x021BFAF0
	mov r4, #0
	ldrh r2, [r0, #0x14]
	cmp r5, r2
	bhs _02018166
	ldr r2, [r0, #0]
	ldr r0, [r0, #0x10]
	add r3, r5, #0
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	mov r2, #4
	bl sub_020180F0
	add r4, r0, #0
_02018166:
	cmp r4, #0
	beq _02018178
	ldr r0, _02018180 ; =0x021BFAF0
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _0201817C
_02018178:
	bl sub_02018134
_0201817C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02018180: .word 0x021BFAF0
	thumb_func_end sub_02018144

	thumb_func_start sub_02018184
sub_02018184: ; 0x02018184
	push {r3, r4, r5, lr}
	ldr r2, _020181C0 ; =0x021BFAF0
	add r5, r0, #0
	ldrh r0, [r2, #0x14]
	mov r4, #0
	cmp r5, r0
	bhs _020181A6
	ldr r0, [r2, #0]
	ldr r2, [r2, #0x10]
	add r3, r5, #0
	ldrb r2, [r2, r5]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
	sub r2, r4, #4
	bl sub_020180F0
	add r4, r0, #0
_020181A6:
	cmp r4, #0
	beq _020181B8
	ldr r0, _020181C0 ; =0x021BFAF0
	lsl r1, r5, #1
	ldr r2, [r0, #0xc]
	ldrh r0, [r2, r1]
	add r0, r0, #1
	strh r0, [r2, r1]
	b _020181BC
_020181B8:
	bl sub_02018134
_020181BC:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020181C0: .word 0x021BFAF0
	thumb_func_end sub_02018184

	thumb_func_start sub_020181C4
sub_020181C4: ; 0x020181C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	sub r0, r6, #4
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _02018234 ; =0x021BFAF0
	ldrh r1, [r0, #0x14]
	cmp r4, r1
	bhs _0201822C
	ldr r1, [r0, #0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r4]
	lsl r0, r0, #2
	ldr r7, [r1, r0]
	cmp r7, #0
	bne _020181EA
	bl sub_02022974
_020181EA:
	ldr r0, _02018234 ; =0x021BFAF0
	lsl r5, r4, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _020181FC
	add r0, r4, #0
	bl sub_0201833C
_020181FC:
	ldr r0, _02018234 ; =0x021BFAF0
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r5]
	cmp r0, #0
	bne _0201820A
	bl sub_02022974
_0201820A:
	ldr r0, _02018234 ; =0x021BFAF0
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r5]
	sub r0, r0, #1
	strh r0, [r1, r5]
	bl sub_020C3D98
	sub r6, #0x10
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_020A55D8
	add r0, r4, #0
	bl sub_020C3DAC
	pop {r3, r4, r5, r6, r7, pc}
_0201822C:
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02018234: .word 0x021BFAF0
	thumb_func_end sub_020181C4

	thumb_func_start sub_02018238
sub_02018238: ; 0x02018238
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _0201824A
	bl sub_02022974
_0201824A:
	ldr r0, _020182A0 ; =0x021BFAF0
	ldrh r1, [r0, #0x14]
	cmp r5, r1
	bhs _0201829A
	ldr r1, [r0, #0]
	ldr r0, [r0, #0x10]
	ldrb r0, [r0, r5]
	lsl r0, r0, #2
	ldr r6, [r1, r0]
	cmp r6, #0
	bne _02018264
	bl sub_02022974
_02018264:
	sub r0, r4, #4
	ldr r0, [r0, #0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, r5
	beq _02018274
	bl sub_02022974
_02018274:
	sub r4, #0x10
	add r0, r6, #0
	add r1, r4, #0
	bl sub_020A55D8
	ldr r0, _020182A0 ; =0x021BFAF0
	lsl r4, r5, #1
	ldr r0, [r0, #0xc]
	ldrh r0, [r0, r4]
	cmp r0, #0
	bne _0201828E
	bl sub_02022974
_0201828E:
	ldr r0, _020182A0 ; =0x021BFAF0
	ldr r1, [r0, #0xc]
	ldrh r0, [r1, r4]
	sub r0, r0, #1
	strh r0, [r1, r4]
	pop {r4, r5, r6, pc}
_0201829A:
	bl sub_02022974
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020182A0: .word 0x021BFAF0
	thumb_func_end sub_02018238

	thumb_func_start sub_020182A4
sub_020182A4: ; 0x020182A4
	push {r3, lr}
	ldr r1, _020182C8 ; =0x021BFAF0
	ldrh r2, [r1, #0x14]
	cmp r0, r2
	bhs _020182BE
	ldr r2, [r1, #0]
	ldr r1, [r1, #0x10]
	ldrb r0, [r1, r0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	bl sub_020A5614
	pop {r3, pc}
_020182BE:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_020182C8: .word 0x021BFAF0
	thumb_func_end sub_020182A4

	thumb_func_start sub_020182CC
sub_020182CC: ; 0x020182CC
	push {r4, lr}
	ldr r4, _020182EC ; =0x021BFAF0
	ldrh r3, [r4, #0x14]
	cmp r1, r3
	bhs _020182E6
	ldr r3, [r4, #0]
	ldr r4, [r4, #0x10]
	ldrb r1, [r4, r1]
	lsl r1, r1, #2
	ldr r1, [r3, r1]
	bl sub_020A5A14
	pop {r4, pc}
_020182E6:
	bl sub_02022974
	pop {r4, pc}
	; .align 2, 0
_020182EC: .word 0x021BFAF0
	thumb_func_end sub_020182CC

	thumb_func_start sub_020182F0
sub_020182F0: ; 0x020182F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_020C3DFC
	cmp r0, #0x12
	bne _02018302
	bl sub_02022974
_02018302:
	add r0, r5, #0
	sub r0, #0x10
	bl sub_020A564C
	add r4, #0x10
	cmp r0, r4
	blo _02018330
	sub r2, r5, #4
	ldr r0, _02018338 ; =0x021BFAF0
	ldr r2, [r2, #0]
	ldr r1, [r0, #0]
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x10]
	lsr r2, r2, #0x18
	ldrb r0, [r0, r2]
	sub r5, #0x10
	add r2, r4, #0
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r5, #0
	bl sub_020A5478
	pop {r3, r4, r5, pc}
_02018330:
	bl sub_02022974
	pop {r3, r4, r5, pc}
	nop
_02018338: .word 0x021BFAF0
	thumb_func_end sub_020182F0

	thumb_func_start sub_0201833C
sub_0201833C: ; 0x0201833C
	mov r0, #1
	bx lr
	thumb_func_end sub_0201833C

	.bss


	.global Unk_021BFAF0
Unk_021BFAF0: ; 0x021BFAF0
	.space 0x1C

