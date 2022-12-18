	.include "macros/function.inc"
	.include "include/ov97_02232DC8.inc"

	

	.text


	thumb_func_start ov97_02232DC8
ov97_02232DC8: ; 0x02232DC8
	push {r3, lr}
	ldr r0, _02232DE4 ; =ov97_022323B0
	bl sub_020CE478
	cmp r0, #0
	beq _02232DDE
	mov r0, #4
	bl ov97_02233424
	mov r0, #0
	pop {r3, pc}
_02232DDE:
	mov r0, #1
	pop {r3, pc}
	nop
_02232DE4: .word ov97_022323B0
	thumb_func_end ov97_02232DC8

	thumb_func_start ov97_02232DE8
ov97_02232DE8: ; 0x02232DE8
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0
	beq _02232DFA
	cmp r0, #1
	beq _02232DFA
	cmp r0, #2
	bne _02232DFE
_02232DFA:
	bl ov97_02233854
_02232DFE:
	pop {r3, pc}
	thumb_func_end ov97_02232DE8

	thumb_func_start ov97_02232E00
ov97_02232E00: ; 0x02232E00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov97_02233408
	ldrh r0, [r0, #0x34]
	cmp r4, r0
	bhi _02232E24
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020C2C54
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_02233814
_02232E24:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02232E00

	thumb_func_start ov97_02232E28
ov97_02232E28: ; 0x02232E28
	mov r0, #0x17
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02232E28

	thumb_func_start ov97_02232E30
ov97_02232E30: ; 0x02232E30
	mov r0, #0x17
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02232E30

	thumb_func_start ov97_02232E38
ov97_02232E38: ; 0x02232E38
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	bl ov97_02233408
	bl ov97_02233410
	add r4, r0, #0
	mov r0, #0x1f
	add r1, r7, #0
	and r1, r0
	beq _02232E56
	mov r0, #0x20
	sub r0, r0, r1
	add r7, r7, r0
_02232E56:
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	mov r0, #4
	strb r0, [r4, #3]
	ldr r0, _02232F5C ; =0x00400131
	str r0, [r4, #4]
	mov r0, #0xf
	strh r1, [r4, #0xc]
	lsl r0, r0, #8
	str r7, [r4, #0x34]
	add r7, r7, r0
	str r7, [r4, #0x38]
	bl ov97_02232E28
	str r0, [r4, #0x2c]
	add r7, r7, r0
	str r7, [r4, #0x3c]
	bl ov97_02232E30
	add r7, r7, r0
	str r0, [r4, #0x30]
	add r0, r7, #0
	str r7, [r4, #0x28]
	add r0, #0xc0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x34]
	mov r1, #2
	add r7, #0xe0
	bl sub_020CDB18
	bl ov97_02232DC8
	str r0, [r4, #0x10]
	mov r2, #0
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	ldr r0, [r4, #0x40]
	mov r6, #0xff
	bic r0, r6
	add r3, r0, #0
	mov r1, #0xf
	orr r3, r1
	ldr r0, _02232F60 ; =0xFFFFF0FF
	add r1, #0xf1
	and r0, r3
	orr r1, r0
	ldr r0, _02232F64 ; =0xFFFF0FFF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #0x40]
	ldr r3, [r5, #0]
	ldr r1, [r4, #0x44]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x18
	add r0, r4, #0
	bic r1, r6
	lsr r3, r3, #0x18
	orr r3, r1
	ldr r1, _02232F60 ; =0xFFFFF0FF
	str r3, [r4, #0x44]
	and r1, r3
	ldr r3, [r5, #0]
	add r0, #0x44
	lsl r3, r3, #0x14
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x14
	orr r3, r1
	ldr r1, _02232F64 ; =0xFFFF0FFF
	str r3, [r4, #0x44]
	and r1, r3
	ldr r3, [r5, #0]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x10
	orr r1, r3
	str r1, [r4, #0x44]
	ldr r1, [r0, #0]
	ldr r3, [r5, #0]
	lsl r1, r1, #0x10
	lsr r3, r3, #0x10
	lsr r1, r1, #0x10
	lsl r3, r3, #0x10
	orr r1, r3
	str r1, [r0, #0]
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	add r3, r4, #0
	b _02232F30
_02232F18:
	ldrh r6, [r0]
	add r5, r3, #0
	add r5, #0x48
	strh r6, [r5]
	add r5, r3, #0
	ldrh r6, [r1]
	add r5, #0x60
	add r3, r3, #2
	strh r6, [r5]
	add r2, r2, #1
	add r0, r0, #2
	add r1, r1, #2
_02232F30:
	cmp r0, #0
	beq _02232F38
	cmp r2, #0xc
	blo _02232F18
_02232F38:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	str r1, [r4, #0x78]
	str r0, [r4, #0x7c]
	bl ov97_02233548
	bl ov97_02233538
	str r7, [r0, #8]
	ldr r0, [r4, #0x2c]
	add r7, r7, r0
	bl ov97_02233538
	str r7, [r0, #0xc]
	bl sub_020CEB20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232F5C: .word 0x00400131
_02232F60: .word 0xFFFFF0FF
_02232F64: .word 0xFFFF0FFF
	thumb_func_end ov97_02232E38

	thumb_func_start ov97_02232F68
ov97_02232F68: ; 0x02232F68
	push {r3, r4, r5, lr}
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02232F86
	ldrb r0, [r4, #0x1a]
	sub r0, r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _02232FBC
	mov r0, #0
	strb r0, [r4, #0x19]
_02232F86:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _02232FBC
	bl ov97_02233614
	mov r1, #0x40
	sub r5, r1, r0
	ldrb r0, [r4, #0x1c]
	add r2, r5, #0
	mov r3, #3
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl ov97_02233674
	bl ov97_02233614
	add r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, _02232FC0 ; =0x0000FFFF
	add r1, r5, r1
	bl ov97_02232E00
	mov r0, #1
	strb r0, [r4, #0x19]
	mov r0, #0x3c
	strb r0, [r4, #0x1a]
_02232FBC:
	pop {r3, r4, r5, pc}
	nop
_02232FC0: .word 0x0000FFFF
	thumb_func_end ov97_02232F68

	thumb_func_start ov97_02232FC4
ov97_02232FC4: ; 0x02232FC4
	push {r3, r4, r5, r6, r7, lr}
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0223307A
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _0223303C
	bl ov97_02233510
	add r5, r0, #0
	mov r1, #0
	add r2, r5, #0
_02232FE2:
	ldrb r0, [r2, #9]
	cmp r0, #0
	beq _02233022
	add r6, r1, #0
	mov r0, #0xc
	mul r6, r0
	add r0, r5, r6
	ldrh r0, [r0, #6]
	mov r1, #1
	mov r2, #0
	lsl r1, r0
	lsl r0, r1, #0x10
	lsr r7, r0, #0x10
	mov r0, #0xfd
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	add r3, r2, #0
	bl ov97_02233674
	bl ov97_02233614
	add r1, r0, #0
	ldr r0, [r4, #8]
	add r2, r7, #0
	bl ov97_02232E00
	add r5, #9
	ldrb r0, [r5, r6]
	sub r0, r0, #1
	strb r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_02233022:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #8
	blt _02232FE2
	ldrb r0, [r4, #0x1a]
	sub r0, r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _0223307A
	mov r0, #2
	strb r0, [r4, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_0223303C:
	bl ov97_02233614
	bl ov97_02232E28
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r3, r0, #0x18
	bne _0223305E
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _0223305A
	mov r0, #2
	strb r0, [r4, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_0223305A:
	sub r0, r0, #1
	strb r0, [r4, #0x1b]
_0223305E:
	ldrb r0, [r4, #0x1c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl ov97_02233674
	bl ov97_02233614
	add r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, _0223307C ; =0x0000FFFF
	bl ov97_02232E00
_0223307A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223307C: .word 0x0000FFFF
	thumb_func_end ov97_02232FC4

	thumb_func_start ov97_02233080
ov97_02233080: ; 0x02233080
	push {r3, lr}
	bl ov97_02233538
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _02233092
	cmp r0, #2
	beq _02233098
	pop {r3, pc}
_02233092:
	bl ov97_02232F68
	pop {r3, pc}
_02233098:
	bl ov97_02232FC4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233080

	thumb_func_start ov97_022330A0
ov97_022330A0: ; 0x022330A0
	push {r4, lr}
	bl ov97_02233508
	add r4, r0, #0
	bl ov97_02233418
	cmp r0, #6
	beq _022330B6
	cmp r0, #0xb
	beq _022330C6
	pop {r4, pc}
_022330B6:
	mov r0, #7
	lsl r0, r0, #6
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _022330CA
	sub r1, r1, #1
	strh r1, [r4, r0]
	pop {r4, pc}
_022330C6:
	bl ov97_02233080
_022330CA:
	pop {r4, pc}
	thumb_func_end ov97_022330A0

	thumb_func_start ov97_022330CC
ov97_022330CC: ; 0x022330CC
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0xa
	bne _022330DA
	bl ov97_02233080
_022330DA:
	pop {r3, pc}
	thumb_func_end ov97_022330CC

	thumb_func_start ov97_022330DC
ov97_022330DC: ; 0x022330DC
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0xc
	beq _0223311E
	bl ov97_02233430
	cmp r0, #0xc
	bne _022330FC
	bl ov97_02233418
	cmp r0, #7
	bne _0223311E
	bl ov97_02233AD8
	pop {r3, pc}
_022330FC:
	bl ov97_02233448
	cmp r0, #1
	beq _0223310A
	cmp r0, #2
	beq _02233110
	b _02233116
_0223310A:
	bl ov97_022330A0
	pop {r3, pc}
_02233110:
	bl ov97_022330CC
	pop {r3, pc}
_02233116:
	bl ov97_02233410
	bl ov97_02233418
_0223311E:
	pop {r3, pc}
	thumb_func_end ov97_022330DC

	thumb_func_start ov97_02233120
ov97_02233120: ; 0x02233120
	push {r3, lr}
	bl ov97_02233518
	mov r0, #1
	bl ov97_02233454
	bl ov97_02232DE8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233120

	thumb_func_start ov97_02233134
ov97_02233134: ; 0x02233134
	push {r4, lr}
	bl ov97_02233448
	mov r4, #0
	cmp r0, #1
	bne _02233162
	bl ov97_02233508
	ldr r1, _02233168 ; =0x000001C3
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _02233162
	add r2, r4, #0
_02233152:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0223315A
	add r4, r4, #1
_0223315A:
	add r2, r2, #1
	add r0, #0x38
	cmp r2, #8
	blo _02233152
_02233162:
	add r0, r4, #0
	pop {r4, pc}
	nop
_02233168: .word 0x000001C3
	thumb_func_end ov97_02233134

	thumb_func_start ov97_0223316C
ov97_0223316C: ; 0x0223316C
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _0223319E
	bl ov97_02233418
	cmp r0, #7
	bne _0223319E
	bl ov97_02233508
	ldr r1, _022331A4 ; =0x000001C3
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0223319E
	mov r1, #0x38
	mul r1, r4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0223319E
	mov r0, #1
	pop {r4, pc}
_0223319E:
	mov r0, #0
	pop {r4, pc}
	nop
_022331A4: .word 0x000001C3
	thumb_func_end ov97_0223316C

	thumb_func_start ov97_022331A8
ov97_022331A8: ; 0x022331A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _022331F2
	bl ov97_02233418
	cmp r0, #7
	bne _022331F2
	bl ov97_02233508
	ldr r2, _022331F4 ; =0x000001C3
	ldrb r3, [r0, r2]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _022331F2
	mov r1, #0x38
	add r5, r4, #0
	mul r5, r1
	ldr r5, [r0, r5]
	cmp r5, #0
	beq _022331F2
	mov r5, #0xf
	lsl r4, r4, #0x18
	bic r3, r5
	lsr r5, r4, #0x18
	mov r4, #0xf
	and r4, r5
	orr r3, r4
	strb r3, [r0, r2]
	mov r2, #0x78
	lsl r1, r1, #3
	strh r2, [r0, r1]
	bl ov97_02233938
_022331F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022331F4: .word 0x000001C3
	thumb_func_end ov97_022331A8

	thumb_func_start ov97_022331F8
ov97_022331F8: ; 0x022331F8
	push {r4, lr}
	bl ov97_02233448
	mov r4, #0
	cmp r0, #2
	bne _0223322A
	bl ov97_02233510
	add r1, r0, #0
	add r1, #0x60
	ldrb r1, [r1]
	cmp r1, #2
	bne _0223322A
	add r2, r4, #0
_02233214:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02233222
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _02233222
	add r4, r4, #1
_02233222:
	add r2, r2, #1
	add r0, #0xc
	cmp r2, #8
	blo _02233214
_0223322A:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022331F8

	thumb_func_start ov97_02233230
ov97_02233230: ; 0x02233230
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02233240
	mov r0, #0
	pop {r3, pc}
_02233240:
	bl sub_020CE814
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233230

	thumb_func_start ov97_02233248
ov97_02233248: ; 0x02233248
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02233258
	cmp r0, #2
	beq _0223325E
	b _02233264
_02233258:
	bl ov97_02233134
	pop {r3, pc}
_0223325E:
	bl ov97_022331F8
	pop {r3, pc}
_02233264:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02233248

	thumb_func_start ov97_02233268
ov97_02233268: ; 0x02233268
	push {r3, r4, r5, lr}
	bl ov97_02233538
	add r5, r0, #0
	bl ov97_02233590
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _0223329A
	mov r0, #1
	strb r0, [r5, #0x18]
	mov r1, #0
	strb r1, [r5, #0x19]
	add r4, #8
	str r4, [r5, #0]
	str r4, [r5, #4]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	mov r0, #0x78
	strb r0, [r5, #0x1a]
	strb r1, [r5, #0x1b]
	mov r0, #0xfd
	strb r0, [r5, #0x1c]
_0223329A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02233268

	thumb_func_start ov97_0223329C
ov97_0223329C: ; 0x0223329C
	push {r4, lr}
	bl ov97_02233538
	add r4, r0, #0
	bl ov97_02233590
	mov r1, #1
	strb r1, [r4, #0x18]
	mov r1, #0
	strb r1, [r4, #0x19]
	add r0, #8
	str r0, [r4, #0]
	str r0, [r4, #4]
	mov r0, #0x30
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #0x78
	strb r0, [r4, #0x1a]
	strb r1, [r4, #0x1b]
	mov r0, #0xfe
	strb r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov97_0223329C

	thumb_func_start ov97_022332C8
ov97_022332C8: ; 0x022332C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov97_02233538
	cmp r4, #0xf0
	bgt _022332F2
	mov r1, #2
	strb r1, [r0, #0x18]
	mov r1, #3
	strb r1, [r0, #0x19]
	str r5, [r0, #0]
	str r5, [r0, #4]
	str r6, [r0, #0x10]
	mov r2, #0
	str r2, [r0, #0x14]
	mov r1, #0x78
	strb r1, [r0, #0x1a]
	strb r2, [r0, #0x1b]
	strb r4, [r0, #0x1c]
_022332F2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_022332C8

	thumb_func_start ov97_022332F4
ov97_022332F4: ; 0x022332F4
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02233302
	cmp r0, #2
	bne _0223331C
_02233302:
	bl ov97_02233418
	cmp r0, #0xa
	beq _0223330E
	cmp r0, #0xb
	bne _0223331C
_0223330E:
	bl ov97_02233538
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	bne _0223331C
	mov r0, #1
	pop {r3, pc}
_0223331C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_022332F4

	thumb_func_start ov97_02233320
ov97_02233320: ; 0x02233320
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _0223332E
	cmp r0, #2
	bne _02233348
_0223332E:
	bl ov97_02233418
	cmp r0, #0xa
	beq _0223333A
	cmp r0, #0xb
	bne _02233348
_0223333A:
	bl ov97_02233538
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	bne _02233348
	mov r0, #1
	pop {r3, pc}
_02233348:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02233320

	thumb_func_start ov97_0223334C
ov97_0223334C: ; 0x0223334C
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _0223335A
	cmp r0, #2
	bne _02233384
_0223335A:
	bl ov97_02233418
	cmp r0, #0xa
	beq _02233366
	cmp r0, #0xb
	bne _02233384
_02233366:
	bl ov97_02233538
	ldrb r1, [r0, #0x19]
	cmp r1, #0
	bne _02233384
	ldr r1, [r0, #0xc]
	ldr r1, [r1, #8]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	bne _02233384
	ldrb r0, [r0, #0x1b]
	cmp r0, #4
	bhs _02233384
	mov r0, #1
	pop {r3, pc}
_02233384:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_0223334C

	thumb_func_start ov97_02233388
ov97_02233388: ; 0x02233388
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #2
	bne _022333B4
	bl ov97_02233510
	mov r2, #0
_02233398:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _022333A8
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _022333A8
	mov r0, #1
	pop {r3, pc}
_022333A8:
	add r2, r2, #1
	add r0, #0xc
	cmp r2, #8
	blt _02233398
	mov r0, #0
	pop {r3, pc}
_022333B4:
	bl ov97_022334CC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233388

	thumb_func_start ov97_022333BC
ov97_022333BC: ; 0x022333BC
	push {r4, lr}
	mov r0, #0xc
	bl ov97_0223343C
	bl ov97_02233418
	cmp r0, #0
	beq _022333D6
	cmp r0, #1
	beq _022333D6
	cmp r0, #9
	beq _022333E2
	pop {r4, pc}
_022333D6:
	bl sub_020CDD28
	mov r0, #1
	bl ov97_022334F0
	pop {r4, pc}
_022333E2:
	bl ov97_022334CC
	cmp r0, #0
	bne _022333F8
	bl ov97_02233410
	add r4, r0, #0
	bl ov97_02233AD8
	mov r0, #1
	str r0, [r4, #0x1c]
_022333F8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022333BC

	thumb_func_start ov97_022333FC
ov97_022333FC: ; 0x022333FC
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x20]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022333FC