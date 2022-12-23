	.include "macros/function.inc"
	.include "overlay023/ov23_022499E4.inc"

	

	.text


	thumb_func_start ov23_022499E4
ov23_022499E4: ; 0x022499E4
	bx lr
	; .align 2, 0
	thumb_func_end ov23_022499E4

	thumb_func_start ov23_022499E8
ov23_022499E8: ; 0x022499E8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0205964C
	cmp r0, #0
	bne _02249A2A
	add r0, r4, #0
	bl sub_0203D174
	bl sub_02036794
	add r0, r4, #0
	bl sub_0205965C
	bl sub_0205964C
	mov r2, #0x3a
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x21
	lsl r2, r2, #0xa
	bl sub_02017FC8
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADDC
	cmp r0, #0
	bne _02249A2A
	bl sub_02036894
_02249A2A:
	pop {r4, pc}
	thumb_func_end ov23_022499E8

	thumb_func_start ov23_02249A2C
ov23_02249A2C: ; 0x02249A2C
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	mov r1, #1
	add r0, #0x41
	strb r1, [r0]
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x24
	bl sub_0202CFEC
	ldr r0, [r4, #0x18]
	bl ov23_02242BC0
	ldr r0, _02249A58 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
	; .align 2, 0
_02249A58: .word ov23_02249C34
	thumb_func_end ov23_02249A2C

	thumb_func_start ov23_02249A5C
ov23_02249A5C: ; 0x02249A5C
	push {r3, lr}
	bl sub_0205964C
	cmp r0, #0
	beq _02249A6E
	ldr r0, _02249A70 ; =ov23_0224A1A0
	mov r1, #3
	bl ov23_02249C24
_02249A6E:
	pop {r3, pc}
	; .align 2, 0
_02249A70: .word ov23_0224A1A0
	thumb_func_end ov23_02249A5C

	thumb_func_start ov23_02249A74
ov23_02249A74: ; 0x02249A74
	push {r3, lr}
	bl sub_02036884
	ldr r0, _02249A84 ; =ov23_0224A02C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249A84: .word ov23_0224A02C
	thumb_func_end ov23_02249A74

	thumb_func_start ov23_02249A88
ov23_02249A88: ; 0x02249A88
	push {r3, lr}
	bl sub_02033DFC
	cmp r0, #0
	bne _02249A9E
	bl ov23_0224C198
	ldr r0, _02249AA0 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
_02249A9E:
	pop {r3, pc}
	; .align 2, 0
_02249AA0: .word ov23_02249C34
	thumb_func_end ov23_02249A88

	thumb_func_start ov23_02249AA4
ov23_02249AA4: ; 0x02249AA4
	push {r3, lr}
	bl sub_020368A4
	ldr r0, _02249AB4 ; =ov23_02249A88
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249AB4: .word ov23_02249A88
	thumb_func_end ov23_02249AA4

	thumb_func_start ov23_02249AB8
ov23_02249AB8: ; 0x02249AB8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	bl sub_0205964C
	add r2, sp, #0
	ldr r5, [r0, #0x34]
	ldr r3, _02249B3C ; =0x022567F8
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, _02249B40 ; =ov23_02249E18
	ldr r4, _02249B44 ; =ov23_0224A09C
	ldr r7, _02249B48 ; =ov23_02249CE4
	cmp r5, r0
	bne _02249AE8
	ldr r0, _02249B4C ; =ov23_02249E84
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249AE8:
	cmp r4, r5
	bne _02249AFA
	ldr r0, _02249B50 ; =ov23_0224A0CC
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249AFA:
	cmp r7, r5
	bne _02249B0C
	ldr r0, _02249B54 ; =ov23_0224A138
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B0C:
	ldr r0, _02249B58 ; =ov23_0224A024
	cmp r0, r5
	bne _02249B20
	ldr r0, _02249B5C ; =ov23_0224A16C
	mov r1, #0
	bl ov23_02249C24
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B20:
	mov r1, #0
_02249B22:
	ldr r0, [r6, #0]
	cmp r5, r0
	bne _02249B2E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B2E:
	add r1, r1, #1
	add r6, r6, #4
	cmp r1, #4
	blo _02249B22
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249B3C: .word 0x022567F8
_02249B40: .word ov23_02249E18
_02249B44: .word ov23_0224A09C
_02249B48: .word ov23_02249CE4
_02249B4C: .word ov23_02249E84
_02249B50: .word ov23_0224A0CC
_02249B54: .word ov23_0224A138
_02249B58: .word ov23_0224A024
_02249B5C: .word ov23_0224A16C
	thumb_func_end ov23_02249AB8

	thumb_func_start ov23_02249B60
ov23_02249B60: ; 0x02249B60
	push {r4, lr}
	bl sub_0205964C
	ldr r4, [r0, #0x34]
	ldr r0, _02249BB4 ; =ov23_02249E98
	ldr r3, _02249BB8 ; =ov23_0224A0E0
	ldr r2, _02249BBC ; =ov23_0224A14C
	ldr r1, _02249BC0 ; =ov23_0224A180
	cmp r4, r0
	bne _02249B80
	ldr r0, _02249BC4 ; =ov23_02249EA0
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249B80:
	cmp r3, r4
	bne _02249B90
	ldr r0, _02249BC8 ; =ov23_0224A0E8
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249B90:
	cmp r2, r4
	bne _02249BA0
	ldr r0, _02249BCC ; =ov23_0224A150
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249BA0:
	cmp r1, r4
	bne _02249BB0
	ldr r0, _02249BD0 ; =ov23_0224A184
	mov r1, #0
	bl ov23_02249C24
	mov r0, #1
	pop {r4, pc}
_02249BB0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02249BB4: .word ov23_02249E98
_02249BB8: .word ov23_0224A0E0
_02249BBC: .word ov23_0224A14C
_02249BC0: .word ov23_0224A180
_02249BC4: .word ov23_02249EA0
_02249BC8: .word ov23_0224A0E8
_02249BCC: .word ov23_0224A150
_02249BD0: .word ov23_0224A184
	thumb_func_end ov23_02249B60

	thumb_func_start ov23_02249BD4
ov23_02249BD4: ; 0x02249BD4
	push {r4, r5, lr}
	sub sp, #0x34
	bl sub_0205964C
	ldr r4, _02249C20 ; =0x02256808
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #6
_02249BE4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02249BE4
	ldr r0, [r4, #0]
	cmp r5, #0
	str r0, [r3, #0]
	ldr r1, [r5, #0x34]
	bne _02249BFC
	add sp, #0x34
	mov r0, #0
	pop {r4, r5, pc}
_02249BFC:
	ldr r0, [sp]
	cmp r0, #0
	beq _02249C18
	add r2, sp, #0
_02249C04:
	ldr r0, [r2, #0]
	cmp r1, r0
	bne _02249C10
	add sp, #0x34
	mov r0, #1
	pop {r4, r5, pc}
_02249C10:
	add r2, r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne _02249C04
_02249C18:
	mov r0, #0
	add sp, #0x34
	pop {r4, r5, pc}
	nop
_02249C20: .word 0x02256808
	thumb_func_end ov23_02249BD4

	thumb_func_start ov23_02249C24
ov23_02249C24: ; 0x02249C24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0205964C
	str r5, [r0, #0x34]
	strh r4, [r0, #0x3c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_02249C24

	thumb_func_start ov23_02249C34
ov23_02249C34: ; 0x02249C34
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249C48
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_02249C48:
	bl sub_02035E38
	cmp r0, #0
	beq _02249C8E
	ldr r0, [r4, #0x18]
	bl ov23_02242D44
	bl sub_02032AC0
	mov r0, #0
	bl sub_02057AE4
	bl ov23_02243AF0
	bl ov23_0224C21C
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADDC
	cmp r0, #0
	bne _02249C82
	ldr r0, _02249C90 ; =ov23_02249C98
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
_02249C82:
	bl sub_02059524
	ldr r0, _02249C94 ; =ov23_02249CC4
	mov r1, #0x18
	bl ov23_02249C24
_02249C8E:
	pop {r4, pc}
	; .align 2, 0
_02249C90: .word ov23_02249C98
_02249C94: .word ov23_02249CC4
	thumb_func_end ov23_02249C34

	thumb_func_start ov23_02249C98
ov23_02249C98: ; 0x02249C98
	push {r3, lr}
	bl sub_0205964C
	ldr r0, [r0, #0x18]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206ADDC
	cmp r0, #0
	beq _02249CBE
	bl sub_020367F0
	bl sub_02059524
	ldr r0, _02249CC0 ; =ov23_02249CE4
	mov r1, #0x18
	bl ov23_02249C24
_02249CBE:
	pop {r3, pc}
	; .align 2, 0
_02249CC0: .word ov23_02249CE4
	thumb_func_end ov23_02249C98

	thumb_func_start ov23_02249CC4
ov23_02249CC4: ; 0x02249CC4
	push {r3, lr}
	bl sub_0205964C
	ldrh r1, [r0, #0x3c]
	cmp r1, #0
	beq _02249CD6
	sub r1, r1, #1
	strh r1, [r0, #0x3c]
	pop {r3, pc}
_02249CD6:
	ldr r0, _02249CE0 ; =ov23_02249CE4
	mov r1, #0x18
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249CE0: .word ov23_02249CE4
	thumb_func_end ov23_02249CC4

	thumb_func_start ov23_02249CE4
ov23_02249CE4: ; 0x02249CE4
	push {r3, lr}
	bl ov23_02242B14
	bl sub_02059524
	bl sub_02036834
	cmp r0, #0
	beq _02249D14
	bl sub_0203608C
	cmp r0, #0
	bne _02249D0C
	bl ov23_0224B598
	ldr r0, _02249D18 ; =ov23_02249DBC
	mov r1, #0x3c
	bl ov23_02249C24
	pop {r3, pc}
_02249D0C:
	ldr r0, _02249D1C ; =ov23_02249D20
	mov r1, #0x78
	bl ov23_02249C24
_02249D14:
	pop {r3, pc}
	nop
_02249D18: .word ov23_02249DBC
_02249D1C: .word ov23_02249D20
	thumb_func_end ov23_02249CE4

	thumb_func_start ov23_02249D20
ov23_02249D20: ; 0x02249D20
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249D32
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
_02249D32:
	bl sub_02033E68
	cmp r0, #0
	bne _02249D48
	bl sub_020360F0
	cmp r0, #0
	bne _02249D48
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _02249D56
_02249D48:
	bl sub_020367F0
	ldr r0, _02249DB4 ; =ov23_02249FFC
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
_02249D56:
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _02249DB2
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249D78
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	bl sub_02035B54
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	bne _02249DB2
_02249D78:
	bl ov23_0224321C
	mov r0, #0
	bl sub_020579BC
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl ov23_0224546C
	mov r0, #0
	mov r1, #1
	bl ov23_02244858
	mov r0, #0
	bl sub_02032D98
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02057DB8
	bl sub_02059570
	ldr r0, _02249DB8 ; =ov23_02249EBC
	mov r1, #0xa
	bl ov23_02249C24
_02249DB2:
	pop {r4, pc}
	; .align 2, 0
_02249DB4: .word ov23_02249FFC
_02249DB8: .word ov23_02249EBC
	thumb_func_end ov23_02249D20

	thumb_func_start ov23_02249DBC
ov23_02249DBC: ; 0x02249DBC
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_02242B14
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249DD2
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
_02249DD2:
	bl sub_020360E8
	cmp r0, #0
	bne _02249DE0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	bne _02249E0C
_02249DE0:
	bl ov23_0224321C
	cmp r0, #0
	beq _02249DEC
	bl sub_02059514
_02249DEC:
	ldr r0, _02249E10 ; =0x022575B8
	bl ov23_022499E4
	mov r0, #0
	bl sub_02057AE4
	bl ov23_0224AAB0
	bl ov23_0224C21C
	bl ov23_02243360
	ldr r0, _02249E14 ; =ov23_02249E18
	mov r1, #0
	bl ov23_02249C24
_02249E0C:
	pop {r4, pc}
	nop
_02249E10: .word 0x022575B8
_02249E14: .word ov23_02249E18
	thumb_func_end ov23_02249DBC

	thumb_func_start ov23_02249E18
ov23_02249E18: ; 0x02249E18
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_02242B14
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02249E7E
	bl sub_020360F0
	cmp r0, #0
	bne _02249E50
	bl sub_02033E48
	cmp r0, #0
	beq _02249E50
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	bne _02249E7E
	bl sub_02036180
	cmp r0, #0
	bne _02249E7E
_02249E50:
	mov r0, #0
	bl ov23_0224B5CC
	bl ov23_0224AA84
	bl ov23_0224DA8C
	mov r0, #0x2b
	bl sub_020360DC
	bl sub_0203608C
	mov r1, #1
	bl ov23_02244858
	bl ov23_0224321C
	bl sub_02036824
	ldr r0, _02249E80 ; =ov23_02249FB4
	mov r1, #0
	bl ov23_02249C24
_02249E7E:
	pop {r4, pc}
	; .align 2, 0
_02249E80: .word ov23_02249FB4
	thumb_func_end ov23_02249E18

	thumb_func_start ov23_02249E84
ov23_02249E84: ; 0x02249E84
	push {r3, lr}
	bl sub_0205764C
	ldr r0, _02249E94 ; =ov23_02249E98
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249E94: .word ov23_02249E98
	thumb_func_end ov23_02249E84

	thumb_func_start ov23_02249E98
ov23_02249E98: ; 0x02249E98
	ldr r3, _02249E9C ; =ov23_02242B14
	bx r3
	; .align 2, 0
_02249E9C: .word ov23_02242B14
	thumb_func_end ov23_02249E98

	thumb_func_start ov23_02249EA0
ov23_02249EA0: ; 0x02249EA0
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	ldr r0, _02249EB8 ; =ov23_02249E18
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_02249EB8: .word ov23_02249E18
	thumb_func_end ov23_02249EA0

	thumb_func_start ov23_02249EBC
ov23_02249EBC: ; 0x02249EBC
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #9
	bne _02249ED2
	bl sub_02032AC0
	bl ov23_02243360
_02249ED2:
	ldrh r0, [r4, #0x3c]
	cmp r0, #1
	bne _02249EDE
	mov r0, #0
	bl sub_02057B14
_02249EDE:
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249EEA
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_02249EEA:
	bl sub_02032BDC
	cmp r0, #0
	beq _02249F06
	ldr r0, _02249F0C ; =0x022575C4
	bl ov23_022499E4
	bl ov23_0224AAB0
	ldr r0, _02249F10 ; =ov23_02249F14
	mov r1, #0xc8
	bl ov23_02249C24
	pop {r4, pc}
_02249F06:
	bl ov23_0224A09C
	pop {r4, pc}
	; .align 2, 0
_02249F0C: .word 0x022575C4
_02249F10: .word ov23_02249F14
	thumb_func_end ov23_02249EBC

	thumb_func_start ov23_02249F14
ov23_02249F14: ; 0x02249F14
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_0224AC3C
	cmp r0, #0
	beq _02249F32
	bl ov23_02243AF0
	ldr r0, _02249F48 ; =ov23_02249F4C
	mov r1, #0
	bl ov23_02249C24
	pop {r4, pc}
_02249F32:
	bl ov23_0224A09C
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _02249F42
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_02249F42:
	bl ov23_0224A064
	pop {r4, pc}
	; .align 2, 0
_02249F48: .word ov23_02249F4C
	thumb_func_end ov23_02249F14

	thumb_func_start ov23_02249F4C
ov23_02249F4C: ; 0x02249F4C
	push {r3, lr}
	bl ov23_0224404C
	cmp r0, #0
	beq _02249F6E
	ldr r0, _02249F74 ; =0x022575D8
	bl ov23_022499E4
	bl ov23_02244068
	bl ov23_0224C21C
	ldr r0, _02249F78 ; =ov23_02249F7C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
_02249F6E:
	bl ov23_0224A09C
	pop {r3, pc}
	; .align 2, 0
_02249F74: .word 0x022575D8
_02249F78: .word ov23_02249F7C
	thumb_func_end ov23_02249F4C

	thumb_func_start ov23_02249F7C
ov23_02249F7C: ; 0x02249F7C
	push {r3, lr}
	bl ov23_0224C420
	cmp r0, #0
	beq _02249FA6
	ldr r0, _02249FAC ; =0x022575F4
	bl ov23_022499E4
	bl ov23_0224C434
	mov r0, #1
	bl sub_02057AE4
	mov r0, #0x1f
	bl sub_020360DC
	ldr r0, _02249FB0 ; =ov23_0224A09C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
_02249FA6:
	bl ov23_0224A09C
	pop {r3, pc}
	; .align 2, 0
_02249FAC: .word 0x022575F4
_02249FB0: .word ov23_0224A09C
	thumb_func_end ov23_02249F7C

	thumb_func_start ov23_02249FB4
ov23_02249FB4: ; 0x02249FB4
	push {r3, lr}
	bl sub_02036180
	cmp r0, #0
	beq _02249FCE
	mov r0, #0
	add r1, r0, #0
	bl sub_02059058
	ldr r0, _02249FD0 ; =ov23_02249FD4
	mov r1, #0x1e
	bl ov23_02249C24
_02249FCE:
	pop {r3, pc}
	; .align 2, 0
_02249FD0: .word ov23_02249FD4
	thumb_func_end ov23_02249FB4

	thumb_func_start ov23_02249FD4
ov23_02249FD4: ; 0x02249FD4
	push {r3, lr}
	bl sub_0205964C
	ldrh r1, [r0, #0x3c]
	cmp r1, #0
	beq _02249FE6
	sub r1, r1, #1
	strh r1, [r0, #0x3c]
	pop {r3, pc}
_02249FE6:
	bl sub_0203608C
	cmp r0, #0
	bne _02249FF6
	ldr r0, _02249FF8 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
_02249FF6:
	pop {r3, pc}
	; .align 2, 0
_02249FF8: .word ov23_02249C34
	thumb_func_end ov23_02249FD4

	thumb_func_start ov23_02249FFC
ov23_02249FFC: ; 0x02249FFC
	push {r3, lr}
	bl sub_0205964C
	ldrh r1, [r0, #0x3c]
	cmp r1, #0
	beq _0224A00E
	sub r1, r1, #1
	strh r1, [r0, #0x3c]
	pop {r3, pc}
_0224A00E:
	bl sub_0203608C
	cmp r0, #0
	bne _0224A01E
	ldr r0, _0224A020 ; =ov23_02249C34
	mov r1, #0
	bl ov23_02249C24
_0224A01E:
	pop {r3, pc}
	; .align 2, 0
_0224A020: .word ov23_02249C34
	thumb_func_end ov23_02249FFC

	thumb_func_start ov23_0224A024
ov23_0224A024: ; 0x0224A024
	ldr r3, _0224A028 ; =ov23_02242B14
	bx r3
	; .align 2, 0
_0224A028: .word ov23_02242B14
	thumb_func_end ov23_0224A024

	thumb_func_start ov23_0224A02C
ov23_0224A02C: ; 0x0224A02C
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _0224A05C
	ldr r0, [r4, #0x18]
	bl ov23_02242D44
	bl sub_02032AC0
	mov r0, #0
	bl sub_02057AE4
	bl ov23_02243AF0
	bl ov23_0224C21C
	ldr r0, _0224A060 ; =ov23_0224A024
	mov r1, #0
	bl ov23_02249C24
_0224A05C:
	pop {r4, pc}
	nop
_0224A060: .word ov23_0224A024
	thumb_func_end ov23_0224A02C

	thumb_func_start ov23_0224A064
ov23_0224A064: ; 0x0224A064
	push {r3, lr}
	bl sub_0203608C
	mov r1, #1
	bl ov23_02244858
	bl sub_0203608C
	mov r1, #1
	bl ov23_0224D9AC
	bl ov23_0224160C
	bl sub_020578B0
	bl ov23_0224321C
	bl sub_020367F0
	bl ov23_0224AC4C
	ldr r0, _0224A098 ; =ov23_02249FFC
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A098: .word ov23_02249FFC
	thumb_func_end ov23_0224A064

	thumb_func_start ov23_0224A09C
ov23_0224A09C: ; 0x0224A09C
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	bl ov23_02242B14
	bl sub_02059524
	ldr r0, [r4, #0x18]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0224A0C8
	bl sub_02033E68
	cmp r0, #0
	bne _0224A0C4
	bl sub_020360F0
	cmp r0, #0
	beq _0224A0C8
_0224A0C4:
	bl ov23_0224A064
_0224A0C8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A09C

	thumb_func_start ov23_0224A0CC
ov23_0224A0CC: ; 0x0224A0CC
	push {r3, lr}
	bl sub_0205764C
	ldr r0, _0224A0DC ; =ov23_0224A0E0
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A0DC: .word ov23_0224A0E0
	thumb_func_end ov23_0224A0CC

	thumb_func_start ov23_0224A0E0
ov23_0224A0E0: ; 0x0224A0E0
	ldr r3, _0224A0E4 ; =ov23_0224DAB4
	bx r3
	; .align 2, 0
_0224A0E4: .word ov23_0224DAB4
	thumb_func_end ov23_0224A0E0

	thumb_func_start ov23_0224A0E8
ov23_0224A0E8: ; 0x0224A0E8
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	bl sub_02033E68
	cmp r0, #0
	bne _0224A106
	bl sub_020360F0
	cmp r0, #0
	beq _0224A124
_0224A106:
	bl ov23_0224B518
	bl sub_020578B0
	bl ov23_0224321C
	bl sub_020367F0
	bl ov23_0224AC4C
	ldr r0, _0224A130 ; =ov23_02249FFC
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
_0224A124:
	ldr r0, _0224A134 ; =ov23_0224A09C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	nop
_0224A130: .word ov23_02249FFC
_0224A134: .word ov23_0224A09C
	thumb_func_end ov23_0224A0E8

	thumb_func_start ov23_0224A138
ov23_0224A138: ; 0x0224A138
	push {r3, lr}
	bl sub_0205764C
	ldr r0, _0224A148 ; =ov23_0224A14C
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A148: .word ov23_0224A14C
	thumb_func_end ov23_0224A138

	thumb_func_start ov23_0224A14C
ov23_0224A14C: ; 0x0224A14C
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224A14C

	thumb_func_start ov23_0224A150
ov23_0224A150: ; 0x0224A150
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	ldr r0, _0224A168 ; =ov23_02249CE4
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A168: .word ov23_02249CE4
	thumb_func_end ov23_0224A150

	thumb_func_start ov23_0224A16C
ov23_0224A16C: ; 0x0224A16C
	push {r3, lr}
	bl ov23_0224A1D0
	ldr r0, _0224A17C ; =ov23_0224A180
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A17C: .word ov23_0224A180
	thumb_func_end ov23_0224A16C

	thumb_func_start ov23_0224A180
ov23_0224A180: ; 0x0224A180
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224A180

	thumb_func_start ov23_0224A184
ov23_0224A184: ; 0x0224A184
	push {r3, lr}
	bl sub_0205964C
	bl ov23_0224C198
	bl sub_020576A0
	ldr r0, _0224A19C ; =ov23_0224A024
	mov r1, #0
	bl ov23_02249C24
	pop {r3, pc}
	; .align 2, 0
_0224A19C: .word ov23_0224A024
	thumb_func_end ov23_0224A184

	thumb_func_start ov23_0224A1A0
ov23_0224A1A0: ; 0x0224A1A0
	push {r4, lr}
	bl sub_0205964C
	add r4, r0, #0
	ldrh r0, [r4, #0x3c]
	cmp r0, #0
	beq _0224A1B4
	sub r0, r0, #1
	strh r0, [r4, #0x3c]
	pop {r4, pc}
_0224A1B4:
	bl ov23_02242D08
	bl sub_020367D0
	mov r0, #0x21
	bl sub_0201807C
	mov r0, #0
	add r4, #0x41
	strb r0, [r4]
	bl sub_020596BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224A1A0

	.rodata


	.global Unk_ov23_022567F8
Unk_ov23_022567F8: ; 0x022567F8
	.incbin "incbin/overlay23_rodata.bin", 0x4EC, 0x4FC - 0x4EC

	.global Unk_ov23_02256808
Unk_ov23_02256808: ; 0x02256808
	.incbin "incbin/overlay23_rodata.bin", 0x4FC, 0x34


	.data


	.global Unk_ov23_022575B8
Unk_ov23_022575B8: ; 0x022575B8
	.incbin "incbin/overlay23_data.bin", 0x9D8, 0x9E4 - 0x9D8

	.global Unk_ov23_022575C4
Unk_ov23_022575C4: ; 0x022575C4
	.incbin "incbin/overlay23_data.bin", 0x9E4, 0x9F8 - 0x9E4

	.global Unk_ov23_022575D8
Unk_ov23_022575D8: ; 0x022575D8
	.incbin "incbin/overlay23_data.bin", 0x9F8, 0xA14 - 0x9F8

	.global Unk_ov23_022575F4
Unk_ov23_022575F4: ; 0x022575F4
	.incbin "incbin/overlay23_data.bin", 0xA14, 0x15

