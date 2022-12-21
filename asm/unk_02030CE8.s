	.include "macros/function.inc"
	.include "include/unk_02030CE8.inc"

	

	.text


	thumb_func_start sub_02030CE8
sub_02030CE8: ; 0x02030CE8
	mov r0, #0x40
	bx lr
	thumb_func_end sub_02030CE8

	thumb_func_start sub_02030CEC
sub_02030CEC: ; 0x02030CEC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x40
	bl sub_020C4CF4
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x33
	bl sub_020D5124
	mov r0, #1
	str r0, [r4, #0x34]
	mov r0, #0x23
	bl sub_02025C84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030CEC

	thumb_func_start sub_02030D10
sub_02030D10: ; 0x02030D10
	push {r3, lr}
	mov r1, #0x23
	bl sub_020245BC
	bl sub_02030CEC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030D10

	thumb_func_start sub_02030D20
sub_02030D20: ; 0x02030D20
	push {r3, lr}
	mov r1, #0x23
	bl sub_020245BC
	mov r1, #0
	ldrsb r0, [r0, r1]
	cmp r0, #0
	beq _02030D32
	mov r1, #1
_02030D32:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02030D20

	thumb_func_start sub_02030D38
sub_02030D38: ; 0x02030D38
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x23
	bl sub_020245BC
	add r1, r4, #0
	bl sub_020D8B7C
	mov r0, #0x23
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_02030D38

	thumb_func_start sub_02030D50
sub_02030D50: ; 0x02030D50
	ldr r3, _02030D58 ; =sub_020245BC
	mov r1, #0x23
	bx r3
	nop
_02030D58: .word sub_020245BC
	thumb_func_end sub_02030D50

	thumb_func_start sub_02030D5C
sub_02030D5C: ; 0x02030D5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x23
	add r4, r2, #0
	bl sub_020245BC
	cmp r5, #3
	bhi _02030D8E
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030D78: ; jump table
	.short _02030D80 - _02030D78 - 2 ; case 0
	.short _02030D84 - _02030D78 - 2 ; case 1
	.short _02030D88 - _02030D78 - 2 ; case 2
	.short _02030D8C - _02030D78 - 2 ; case 3
_02030D80:
	str r4, [r0, #0x34]
	b _02030D8E
_02030D84:
	strh r4, [r0, #0x38]
	b _02030D8E
_02030D88:
	strh r4, [r0, #0x3a]
	b _02030D8E
_02030D8C:
	str r4, [r0, #0x3c]
_02030D8E:
	mov r0, #0x23
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02030D5C

	thumb_func_start sub_02030D98
sub_02030D98: ; 0x02030D98
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x23
	bl sub_020245BC
	cmp r4, #3
	bhi _02030DCA
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02030DB2: ; jump table
	.short _02030DBA - _02030DB2 - 2 ; case 0
	.short _02030DBE - _02030DB2 - 2 ; case 1
	.short _02030DC2 - _02030DB2 - 2 ; case 2
	.short _02030DC6 - _02030DB2 - 2 ; case 3
_02030DBA:
	ldr r0, [r0, #0x34]
	pop {r4, pc}
_02030DBE:
	ldrh r0, [r0, #0x38]
	pop {r4, pc}
_02030DC2:
	ldrh r0, [r0, #0x3a]
	pop {r4, pc}
_02030DC6:
	ldr r0, [r0, #0x3c]
	pop {r4, pc}
_02030DCA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030D98

	thumb_func_start sub_02030DD0
sub_02030DD0: ; 0x02030DD0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0202C878
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02025E38
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02030D50
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x64
	bl sub_020C4CF4
	mov r0, #0xc
	strb r0, [r4]
	mov r0, #2
	strb r0, [r4, #1]
	add r0, r6, #0
	bl sub_0202C8C0
	strb r0, [r4, #2]
	add r0, r6, #0
	bl sub_0202C8C4
	strb r0, [r4, #3]
	add r0, r7, #0
	bl sub_02025F20
	str r0, [r4, #4]
	add r0, r7, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	add r0, #8
	bl sub_020021B0
	mov r0, #0
	str r0, [r4, #0x18]
	add r0, r4, #0
	ldr r1, [sp]
	add r0, #0x24
	bl sub_020D8B7C
	add r0, r5, #0
	mov r1, #0
	bl sub_02030D98
	str r0, [r4, #0x5c]
	mov r0, #0x23
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02030DD0

	thumb_func_start sub_02030E48
sub_02030E48: ; 0x02030E48
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_02030DD0
	bl sub_0201D2E8
	mov r1, #0xfa
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r0, r5, #0
	add r4, r1, #0
	add r0, #0x60
	strh r4, [r0]
	ldr r0, _02030E74 ; =0x0000FFFF
	add r5, #0x62
	strh r0, [r5]
	mov r0, #0x23
	bl sub_02025C84
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02030E74: .word 0x0000FFFF
	thumb_func_end sub_02030E48

	thumb_func_start sub_02030E78
sub_02030E78: ; 0x02030E78
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	mov r1, #0x23
	bl sub_020245BC
	add r4, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02030DD0
	add r0, r5, #0
	ldrh r1, [r4, #0x38]
	add r0, #0x60
	add r5, #0x62
	strh r1, [r0]
	ldrh r0, [r4, #0x3a]
	strh r0, [r5]
	mov r0, #0x23
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02030E78