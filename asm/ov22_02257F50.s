	.include "macros/function.inc"
	.include "include/ov22_02257F50.inc"

	

	.text


	thumb_func_start ov22_02257F50
ov22_02257F50: ; 0x02257F50
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	str r1, [r5, #0x44]
	ldr r1, [r4, #4]
	str r1, [r5, #0x48]
	ldr r1, [r4, #8]
	str r1, [r5, #0x4c]
	ldr r1, [r4, #0xc]
	str r1, [r5, #0x50]
	ldr r1, [r4, #0x10]
	str r1, [r5, #0x54]
	ldr r1, [r4, #0x14]
	str r1, [r5, #0x58]
	ldr r1, [r4, #0x18]
	str r1, [r5, #8]
	ldr r1, [r4, #0x28]
	str r1, [r5, #4]
	mov r1, #0
	bl ov22_02258354
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02258470
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02257F50

	thumb_func_start ov22_02257F88
ov22_02257F88: ; 0x02257F88
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov22_022581C0
	add r5, r6, #0
	mov r4, #0
	add r5, #0xc
_02257F96:
	add r0, r5, #0
	bl ov22_02258534
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #4
	blt _02257F96
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x8c
	bl memset
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257F88

	thumb_func_start ov22_02257FB0
ov22_02257FB0: ; 0x02257FB0
	push {r3, lr}
	cmp r0, #0
	beq _02257FC0
	cmp r0, #1
	beq _02258030
	cmp r0, #2
	beq _0225803E
	pop {r3, pc}
_02257FC0:
	cmp r1, #5
	bgt _02257FC8
	mov r0, #0
	pop {r3, pc}
_02257FC8:
	cmp r1, #0xb
	bgt _02257FD0
	mov r0, #1
	pop {r3, pc}
_02257FD0:
	cmp r1, #0x11
	bgt _02257FD8
	mov r0, #2
	pop {r3, pc}
_02257FD8:
	cmp r1, #0x15
	bgt _02257FE0
	mov r0, #3
	pop {r3, pc}
_02257FE0:
	cmp r1, #0x1c
	bgt _02257FE8
	mov r0, #4
	pop {r3, pc}
_02257FE8:
	cmp r1, #0x21
	bgt _02257FF0
	mov r0, #5
	pop {r3, pc}
_02257FF0:
	cmp r1, #0x26
	bgt _02257FF8
	mov r0, #6
	pop {r3, pc}
_02257FF8:
	cmp r1, #0x2a
	bgt _02258000
	mov r0, #7
	pop {r3, pc}
_02258000:
	cmp r1, #0x31
	bgt _02258008
	mov r0, #8
	pop {r3, pc}
_02258008:
	cmp r1, #0x37
	bgt _02258010
	mov r0, #9
	pop {r3, pc}
_02258010:
	cmp r1, #0x3c
	bgt _02258018
	mov r0, #0xa
	pop {r3, pc}
_02258018:
	cmp r1, #0x47
	bgt _02258020
	mov r0, #0xb
	pop {r3, pc}
_02258020:
	cmp r1, #0x5b
	bgt _02258028
	mov r0, #0xc
	pop {r3, pc}
_02258028:
	cmp r1, #0x63
	bgt _0225804A
	mov r0, #0xd
	pop {r3, pc}
_02258030:
	add r0, r2, #0
	bl ov22_022589BC
	mov r1, #9
	bl _s32_div_f
	pop {r3, pc}
_0225803E:
	add r0, r2, #0
	bl ov22_022589BC
	mov r1, #9
	bl _s32_div_f
_0225804A:
	pop {r3, pc}
	thumb_func_end ov22_02257FB0

	thumb_func_start ov22_0225804C
ov22_0225804C: ; 0x0225804C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	add r4, r3, #0
	cmp r0, #0
	beq _02258060
	cmp r0, #1
	beq _02258092
	cmp r0, #2
	beq _02258092
	pop {r3, r4, r5, pc}
_02258060:
	mov r0, #0xa
	str r0, [r5, #0]
	mov r0, #0x12
	str r0, [r4, #0]
	bl sub_0201D35C
	ldr r2, [sp, #0x10]
	mov r1, #0x6c
	sub r1, r1, r2
	bl _u32_div_f
	ldr r0, [r5, #0]
	add r0, r0, r1
	str r0, [r5, #0]
	bl sub_0201D35C
	ldr r2, [sp, #0x14]
	mov r1, #0x7d
	sub r1, r1, r2
	bl _u32_div_f
	ldr r0, [r4, #0]
	add r0, r0, r1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02258092:
	ldr r0, [sp, #0x18]
	bl ov22_022589BC
	add r1, r5, #0
	add r2, r4, #0
	bl ov22_02258610
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225804C

	thumb_func_start ov22_022580A4
ov22_022580A4: ; 0x022580A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	ldr r0, [r5, #0x58]
	add r4, r2, #0
	str r4, [sp, #0x40]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x44]
	add r6, r1, #0
	mov r1, #0
	str r0, [sp, #0x2c]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r6, #0
	beq _022580CC
	cmp r6, #1
	beq _022580D8
	cmp r6, #2
	beq _022580E6
	b _022580F4
_022580CC:
	ldr r0, [r5, #0x50]
	str r4, [sp, #0xc]
	ldrb r0, [r0, r4]
	add r7, r1, #0
	str r0, [sp, #0x44]
	b _022580F8
_022580D8:
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x64
	str r0, [sp, #0xc]
	add r7, r4, #1
	str r1, [sp, #0x44]
	b _022580F8
_022580E6:
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x64
	str r0, [sp, #0xc]
	add r7, r4, #1
	str r1, [sp, #0x44]
	b _022580F8
_022580F4:
	bl sub_02022974
_022580F8:
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0x48]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r1, r7, #2
	str r0, [sp, #0x30]
	ldr r2, [r5, #0x4c]
	cmp r0, #0
	ldr r1, [r2, r1]
	str r1, [sp, #0x34]
	bne _02258112
	bl sub_02022974
_02258112:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	bne _0225811C
	bl sub_02022974
_0225811C:
	ldr r2, [r5, #4]
	add r0, r6, #0
	add r1, r4, #0
	bl ov22_02257FB0
	add r7, r0, #0
	add r0, sp, #0x28
	bl ov22_02254E20
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl ov22_022594C0
	mov r1, #0xc
	mul r1, r6
	add r1, r5, r1
	ldr r2, [r1, #0xc]
	lsl r1, r7, #4
	add r1, r2, r1
	ldr r1, [r1, #0xc]
	str r0, [sp, #0x14]
	bl ov22_02259520
	ldr r0, [sp, #0x14]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259698
	ldr r0, [sp, #0x1c]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r2, sp, #0x24
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r3, sp, #0x20
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov22_0225804C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl ov22_022595F8
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_022585E8
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022580A4

	thumb_func_start ov22_0225818C
ov22_0225818C: ; 0x0225818C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #0xc
	add r5, r0, #0
	mul r1, r4
	add r7, r3, #0
	add r1, r5, r1
	add r6, r2, #0
	ldr r2, [r1, #0xc]
	lsl r1, r6, #4
	add r0, r7, #0
	add r1, r2, r1
	bl ov22_02259520
	ldr r1, [r7, #0]
	add r0, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov22_022585E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225818C

	thumb_func_start ov22_022581B8
ov22_022581B8: ; 0x022581B8
	ldr r3, _022581BC ; =ov22_02259530
	bx r3
	; .align 2, 0
_022581BC: .word ov22_02259530
	thumb_func_end ov22_022581B8

	thumb_func_start ov22_022581C0
ov22_022581C0: ; 0x022581C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0
_022581C6:
	ldr r0, [r5, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _022581E2
	add r4, r6, #0
_022581D0:
	ldr r0, [r5, #0xc]
	add r0, r0, r4
	bl ov22_02259540
	ldr r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _022581D0
_022581E2:
	add r7, r7, #1
	add r5, #0xc
	cmp r7, #3
	blt _022581C6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022581C0

	thumb_func_start ov22_022581EC
ov22_022581EC: ; 0x022581EC
	push {r4, r5, r6, lr}
	mov r5, #0
	mvn r5, r5
	bl ov22_0225855C
	add r6, r0, #0
	ldr r4, [r6, #8]
	cmp r4, r6
	beq _02258214
_022581FE:
	ldr r0, [r4, #4]
	cmp r0, #2
	bhi _0225820C
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov22_02254F6C
_0225820C:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _022581FE
_02258214:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022581EC

	thumb_func_start ov22_02258218
ov22_02258218: ; 0x02258218
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0x3c]
	add r4, r2, #0
	cmp r1, #0
	bne _02258250
	ldr r1, [r5, #0]
	mov r2, #0xc
	mul r2, r1
	str r4, [sp]
	add r2, r5, r2
	ldr r2, [r2, #0x14]
	add r3, r6, #0
	bl ov22_0225864C
	mov r0, #0xc
	mul r0, r6
	str r6, [r5, #0]
	add r0, r5, r0
	str r4, [r0, #0x14]
	add r0, r5, #0
	bl ov22_022581EC
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02258250:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02258218

	thumb_func_start ov22_02258258
ov22_02258258: ; 0x02258258
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp, #4]
	str r0, [sp]
	str r2, [sp, #8]
	bl ov22_02258424
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xc
	mul r1, r0
	ldr r0, [sp]
	mov r4, #1
	add r6, r0, r1
	ldr r0, [r6, #0x10]
	cmp r0, #1
	ble _022582BA
_0225827A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225828C
	ldr r1, [r6, #0x10]
	add r0, r4, r7
	bl _s32_div_f
	add r5, r1, #0
	b _02258294
_0225828C:
	sub r5, r7, r4
	bpl _02258294
	ldr r0, [r6, #0x10]
	add r5, r5, r0
_02258294:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl ov22_02258584
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _022582B2
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r5, #0
	bl ov22_02258218
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_022582B2:
	ldr r0, [r6, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _0225827A
_022582BA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02258258

	thumb_func_start ov22_022582C0
ov22_022582C0: ; 0x022582C0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r6, r2, #0
	bl ov22_022584E0
	mov r0, #0xc
	mul r0, r4
	str r4, [r5, #0]
	add r0, r5, r0
	str r6, [r0, #0x14]
	add r0, r5, #0
	mov r1, #1
	bl ov22_022584E0
	add r0, r5, #0
	bl ov22_022581EC
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_022582C0

	thumb_func_start ov22_022582E8
ov22_022582E8: ; 0x022582E8
	push {r3, lr}
	mov r1, #0x12
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #0x8f
	strb r1, [r0, #1]
	mov r1, #0xa
	strb r1, [r0, #2]
	mov r1, #0x76
	strb r1, [r0, #3]
	add r0, sp, #0
	bl sub_02022734
	pop {r3, pc}
	thumb_func_end ov22_022582E8

	thumb_func_start ov22_02258304
ov22_02258304: ; 0x02258304
	push {r3, lr}
	mov r3, #0x12
	add r0, sp, #0
	strb r3, [r0]
	mov r3, #0x8f
	strb r3, [r0, #1]
	mov r3, #0xa
	strb r3, [r0, #2]
	mov r3, #0x76
	strb r3, [r0, #3]
	add r0, sp, #0
	bl sub_02022830
	pop {r3, pc}
	thumb_func_end ov22_02258304

	thumb_func_start ov22_02258320
ov22_02258320: ; 0x02258320
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov22_0225855C
	add r5, r0, #0
	ldr r4, [r5, #8]
	cmp r4, r5
	beq _0225834E
_02258334:
	ldr r3, [sp]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02258348
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_02258348:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02258334
_0225834E:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02258320

	thumb_func_start ov22_02258354
ov22_02258354: ; 0x02258354
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x19
	lsl r1, r4, #1
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x81
	str r0, [sp, #8]
	mov r0, #0x85
	str r0, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x14]
	mov r0, #0x81
	str r0, [sp, #0x18]
	mov r0, #3
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0xe
	add r1, #0x82
	str r0, [sp, #0x2c]
	add r0, r5, #0
	str r1, [sp, #0x10]
	add r0, #0x5c
	add r1, sp, #0
	bl ov22_022597BC
	str r4, [r5, #0x40]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02258354

	thumb_func_start ov22_022583A0
ov22_022583A0: ; 0x022583A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r4, r1, #0
	str r0, [sp, #8]
	mov r0, #0x19
	lsl r1, r4, #1
	str r0, [sp, #0xc]
	add r0, r1, #0
	add r0, #0x81
	str r0, [sp, #0x10]
	mov r0, #0x85
	str r0, [sp, #0x14]
	mov r0, #8
	add r1, #0x82
	str r0, [sp, #0x1c]
	mov r0, #0x81
	str r1, [sp, #0x18]
	str r0, [sp, #0x20]
	mov r0, #3
	mov r1, #2
	str r0, [sp, #0x24]
	mov r0, #1
	str r1, [sp, #0x2c]
	mov r7, #0
	mov r1, #0xe
	str r0, [sp, #0x28]
	str r7, [sp, #0x30]
	str r1, [sp, #0x34]
	tst r0, r2
	beq _022583E2
	mov r7, #0x70
_022583E2:
	mov r0, #2
	tst r0, r2
	beq _022583EC
	mov r6, #0x81
	b _022583EE
_022583EC:
	mov r6, #0
_022583EE:
	ldr r0, [sp, #0x50]
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x5c
	add r1, sp, #8
	add r2, r7, #0
	add r3, r6, #0
	bl ov22_022598F4
	str r4, [r5, #0x40]
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022583A0

	thumb_func_start ov22_02258408
ov22_02258408: ; 0x02258408
	ldr r3, _02258410 ; =ov22_02259804
	add r0, #0x5c
	bx r3
	nop
_02258410: .word ov22_02259804
	thumb_func_end ov22_02258408

	thumb_func_start ov22_02258414
ov22_02258414: ; 0x02258414
	push {r4, lr}
	add r4, r0, #0
	bne _0225841E
	bl sub_02022974
_0225841E:
	ldr r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02258414

	thumb_func_start ov22_02258424
ov22_02258424: ; 0x02258424
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02258434
	bl sub_02022974
_02258434:
	mov r0, #0xc
	mul r0, r4
	add r3, r5, r0
	add r3, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov22_02258424

	thumb_func_start ov22_0225844C
ov22_0225844C: ; 0x0225844C
	push {r4, lr}
	add r4, r3, #0
	bl ov22_02258584
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl ov22_022596EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225844C

	thumb_func_start ov22_02258460
ov22_02258460: ; 0x02258460
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	bne _0225846A
	mov r0, #1
	bx lr
_0225846A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02258460

	thumb_func_start ov22_02258470
ov22_02258470: ; 0x02258470
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0x1c]
	add r5, r0, #0
	add r0, #0xc
	bl ov22_022584F0
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ov22_022584AC
	add r0, r5, #0
	ldr r1, [r4, #0x20]
	add r0, #0x18
	bl ov22_022584F0
	add r0, r5, #0
	ldr r1, [r4, #0x24]
	add r0, #0x24
	bl ov22_022584F0
	add r5, #0x30
	add r0, r5, #0
	mov r1, #1
	bl ov22_022584F0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02258470

	thumb_func_start ov22_022584AC
ov22_022584AC: ; 0x022584AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r6, r1, #0
	cmp r4, r5
	beq _022584CC
_022584B8:
	ldr r0, [r4, #4]
	cmp r0, #2
	bhi _022584C6
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov22_02254F60
_022584C6:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _022584B8
_022584CC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022584AC

	thumb_func_start ov22_022584D0
ov22_022584D0: ; 0x022584D0
	push {r4, lr}
	add r4, r3, #0
	bl ov22_02258584
	add r1, r4, #0
	bl ov22_022584AC
	pop {r4, pc}
	thumb_func_end ov22_022584D0

	thumb_func_start ov22_022584E0
ov22_022584E0: ; 0x022584E0
	push {r4, lr}
	add r4, r1, #0
	bl ov22_0225855C
	add r1, r4, #0
	bl ov22_022584AC
	pop {r4, pc}
	thumb_func_end ov22_022584E0

	thumb_func_start ov22_022584F0
ov22_022584F0: ; 0x022584F0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r0, #0xe
	lsl r1, r4, #4
	bl sub_02018144
	str r0, [r5, #0]
	str r4, [r5, #4]
	mov r6, #0
	str r6, [r5, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _02258530
	add r4, r6, #0
	add r7, r6, #0
_02258510:
	ldr r0, [r5, #0]
	add r1, r7, #0
	add r0, r0, r4
	str r0, [r0, #8]
	ldr r0, [r5, #0]
	add r0, r0, r4
	str r0, [r0, #0xc]
	ldr r0, [r5, #0]
	add r0, r0, r4
	bl ov22_022584AC
	ldr r0, [r5, #4]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _02258510
_02258530:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022584F0

	thumb_func_start ov22_02258534
ov22_02258534: ; 0x02258534
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
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
	pop {r4, pc}
	thumb_func_end ov22_02258534

	thumb_func_start ov22_0225855C
ov22_0225855C: ; 0x0225855C
	push {r3}
	sub sp, #0xc
	ldr r2, [r0, #0]
	mov r1, #0xc
	mul r1, r2
	add r3, r0, r1
	add r3, #0xc
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp]
	lsl r0, r0, #4
	add r0, r1, r0
	add sp, #0xc
	pop {r3}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225855C

	thumb_func_start ov22_02258584
ov22_02258584: ; 0x02258584
	push {r4}
	sub sp, #0xc
	mov r3, #0xc
	mul r3, r1
	add r4, r0, r3
	add r4, #0xc
	ldmia r4!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldr r1, [sp]
	lsl r0, r2, #4
	add r0, r1, r0
	add sp, #0xc
	pop {r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02258584

	thumb_func_start ov22_022585A8
ov22_022585A8: ; 0x022585A8
	push {r4, lr}
	mov r4, #0
	bl ov22_02258584
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _022585BE
_022585B6:
	ldr r1, [r1, #8]
	add r4, r4, #1
	cmp r1, r0
	bne _022585B6
_022585BE:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022585A8

	thumb_func_start ov22_022585C4
ov22_022585C4: ; 0x022585C4
	push {r3, r4, r5, lr}
	add r5, r3, #0
	mov r4, #0
	bl ov22_02258584
	ldr r1, [r0, #8]
	cmp r1, r0
	beq _022585E4
_022585D4:
	cmp r4, r5
	bne _022585DC
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_022585DC:
	ldr r1, [r1, #8]
	add r4, r4, #1
	cmp r1, r0
	bne _022585D4
_022585E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022585C4

	thumb_func_start ov22_022585E8
ov22_022585E8: ; 0x022585E8
	push {r4, lr}
	ldr r4, [r0, #0]
	cmp r4, r2
	bne _022585FC
	mov r4, #0xc
	mul r4, r2
	add r0, r0, r4
	ldr r0, [r0, #0x14]
	cmp r3, r0
	beq _02258606
_022585FC:
	add r0, r1, #0
	mov r1, #0
	bl ov22_02254F60
	pop {r4, pc}
_02258606:
	add r0, r1, #0
	mov r1, #1
	bl ov22_02254F60
	pop {r4, pc}
	thumb_func_end ov22_022585E8

	thumb_func_start ov22_02258610
ov22_02258610: ; 0x02258610
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #9
	add r4, r2, #0
	bl _s32_div_f
	add r7, r1, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl _s32_div_f
	add r0, r6, #1
	lsl r2, r0, #3
	lsl r0, r6, #5
	add r0, r2, r0
	add r0, #0x10
	str r0, [r4, #0]
	add r0, r1, #1
	lsl r2, r0, #3
	mov r0, #0x18
	mul r0, r1
	add r0, r2, r0
	add r0, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02258610

	thumb_func_start ov22_0225864C
ov22_0225864C: ; 0x0225864C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r0, _022586C0 ; =ov22_022586C4
	mov r1, #0x30
	mov r2, #0
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	ldr r0, [sp]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x18]
	add r1, r6, #0
	str r0, [r4, #0x10]
	mov r0, #0
	str r0, [r4, #0x1c]
	add r0, r5, #0
	add r2, r7, #0
	bl ov22_022585A8
	str r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	bl ov22_022585A8
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	add r2, r1, r0
	mov r1, #0xc
	mov r0, #0xd
	mul r1, r2
	str r2, [r4, #0x2c]
	bl sub_02018144
	str r0, [r4, #0x28]
	cmp r0, #0
	bne _022586AC
	bl sub_02022974
_022586AC:
	ldr r3, [r4, #0x2c]
	mov r2, #0xc
	ldr r0, [r4, #0x28]
	mov r1, #0
	mul r2, r3
	bl memset
	mov r0, #1
	str r0, [r5, #0x3c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022586C0: .word ov22_022586C4
	thumb_func_end ov22_0225864C

	thumb_func_start ov22_022586C4
ov22_022586C4: ; 0x022586C4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #4
	bls _022586D4
	b _0225881C
_022586D4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022586E0: ; jump table
	.short _022586EA - _022586E0 - 2 ; case 0
	.short _0225873E - _022586E0 - 2 ; case 1
	.short _0225878A - _022586E0 - 2 ; case 2
	.short _022587D0 - _022586E0 - 2 ; case 3
	.short _022587E8 - _022586E0 - 2 ; case 4
_022586EA:
	mov r0, #0x83
	mvn r0, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r3, #0
	bl ov22_0225844C
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	mov r3, #1
	bl ov22_022584D0
	mov r0, #0
	str r0, [r4, #0x14]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	str r1, [sp]
	ldr r1, [r0, #0x40]
	add r1, r1, #1
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	mov r1, #0x1f
	ror r2, r1
	add r1, r3, r2
	mov r2, #2
	mov r3, #5
	bl ov22_022583A0
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov22_022588D8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	b _02258820
_0225873E:
	ldr r0, [r4, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _02258772
	add r5, r4, #0
	add r5, #0x20
_0225874A:
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	bmi _0225876A
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x20]
	bl ov22_022585C4
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov22_0225882C
_0225876A:
	ldr r0, [r4, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _0225874A
_02258772:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _02258820
	ldr r0, [r4, #0x24]
	mov r1, #2
	bl ov22_022588D8
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	b _02258820
_0225878A:
	ldr r0, [r4, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _022587BE
	add r5, r4, #0
	add r5, #0x24
_02258796:
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	bmi _022587B6
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x24]
	bl ov22_022585C4
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov22_0225882C
_022587B6:
	ldr r0, [r4, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _02258796
_022587BE:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _02258820
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x18]
	b _02258820
_022587D0:
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #3
	ble _02258820
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02258820
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
	b _02258820
_022587E8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	mov r3, #0
	bl ov22_022584D0
	mov r0, #0x83
	mvn r0, r0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	mov r3, #0
	bl ov22_0225844C
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [r0, #0x3c]
	ldr r0, [r4, #0x28]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020067D0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0225881C:
	bl sub_02022974
_02258820:
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	bl ov22_0225886C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_022586C4

	thumb_func_start ov22_0225882C
ov22_0225882C: ; 0x0225882C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	bl ov22_02258844
	str r4, [r0, #0]
	mov r1, #3
	str r1, [r0, #4]
	mov r1, #0x2c
	str r1, [r0, #8]
	pop {r4, pc}
	thumb_func_end ov22_0225882C

	thumb_func_start ov22_02258844
ov22_02258844: ; 0x02258844
	push {r3, r4}
	mov r3, #0
	cmp r1, #0
	ble _02258866
	add r4, r0, #0
_0225884E:
	ldr r2, [r4, #0]
	cmp r2, #0
	bne _0225885E
	mov r1, #0xc
	mul r1, r3
	add r0, r0, r1
	pop {r3, r4}
	bx lr
_0225885E:
	add r3, r3, #1
	add r4, #0xc
	cmp r3, r1
	blt _0225884E
_02258866:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_02258844

	thumb_func_start ov22_0225886C
ov22_0225886C: ; 0x0225886C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _0225888C
_02258878:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02258884
	add r0, r5, #0
	bl ov22_02258890
_02258884:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, r6
	blt _02258878
_0225888C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225886C

	thumb_func_start ov22_02258890
ov22_02258890: ; 0x02258890
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp]
	ldr r0, [r4, #8]
	add r2, r1, r0
	str r2, [sp]
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	bl ov22_022595F8
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _022588D4
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
_022588D4:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_02258890

	thumb_func_start ov22_022588D8
ov22_022588D8: ; 0x022588D8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl _s32_div_f
	sub r0, r4, r1
	add r0, r5, r0
	add r1, r4, #0
	bl _s32_div_f
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_022588D8