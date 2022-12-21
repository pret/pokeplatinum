	.include "macros/function.inc"
	.include "include/unk_02030880.inc"

	

	.text


	thumb_func_start sub_02030880
sub_02030880: ; 0x02030880
	mov r0, #0xba
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_02030880

	thumb_func_start sub_02030888
sub_02030888: ; 0x02030888
	push {r4, lr}
	mov r2, #0xba
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02030888

	thumb_func_start sub_020308A0
sub_020308A0: ; 0x020308A0
	ldr r3, _020308A4 ; =sub_0202448C
	bx r3
	; .align 2, 0
_020308A4: .word sub_0202448C
	thumb_func_end sub_020308A0

	thumb_func_start sub_020308A8
sub_020308A8: ; 0x020308A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_020244A0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020246E0
	orr r0, r4
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020308A8

	thumb_func_start sub_020308BC
sub_020308BC: ; 0x020308BC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020247C8
	cmp r0, #0
	bne _020308D0
	mov r0, #0
	pop {r4, r5, r6, pc}
_020308D0:
	cmp r4, #0
	beq _020308DE
	cmp r4, #1
	beq _020308E6
	cmp r4, #2
	beq _020308F0
	b _020308FC
_020308DE:
	lsl r0, r6, #1
	add r0, r5, r0
	ldrh r0, [r0, #4]
	pop {r4, r5, r6, pc}
_020308E6:
	lsl r0, r6, #1
	add r1, r5, r0
	ldr r0, _02030904 ; =0x000003E2
	ldrh r0, [r1, r0]
	pop {r4, r5, r6, pc}
_020308F0:
	lsl r0, r6, #1
	add r1, r5, r0
	mov r0, #0x1f
	lsl r0, r0, #6
	ldrh r0, [r1, r0]
	pop {r4, r5, r6, pc}
_020308FC:
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02030904: .word 0x000003E2
	thumb_func_end sub_020308BC

	thumb_func_start sub_02030908
sub_02030908: ; 0x02030908
	push {r4, lr}
	ldr r4, _0203094C ; =0x0000270F
	cmp r3, r4
	bls _02030912
	add r3, r4, #0
_02030912:
	cmp r1, #0
	beq _02030920
	cmp r1, #1
	beq _02030928
	cmp r1, #2
	beq _02030932
	b _0203093E
_02030920:
	lsl r1, r2, #1
	add r0, r0, r1
	strh r3, [r0, #4]
	b _02030946
_02030928:
	lsl r1, r2, #1
	add r1, r0, r1
	ldr r0, _02030950 ; =0x000003E2
	strh r3, [r1, r0]
	b _02030946
_02030932:
	lsl r1, r2, #1
	add r1, r0, r1
	mov r0, #0x1f
	lsl r0, r0, #6
	strh r3, [r1, r0]
	b _02030946
_0203093E:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
_02030946:
	add r0, r3, #0
	pop {r4, pc}
	nop
_0203094C: .word 0x0000270F
_02030950: .word 0x000003E2
	thumb_func_end sub_02030908

	thumb_func_start sub_02030954
sub_02030954: ; 0x02030954
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_020247C8
	cmp r0, #0
	bne _0203096A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0203096A:
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_020308BC
	add r1, sp, #8
	ldrh r3, [r1, #0x10]
	cmp r0, r3
	bhs _0203098A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02030908
	pop {r3, r4, r5, r6, r7, pc}
_0203098A:
	ldr r3, _0203099C ; =0x0000270F
	cmp r0, r3
	bls _0203099A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02030908
_0203099A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0203099C: .word 0x0000270F
	thumb_func_end sub_02030954

	thumb_func_start sub_020309A0
sub_020309A0: ; 0x020309A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0
	add r6, r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r4, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	str r0, [sp, #0xc]
	cmp r6, #0x22
	blt _020309BC
	cmp r6, #0x3c
	ble _020309C0
_020309BC:
	bl sub_02022974
_020309C0:
	ldr r1, [sp, #4]
	mov r0, #0
	sub r1, #0x24
	cmp r1, #0x18
	bhi _020309D8
	mov r3, #1
	add r2, r3, #0
	lsl r2, r1
	ldr r1, _02030A7C ; =0x01001001
	tst r1, r2
	beq _020309D8
	add r0, r3, #0
_020309D8:
	cmp r0, #0
	bne _020309E0
	bl sub_02022974
_020309E0:
	mov r0, #1
	str r0, [r4, #0]
	mov r0, #2
	str r0, [r7, #0]
	ldr r0, [sp, #8]
	cmp r0, #0xff
	beq _020309F4
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_020309F4:
	add r0, r5, #0
	bl sub_020247C8
	cmp r0, #0
	bne _02030A04
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02030A04:
	add r0, r5, #0
	bl sub_0203068C
	ldr r2, [sp, #8]
	str r0, [sp, #0x18]
	add r1, r6, #0
	bl sub_02030698
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl sub_02030698
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_020308A0
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #1
	beq _02030A38
	mov r4, #0
	b _02030A46
_02030A38:
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020308BC
	add r4, r0, #0
_02030A46:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02030954
	ldr r0, [sp, #0x14]
	cmp r0, r4
	beq _02030A6A
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020308A8
	str r0, [r7, #0]
	mov r0, #1
	str r0, [sp, #0xc]
_02030A6A:
	cmp r6, #0
	beq _02030A74
	add r0, r6, #0
	bl sub_020181C4
_02030A74:
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02030A7C: .word 0x01001001
	thumb_func_end sub_020309A0