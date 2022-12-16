	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_02247830
ov6_02247830: ; 0x02247830
	push {r4, r5, r6, r7}
	add r3, r0, #0
	add r0, r2, #0
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r2, #0
	beq _0224788C
	add r6, r3, r1
	sub r7, r1, #1
_02247844:
	sub r1, r6, #1
	ldrb r2, [r1]
	mov r1, #1
	add r5, r7, #0
	and r1, r2
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	cmp r7, #0
	ble _02247872
_02247856:
	ldrb r1, [r3, r5]
	add r2, r3, r5
	sub r2, r2, #1
	asr r1, r1, #1
	strb r1, [r3, r5]
	ldrb r2, [r2]
	ldrb r1, [r3, r5]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x18
	orr r1, r2
	strb r1, [r3, r5]
	sub r5, r5, #1
	cmp r5, #0
	bgt _02247856
_02247872:
	ldrb r1, [r3, r5]
	asr r1, r1, #1
	strb r1, [r3, r5]
	ldrb r2, [r3, r5]
	lsl r1, r4, #7
	orr r1, r2
	strb r1, [r3, r5]
	add r1, r0, #0
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r1, #0
	bne _02247844
_0224788C:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov6_02247830

	thumb_func_start ov6_02247890
ov6_02247890: ; 0x02247890
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r2, #0
	str r1, [sp]
	add r7, r3, #0
	bl sub_02015004
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02015030
	add r1, sp, #4
	strh r0, [r1, #4]
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02015030
	add r1, sp, #4
	strh r0, [r1, #6]
	add r1, sp, #0x18
	ldrh r1, [r1, #0x10]
	add r0, r5, #0
	bl sub_02015030
	add r1, sp, #4
	strh r0, [r1, #8]
	add r1, sp, #0x18
	ldrh r1, [r1, #0x14]
	add r0, r5, #0
	bl sub_02015030
	add r1, sp, #4
	mov r2, #0
	strh r0, [r1, #0xa]
	add r3, sp, #8
	add r5, sp, #4
	add r7, r2, #0
_022478DE:
	ldrsh r0, [r3, r7]
	cmp r0, #0
	bge _022478EC
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_022478EC:
	cmp r2, #0
	ble _02247920
	mov r6, #1
	mvn r6, r6
	ldrsh r6, [r3, r6]
	cmp r0, r6
	blt _0224790C
	sub r0, r0, r6
	cmp r0, #0xff
	ble _02247908
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02247908:
	strb r0, [r5]
	b _02247932
_0224790C:
	sub r0, r6, r0
	sub r0, r4, r0
	cmp r0, #0xff
	ble _0224791C
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0224791C:
	strb r0, [r5]
	b _02247932
_02247920:
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0xff
	ble _02247930
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02247930:
	strb r0, [r1]
_02247932:
	add r2, r2, #1
	add r3, r3, #2
	add r5, r5, #1
	cmp r2, #4
	blt _022478DE
	add r0, sp, #4
	mov r1, #4
	mov r2, #5
	bl ov6_02247830
	mov r2, #0
	add r1, sp, #4
	add r4, sp, #4
	mov r3, #0xf0
_0224794E:
	ldrb r5, [r4, #3]
	ldrb r0, [r1]
	add r2, r2, #1
	asr r6, r5, #4
	and r5, r3
	orr r5, r6
	eor r0, r5
	strb r0, [r1]
	add r1, r1, #1
	cmp r2, #3
	blt _0224794E
	add r2, sp, #4
	ldrb r3, [r2, #3]
	mov r2, #0xf
	add r0, sp, #4
	and r2, r3
	lsl r2, r2, #0x18
	mov r1, #3
	lsr r2, r2, #0x18
	bl ov6_02247830
	add r1, sp, #4
	ldrb r5, [r1]
	mov r0, #0xf
	add r4, r5, #0
	and r4, r0
	cmp r4, #8
	blt _0224798C
	add sp, #0x10
	sub r0, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224798C:
	ldrb r0, [r1, #1]
	eor r0, r5
	strb r0, [r1, #1]
	ldrb r0, [r1, #2]
	eor r0, r5
	strb r0, [r1, #2]
	ldrb r2, [r1, #1]
	ldrb r3, [r1, #2]
	lsl r0, r2, #8
	add r6, r0, #0
	ldr r0, [sp]
	orr r6, r3
	cmp r0, r6
	bne _022479C6
	mov r0, #0xf0
	and r0, r5
	asr r0, r0, #4
	cmp r0, #6
	bne _022479C6
	ldrb r0, [r1, #3]
	add r1, r5, r2
	mul r1, r3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r0, r1
	bne _022479C6
	add sp, #0x10
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_022479C6:
	mov r0, #0
	mvn r0, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov6_02247890

	thumb_func_start ov6_022479D0
ov6_022479D0: ; 0x022479D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	ldr r0, [sp, #0x24]
	add r7, r1, #0
	str r2, [sp, #8]
	add r5, r3, #0
	bl sub_02014FB0
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025F24
	add r1, r0, #0
	str r5, [sp]
	add r0, sp, #0x10
	ldrh r0, [r0, #0x10]
	add r2, r7, #0
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov6_02247890
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02014FF0
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov6_022479D0