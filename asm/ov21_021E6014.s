	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov21_021E6014
ov21_021E6014: ; 0x021E6014
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021E608C
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E60D8
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021E6100
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E6130
	str r0, [r5, #0x24]
	ldr r0, _021E605C ; =ov21_021E6134
	str r0, [r5, #8]
	ldr r0, _021E6060 ; =ov21_021E6158
	str r0, [r5, #0xc]
	ldr r0, _021E6064 ; =ov21_021E6168
	str r0, [r5, #0x10]
	ldr r0, _021E6068 ; =ov21_021E617C
	str r0, [r5, #0x14]
	ldr r0, _021E606C ; =ov21_021E6200
	str r0, [r5, #0x18]
	ldr r0, _021E6070 ; =ov21_021E6204
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E605C: .word ov21_021E6134
_021E6060: .word ov21_021E6158
_021E6064: .word ov21_021E6168
_021E6068: .word ov21_021E617C
_021E606C: .word ov21_021E6200
_021E6070: .word ov21_021E6204
	thumb_func_end ov21_021E6014

	thumb_func_start ov21_021E6074
ov21_021E6074: ; 0x021E6074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021E6104
	ldr r0, [r4, #4]
	bl ov21_021E6118
	ldr r0, [r4, #0x20]
	bl ov21_021E612C
	pop {r4, pc}
	thumb_func_end ov21_021E6074

	thumb_func_start ov21_021E608C
ov21_021E608C: ; 0x021E608C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021E609E
	bl sub_02022974
_021E609E:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E608C

	thumb_func_start ov21_021E60D8
ov21_021E60D8: ; 0x021E60D8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E60EA
	bl sub_02022974
_021E60EA:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E60D8

	thumb_func_start ov21_021E6100
ov21_021E6100: ; 0x021E6100
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E6100

	thumb_func_start ov21_021E6104
ov21_021E6104: ; 0x021E6104
	push {r4, lr}
	add r4, r0, #0
	bne _021E610E
	bl sub_02022974
_021E610E:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6104

	thumb_func_start ov21_021E6118
ov21_021E6118: ; 0x021E6118
	push {r4, lr}
	add r4, r0, #0
	bne _021E6122
	bl sub_02022974
_021E6122:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6118

	thumb_func_start ov21_021E612C
ov21_021E612C: ; 0x021E612C
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E612C

	thumb_func_start ov21_021E6130
ov21_021E6130: ; 0x021E6130
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E6130

	thumb_func_start ov21_021E6134
ov21_021E6134: ; 0x021E6134
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	mov r1, #4
	bl sub_02018144
	add r4, r0, #0
	bne _021E6148
	bl sub_02022974
_021E6148:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	str r4, [r5, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E6134

	thumb_func_start ov21_021E6158
ov21_021E6158: ; 0x021E6158
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021E6162
	mov r0, #1
	bx lr
_021E6162:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E6158

	thumb_func_start ov21_021E6168
ov21_021E6168: ; 0x021E6168
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6168

	thumb_func_start ov21_021E617C
ov21_021E617C: ; 0x021E617C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r3, [r3, #8]
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021E61FA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E619A: ; jump table
	.short _021E61A2 - _021E619A - 2 ; case 0
	.short _021E61C0 - _021E619A - 2 ; case 1
	.short _021E61E0 - _021E619A - 2 ; case 2
	.short _021E61F6 - _021E619A - 2 ; case 3
_021E61A2:
	ldr r0, [r4, #4]
	mov r1, #0x14
	bl sub_02018144
	str r0, [r4, #8]
	mov r2, #0x14
	mov r1, #0
_021E61B0:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _021E61B0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E61FA
_021E61C0:
	ldr r0, [r4, #4]
	add r1, r6, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov21_021E6338
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021E628C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E61FA
_021E61E0:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #1
	bl ov21_021E62F8
	cmp r0, #0
	beq _021E61FA
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E61FA
_021E61F6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E61FA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E617C

	thumb_func_start ov21_021E6200
ov21_021E6200: ; 0x021E6200
	mov r0, #0
	bx lr
	thumb_func_end ov21_021E6200

	thumb_func_start ov21_021E6204
ov21_021E6204: ; 0x021E6204
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E626E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E621E: ; jump table
	.short _021E6228 - _021E621E - 2 ; case 0
	.short _021E6238 - _021E621E - 2 ; case 1
	.short _021E624C - _021E621E - 2 ; case 2
	.short _021E625A - _021E621E - 2 ; case 3
	.short _021E626A - _021E621E - 2 ; case 4
_021E6228:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E628C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E626E
_021E6238:
	add r1, r3, #0
	mov r3, #0
	bl ov21_021E62F8
	cmp r0, #0
	beq _021E626E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E626E
_021E624C:
	add r1, r3, #0
	bl ov21_021E638C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E626E
_021E625A:
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021E626E
_021E626A:
	mov r0, #1
	pop {r4, pc}
_021E626E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6204

	thumb_func_start ov21_021E6274
ov21_021E6274: ; 0x021E6274
	ldr r3, _021E627C ; =sub_02021FE0
	ldr r0, [r0, #0x10]
	mov r1, #1
	bx r3
	; .align 2, 0
_021E627C: .word sub_02021FE0
	thumb_func_end ov21_021E6274

	thumb_func_start ov21_021E6280
ov21_021E6280: ; 0x021E6280
	ldr r3, _021E6288 ; =sub_02021FE0
	ldr r0, [r0, #0x10]
	mov r1, #0
	bx r3
	; .align 2, 0
_021E6288: .word sub_02021FE0
	thumb_func_end ov21_021E6280

	thumb_func_start ov21_021E628C
ov21_021E628C: ; 0x021E628C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021E6274
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E62F4
	cmp r6, #0
	beq _021E62D0
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E62D0:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021E62F4:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E628C

	thumb_func_start ov21_021E62F8
ov21_021E62F8: ; 0x021E62F8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #8]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021E6318
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	b _021E6322
_021E6318:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
_021E6322:
	cmp r0, #0
	beq _021E6334
	cmp r4, #0
	beq _021E6330
	add r0, r6, #0
	bl ov21_021E6280
_021E6330:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021E6334:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E62F8

	thumb_func_start ov21_021E6338
ov21_021E6338: ; 0x021E6338
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	add r7, r2, #0
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov21_021E63C0
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E6600
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov21_021E66B0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov21_021E6428
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021E6518
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021E65F8
	add r0, r5, #0
	add r1, r7, #0
	bl ov21_021E67C8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6338

	thumb_func_start ov21_021E638C
ov21_021E638C: ; 0x021E638C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021E65FC
	add r0, r5, #0
	bl ov21_021E65EC
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021E64D4
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	add r0, r4, #0
	bl ov21_021E6844
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E638C

	thumb_func_start ov21_021E63C0
ov21_021E63C0: ; 0x021E63C0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x21
	mov r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x4a
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E63C0

	thumb_func_start ov21_021E6428
ov21_021E6428: ; 0x021E6428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021E64C4 ; =0x00001BB5
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x5d
	bl sub_02009A4C
	str r0, [r5, #0]
	bl sub_0200A3DC
	ldr r0, [r5, #0]
	bl sub_02009D4C
	ldr r0, _021E64C8 ; =0x00001B66
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0xe
	mov r3, #0
	bl sub_02009B04
	str r0, [r5, #4]
	bl sub_0200A640
	ldr r0, [r5, #4]
	bl sub_02009D4C
	ldr r0, _021E64CC ; =0x00001BB3
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5b
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #8]
	ldr r0, _021E64D0 ; =0x00001BB4
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5c
	mov r3, #1
	bl sub_02009BC4
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E64C4: .word 0x00001BB5
_021E64C8: .word 0x00001B66
_021E64CC: .word 0x00001BB3
_021E64D0: .word 0x00001BB4
	thumb_func_end ov21_021E6428

	thumb_func_start ov21_021E64D4
ov21_021E64D4: ; 0x021E64D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	ldr r0, [r5, #4]
	bl sub_0200A6DC
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl sub_02009D68
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E64D4

	thumb_func_start ov21_021E6518
ov21_021E6518: ; 0x021E6518
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	add r6, r2, #0
	add r5, r0, #0
	ldr r0, [r6, #4]
	add r7, r3, #0
	ldr r4, [r1, #0]
	bl ov21_021D37BC
	ldr r3, _021E65E4 ; =0x00001BB4
	str r0, [sp, #0x2c]
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	add r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	add r1, r0, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r2, r3, #0
	add r0, sp, #0x50
	sub r2, #0x4e
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x30]
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	mov r0, #0x1f
	str r0, [sp, #0x44]
	mov r0, #1
	str r0, [sp, #0x48]
	str r7, [sp, #0x4c]
	ldr r1, [r6, #4]
	ldr r0, _021E65E8 ; =0x00001748
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x2c]
	bl sub_02098848
	add r4, r0, #0
	ldr r1, [r6, #4]
	ldr r0, _021E65E8 ; =0x00001748
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x2c]
	bl sub_02098888
	add r7, r0, #0
	mov r0, #0x2a
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, r4, #0
	add r0, #0x58
	lsl r0, r0, #0xc
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl sub_02021B90
	str r0, [r5, #0x10]
	ldr r0, [r6, #4]
	bl ov21_021D3920
	cmp r0, #0
	ldr r0, [r5, #0x10]
	bne _021E65CA
	mov r1, #5
	bl sub_02021D6C
	b _021E65D0
_021E65CA:
	mov r1, #6
	bl sub_02021D6C
_021E65D0:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl ov21_021E6860
	ldr r0, [r5, #0x10]
	add r1, r7, #0
	bl ov21_021E688C
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E65E4: .word 0x00001BB4
_021E65E8: .word 0x00001748
	thumb_func_end ov21_021E6518

	thumb_func_start ov21_021E65EC
ov21_021E65EC: ; 0x021E65EC
	ldr r3, _021E65F4 ; =sub_02021BD4
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021E65F4: .word sub_02021BD4
	thumb_func_end ov21_021E65EC

	thumb_func_start ov21_021E65F8
ov21_021E65F8: ; 0x021E65F8
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E65F8

	thumb_func_start ov21_021E65FC
ov21_021E65FC: ; 0x021E65FC
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021E65FC

	thumb_func_start ov21_021E6600
ov21_021E6600: ; 0x021E6600
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x20
	add r6, r1, #0
	bl sub_02023790
	add r4, r0, #0
	ldr r2, _021E66A8 ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	mov r1, #0x2b
	add r2, r4, #0
	add r6, r0, #0
	bl sub_0200B1B8
	mov r0, #0
	mov r3, #1
	add r1, r4, #0
	add r2, r0, #0
	lsl r3, r3, #8
	bl sub_02002EEC
	add r3, r0, #0
	mov r0, #0x18
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E66AC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	add r0, r6, #0
	mov r1, #9
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E66AC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	mov r3, #0x20
	bl sub_0201D78C
	add r0, r6, #0
	mov r1, #9
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E66AC ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	mov r3, #0x98
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E66A8: .word 0x000002B9
_021E66AC: .word 0x00020100
	thumb_func_end ov21_021E6600

	thumb_func_start ov21_021E66B0
ov21_021E66B0: ; 0x021E66B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x20
	add r1, r7, #0
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D37BC
	add r1, r7, #0
	str r0, [sp, #0x10]
	bl sub_0200B32C
	str r0, [sp, #0x14]
	bl sub_020989D0
	add r2, r0, #0
	mov r0, #0
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	str r0, [sp, #0x18]
	mov r0, #0x98
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E67C0 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x14]
	add r0, r0, #4
	mov r3, #0x1a
	bl sub_0201D78C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x6e
	sub r3, r1, r0
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E67C0 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	ldr r2, _021E67C4 ; =0x000002B9
	mov r0, #0
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D3914
	add r2, r0, #0
	mov r0, #0x98
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E67C0 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r3, #0x92
	add r0, r0, #4
	bl sub_0201D78C
	ldr r0, [r6, #4]
	bl ov21_021D3920
	cmp r0, #0
	bne _021E6780
	add r0, r7, #0
	mov r1, #0x5f
	add r2, r4, #0
	bl sub_0200B1B8
	b _021E678A
_021E6780:
	add r0, r7, #0
	mov r1, #0x60
	add r2, r4, #0
	bl sub_0200B1B8
_021E678A:
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xe6
	sub r3, r1, r0
	mov r0, #0xa8
	str r0, [sp]
	mov r1, #0
	ldr r0, _021E67C0 ; =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r4, #0
	add r0, r0, #4
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021E67C0: .word 0x00020100
_021E67C4: .word 0x000002B9
	thumb_func_end ov21_021E66B0

	thumb_func_start ov21_021E67C8
ov21_021E67C8: ; 0x021E67C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl ov21_021D2170
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r1, [r4, #4]
	ldr r0, _021E6840 ; =0x00001748
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl sub_02098868
	str r0, [sp, #8]
	ldr r1, [r4, #4]
	ldr r0, _021E6840 ; =0x00001748
	ldr r0, [r1, r0]
	add r1, r7, #0
	bl sub_020988A8
	str r0, [sp, #0xc]
	mov r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, r7, #0
	add r0, #0x58
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #4]
	mov r3, #2
	bl ov21_021D1890
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	mov r1, #0xf
	mov r3, #0
	add r0, r6, #0
	add r2, r1, #0
	str r3, [sp]
	bl sub_020086FC
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl ov21_021E687C
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov21_021E68B0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6840: .word 0x00001748
	thumb_func_end ov21_021E67C8

	thumb_func_start ov21_021E6844
ov21_021E6844: ; 0x021E6844
	push {r4, lr}
	ldr r0, [r0, #0]
	bl ov21_021D2170
	add r4, r0, #0
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	bl sub_02008780
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E6844

	thumb_func_start ov21_021E6860
ov21_021E6860: ; 0x021E6860
	push {lr}
	sub sp, #0xc
	add r1, #0x58
	mov r2, #0x2a
	lsl r1, r1, #0xc
	lsl r2, r2, #0xe
	str r1, [sp, #4]
	add r1, sp, #0
	str r2, [sp]
	bl sub_02021C50
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov21_021E6860

	thumb_func_start ov21_021E687C
ov21_021E687C: ; 0x021E687C
	ldr r3, _021E6888 ; =sub_02007DEC
	add r2, r1, #0
	mov r1, #1
	add r2, #0x58
	bx r3
	nop
_021E6888: .word sub_02007DEC
	thumb_func_end ov21_021E687C

	thumb_func_start ov21_021E688C
ov21_021E688C: ; 0x021E688C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0x14
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, sp, #0
	mov r2, #2
	bl sub_02021C80
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021E688C

	thumb_func_start ov21_021E68B0
ov21_021E68B0: ; 0x021E68B0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0x14
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	asr r2, r0, #0x1f
	lsl r3, r2, #0x14
	lsr r1, r0, #0xc
	lsl r2, r0, #0x14
	mov r0, #2
	orr r3, r1
	mov r1, #0
	lsl r0, r0, #0xa
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	asr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0xc
	add r2, r5, #0
	bl sub_02007DEC
	add r0, r4, #0
	mov r1, #0xd
	add r2, r5, #0
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021E68B0