	.include "macros/function.inc"
	.include "include/ov16_02266F1C.inc"

	

	.text


	thumb_func_start ov16_02266F1C
ov16_02266F1C: ; 0x02266F1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x30]
	add r6, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r4, r2, #0
	str r3, [sp, #0x18]
	bl ov16_022682B0
	add r7, r0, #0
	ldr r3, [r7, #0x14]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200CC3C
	str r4, [sp]
	mov r0, #0x47
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02266FD8 ; =0x00004E26
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0200CDC4
	ldr r3, [r7, #0x1c]
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200CE24
	ldr r3, [r7, #0x20]
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200CE54
	str r4, [sp]
	mov r0, #0x47
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02266FDC ; =0x00004E27
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0200CDC4
	ldr r0, [sp, #0x30]
	sub r0, r0, #6
	cmp r0, #1
	bhi _02266FD4
	str r4, [sp]
	mov r0, #0x51
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02266FE0 ; =0x00004E28
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r3, r6, #0
	bl sub_0200CDC4
_02266FD4:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02266FD8: .word 0x00004E26
_02266FDC: .word 0x00004E27
_02266FE0: .word 0x00004E28
	thumb_func_end ov16_02266F1C

	thumb_func_start ov16_02266FE4
ov16_02266FE4: ; 0x02266FE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r5, r2, #0
	str r3, [sp, #0x18]
	bl ov16_02268314
	add r4, r0, #0
	beq _02267056
	ldr r3, [r4, #0x14]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200CC3C
	str r5, [sp]
	mov r0, #0x47
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0226705C ; =0x00004E26
	mov r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0200CDC4
	ldr r3, [r4, #0x1c]
	mov r0, #1
	str r0, [sp]
	str r3, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_0200CE24
	ldr r3, [r4, #0x20]
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	str r3, [sp, #4]
	bl sub_0200CE54
_02267056:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0226705C: .word 0x00004E26
	thumb_func_end ov16_02266FE4

	thumb_func_start ov16_02267060
ov16_02267060: ; 0x02267060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r2, #0x18
	add r4, r1, #0
	lsr r0, r0, #0x18
	bl ov16_022682B0
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200CE6C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200D324
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02267060

	thumb_func_start ov16_02267084
ov16_02267084: ; 0x02267084
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	add r4, r2, #0
	cmp r0, #0
	bne _02267096
	bl sub_02022974
_02267096:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #6
	bne _022670A8
	mov r1, #3
	lsl r1, r1, #0xa
	and r4, r1
	b _022670B8
_022670A8:
	cmp r0, #7
	bne _022670B4
	mov r1, #3
	lsl r1, r1, #0xc
	and r4, r1
	b _022670B8
_022670B4:
	ldr r1, _02267214 ; =0xFFFFC3FF
	and r4, r1
_022670B8:
	cmp r0, #7
	bhi _022670FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022670C8: ; jump table
	.short _022670FA - _022670C8 - 2 ; case 0
	.short _022670D8 - _022670C8 - 2 ; case 1
	.short _022670DE - _022670C8 - 2 ; case 2
	.short _022670D8 - _022670C8 - 2 ; case 3
	.short _022670DE - _022670C8 - 2 ; case 4
	.short _022670D8 - _022670C8 - 2 ; case 5
	.short _022670FE - _022670C8 - 2 ; case 6
	.short _022670FE - _022670C8 - 2 ; case 7
_022670D8:
	mov r0, #0x26
	bic r4, r0
	b _022670FE
_022670DE:
	ldr r0, _02267218 ; =0xFFFFFDDF
	and r4, r0
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	bne _022670F4
	mov r0, #6
	bic r4, r0
	b _022670FE
_022670F4:
	mov r0, #1
	bic r4, r0
	b _022670FE
_022670FA:
	ldr r0, _0226721C ; =0xFFFFFDFF
	and r4, r0
_022670FE:
	ldr r0, [r5, #0xc]
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	beq _0226710E
	ldr r0, _0226721C ; =0xFFFFFDFF
	and r4, r0
_0226710E:
	mov r0, #1
	tst r0, r4
	beq _02267124
	add r0, r5, #0
	mov r1, #0
	bl ov16_022674C4
	add r0, r5, #0
	mov r1, #0
	bl ov16_02267EDC
_02267124:
	mov r0, #2
	tst r0, r4
	beq _02267132
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_02267B6C
_02267132:
	mov r0, #4
	tst r0, r4
	beq _0226713E
	add r0, r5, #0
	bl ov16_02267BF8
_0226713E:
	mov r0, #0x80
	tst r0, r4
	bne _0226714A
	mov r0, #0x40
	tst r0, r4
	beq _02267150
_0226714A:
	add r0, r5, #0
	bl ov16_022679C8
_02267150:
	mov r0, #8
	tst r0, r4
	beq _0226715C
	add r0, r5, #0
	bl ov16_02267A4C
_0226715C:
	mov r0, #0x10
	tst r0, r4
	beq _02267168
	add r0, r5, #0
	bl ov16_02267864
_02267168:
	mov r0, #0x20
	tst r0, r4
	beq _0226717E
	add r0, r5, #0
	mov r1, #0
	bl ov16_0226752C
	add r0, r5, #0
	mov r1, #1
	bl ov16_02267EDC
_0226717E:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r4
	beq _0226718C
	add r0, r5, #0
	bl ov16_02267C58
_0226718C:
	mov r0, #1
	lsl r0, r0, #8
	tst r0, r4
	beq _022671F0
	add r0, r5, #0
	add r0, #0x4a
	ldrb r0, [r0]
	cmp r0, #5
	bhi _022671B6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022671AA: ; jump table
	.short _022671B6 - _022671AA - 2 ; case 0
	.short _022671C0 - _022671AA - 2 ; case 1
	.short _022671CA - _022671AA - 2 ; case 2
	.short _022671D4 - _022671AA - 2 ; case 3
	.short _022671DE - _022671AA - 2 ; case 4
	.short _022671E8 - _022671AA - 2 ; case 5
_022671B6:
	add r0, r5, #0
	mov r1, #0x26
	bl ov16_02267CA8
	b _022671F0
_022671C0:
	add r0, r5, #0
	mov r1, #0x2f
	bl ov16_02267CA8
	b _022671F0
_022671CA:
	add r0, r5, #0
	mov r1, #0x32
	bl ov16_02267CA8
	b _022671F0
_022671D4:
	add r0, r5, #0
	mov r1, #0x35
	bl ov16_02267CA8
	b _022671F0
_022671DE:
	add r0, r5, #0
	mov r1, #0x2c
	bl ov16_02267CA8
	b _022671F0
_022671E8:
	add r0, r5, #0
	mov r1, #0x29
	bl ov16_02267CA8
_022671F0:
	mov r0, #5
	lsl r0, r0, #0xa
	tst r0, r4
	beq _02267200
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02267CE8
_02267200:
	mov r0, #0xa
	lsl r0, r0, #0xa
	tst r0, r4
	beq _02267210
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02267DC4
_02267210:
	pop {r4, r5, r6, pc}
	nop
_02267214: .word 0xFFFFC3FF
_02267218: .word 0xFFFFFDDF
_0226721C: .word 0xFFFFFDFF
	thumb_func_end ov16_02267084

	thumb_func_start ov16_02267220
ov16_02267220: ; 0x02267220
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _02267232
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x50]
_02267232:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02267240
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r4, #4]
_02267240:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02267220

	thumb_func_start ov16_02267244
ov16_02267244: ; 0x02267244
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02267256
	bl sub_0200D0F4
	mov r0, #0
	str r0, [r4, #8]
_02267256:
	pop {r4, pc}
	thumb_func_end ov16_02267244

	thumb_func_start ov16_02267258
ov16_02267258: ; 0x02267258
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl ov16_022682B0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl ov16_0223E010
	ldr r0, [r5, #0xc]
	bl ov16_0223E018
	ldr r1, [r4, #0x14]
	add r5, r0, #0
	bl sub_0200D070
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0200D090
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	bl sub_0200D0A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02267258

	thumb_func_start ov16_0226728C
ov16_0226728C: ; 0x0226728C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl ov16_02268314
	add r4, r0, #0
	beq _022672C0
	ldr r0, [r5, #0xc]
	bl ov16_0223E010
	ldr r0, [r5, #0xc]
	bl ov16_0223E018
	ldr r1, [r4, #0x14]
	add r5, r0, #0
	bl sub_0200D070
	ldr r1, [r4, #0x1c]
	add r0, r5, #0
	bl sub_0200D090
	ldr r1, [r4, #0x20]
	add r0, r5, #0
	bl sub_0200D0A0
_022672C0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0226728C

	thumb_func_start ov16_022672C4
ov16_022672C4: ; 0x022672C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ov16_0223E010
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl ov16_0223E018
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl ov16_0223E064
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl ov16_022682B0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	str r0, [sp]
	add r0, r7, #0
	add r2, r6, #0
	bl ov16_02266F1C
	add r2, r5, #0
	add r2, #0x25
	ldrb r2, [r2]
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl ov16_02267060
	str r0, [r5, #4]
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, [sp, #4]
	ldr r3, [sp, #8]
	str r0, [sp]
	add r0, r7, #0
	add r2, r6, #0
	bl ov16_02266FE4
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02267352
	add r5, #0x25
	ldrb r3, [r5]
	ldr r2, _0226735C ; =0x0226F334
	mov r1, #0
	ldrsh r1, [r4, r1]
	ldrsb r2, [r2, r3]
	ldr r0, [r0, #0]
	sub r1, r1, r2
	mov r2, #2
	lsl r1, r1, #0x10
	ldrsh r2, [r4, r2]
	asr r1, r1, #0x10
	bl sub_0200D494
_02267352:
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226735C: .word 0x0226F334
	thumb_func_end ov16_022672C4

	thumb_func_start ov16_02267360
ov16_02267360: ; 0x02267360
	push {r4, lr}
	add r4, r0, #0
	bl ov16_02267220
	add r0, r4, #0
	bl ov16_02267258
	add r0, r4, #0
	bl ov16_02267244
	add r0, r4, #0
	bl ov16_0226728C
	pop {r4, pc}
	thumb_func_end ov16_02267360

	thumb_func_start ov16_0226737C
ov16_0226737C: ; 0x0226737C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #2
	beq _0226738E
	cmp r0, #4
	beq _0226738E
	b _022674A8
_0226738E:
	add r0, r5, #0
	add r0, #0x4f
	ldrb r2, [r0]
	mov r1, #8
	add r0, r2, #0
	bic r0, r1
	lsl r1, r2, #0x1c
	lsr r2, r1, #0x1f
	mov r1, #1
	eor r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1c
	orr r1, r0
	add r0, r5, #0
	add r0, #0x4f
	strb r1, [r0]
	ldr r0, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0226743A
	mov r0, #0x46
	bl ov16_02268250
	add r2, r5, #0
	add r2, #0x25
	ldrb r2, [r2]
	mov r6, #0x19
	lsl r6, r6, #0x16
	lsl r3, r2, #2
	ldr r2, _022674AC ; =0x0226F374
	ldr r1, [r4, #4]
	ldrh r2, [r2, r3]
	add r2, r6, r2
	add r2, #0x20
	add r1, r1, r2
	mov r2, #0x20
	bl sub_020C4B18
	mov r0, #0x47
	bl ov16_02268250
	add r2, r5, #0
	add r2, #0x25
	ldrb r2, [r2]
	ldr r1, [r4, #4]
	lsl r3, r2, #2
	ldr r2, _022674B0 ; =0x0226F3A4
	ldrh r2, [r2, r3]
	add r2, r6, r2
	add r2, #0x20
	add r1, r1, r2
	mov r2, #0x20
	bl sub_020C4B18
	mov r0, #0x45
	bl ov16_02268250
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	ldr r3, _022674B4 ; =0x0226F3D4
	lsl r2, r1, #2
	ldrh r3, [r3, r2]
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _022674B8 ; =0x0226F3D6
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	mov r2, #6
	bl ov16_02267084
	pop {r4, r5, r6, pc}
_0226743A:
	mov r0, #0x42
	bl ov16_02268250
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	mov r6, #0x19
	ldr r3, _022674AC ; =0x0226F374
	lsl r2, r1, #2
	ldrh r3, [r3, r2]
	lsl r6, r6, #0x16
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _022674BC ; =0x0226F376
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	mov r0, #0x44
	bl ov16_02268250
	add r1, r5, #0
	add r1, #0x25
	ldrb r1, [r1]
	ldr r3, _022674B0 ; =0x0226F3A4
	lsl r2, r1, #2
	ldrh r3, [r3, r2]
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _022674C0 ; =0x0226F3A6
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	mov r0, #0x26
	bl ov16_02268250
	add r2, r5, #0
	add r2, #0x25
	ldrb r2, [r2]
	ldr r1, [r4, #4]
	lsl r3, r2, #2
	ldr r2, _022674B0 ; =0x0226F3A4
	ldrh r2, [r2, r3]
	add r2, r6, r2
	add r2, #0x20
	add r1, r1, r2
	mov r2, #0x20
	bl sub_020C4B18
	ldr r1, [r5, #0x28]
	add r0, r5, #0
	mov r2, #1
	bl ov16_02267084
_022674A8:
	pop {r4, r5, r6, pc}
	nop
_022674AC: .word 0x0226F374
_022674B0: .word 0x0226F3A4
_022674B4: .word 0x0226F3D4
_022674B8: .word 0x0226F3D6
_022674BC: .word 0x0226F376
_022674C0: .word 0x0226F3A6
	thumb_func_end ov16_0226737C

	thumb_func_start ov16_022674C4
ov16_022674C4: ; 0x022674C4
	mov r2, #2
	lsl r2, r2, #0x1e
	str r2, [r0, #0x34]
	ldr r3, [r0, #0x28]
	add r2, r3, r1
	bpl _022674D2
	sub r1, r1, r2
_022674D2:
	ldr r2, [r0, #0x2c]
	add r3, r3, r1
	cmp r3, r2
	ble _022674DE
	sub r2, r3, r2
	sub r1, r1, r2
_022674DE:
	neg r1, r1
	str r1, [r0, #0x30]
	ldr r1, [r0, #0x28]
	cmp r1, #0
	bge _022674EC
	mov r1, #0
	str r1, [r0, #0x28]
_022674EC:
	ldr r2, [r0, #0x2c]
	ldr r1, [r0, #0x28]
	cmp r1, r2
	ble _022674F6
	str r2, [r0, #0x28]
_022674F6:
	bx lr
	thumb_func_end ov16_022674C4

	thumb_func_start ov16_022674F8
ov16_022674F8: ; 0x022674F8
	push {r3, r4, r5, lr}
	mov r1, #0
	add r5, r0, #0
	bl ov16_02267EDC
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0226751E
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x30]
	mov r2, #2
	sub r1, r1, r0
	add r0, r5, #0
	str r1, [r5, #0x28]
	bl ov16_02267084
	b _02267528
_0226751E:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov16_02267084
_02267528:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022674F8

	thumb_func_start ov16_0226752C
ov16_0226752C: ; 0x0226752C
	mov r2, #2
	lsl r2, r2, #0x1e
	str r2, [r0, #0x44]
	ldr r3, [r0, #0x38]
	add r2, r3, r1
	bpl _0226753A
	sub r1, r1, r2
_0226753A:
	ldr r2, [r0, #0x3c]
	add r3, r3, r1
	cmp r3, r2
	ble _02267546
	sub r2, r3, r2
	sub r1, r1, r2
_02267546:
	neg r1, r1
	str r1, [r0, #0x40]
	ldr r1, [r0, #0x38]
	cmp r1, #0
	bge _02267554
	mov r1, #0
	str r1, [r0, #0x38]
_02267554:
	ldr r2, [r0, #0x3c]
	ldr r1, [r0, #0x38]
	cmp r1, r2
	ble _0226755E
	str r2, [r0, #0x38]
_0226755E:
	bx lr
	thumb_func_end ov16_0226752C

	thumb_func_start ov16_02267560
ov16_02267560: ; 0x02267560
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov16_02267EDC
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _0226757A
	ldr r2, [r4, #0x38]
	ldr r1, [r4, #0x40]
	sub r1, r2, r1
	str r1, [r4, #0x38]
_0226757A:
	pop {r4, pc}
	thumb_func_end ov16_02267560

	thumb_func_start ov16_0226757C
ov16_0226757C: ; 0x0226757C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02267596
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	mov r1, #1
	bl ov16_022675F8
_02267596:
	ldr r0, [r4, #0xc]
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _022675AA
	add r0, r4, #0
	bl ov16_02268470
_022675AA:
	pop {r4, pc}
	thumb_func_end ov16_0226757C

	thumb_func_start ov16_022675AC
ov16_022675AC: ; 0x022675AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _022675D0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021E50
	add r0, r4, #0
	mov r1, #0
	bl ov16_022675F8
_022675D0:
	add r0, r4, #0
	bl ov16_02268498
	pop {r4, pc}
	thumb_func_end ov16_022675AC

	thumb_func_start ov16_022675D8
ov16_022675D8: ; 0x022675D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	beq _022675F4
	bl sub_0200D460
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _022675F4
	add r1, r4, #0
	bl sub_0200D460
_022675F4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022675D8

	thumb_func_start ov16_022675F8
ov16_022675F8: ; 0x022675F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	cmp r0, #0
	beq _0226761E
	ldr r0, [r5, #0xc]
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _02267616
	cmp r4, #1
	beq _0226761E
_02267616:
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0200D3F4
_0226761E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022675F8

	thumb_func_start ov16_02267620
ov16_02267620: ; 0x02267620
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	cmp r0, #0
	beq _02267638
	bl sub_0200D3F4
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_022675F8
_02267638:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02267620

	thumb_func_start ov16_0226763C
ov16_0226763C: ; 0x0226763C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0
	bne _0226764E
	bl sub_02022974
_0226764E:
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	bl ov16_022682B0
	add r4, r0, #0
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #4]
	add r1, r1, r6
	add r2, r2, r7
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _022676A0
	add r5, #0x25
	ldrb r3, [r5]
	mov r1, #0
	ldr r2, _022676A4 ; =0x0226F334
	ldrsh r1, [r4, r1]
	ldrsb r2, [r2, r3]
	ldr r0, [r0, #0]
	add r1, r1, r6
	sub r1, r1, r2
	mov r2, #2
	ldrsh r2, [r4, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r2, r7
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
_022676A0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022676A4: .word 0x0226F334
	thumb_func_end ov16_0226763C

	thumb_func_start ov16_022676A8
ov16_022676A8: ; 0x022676A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _022676B6
	bl sub_02022974
_022676B6:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022676C0
	bl sub_02022974
_022676C0:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r1, [r0]
	mov r0, #2
	bic r1, r0
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	mov r1, #1
	bic r0, r1
	lsl r1, r5, #0x18
	lsr r2, r1, #0x18
	mov r1, #1
	and r1, r2
	orr r1, r0
	add r0, r4, #0
	add r0, #0x4f
	strb r1, [r0]
	cmp r5, #0
	bne _0226772E
	add r0, r4, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #7
	bhi _02267720
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267704: ; jump table
	.short _02267714 - _02267704 - 2 ; case 0
	.short _02267720 - _02267704 - 2 ; case 1
	.short _02267714 - _02267704 - 2 ; case 2
	.short _02267720 - _02267704 - 2 ; case 3
	.short _02267714 - _02267704 - 2 ; case 4
	.short _02267720 - _02267704 - 2 ; case 5
	.short _02267714 - _02267704 - 2 ; case 6
	.short _02267714 - _02267704 - 2 ; case 7
_02267714:
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl ov16_0226763C
	b _02267738
_02267720:
	mov r1, #0x9f
	add r0, r4, #0
	mvn r1, r1
	mov r2, #0
	bl ov16_0226763C
	b _02267738
_0226772E:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_0226763C
_02267738:
	ldr r0, _02267744 ; =ov16_0226774C
	ldr r2, _02267748 ; =0x000003DE
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02267744: .word ov16_0226774C
_02267748: .word 0x000003DE
	thumb_func_end ov16_022676A8

	thumb_func_start ov16_0226774C
ov16_0226774C: ; 0x0226774C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r4, #0
	bl ov16_022682B0
	add r6, r0, #0
	add r1, sp, #0
	ldr r0, [r5, #4]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	cmp r0, #7
	bhi _022677D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02267782: ; jump table
	.short _02267792 - _02267782 - 2 ; case 0
	.short _022677D2 - _02267782 - 2 ; case 1
	.short _02267792 - _02267782 - 2 ; case 2
	.short _022677D2 - _02267782 - 2 ; case 3
	.short _02267792 - _02267782 - 2 ; case 4
	.short _022677D2 - _02267782 - 2 ; case 5
	.short _02267792 - _02267782 - 2 ; case 6
	.short _02267792 - _02267782 - 2 ; case 7
_02267792:
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	add r0, sp, #0
	bne _022677B8
	mov r1, #2
	ldrsh r2, [r0, r1]
	sub r2, #0x18
	strh r2, [r0, #2]
	add r2, r4, #0
	ldrsh r1, [r0, r1]
	ldrsh r2, [r6, r2]
	cmp r1, r2
	bge _02267810
	strh r2, [r0, #2]
	add r4, r4, #1
	b _02267810
_022677B8:
	mov r1, #2
	ldrsh r2, [r0, r1]
	add r2, #0x18
	strh r2, [r0, #2]
	add r2, r4, #0
	ldrsh r2, [r6, r2]
	ldrsh r1, [r0, r1]
	add r2, #0xa0
	cmp r1, r2
	ble _02267810
	strh r2, [r0, #2]
	add r4, r4, #1
	b _02267810
_022677D2:
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	add r0, sp, #0
	bne _022677F8
	mov r1, #2
	ldrsh r2, [r0, r1]
	add r2, #0x18
	strh r2, [r0, #2]
	mov r2, #0
	ldrsh r1, [r0, r1]
	ldrsh r2, [r6, r2]
	cmp r1, r2
	ble _02267810
	strh r2, [r0, #2]
	add r4, r4, #1
	b _02267810
_022677F8:
	mov r1, #2
	ldrsh r2, [r0, r1]
	sub r2, #0x18
	strh r2, [r0, #2]
	mov r2, #0
	ldrsh r2, [r6, r2]
	ldrsh r1, [r0, r1]
	sub r2, #0x18
	cmp r1, r2
	bge _02267810
	strh r2, [r0, #2]
	add r4, r4, #1
_02267810:
	add r2, sp, #0
	mov r1, #2
	mov r3, #0
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl sub_0200D4C4
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02267844
	add r6, sp, #0
	mov r1, #2
	ldrsh r3, [r6, r1]
	add r1, r5, #0
	add r1, #0x25
	ldrb r2, [r1]
	ldr r1, _02267860 ; =0x0226F334
	ldrsb r1, [r1, r2]
	mov r2, #0
	ldrsh r2, [r6, r2]
	sub r1, r3, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl sub_0200D4C4
_02267844:
	cmp r4, #0
	ble _0226785C
	add r0, r5, #0
	add r0, #0x4f
	ldrb r1, [r0]
	mov r0, #2
	add r5, #0x4f
	orr r0, r1
	strb r0, [r5]
	add r0, r7, #0
	bl sub_0200DA58
_0226785C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02267860: .word 0x0226F334
	thumb_func_end ov16_0226774C

	thumb_func_start ov16_02267864
ov16_02267864: ; 0x02267864
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	bl ov16_0223DF00
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl ov16_0223E05C
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl ov16_0223E0D0
	add r4, r0, #0
	mov r0, #0x16
	mov r1, #5
	bl sub_02023790
	mov r1, #0xf1
	str r0, [sp, #0x18]
	add r0, r7, #0
	lsl r1, r1, #2
	bl sub_0200B1EC
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x24
	add r2, #0x26
	str r0, [sp, #0x1c]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r5, #0xc]
	bl ov16_0223DFAC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B5CC
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0200C388
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x24
	mov r2, #8
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022679A4 ; =0x000E020F
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x24
	add r3, r1, #0
	bl sub_0201D7E0
	ldr r0, [r5, #4]
	ldr r6, [sp, #0x30]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	add r0, r6, r0
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, _022679A8 ; =0x0226F64C
	ldr r3, [r4, #4]
	lsl r7, r0, #4
	ldrh r2, [r1, r7]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r2
	ldr r2, _022679AC ; =0x0226F64E
	add r0, r6, #0
	ldrh r2, [r2, r7]
	add r1, r3, r1
	bl sub_020C4B18
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r1, _022679B0 ; =0x0226F650
	ldr r3, [r4, #4]
	lsl r7, r0, #4
	ldrh r2, [r1, r7]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r2
	ldr r2, _022679B4 ; =0x0226F652
	ldr r0, [sp, #0x20]
	ldrh r2, [r2, r7]
	add r1, r3, r1
	bl sub_020C4B18
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	ldr r3, _022679B8 ; =0x0226F654
	ldr r1, [r4, #4]
	lsl r2, r0, #4
	ldr r0, _022679AC ; =0x0226F64E
	ldrh r0, [r0, r2]
	add r0, r6, r0
	ldrh r6, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r3, r3, r6
	add r1, r1, r3
	ldr r3, _022679BC ; =0x0226F656
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	add r5, #0x25
	ldrb r0, [r5]
	ldr r4, [r4, #4]
	lsl r2, r0, #4
	ldr r0, _022679B4 ; =0x0226F652
	ldrh r1, [r0, r2]
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	ldr r1, _022679C0 ; =0x0226F658
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r3
	ldr r3, _022679C4 ; =0x0226F65A
	add r1, r4, r1
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	add r0, sp, #0x24
	bl sub_0201A8FC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022679A4: .word 0x000E020F
_022679A8: .word 0x0226F64C
_022679AC: .word 0x0226F64E
_022679B0: .word 0x0226F650
_022679B4: .word 0x0226F652
_022679B8: .word 0x0226F654
_022679BC: .word 0x0226F656
_022679C0: .word 0x0226F658
_022679C4: .word 0x0226F65A
	thumb_func_end ov16_02267864

	thumb_func_start ov16_022679C8
ov16_022679C8: ; 0x022679C8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x49
	ldrb r0, [r0]
	cmp r0, #0
	bne _022679DA
	mov r0, #0x4a
	mov r4, #0x3e
	b _022679E8
_022679DA:
	cmp r0, #1
	bne _022679E4
	mov r0, #0x48
	mov r4, #0x3c
	b _022679E8
_022679E4:
	mov r0, #0x4c
	mov r4, #0x40
_022679E8:
	bl ov16_02268250
	str r0, [sp]
	add r0, r4, #0
	bl ov16_02268250
	add r7, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r6, #0x19
	ldr r3, _02267A3C ; =0x0226F47C
	lsl r2, r0, #3
	ldrh r3, [r3, r2]
	lsl r6, r6, #0x16
	ldr r1, [r4, #4]
	add r3, r6, r3
	add r1, r1, r3
	ldr r3, _02267A40 ; =0x0226F47E
	add r0, r7, #0
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	add r5, #0x25
	ldrb r0, [r5]
	ldr r1, _02267A44 ; =0x0226F480
	ldr r3, [r4, #4]
	lsl r2, r0, #3
	ldrh r1, [r1, r2]
	ldr r0, [sp]
	add r1, r6, r1
	add r1, r3, r1
	ldr r3, _02267A48 ; =0x0226F482
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02267A3C: .word 0x0226F47C
_02267A40: .word 0x0226F47E
_02267A44: .word 0x0226F480
_02267A48: .word 0x0226F482
	thumb_func_end ov16_022679C8

	thumb_func_start ov16_02267A4C
ov16_02267A4C: ; 0x02267A4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #0x60
	bl sub_02018144
	add r4, r0, #0
	mov r0, #5
	mov r1, #0xc0
	bl sub_02018144
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xff
	mov r2, #0x60
	bl sub_020C4CF4
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl ov16_0223E054
	ldr r1, [sp, #4]
	str r4, [sp]
	add r1, #0x48
	ldrb r1, [r1]
	mov r2, #3
	mov r3, #0
	bl sub_0200C67C
	ldr r0, [sp, #4]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_02021F98
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _02267B5C ; =0x0226F3EC
	add r0, #0x25
	ldrb r0, [r0]
	lsl r2, r0, #3
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	ldr r0, [sp, #8]
	add r1, r1, r3
	ldr r3, _02267B60 ; =0x0226F3EE
	ldr r0, [r0, #4]
	ldrh r2, [r3, r2]
	add r0, r0, r1
	add r1, r7, #0
	bl sub_020C4B18
	ldr r0, [sp, #4]
	ldr r1, _02267B64 ; =0x0226F3F0
	add r0, #0x25
	ldrb r0, [r0]
	lsl r2, r0, #3
	ldrh r3, [r1, r2]
	mov r1, #0x19
	ldr r0, [sp, #8]
	lsl r1, r1, #0x16
	add r1, r1, r3
	ldr r3, _02267B68 ; =0x0226F3F2
	ldr r0, [r0, #4]
	ldrh r2, [r3, r2]
	add r0, r0, r1
	add r1, r7, #0
	add r1, #0x60
	bl sub_020C4B18
	mov r2, #0
	add r1, r2, #0
_02267ADE:
	mov r0, #0
	add r3, r7, r1
_02267AE2:
	ldrb r5, [r4, r2]
	add r6, r4, r2
	add r0, r0, #1
	strb r5, [r3, #0x10]
	ldrb r6, [r6, #0x10]
	add r5, r3, #0
	add r5, #0x60
	strb r6, [r5]
	add r2, r2, #1
	add r3, r3, #1
	cmp r0, #0x10
	blt _02267AE2
	add r1, #0x20
	add r2, #0x10
	cmp r1, #0x60
	blt _02267ADE
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r0, #0x25
	ldrb r0, [r0]
	ldr r3, _02267B5C ; =0x0226F3EC
	ldr r1, [r1, #4]
	lsl r2, r0, #3
	ldrh r5, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r3, r3, r5
	add r1, r1, r3
	ldr r3, _02267B60 ; =0x0226F3EE
	add r0, r7, #0
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	ldr r0, [sp, #4]
	ldr r3, _02267B64 ; =0x0226F3F0
	add r0, #0x25
	str r0, [sp, #4]
	ldrb r0, [r0]
	ldr r1, [sp, #8]
	lsl r2, r0, #3
	ldrh r5, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r0, r7, #0
	ldr r1, [r1, #4]
	add r3, r3, r5
	add r1, r1, r3
	ldr r3, _02267B68 ; =0x0226F3F2
	add r0, #0x60
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02267B5C: .word 0x0226F3EC
_02267B60: .word 0x0226F3EE
_02267B64: .word 0x0226F3F0
_02267B68: .word 0x0226F3F2
	thumb_func_end ov16_02267A4C

	thumb_func_start ov16_02267B6C
ov16_02267B6C: ; 0x02267B6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #5
	mov r1, #0x60
	bl sub_02018144
	mov r1, #0xff
	mov r2, #0x60
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0xc]
	bl ov16_0223E04C
	str r4, [sp]
	add r1, r6, #0
	mov r2, #3
	mov r3, #1
	bl sub_0200C67C
	ldr r0, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r7, #0x19
	ldr r3, _02267BE8 ; =0x0226F41C
	lsl r2, r0, #3
	ldrh r3, [r3, r2]
	lsl r7, r7, #0x16
	ldr r1, [r6, #4]
	add r3, r7, r3
	add r1, r1, r3
	ldr r3, _02267BEC ; =0x0226F41E
	add r0, r4, #0
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	add r5, #0x25
	ldrb r0, [r5]
	ldr r3, _02267BF0 ; =0x0226F420
	ldr r1, [r6, #4]
	lsl r2, r0, #3
	ldrh r3, [r3, r2]
	ldr r0, _02267BEC ; =0x0226F41E
	add r3, r7, r3
	add r1, r1, r3
	ldrh r0, [r0, r2]
	ldr r3, _02267BF4 ; =0x0226F422
	ldrh r2, [r3, r2]
	add r0, r4, r0
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02267BE8: .word 0x0226F41C
_02267BEC: .word 0x0226F41E
_02267BF0: .word 0x0226F420
_02267BF4: .word 0x0226F422
	thumb_func_end ov16_02267B6C

	thumb_func_start ov16_02267BF8
ov16_02267BF8: ; 0x02267BF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #5
	mov r1, #0x60
	bl sub_02018144
	mov r1, #0xff
	mov r2, #0x60
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r0, [r5, #0xc]
	bl ov16_0223E04C
	str r4, [sp]
	ldr r1, [r5, #0x2c]
	mov r2, #3
	mov r3, #0
	bl sub_0200C67C
	ldr r0, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r1, r0, #0
	add r5, #0x25
	ldrb r0, [r5]
	ldr r3, _02267C50 ; =0x0226F3BC
	ldr r1, [r1, #4]
	lsl r2, r0, #2
	ldrh r5, [r3, r2]
	mov r3, #0x19
	lsl r3, r3, #0x16
	add r3, r5, r3
	add r1, r1, r3
	ldr r3, _02267C54 ; =0x0226F3BE
	add r0, r4, #0
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02267C50: .word 0x0226F3BC
_02267C54: .word 0x0226F3BE
	thumb_func_end ov16_02267BF8

	thumb_func_start ov16_02267C58
ov16_02267C58: ; 0x02267C58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x4b
	ldrb r0, [r0]
	cmp r0, #1
	bne _02267C6C
	mov r0, #0x3b
	bl ov16_02268250
	b _02267C72
_02267C6C:
	mov r0, #0x26
	bl ov16_02268250
_02267C72:
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r5, #0x25
	add r1, r0, #0
	ldrb r0, [r5]
	lsl r2, r0, #2
	add r0, r4, #0
	ldr r4, [r1, #4]
	ldr r1, _02267CA0 ; =0x0226F38C
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r3, r1
	ldr r3, _02267CA4 ; =0x0226F38E
	add r1, r4, r1
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	pop {r3, r4, r5, pc}
	nop
_02267CA0: .word 0x0226F38C
_02267CA4: .word 0x0226F38E
	thumb_func_end ov16_02267C58

	thumb_func_start ov16_02267CA8
ov16_02267CA8: ; 0x02267CA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov16_02268250
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r5, #0x25
	add r1, r0, #0
	ldrb r0, [r5]
	lsl r2, r0, #2
	add r0, r4, #0
	ldr r4, [r1, #4]
	ldr r1, _02267CE0 ; =0x0226F35C
	ldrh r3, [r1, r2]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r3, r1
	ldr r3, _02267CE4 ; =0x0226F35E
	add r1, r4, r1
	ldrh r2, [r3, r2]
	bl sub_020C4B18
	pop {r3, r4, r5, pc}
	nop
_02267CE0: .word 0x0226F35C
_02267CE4: .word 0x0226F35E
	thumb_func_end ov16_02267CA8

	thumb_func_start ov16_02267CE8
ov16_02267CE8: ; 0x02267CE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl ov16_0223DF00
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl ov16_0223E05C
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r5, #0
	tst r2, r1
	beq _02267D10
	sub r1, #0x4a
	bl sub_0200B1EC
	b _02267D16
_02267D10:
	add r1, #0xc4
	bl sub_0200B1EC
_02267D16:
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, sp, #0x18
	mov r2, #0xd
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02267DC0 ; =0x000E020F
	add r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x18
	add r3, r1, #0
	bl sub_0201D7E0
	ldr r0, [r4, #4]
	ldr r5, [sp, #0x24]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r4, r0, #0
	mov r2, #0x1a
	mov r6, #0x19
	lsl r2, r2, #4
	lsl r6, r6, #0x16
	add r2, #0xa0
	ldr r1, [r4, #4]
	add r2, r6, r2
	add r1, r1, r2
	add r0, r5, #0
	mov r2, #0xc0
	bl sub_020C4B18
	mov r2, #0xd
	mov r0, #0x1a
	lsl r2, r2, #6
	lsl r0, r0, #4
	ldr r1, [r4, #4]
	add r2, r6, r2
	add r1, r1, r2
	add r0, r5, r0
	mov r2, #0xc0
	bl sub_020C4B18
	mov r2, #0xa
	lsl r2, r2, #8
	add r0, r5, #0
	ldr r1, [r4, #4]
	add r2, r6, r2
	add r1, r1, r2
	add r0, #0xc0
	mov r2, #0xe0
	bl sub_020C4B18
	mov r0, #0x1a
	mov r1, #0xb
	lsl r0, r0, #4
	lsl r1, r1, #8
	add r0, r5, r0
	ldr r2, [r4, #4]
	add r1, r6, r1
	add r1, r2, r1
	add r0, #0xc0
	mov r2, #0xe0
	bl sub_020C4B18
	add r0, sp, #0x18
	bl sub_0201A8FC
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02267DC0: .word 0x000E020F
	thumb_func_end ov16_02267CE8

	thumb_func_start ov16_02267DC4
ov16_02267DC4: ; 0x02267DC4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl ov16_0223DF00
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	bl ov16_0223E05C
	str r0, [sp, #0x20]
	ldr r0, [r4, #0xc]
	bl ov16_0223E0D0
	add r7, r0, #0
	mov r0, #0x1e
	mov r1, #5
	bl sub_02023790
	mov r1, #1
	add r6, r0, #0
	lsl r1, r1, #0xa
	add r0, r5, #0
	tst r0, r1
	beq _02267E04
	ldr r0, [sp, #0x20]
	sub r1, #0x49
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	b _02267E0E
_02267E04:
	ldr r0, [sp, #0x20]
	add r1, #0xc5
	bl sub_0200B1EC
	str r0, [sp, #0x18]
_02267E0E:
	mov r0, #1
	str r0, [sp]
	add r2, r4, #0
	str r0, [sp, #4]
	add r2, #0x27
	ldrb r2, [r2]
	add r0, r7, #0
	mov r1, #0
	mov r3, #2
	bl sub_0200B60C
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r6, #0
	bl sub_0200C388
	mov r0, #0
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x24
	mov r2, #0xd
	mov r3, #2
	bl sub_0201A870
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02267ED8 ; =0x000E020F
	add r2, r6, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, sp, #0x24
	add r3, r1, #0
	bl sub_0201D7E0
	ldr r0, [r4, #4]
	ldr r5, [sp, #0x30]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r4, r0, #0
	mov r7, #0x19
	mov r2, #0x11
	lsl r7, r7, #0x16
	lsl r2, r2, #6
	ldr r1, [r4, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r5, #0
	mov r2, #0xc0
	bl sub_020C4B18
	mov r2, #0x15
	mov r0, #0x1a
	lsl r2, r2, #6
	lsl r0, r0, #4
	ldr r1, [r4, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r5, r0
	mov r2, #0xc0
	bl sub_020C4B18
	mov r2, #3
	lsl r2, r2, #0xa
	add r0, r5, #0
	ldr r1, [r4, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, #0xc0
	mov r2, #0xe0
	bl sub_020C4B18
	mov r0, #0x1a
	mov r1, #0xd
	lsl r0, r0, #4
	lsl r1, r1, #8
	add r0, r5, r0
	ldr r2, [r4, #4]
	add r1, r7, r1
	add r1, r2, r1
	add r0, #0xc0
	mov r2, #0xe0
	bl sub_020C4B18
	add r0, sp, #0x24
	bl sub_0201A8FC
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02267ED8: .word 0x000E020F
	thumb_func_end ov16_02267DC4

	thumb_func_start ov16_02267EDC
ov16_02267EDC: ; 0x02267EDC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bne _02267F00
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r3, r5, #0
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x30]
	add r3, #0x34
	bl ov16_022680D8
	add r6, r0, #0
	b _02267F38
_02267F00:
	ldr r0, [r5, #0x38]
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x3c]
	mov r3, #0xc
	bl ov16_02268210
	add r1, r0, #0
	bne _02267F12
	mov r1, #1
_02267F12:
	ldr r6, [r5, #0x40]
	add r0, r6, #0
	bl sub_020E1F6C
	bl sub_020D4070
	mov r1, #0xc
	lsl r0, r0, #0x10
	add r3, r5, #0
	str r1, [sp]
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5, #0x3c]
	ldr r1, [r5, #0x38]
	add r2, r6, #0
	add r3, #0x44
	bl ov16_022680D8
	add r6, r0, #0
_02267F38:
	cmp r4, #0
	bne _02267F4A
	add r0, r5, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1f
	cmp r0, #1
	beq _02267F54
_02267F4A:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov16_02267F70
_02267F54:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	bne _02267F6A
	cmp r4, #0
	bne _02267F66
	mov r0, #0
	str r0, [r5, #0x34]
	b _02267F6A
_02267F66:
	mov r0, #0
	str r0, [r5, #0x44]
_02267F6A:
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02267EDC

	thumb_func_start ov16_02267F70
ov16_02267F70: ; 0x02267F70
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r4, r1, #0
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r5, r0, #0
	cmp r4, #0
	beq _02267F8E
	cmp r4, #1
	beq _02268040
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02267F8E:
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r3, r6, #0
	ldr r0, [r6, #0x2c]
	ldr r1, [r6, #0x28]
	ldr r2, [r6, #0x30]
	add r3, #0x34
	bl ov16_02268194
	mov r1, #0x30
	bl sub_0208C0D4
	cmp r0, #1
	beq _02267FBE
	cmp r0, #2
	beq _02267FBA
	cmp r0, #3
	bne _02267FBE
	mov r0, #2
	b _02267FC0
_02267FBA:
	mov r0, #0xb
	b _02267FC0
_02267FBE:
	mov r0, #0x14
_02267FC0:
	bl ov16_02268250
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x25
	ldrb r0, [r0]
	mov r4, #0
	lsl r1, r0, #3
	ldr r0, _022680D0 ; =0x0226F44E
	ldrh r0, [r0, r1]
	lsr r7, r0, #5
_02267FD6:
	cmp r4, r7
	add r0, sp, #0x10
	bge _02268006
	add r2, r6, #0
	add r2, #0x25
	ldrb r2, [r2]
	ldrb r0, [r0, r4]
	lsl r3, r2, #3
	ldr r2, _022680D4 ; =0x0226F44C
	lsl r1, r0, #5
	ldrh r3, [r2, r3]
	ldr r0, [sp, #0xc]
	mov r2, #0x19
	lsl r2, r2, #0x16
	add r0, r0, r1
	add r3, r2, r3
	lsl r2, r4, #5
	ldr r1, [r5, #4]
	add r2, r3, r2
	add r1, r1, r2
	mov r2, #0x20
	bl sub_020C4B18
	b _02268032
_02268006:
	ldrb r0, [r0, r4]
	ldr r2, [r5, #4]
	lsl r1, r0, #5
	ldr r0, [sp, #0xc]
	add r0, r0, r1
	add r1, r6, #0
	add r1, #0x25
	ldrb r1, [r1]
	lsl r3, r1, #3
	ldr r1, _022680D4 ; =0x0226F44C
	add r1, r1, r3
	ldrh r3, [r1, #4]
	mov r1, #0x19
	lsl r1, r1, #0x16
	add r1, r1, r3
	sub r3, r4, r7
	lsl r3, r3, #5
	add r1, r1, r3
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B18
_02268032:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #6
	blo _02267FD6
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_02268040:
	add r0, sp, #0x10
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	add r3, r6, #0
	ldr r0, [r6, #0x3c]
	ldr r1, [r6, #0x38]
	ldr r2, [r6, #0x40]
	add r3, #0x44
	bl ov16_02268194
	add r6, #0x48
	ldrb r0, [r6]
	cmp r0, #0x64
	bne _02268070
	mov r0, #0
	add r2, r0, #0
	add r1, sp, #0x10
_02268064:
	strb r2, [r1, r0]
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xc
	blo _02268064
_02268070:
	mov r0, #0x1d
	bl ov16_02268250
	add r6, r0, #0
	mov r1, #0x19
	mov r0, #0x66
	lsl r1, r1, #0x16
	lsl r0, r0, #4
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #0xe
	lsl r0, r0, #8
	mov r4, #0
	add r7, r1, r0
_0226808C:
	cmp r4, #5
	add r0, sp, #0x10
	bhs _022680AA
	ldrb r0, [r0, r4]
	ldr r1, [sp, #8]
	lsl r2, r4, #5
	lsl r0, r0, #5
	add r1, r1, r2
	ldr r3, [r5, #4]
	add r0, r6, r0
	add r1, r3, r1
	mov r2, #0x20
	bl sub_020C4B18
	b _022680C0
_022680AA:
	ldrb r0, [r0, r4]
	sub r2, r4, #5
	lsl r2, r2, #5
	lsl r0, r0, #5
	ldr r1, [r5, #4]
	add r2, r7, r2
	add r1, r1, r2
	add r0, r6, r0
	mov r2, #0x20
	bl sub_020C4B18
_022680C0:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #0xc
	blo _0226808C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022680D0: .word 0x0226F44E
_022680D4: .word 0x0226F44C
	thumb_func_end ov16_02267F70

	thumb_func_start ov16_022680D8
ov16_022680D8: ; 0x022680D8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r2, sp, #0
	add r5, r3, #0
	ldrb r2, [r2, #0x10]
	mov r3, #2
	ldr r4, [r5, #0]
	lsl r2, r2, #0x1b
	lsl r3, r3, #0x1e
	lsr r2, r2, #0x18
	cmp r4, r3
	bne _022680FC
	cmp r0, r2
	bge _022680FA
	lsl r3, r1, #8
	str r3, [r5, #0]
	b _022680FC
_022680FA:
	str r1, [r5, #0]
_022680FC:
	sub r4, r1, r6
	bpl _02268104
	mov r4, #0
	b _0226810A
_02268104:
	cmp r4, r0
	ble _0226810A
	add r4, r0, #0
_0226810A:
	cmp r0, r2
	bge _02268122
	ldr r3, [r5, #0]
	asr r1, r3, #8
	cmp r4, r1
	bne _0226812E
	lsl r1, r3, #0x18
	lsr r1, r1, #0x18
	bne _0226812E
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_02268122:
	ldr r1, [r5, #0]
	cmp r4, r1
	bne _0226812E
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0226812E:
	cmp r0, r2
	bge _0226816E
	lsl r0, r0, #8
	add r1, r2, #0
	bl sub_020E1F6C
	cmp r6, #0
	ldr r1, [r5, #0]
	bge _02268152
	add r0, r1, r0
	str r0, [r5, #0]
	asr r0, r0, #8
	cmp r0, r4
	blt _02268192
	lsl r0, r4, #8
	str r0, [r5, #0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02268152:
	sub r1, r1, r0
	str r1, [r5, #0]
	asr r0, r1, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #0
	ble _02268162
	add r0, r0, #1
_02268162:
	cmp r0, r4
	bgt _02268192
	lsl r0, r4, #8
	str r0, [r5, #0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0226816E:
	cmp r6, #0
	ldr r1, [r5, #0]
	add r0, sp, #0
	bge _02268184
	ldrh r0, [r0, #0x14]
	add r0, r1, r0
	str r0, [r5, #0]
	cmp r0, r4
	ble _02268190
	str r4, [r5, #0]
	b _02268190
_02268184:
	ldrh r0, [r0, #0x14]
	sub r0, r1, r0
	str r0, [r5, #0]
	cmp r0, r4
	bge _02268190
	str r4, [r5, #0]
_02268190:
	ldr r0, [r5, #0]
_02268192:
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_022680D8

	thumb_func_start ov16_02268194
ov16_02268194: ; 0x02268194
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r5, [sp, #0x18]
	sub r7, r1, r2
	bpl _022681A2
	mov r7, #0
	b _022681A8
_022681A2:
	cmp r7, r6
	ble _022681A8
	add r7, r6, #0
_022681A8:
	add r0, sp, #8
	ldrb r4, [r0, #0x14]
	mov r1, #0
	lsl r2, r4, #3
	cmp r4, #0
	ble _022681BE
	add r0, r1, #0
_022681B6:
	strb r0, [r5, r1]
	add r1, r1, #1
	cmp r1, r4
	blt _022681B6
_022681BE:
	cmp r6, r2
	ldr r1, [r3, #0]
	bhs _022681D2
	add r0, r1, #0
	mul r0, r2
	add r1, r6, #0
	bl sub_020E2178
	lsr r0, r0, #8
	b _022681DC
_022681D2:
	add r0, r1, #0
	mul r0, r2
	add r1, r6, #0
	bl sub_020E2178
_022681DC:
	add r2, r0, #0
	cmp r0, #0
	bne _022681EC
	cmp r7, #0
	ble _022681EC
	mov r2, #1
	strb r2, [r5]
	b _02268208
_022681EC:
	mov r3, #0
	cmp r4, #0
	ble _02268208
	mov r1, #8
_022681F4:
	cmp r0, #8
	blo _022681FE
	strb r1, [r5, r3]
	sub r0, #8
	b _02268202
_022681FE:
	strb r0, [r5, r3]
	b _02268208
_02268202:
	add r3, r3, #1
	cmp r3, r4
	blt _022681F4
_02268208:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02268194

	thumb_func_start ov16_02268210
ov16_02268210: ; 0x02268210
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	lsl r0, r3, #0x1b
	add r5, r2, #0
	lsr r6, r0, #0x18
	sub r4, r7, r1
	bpl _02268222
	mov r4, #0
	b _02268228
_02268222:
	cmp r4, r5
	ble _02268228
	add r4, r5, #0
_02268228:
	add r0, r7, #0
	mul r0, r6
	add r1, r5, #0
	bl sub_020E1F6C
	add r7, r0, #0
	add r0, r4, #0
	mul r0, r6
	add r1, r5, #0
	bl sub_020E1F6C
	lsl r1, r7, #0x18
	lsl r0, r0, #0x18
	asr r1, r1, #0x18
	asr r0, r0, #0x18
	sub r0, r1, r0
	bl sub_020D4070
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02268210

	thumb_func_start ov16_02268250
ov16_02268250: ; 0x02268250
	ldr r1, _02268258 ; =0x0226F6AC
	lsl r0, r0, #5
	add r0, r1, r0
	bx lr
	; .align 2, 0
_02268258: .word 0x0226F6AC
	thumb_func_end ov16_02268250

	thumb_func_start ov16_0226825C
ov16_0226825C: ; 0x0226825C
	push {r3, lr}
	cmp r0, #5
	bhi _022682A8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226826E: ; jump table
	.short _0226827A - _0226826E - 2 ; case 0
	.short _02268294 - _0226826E - 2 ; case 1
	.short _02268298 - _0226826E - 2 ; case 2
	.short _0226829C - _0226826E - 2 ; case 3
	.short _022682A0 - _0226826E - 2 ; case 4
	.short _022682A4 - _0226826E - 2 ; case 5
_0226827A:
	mov r0, #2
	lsl r0, r0, #8
	tst r0, r1
	beq _02268286
	mov r0, #7
	pop {r3, pc}
_02268286:
	mov r0, #0x20
	tst r0, r1
	beq _02268290
	mov r0, #6
	pop {r3, pc}
_02268290:
	mov r0, #0
	pop {r3, pc}
_02268294:
	mov r0, #1
	pop {r3, pc}
_02268298:
	mov r0, #2
	pop {r3, pc}
_0226829C:
	mov r0, #3
	pop {r3, pc}
_022682A0:
	mov r0, #4
	pop {r3, pc}
_022682A4:
	mov r0, #5
	pop {r3, pc}
_022682A8:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov16_0226825C

	thumb_func_start ov16_022682B0
ov16_022682B0: ; 0x022682B0
	push {r3, lr}
	cmp r0, #7
	bhi _022682EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022682C2: ; jump table
	.short _022682D2 - _022682C2 - 2 ; case 0
	.short _022682D6 - _022682C2 - 2 ; case 1
	.short _022682DA - _022682C2 - 2 ; case 2
	.short _022682DE - _022682C2 - 2 ; case 3
	.short _022682E2 - _022682C2 - 2 ; case 4
	.short _022682E6 - _022682C2 - 2 ; case 5
	.short _022682EA - _022682C2 - 2 ; case 6
	.short _022682EA - _022682C2 - 2 ; case 7
_022682D2:
	ldr r0, _022682F8 ; =0x0226F5B0
	pop {r3, pc}
_022682D6:
	ldr r0, _022682FC ; =0x0226F5E4
	pop {r3, pc}
_022682DA:
	ldr r0, _02268300 ; =0x0226F4AC
	pop {r3, pc}
_022682DE:
	ldr r0, _02268304 ; =0x0226F4E0
	pop {r3, pc}
_022682E2:
	ldr r0, _02268308 ; =0x0226F548
	pop {r3, pc}
_022682E6:
	ldr r0, _0226830C ; =0x0226F618
	pop {r3, pc}
_022682EA:
	ldr r0, _02268310 ; =0x0226F57C
	pop {r3, pc}
_022682EE:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_022682F8: .word 0x0226F5B0
_022682FC: .word 0x0226F5E4
_02268300: .word 0x0226F4AC
_02268304: .word 0x0226F4E0
_02268308: .word 0x0226F548
_0226830C: .word 0x0226F618
_02268310: .word 0x0226F57C
	thumb_func_end ov16_022682B0

	thumb_func_start ov16_02268314
ov16_02268314: ; 0x02268314
	push {r3, lr}
	cmp r0, #7
	bhi _0226833E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268326: ; jump table
	.short _02268336 - _02268326 - 2 ; case 0
	.short _0226833A - _02268326 - 2 ; case 1
	.short _02268336 - _02268326 - 2 ; case 2
	.short _0226833A - _02268326 - 2 ; case 3
	.short _02268336 - _02268326 - 2 ; case 4
	.short _0226833A - _02268326 - 2 ; case 5
	.short _02268336 - _02268326 - 2 ; case 6
	.short _02268336 - _02268326 - 2 ; case 7
_02268336:
	ldr r0, _02268348 ; =0x0226F514
	pop {r3, pc}
_0226833A:
	mov r0, #0
	pop {r3, pc}
_0226833E:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	nop
_02268348: .word 0x0226F514
	thumb_func_end ov16_02268314

	thumb_func_start ov16_0226834C
ov16_0226834C: ; 0x0226834C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0
	strb r0, [r6]
	mov r0, #5
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl sub_020C4CF4
	mov r2, #0xfa
	str r5, [r4, #0]
	ldr r0, _0226837C ; =ov16_02268380
	add r1, r4, #0
	lsl r2, r2, #2
	str r6, [r4, #4]
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_0226837C: .word ov16_02268380
	thumb_func_end ov16_0226834C

	thumb_func_start ov16_02268380
ov16_02268380: ; 0x02268380
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl ov16_0223E018
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0xc]
	bl ov16_0223E064
	add r6, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _022683AC
	cmp r0, #1
	beq _022683CA
	cmp r0, #2
	beq _022683FC
	b _02268430
_022683AC:
	ldr r1, _0226845C ; =0x00004E27
	add r0, r5, #0
	mov r2, #1
	bl sub_0200D05C
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	ldr r0, [r0, #4]
	bl sub_0200D41C
	strb r5, [r4, #9]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_022683CA:
	mov r0, #0xa
	ldrsb r1, [r4, r0]
	add r1, r1, #2
	strb r1, [r4, #0xa]
	ldrsb r1, [r4, r0]
	cmp r1, #0xa
	blt _022683E0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_022683E0:
	ldrb r0, [r4, #0xa]
	mov r1, #2
	mov r3, #0x10
	str r0, [sp]
	ldr r0, _02268460 ; =0x000073A5
	str r0, [sp, #4]
	ldrb r2, [r4, #9]
	add r0, r6, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl sub_020039B0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022683FC:
	mov r0, #0xa
	ldrsb r1, [r4, r0]
	sub r1, r1, #2
	strb r1, [r4, #0xa]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt _02268414
	mov r0, #0
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
_02268414:
	ldrb r0, [r4, #0xa]
	mov r1, #2
	mov r3, #0x10
	str r0, [sp]
	ldr r0, _02268460 ; =0x000073A5
	str r0, [sp, #4]
	ldrb r2, [r4, #9]
	add r0, r6, #0
	lsl r2, r2, #0x14
	lsr r2, r2, #0x10
	bl sub_020039B0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02268430:
	ldr r1, _02268464 ; =0x00004E26
	add r0, r5, #0
	mov r2, #1
	bl sub_0200D05C
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	bl sub_0200D41C
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226845C: .word 0x00004E27
_02268460: .word 0x000073A5
_02268464: .word 0x00004E26
	thumb_func_end ov16_02268380

	thumb_func_start ov16_02268468
ov16_02268468: ; 0x02268468
	bx lr
	; .align 2, 0
	thumb_func_end ov16_02268468

	thumb_func_start ov16_0226846C
ov16_0226846C: ; 0x0226846C
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0226846C

	thumb_func_start ov16_02268470
ov16_02268470: ; 0x02268470
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	bne _0226848E
	add r0, r4, #0
	mov r1, #0
	add r0, #0x54
	strh r1, [r0]
	ldr r0, _02268490 ; =ov16_022684BC
	ldr r2, _02268494 ; =0x000003F2
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x50]
_0226848E:
	pop {r4, pc}
	; .align 2, 0
_02268490: .word ov16_022684BC
_02268494: .word 0x000003F2
	thumb_func_end ov16_02268470

	thumb_func_start ov16_02268498
ov16_02268498: ; 0x02268498
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _022684AA
	bl sub_0200DA58
	mov r0, #0
	str r0, [r4, #0x50]
_022684AA:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x54
	strh r1, [r0]
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_0226763C
	pop {r4, pc}
	thumb_func_end ov16_02268498

	thumb_func_start ov16_022684BC
ov16_022684BC: ; 0x022684BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r1, #0x54
	ldrh r2, [r1]
	add r1, r4, #0
	add r1, #0x54
	add r2, #0x14
	strh r2, [r1]
	add r1, r4, #0
	add r1, #0x54
	ldrh r2, [r1]
	mov r1, #0x5a
	add r0, r4, #0
	lsl r1, r1, #2
	add r0, #0x54
	cmp r2, r1
	blo _022684E4
	ldrh r2, [r0]
	sub r1, r2, r1
	strh r1, [r0]
_022684E4:
	add r0, r4, #0
	add r0, #0x54
	ldrh r0, [r0]
	bl sub_0201D15C
	mov r2, #6
	asr r1, r0, #0x1f
	lsl r2, r2, #0xa
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	add r3, r0, #0
	add r5, r1, #0
	mov r1, #0
	lsl r2, r2, #0xa
	add r0, r4, #0
	add r3, r3, r2
	adc r5, r1
	lsl r2, r5, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	bl ov16_0226763C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022684BC

	.rodata


	.global Unk_ov16_0226F334
Unk_ov16_0226F334: ; 0x0226F334
	.incbin "incbin/overlay16_rodata.bin", 0x10D8, 0x10E0 - 0x10D8

	.global Unk_ov16_0226F33C
Unk_ov16_0226F33C: ; 0x0226F33C
	.incbin "incbin/overlay16_rodata.bin", 0x10E0, 0x10F0 - 0x10E0

	.global Unk_ov16_0226F34C
Unk_ov16_0226F34C: ; 0x0226F34C
	.incbin "incbin/overlay16_rodata.bin", 0x10F0, 0x1100 - 0x10F0

	.global Unk_ov16_0226F35C
Unk_ov16_0226F35C: ; 0x0226F35C
	.incbin "incbin/overlay16_rodata.bin", 0x1100, 0x1118 - 0x1100

	.global Unk_ov16_0226F374
Unk_ov16_0226F374: ; 0x0226F374
	.incbin "incbin/overlay16_rodata.bin", 0x1118, 0x1130 - 0x1118

	.global Unk_ov16_0226F38C
Unk_ov16_0226F38C: ; 0x0226F38C
	.incbin "incbin/overlay16_rodata.bin", 0x1130, 0x1148 - 0x1130

	.global Unk_ov16_0226F3A4
Unk_ov16_0226F3A4: ; 0x0226F3A4
	.incbin "incbin/overlay16_rodata.bin", 0x1148, 0x1160 - 0x1148

	.global Unk_ov16_0226F3BC
Unk_ov16_0226F3BC: ; 0x0226F3BC
	.incbin "incbin/overlay16_rodata.bin", 0x1160, 0x1178 - 0x1160

	.global Unk_ov16_0226F3D4
Unk_ov16_0226F3D4: ; 0x0226F3D4
	.incbin "incbin/overlay16_rodata.bin", 0x1178, 0x1190 - 0x1178

	.global Unk_ov16_0226F3EC
Unk_ov16_0226F3EC: ; 0x0226F3EC
	.incbin "incbin/overlay16_rodata.bin", 0x1190, 0x11C0 - 0x1190

	.global Unk_ov16_0226F41C
Unk_ov16_0226F41C: ; 0x0226F41C
	.incbin "incbin/overlay16_rodata.bin", 0x11C0, 0x11F0 - 0x11C0

	.global Unk_ov16_0226F44C
Unk_ov16_0226F44C: ; 0x0226F44C
	.incbin "incbin/overlay16_rodata.bin", 0x11F0, 0x1220 - 0x11F0

	.global Unk_ov16_0226F47C
Unk_ov16_0226F47C: ; 0x0226F47C
	.incbin "incbin/overlay16_rodata.bin", 0x1220, 0x1250 - 0x1220

	.global Unk_ov16_0226F4AC
Unk_ov16_0226F4AC: ; 0x0226F4AC
	.incbin "incbin/overlay16_rodata.bin", 0x1250, 0x1284 - 0x1250

	.global Unk_ov16_0226F4E0
Unk_ov16_0226F4E0: ; 0x0226F4E0
	.incbin "incbin/overlay16_rodata.bin", 0x1284, 0x12B8 - 0x1284

	.global Unk_ov16_0226F514
Unk_ov16_0226F514: ; 0x0226F514
	.incbin "incbin/overlay16_rodata.bin", 0x12B8, 0x12EC - 0x12B8

	.global Unk_ov16_0226F548
Unk_ov16_0226F548: ; 0x0226F548
	.incbin "incbin/overlay16_rodata.bin", 0x12EC, 0x1320 - 0x12EC

	.global Unk_ov16_0226F57C
Unk_ov16_0226F57C: ; 0x0226F57C
	.incbin "incbin/overlay16_rodata.bin", 0x1320, 0x1354 - 0x1320

	.global Unk_ov16_0226F5B0
Unk_ov16_0226F5B0: ; 0x0226F5B0
	.incbin "incbin/overlay16_rodata.bin", 0x1354, 0x1388 - 0x1354

	.global Unk_ov16_0226F5E4
Unk_ov16_0226F5E4: ; 0x0226F5E4
	.incbin "incbin/overlay16_rodata.bin", 0x1388, 0x13BC - 0x1388

	.global Unk_ov16_0226F618
Unk_ov16_0226F618: ; 0x0226F618
	.incbin "incbin/overlay16_rodata.bin", 0x13BC, 0x13F0 - 0x13BC

	.global Unk_ov16_0226F64C
Unk_ov16_0226F64C: ; 0x0226F64C
	.incbin "incbin/overlay16_rodata.bin", 0x13F0, 0x1450 - 0x13F0

	.global Unk_ov16_0226F6AC
Unk_ov16_0226F6AC: ; 0x0226F6AC
	.incbin "incbin/overlay16_rodata.bin", 0x1450, 0x9C0

