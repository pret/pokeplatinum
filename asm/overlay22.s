	.include "macros/function.inc"


	.text

	thumb_func_start ov22_02254DE0
ov22_02254DE0: ; 0x02254DE0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #8
	bl sub_02018144
	lsl r6, r5, #3
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02018144
	mov r1, #0
	add r2, r6, #0
	str r0, [r4, #0]
	bl sub_020D5124
	str r5, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02254DE0

	thumb_func_start ov22_02254E0C
ov22_02254E0C: ; 0x02254E0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02254E0C

	thumb_func_start ov22_02254E20
ov22_02254E20: ; 0x02254E20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov22_02254FE0
	add r4, r0, #0
	bne _02254E32
	bl sub_02022974
_02254E32:
	ldr r0, [r5, #0x18]
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov22_0225500C
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254E20

	thumb_func_start ov22_02254E44
ov22_02254E44: ; 0x02254E44
	push {r3, lr}
	add r1, sp, #0
	bl ov22_02255040
	add r0, sp, #0
	bl sub_02022734
	pop {r3, pc}
	thumb_func_end ov22_02254E44

	thumb_func_start ov22_02254E54
ov22_02254E54: ; 0x02254E54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov22_02254E44
	cmp r0, #0
	bne _02254E6E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02254E6E:
	add r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02254F00
	ldr r0, _02254ED8 ; =0x021BF6BC
	ldr r1, [sp, #8]
	ldrh r2, [r0, #0x1c]
	sub r1, r2, r1
	str r1, [r6, #0]
	ldrh r1, [r0, #0x1e]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	ldr r0, [sp]
	sub r4, r1, #4
	str r1, [r0, #0]
	add r0, r1, #4
	cmp r4, r0
	bge _02254ED2
_02254E94:
	cmp r4, #0
	blt _02254EC6
	ldr r0, [r6, #0]
	sub r5, r0, #4
	add r0, r0, #4
	cmp r5, r0
	bge _02254EC6
_02254EA2:
	cmp r5, #0
	blt _02254EBC
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov22_02255420
	cmp r0, #0
	bne _02254EBC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02254EBC:
	ldr r0, [r6, #0]
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, r0
	blt _02254EA2
_02254EC6:
	ldr r0, [sp]
	add r4, r4, #1
	ldr r0, [r0, #0]
	add r0, r0, #4
	cmp r4, r0
	blt _02254E94
_02254ED2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02254ED8: .word 0x021BF6BC
	thumb_func_end ov22_02254E54

	thumb_func_start ov22_02254EDC
ov22_02254EDC: ; 0x02254EDC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #0
	bl ov22_02255040
	add r0, sp, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02022830
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02254EDC

	thumb_func_start ov22_02254EF4
ov22_02254EF4: ; 0x02254EF4
	ldr r3, _02254EFC ; =sub_02015254
	ldr r0, [r0, #4]
	bx r3
	nop
_02254EFC: .word sub_02015254
	thumb_func_end ov22_02254EF4

	thumb_func_start ov22_02254F00
ov22_02254F00: ; 0x02254F00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0201525C
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5, #0]
	mov r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254F00

	thumb_func_start ov22_02254F30
ov22_02254F30: ; 0x02254F30
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02015280
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5, #0]
	mov r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254F30

	thumb_func_start ov22_02254F60
ov22_02254F60: ; 0x02254F60
	ldr r3, _02254F68 ; =sub_02015240
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F68: .word sub_02015240
	thumb_func_end ov22_02254F60

	thumb_func_start ov22_02254F6C
ov22_02254F6C: ; 0x02254F6C
	ldr r3, _02254F74 ; =sub_0201528C
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F74: .word sub_0201528C
	thumb_func_end ov22_02254F6C

	thumb_func_start ov22_02254F78
ov22_02254F78: ; 0x02254F78
	ldr r3, _02254F80 ; =sub_02015290
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F80: .word sub_02015290
	thumb_func_end ov22_02254F78

	thumb_func_start ov22_02254F84
ov22_02254F84: ; 0x02254F84
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02254F30
	ldr r0, [sp, #4]
	cmp r0, #0x10
	beq _02254FA4
	cmp r0, #0x20
	beq _02254FAA
	cmp r0, #0x40
	beq _02254FB0
	b _02254FB4
_02254FA4:
	mov r0, #0
	str r0, [r5, #0]
	b _02254FB4
_02254FAA:
	mov r0, #0xa
	str r0, [r5, #0]
	b _02254FB4
_02254FB0:
	mov r0, #0x14
	str r0, [r5, #0]
_02254FB4:
	ldr r0, [sp]
	cmp r0, #0x10
	beq _02254FC6
	cmp r0, #0x20
	beq _02254FCE
	cmp r0, #0x40
	beq _02254FD6
	add sp, #8
	pop {r3, r4, r5, pc}
_02254FC6:
	mov r0, #0
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02254FCE:
	mov r0, #0xa
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02254FD6:
	mov r0, #0x14
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254F84

	thumb_func_start ov22_02254FE0
ov22_02254FE0: ; 0x02254FE0
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _02255004
	ldr r3, [r0, #0]
	add r2, r3, #0
_02254FEE:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _02254FFC
	lsl r0, r1, #3
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02254FFC:
	add r1, r1, #1
	add r2, #8
	cmp r1, r4
	blt _02254FEE
_02255004:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02254FE0

	thumb_func_start ov22_0225500C
ov22_0225500C: ; 0x0225500C
	push {r3, lr}
	sub sp, #0x20
	ldr r1, [r0, #4]
	mov r3, #0
	str r1, [sp]
	ldr r1, [r0, #8]
	str r1, [sp, #4]
	ldr r1, [r0, #0xc]
	str r1, [sp, #8]
	ldr r2, [r0, #0x10]
	add r1, sp, #0
	strh r2, [r1, #0xc]
	ldr r2, [r0, #0x14]
	strh r2, [r1, #0xe]
	strh r3, [r1, #0x10]
	mov r2, #0x1f
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	strh r0, [r1, #0x1c]
	add r0, sp, #0
	bl sub_02015214
	add sp, #0x20
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225500C

	thumb_func_start ov22_02255040
ov22_02255040: ; 0x02255040
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl sub_0201525C
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #4]
	bl sub_02015280
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	mov r0, #0xe
	ldrsh r2, [r1, r0]
	mov r0, #0xa
	strb r2, [r4]
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strb r0, [r4, #1]
	mov r0, #0xc
	ldrsh r2, [r1, r0]
	mov r0, #8
	strb r2, [r4, #2]
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strb r0, [r4, #3]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255040

	thumb_func_start ov22_02255094
ov22_02255094: ; 0x02255094
	push {r3, lr}
	bl ov22_02255634
	bl ov22_02255654
	bl ov22_022556DC
	ldr r0, _022550B0 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	pop {r3, pc}
	nop
_022550B0: .word 0x021BF6DC
	thumb_func_end ov22_02255094

	thumb_func_start ov22_022550B4
ov22_022550B4: ; 0x022550B4
	push {r3, lr}
	ldr r0, _022550D0 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl ov22_02255738
	bl ov22_0225572C
	bl sub_020BED0C
	pop {r3, pc}
	nop
_022550D0: .word 0x021BF6DC
	thumb_func_end ov22_022550B4

	thumb_func_start ov22_022550D4
ov22_022550D4: ; 0x022550D4
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _02255130 ; =0x0225BD98
	add r2, sp, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x19
	mov r1, #0xe
	bl sub_02006C24
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov22_02255748
	mov r2, #0xa
	add r0, r4, #0
	mov r1, #0xe
	lsl r2, r2, #0xa
	mov r3, #0x20
	bl ov22_02255C24
	add r0, r4, #0
	bl ov22_022559B4
	add r0, r4, #0
	mov r1, #0xd
	bl ov22_02255BF4
	add r0, r4, #0
	bl ov22_022559F8
	mov r0, #0xe
	bl sub_02018340
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl ov22_02255860
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02255130: .word 0x0225BD98
	thumb_func_end ov22_022550D4

	thumb_func_start ov22_02255134
ov22_02255134: ; 0x02255134
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02255C14
	add r0, r4, #0
	bl ov22_02255784
	add r0, r4, #0
	bl ov22_02255984
	ldr r0, [r4, #0x40]
	bl sub_020181C4
	add r0, r4, #0
	bl ov22_02255C90
	add r0, r4, #0
	bl ov22_02255A98
	add r0, r4, #0
	bl ov22_022559E0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ov22_02255134

	thumb_func_start ov22_02255180
ov22_02255180: ; 0x02255180
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020A73C0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02255198
	add r0, r4, #0
	bl ov22_02255794
_02255198:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _022551A4
	ldr r0, [r4, #0x20]
	bl sub_02007768
_022551A4:
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add r0, r4, #0
	bl ov22_02255AC0
	pop {r4, pc}
	thumb_func_end ov22_02255180

	thumb_func_start ov22_022551B4
ov22_022551B4: ; 0x022551B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	add r5, r0, #0
	bl ov22_022557A0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ov22_02255800
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_022551B4

	thumb_func_start ov22_022551D0
ov22_022551D0: ; 0x022551D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_0201517C
	ldr r0, [r4, #0]
	bl sub_020151EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022551D0

	thumb_func_start ov22_022551E4
ov22_022551E4: ; 0x022551E4
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r4, r2, #0
	ldr r2, [r5, #0x48]
	add r6, r3, #0
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	add r3, r1, #0
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x50]
	str r2, [sp, #0x1c]
	ldr r2, [r5, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #0x44]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x34]
	lsl r0, r6, #0xc
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x84]
	str r0, [sp, #0x44]
	mov r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl sub_02021B90
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022551E4

	thumb_func_start ov22_02255248
ov22_02255248: ; 0x02255248
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x48]
	bl sub_02009A4C
	bl sub_0200A3DC
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255248

	thumb_func_start ov22_02255268
ov22_02255268: ; 0x02255268
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	mov r4, #0xe
	str r4, [sp, #0xc]
	ldr r0, [r0, #0x4c]
	bl sub_02009B04
	bl sub_0200A640
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255268

	thumb_func_start ov22_0225528C
ov22_0225528C: ; 0x0225528C
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x50]
	bl sub_02009BC4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225528C

	thumb_func_start ov22_022552A8
ov22_022552A8: ; 0x022552A8
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x54]
	bl sub_02009BC4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022552A8

	thumb_func_start ov22_022552C4
ov22_022552C4: ; 0x022552C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x48]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552C4

	thumb_func_start ov22_022552D8
ov22_022552D8: ; 0x022552D8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x4c]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552D8

	thumb_func_start ov22_022552EC
ov22_022552EC: ; 0x022552EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x50]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_022552EC

	thumb_func_start ov22_02255300
ov22_02255300: ; 0x02255300
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02009DC8
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl sub_02009D68
	pop {r4, pc}
	thumb_func_end ov22_02255300

	thumb_func_start ov22_02255314
ov22_02255314: ; 0x02255314
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x76
	mov r2, #0x13
	mov r3, #0xe
	bl ov22_02255CB8
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255ACC
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255B50
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255314

	thumb_func_start ov22_02255338
ov22_02255338: ; 0x02255338
	ldr r3, _0225533C ; =ov22_02255D0C
	bx r3
	; .align 2, 0
_0225533C: .word ov22_02255D0C
	thumb_func_end ov22_02255338

	thumb_func_start ov22_02255340
ov22_02255340: ; 0x02255340
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	add r6, r1, #0
	add r5, r2, #0
	bl sub_02022A1C
	ldr r1, [r4, #0x38]
	lsl r5, r5, #2
	add r0, r6, #0
	add r1, r1, r5
	bl sub_020A7118
	ldr r0, [r4, #0x38]
	ldr r0, [r0, r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02255340

	thumb_func_start ov22_02255360
ov22_02255360: ; 0x02255360
	push {r3, r4}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0225538C ; =0xFFFF1FFF
	add r3, r0, #0
	and r1, r2
	str r1, [r0, #0]
	add r3, #8
	ldrh r4, [r3]
	mov r2, #3
	mov r1, #1
	bic r4, r2
	orr r1, r4
	add r0, #0xa
	strh r1, [r3]
	ldrh r1, [r0]
	bic r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_0225538C: .word 0xFFFF1FFF
	thumb_func_end ov22_02255360

	thumb_func_start ov22_02255390
ov22_02255390: ; 0x02255390
	push {r3, r4}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _022553EC ; =0xFFFF1FFF
	add r3, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0, #0]
	add r3, #0x48
	ldrh r4, [r3]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r3, r0, #0
	add r3, #0x4a
	ldrh r4, [r3]
	mov r1, #0x12
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r1, r0, #0
	ldr r2, _022553F0 ; =0x00000AF6
	add r1, #0x40
	strh r2, [r1]
	add r1, r0, #0
	ldr r2, _022553F4 ; =0x0000128F
	add r1, #0x44
	strh r2, [r1]
	add r2, r0, #0
	add r2, #8
	ldrh r3, [r2]
	mov r1, #3
	add r0, #0xa
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
_022553EC: .word 0xFFFF1FFF
_022553F0: .word 0x00000AF6
_022553F4: .word 0x0000128F
	thumb_func_end ov22_02255390

	thumb_func_start ov22_022553F8
ov22_022553F8: ; 0x022553F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl sub_0201C2B8
	ldr r0, [r4, #0x20]
	bl sub_02008A94
	bl sub_0200A858
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022553F8

	thumb_func_start ov22_02255410
ov22_02255410: ; 0x02255410
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0x76
	mov r2, #0x13
	bl ov22_02255CB8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02255410

	thumb_func_start ov22_02255420
ov22_02255420: ; 0x02255420
	push {r4, r5}
	ldrh r5, [r0, #2]
	ldrh r4, [r0]
	lsl r5, r5, #3
	cmp r1, #0
	blt _0225543A
	cmp r2, #0
	blt _0225543A
	cmp r1, r5
	bge _0225543A
	lsl r4, r4, #3
	cmp r2, r4
	blt _02255440
_0225543A:
	mov r0, #2
	pop {r4, r5}
	bx lr
_02255440:
	add r4, r2, #0
	mul r4, r5
	add r4, r1, r4
	lsr r5, r4, #0x1f
	lsl r2, r4, #0x1d
	sub r2, r2, r5
	mov r1, #0x1d
	ror r2, r1
	add r1, r5, r2
	lsl r2, r1, #2
	add r1, r3, #0
	ldr r3, [r0, #0x14]
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r0, r0, #3
	lsl r0, r0, #2
	ldr r3, [r3, r0]
	mov r0, #0xf
	lsl r0, r2
	lsl r1, r2
	and r0, r3
	cmp r1, r0
	bne _02255476
	mov r0, #1
	pop {r4, r5}
	bx lr
_02255476:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov22_02255420

	thumb_func_start ov22_0225547C
ov22_0225547C: ; 0x0225547C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov22_02255748
	mov r2, #0xa
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0xa
	mov r3, #0x20
	bl ov22_02255C24
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl sub_02008B2C
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255BF4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225547C

	thumb_func_start ov22_022554A8
ov22_022554A8: ; 0x022554A8
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r3, _022554F4 ; =0x0225BDFC
	add r5, r0, #0
	str r1, [r5, #0x40]
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	ldr r0, [r5, #0x40]
	bl sub_02019044
	ldr r0, [r5, #0x40]
	mov r1, #2
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl sub_02019690
	ldr r0, [r5, #0x40]
	mov r1, #2
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_022554F4: .word 0x0225BDFC
	thumb_func_end ov22_022554A8

	thumb_func_start ov22_022554F8
ov22_022554F8: ; 0x022554F8
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02255C14
	add r0, r4, #0
	bl ov22_02255784
	add r0, r4, #0
	bl ov22_02255C90
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022554F8

	thumb_func_start ov22_02255524
ov22_02255524: ; 0x02255524
	ldr r3, _0225552C ; =sub_02019044
	ldr r0, [r0, #0x40]
	mov r1, #2
	bx r3
	; .align 2, 0
_0225552C: .word sub_02019044
	thumb_func_end ov22_02255524

	thumb_func_start ov22_02255530
ov22_02255530: ; 0x02255530
	ldr r3, _02255538 ; =sub_02008A94
	ldr r0, [r0, #0x20]
	bx r3
	nop
_02255538: .word sub_02008A94
	thumb_func_end ov22_02255530

	thumb_func_start ov22_0225553C
ov22_0225553C: ; 0x0225553C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _022555C0 ; =0x04000454
	str r3, [sp]
	mov r1, #0
	str r1, [r0, #0]
	sub r0, #0x10
	add r6, r2, #0
	ldr r7, [sp, #0x18]
	str r1, [r0, #0]
	bl sub_020A73C0
	ldr r1, _022555C4 ; =0x04000470
	lsl r0, r4, #0xc
	str r0, [r1, #0]
	lsl r0, r6, #0xc
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r1, _022555C8 ; =0x020F983C
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl sub_020C0078
	ldr r2, [r7, #8]
	ldr r1, [r7, #4]
	ldr r3, [r7, #0]
	ldr r0, _022555CC ; =0x0400046C
	str r3, [r0, #0]
	str r1, [r0, #0]
	neg r1, r4
	str r2, [r0, #0]
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	neg r1, r6
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #4]
	sub r0, #0x28
	str r1, [r0, #0]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _022555A8
	add r0, r5, #0
	bl ov22_02255794
_022555A8:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _022555B4
	ldr r0, [r5, #0x20]
	bl sub_02007768
_022555B4:
	ldr r0, _022555D0 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	str r1, [r0, #0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022555C0: .word 0x04000454
_022555C4: .word 0x04000470
_022555C8: .word 0x020F983C
_022555CC: .word 0x0400046C
_022555D0: .word 0x04000448
	thumb_func_end ov22_0225553C

	thumb_func_start ov22_022555D4
ov22_022555D4: ; 0x022555D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x19
	mov r1, #0xe
	bl sub_02006C24
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov22_022559F8
	mov r0, #0xe
	bl sub_02018340
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl ov22_02255860
	pop {r4, pc}
	thumb_func_end ov22_022555D4

	thumb_func_start ov22_022555FC
ov22_022555FC: ; 0x022555FC
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02255984
	ldr r0, [r4, #0x40]
	bl sub_020181C4
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	add r0, r4, #0
	bl ov22_02255A98
	pop {r4, pc}
	thumb_func_end ov22_022555FC

	thumb_func_start ov22_0225561C
ov22_0225561C: ; 0x0225561C
	push {r3, lr}
	ldr r0, [r0, #0x40]
	bl sub_0201C2B8
	bl sub_0200A858
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225561C

	thumb_func_start ov22_0225562C
ov22_0225562C: ; 0x0225562C
	ldr r3, _02255630 ; =ov22_02255AC0
	bx r3
	; .align 2, 0
_02255630: .word ov22_02255AC0
	thumb_func_end ov22_0225562C

	thumb_func_start ov22_02255634
ov22_02255634: ; 0x02255634
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02255650 ; =0x0225BE50
	add r3, sp, #0
	mov r2, #5
_0225563E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225563E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02255650: .word 0x0225BE50
	thumb_func_end ov22_02255634

	thumb_func_start ov22_02255654
ov22_02255654: ; 0x02255654
	push {r3, lr}
	bl sub_020B28CC
	bl sub_020BFB4C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _022556C8 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	ldr r2, _022556CC ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _022556D0 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r2, _022556D4 ; =0x04000540
	mov r0, #2
	ldr r1, _022556D8 ; =0xBFFF0000
	str r0, [r2, #0]
	str r1, [r2, #0x40]
	mov r1, #1
	bl sub_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl sub_020A5D88
	pop {r3, pc}
	; .align 2, 0
_022556C8: .word 0x04000008
_022556CC: .word 0xFFFFCFFD
_022556D0: .word 0x0000CFFB
_022556D4: .word 0x04000540
_022556D8: .word 0xBFFF0000
	thumb_func_end ov22_02255654

	thumb_func_start ov22_022556DC
ov22_022556DC: ; 0x022556DC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02255724 ; =0x0225BD78
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02255728 ; =0xFFCFFFEF
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2, #0]
	bl sub_020A7944
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #0x1f
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x13
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02255724: .word 0x0225BD78
_02255728: .word 0xFFCFFFEF
	thumb_func_end ov22_022556DC

	thumb_func_start ov22_0225572C
ov22_0225572C: ; 0x0225572C
	push {r3, lr}
	bl sub_020A5B1C
	bl sub_020A5F50
	pop {r3, pc}
	thumb_func_end ov22_0225572C

	thumb_func_start ov22_02255738
ov22_02255738: ; 0x02255738
	push {r3, lr}
	bl sub_0201FF00
	bl sub_0201FF68
	bl sub_020A7944
	pop {r3, pc}
	thumb_func_end ov22_02255738

	thumb_func_start ov22_02255748
ov22_02255748: ; 0x02255748
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02015064
	str r0, [r5, #0]
	mov r1, #0x76
	ldr r0, [r4, #0xc]
	lsl r1, r1, #2
	bl sub_02018144
	str r0, [r5, #4]
	mov r0, #0x76
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #0x4c
	bl sub_02018144
	str r0, [r5, #0x10]
	mov r0, #0x13
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02255748

	thumb_func_start ov22_02255784
ov22_02255784: ; 0x02255784
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020150A8
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov22_02255784

	thumb_func_start ov22_02255794
ov22_02255794: ; 0x02255794
	ldr r3, _0225579C ; =sub_020150EC
	ldr r0, [r0, #0]
	bx r3
	nop
_0225579C: .word sub_020150EC
	thumb_func_end ov22_02255794

	thumb_func_start ov22_022557A0
ov22_022557A0: ; 0x022557A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r2, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _022557FC
	add r7, r5, #0
	add r6, r4, #0
	add r7, #0xc
_022557BA:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _022557C6
	bl sub_02022974
_022557C6:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022557DC
	add r0, r6, #0
	bl sub_02015128
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	b _022557E6
_022557DC:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #4]
	lsl r2, r1, #2
	mov r1, #0
	str r1, [r0, r2]
_022557E6:
	ldr r0, [r7, #0]
	add r4, #8
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r0, [sp, #4]
	add r6, #8
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _022557BA
_022557FC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022557A0

	thumb_func_start ov22_02255800
ov22_02255800: ; 0x02255800
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r2, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _0225585C
	add r7, r5, #0
	add r6, r4, #0
	add r7, #0x18
_0225581A:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _02255826
	bl sub_02022974
_02255826:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225583C
	add r0, r6, #0
	bl sub_020151A4
	ldr r2, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsl r2, r2, #2
	str r0, [r1, r2]
	b _02255846
_0225583C:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	lsl r2, r1, #2
	mov r1, #0
	str r1, [r0, r2]
_02255846:
	ldr r0, [r7, #0]
	add r4, #0xc
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r0, [sp, #4]
	add r6, #0xc
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0225581A
_0225585C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02255800

	thumb_func_start ov22_02255860
ov22_02255860: ; 0x02255860
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _02255970 ; =0x0225BDC4
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02255974 ; =0x0225BDE0
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02255978 ; =0x0225BE18
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _0225597C ; =0x0225BDA8
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _02255980 ; =0x0225BE34
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl sub_020183C4
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl sub_02019690
	ldr r0, [r4, #0x40]
	mov r1, #5
	bl sub_02019EBC
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_02255970: .word 0x0225BDC4
_02255974: .word 0x0225BDE0
_02255978: .word 0x0225BE18
_0225597C: .word 0x0225BDA8
_02255980: .word 0x0225BE34
	thumb_func_end ov22_02255860

	thumb_func_start ov22_02255984
ov22_02255984: ; 0x02255984
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x40]
	mov r1, #5
	bl sub_02019044
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255984

	thumb_func_start ov22_022559B4
ov22_022559B4: ; 0x022559B4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x77
	mov r1, #0xe
	bl sub_0202298C
	mov r1, #0x77
	str r0, [r4, #0x34]
	mov r0, #0xe
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x77
	mov r1, #0
	lsl r2, r2, #2
	str r0, [r4, #0x38]
	bl sub_020D5124
	mov r0, #0x77
	str r0, [r4, #0x3c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022559B4

	thumb_func_start ov22_022559E0
ov22_022559E0: ; 0x022559E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_020181C4
	ldr r0, [r4, #0x34]
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0x3c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022559E0

	thumb_func_start ov22_022559F8
ov22_022559F8: ; 0x022559F8
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _02255A94 ; =0x0225BD88
	add r3, sp, #0x14
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	mov r0, #5
	mov r1, #0xe
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #0xe
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r4, #0
	mov r0, #0x30
	add r1, #0x58
	mov r2, #0xe
	bl sub_020095C4
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r2, #2
	add r0, #0x58
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r0, #8
	mov r1, #0
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x48]
	mov r0, #5
	mov r1, #1
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x4c]
	mov r0, #0x30
	mov r1, #2
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x50]
	mov r0, #0x30
	mov r1, #3
	mov r2, #0xe
	bl sub_02009714
	str r0, [r4, #0x54]
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02255A94: .word 0x0225BD88
	thumb_func_end ov22_022559F8

	thumb_func_start ov22_02255A98
ov22_02255A98: ; 0x02255A98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x44]
	bl sub_02021964
	mov r4, #0
_02255AA4:
	ldr r0, [r5, #0x48]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02255AA4
	bl sub_0201E958
	bl sub_0201F8B4
	bl sub_0200A878
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255A98

	thumb_func_start ov22_02255AC0
ov22_02255AC0: ; 0x02255AC0
	ldr r3, _02255AC8 ; =sub_020219F8
	ldr r0, [r0, #0x44]
	bx r3
	nop
_02255AC8: .word sub_020219F8
	thumb_func_end ov22_02255AC0

	thumb_func_start ov22_02255ACC
ov22_02255ACC: ; 0x02255ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r4, #0
	add r6, r0, #0
	add r7, r1, #0
	add r5, r4, #0
_02255AD8:
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r4, #1
	mov r2, #0
	mov r3, #0xe
	bl sub_0200723C
	str r0, [sp, #4]
	cmp r0, #0
	bne _02255AF6
	bl sub_02022974
_02255AF6:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	bl ov22_02255340
	ldr r1, [r7, #0]
	add r4, r4, #1
	add r1, r1, r5
	str r0, [r1, #4]
	ldr r1, [r6, #0]
	ldr r0, [r7, #0]
	str r1, [r0, r5]
	add r5, #8
	cmp r4, #0x64
	blt _02255AD8
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	mov r1, #0
	ldr r0, [r6, r0]
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200723C
	add r4, r0, #0
	ldr r0, [r7, #0x14]
	add r1, r4, #0
	mov r2, #0
	bl sub_02022A1C
	ldr r1, [r7, #8]
	add r0, r4, #0
	add r1, r1, #4
	bl sub_020A71B0
	ldr r1, [r6, #0]
	ldr r0, [r7, #8]
	str r1, [r0, #0]
	ldr r0, [r7, #8]
	mov r1, #3
	str r1, [r0, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02255ACC

	thumb_func_start ov22_02255B50
ov22_02255B50: ; 0x02255B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x87
	add r4, r1, #0
	mov r6, #0
	str r0, [sp, #8]
_02255B5E:
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	add r1, r6, #0
	ldr r0, [r5, r0]
	add r1, #0xce
	mov r2, #0
	mov r3, #0xe
	bl sub_0200723C
	add r2, r6, #0
	add r1, r0, #0
	add r2, #0x64
	add r0, r5, #0
	lsl r7, r2, #3
	bl ov22_02255340
	ldr r1, [r4, #0]
	mov r2, #0
	add r1, r1, r7
	str r0, [r1, #4]
	ldr r1, [r5, #0]
	ldr r0, [r4, #0]
	mov r3, #0xe
	str r1, [r0, r7]
	add r0, r6, #1
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [sp, #8]
	bl sub_0200723C
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	bl sub_02022A1C
	ldr r1, [sp, #4]
	mov r0, #0xc
	add r7, r1, #0
	mul r7, r0
	ldr r1, [r4, #8]
	ldr r0, [sp, #0xc]
	add r1, r1, r7
	add r1, r1, #4
	bl sub_020A71B0
	ldr r0, [r4, #8]
	add r0, r0, r7
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _02255BD4
	bl sub_02022974
_02255BD4:
	ldr r1, [r5, #0]
	ldr r0, [r4, #8]
	add r6, r6, #1
	str r1, [r0, r7]
	ldr r0, [r4, #8]
	add r1, r0, r7
	mov r0, #1
	str r0, [r1, #8]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r6, #0x12
	blt _02255B5E
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02255B50

	thumb_func_start ov22_02255BF4
ov22_02255BF4: ; 0x02255BF4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0
	mov r0, #6
	add r3, r1, #0
	str r2, [sp]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0xeb
	bl sub_0200723C
	str r0, [r4, #0x30]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255BF4

	thumb_func_start ov22_02255C14
ov22_02255C14: ; 0x02255C14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
	thumb_func_end ov22_02255C14

	thumb_func_start ov22_02255C24
ov22_02255C24: ; 0x02255C24
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0200762C
	str r0, [r5, #0x20]
	ldr r3, _02255C80 ; =0x02100DEC
	mov r1, #0
	ldr r3, [r3, #0]
	add r0, r4, #0
	add r2, r1, #0
	blx r3
	str r0, [r5, #0x24]
	ldr r3, _02255C84 ; =0x02100DF4
	add r0, r6, #0
	ldr r3, [r3, #0]
	mov r1, #0
	mov r2, #1
	blx r3
	str r0, [r5, #0x28]
	ldr r3, [r5, #0x24]
	ldr r2, _02255C88 ; =0x7FFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #4
	bl sub_02008A78
	ldr r3, [r5, #0x28]
	ldr r2, _02255C8C ; =0xFFFF0000
	lsl r1, r3, #0x10
	and r2, r3
	lsr r2, r2, #0x10
	ldr r0, [r5, #0x20]
	lsr r1, r1, #0xd
	lsl r2, r2, #3
	bl sub_02008A84
	mov r0, #1
	str r0, [r5, #0x2c]
	pop {r4, r5, r6, pc}
	nop
_02255C80: .word 0x02100DEC
_02255C84: .word 0x02100DF4
_02255C88: .word 0x7FFF0000
_02255C8C: .word 0xFFFF0000
	thumb_func_end ov22_02255C24

	thumb_func_start ov22_02255C90
ov22_02255C90: ; 0x02255C90
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl sub_02007B6C
	ldr r1, _02255CB0 ; =0x02100DF0
	ldr r0, [r4, #0x24]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _02255CB4 ; =0x02100DF8
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	; .align 2, 0
_02255CB0: .word 0x02100DF0
_02255CB4: .word 0x02100DF8
	thumb_func_end ov22_02255C90

	thumb_func_start ov22_02255CB8
ov22_02255CB8: ; 0x02255CB8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #3
	str r0, [sp]
	add r7, r3, #0
	ldr r1, [sp]
	add r0, r7, #0
	add r6, r2, #0
	bl sub_02018144
	ldr r2, [sp]
	mov r1, #0
	str r0, [r5, #0]
	bl sub_020D5124
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r5, #0x10]
	str r4, [r5, #4]
	mov r0, #0xc
	add r4, r6, #0
	mul r4, r0
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02018144
	mov r1, #0
	add r2, r4, #0
	str r0, [r5, #8]
	bl sub_020D5124
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0202298C
	str r0, [r5, #0x14]
	str r6, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02255CB8

	thumb_func_start ov22_02255D0C
ov22_02255D0C: ; 0x02255D0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02255D1E
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0x10]
_02255D1E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02255D2C
	bl sub_020229D8
	mov r0, #0
	str r0, [r4, #0x14]
_02255D2C:
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02255D0C

	thumb_func_start ov22_02255D44
ov22_02255D44: ; 0x02255D44
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #2
	add r4, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl sub_02017FC8
	ldr r1, _02255E40 ; =0x000006E4
	add r0, r4, #0
	mov r2, #0xd
	bl sub_0200681C
	ldr r2, _02255E40 ; =0x000006E4
	mov r1, #0
	add r5, r0, #0
	bl sub_020D5124
	ldr r0, _02255E44 ; =ov22_02256940
	add r1, r5, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r4, #0
	bl sub_02006840
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	ldr r0, _02255E48 ; =0x000006D4
	str r1, [r5, r0]
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r4, #8]
	add r1, r5, r1
	bl ov22_0225894C
	add r0, r5, #0
	bl ov22_022566C0
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r5, r1
	sub r1, #0x8d
	mov r2, #0xd
	bl ov22_02259484
	mov r0, #0xaf
	lsl r0, r0, #2
	mov r1, #0xd
	bl ov22_02254DE0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [r4, #0]
	add r0, r5, #0
	mov r2, #0xa
	mov r3, #0
	bl ov22_02256708
	add r0, r5, #0
	bl ov22_022567FC
	add r0, r5, #0
	mov r1, #0
	bl ov22_02256948
	add r0, r5, #0
	bl ov22_0225699C
	ldr r1, [r4, #0xc]
	add r0, r5, #0
	bl ov22_02256BAC
	mov r0, #0x56
	lsl r0, r0, #4
	add r1, r5, r0
	mov r2, #0xfd
	str r1, [sp]
	mov r1, #1
	sub r0, #0xc8
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r1, r5, r2
	sub r2, #0x8c
	add r0, r5, r0
	add r2, r5, r2
	add r3, r5, #0
	bl ov22_022589E0
	mov r0, #0xd
	bl sub_02015920
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xd
	mov r1, #1
	bl sub_0201A778
	ldr r2, _02255E4C ; =0x000006B4
	mov r1, #0
	str r0, [r5, r2]
	sub r2, #0xc
	str r1, [r5, r2]
	mov r0, #0x35
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02255E40: .word 0x000006E4
_02255E44: .word ov22_02256940
_02255E48: .word 0x000006D4
_02255E4C: .word 0x000006B4
	thumb_func_end ov22_02255D44

	thumb_func_start ov22_02255E50
ov22_02255E50: ; 0x02255E50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r7, #0
	mov r6, #0
	bl sub_02006840
	ldr r1, [r5, #0]
	cmp r1, #0xc
	bhi _02255F1E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02255E78: ; jump table
	.short _02255E92 - _02255E78 - 2 ; case 0
	.short _02255E92 - _02255E78 - 2 ; case 1
	.short _02255EAE - _02255E78 - 2 ; case 2
	.short _02255EBE - _02255E78 - 2 ; case 3
	.short _02255EEC - _02255E78 - 2 ; case 4
	.short _02255F0E - _02255E78 - 2 ; case 5
	.short _02255F3E - _02255E78 - 2 ; case 6
	.short _02255F74 - _02255E78 - 2 ; case 7
	.short _02255F9A - _02255E78 - 2 ; case 8
	.short _02255FDA - _02255E78 - 2 ; case 9
	.short _02256012 - _02255E78 - 2 ; case 10
	.short _02256030 - _02255E78 - 2 ; case 11
	.short _0225604E - _02255E78 - 2 ; case 12
_02255E92:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #5
	add r2, r1, #0
	add r3, r6, #0
	bl sub_0200F174
	mov r0, #2
	str r0, [r5, #0]
	b _0225606A
_02255EAE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02255F1E
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255EBE:
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _02255EE6
	mov r0, #1
	bl sub_02002B20
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r2, _02256078 ; =0x00000181
	add r0, r4, r0
	mov r1, #0x1a
	mov r3, #0x2f
	bl ov22_0225A660
	ldr r1, _0225607C ; =0x000006D8
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255EE6:
	mov r0, #6
	str r0, [r5, #0]
	b _0225606A
_02255EEC:
	ldr r0, _0225607C ; =0x000006D8
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02255F1E
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A6A0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255F0E:
	ldr r0, _02256080 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	and r1, r0
	ldr r0, _02256084 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	orr r0, r1
	bne _02255F20
_02255F1E:
	b _0225606A
_02255F20:
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r2, _02256078 ; =0x00000181
	add r0, r4, r0
	mov r1, #0x1a
	mov r3, #0x30
	bl ov22_0225A628
	add r0, r6, #0
	bl sub_02002B20
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_02255F3E:
	ldr r1, _02256088 ; =0x000006A8
	ldr r0, [r4, r1]
	cmp r0, #3
	bne _02255F54
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov22_02256C48
	mov r0, #7
	str r0, [r5, #0]
_02255F54:
	ldr r0, _0225608C ; =0x00000498
	add r0, r4, r0
	bl ov22_0225890C
	add r0, r4, #0
	bl ov22_02257564
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A610
	add r0, r4, #0
	bl ov22_02256AC4
	b _0225606A
_02255F74:
	ldr r0, _02256090 ; =0x000006AC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225606A
	add r1, r6, #0
	str r1, [r4, r0]
	mov r1, #8
	str r1, [r5, #0]
	mov r1, #4
	sub r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02256094 ; =0x0000047C
	mov r2, #0xe
	add r0, r4, r1
	sub r1, #0x88
	add r1, r4, r1
	bl ov22_0225AF44
	b _0225606A
_02255F9A:
	ldr r1, _02256088 ; =0x000006A8
	ldr r0, [r4, r1]
	cmp r0, #9
	bne _02255FB2
	add r1, r1, #4
	add r0, r4, #0
	add r1, r4, r1
	bl ov22_02256DB8
	mov r0, #0xa
	str r0, [r5, #0]
	b _0225606A
_02255FB2:
	cmp r0, #8
	bne _02255FC6
	mov r0, #9
	str r0, [r5, #0]
	mov r0, #5
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov22_022575B4
	b _0225606A
_02255FC6:
	add r0, r4, #0
	bl ov22_02257278
	ldr r1, _02256088 ; =0x000006A8
	str r0, [r4, r1]
	ldr r0, _02256094 ; =0x0000047C
	add r0, r4, r0
	bl ov22_0225AF68
	b _0225606A
_02255FDA:
	ldr r0, _02256088 ; =0x000006A8
	ldr r1, [r4, r0]
	cmp r1, #6
	bne _02255FEE
	mov r1, #1
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5, #0]
	b _0225606A
_02255FEE:
	cmp r1, #7
	bne _02255FFE
	add r1, r6, #0
	add r0, #0x10
	str r1, [r4, r0]
	mov r0, #0xb
	str r0, [r5, #0]
	b _0225606A
_02255FFE:
	add r0, r4, #0
	bl ov22_02257624
	ldr r1, _02256088 ; =0x000006A8
	str r0, [r4, r1]
	ldr r0, _02256094 ; =0x0000047C
	add r0, r4, r0
	bl ov22_0225AF68
	b _0225606A
_02256012:
	ldr r0, _02256090 ; =0x000006AC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0225606A
	add r2, r6, #0
	str r2, [r4, r0]
	mov r1, #6
	str r1, [r5, #0]
	sub r0, r0, #4
	str r2, [r4, r0]
	ldr r0, _02256094 ; =0x0000047C
	add r0, r4, r0
	bl ov22_0225AF74
	b _0225606A
_02256030:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	add r1, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0225606A
_0225604E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225606A
	add r0, r6, #0
	str r0, [r5, #0]
	ldr r0, _02256088 ; =0x000006A8
	mov r1, #0xa
	str r1, [r4, r0]
	ldr r0, _02256094 ; =0x0000047C
	mov r6, #1
	add r0, r4, r0
	bl ov22_0225AF74
_0225606A:
	add r0, r4, #0
	bl ov22_022566EC
	add r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02256078: .word 0x00000181
_0225607C: .word 0x000006D8
_02256080: .word 0x021BF67C
_02256084: .word 0x021BF6BC
_02256088: .word 0x000006A8
_0225608C: .word 0x00000498
_02256090: .word 0x000006AC
_02256094: .word 0x0000047C
	thumb_func_end ov22_02255E50

	thumb_func_start ov22_02256098
ov22_02256098: ; 0x02256098
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, _02256168 ; =0x000006B8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _022560C8
	ldr r0, [r5, #0x10]
	mov r1, #7
	bl sub_0202CFEC
	mov r1, #0xfd
	lsl r1, r1, #2
	ldr r0, [r5, #4]
	ldr r2, [r5, #0x14]
	add r1, r4, r1
	bl ov22_02256F38
_022560C8:
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _022560E0
	ldr r0, _02256168 ; =0x000006B8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _022560DC
	mov r0, #1
	str r0, [r1, #0]
	b _022560E0
_022560DC:
	mov r0, #0
	str r0, [r1, #0]
_022560E0:
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015938
	ldr r0, _0225616C ; =0x000006B4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0201A928
	add r0, r4, #0
	bl ov22_02256C38
	ldr r0, _02256170 ; =0x00000498
	add r0, r4, r0
	bl ov22_02258A34
	add r0, r4, #0
	bl ov22_02256AB4
	add r0, r4, #0
	bl ov22_0225698C
	add r0, r4, #0
	bl ov22_022567D8
	add r0, r4, #0
	bl ov22_022568B8
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	mov r0, #0xd9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov22_022594AC
	add r0, r4, #0
	bl ov22_022566F4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201E530
	cmp r0, #1
	beq _02256152
	bl sub_02022974
_02256152:
	add r0, r6, #0
	bl sub_02006830
	mov r0, #0xd
	bl sub_0201807C
	mov r0, #0xe
	bl sub_0201807C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256168: .word 0x000006B8
_0225616C: .word 0x000006B4
_02256170: .word 0x00000498
	thumb_func_end ov22_02256098

	thumb_func_start ov22_02256174
ov22_02256174: ; 0x02256174
	push {r3, r4, r5, lr}
	sub sp, #8
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl sub_02017FC8
	ldr r1, _022562D8 ; =0x000006E4
	add r0, r5, #0
	mov r2, #0xd
	bl sub_0200681C
	ldr r2, _022562D8 ; =0x000006E4
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _022562DC ; =ov22_02256940
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	mov r1, #0x1b
	ldr r0, [r5, #0xc]
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r2, [r5, #0x10]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, [r5, #0x14]
	add r0, #8
	str r2, [r4, r0]
	add r0, r1, #0
	ldr r2, [r5, #8]
	add r0, #0xc
	str r2, [r4, r0]
	ldr r0, [r5, #0x1c]
	add r1, #0x10
	str r0, [r4, r1]
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r1, #0x61
	lsl r1, r1, #2
	ldr r0, [r5, #0x18]
	add r1, r4, r1
	bl ov22_0225894C
	add r0, r4, #0
	bl ov22_022566C0
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_020219A4
	bl sub_02039734
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	mov r1, #0xd7
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x8d
	mov r2, #0xd
	bl ov22_02259484
	mov r0, #0xaf
	lsl r0, r0, #2
	mov r1, #0xd
	bl ov22_02254DE0
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r5, #0x20]
	ldr r0, _022562E0 ; =0x000006D4
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	ldrb r1, [r1, #0x16]
	cmp r1, #0
	bne _0225624E
	ldr r0, [r5, #0xc]
	bl ov22_02257580
	ldr r1, _022562E4 ; =0x000006BC
	str r0, [r4, r1]
	b _02256254
_0225624E:
	mov r1, #0x14
	sub r0, #0x18
	str r1, [r4, r0]
_02256254:
	ldr r2, _022562E4 ; =0x000006BC
	ldr r1, [r5, #0]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov22_02256790
	add r0, r4, #0
	bl ov22_022567FC
	add r0, r4, #0
	mov r1, #0
	bl ov22_02256948
	add r0, r4, #0
	bl ov22_02256A28
	ldr r0, [r5, #0x20]
	ldr r1, _022562E4 ; =0x000006BC
	str r0, [sp]
	ldr r1, [r4, r1]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0x1c]
	add r0, r4, #0
	bl ov22_02256BF4
	mov r0, #0x56
	lsl r0, r0, #4
	add r1, r4, r0
	mov r2, #0xfd
	str r1, [sp]
	mov r1, #0
	sub r0, #0xc8
	lsl r2, r2, #2
	str r1, [sp, #4]
	add r1, r4, r2
	sub r2, #0x8c
	add r0, r4, r0
	add r2, r4, r2
	add r3, r4, #0
	bl ov22_022589E0
	mov r0, #0xd
	bl sub_02015920
	mov r1, #0x6b
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #0xd
	mov r1, #1
	bl sub_0201A778
	ldr r1, _022562E8 ; =0x000006B4
	mov r2, #0
	str r0, [r4, r1]
	add r0, r1, #0
	sub r0, #0xc
	add r1, #0x1c
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	ldrb r0, [r0, #0x16]
	bl sub_020959F4
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022562D8: .word 0x000006E4
_022562DC: .word ov22_02256940
_022562E0: .word 0x000006D4
_022562E4: .word 0x000006BC
_022562E8: .word 0x000006B4
	thumb_func_end ov22_02256174

	thumb_func_start ov22_022562EC
ov22_022562EC: ; 0x022562EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_0200682C
	ldr r1, [r4, #0]
	add r5, r0, #0
	mov r6, #0
	cmp r1, #0x14
	bhi _0225634E
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0225630C: ; jump table
	.short _02256336 - _0225630C - 2 ; case 0
	.short _02256346 - _0225630C - 2 ; case 1
	.short _02256358 - _0225630C - 2 ; case 2
	.short _0225638E - _0225630C - 2 ; case 3
	.short _022563AC - _0225630C - 2 ; case 4
	.short _022563C2 - _0225630C - 2 ; case 5
	.short _022563E0 - _0225630C - 2 ; case 6
	.short _02256402 - _0225630C - 2 ; case 7
	.short _02256420 - _0225630C - 2 ; case 8
	.short _0225643A - _0225630C - 2 ; case 9
	.short _0225645E - _0225630C - 2 ; case 10
	.short _02256470 - _0225630C - 2 ; case 11
	.short _0225648E - _0225630C - 2 ; case 12
	.short _022564AA - _0225630C - 2 ; case 13
	.short _02256518 - _0225630C - 2 ; case 14
	.short _0225654A - _0225630C - 2 ; case 15
	.short _022565C8 - _0225630C - 2 ; case 16
	.short _022565C8 - _0225630C - 2 ; case 17
	.short _022565C8 - _0225630C - 2 ; case 18
	.short _02256568 - _0225630C - 2 ; case 19
	.short _02256598 - _0225630C - 2 ; case 20
_02256336:
	mov r0, #0x2a
	mov r1, #0x1e
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256346:
	bl sub_02005684
	cmp r0, #0
	beq _02256350
_0225634E:
	b _022565C8
_02256350:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256358:
	bl ov22_02257104
	ldr r2, _022565D4 ; =0x000006BC
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r1, r6, #0
	bl ov22_02257524
	ldr r0, _022565D8 ; =0x000006C4
	ldr r0, [r5, r0]
	cmp r0, #3
	beq _0225637A
	add r0, r5, #0
	mov r1, #0x1a
	bl ov22_0225751C
	b _02256382
_0225637A:
	add r0, r5, #0
	mov r1, #0x1c
	bl ov22_0225751C
_02256382:
	ldr r1, _022565DC ; =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_0225638E:
	ldr r0, _022565DC ; =0x000006D8
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02256496
	add r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022563AC:
	ldr r1, _022565E0 ; =0x000006CC
	ldr r1, [r5, r1]
	add r1, #0x1d
	bl ov22_0225751C
	ldr r1, _022565DC ; =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022563C2:
	ldr r0, _022565DC ; =0x000006D8
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02256496
	add r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022563E0:
	ldr r1, _022565D8 ; =0x000006C4
	ldr r1, [r5, r1]
	cmp r1, #3
	beq _022563F0
	mov r1, #0x2a
	bl ov22_0225751C
	b _022563F6
_022563F0:
	mov r1, #0x29
	bl ov22_0225751C
_022563F6:
	ldr r1, _022565DC ; =0x000006D8
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256402:
	ldr r0, _022565DC ; =0x000006D8
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02256496
	add r0, r5, #0
	bl ov22_02257540
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256420:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _02256432
	mov r0, #2
	bl sub_020364F0
_02256432:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_0225643A:
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _02256458
	mov r0, #2
	bl sub_02036540
	cmp r0, #0
	beq _02256496
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256458:
	add r0, r1, #1
	str r0, [r4, #0]
	b _022565C8
_0225645E:
	bl ov22_0225718C
	ldr r0, _022565E4 ; =0x00000643
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256470:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #0x11
	mov r2, #0x13
	add r3, r6, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_0225648E:
	bl sub_0200F2AC
	cmp r0, #0
	bne _02256498
_02256496:
	b _022565C8
_02256498:
	ldr r1, _022565E8 ; =0x00000491
	mov r0, #7
	add r2, r6, #0
	bl sub_02004550
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_022564AA:
	ldr r0, _022565EC ; =0x000006A8
	ldr r1, [r5, r0]
	cmp r1, #3
	bne _022564DE
	add r0, #0x28
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02095CA8
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldrb r0, [r0, #0x16]
	cmp r0, #0
	beq _022564D8
	mov r0, #0x56
	lsl r0, r0, #4
	ldr r2, _022565F0 ; =0x00000181
	add r0, r5, r0
	mov r1, #0x1a
	mov r3, #0x2e
	bl ov22_0225A628
_022564D8:
	mov r0, #0xe
	str r0, [r4, #0]
	b _022565C8
_022564DE:
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A6C4
	cmp r0, #0
	bne _022564F8
	mov r0, #0xf
	str r0, [r4, #0]
	mov r0, #0x1a
	lsl r0, r0, #6
	bl sub_02005748
_022564F8:
	ldr r0, _022565F4 ; =0x00000498
	add r0, r5, r0
	bl ov22_0225890C
	add r0, r5, #0
	bl ov22_02257564
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A610
	add r0, r5, #0
	bl ov22_02256AC4
	b _022565C8
_02256518:
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A6C4
	cmp r0, #0
	bne _02256532
	mov r0, #0xf
	str r0, [r4, #0]
	mov r0, #0x1a
	lsl r0, r0, #6
	bl sub_02005748
_02256532:
	add r0, r5, #0
	bl ov22_02257564
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A610
	add r0, r5, #0
	bl ov22_022577A0
	b _022565C8
_0225654A:
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A610
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov22_0225A6D4
	cmp r0, #0
	beq _022565C8
	mov r0, #0x13
	str r0, [r4, #0]
	b _022565C8
_02256568:
	mov r0, #0x1a
	lsl r0, r0, #6
	bl sub_020057D4
	cmp r0, #1
	beq _022565C8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0xd
	str r1, [sp, #8]
	mov r1, #0x1a
	add r2, r1, #0
	add r3, r6, #0
	bl sub_0200F174
	ldr r0, _022565F8 ; =0x00000684
	bl sub_02005748
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _022565C8
_02256598:
	bl sub_0200F2AC
	cmp r0, #0
	beq _022565C8
	add r0, r6, #0
	str r0, [r4, #0]
	mov r2, #1
	ldr r0, _022565EC ; =0x000006A8
	mov r1, #0xa
	str r1, [r5, r0]
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _022565FC ; =0xFFFF1FFF
	mov r6, #1
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0xfd
	lsl r0, r0, #2
	add r1, r6, #0
	add r0, r5, r0
	sub r1, #0x41
	mov r2, #0x28
	bl ov22_02257AB0
_022565C8:
	add r0, r5, #0
	bl ov22_022566EC
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022565D4: .word 0x000006BC
_022565D8: .word 0x000006C4
_022565DC: .word 0x000006D8
_022565E0: .word 0x000006CC
_022565E4: .word 0x00000643
_022565E8: .word 0x00000491
_022565EC: .word 0x000006A8
_022565F0: .word 0x00000181
_022565F4: .word 0x00000498
_022565F8: .word 0x00000684
_022565FC: .word 0xFFFF1FFF
	thumb_func_end ov22_022562EC

	thumb_func_start ov22_02256600
ov22_02256600: ; 0x02256600
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	mov r2, #0x1b
	add r3, r0, #0
	mov r1, #0xfd
	lsl r2, r2, #6
	ldr r0, [r3, #4]
	lsl r1, r1, #2
	ldr r2, [r4, r2]
	ldr r3, [r3, #0x24]
	add r1, r4, r1
	bl ov22_02256FD8
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015938
	ldr r0, _022566B8 ; =0x000006B4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0201A928
	add r0, r4, #0
	bl ov22_02256C38
	ldr r0, _022566BC ; =0x00000498
	add r0, r4, r0
	bl ov22_02258A34
	add r0, r4, #0
	bl ov22_02256AB4
	add r0, r4, #0
	bl ov22_0225698C
	add r0, r4, #0
	bl ov22_022567D8
	add r0, r4, #0
	bl ov22_022568B8
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	mov r0, #0xd9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov22_022594AC
	add r0, r4, #0
	bl ov22_022566F4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201E530
	cmp r0, #1
	beq _02256698
	bl sub_02022974
_02256698:
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0xd
	bl sub_0201807C
	mov r0, #0xe
	bl sub_0201807C
	bl sub_02095A24
	bl sub_02039794
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022566B8: .word 0x000006B4
_022566BC: .word 0x00000498
	thumb_func_end ov22_02256600

	thumb_func_start ov22_022566C0
ov22_022566C0: ; 0x022566C0
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	bl ov22_02255094
	add r0, r4, #0
	bl ov22_022550D4
	add r0, r4, #0
	add r1, sp, #0
	bl ov22_02255314
	add r0, r4, #0
	add r1, sp, #0
	bl ov22_022551B4
	add r0, sp, #0
	bl ov22_02255338
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022566C0

	thumb_func_start ov22_022566EC
ov22_022566EC: ; 0x022566EC
	ldr r3, _022566F0 ; =ov22_02255180
	bx r3
	; .align 2, 0
_022566F0: .word ov22_02255180
	thumb_func_end ov22_022566EC

	thumb_func_start ov22_022566F4
ov22_022566F4: ; 0x022566F4
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022551D0
	add r0, r4, #0
	bl ov22_02255134
	bl ov22_022550B4
	pop {r4, pc}
	thumb_func_end ov22_022566F4

	thumb_func_start ov22_02256708
ov22_02256708: ; 0x02256708
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	mov r1, #0xd9
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	lsl r1, r1, #2
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x30]
	add r6, r3, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x40]
	str r2, [sp, #0x30]
	str r0, [sp, #0x24]
	ldr r0, [r5, r1]
	str r0, [sp, #0x28]
	add r0, r1, #0
	sub r0, #8
	add r0, r5, r0
	add r1, #0x90
	str r0, [sp, #0x2c]
	add r0, r5, r1
	add r1, sp, #0x10
	bl ov22_022578F4
	cmp r6, #0
	add r2, sp, #0
	bne _0225675C
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0xe
	bl ov22_02257998
	b _0225676A
_0225675C:
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	mov r3, #0xe
	bl ov22_022579B4
_0225676A:
	add r0, r5, #0
	add r1, sp, #0
	bl ov22_02259098
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov22_02257B10
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #0xe
	bl ov22_02257C88
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02256708

	thumb_func_start ov22_02256790
ov22_02256790: ; 0x02256790
	push {r3, r4, lr}
	sub sp, #0xc
	mov r3, #1
	add r4, r0, #0
	bl ov22_02256708
	ldr r0, _022567D4 ; =0x0000046C
	add r1, sp, #8
	add r0, r4, r0
	add r2, sp, #4
	bl ov22_02259270
	ldr r0, _022567D4 ; =0x0000046C
	add r1, sp, #0
	add r0, r4, r0
	bl ov22_02259358
	ldr r3, [sp, #4]
	ldr r0, _022567D4 ; =0x0000046C
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r3, r2, #1
	add r2, sp, #0
	ldrb r2, [r2, #3]
	add r0, r4, r0
	mov r1, #0xc0
	sub r3, r3, r2
	mov r2, #0x8d
	sub r2, r2, r3
	bl ov22_022591EC
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022567D4: .word 0x0000046C
	thumb_func_end ov22_02256790

	thumb_func_start ov22_022567D8
ov22_022567D8: ; 0x022567D8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257CD4
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257A98
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257948
	pop {r4, pc}
	thumb_func_end ov22_022567D8

	thumb_func_start ov22_022567FC
ov22_022567FC: ; 0x022567FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x10]
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x28]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x14]
	add r1, r0, #0
	sub r1, #8
	add r1, r5, r1
	str r1, [sp, #0x18]
	mov r1, #0xe
	str r1, [sp, #0x1c]
	mov r1, #2
	str r1, [sp, #0x20]
	mov r1, #1
	add r0, r0, #4
	str r1, [sp, #0x24]
	add r0, r5, r0
	add r1, sp, #0
	bl ov22_02257F50
	mov r0, #0xda
	lsl r0, r0, #2
	mov r1, #0
	add r0, r5, r0
	add r2, r1, #0
	bl ov22_022582C0
	mov r6, #0
_02256854:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r6, #0
	bl ov22_0225899C
	add r7, r0, #0
	mov r4, #0
	cmp r7, #0
	ble _0225687C
_02256868:
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	add r2, r6, #0
	bl ov22_022580A4
	add r4, r4, #1
	cmp r4, r7
	blt _02256868
_0225687C:
	add r6, r6, #1
	cmp r6, #0x64
	blt _02256854
	mov r7, #0xda
	mov r6, #0x61
	mov r4, #0
	lsl r7, r7, #2
	lsl r6, r6, #2
_0225688C:
	add r0, r5, r6
	add r1, r4, #0
	bl ov22_022589B0
	add r2, r0, #0
	cmp r2, #0x12
	bge _022568A2
	add r0, r5, r7
	mov r1, #1
	bl ov22_022580A4
_022568A2:
	add r4, r4, #1
	cmp r4, #0x12
	blt _0225688C
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov22_022581EC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022567FC

	thumb_func_start ov22_022568B8
ov22_022568B8: ; 0x022568B8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258408
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_022581C0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257F88
	pop {r4, pc}
	thumb_func_end ov22_022568B8

	thumb_func_start ov22_022568DC
ov22_022568DC: ; 0x022568DC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _0225693C ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0, #2]
	bic r1, r2
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r3, [r0, #6]
	mov r1, #3
	bic r3, r2
	add r2, r3, #0
	orr r2, r1
	strh r2, [r0, #6]
	add r3, r1, #0
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	sub r3, #0x13
	bl sub_02019184
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov22_02258354
	mov r1, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #2
	add r3, r1, #0
	str r1, [sp]
	bl ov22_022583A0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0225693C: .word 0x04000008
	thumb_func_end ov22_022568DC

	thumb_func_start ov22_02256940
ov22_02256940: ; 0x02256940
	ldr r3, _02256944 ; =ov22_022553F8
	bx r3
	; .align 2, 0
_02256944: .word ov22_022553F8
	thumb_func_end ov22_02256940

	thumb_func_start ov22_02256948
ov22_02256948: ; 0x02256948
	push {r3, lr}
	sub sp, #0x30
	ldr r2, [r0, #0x40]
	str r2, [sp]
	mov r2, #0x19
	str r2, [sp, #4]
	lsl r2, r1, #1
	add r1, r2, #0
	add r1, #0x79
	str r1, [sp, #8]
	mov r1, #0x85
	str r1, [sp, #0xc]
	mov r1, #1
	add r2, #0x7a
	str r2, [sp, #0x10]
	mov r2, #0
	str r1, [sp, #0x1c]
	str r1, [sp, #0x20]
	mov r1, #2
	str r1, [sp, #0x24]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	ldr r1, _02256988 ; =0x000004B4
	str r2, [sp, #0x14]
	add r0, r0, r1
	add r1, sp, #0
	str r2, [sp, #0x18]
	str r2, [sp, #0x28]
	bl ov22_022597BC
	add sp, #0x30
	pop {r3, pc}
	; .align 2, 0
_02256988: .word 0x000004B4
	thumb_func_end ov22_02256948

	thumb_func_start ov22_0225698C
ov22_0225698C: ; 0x0225698C
	ldr r1, _02256994 ; =0x000004B4
	ldr r3, _02256998 ; =ov22_02259804
	add r0, r0, r1
	bx r3
	; .align 2, 0
_02256994: .word 0x000004B4
_02256998: .word ov22_02259804
	thumb_func_end ov22_0225698C

	thumb_func_start ov22_0225699C
ov22_0225699C: ; 0x0225699C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov22_02259DBC
	mov r0, #0x4e
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _02256A14 ; =ov22_02256B04
	add r0, r4, r0
	add r3, r4, #0
	str r1, [sp]
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A18 ; =ov22_02256B24
	add r0, r4, r0
	mov r1, #1
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A1C ; =ov22_02256B44
	add r0, r4, r0
	mov r1, #2
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A20 ; =ov22_02256B78
	add r0, r4, r0
	mov r1, #3
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256A24 ; =ov22_02256AE4
	add r0, r4, r0
	mov r1, #4
	add r3, r4, #0
	bl ov22_02259FF4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02256A14: .word ov22_02256B04
_02256A18: .word ov22_02256B24
_02256A1C: .word ov22_02256B44
_02256A20: .word ov22_02256B78
_02256A24: .word ov22_02256AE4
	thumb_func_end ov22_0225699C

	thumb_func_start ov22_02256A28
ov22_02256A28: ; 0x02256A28
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, r4, #0
	bl ov22_02259DBC
	mov r0, #0x4e
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _02256AA0 ; =ov22_02256B04
	add r0, r4, r0
	add r3, r4, #0
	str r1, [sp]
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AA4 ; =ov22_02256B24
	add r0, r4, r0
	mov r1, #1
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AA8 ; =ov22_02256B44
	add r0, r4, r0
	mov r1, #2
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AAC ; =ov22_02256B78
	add r0, r4, r0
	mov r1, #3
	add r3, r4, #0
	bl ov22_02259FF4
	mov r0, #0
	str r0, [sp]
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r2, _02256AB0 ; =ov22_02256AE4
	add r0, r4, r0
	mov r1, #4
	add r3, r4, #0
	bl ov22_02259FF4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02256AA0: .word ov22_02256B04
_02256AA4: .word ov22_02256B24
_02256AA8: .word ov22_02256B44
_02256AAC: .word ov22_02256B78
_02256AB0: .word ov22_02256AE4
	thumb_func_end ov22_02256A28

	thumb_func_start ov22_02256AB4
ov22_02256AB4: ; 0x02256AB4
	add r1, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #4
	ldr r3, _02256AC0 ; =ov22_02259F24
	add r0, r1, r0
	bx r3
	; .align 2, 0
_02256AC0: .word ov22_02259F24
	thumb_func_end ov22_02256AB4

	thumb_func_start ov22_02256AC4
ov22_02256AC4: ; 0x02256AC4
	mov r1, #0x4e
	lsl r1, r1, #4
	ldr r3, _02256AD0 ; =ov22_02259F88
	add r0, r0, r1
	bx r3
	nop
_02256AD0: .word ov22_02259F88
	thumb_func_end ov22_02256AC4

	thumb_func_start ov22_02256AD4
ov22_02256AD4: ; 0x02256AD4
	mov r1, #0x4e
	lsl r1, r1, #4
	ldr r3, _02256AE0 ; =ov22_02259FA0
	add r0, r0, r1
	bx r3
	nop
_02256AE0: .word ov22_02259FA0
	thumb_func_end ov22_02256AD4

	thumb_func_start ov22_02256AE4
ov22_02256AE4: ; 0x02256AE4
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256AFC
	ldr r0, _02256B00 ; =0x000006A8
	mov r1, #3
	str r1, [r4, r0]
_02256AFC:
	pop {r4, pc}
	nop
_02256B00: .word 0x000006A8
	thumb_func_end ov22_02256AE4

	thumb_func_start ov22_02256B04
ov22_02256B04: ; 0x02256B04
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258414
	add r1, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #0
	bl ov22_02258258
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256B04

	thumb_func_start ov22_02256B24
ov22_02256B24: ; 0x02256B24
	push {r4, lr}
	mov r0, #0xda
	add r4, r1, #0
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02258414
	add r1, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r2, #1
	bl ov22_02258258
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256B24

	thumb_func_start ov22_02256B44
ov22_02256B44: ; 0x02256B44
	push {r4, lr}
	ldr r0, _02256B74 ; =0x000006A8
	add r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02256B70
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov22_02258424
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl ov22_022582C0
	ldr r0, _02256B74 ; =0x000006A8
	mov r1, #0
	str r1, [r4, r0]
_02256B70:
	pop {r4, pc}
	nop
_02256B74: .word 0x000006A8
	thumb_func_end ov22_02256B44

	thumb_func_start ov22_02256B78
ov22_02256B78: ; 0x02256B78
	push {r4, lr}
	ldr r0, _02256BA8 ; =0x000006A8
	add r4, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02256BA4
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov22_02258424
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl ov22_022582C0
	ldr r0, _02256BA8 ; =0x000006A8
	mov r1, #1
	str r1, [r4, r0]
_02256BA4:
	pop {r4, pc}
	nop
_02256BA8: .word 0x000006A8
	thumb_func_end ov22_02256B78

	thumb_func_start ov22_02256BAC
ov22_02256BAC: ; 0x02256BAC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r2, sp, #0
	mov r0, #0
	add r3, r1, #0
	add r5, r2, #0
	add r1, r0, #0
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r4, #0x40]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0x44]
	mov r2, #0xf
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x48
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0x10]
	mov r0, #6
	str r3, [sp, #0xc]
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [sp, #0x24]
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A428
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02256BAC

	thumb_func_start ov22_02256BF4
ov22_02256BF4: ; 0x02256BF4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, [r0, #0x40]
	str r4, [sp]
	ldr r4, [r0, #0x44]
	str r4, [sp, #4]
	add r4, r0, #0
	str r1, [sp, #0x10]
	add r1, r2, #7
	add r4, #0x48
	str r1, [sp, #0x18]
	mov r1, #0x3c
	str r4, [sp, #8]
	ldr r4, _02256C34 ; =0x00000181
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x30]
	str r4, [sp, #0x14]
	str r1, [sp, #0xc]
	str r3, [sp, #0x20]
	sub r1, r4, #1
	ldr r1, [r0, r1]
	mov r2, #0x3f
	str r1, [sp, #0x24]
	mov r1, #0x56
	lsl r1, r1, #4
	add r0, r0, r1
	add r1, sp, #0
	bl ov22_0225A428
	add sp, #0x28
	pop {r4, pc}
	nop
_02256C34: .word 0x00000181
	thumb_func_end ov22_02256BF4

	thumb_func_start ov22_02256C38
ov22_02256C38: ; 0x02256C38
	mov r1, #0x56
	lsl r1, r1, #4
	ldr r3, _02256C44 ; =ov22_0225A560
	add r0, r0, r1
	bx r3
	nop
_02256C44: .word ov22_0225A560
	thumb_func_end ov22_02256C38

	thumb_func_start ov22_02256C48
ov22_02256C48: ; 0x02256C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02256C6C ; =ov22_02256C70
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	str r5, [r0, #0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02256C6C: .word ov22_02256C70
	thumb_func_end ov22_02256C48

	thumb_func_start ov22_02256C70
ov22_02256C70: ; 0x02256C70
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _02256C7E
	b _02256DB2
_02256C7E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02256C8A: ; jump table
	.short _02256C9E - _02256C8A - 2 ; case 0
	.short _02256CC0 - _02256C8A - 2 ; case 1
	.short _02256CDA - _02256C8A - 2 ; case 2
	.short _02256CF6 - _02256C8A - 2 ; case 3
	.short _02256D0A - _02256C8A - 2 ; case 4
	.short _02256D32 - _02256C8A - 2 ; case 5
	.short _02256D52 - _02256C8A - 2 ; case 6
	.short _02256D78 - _02256C8A - 2 ; case 7
	.short _02256D94 - _02256C8A - 2 ; case 8
	.short _02256DA8 - _02256C8A - 2 ; case 9
_02256C9E:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #3
	mov r2, #0
	bl ov22_02258218
	cmp r0, #0
	bne _02256CB6
	bl sub_02022974
_02256CB6:
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CC0:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CDA:
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256CF6:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D0A:
	mov r0, #0x4e
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #8
	bl ov22_02259FC4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _02256DB2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D32:
	mov r1, #7
	add r0, r4, #0
	mvn r1, r1
	mov r2, #5
	mov r3, #8
	bl ov22_02257098
	cmp r0, #0
	beq _02256DB2
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D52:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov22_02256948
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	ldr r0, [r4, #0]
	bl ov22_022571D4
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D78:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256D94:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256DB2
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256DA8:
	ldr r1, [r4, #4]
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020067D0
_02256DB2:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256C70

	thumb_func_start ov22_02256DB8
ov22_02256DB8: ; 0x02256DB8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02256DDC ; =ov22_02256DE0
	mov r1, #0x10
	mov r2, #0xa
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	str r5, [r0, #0]
	str r4, [r0, #4]
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02256DDC: .word ov22_02256DE0
	thumb_func_end ov22_02256DB8

	thumb_func_start ov22_02256DE0
ov22_02256DE0: ; 0x02256DE0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #9
	bls _02256DEE
	b _02256F32
_02256DEE:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02256DFA: ; jump table
	.short _02256E0E - _02256DFA - 2 ; case 0
	.short _02256E2A - _02256DFA - 2 ; case 1
	.short _02256E3E - _02256DFA - 2 ; case 2
	.short _02256E72 - _02256DFA - 2 ; case 3
	.short _02256E92 - _02256DFA - 2 ; case 4
	.short _02256EBC - _02256DFA - 2 ; case 5
	.short _02256ED8 - _02256DFA - 2 ; case 6
	.short _02256EEC - _02256DFA - 2 ; case 7
	.short _02256F0E - _02256DFA - 2 ; case 8
	.short _02256F28 - _02256DFA - 2 ; case 9
_02256E0E:
	mov r0, #1
	str r0, [sp]
	mov r0, #8
	add r1, r0, #0
	sub r1, #0x18
	mov r2, #0
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E2A:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E3E:
	ldr r0, [r4, #0]
	bl ov22_02257258
	ldr r0, [r4, #0]
	bl ov22_022568DC
	ldr r0, [r4, #0]
	bl ov22_02256AD4
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov22_02256948
	ldr r0, [r4, #0]
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r0, #0x40]
	mov r1, #1
	sub r3, #0x2b
	bl sub_0201C63C
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E72:
	mov r1, #8
	add r2, r1, #0
	add r0, r4, #0
	sub r2, #0xd
	add r3, r1, #0
	bl ov22_02257098
	cmp r0, #0
	beq _02256F32
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256E92:
	mov r0, #0x4e
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	add r2, r1, #0
	sub r2, #8
	bl ov22_02259FC4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #8
	blt _02256F32
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256EBC:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0xa
	bl sub_0200AAE0
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256ED8:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256EEC:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	add r2, r1, #0
	bl ov22_02258218
	cmp r0, #0
	bne _02256F04
	bl sub_02022974
_02256F04:
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256F0E:
	mov r0, #0xda
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov22_02258460
	cmp r0, #0
	beq _02256F32
	ldr r0, [r4, #0xc]
	add sp, #4
	add r0, r0, #1
	str r0, [r4, #0xc]
	pop {r3, r4, pc}
_02256F28:
	ldr r1, [r4, #4]
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020067D0
_02256F32:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02256DE0

	thumb_func_start ov22_02256F38
ov22_02256F38: ; 0x02256F38
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	add r6, r0, #0
	add r4, r2, #0
	bl sub_02029F84
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, #0x84
	ldr r1, [r1, #0]
	add r0, r6, #0
	add r2, #0x78
	bl sub_02029FAC
	cmp r4, #0
	beq _02256F78
	add r0, r4, #0
	mov r1, #0xd
	bl sub_02025F04
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202A0EC
	add r0, r5, #0
	bl sub_020237BC
_02256F78:
	ldr r0, [sp]
	mov r5, #0
	add r7, r0, #0
	ldr r4, [r0, #0x1c]
	add r7, #0x14
	cmp r4, r7
	beq _02256F9E
_02256F86:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02256F98
	ldr r1, [r4, #0]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_02029FD0
	add r5, r5, #1
_02256F98:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02256F86
_02256F9E:
	ldr r0, [sp]
	ldr r4, [r0, #0xc]
	add r7, r0, #4
	cmp r4, r7
	beq _02256FC0
_02256FA8:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02256FBA
	ldr r1, [r4, #0]
	add r0, r6, #0
	add r2, r5, #0
	bl sub_02029FD0
	add r5, r5, #1
_02256FBA:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02256FA8
_02256FC0:
	ldr r1, [sp]
	add r0, r6, #0
	ldr r1, [r1, #0x74]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0202A084
	add r0, r6, #0
	bl sub_02029F5C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02256F38

	thumb_func_start ov22_02256FD8
ov22_02256FD8: ; 0x02256FD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp]
	mov r0, #0xd
	mov r1, #0xac
	str r2, [sp, #4]
	add r4, r3, #0
	bl sub_02018144
	add r6, r0, #0
	bl ov22_0225764C
	ldr r1, [sp]
	ldr r2, [sp]
	add r1, #0x84
	ldr r1, [r1, #0]
	add r0, r7, #0
	add r2, #0x78
	bl sub_0202A284
	cmp r4, #0
	beq _02257026
	add r0, r4, #0
	mov r1, #0xd
	bl sub_02025F04
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02025F30
	add r2, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0202A4B4
	add r0, r5, #0
	bl sub_020237BC
_02257026:
	ldr r1, [sp]
	add r0, r6, #0
	add r1, #0x14
	mov r2, #1
	bl ov22_02257778
	ldr r1, [sp]
	add r0, r6, #0
	add r1, r1, #4
	mov r2, #0
	bl ov22_02257778
	add r0, r6, #0
	bl ov22_0225768C
	mov r4, #0
	add r5, r4, #0
_02257048:
	add r0, r6, #0
	add r1, r5, #0
	bl ov22_022576FC
	cmp r0, #1
	bne _0225706A
	add r0, r6, #0
	add r1, r5, #0
	bl ov22_022576E8
	add r1, r0, #0
	ldr r1, [r1, #0]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0202A2A8
	add r4, r4, #1
_0225706A:
	add r5, r5, #1
	cmp r5, #0x15
	blt _02257048
	ldr r1, [sp]
	add r0, r7, #0
	ldr r1, [r1, #0x74]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0202A35C
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl sub_0202A378
	add r0, r7, #0
	bl sub_0202A240
	add r0, r6, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02256FD8

	thumb_func_start ov22_02257098
ov22_02257098: ; 0x02257098
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #8
	bge _022570B4
	mov r0, #0xfd
	ldr r3, [r5, #0]
	lsl r0, r0, #2
	add r0, r3, r0
	bl ov22_02257AB0
_022570B4:
	ldr r0, [r5, #8]
	cmp r0, #1
	blt _022570F2
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0x40]
	add r2, r1, #0
	add r3, r4, #0
	bl sub_0201C63C
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #2
	add r3, r4, #0
	bl sub_0201C63C
	ldr r0, [r5, #0]
	mov r1, #2
	ldr r0, [r0, #0x40]
	mov r2, #5
	add r3, r6, #0
	bl sub_0201C63C
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0x40]
	mov r2, #5
	add r3, r6, #0
	bl sub_0201C63C
_022570F2:
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	cmp r0, r7
	ble _02257100
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02257100:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257098

	thumb_func_start ov22_02257104
ov22_02257104: ; 0x02257104
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #0
	bl ov22_022574F4
	ldr r1, _02257188 ; =0x04000008
	mov r3, #3
	ldrh r2, [r1]
	mov r0, #2
	bic r2, r3
	orr r0, r2
	strh r0, [r1]
	ldrh r2, [r1, #2]
	mov r0, #1
	bic r2, r3
	orr r2, r0
	strh r2, [r1, #2]
	ldrh r4, [r1, #4]
	mov r2, #3
	bic r4, r3
	orr r2, r4
	strh r2, [r1, #4]
	ldrh r2, [r1, #6]
	bic r2, r3
	strh r2, [r1, #6]
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0
	bl sub_0200F338
	pop {r4, pc}
	nop
_02257188: .word 0x04000008
	thumb_func_end ov22_02257104

	thumb_func_start ov22_0225718C
ov22_0225718C: ; 0x0225718C
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02257548
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	add r0, r4, #0
	bl ov22_022568DC
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl sub_020219A4
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	pop {r4, pc}
	thumb_func_end ov22_0225718C

	thumb_func_start ov22_022571D4
ov22_022571D4: ; 0x022571D4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x40]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #4
	strb r1, [r0, #0x11]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02015958
	add r0, r4, #0
	mov r1, #1
	bl ov22_022574CC
	ldr r0, _02257254 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02257254: .word 0x04000008
	thumb_func_end ov22_022571D4

	thumb_func_start ov22_02257258
ov22_02257258: ; 0x02257258
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	bl ov22_022574EC
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl sub_02019EBC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02257258

	thumb_func_start ov22_02257278
ov22_02257278: ; 0x02257278
	push {r3, lr}
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020159FC
	cmp r0, #0
	beq _02257292
	cmp r0, #1
	beq _02257296
	cmp r0, #2
	beq _0225729A
	pop {r3, pc}
_02257292:
	mov r0, #4
	pop {r3, pc}
_02257296:
	mov r0, #8
	pop {r3, pc}
_0225729A:
	mov r0, #9
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02257278

	thumb_func_start ov22_022572A0
ov22_022572A0: ; 0x022572A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, _02257358 ; =0x000006D4
	str r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r7, r2, #0
	add r4, r3, #0
	bl sub_02027B50
	add r6, r0, #0
	mov r0, #0
	mov r1, #0xe0
	mov r2, #0xe
	bl sub_02002E98
	str r4, [sp]
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	mov r2, #3
	add r3, r7, #0
	str r1, [sp, #4]
	ldrb r0, [r0, #0x14]
	ldr r1, _0225735C ; =0x000006B4
	str r0, [sp, #8]
	mov r0, #7
	str r0, [sp, #0xc]
	mov r0, #0x92
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x40]
	ldr r1, [r5, r1]
	bl sub_0201A7E8
	ldr r0, _0225735C ; =0x000006B4
	mov r1, #0xf
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	ldr r0, [r5, #0x40]
	mov r1, #3
	mov r2, #0x74
	mov r3, #8
	bl sub_0200DD0C
	ldr r0, _0225735C ; =0x000006B4
	mov r1, #0
	ldr r0, [r5, r0]
	mov r2, #0x74
	mov r3, #8
	bl sub_0200E060
	ldr r2, _02257360 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	ldr r1, [sp, #0x14]
	add r6, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	ldr r0, _02257364 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0225735C ; =0x000006B4
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0200B190
	ldr r0, _0225735C ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_0201A954
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02257358: .word 0x000006D4
_0225735C: .word 0x000006B4
_02257360: .word 0x00000181
_02257364: .word 0x0001020F
	thumb_func_end ov22_022572A0

	thumb_func_start ov22_02257368
ov22_02257368: ; 0x02257368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _022573E0 ; =0x000006B4
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _022573E4 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	add r1, r4, #0
	add r7, r0, #0
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xd
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	ldr r0, _022573E8 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _022573E0 ; =0x000006B4
	str r3, [sp, #0xc]
	ldr r0, [r5, r0]
	mov r1, #1
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _022573E0 ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_0201A954
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022573E0: .word 0x000006B4
_022573E4: .word 0x00000181
_022573E8: .word 0x0001020F
	thumb_func_end ov22_02257368

	thumb_func_start ov22_022573EC
ov22_022573EC: ; 0x022573EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02257488 ; =0x000006DC
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02257400
	bl sub_02022974
_02257400:
	ldr r0, _0225748C ; =0x000006B4
	mov r1, #0xf
	ldr r0, [r5, r0]
	bl sub_0201ADA4
	ldr r2, _02257490 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	add r1, r4, #0
	add r7, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0xd
	bl sub_02023790
	ldr r1, _02257488 ; =0x000006DC
	add r2, r4, #0
	str r0, [r5, r1]
	add r0, r1, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_0200C388
	mov r0, #0x6d
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	ldrb r1, [r1, #0x16]
	cmp r1, #0
	bne _02257450
	add r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_02027AC0
	b _02257452
_02257450:
	mov r0, #1
_02257452:
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02257494 ; =0x0001020F
	ldr r2, _0225748C ; =0x000006B4
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, r2]
	add r2, #0x28
	ldr r2, [r5, r2]
	mov r1, #1
	bl sub_0201D78C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _0225748C ; =0x000006B4
	ldr r0, [r5, r0]
	bl sub_0201A954
	add r0, r6, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02257488: .word 0x000006DC
_0225748C: .word 0x000006B4
_02257490: .word 0x00000181
_02257494: .word 0x0001020F
	thumb_func_end ov22_022573EC

	thumb_func_start ov22_02257498
ov22_02257498: ; 0x02257498
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022574AC ; =0x000006DC
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _022574AC ; =0x000006DC
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_022574AC: .word 0x000006DC
	thumb_func_end ov22_02257498

	thumb_func_start ov22_022574B0
ov22_022574B0: ; 0x022574B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022574C8 ; =0x000006B4
	ldr r0, [r4, r0]
	bl sub_0201ACF4
	ldr r0, _022574C8 ; =0x000006B4
	ldr r0, [r4, r0]
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_022574C8: .word 0x000006B4
	thumb_func_end ov22_022574B0

	thumb_func_start ov22_022574CC
ov22_022574CC: ; 0x022574CC
	push {r3, lr}
	sub sp, #8
	mov r2, #0x1b
	str r2, [sp]
	mov r2, #2
	mov r3, #1
	str r2, [sp, #4]
	bl ov22_022572A0
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_022574CC

	thumb_func_start ov22_022574E4
ov22_022574E4: ; 0x022574E4
	ldr r3, _022574E8 ; =ov22_02257368
	bx r3
	; .align 2, 0
_022574E8: .word ov22_02257368
	thumb_func_end ov22_022574E4

	thumb_func_start ov22_022574EC
ov22_022574EC: ; 0x022574EC
	ldr r3, _022574F0 ; =ov22_022574B0
	bx r3
	; .align 2, 0
_022574F0: .word ov22_022574B0
	thumb_func_end ov22_022574EC

	thumb_func_start ov22_022574F4
ov22_022574F4: ; 0x022574F4
	push {r4, lr}
	sub sp, #8
	mov r2, #0x1b
	str r2, [sp]
	mov r2, #4
	str r2, [sp, #4]
	mov r2, #2
	mov r3, #0x13
	add r4, r0, #0
	bl ov22_022572A0
	mov r0, #0xd
	bl sub_0200B358
	mov r1, #0x6e
	lsl r1, r1, #4
	str r0, [r4, r1]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022574F4

	thumb_func_start ov22_0225751C
ov22_0225751C: ; 0x0225751C
	ldr r3, _02257520 ; =ov22_022573EC
	bx r3
	; .align 2, 0
_02257520: .word ov22_022573EC
	thumb_func_end ov22_0225751C

	thumb_func_start ov22_02257524
ov22_02257524: ; 0x02257524
	push {r3, lr}
	sub sp, #8
	mov r3, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r3, #0x6e
	lsl r3, r3, #4
	ldr r0, [r0, r3]
	mov r3, #2
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov22_02257524

	thumb_func_start ov22_02257540
ov22_02257540: ; 0x02257540
	ldr r3, _02257544 ; =ov22_02257498
	bx r3
	; .align 2, 0
_02257544: .word ov22_02257498
	thumb_func_end ov22_02257540

	thumb_func_start ov22_02257548
ov22_02257548: ; 0x02257548
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022574B0
	mov r0, #0x6e
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov22_02257548

	thumb_func_start ov22_02257564
ov22_02257564: ; 0x02257564
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfd
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov22_02257D00
	add r1, r0, #0
	mov r0, #0x56
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_0225A6B8
	pop {r4, pc}
	thumb_func_end ov22_02257564

	thumb_func_start ov22_02257580
ov22_02257580: ; 0x02257580
	push {r4, lr}
	cmp r0, #3
	bhi _022575AA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02257592: ; jump table
	.short _0225759A - _02257592 - 2 ; case 0
	.short _0225759E - _02257592 - 2 ; case 1
	.short _022575A2 - _02257592 - 2 ; case 2
	.short _022575A6 - _02257592 - 2 ; case 3
_0225759A:
	mov r4, #5
	b _022575AE
_0225759E:
	mov r4, #0xa
	b _022575AE
_022575A2:
	mov r4, #0xf
	b _022575AE
_022575A6:
	mov r4, #0x14
	b _022575AE
_022575AA:
	bl sub_02022974
_022575AE:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02257580

	thumb_func_start ov22_022575B4
ov22_022575B4: ; 0x022575B4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #0x19
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	add r0, sp, #0
	strb r1, [r0, #0x10]
	mov r1, #4
	strb r1, [r0, #0x11]
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r0, #0x6b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl sub_02015958
	add r0, r4, #0
	mov r1, #2
	bl ov22_022574E4
	ldr r0, _02257620 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02257620: .word 0x04000008
	thumb_func_end ov22_022575B4

	thumb_func_start ov22_02257624
ov22_02257624: ; 0x02257624
	push {r3, lr}
	mov r1, #0x6b
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020159FC
	cmp r0, #0
	beq _0225763E
	cmp r0, #1
	beq _02257642
	cmp r0, #2
	beq _02257646
	pop {r3, pc}
_0225763E:
	mov r0, #5
	pop {r3, pc}
_02257642:
	mov r0, #6
	pop {r3, pc}
_02257646:
	mov r0, #7
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02257624

	thumb_func_start ov22_0225764C
ov22_0225764C: ; 0x0225764C
	ldr r3, _02257654 ; =sub_020D5124
	mov r1, #0
	mov r2, #0xac
	bx r3
	; .align 2, 0
_02257654: .word sub_020D5124
	thumb_func_end ov22_0225764C

	thumb_func_start ov22_02257658
ov22_02257658: ; 0x02257658
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0
	bne _02257668
	bl sub_02022974
_02257668:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	lsl r0, r0, #3
	str r4, [r5, r0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	lsl r0, r0, #3
	add r0, r5, r0
	str r6, [r0, #4]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r5, #0xa8
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257658

	thumb_func_start ov22_0225768C
ov22_0225768C: ; 0x0225768C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r0, #0xa8
	ldr r2, [r0, #0]
	mov r1, #0
	cmp r2, #0
	ble _022576E4
_0225769A:
	lsl r0, r1, #3
	add r7, r6, r0
	ldr r0, [r7, #4]
	cmp r0, #1
	bne _022576D8
	mov r4, #0
	cmp r2, #0
	ble _022576D0
	add r5, r6, #0
_022576AC:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022576C2
	add r0, r7, #0
	add r1, r5, #0
	bl ov22_0225771C
	cmp r0, #1
	bne _022576C2
	mov r0, #1
	str r0, [r5, #4]
_022576C2:
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #8
	cmp r4, r0
	blt _022576AC
_022576D0:
	mov r0, #2
	str r0, [r7, #4]
	mov r1, #0
	b _022576DA
_022576D8:
	add r1, r1, #1
_022576DA:
	add r0, r6, #0
	add r0, #0xa8
	ldr r2, [r0, #0]
	cmp r1, r2
	blt _0225769A
_022576E4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225768C

	thumb_func_start ov22_022576E8
ov22_022576E8: ; 0x022576E8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x15
	blo _022576F6
	bl sub_02022974
_022576F6:
	lsl r0, r5, #3
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022576E8

	thumb_func_start ov22_022576FC
ov22_022576FC: ; 0x022576FC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x15
	blo _0225770A
	bl sub_02022974
_0225770A:
	lsl r0, r5, #3
	add r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02257718
	mov r0, #1
	pop {r3, r4, r5, pc}
_02257718:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022576FC

	thumb_func_start ov22_0225771C
ov22_0225771C: ; 0x0225771C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl ov22_02259780
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	bl ov22_02259724
	mov r4, #0
	add r6, sp, #0x10
	add r7, sp, #0xc
_02257744:
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl ov22_022577EC
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl ov22_02259578
	cmp r0, #1
	bne _0225776A
	add sp, #0x2c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0225776A:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02257744
	mov r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225771C

	thumb_func_start ov22_02257778
ov22_02257778: ; 0x02257778
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r4, [r5, #8]
	add r6, r0, #0
	add r7, r2, #0
	cmp r4, r5
	beq _0225779C
_02257786:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02257796
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov22_02257658
_02257796:
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02257786
_0225779C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257778

	thumb_func_start ov22_022577A0
ov22_022577A0: ; 0x022577A0
	push {r3, r4, r5, lr}
	mov r2, #0x6d
	lsl r2, r2, #4
	ldr r2, [r0, r2]
	mov r1, #0
	ldrb r3, [r2, #0x16]
	cmp r3, #0
	bne _022577BC
	mov r2, #0x56
	lsl r2, r2, #4
	add r0, r0, r2
	bl ov22_0225A6CC
	pop {r3, r4, r5, pc}
_022577BC:
	ldrb r4, [r2, #0x14]
	ldrb r3, [r2, #0x15]
	cmp r4, r3
	bne _022577EA
	add r4, r1, #0
	add r5, r2, #0
_022577C8:
	ldrb r3, [r5, #0x10]
	cmp r3, #1
	bne _022577D0
	add r1, r1, #1
_022577D0:
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #4
	blt _022577C8
	ldrb r2, [r2, #0x17]
	cmp r2, r1
	bgt _022577EA
	mov r1, #0x56
	lsl r1, r1, #4
	add r0, r0, r1
	mov r1, #0
	bl ov22_0225A6CC
_022577EA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022577A0

	thumb_func_start ov22_022577EC
ov22_022577EC: ; 0x022577EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	add r0, r3, #0
	sub r0, r0, r7
	mov r1, #3
	str r3, [sp, #4]
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	bl sub_020E2178
	add r1, r7, r0
	lsl r0, r0, #1
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [sp]
	str r1, [sp, #0xc]
	sub r0, r0, r6
	mov r1, #3
	bl sub_020E2178
	add r2, r6, r0
	lsl r0, r0, #1
	ldr r1, [sp, #0x28]
	add r0, r6, r0
	cmp r1, #0xf
	bhi _022578EE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02257832: ; jump table
	.short _02257852 - _02257832 - 2 ; case 0
	.short _0225785A - _02257832 - 2 ; case 1
	.short _02257862 - _02257832 - 2 ; case 2
	.short _0225786A - _02257832 - 2 ; case 3
	.short _02257874 - _02257832 - 2 ; case 4
	.short _0225787E - _02257832 - 2 ; case 5
	.short _02257888 - _02257832 - 2 ; case 6
	.short _02257892 - _02257832 - 2 ; case 7
	.short _0225789E - _02257832 - 2 ; case 8
	.short _022578A8 - _02257832 - 2 ; case 9
	.short _022578B2 - _02257832 - 2 ; case 10
	.short _022578BC - _02257832 - 2 ; case 11
	.short _022578C8 - _02257832 - 2 ; case 12
	.short _022578D2 - _02257832 - 2 ; case 13
	.short _022578DC - _02257832 - 2 ; case 14
	.short _022578E6 - _02257832 - 2 ; case 15
_02257852:
	str r7, [r4, #0]
	add sp, #0x10
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225785A:
	str r7, [r4, #0]
	add sp, #0x10
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257862:
	str r7, [r4, #0]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225786A:
	ldr r0, [sp]
	str r7, [r4, #0]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257874:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4, #0]
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225787E:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	str r0, [r4, #0]
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257888:
	ldr r1, [sp, #0xc]
	add sp, #0x10
	str r1, [r4, #0]
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02257892:
	ldr r0, [sp, #0xc]
	str r0, [r4, #0]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0225789E:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4, #0]
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578A8:
	ldr r0, [sp, #8]
	add sp, #0x10
	str r0, [r4, #0]
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578B2:
	ldr r1, [sp, #8]
	add sp, #0x10
	str r1, [r4, #0]
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578BC:
	ldr r0, [sp, #8]
	str r0, [r4, #0]
	ldr r0, [sp]
	add sp, #0x10
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578C8:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4, #0]
	str r6, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578D2:
	ldr r0, [sp, #4]
	add sp, #0x10
	str r0, [r4, #0]
	str r2, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578DC:
	ldr r1, [sp, #4]
	add sp, #0x10
	str r1, [r4, #0]
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022578E6:
	ldr r0, [sp, #4]
	str r0, [r4, #0]
	ldr r0, [sp]
	str r0, [r5, #0]
_022578EE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022577EC

	thumb_func_start ov22_022578F4
ov22_022578F4: ; 0x022578F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #0]
	mov r2, #0
	str r0, [r4, #0x2c]
	ldr r0, [r1, #4]
	str r0, [r4, #0x30]
	ldr r0, [r1, #8]
	str r0, [r4, #0x34]
	ldr r0, [r1, #0xc]
	str r0, [r4, #0x38]
	ldr r0, [r1, #0x10]
	str r0, [r4, #0x3c]
	ldr r0, [r1, #0x14]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x18]
	str r0, [r4, #0x44]
	str r2, [r4, #0x74]
	ldr r0, [r1, #0x1c]
	str r0, [r4, #0]
	add r0, r4, #4
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x14
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r2, [r4, #0x24]
	ldr r0, [r1, #0x20]
	add r1, r4, #0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0]
	add r1, #0x78
	mov r2, #3
	bl ov22_022594C0
	add r4, #0x14
	add r1, r4, #0
	bl ov22_02259520
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022578F4

	thumb_func_start ov22_02257948
ov22_02257948: ; 0x02257948
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022579F0
	add r0, r4, #0
	bl ov22_02257A98
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x88
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02257948

	thumb_func_start ov22_02257964
ov22_02257964: ; 0x02257964
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	add r6, r1, #0
	str r0, [sp]
	add r5, r2, #0
	add r0, r4, #0
	add r7, r3, #0
	ldr r1, [r4, #0x3c]
	add r0, #0x78
	add r2, r6, #0
	add r3, r5, #0
	bl ov22_022590C0
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x78
	bl ov22_022591D0
	add r4, #0x78
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ov22_022591EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257964

	thumb_func_start ov22_02257998
ov22_02257998: ; 0x02257998
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	str r3, [sp]
	add r5, r1, #0
	add r4, r2, #0
	ldr r1, [r6, #0x3c]
	add r0, #0x78
	add r2, r5, #0
	add r3, r4, #0
	bl ov22_022590C0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_02257998

	thumb_func_start ov22_022579B4
ov22_022579B4: ; 0x022579B4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r5, r1, #0
	add r4, r2, #0
	add r0, r6, #0
	ldr r1, [r6, #0x3c]
	add r0, #0x78
	add r2, r5, #0
	add r3, r4, #0
	bl ov22_022590D4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022579B4

	thumb_func_start ov22_022579D8
ov22_022579D8: ; 0x022579D8
	ldr r3, _022579E4 ; =ov22_02259520
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0x20]
	bx r3
	nop
_022579E4: .word ov22_02259520
	thumb_func_end ov22_022579D8

	thumb_func_start ov22_022579E8
ov22_022579E8: ; 0x022579E8
	ldr r3, _022579EC ; =ov22_02259530
	bx r3
	; .align 2, 0
_022579EC: .word ov22_02259530
	thumb_func_end ov22_022579E8

	thumb_func_start ov22_022579F0
ov22_022579F0: ; 0x022579F0
	ldr r3, _022579F8 ; =ov22_022591B8
	add r0, #0x78
	bx r3
	nop
_022579F8: .word ov22_022591B8
	thumb_func_end ov22_022579F0

	thumb_func_start ov22_022579FC
ov22_022579FC: ; 0x022579FC
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r4, r0, #0
	ldr r5, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r5, r0
	bge _02257A56
	ldr r0, [r4, #0x44]
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	str r0, [sp, #4]
	ldr r5, [r4, #0x30]
	lsl r0, r1, #2
	ldr r0, [r5, r0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x38]
	ldrb r0, [r0, r1]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl ov22_02254E20
	ldr r1, [sp, #0x30]
	add r5, r0, #0
	bl ov22_02254F6C
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r2, #0
	bl ov22_022594C0
	add r1, r4, #4
	bl ov22_02259520
	ldr r0, [r4, #0x24]
	add sp, #0x20
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02257A56:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_022579FC

	thumb_func_start ov22_02257A5C
ov22_02257A5C: ; 0x02257A5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r3, r2, #0
	ldr r5, [r4, #0x24]
	ldr r2, [r4, #0x28]
	cmp r5, r2
	bge _02257A7A
	mov r2, #1
	bl ov22_02257DEC
	ldr r0, [r4, #0x24]
	add r0, r0, #1
	str r0, [r4, #0x24]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02257A7A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02257A5C

	thumb_func_start ov22_02257A80
ov22_02257A80: ; 0x02257A80
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov22_02259530
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	bpl _02257A96
	bl sub_02022974
_02257A96:
	pop {r4, pc}
	thumb_func_end ov22_02257A80

	thumb_func_start ov22_02257A98
ov22_02257A98: ; 0x02257A98
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ov22_02259540
	add r0, r4, #0
	add r0, #0x14
	bl ov22_02259540
	mov r0, #0
	str r0, [r4, #0x24]
	pop {r4, pc}
	thumb_func_end ov22_02257A98

	thumb_func_start ov22_02257AB0
ov22_02257AB0: ; 0x02257AB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, r5, #4
	add r4, r1, #0
	add r6, r2, #0
	bl ov22_022596EC
	add r5, #0x14
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov22_022596EC
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02257AB0

	thumb_func_start ov22_02257ACC
ov22_02257ACC: ; 0x02257ACC
	ldr r3, _02257AD4 ; =ov22_022596EC
	add r0, #0x14
	bx r3
	nop
_02257AD4: .word ov22_022596EC
	thumb_func_end ov22_02257ACC

	thumb_func_start ov22_02257AD8
ov22_02257AD8: ; 0x02257AD8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	neg r4, r2
	neg r7, r1
	add r0, r5, #4
	add r1, r7, #0
	add r2, r4, #0
	add r6, r3, #0
	bl ov22_022596EC
	ldr r2, [sp, #0x18]
	add r0, r5, #4
	add r1, r6, #0
	bl ov22_022596EC
	add r0, r5, #0
	add r0, #0x14
	add r1, r7, #0
	add r2, r4, #0
	bl ov22_022596EC
	add r5, #0x14
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl ov22_022596EC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257AD8

	thumb_func_start ov22_02257B10
ov22_02257B10: ; 0x02257B10
	ldr r3, _02257B18 ; =ov22_02257B1C
	mov r1, #0
	mvn r1, r1
	bx r3
	; .align 2, 0
_02257B18: .word ov22_02257B1C
	thumb_func_end ov22_02257B10

	thumb_func_start ov22_02257B1C
ov22_02257B1C: ; 0x02257B1C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r7, #0
	ldr r4, [r7, #0x1c]
	add r6, #0x14
	add r5, r1, #0
	cmp r4, r6
	beq _02257B4A
_02257B2C:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257B3C
	add r1, r5, #0
	bl ov22_02254F6C
	b _02257B42
_02257B3C:
	add r1, r5, #0
	bl ov22_022591D0
_02257B42:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _02257B2C
_02257B4A:
	ldr r4, [r7, #0xc]
	add r6, r7, #4
	sub r5, #8
	cmp r4, r6
	beq _02257B72
_02257B54:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257B64
	add r1, r5, #0
	bl ov22_02254F6C
	b _02257B6A
_02257B64:
	add r1, r5, #0
	bl ov22_022591D0
_02257B6A:
	ldr r4, [r4, #8]
	sub r5, r5, #1
	cmp r4, r6
	bne _02257B54
_02257B72:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257B1C

	thumb_func_start ov22_02257B74
ov22_02257B74: ; 0x02257B74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r7, #0
	ldr r4, [r7, #0x1c]
	add r6, #0x14
	add r5, r1, #0
	cmp r4, r6
	beq _02257BB0
_02257B84:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257B9C
	bl ov22_02254F78
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_02254F6C
	b _02257BAA
_02257B9C:
	bl ov22_022591E0
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_022591D0
_02257BAA:
	ldr r4, [r4, #8]
	cmp r4, r6
	bne _02257B84
_02257BB0:
	ldr r4, [r7, #0xc]
	add r6, r7, #4
	cmp r4, r6
	beq _02257BE4
_02257BB8:
	ldr r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0]
	bne _02257BD0
	bl ov22_02254F78
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_02254F6C
	b _02257BDE
_02257BD0:
	bl ov22_022591E0
	add r1, r0, #0
	ldr r0, [r4, #0]
	add r1, r1, r5
	bl ov22_022591D0
_02257BDE:
	ldr r4, [r4, #8]
	cmp r4, r6
	bne _02257BB8
_02257BE4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257B74

	thumb_func_start ov22_02257BE8
ov22_02257BE8: ; 0x02257BE8
	push {r3, lr}
	mov r1, #0x12
	add r0, sp, #0
	strb r1, [r0]
	mov r1, #0x8f
	strb r1, [r0, #1]
	mov r1, #0x8a
	strb r1, [r0, #2]
	mov r1, #0xf6
	strb r1, [r0, #3]
	add r0, sp, #0
	bl sub_02022734
	pop {r3, pc}
	thumb_func_end ov22_02257BE8

	thumb_func_start ov22_02257C04
ov22_02257C04: ; 0x02257C04
	push {r3, lr}
	mov r3, #0x12
	add r0, sp, #0
	strb r3, [r0]
	mov r3, #0x8f
	strb r3, [r0, #1]
	mov r3, #0x8a
	strb r3, [r0, #2]
	mov r3, #0xf6
	strb r3, [r0, #3]
	add r0, sp, #0
	bl sub_02022830
	pop {r3, pc}
	thumb_func_end ov22_02257C04

	thumb_func_start ov22_02257C20
ov22_02257C20: ; 0x02257C20
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, [r0, #0x1c]
	str r0, [sp]
	str r0, [sp, #4]
	add r0, #0x14
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	str r0, [sp, #4]
	cmp r5, r0
	beq _02257C56
_02257C38:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02257C4E
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02257C4E:
	ldr r5, [r5, #8]
	ldr r0, [sp, #4]
	cmp r5, r0
	bne _02257C38
_02257C56:
	ldr r0, [sp]
	ldr r5, [r0, #0xc]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r5, r0
	beq _02257C80
_02257C62:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_022595AC
	cmp r0, #1
	bne _02257C78
	add sp, #0xc
	add r0, r5, #0
	pop {r4, r5, r6, r7, pc}
_02257C78:
	ldr r5, [r5, #8]
	ldr r0, [sp, #8]
	cmp r5, r0
	bne _02257C62
_02257C80:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257C20

	thumb_func_start ov22_02257C88
ov22_02257C88: ; 0x02257C88
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	str r0, [sp]
	mov r0, #0x19
	lsl r1, r4, #2
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0x86
	str r0, [sp, #8]
	add r0, r1, #0
	add r0, #0x87
	str r0, [sp, #0xc]
	mov r0, #0x88
	str r0, [sp, #0x14]
	mov r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #2
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xd
	str r0, [sp, #0x24]
	mov r0, #0
	add r1, #0x88
	str r0, [sp, #0x28]
	add r0, r5, #0
	str r1, [sp, #0x10]
	add r0, #0x48
	add r1, sp, #0
	str r2, [sp, #0x2c]
	bl ov22_022597BC
	str r4, [r5, #0x74]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02257C88

	thumb_func_start ov22_02257CD4
ov22_02257CD4: ; 0x02257CD4
	ldr r3, _02257CDC ; =ov22_02259804
	add r0, #0x48
	bx r3
	nop
_02257CDC: .word ov22_02259804
	thumb_func_end ov22_02257CD4

	thumb_func_start ov22_02257CE0
ov22_02257CE0: ; 0x02257CE0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x78]
	add r4, r1, #0
	mov r1, #0
	add r6, r2, #0
	bl sub_020080C0
	str r0, [r4, #0]
	ldr r0, [r5, #0x78]
	mov r1, #1
	bl sub_020080C0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02257CE0

	thumb_func_start ov22_02257D00
ov22_02257D00: ; 0x02257D00
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov22_02257D00

	thumb_func_start ov22_02257D04
ov22_02257D04: ; 0x02257D04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r6, [r7, #0x1c]
	mov r4, #0
	add r7, #0x14
	str r1, [sp]
	str r2, [sp, #4]
	add r5, r4, #0
	cmp r6, r7
	beq _02257D62
_02257D1A:
	add r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02257EC8
	cmp r4, #0
	bge _02257D2C
	neg r1, r4
	b _02257D2E
_02257D2C:
	add r1, r4, #0
_02257D2E:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bge _02257D38
	neg r2, r0
	b _02257D3A
_02257D38:
	add r2, r0, #0
_02257D3A:
	cmp r2, r1
	ble _02257D40
	add r4, r0, #0
_02257D40:
	cmp r5, #0
	bge _02257D48
	neg r1, r5
	b _02257D4A
_02257D48:
	add r1, r5, #0
_02257D4A:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _02257D54
	neg r2, r0
	b _02257D56
_02257D54:
	add r2, r0, #0
_02257D56:
	cmp r2, r1
	ble _02257D5C
	add r5, r0, #0
_02257D5C:
	ldr r6, [r6, #8]
	cmp r6, r7
	bne _02257D1A
_02257D62:
	ldr r0, [sp]
	str r4, [r0, #0]
	ldr r0, [sp, #4]
	str r5, [r0, #0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02257D04

	thumb_func_start ov22_02257D70
ov22_02257D70: ; 0x02257D70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	ldr r4, [r0, #0x1c]
	add r7, #0x14
	str r0, [sp]
	add r6, r1, #0
	cmp r4, r7
	beq _02257DCE
	asr r0, r6, #0xa
	mov r1, #0x1f
	and r0, r1
	str r0, [sp, #0xc]
	asr r0, r6, #5
	and r0, r1
	str r0, [sp, #8]
	add r0, r6, #0
	and r0, r1
	str r0, [sp, #4]
_02257D96:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02257DA8
	ldr r0, [r4, #0]
	add r1, r6, #0
	ldr r0, [r0, #4]
	bl sub_0201529C
	b _02257DC8
_02257DA8:
	ldr r5, [r4, #0]
	ldr r2, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #0x18
	bl sub_02007DEC
	ldr r0, [r5, #0]
	ldr r2, [sp, #8]
	mov r1, #0x19
	bl sub_02007DEC
	ldr r0, [r5, #0]
	ldr r2, [sp, #4]
	mov r1, #0x1a
	bl sub_02007DEC
_02257DC8:
	ldr r4, [r4, #8]
	cmp r4, r7
	bne _02257D96
_02257DCE:
	ldr r0, [sp]
	ldr r4, [r0, #0xc]
	add r5, r0, #4
	cmp r4, r5
	beq _02257DE8
_02257DD8:
	ldr r0, [r4, #0]
	add r1, r6, #0
	ldr r0, [r0, #4]
	bl sub_0201529C
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _02257DD8
_02257DE8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257D70

	thumb_func_start ov22_02257DEC
ov22_02257DEC: ; 0x02257DEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	str r0, [sp, #0xc]
	str r2, [sp, #0x14]
	str r1, [sp, #0x10]
	add r0, r1, #0
	add r1, sp, #0x54
	add r2, sp, #0x50
	add r4, r3, #0
	bl ov22_02259648
	ldr r0, [sp, #0x10]
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl ov22_02259698
	add r0, sp, #0x30
	str r0, [sp]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x44
	add r2, sp, #0x34
	add r3, sp, #0x40
	bl ov22_022596B0
	mov r0, #0x76
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r5, #0
	str r0, [sp, #0x20]
	ldr r6, [sp, #0x54]
	ldr r0, [sp, #0x4c]
	ldr r7, [sp, #0x44]
	add r1, r6, r0
	ldr r0, [sp, #0x34]
	add r4, r5, #0
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x48]
	str r0, [sp, #0x24]
	add r1, r0, r1
	ldr r0, [sp, #0x30]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x2c]
	add r0, #0x78
	str r0, [sp, #0x2c]
_02257E50:
	str r4, [sp]
	add r0, sp, #0x3c
	str r0, [sp, #4]
	add r0, sp, #0x38
	str r0, [sp, #8]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	add r0, r1, r0
	ldr r1, [sp, #0x18]
	add r2, r6, r7
	bl ov22_022577EC
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x3c]
	ldr r2, [sp, #0x38]
	ldr r3, [sp, #0x20]
	bl ov22_022592F0
	add r4, r4, #1
	orr r5, r0
	cmp r4, #0x10
	blt _02257E50
	cmp r5, #0
	beq _02257EA6
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02257E98
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, #0x14
	str r1, [sp, #0xc]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257E98:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x20]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257EA6:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02257EBA
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, r1, #4
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02257EBA:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #0x10]
	bl ov22_02259520
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_02257DEC

	thumb_func_start ov22_02257EC8
ov22_02257EC8: ; 0x02257EC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl ov22_02259698
	add r0, r6, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov22_02259648
	add r0, sp, #4
	str r0, [sp]
	add r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov22_022596B0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	add r2, r0, r1
	mov r1, #0x8a
	sub r2, r1, r2
	ldr r1, [sp, #0x20]
	add r1, r0, r1
	ldr r0, [sp, #8]
	sub r1, r1, r0
	ldr r0, [sp, #0x14]
	sub r1, #0xf6
	add r6, r0, r3
	mov r3, #0x12
	sub r3, r3, r6
	ldr r6, [sp, #0x1c]
	add r6, r0, r6
	ldr r0, [sp, #4]
	sub r6, r6, r0
	sub r6, #0x8f
	cmp r2, #0
	ble _02257F24
	str r2, [r5, #0]
	b _02257F32
_02257F24:
	cmp r1, #0
	ble _02257F2E
	neg r0, r1
	str r0, [r5, #0]
	b _02257F32
_02257F2E:
	mov r0, #0
	str r0, [r5, #0]
_02257F32:
	cmp r3, #0
	ble _02257F3C
	add sp, #0x24
	str r3, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_02257F3C:
	cmp r6, #0
	ble _02257F48
	neg r0, r6
	add sp, #0x24
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, pc}
_02257F48:
	mov r0, #0
	str r0, [r4, #0]
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_02257EC8

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
	bl sub_020D5124
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
	bl sub_020E1F6C
	pop {r3, pc}
_0225803E:
	add r0, r2, #0
	bl ov22_022589BC
	mov r1, #9
	bl sub_020E1F6C
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
	bl sub_020E2178
	ldr r0, [r5, #0]
	add r0, r0, r1
	str r0, [r5, #0]
	bl sub_0201D35C
	ldr r2, [sp, #0x14]
	mov r1, #0x7d
	sub r1, r1, r2
	bl sub_020E2178
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
	bl sub_020E1F6C
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
	bl sub_020E1F6C
	add r7, r1, #0
	add r0, r7, #0
	mov r1, #3
	bl sub_020E1F6C
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #3
	bl sub_020E1F6C
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
	bl sub_020D5124
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
	bl sub_020E1F6C
	sub r0, r4, r1
	add r0, r5, r0
	add r1, r4, #0
	bl sub_020E1F6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_022588D8

	thumb_func_start ov22_022588F0
ov22_022588F0: ; 0x022588F0
	add r3, r0, #0
	mov r2, #0x1c
	mov r1, #0
_022588F6:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _022588F6
	ldr r1, _02258908 ; =ov22_02258948
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
_02258908: .word ov22_02258948
	thumb_func_end ov22_022588F0

	thumb_func_start ov22_0225890C
ov22_0225890C: ; 0x0225890C
	push {r4, lr}
	ldr r1, _02258944 ; =0x021BF6BC
	add r4, r0, #0
	ldrh r2, [r1, #0x20]
	cmp r2, #0
	beq _0225891E
	ldr r1, [r4, #4]
	blx r1
	b _02258934
_0225891E:
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	beq _0225892A
	ldr r1, [r4, #0xc]
	blx r1
	b _02258934
_0225892A:
	ldrb r1, [r4, #0x18]
	cmp r1, #0
	beq _02258934
	ldr r1, [r4, #8]
	blx r1
_02258934:
	ldr r0, _02258944 ; =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	strh r1, [r4, #0x14]
	ldrh r1, [r0, #0x1e]
	strh r1, [r4, #0x16]
	ldrh r0, [r0, #0x22]
	strb r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
_02258944: .word 0x021BF6BC
	thumb_func_end ov22_0225890C

	thumb_func_start ov22_02258948
ov22_02258948: ; 0x02258948
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02258948

	thumb_func_start ov22_0225894C
ov22_0225894C: ; 0x0225894C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	mov r4, #0
	add r5, r7, #0
_02258956:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D94
	add r4, r4, #1
	stmia r5!, {r0}
	cmp r4, #0x64
	blt _02258956
	mov r0, #0x19
	mov r3, #0
	add r2, r7, #0
	mov r1, #0x12
	lsl r0, r0, #4
_02258970:
	add r3, r3, #1
	str r1, [r2, r0]
	add r2, r2, #4
	cmp r3, #0x12
	blt _02258970
	mov r5, #0x19
	mov r4, #0
	lsl r5, r5, #4
_02258980:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029DD4
	cmp r0, #0x12
	beq _02258992
	lsl r0, r0, #2
	add r0, r7, r0
	str r4, [r0, r5]
_02258992:
	add r4, r4, #1
	cmp r4, #0x12
	blt _02258980
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225894C

	thumb_func_start ov22_0225899C
ov22_0225899C: ; 0x0225899C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #0x64
	blo _022589AA
	bl sub_02022974
_022589AA:
	lsl r0, r5, #2
	ldr r0, [r4, r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225899C

	thumb_func_start ov22_022589B0
ov22_022589B0: ; 0x022589B0
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov22_022589B0

	thumb_func_start ov22_022589BC
ov22_022589BC: ; 0x022589BC
	push {r3, r4}
	mov r2, #0x19
	mov r4, #0
	lsl r2, r2, #4
_022589C4:
	ldr r3, [r0, r2]
	cmp r1, r3
	bne _022589D0
	add r0, r4, #0
	pop {r3, r4}
	bx lr
_022589D0:
	add r4, r4, #1
	add r0, r0, #4
	cmp r4, #0x12
	blt _022589C4
	add r0, r4, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_022589BC

	thumb_func_start ov22_022589E0
ov22_022589E0: ; 0x022589E0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov22_022588F0
	mov r0, #0xd
	mov r1, #0x34
	bl sub_02018144
	str r0, [r5, #0]
	mov r1, #0
	mov r2, #0x34
	bl sub_020D5124
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x18]
	str r4, [r1, #4]
	str r6, [r1, #8]
	str r7, [r1, #0]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x2c]
	ldr r0, _02258A24 ; =ov22_02258A48
	str r0, [r5, #4]
	ldr r0, _02258A28 ; =ov22_02258BB8
	str r0, [r5, #8]
	ldr r0, _02258A2C ; =ov22_02258D4C
	str r0, [r5, #0xc]
	ldr r0, _02258A30 ; =ov22_02258A34
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02258A24: .word ov22_02258A48
_02258A28: .word ov22_02258BB8
_02258A2C: .word ov22_02258D4C
_02258A30: .word ov22_02258A34
	thumb_func_end ov22_022589E0

	thumb_func_start ov22_02258A34
ov22_02258A34: ; 0x02258A34
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl ov22_022588F0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02258A34

	thumb_func_start ov22_02258A48
ov22_02258A48: ; 0x02258A48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r4, [r5, #0]
	ldr r0, [r4, #4]
	bl ov22_02257BE8
	cmp r0, #0
	beq _02258ACA
	ldr r3, [r4, #0]
	ldr r0, [r4, #4]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02257C20
	add r6, r0, #0
	beq _02258A7A
	ldr r0, [r6, #4]
	cmp r0, #3
	bne _02258A7A
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _02258A7A
	mov r6, #0
_02258A7A:
	cmp r6, #0
	beq _02258B06
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _02258A90
	ldr r0, [r4, #4]
	add r1, r6, #0
	bl ov22_02257A80
	mov r7, #0
	b _02258AAC
_02258A90:
	add r0, r6, #0
	bl ov22_022579E8
	ldr r0, [r6, #0]
	bl ov22_022591E0
	add r1, r4, #0
	add r2, r4, #0
	add r7, r0, #0
	add r0, r6, #0
	add r1, #0x24
	add r2, #0x28
	bl ov22_02259648
_02258AAC:
	ldr r0, [r4, #4]
	bl ov22_02257B10
	ldr r0, [sp, #8]
	add r1, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	mov r2, #1
	bl ov22_02258E88
	bl ov22_02255390
	b _02258B06
_02258ACA:
	ldr r0, [r4, #8]
	bl ov22_022582E8
	cmp r0, #0
	beq _02258B06
	ldr r3, [r4, #0]
	ldr r0, [r4, #8]
	ldr r3, [r3, #0x38]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02258320
	add r6, r0, #0
	beq _02258B06
	bl ov22_022581B8
	ldr r0, [r4, #8]
	bl ov22_022581EC
	ldr r0, [sp, #8]
	mov r2, #0
	str r0, [sp]
	str r2, [sp, #4]
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	add r1, r6, #0
	bl ov22_02258E88
	bl ov22_02255390
_02258B06:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02258B50
	ldr r1, [r1, #4]
	ldr r0, _02258B54 ; =0x000005EB
	cmp r1, #0
	beq _02258B1E
	cmp r1, #1
	beq _02258B28
	cmp r1, #3
	beq _02258B3A
	b _02258B42
_02258B1E:
	ldr r1, _02258B58 ; =ov22_02258BB8
	str r1, [r5, #8]
	ldr r1, _02258B5C ; =ov22_02258D4C
	str r1, [r5, #0xc]
	b _02258B42
_02258B28:
	ldr r0, _02258B60 ; =ov22_02258B78
	str r0, [r5, #8]
	ldr r0, _02258B64 ; =ov22_02258B74
	str r0, [r5, #0xc]
	add r0, r5, #0
	bl ov22_02258E5C
	ldr r0, _02258B68 ; =0x0000067E
	b _02258B42
_02258B3A:
	ldr r1, _02258B6C ; =ov22_02258D7C
	str r1, [r5, #8]
	ldr r1, _02258B70 ; =ov22_02258DAC
	str r1, [r5, #0xc]
_02258B42:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
	add r0, r4, #0
	bl ov22_02259040
_02258B50:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02258B54: .word 0x000005EB
_02258B58: .word ov22_02258BB8
_02258B5C: .word ov22_02258D4C
_02258B60: .word ov22_02258B78
_02258B64: .word ov22_02258B74
_02258B68: .word 0x0000067E
_02258B6C: .word ov22_02258D7C
_02258B70: .word ov22_02258DAC
	thumb_func_end ov22_02258A48

	thumb_func_start ov22_02258B74
ov22_02258B74: ; 0x02258B74
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02258B74

	thumb_func_start ov22_02258B78
ov22_02258B78: ; 0x02258B78
	push {r4, lr}
	sub sp, #8
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258BB2
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _02258B8E
	bl sub_02022974
_02258B8E:
	ldr r0, [r4, #0x10]
	mov r2, #0x1c
	ldr r0, [r0, #4]
	mov r3, #0x1e
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	mov r1, #4
	str r0, [sp, #4]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	add r0, r4, #0
	bl ov22_02258F4C
	add r0, r4, #0
	bl ov22_02258EE4
_02258BB2:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02258B78

	thumb_func_start ov22_02258BB8
ov22_02258BB8: ; 0x02258BB8
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r6, r0, #0
	ldr r4, [r6, #0]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	bne _02258BC8
	b _02258D36
_02258BC8:
	add r1, sp, #0x18
	str r1, [sp]
	add r1, sp, #0x24
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov22_02258F38
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov22_02257C04
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	bl ov22_02257C04
	add r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl ov22_02257C04
	add r5, r5, r0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov22_02257C04
	add r0, r5, r0
	cmp r0, #4
	blt _02258C6A
	ldr r2, [r4, #0]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r2, #0x38]
	bl ov22_02257A5C
	cmp r0, #0
	bne _02258C54
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, _02258D3C ; =0x00000683
	bl sub_02005748
	ldr r0, [r4, #0xc]
	ldr r2, _02258D40 ; =0x00000181
	mov r1, #0x1a
	mov r3, #3
	bl ov22_0225A628
	ldr r0, [r4, #0x10]
	mov r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov22_02258F4C
	b _02258D30
_02258C54:
	ldr r0, [r4, #4]
	bl ov22_02257B10
	bl ov22_02255360
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, _02258D44 ; =0x000005EA
	bl sub_02005748
	b _02258D30
_02258C6A:
	ldr r0, [r4, #0x10]
	add r1, sp, #0x24
	ldr r5, [r0, #0]
	add r0, sp, #0x18
	str r0, [sp]
	add r0, r6, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov22_02258EF8
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	bl ov22_02258304
	add r6, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov22_02258304
	add r0, r6, r0
	cmp r0, #2
	bge _02258CE8
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02258CD4
	ldr r0, [r4, #0x10]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov22_02259698
	bl sub_0201D35C
	ldr r2, [sp, #0x14]
	mov r1, #0x6c
	sub r1, r1, r2
	bl sub_020E2178
	add r1, #0xa
	str r1, [sp, #0xc]
	bl sub_0201D35C
	ldr r2, [sp, #0x10]
	mov r1, #0x7d
	sub r1, r1, r2
	bl sub_020E2178
	add r1, #0x12
	str r1, [sp, #8]
	b _02258CE0
_02258CD4:
	mov r0, #0x1c
	ldrsh r0, [r4, r0]
	str r0, [sp, #0xc]
	mov r0, #0x1e
	ldrsh r0, [r4, r0]
	str r0, [sp, #8]
_02258CE0:
	ldr r0, _02258D3C ; =0x00000683
	bl sub_02005748
	b _02258CF8
_02258CE8:
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259648
	ldr r0, _02258D48 ; =0x000005EB
	bl sub_02005748
_02258CF8:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #1
	bne _02258D16
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #8]
	ldr r0, [r0, #4]
	ldr r1, [r5, #0]
	ldr r2, [r2, #4]
	bl ov22_02257FB0
	add r1, r4, #0
	add r1, #0x21
	strb r0, [r1]
_02258D16:
	ldr r0, [r4, #0x10]
	mov r1, #4
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x21
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	add r0, r4, #0
	bl ov22_02258F4C
_02258D30:
	add r0, r4, #0
	bl ov22_02258EE4
_02258D36:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_02258D3C: .word 0x00000683
_02258D40: .word 0x00000181
_02258D44: .word 0x000005EA
_02258D48: .word 0x000005EB
	thumb_func_end ov22_02258BB8

	thumb_func_start ov22_02258D4C
ov22_02258D4C: ; 0x02258D4C
	push {r4, lr}
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	beq _02258D70
	ldr r3, _02258D74 ; =0x021BF6BC
	ldr r1, _02258D78 ; =0x0000FFFF
	ldrh r4, [r3, #0x1c]
	cmp r4, r1
	beq _02258D70
	beq _02258D70
	ldrh r3, [r3, #0x1e]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #0x18]
	sub r1, r4, r1
	sub r2, r3, r2
	bl ov22_022595F8
_02258D70:
	pop {r4, pc}
	nop
_02258D74: .word 0x021BF6BC
_02258D78: .word 0x0000FFFF
	thumb_func_end ov22_02258D4C

	thumb_func_start ov22_02258D7C
ov22_02258D7C: ; 0x02258D7C
	push {r4, lr}
	ldr r4, [r0, #0]
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02258DA6
	ldr r0, [r4, #4]
	bl ov22_022579D8
	ldr r0, [r4, #4]
	bl ov22_02257B10
	bl ov22_02255360
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, _02258DA8 ; =0x000005EB
	bl sub_02005748
	add r0, r4, #0
	bl ov22_02258EE4
_02258DA6:
	pop {r4, pc}
	; .align 2, 0
_02258DA8: .word 0x000005EB
	thumb_func_end ov22_02258D7C

	thumb_func_start ov22_02258DAC
ov22_02258DAC: ; 0x02258DAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r4, [r0, #0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258E50
	ldr r1, _02258E54 ; =0x021BF6BC
	ldrh r2, [r1, #0x1c]
	ldr r1, _02258E58 ; =0x0000FFFF
	cmp r2, r1
	beq _02258E50
	beq _02258E50
	add r1, sp, #8
	str r1, [sp]
	add r1, sp, #0x14
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl ov22_022596B0
	ldr r0, [r4, #0x10]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259698
	ldr r0, _02258E54 ; =0x021BF6BC
	ldr r1, [r4, #0x14]
	ldrh r2, [r0, #0x1c]
	ldr r3, [sp, #0x18]
	sub r5, r2, r1
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x1c]
	sub r6, r1, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	sub r0, r2, r0
	ldr r2, [sp, #8]
	add r7, r6, r1
	sub r2, r3, r2
	ldr r3, [sp, #0x14]
	str r2, [sp, #0x18]
	add r2, r5, r3
	str r0, [sp, #0x1c]
	cmp r2, #0x8a
	bgt _02258E0E
	mov r0, #0x8a
	sub r5, r0, r3
	b _02258E18
_02258E0E:
	add r2, r5, r0
	cmp r2, #0xf6
	blt _02258E18
	mov r2, #0xf6
	sub r5, r2, r0
_02258E18:
	cmp r7, #0x12
	bgt _02258E22
	mov r0, #0x12
	sub r6, r0, r1
	b _02258E2E
_02258E22:
	ldr r1, [sp, #0x18]
	add r0, r6, r1
	cmp r0, #0x8f
	blt _02258E2E
	mov r0, #0x8f
	sub r6, r0, r1
_02258E2E:
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov22_02259074
	ldr r0, [r4, #4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov22_02257D04
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, r5, r1
	add r2, r6, r2
	bl ov22_02259074
_02258E50:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02258E54: .word 0x021BF6BC
_02258E58: .word 0x0000FFFF
	thumb_func_end ov22_02258DAC

	thumb_func_start ov22_02258E5C
ov22_02258E5C: ; 0x02258E5C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02258E84
	ldr r0, [r0, #4]
	cmp r0, #1
	beq _02258E70
	bl sub_02022974
_02258E70:
	ldr r0, [r4, #0x10]
	ldr r5, [r0, #0]
	ldr r0, [r4, #4]
	bl ov22_02257CD4
	ldr r0, [r4, #4]
	ldr r1, [r5, #0]
	mov r2, #0xe
	bl ov22_02257C88
_02258E84:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02258E5C

	thumb_func_start ov22_02258E88
ov22_02258E88: ; 0x02258E88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	add r7, r3, #0
	bl ov22_02259648
	str r4, [r5, #0x10]
	ldr r0, [sp, #4]
	strh r0, [r5, #0x1c]
	ldr r0, [sp]
	strh r0, [r5, #0x1e]
	add r0, r5, #0
	add r0, #0x20
	strb r6, [r0]
	ldr r0, [sp, #0x20]
	str r7, [r5, #0x14]
	str r0, [r5, #0x18]
	cmp r6, #0
	bne _02258ECA
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	ldr r1, [r1, #4]
	bl ov22_02258424
	add r1, r5, #0
	add r1, #0x21
	strb r0, [r1]
	b _02258ED2
_02258ECA:
	add r0, r5, #0
	mov r1, #0
	add r0, #0x21
	strb r1, [r0]
_02258ED2:
	mov r0, #1
	str r0, [r5, #0x30]
	ldr r1, [sp, #0x24]
	add r0, r4, #0
	bl ov22_02259560
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02258E88

	thumb_func_start ov22_02258EE4
ov22_02258EE4: ; 0x02258EE4
	mov r2, #0
	str r2, [r0, #0x10]
	strh r2, [r0, #0x1c]
	add r1, r0, #0
	strh r2, [r0, #0x1e]
	add r1, #0x20
	strb r2, [r1]
	add r0, #0x21
	strb r2, [r0]
	bx lr
	thumb_func_end ov22_02258EE4

	thumb_func_start ov22_02258EF8
ov22_02258EF8: ; 0x02258EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [r0, #0]
	add r5, r1, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	add r1, sp, #0xc
	add r2, sp, #8
	add r7, r3, #0
	bl ov22_02259698
	ldr r0, [r4, #0x10]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r0, [sp]
	str r0, [r5, #0]
	ldr r1, [sp]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r6, #0]
	ldr r0, [sp, #4]
	str r0, [r7, #0]
	ldr r1, [sp, #4]
	ldr r0, [sp, #0xc]
	add r1, r1, r0
	ldr r0, [sp, #0x28]
	str r1, [r0, #0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02258EF8

	thumb_func_start ov22_02258F38
ov22_02258F38: ; 0x02258F38
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bl ov22_02259724
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov22_02258F38

	thumb_func_start ov22_02258F4C
ov22_02258F4C: ; 0x02258F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	ldr r0, _02258FBC ; =ov22_02258FC0
	mov r1, #0x2c
	mov r2, #0
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #8
	str r0, [r4, #0]
	ldr r0, [r5, #0x10]
	add r2, sp, #4
	str r0, [r4, #4]
	str r6, [r4, #0x20]
	ldr r0, [sp]
	str r7, [r4, #0x10]
	str r0, [r4, #0x14]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #8]
	add r0, #0x3c
	str r0, [r4, #0x24]
	add r0, r5, #0
	add r0, #0x30
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x10]
	bl ov22_02259648
	ldr r1, [r4, #0x10]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [r4, #8]
	ldr r1, [r4, #0x14]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02258FBC: .word ov22_02258FC0
	thumb_func_end ov22_02258F4C

	thumb_func_start ov22_02258FC0
ov22_02258FC0: ; 0x02258FC0
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x24]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0225903A
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp, #4]
	ldr r0, [r4, #8]
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r4, #0xc]
	add r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	bmi _02258FFE
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02259030
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02259030
_02258FFE:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bl ov22_022595F8
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #4]
	bl ov22_0225818C
	ldr r0, [r4, #0]
	bl ov22_022581EC
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02259026
	bl ov22_02255360
_02259026:
	add r0, r5, #0
	bl sub_020067D0
	add sp, #8
	pop {r3, r4, r5, pc}
_02259030:
	ldr r0, [r4, #4]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov22_022595F8
_0225903A:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02258FC0

	thumb_func_start ov22_02259040
ov22_02259040: ; 0x02259040
	push {r3, lr}
	ldr r3, [r0, #0x10]
	ldr r1, [r3, #4]
	cmp r1, #0
	bne _0225905A
	ldr r3, [r3, #0]
	ldr r0, [r0, #0xc]
	ldr r2, _02259070 ; =0x00000182
	ldr r3, [r3, #0]
	mov r1, #0x1a
	bl ov22_0225A628
	pop {r3, pc}
_0225905A:
	cmp r1, #1
	bne _0225906E
	ldr r3, [r3, #0]
	mov r2, #0x61
	ldr r0, [r0, #0xc]
	ldr r3, [r3, #0]
	mov r1, #0x1a
	lsl r2, r2, #2
	bl ov22_0225A628
_0225906E:
	pop {r3, pc}
	; .align 2, 0
_02259070: .word 0x00000182
	thumb_func_end ov22_02259040

	thumb_func_start ov22_02259074
ov22_02259074: ; 0x02259074
	push {r4, r5, r6, lr}
	ldr r4, [r0, #0]
	add r5, r1, #0
	ldr r0, [r4, #0x10]
	add r6, r2, #0
	bl ov22_022595F8
	ldr r1, [r4, #0x24]
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #4]
	sub r1, r5, r1
	sub r2, r6, r2
	bl ov22_02257ACC
	str r5, [r4, #0x24]
	str r6, [r4, #0x28]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02259074

	thumb_func_start ov22_02259098
ov22_02259098: ; 0x02259098
	push {r3, r4, r5, lr}
	mov r2, #0
	add r4, r1, #0
	str r2, [sp]
	add r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	mov r3, #0xe
	bl sub_02006FE8
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0x76
	bl ov22_02255340
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl sub_020093A0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259098

	thumb_func_start ov22_022590C0
ov22_022590C0: ; 0x022590C0
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #0
	str r4, [sp, #4]
	bl ov22_022590D4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_022590C0

	thumb_func_start ov22_022590D4
ov22_022590D4: ; 0x022590D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r2, #0
	add r5, r0, #0
	add r7, r1, #0
	add r4, r3, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #2
	bl sub_02075F00
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0xc0
	mov r3, #0x38
	bl sub_02007C34
	str r0, [r5, #0]
	add r0, r5, #0
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl ov22_02259270
	ldr r1, [sp, #0x1c]
	mov r2, #0x38
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	ldr r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #0x18]
	sub r0, r2, r0
	strb r0, [r5, #4]
	ldr r0, [sp, #0x18]
	mov r1, #0xc0
	add r0, #0x38
	strb r0, [r5, #5]
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	strb r0, [r5, #6]
	ldr r0, [sp, #0x1c]
	add r0, #0xc0
	strb r0, [r5, #7]
	ldr r0, [sp, #0x18]
	str r0, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r5, #4
	bl ov22_02259448
	add r0, r6, #0
	mov r1, #2
	bl sub_020765B8
	mov r2, #0
	str r2, [sp]
	add r7, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r3, [sp, #0x38]
	bl sub_02006FE8
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	bl sub_020A7118
	ldr r0, [sp, #0x14]
	ldrh r1, [r4]
	ldr r0, [r0, #0x14]
	bl sub_020093A0
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	bne _02259196
	ldr r2, [sp, #0x14]
	add r3, r5, #0
	ldrh r1, [r2, #2]
	ldr r0, [r2, #0x14]
	ldrh r2, [r2]
	lsl r1, r1, #3
	add r3, #8
	lsl r2, r2, #3
	bl ov22_022593B8
	b _022591AC
_02259196:
	ldr r1, [sp, #0x14]
	ldr r0, [r1, #0x14]
	ldrh r1, [r1, #2]
	lsl r1, r1, #3
	bl ov22_0225936C
	strb r0, [r5, #8]
	ldrb r0, [r5, #8]
	strb r0, [r5, #9]
	strb r7, [r5, #0xb]
	strb r7, [r5, #0xa]
_022591AC:
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	str r6, [r5, #0xc]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022590D4

	thumb_func_start ov22_022591B8
ov22_022591B8: ; 0x022591B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02007DC8
	mov r1, #0x10
	mov r0, #0
_022591C6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _022591C6
	pop {r4, pc}
	thumb_func_end ov22_022591B8

	thumb_func_start ov22_022591D0
ov22_022591D0: ; 0x022591D0
	ldr r3, _022591DC ; =sub_02007DEC
	add r2, r1, #0
	ldr r0, [r0, #0]
	mov r1, #2
	bx r3
	nop
_022591DC: .word sub_02007DEC
	thumb_func_end ov22_022591D0

	thumb_func_start ov22_022591E0
ov22_022591E0: ; 0x022591E0
	ldr r3, _022591E8 ; =sub_020080C0
	ldr r0, [r0, #0]
	mov r1, #2
	bx r3
	; .align 2, 0
_022591E8: .word sub_020080C0
	thumb_func_end ov22_022591E0

	thumb_func_start ov22_022591EC
ov22_022591EC: ; 0x022591EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02259270
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, r4, #0
	bl sub_02007DEC
	ldr r0, [r5, #0]
	mov r1, #1
	add r2, r6, #0
	bl sub_02007DEC
	ldr r1, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r1, [sp, #8]
	str r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp, #8]
	str r2, [sp]
	ldr r3, [sp, #8]
	add r0, r5, #4
	add r1, r4, #0
	add r2, r6, #0
	bl ov22_02259448
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_022591EC

	thumb_func_start ov22_02259238
ov22_02259238: ; 0x02259238
	ldr r3, _02259240 ; =sub_02022734
	add r0, r0, #4
	bx r3
	nop
_02259240: .word sub_02022734
	thumb_func_end ov22_02259238

	thumb_func_start ov22_02259244
ov22_02259244: ; 0x02259244
	ldr r3, _0225924C ; =sub_02022830
	add r0, r0, #4
	bx r3
	nop
_0225924C: .word sub_02022830
	thumb_func_end ov22_02259244

	thumb_func_start ov22_02259250
ov22_02259250: ; 0x02259250
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #0
	add r6, r2, #0
	bl sub_020080C0
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_020080C0
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_02259250

	thumb_func_start ov22_02259270
ov22_02259270: ; 0x02259270
	mov r0, #0x50
	str r0, [r1, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end ov22_02259270

	thumb_func_start ov22_02259278
ov22_02259278: ; 0x02259278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov22_02259238
	cmp r0, #0
	bne _02259292
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02259292:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259250
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259270
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r2, r0
	ldr r3, [sp, #8]
	ldr r0, [sp]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [sp]
	ldr r0, _022592EC ; =0x021BF6BC
	str r1, [sp, #4]
	ldrh r2, [r0, #0x1c]
	mov r3, #0
	sub r1, r2, r1
	str r1, [r4, #0]
	ldrh r1, [r0, #0x1e]
	ldr r0, [sp]
	sub r2, r1, r0
	str r2, [r6, #0]
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov22_02255420
	cmp r0, #0
	bne _022592E6
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022592E6:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022592EC: .word 0x021BF6BC
	thumb_func_end ov22_02259278

	thumb_func_start ov22_022592F0
ov22_022592F0: ; 0x022592F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov22_02259244
	cmp r0, #0
	bne _0225930A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225930A:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259250
	add r0, r5, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259270
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r1, r2, r0
	ldr r3, [sp, #8]
	str r1, [sp, #4]
	lsr r2, r3, #0x1f
	add r2, r3, r2
	ldr r0, [sp]
	asr r2, r2, #1
	sub r0, r0, r2
	str r0, [sp]
	sub r2, r6, r0
	sub r1, r4, r1
	add r0, r7, #0
	mov r3, #0
	bl ov22_02255420
	cmp r0, #0
	bne _02259350
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02259350:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022592F0

	thumb_func_start ov22_02259358
ov22_02259358: ; 0x02259358
	ldrb r2, [r0, #8]
	strb r2, [r1]
	ldrb r2, [r0, #9]
	strb r2, [r1, #1]
	ldrb r2, [r0, #0xa]
	strb r2, [r1, #2]
	ldrb r0, [r0, #0xb]
	strb r0, [r1, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259358

	thumb_func_start ov22_0225936C
ov22_0225936C: ; 0x0225936C
	push {r4, r5, r6, r7}
	mov ip, r0
	add r7, r1, #0
	mov r2, #0
_02259374:
	mov r3, #0
	add r4, r3, #0
_02259378:
	add r1, r2, r4
	lsr r0, r1, #0x1f
	lsl r6, r1, #0x1f
	sub r6, r6, r0
	mov r5, #0x1f
	ror r6, r5
	add r5, r0, r6
	lsl r6, r5, #2
	mov r5, #0xf
	add r0, r1, r0
	lsl r5, r6
	asr r1, r0, #1
	mov r0, ip
	lsl r5, r5, #0x18
	ldrsb r0, [r0, r1]
	lsr r5, r5, #0x18
	tst r0, r5
	beq _022593A2
	add r0, r2, #0
	pop {r4, r5, r6, r7}
	bx lr
_022593A2:
	add r3, r3, #1
	add r4, r4, r7
	cmp r3, #0x50
	blt _02259378
	add r2, r2, #1
	cmp r2, #0x50
	blt _02259374
	mov r0, #0x50
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225936C

	thumb_func_start ov22_022593B8
ov22_022593B8: ; 0x022593B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	add r1, r3, #0
	mov r0, #0x28
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	mov r6, #0
_022593CE:
	mov r2, #0x50
	sub r2, r2, r6
	str r2, [sp, #8]
	lsl r2, r6, #0x18
	lsr r2, r2, #0x18
	mov lr, r2
	ldr r2, [sp, #8]
	mov r0, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	add r5, r0, #0
	mov ip, r2
_022593E6:
	add r7, r6, r5
	lsr r3, r7, #0x1f
	lsl r4, r7, #0x1f
	sub r4, r4, r3
	mov r2, #0x1f
	ror r4, r2
	add r2, r3, r4
	lsl r4, r2, #2
	mov r2, #0xf
	lsl r2, r4
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	add r3, r7, r3
	ldr r2, [sp]
	asr r3, r3, #1
	ldrsb r2, [r2, r3]
	tst r2, r4
	beq _02259434
	ldrb r2, [r1]
	cmp r2, r6
	ble _02259414
	mov r2, lr
	strb r2, [r1]
_02259414:
	ldrb r3, [r1, #1]
	ldr r2, [sp, #8]
	cmp r3, r2
	ble _02259420
	mov r2, ip
	strb r2, [r1, #1]
_02259420:
	ldrb r2, [r1, #2]
	cmp r2, r0
	ble _02259428
	strb r0, [r1, #2]
_02259428:
	mov r2, #0x50
	sub r3, r2, r0
	ldrb r2, [r1, #3]
	cmp r2, r3
	ble _02259434
	strb r3, [r1, #3]
_02259434:
	ldr r2, [sp, #4]
	add r0, r0, #1
	add r5, r5, r2
	cmp r0, #0x50
	blt _022593E6
	add r6, r6, #1
	cmp r6, #0x50
	blt _022593CE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_022593B8

	thumb_func_start ov22_02259448
ov22_02259448: ; 0x02259448
	push {r3, r4}
	ldr r4, [sp, #8]
	sub r4, r2, r4
	bmi _02259452
	b _02259454
_02259452:
	mov r4, #0
_02259454:
	strb r4, [r0]
	ldr r4, [sp, #8]
	add r2, r2, r4
	cmp r2, #0xbf
	bgt _02259460
	b _02259462
_02259460:
	mov r2, #0xbf
_02259462:
	strb r2, [r0, #1]
	sub r2, r1, r3
	bmi _0225946A
	b _0225946C
_0225946A:
	mov r2, #0
_0225946C:
	add r1, r1, r3
	strb r2, [r0, #2]
	cmp r1, #0xff
	bgt _0225947A
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
_0225947A:
	mov r1, #0xff
	strb r1, [r0, #3]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259448

	thumb_func_start ov22_02259484
ov22_02259484: ; 0x02259484
	push {r4, r5, r6, lr}
	add r6, r1, #0
	lsl r4, r6, #4
	add r5, r0, #0
	add r0, r2, #0
	add r1, r4, #0
	bl sub_02018144
	str r0, [r5, #0]
	cmp r0, #0
	bne _0225949E
	bl sub_02022974
_0225949E:
	ldr r0, [r5, #0]
	mov r1, #0
	add r2, r4, #0
	bl sub_020D5124
	str r6, [r5, #4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259484

	thumb_func_start ov22_022594AC
ov22_022594AC: ; 0x022594AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022594AC

	thumb_func_start ov22_022594C0
ov22_022594C0: ; 0x022594C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r7, r2, #0
	cmp r0, #0
	bne _022594D2
	bl sub_02022974
_022594D2:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022594DC
	bl sub_02022974
_022594DC:
	ldr r2, [r5, #4]
	mov r4, #0
	cmp r2, #0
	ble _022594F4
	ldr r1, [r5, #0]
_022594E6:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _022594F4
	add r4, r4, #1
	add r1, #0x10
	cmp r4, r2
	blt _022594E6
_022594F4:
	cmp r2, r4
	bgt _022594FC
	bl sub_02022974
_022594FC:
	ldr r0, [r5, #0]
	lsl r1, r4, #4
	str r6, [r0, r1]
	ldr r0, [r5, #0]
	add r0, r0, r1
	str r7, [r0, #4]
	ldr r0, [r5, #0]
	add r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022594C0

	thumb_func_start ov22_02259510
ov22_02259510: ; 0x02259510
	mov r2, #0x10
	mov r1, #0
_02259514:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _02259514
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259510

	thumb_func_start ov22_02259520
ov22_02259520: ; 0x02259520
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	ldr r2, [r1, #8]
	str r0, [r2, #0xc]
	str r1, [r0, #0xc]
	str r0, [r1, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259520

	thumb_func_start ov22_02259530
ov22_02259530: ; 0x02259530
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [r1, #8]
	ldr r1, [r0, #0xc]
	ldr r0, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259530

	thumb_func_start ov22_02259540
ov22_02259540: ; 0x02259540
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #8]
	cmp r4, r6
	beq _0225955E
_0225954A:
	add r0, r4, #0
	ldr r5, [r4, #8]
	bl ov22_02259530
	add r0, r4, #0
	bl ov22_02259510
	add r4, r5, #0
	cmp r5, r6
	bne _0225954A
_0225955E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259540

	thumb_func_start ov22_02259560
ov22_02259560: ; 0x02259560
	push {r3, lr}
	ldr r2, [r0, #4]
	ldr r0, [r0, #0]
	cmp r2, #3
	bge _02259570
	bl ov22_02254F6C
	pop {r3, pc}
_02259570:
	bl ov22_022591D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02259560

	thumb_func_start ov22_02259578
ov22_02259578: ; 0x02259578
	push {r3, lr}
	ldr r3, [r0, #4]
	ldr r0, [r0, #0]
	cmp r3, #3
	bge _02259596
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _02259590
	bl ov22_02254E44
	pop {r3, pc}
_02259590:
	bl ov22_02254EDC
	pop {r3, pc}
_02259596:
	mov r3, #0
	mvn r3, r3
	cmp r1, r3
	bne _022595A4
	bl ov22_02259238
	pop {r3, pc}
_022595A4:
	bl ov22_02259244
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02259578

	thumb_func_start ov22_022595AC
ov22_022595AC: ; 0x022595AC
	push {r4, lr}
	ldr r4, [r0, #4]
	cmp r4, #0
	bne _022595C2
	ldr r0, [r0, #0]
	ldr r4, [r0, #0]
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595C2:
	cmp r4, #1
	bne _022595D6
	ldr r0, [r0, #0]
	ldr r4, [r0, #0]
	add r4, #0x64
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595D6:
	cmp r4, #2
	ldr r0, [r0, #0]
	bne _022595EA
	ldr r4, [r0, #0]
	add r4, #0x64
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02254E54
	pop {r4, pc}
_022595EA:
	mov r4, #0x76
	lsl r4, r4, #2
	ldr r3, [r3, r4]
	bl ov22_02259278
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_022595AC

	thumb_func_start ov22_022595F8
ov22_022595F8: ; 0x022595F8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [r0, #4]
	add r4, r2, #0
	cmp r1, #3
	bge _02259618
	lsl r1, r5, #0x10
	lsl r2, r4, #0x10
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov22_02254EF4
	add sp, #8
	pop {r4, r5, r6, pc}
_02259618:
	ldr r6, [r0, #0]
	add r1, sp, #4
	add r0, r6, #0
	add r2, sp, #0
	bl ov22_02259270
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	str r1, [sp, #4]
	str r2, [sp]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r4, r2
	bl ov22_022591EC
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_022595F8

	thumb_func_start ov22_02259648
ov22_02259648: ; 0x02259648
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	cmp r3, #3
	bge _02259660
	ldr r0, [r0, #0]
	bl ov22_02254F00
	add sp, #8
	pop {r4, r5, r6, pc}
_02259660:
	ldr r6, [r0, #0]
	add r0, r6, #0
	bl ov22_02259250
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259270
	ldr r1, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	ldr r1, [sp]
	str r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	str r0, [sp]
	ldr r0, [r5, #0]
	sub r0, r0, r2
	str r0, [r5, #0]
	ldr r1, [r4, #0]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r4, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259648

	thumb_func_start ov22_02259698
ov22_02259698: ; 0x02259698
	push {r3, lr}
	ldr r3, [r0, #4]
	ldr r0, [r0, #0]
	cmp r3, #3
	bge _022596A8
	bl ov22_02254F30
	pop {r3, pc}
_022596A8:
	bl ov22_02259270
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_02259698

	thumb_func_start ov22_022596B0
ov22_022596B0: ; 0x022596B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, [r0, #4]
	add r6, r1, #0
	add r5, r3, #0
	ldr r4, [sp, #0x18]
	cmp r2, #3
	ldr r0, [r0, #0]
	bge _022596D2
	add r2, r5, #0
	bl ov22_02254F84
	ldr r0, [r6, #0]
	str r0, [r7, #0]
	ldr r0, [r5, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022596D2:
	add r1, sp, #0
	bl ov22_02259358
	add r0, sp, #0
	ldrb r1, [r0]
	str r1, [r6, #0]
	ldrb r1, [r0, #1]
	str r1, [r7, #0]
	ldrb r1, [r0, #2]
	str r1, [r5, #0]
	ldrb r0, [r0, #3]
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_022596B0

	thumb_func_start ov22_022596EC
ov22_022596EC: ; 0x022596EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, [r5, #8]
	add r6, r1, #0
	add r7, r2, #0
	cmp r4, r5
	beq _0225971E
_022596FC:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r0, [sp, #4]
	add r1, r0, r6
	ldr r0, [sp]
	str r1, [sp, #4]
	add r2, r0, r7
	str r2, [sp]
	add r0, r4, #0
	bl ov22_022595F8
	ldr r4, [r4, #8]
	cmp r4, r5
	bne _022596FC
_0225971E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022596EC

	thumb_func_start ov22_02259724
ov22_02259724: ; 0x02259724
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	add r1, sp, #0x20
	add r2, sp, #0x1c
	add r7, r3, #0
	bl ov22_02259698
	add r0, r5, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov22_02259648
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov22_022596B0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	add r1, r1, r0
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r6, #0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	str r0, [r7, #0]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r1, r1, r0
	ldr r0, [sp, #8]
	sub r1, r1, r0
	ldr r0, [sp, #0x38]
	str r1, [r0, #0]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02259724

	thumb_func_start ov22_02259780
ov22_02259780: ; 0x02259780
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	add r1, sp, #0xc
	add r2, sp, #8
	bl ov22_02259698
	add r0, r6, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02259648
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r2, r0
	str r0, [r5, #0]
	ldr r1, [sp, #8]
	ldr r2, [sp]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	add r0, r2, r0
	str r0, [r4, #0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259780

	thumb_func_start ov22_022597BC
ov22_022597BC: ; 0x022597BC
	add r2, r0, #0
	ldr r0, [r1, #0]
	str r0, [r2, #0]
	ldr r3, [r1, #0x14]
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r2, #0xc]
	ldr r3, [r1, #0x18]
	asr r0, r3, #2
	lsr r0, r0, #0x1d
	add r0, r3, r0
	asr r0, r0, #3
	str r0, [r2, #0x10]
	ldr r0, [r1, #0x1c]
	ldr r3, _02259800 ; =ov22_022599A0
	str r0, [r2, #0x1c]
	ldr r0, [r1, #0x24]
	str r0, [r2, #0x20]
	ldr r0, [r1, #0x20]
	str r0, [r2, #0x24]
	ldr r0, [r1, #0x28]
	str r0, [r2, #0x28]
	ldr r0, [r1, #4]
	str r0, [r2, #4]
	ldr r0, [r1, #0x10]
	str r0, [r2, #8]
	add r0, r1, #0
	add r1, r2, #0
	add r1, #0x14
	add r2, #0x18
	bx r3
	nop
_02259800: .word ov22_022599A0
	thumb_func_end ov22_022597BC

	thumb_func_start ov22_02259804
ov22_02259804: ; 0x02259804
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x2c
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov22_02259804

	thumb_func_start ov22_02259820
ov22_02259820: ; 0x02259820
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #4]
	str r2, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	mov r2, #0
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov22_02259820

	thumb_func_start ov22_02259838
ov22_02259838: ; 0x02259838
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r1, r0, r1
	str r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	ble _0225989C
	mov r2, #0
	str r2, [r5, #0xc]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0225985C
	ldr r1, [r5, #4]
	mov r0, #1
	str r0, [r5, #0x10]
	b _02259862
_0225985C:
	ldr r0, [r5, #0]
	ldr r1, [r0, #8]
	str r2, [r5, #0x10]
_02259862:
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	add r3, sp, #0x14
	ldr r0, [r0, #4]
	bl sub_02006F6C
	ldr r3, [r5, #0]
	add r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3, #0]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov22_02259ABC
	add r0, r4, #0
	bl sub_020181C4
_0225989C:
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259838

	thumb_func_start ov22_022598A0
ov22_022598A0: ; 0x022598A0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r1, [r5, #0]
	ldr r0, [r5, #0x14]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r1, #4]
	ldr r1, [r1, #8]
	add r3, sp, #0x14
	bl sub_02006F6C
	ldr r3, [r5, #0]
	add r4, r0, #0
	ldr r0, [r3, #0x18]
	str r0, [sp]
	ldr r0, [r3, #0xc]
	str r0, [sp, #4]
	ldr r0, [r3, #0x10]
	str r0, [sp, #8]
	ldr r0, [r3, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [r3, #0]
	ldr r1, [r3, #0x1c]
	ldr r2, [sp, #0x14]
	ldr r3, [r3, #0x14]
	bl ov22_02259ABC
	add r0, r4, #0
	bl sub_020181C4
	mov r1, #0x18
	mov r0, #0
_022598E6:
	strb r0, [r5]
	add r5, r5, #1
	sub r1, r1, #1
	bne _022598E6
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_022598A0

	thumb_func_start ov22_022598F4
ov22_022598F4: ; 0x022598F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r0, _0225997C ; =ov22_02259A4C
	mov r1, #0x4c
	mov r2, #0
	mov r3, #0xd
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	str r6, [r4, #0]
	add r7, r5, #0
	add r3, r4, #4
	mov r2, #6
_0225991A:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225991A
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	str r0, [r4, #0x34]
	ldr r0, [sp]
	str r1, [r4, #0x38]
	bl sub_020E1F6C
	str r0, [r4, #0x3c]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	bl sub_020E1F6C
	str r0, [r4, #0x40]
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x1c]
	bl sub_020192EC
	str r0, [r4, #0x44]
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x1c]
	bl sub_020192F8
	str r0, [r4, #0x48]
	mov r0, #0x80
	str r0, [r5, #0x28]
	mov r0, #5
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r0, [sp, #4]
	sub r0, r1, r0
	str r0, [r5, #0x18]
	mov r0, #0xe
	mov r1, #0
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r2, r1, #0
	bl ov22_022599A0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225997C: .word ov22_02259A4C
	thumb_func_end ov22_022598F4

	thumb_func_start ov22_02259980
ov22_02259980: ; 0x02259980
	push {r3, r4}
	ldr r2, [r0, #8]
	add r0, #0xc
	lsr r4, r2, #1
	mov r3, #0
	cmp r4, #0
	ble _0225999C
_0225998E:
	ldrh r2, [r0]
	add r3, r3, #1
	add r2, r2, r1
	strh r2, [r0]
	add r0, r0, #2
	cmp r3, r4
	blt _0225998E
_0225999C:
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_02259980

	thumb_func_start ov22_022599A0
ov22_022599A0: ; 0x022599A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x14]
	add r6, r2, #0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	ldr r1, [r5, #0x18]
	str r0, [sp, #0x18]
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x28]
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0]
	ldr r3, [r5, #0x1c]
	bl ov22_02259B3C
	ldr r0, [r5, #0x1c]
	cmp r0, #4
	bge _022599E0
	mov r2, #0
	b _022599E2
_022599E0:
	mov r2, #4
_022599E2:
	ldr r0, [r5, #0x20]
	lsl r0, r0, #5
	str r0, [sp]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #4]
	ldr r3, [r5, #0x24]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	lsl r3, r3, #5
	bl ov22_02259B8C
	ldr r0, [r5, #0x2c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	add r3, sp, #0x24
	bl sub_02006F6C
	ldr r2, [sp, #0x24]
	str r0, [sp, #0x20]
	ldrh r0, [r2]
	lsr r7, r0, #3
	ldrh r0, [r2, #2]
	add r3, r7, #0
	lsr r0, r0, #3
	str r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x1c]
	bl ov22_02259ABC
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	cmp r4, #0
	beq _02259A3E
	str r7, [r4, #0]
_02259A3E:
	cmp r6, #0
	beq _02259A46
	ldr r0, [sp, #0x1c]
	str r0, [r6, #0]
_02259A46:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_022599A0

	thumb_func_start ov22_02259A4C
ov22_02259A4C: ; 0x02259A4C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x38]
	sub r0, r0, #1
	str r0, [r4, #0x38]
	ldr r1, [r4, #0]
	bmi _02259A80
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x3c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #2
	bl sub_0201C63C
	ldr r1, [r4, #0]
	ldr r3, [r4, #0x40]
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	mov r2, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C63C
	pop {r3, r4, r5, pc}
_02259A80:
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	ldr r3, [r4, #0x44]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_0201C63C
	ldr r1, [r4, #0]
	ldr r3, [r4, #0x48]
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x1c]
	mov r2, #3
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C63C
	ldr r0, [r4, #0]
	add r1, r4, #4
	bl ov22_022597BC
	ldr r1, [r4, #0x34]
	cmp r1, #0
	beq _02259AB4
	mov r0, #1
	str r0, [r1, #0]
_02259AB4:
	add r0, r5, #0
	bl sub_020067D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259A4C

	thumb_func_start ov22_02259ABC
ov22_02259ABC: ; 0x02259ABC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r4, r2, #0
	add r7, r0, #0
	ldr r1, [sp, #0x3c]
	add r0, r4, #0
	add r6, r3, #0
	bl ov22_02259980
	ldr r1, [sp, #0x30]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	str r0, [sp]
	ldr r3, [sp, #0x38]
	str r2, [sp, #4]
	add r4, #0xc
	lsl r3, r3, #0x18
	str r4, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	ldr r2, [sp, #0x34]
	lsl r1, r5, #0x18
	lsl r2, r2, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_020198E8
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x38]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r1, r5, #0x18
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	str r0, [sp, #8]
	add r0, r7, #0
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	lsl r1, r5, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_02259ABC

	thumb_func_start ov22_02259B3C
ov22_02259B3C: ; 0x02259B3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02259B58:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02259B58
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r7, #0
	mov r2, #0
	add r3, r4, #4
	bl sub_02006F50
	str r0, [r4, #8]
	str r5, [r4, #0]
	ldr r0, [sp, #0x20]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02259B88 ; =ov22_02259BD4
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02259B88: .word ov22_02259BD4
	thumb_func_end ov22_02259B3C

	thumb_func_start ov22_02259B8C
ov22_02259B8C: ; 0x02259B8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	str r1, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0x14
	add r5, r2, #0
	add r6, r3, #0
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_02259BA6:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _02259BA6
	ldr r1, [sp]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02006F88
	str r0, [r4, #4]
	str r5, [r4, #8]
	ldr r0, [sp, #0x18]
	str r6, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r0, _02259BD0 ; =ov22_02259C10
	add r1, r4, #0
	mov r2, #0x80
	bl sub_0200DA3C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02259BD0: .word ov22_02259C10
	thumb_func_end ov22_02259B8C

	thumb_func_start ov22_02259BD4
ov22_02259BD4: ; 0x02259BD4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	add r5, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r1, #0x10]
	bl sub_020C2C54
	ldr r3, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [sp]
	ldr r1, [r4, #0xc]
	ldr r2, [r3, #0x14]
	lsl r1, r1, #0x18
	ldr r0, [r4, #0]
	ldr r3, [r3, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201958C
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02259BD4

	thumb_func_start ov22_02259C10
ov22_02259C10: ; 0x02259C10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02259C34
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl sub_020C00B4
	b _02259C44
_02259C34:
	cmp r0, #4
	bne _02259C44
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	ldr r0, [r0, #0xc]
	ldr r2, [r4, #0x10]
	bl sub_020C0108
_02259C44:
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259C10

	thumb_func_start ov22_02259C58
ov22_02259C58: ; 0x02259C58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _02259C66
	bl sub_02022974
_02259C66:
	cmp r4, #0
	bne _02259C6E
	bl sub_02022974
_02259C6E:
	ldr r0, [r4, #0]
	bl sub_02021AA0
	str r0, [r5, #0]
	cmp r0, #0
	bne _02259C7E
	bl sub_02022974
_02259C7E:
	ldr r0, [r4, #0xc]
	str r0, [r5, #4]
	ldr r0, [r4, #8]
	str r0, [r5, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02259C90
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_02259C90:
	ldr r0, _02259C98 ; =ov22_02259D94
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	nop
_02259C98: .word ov22_02259D94
	thumb_func_end ov22_02259C58

	thumb_func_start ov22_02259C9C
ov22_02259C9C: ; 0x02259C9C
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r5, r0, #0
	bl ov22_02259C58
	ldr r0, [r4, #0x14]
	str r0, [sp]
	ldr r0, [r4, #0x10]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	str r0, [sp, #8]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x28]
	str r0, [sp, #0x28]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x2c]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl sub_020127E8
	str r0, [r5, #0x10]
	add sp, #0x30
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02259C9C

	thumb_func_start ov22_02259CE8
ov22_02259CE8: ; 0x02259CE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02021BD4
	mov r1, #0x10
	mov r0, #0
_02259CF6:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _02259CF6
	pop {r4, pc}
	thumb_func_end ov22_02259CE8

	thumb_func_start ov22_02259D00
ov22_02259D00: ; 0x02259D00
	push {r4, lr}
	add r4, r0, #0
	bl ov22_02259CE8
	ldr r0, [r4, #0x10]
	bl sub_02012870
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020D5124
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02259D00

	thumb_func_start ov22_02259D1C
ov22_02259D1C: ; 0x02259D1C
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _02259D2A
	ldr r1, [r0, #8]
	ldr r2, [r0, #0xc]
	blx r2
_02259D2A:
	pop {r3, pc}
	thumb_func_end ov22_02259D1C

	thumb_func_start ov22_02259D2C
ov22_02259D2C: ; 0x02259D2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	mov r4, #2
	add r5, #0x20
_02259D38:
	cmp r4, r7
	beq _02259D44
	add r0, r5, #0
	bl ov22_02259DA4
	b _02259D68
_02259D44:
	cmp r6, #0
	bne _02259D56
	add r0, r5, #0
	bl ov22_02259DB0
	ldr r0, _02259D74 ; =0x0000067D
	bl sub_02005748
	b _02259D68
_02259D56:
	cmp r6, #2
	bne _02259D62
	add r0, r5, #0
	bl ov22_02259D98
	b _02259D68
_02259D62:
	add r0, r5, #0
	bl ov22_02259DB0
_02259D68:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	ble _02259D38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02259D74: .word 0x0000067D
	thumb_func_end ov22_02259D2C

	thumb_func_start ov22_02259D78
ov22_02259D78: ; 0x02259D78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _02259D8A
	bl sub_02022974
_02259D8A:
	str r7, [r5, #4]
	str r6, [r5, #8]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02259D78

	thumb_func_start ov22_02259D94
ov22_02259D94: ; 0x02259D94
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02259D94

	thumb_func_start ov22_02259D98
ov22_02259D98: ; 0x02259D98
	ldr r3, _02259DA0 ; =sub_02021E50
	ldr r0, [r0, #0]
	mov r1, #2
	bx r3
	; .align 2, 0
_02259DA0: .word sub_02021E50
	thumb_func_end ov22_02259D98

	thumb_func_start ov22_02259DA4
ov22_02259DA4: ; 0x02259DA4
	ldr r3, _02259DAC ; =sub_02021E50
	ldr r0, [r0, #0]
	mov r1, #0
	bx r3
	; .align 2, 0
_02259DAC: .word sub_02021E50
	thumb_func_end ov22_02259DA4

	thumb_func_start ov22_02259DB0
ov22_02259DB0: ; 0x02259DB0
	ldr r3, _02259DB8 ; =sub_02021E50
	ldr r0, [r0, #0]
	mov r1, #1
	bx r3
	; .align 2, 0
_02259DB8: .word sub_02021E50
	thumb_func_end ov22_02259DB0

	thumb_func_start ov22_02259DBC
ov22_02259DBC: ; 0x02259DBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	mov r1, #0xd
	bl sub_02012744
	str r0, [r5, #0x64]
	add r0, r4, #0
	bl ov22_0225A218
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	mov r3, #0x30
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #0
	mov r2, #0x30
	mov r3, #0x98
	bl ov22_0225A200
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x20
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x10
	mov r1, #1
	add r2, r4, #0
	mov r3, #8
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #1
	mov r2, #8
	mov r3, #0x98
	bl ov22_0225A200
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x20
	mov r1, #2
	add r2, r4, #0
	mov r3, #0x60
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #2
	mov r2, #0x60
	mov r3, #0x9c
	bl ov22_0225A200
	mov r0, #0x90
	str r0, [sp]
	mov r0, #0x28
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x30
	mov r1, #3
	add r2, r4, #0
	mov r3, #0x88
	bl ov22_0225A0E4
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #3
	mov r2, #0x88
	mov r3, #0x9c
	bl ov22_0225A200
	mov r0, #2
	mov r1, #0xe
	bl sub_02002BB8
	mov r0, #9
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	ldr r2, _02259F1C ; =0x00000181
	add r0, r4, #0
	mov r1, #0x1a
	mov r3, #0
	bl ov22_0225A348
	add r6, r0, #0
	str r6, [sp]
	mov r0, #0xb8
	str r0, [sp, #4]
	mov r0, #0x90
	str r0, [sp, #8]
	mov r0, #0x48
	str r0, [sp, #0xc]
	mov r0, #0x2a
	str r0, [sp, #0x10]
	add r0, r5, #0
	ldr r3, [r5, #0x64]
	add r0, #0x40
	mov r1, #4
	add r2, r4, #0
	bl ov22_0225A154
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0x22
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x6c
	mov r1, #4
	mov r2, #0xb8
	mov r3, #0x9c
	bl ov22_0225A200
	add r0, r6, #0
	bl ov22_0225A3D0
	mov r0, #2
	bl sub_02002C60
	mov r0, #1
	str r0, [r5, #0x60]
	add r0, r4, #0
	bl ov22_0225A2A8
	add r0, r5, #0
	add r0, #0x20
	bl ov22_02259D98
	mov r0, #0xd
	str r0, [sp]
	add r0, r5, #0
	ldr r2, _02259F20 ; =ov22_0225A02C
	add r0, #0x6c
	mov r1, #5
	add r3, r5, #0
	bl sub_02023FCC
	str r0, [r5, #0x68]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02259F1C: .word 0x00000181
_02259F20: .word ov22_0225A02C
	thumb_func_end ov22_02259DBC

	thumb_func_start ov22_02259F24
ov22_02259F24: ; 0x02259F24
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02259F2C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_022552EC
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_02255300
	add r0, r4, #0
	bl sub_0201EB50
	add r4, r4, #1
	cmp r4, #5
	blt _02259F2C
	mov r0, #0
	bl sub_0201F9F0
	mov r0, #1
	bl sub_0201F9F0
	mov r5, #0
	add r4, r6, #0
_02259F58:
	add r0, r4, #0
	bl ov22_02259CE8
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #4
	blt _02259F58
	add r0, r6, #0
	add r0, #0x54
	bl sub_0201EE28
	add r0, r6, #0
	add r0, #0x40
	bl ov22_02259D00
	ldr r0, [r6, #0x64]
	bl sub_020127BC
	ldr r0, [r6, #0x68]
	bl sub_02024034
	mov r0, #0
	str r0, [r6, #0x68]
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_02259F24

	thumb_func_start ov22_02259F88
ov22_02259F88: ; 0x02259F88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _02259F96
	bl sub_02022974
_02259F96:
	ldr r0, [r4, #0x68]
	bl sub_0202404C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02259F88

	thumb_func_start ov22_02259FA0
ov22_02259FA0: ; 0x02259FA0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	mov r1, #3
	bl ov22_0225A2D0
	add r0, r4, #0
	add r0, #0x40
	mov r1, #3
	bl ov22_0225A2F4
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	bl ov22_02259D2C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02259FA0

	thumb_func_start ov22_02259FC4
ov22_02259FC4: ; 0x02259FC4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	add r5, r0, #0
_02259FD0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov22_0225A3DC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _02259FD0
	ldr r0, [sp]
	add r1, r6, #0
	add r0, #0x40
	add r2, r7, #0
	str r0, [sp]
	bl ov22_0225A418
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02259FC4

	thumb_func_start ov22_02259FF4
ov22_02259FF4: ; 0x02259FF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r5, #0
	bne _0225A006
	bl sub_02022974
_0225A006:
	cmp r4, #4
	bge _0225A01A
	lsl r0, r4, #4
	ldr r3, [sp, #0x18]
	add r0, r5, r0
	add r1, r6, #0
	add r2, r7, #0
	bl ov22_02259D78
	pop {r3, r4, r5, r6, r7, pc}
_0225A01A:
	add r5, #0x40
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov22_02259D78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02259FF4

	thumb_func_start ov22_0225A02C
ov22_0225A02C: ; 0x0225A02C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	cmp r6, #4
	bhi _0225A0D4
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A044: ; jump table
	.short _0225A04E - _0225A044 - 2 ; case 0
	.short _0225A06A - _0225A044 - 2 ; case 1
	.short _0225A08C - _0225A044 - 2 ; case 2
	.short _0225A08C - _0225A044 - 2 ; case 3
	.short _0225A0A2 - _0225A044 - 2 ; case 4
_0225A04E:
	add r0, r4, #0
	bl ov22_0225A2D0
	ldr r1, _0225A0DC ; =0x00000681
	add r0, r4, #0
	mov r2, #0
	add r3, r5, #0
	bl ov22_0225A338
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A06A:
	add r0, r4, #0
	add r0, #0x10
	bl ov22_0225A2D0
	add r0, r4, #0
	ldr r1, _0225A0DC ; =0x00000681
	add r0, #0x10
	mov r2, #0
	add r3, r5, #0
	bl ov22_0225A338
	add r4, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A08C:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov22_02259D2C
	lsl r0, r6, #4
	add r0, r4, r0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A0A2:
	ldr r0, [r4, #0x60]
	cmp r0, #1
	bne _0225A0D8
	add r0, r4, #0
	add r0, #0x40
	bl ov22_0225A2D0
	add r0, r4, #0
	add r0, #0x40
	add r1, r5, #0
	bl ov22_0225A2F4
	add r0, r4, #0
	ldr r1, _0225A0E0 ; =0x000005E2
	add r0, #0x40
	mov r2, #0
	add r3, r5, #0
	bl ov22_0225A338
	add r4, #0x40
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_02259D1C
	pop {r4, r5, r6, pc}
_0225A0D4:
	bl sub_02022974
_0225A0D8:
	pop {r4, r5, r6, pc}
	nop
_0225A0DC: .word 0x00000681
_0225A0E0: .word 0x000005E2
	thumb_func_end ov22_0225A02C

	thumb_func_start ov22_0225A0E4
ov22_0225A0E4: ; 0x0225A0E4
	push {r4, r5, r6, lr}
	sub sp, #0x90
	add r6, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r5, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x48]
	add r4, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x4c]
	add r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r5, #0x44]
	mov r2, #0
	mov r1, #1
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #0x54]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0xe
	str r0, [sp, #0x58]
	add r0, sp, #0x2c
	str r0, [sp, #0x80]
	str r1, [sp, #0x8c]
	add r0, r6, #0
	add r1, sp, #0x80
	str r2, [sp, #0x3c]
	str r2, [sp, #0x84]
	str r2, [sp, #0x88]
	bl ov22_02259C58
	add sp, #0x90
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A0E4

	thumb_func_start ov22_0225A154
ov22_0225A154: ; 0x0225A154
	push {r4, r5, r6, lr}
	sub sp, #0xa8
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	add r4, r2, #0
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x48]
	add r6, r3, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x4c]
	add r3, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x50]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x54]
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x5c
	bl sub_020093B4
	ldr r0, [r4, #0x44]
	mov r2, #0xe
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xbc]
	str r2, [sp, #0x58]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0xc0]
	add r2, sp, #0x2c
	lsl r0, r0, #0xc
	mov r1, #2
	str r2, [sp, #0x80]
	ldr r2, [sp, #0xb8]
	str r0, [sp, #0x38]
	mov r0, #0
	str r1, [sp, #0x50]
	mov r1, #1
	str r0, [sp, #0x3c]
	str r1, [sp, #0x54]
	str r0, [sp, #0x84]
	str r0, [sp, #0x88]
	str r0, [sp, #0x9c]
	mov r0, #0x13
	str r1, [sp, #0x8c]
	str r6, [sp, #0x94]
	str r2, [sp, #0x90]
	str r0, [sp, #0xa0]
	ldr r0, [r4, #0x4c]
	bl sub_02009DC8
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #0x98]
	ldr r0, [sp, #0xb8]
	mov r1, #1
	mov r2, #0xd
	bl sub_02012898
	mov r1, #1
	add r3, r5, #0
	add r2, r1, #0
	add r3, #0x14
	bl sub_0201ED94
	cmp r0, #0
	bne _0225A1F0
	bl sub_02022974
_0225A1F0:
	ldr r0, [r5, #0x18]
	add r1, sp, #0x80
	str r0, [sp, #0xa4]
	add r0, r5, #0
	bl ov22_02259C9C
	add sp, #0xa8
	pop {r4, r5, r6, pc}
	thumb_func_end ov22_0225A154

	thumb_func_start ov22_0225A200
ov22_0225A200: ; 0x0225A200
	lsl r1, r1, #2
	strb r3, [r0, r1]
	add r1, r0, r1
	ldr r0, [sp, #4]
	strb r2, [r1, #2]
	add r0, r3, r0
	strb r0, [r1, #1]
	ldr r0, [sp]
	add r0, r2, r0
	strb r0, [r1, #3]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225A200

	thumb_func_start ov22_0225A218
ov22_0225A218: ; 0x0225A218
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x6b
	mov r4, #0
	str r0, [sp, #0xc]
	mov r7, #0x6a
	mov r6, #0x69
_0225A228:
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	str r4, [sp, #4]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r3, #0
	bl ov22_02255248
	mov r1, #6
	str r4, [sp]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r7, #0
	mov r3, #0
	bl ov22_0225528C
	mov r1, #6
	str r4, [sp]
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	bl ov22_022552A8
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #3
	str r0, [sp, #0xc]
	add r7, r7, #3
	add r6, r6, #3
	cmp r4, #5
	blt _0225A228
	mov r0, #1
	str r0, [sp]
	mov r1, #3
	str r1, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsl r1, r1, #7
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x68
	bl ov22_02255268
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #6
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0x78
	mov r3, #0
	bl ov22_02255268
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A218

	thumb_func_start ov22_0225A2A8
ov22_0225A2A8: ; 0x0225A2A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0225A2AE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_022552C4
	add r4, r4, #1
	cmp r4, #5
	blt _0225A2AE
	add r0, r5, #0
	mov r1, #0
	bl ov22_022552D8
	add r0, r5, #0
	mov r1, #1
	bl ov22_022552D8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A2A8

	thumb_func_start ov22_0225A2D0
ov22_0225A2D0: ; 0x0225A2D0
	push {r3, lr}
	cmp r1, #0
	bne _0225A2DC
	bl ov22_02259DB0
	pop {r3, pc}
_0225A2DC:
	cmp r1, #2
	bne _0225A2E6
	bl ov22_02259D98
	pop {r3, pc}
_0225A2E6:
	cmp r1, #1
	beq _0225A2EE
	cmp r1, #3
	bne _0225A2F2
_0225A2EE:
	bl ov22_02259DA4
_0225A2F2:
	pop {r3, pc}
	thumb_func_end ov22_0225A2D0

	thumb_func_start ov22_0225A2F4
ov22_0225A2F4: ; 0x0225A2F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bne _0225A310
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0xf
	bl sub_020128C4
	ldr r0, [r5, #0x10]
	mov r1, #4
	bl sub_02012A60
	pop {r3, r4, r5, pc}
_0225A310:
	cmp r4, #1
	bne _0225A31E
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0x13
	bl sub_020128C4
_0225A31E:
	cmp r4, #3
	bne _0225A334
	ldr r0, [r5, #0x10]
	mov r1, #0
	mov r2, #0x13
	bl sub_020128C4
	ldr r0, [r5, #0x10]
	mov r1, #3
	bl sub_02012A60
_0225A334:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A2F4

	thumb_func_start ov22_0225A338
ov22_0225A338: ; 0x0225A338
	push {r3, lr}
	cmp r3, r2
	bne _0225A346
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0225A346:
	pop {r3, pc}
	thumb_func_end ov22_0225A338

	thumb_func_start ov22_0225A348
ov22_0225A348: ; 0x0225A348
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r3, #0
	mov r0, #0
	mov r3, #0xd
	bl sub_0200B144
	add r7, r0, #0
	bne _0225A360
	bl sub_02022974
_0225A360:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0xe
	mov r1, #1
	bl sub_0201A778
	add r4, r0, #0
	bl sub_0201A7A0
	mov r0, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	str r0, [sp]
	str r0, [sp, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r6, #0x40]
	add r1, r4, #0
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A870
	ldr r3, [sp, #0x28]
	mov r0, #2
	add r1, r5, #0
	mov r2, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225A3CC ; =0x00010203
	add r2, r5, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	mov r1, #2
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225A3CC: .word 0x00010203
	thumb_func_end ov22_0225A348

	thumb_func_start ov22_0225A3D0
ov22_0225A3D0: ; 0x0225A3D0
	ldr r3, _0225A3D8 ; =sub_0201A928
	mov r1, #1
	bx r3
	nop
_0225A3D8: .word sub_0201A928
	thumb_func_end ov22_0225A3D0

	thumb_func_start ov22_0225A3DC
ov22_0225A3DC: ; 0x0225A3DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [sp]
	lsl r0, r4, #0xc
	add r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	lsl r0, r6, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A3DC

	thumb_func_start ov22_0225A418
ov22_0225A418: ; 0x0225A418
	push {r4, lr}
	add r4, r0, #0
	bl ov22_0225A3DC
	ldr r0, [r4, #0x10]
	bl sub_02012938
	pop {r4, pc}
	thumb_func_end ov22_0225A418

	thumb_func_start ov22_0225A428
ov22_0225A428: ; 0x0225A428
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #1
	add r5, r0, #0
	tst r1, r6
	beq _0225A442
	mov r2, #0x52
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
_0225A442:
	mov r0, #2
	tst r0, r6
	beq _0225A450
	ldr r1, [r4, #0]
	add r0, r5, #0
	bl ov22_0225A6E0
_0225A450:
	mov r0, #4
	add r1, r6, #0
	tst r1, r0
	beq _0225A474
	mov r1, #0x1b
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0x1f
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r4, #0]
	add r0, #0x2c
	mov r2, #2
	mov r3, #0x13
	bl ov22_0225A748
_0225A474:
	mov r0, #8
	tst r0, r6
	beq _0225A48C
	ldr r0, [r4, #0x24]
	str r0, [sp]
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x10]
	add r0, #0x38
	bl ov22_0225A914
_0225A48C:
	mov r0, #0x10
	tst r0, r6
	beq _0225A4AC
	ldr r0, [r4, #0]
	str r0, [sp]
	ldr r0, [r4, #0x20]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	str r0, [sp, #8]
	add r0, r5, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x1c]
	add r0, #0xa0
	bl ov22_0225AB54
_0225A4AC:
	mov r0, #0x20
	tst r0, r6
	beq _0225A522
	mov r0, #0x1b
	str r0, [sp]
	mov r2, #2
	str r2, [sp, #4]
	mov r0, #0x8b
	str r0, [sp, #8]
	mov r3, #1
	str r3, [sp, #0xc]
	add r0, #0xa9
	ldr r1, [r4, #0]
	add r0, r5, r0
	bl ov22_0225A748
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0225A55C ; =0x0001020F
	mov r1, #0x1a
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	add r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	mov r3, #6
	bl ov22_0225A860
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0225A55C ; =0x0001020F
	mov r1, #0x1a
	str r0, [sp, #8]
	mov r0, #0xff
	str r0, [sp, #0xc]
	add r0, #0x35
	ldr r0, [r5, r0]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov22_0225A860
	mov r0, #0x4d
	lsl r0, r0, #2
	mov r2, #1
	ldr r0, [r5, r0]
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
_0225A522:
	ldr r0, [r4, #4]
	str r0, [r5, #0x30]
	ldr r0, [r4, #8]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl ov22_0225A718
	ldr r0, [r4, #0xc]
	bl sub_02027B50
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl sub_02027AC0
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r5, r0]
	sub r1, #8
	orr r0, r6
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225A55C: .word 0x0001020F
	thumb_func_end ov22_0225A428

	thumb_func_start ov22_0225A560
ov22_0225A560: ; 0x0225A560
	push {r4, lr}
	mov r1, #0x4e
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r1, #2
	tst r1, r2
	beq _0225A580
	bl ov22_0225A7B8
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #2
	bic r2, r0
	str r2, [r4, r1]
_0225A580:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #4
	tst r0, r1
	beq _0225A59E
	ldr r0, [r4, #0x2c]
	bl ov22_0225A7C0
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #4
	bic r2, r0
	str r2, [r4, r1]
_0225A59E:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #8
	tst r0, r1
	beq _0225A5C0
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0x38
	bl ov22_0225AA10
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #8
	bic r2, r0
	str r2, [r4, r1]
_0225A5C0:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0225A5E2
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r0, #0xa0
	bl ov22_0225AC58
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x10
	bic r2, r0
	str r2, [r4, r1]
_0225A5E2:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r1, #0x20
	tst r1, r2
	beq _0225A602
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl ov22_0225A7C0
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	mov r0, #0x20
	bic r2, r0
	str r2, [r4, r1]
_0225A602:
	mov r2, #0x52
	add r0, r4, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020D5124
	pop {r4, pc}
	thumb_func_end ov22_0225A560

	thumb_func_start ov22_0225A610
ov22_0225A610: ; 0x0225A610
	push {r3, lr}
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r0, r1]
	mov r1, #0x10
	tst r1, r2
	beq _0225A624
	add r0, #0xa0
	bl ov22_0225AC8C
_0225A624:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A610

	thumb_func_start ov22_0225A628
ov22_0225A628: ; 0x0225A628
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #4
	add r6, r2, #0
	add r7, r3, #0
	tst r0, r1
	bne _0225A644
	bl sub_02022974
_0225A644:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xff
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_0225A7CC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A628

	thumb_func_start ov22_0225A660
ov22_0225A660: ; 0x0225A660
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r0, #4
	add r6, r2, #0
	add r7, r3, #0
	tst r0, r1
	bne _0225A67C
	bl sub_02022974
_0225A67C:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #5
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [sp, #8]
	add r0, r5, r0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_0225A814
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A660

	thumb_func_start ov22_0225A6A0
ov22_0225A6A0: ; 0x0225A6A0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0x51
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov22_0225A6A0

	thumb_func_start ov22_0225A6B8
ov22_0225A6B8: ; 0x0225A6B8
	ldr r3, _0225A6C0 ; =ov22_0225A9C8
	add r0, #0x38
	bx r3
	nop
_0225A6C0: .word ov22_0225A9C8
	thumb_func_end ov22_0225A6B8

	thumb_func_start ov22_0225A6C4
ov22_0225A6C4: ; 0x0225A6C4
	add r0, #0xbc
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225A6C4

	thumb_func_start ov22_0225A6CC
ov22_0225A6CC: ; 0x0225A6CC
	add r0, #0xc0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225A6CC

	thumb_func_start ov22_0225A6D4
ov22_0225A6D4: ; 0x0225A6D4
	ldr r3, _0225A6DC ; =ov22_0225AF34
	add r0, #0xd0
	bx r3
	nop
_0225A6DC: .word ov22_0225AF34
	thumb_func_end ov22_0225A6D4

	thumb_func_start ov22_0225A6E0
ov22_0225A6E0: ; 0x0225A6E0
	push {r3, lr}
	sub sp, #0x30
	str r1, [sp]
	mov r1, #0x19
	str r1, [sp, #4]
	mov r1, #0xe0
	str r1, [sp, #8]
	mov r1, #0xe1
	str r1, [sp, #0xc]
	mov r2, #0
	mov r1, #0xe2
	str r1, [sp, #0x10]
	mov r1, #4
	str r1, [sp, #0x1c]
	mov r1, #1
	str r1, [sp, #0x20]
	mov r1, #0xe
	str r1, [sp, #0x2c]
	add r1, sp, #0
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	bl ov22_022597BC
	add sp, #0x30
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A6E0

	thumb_func_start ov22_0225A718
ov22_0225A718: ; 0x0225A718
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xe
	mov r2, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_0200DD0C
	mov r0, #4
	mov r1, #0x40
	mov r2, #0xe
	bl sub_02002E98
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov22_0225A718

	thumb_func_start ov22_0225A748
ov22_0225A748: ; 0x0225A748
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r1, #0
	add r6, r3, #0
	mov r0, #0xe
	mov r1, #1
	add r4, r2, #0
	bl sub_0201A778
	str r0, [r5, #0]
	bl sub_0201A7A0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsl r3, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r2, #5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	lsr r3, r3, #0x18
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r1, [r5, #0]
	add r0, r7, #0
	bl sub_0201A7E8
	ldr r0, [r5, #0]
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, [sp, #0x34]
	cmp r0, #0
	beq _0225A7AC
	mov r2, #1
	ldr r0, [r5, #0]
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
_0225A7AC:
	ldr r0, [r5, #0]
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A748

	thumb_func_start ov22_0225A7B8
ov22_0225A7B8: ; 0x0225A7B8
	ldr r3, _0225A7BC ; =ov22_02259804
	bx r3
	; .align 2, 0
_0225A7BC: .word ov22_02259804
	thumb_func_end ov22_0225A7B8

	thumb_func_start ov22_0225A7C0
ov22_0225A7C0: ; 0x0225A7C0
	ldr r3, _0225A7C8 ; =sub_0201A928
	mov r1, #1
	bx r3
	nop
_0225A7C8: .word sub_0201A928
	thumb_func_end ov22_0225A7C0

	thumb_func_start ov22_0225A7CC
ov22_0225A7CC: ; 0x0225A7CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0225A810 ; =0x0001020F
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov22_0225A860
	mov r2, #1
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225A810: .word 0x0001020F
	thumb_func_end ov22_0225A7CC

	thumb_func_start ov22_0225A814
ov22_0225A814: ; 0x0225A814
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	mov r1, #0xf
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r2, r6, #0
	str r0, [sp, #4]
	ldr r0, _0225A85C ; =0x0001020F
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x10]
	add r0, r5, #0
	bl ov22_0225A8B4
	mov r2, #1
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r3, r2, #0
	bl sub_0200E060
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225A85C: .word 0x0001020F
	thumb_func_end ov22_0225A814

	thumb_func_start ov22_0225A860
ov22_0225A860: ; 0x0225A860
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r3, #0
	mov r0, #0
	mov r3, #0xd
	bl sub_0200B144
	add r5, r0, #0
	bne _0225A878
	bl sub_02022974
_0225A878:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r2, r4, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl sub_0201D78C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B190
	add r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225A860

	thumb_func_start ov22_0225A8B4
ov22_0225A8B4: ; 0x0225A8B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x38]
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp, #0x10]
	cmp r0, #0
	beq _0225A8CC
	bl sub_02022974
_0225A8CC:
	mov r0, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0xd
	bl sub_0200B144
	add r5, r0, #0
	bne _0225A8E0
	bl sub_02022974
_0225A8E0:
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	bl sub_0200B1EC
	str r0, [r4, #0]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x28]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	add r0, r7, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A8B4

	thumb_func_start ov22_0225A914
ov22_0225A914: ; 0x0225A914
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r1, #0
	mov r1, #0x67
	str r1, [sp]
	mov r1, #0xe1
	str r1, [sp, #4]
	mov r1, #0x66
	str r1, [sp, #8]
	mov r1, #0x65
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x7d
	add r4, r2, #0
	str r3, [sp, #0x1c]
	lsl r1, r1, #4
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	str r0, [sp, #0x18]
	add r1, r4, #0
	mov r2, #0xe
	bl ov22_0225AA34
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, sp, #0x48
	mov r3, #0
	bl ov22_0225AAF4
	add r0, sp, #0x48
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x3c]
	mov r0, #0xe
	str r0, [sp, #0x44]
	mov r0, #0x68
	ldr r7, [sp, #0x24]
	str r5, [sp, #0x28]
	str r0, [sp, #0x20]
_0225A96A:
	ldr r0, [sp, #0x20]
	mov r6, #0
	str r0, [sp, #0x34]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	str r1, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	lsl r1, r7, #2
	mov r4, #0x26
	add r5, r0, r1
_0225A984:
	str r4, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x28
	bl sub_02021B90
	mov r1, #1
	str r0, [r5, #0x10]
	bl sub_02021D6C
	ldr r0, [sp, #0x1c]
	add r1, r6, r7
	cmp r1, r0
	blt _0225A9A8
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl sub_02021CAC
_0225A9A8:
	add r6, r6, #1
	add r4, #0x12
	add r5, r5, #4
	cmp r6, #0xa
	blt _0225A984
	ldr r0, [sp, #0x20]
	add r7, #0xa
	add r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0225A96A
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A914

	thumb_func_start ov22_0225A9C8
ov22_0225A9C8: ; 0x0225A9C8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, [r7, #0x60]
	add r5, r1, #0
	cmp r6, r5
	bge _0225A9EE
	cmp r6, r5
	bge _0225AA0C
	lsl r0, r6, #2
	add r4, r7, r0
_0225A9DC:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02021D6C
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r5
	blt _0225A9DC
	b _0225AA0C
_0225A9EE:
	cmp r6, r5
	ble _0225AA0C
	sub r6, r6, #1
	cmp r6, r5
	blt _0225AA0C
	lsl r0, r6, #2
	add r4, r7, r0
_0225A9FC:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02021D6C
	sub r6, r6, #1
	sub r4, r4, #4
	cmp r6, r5
	bge _0225A9FC
_0225AA0C:
	str r5, [r7, #0x60]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225A9C8

	thumb_func_start ov22_0225AA10
ov22_0225AA10: ; 0x0225AA10
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r4, #0
	add r5, r6, #0
_0225AA1A:
	ldr r0, [r5, #0x10]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x14
	blt _0225AA1A
	add r0, r6, #0
	add r1, r7, #0
	bl ov22_0225AAC0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AA10

	thumb_func_start ov22_0225AA34
ov22_0225AA34: ; 0x0225AA34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r2, #0
	ldr r7, [sp, #0x3c]
	ldr r2, [sp, #0x28]
	add r5, r0, #0
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r4, r1, #0
	str r6, [sp, #8]
	ldr r0, [r4, #0]
	str r3, [sp, #0x10]
	add r1, r3, #0
	mov r3, #0
	bl sub_02009A4C
	str r0, [r5, #0]
	bl sub_0200A3DC
	ldr r0, [r5, #0]
	bl sub_02009D4C
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x10]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	mov r3, #0
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_02009B04
	str r0, [r5, #4]
	bl sub_0200A640
	ldr r0, [r5, #4]
	bl sub_02009D4C
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	mov r3, #0
	bl sub_02009BC4
	ldr r2, [sp, #0x34]
	str r0, [r5, #8]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	mov r3, #0
	bl sub_02009BC4
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AA34

	thumb_func_start ov22_0225AAC0
ov22_0225AAC0: ; 0x0225AAC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl sub_0200A4E4
	ldr r0, [r5, #4]
	bl sub_0200A6DC
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl sub_02009D68
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl sub_02009D68
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225AAC0

	thumb_func_start ov22_0225AAF4
ov22_0225AAF4: ; 0x0225AAF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	bl sub_02009E08
	str r0, [sp, #0x2c]
	ldr r0, [r5, #4]
	bl sub_02009E08
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	bl sub_02009E08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0xc]
	bl sub_02009E08
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r4, #0]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r3, [sp, #0x34]
	str r1, [sp, #0x18]
	ldr r1, [r4, #8]
	str r1, [sp, #0x1c]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	add r0, r7, #0
	bl sub_020093B4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AAF4

	thumb_func_start ov22_0225AB54
ov22_0225AB54: ; 0x0225AB54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	add r4, r1, #0
	mov r1, #0xe5
	str r1, [sp]
	mov r1, #0xe6
	str r1, [sp, #4]
	mov r1, #0xe4
	str r1, [sp, #8]
	mov r1, #0xe3
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	ldr r1, _0225AC50 ; =0x00000BB8
	add r5, r2, #0
	str r3, [sp, #0x18]
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	add r7, r0, #0
	add r1, r5, #0
	mov r2, #0xe
	bl ov22_0225AA34
	add r0, r7, #0
	add r1, r5, #0
	add r2, sp, #0x3c
	mov r3, #0
	bl ov22_0225AAF4
	add r0, sp, #0x3c
	str r0, [sp, #0x20]
	mov r2, #2
	mov r0, #0xe
	mov r1, #0x3a
	str r0, [sp, #0x38]
	lsl r1, r1, #0xc
	lsl r0, r2, #0x14
	mov r6, #0
	str r4, [sp, #0x1c]
	str r1, [sp, #0x28]
	add r0, r1, r0
	str r2, [sp, #0x34]
	str r6, [sp, #0x30]
	str r0, [sp, #0x28]
	mov r4, #0x67
	add r5, r7, #0
_0225ABB0:
	str r4, [sp, #0x24]
	lsl r0, r4, #0xc
	str r0, [sp, #0x24]
	add r0, sp, #0x1c
	bl sub_02021B90
	str r0, [r5, #0x10]
	add r6, r6, #1
	add r4, #0x18
	add r5, r5, #4
	cmp r6, #2
	blt _0225ABB0
	ldr r0, [sp, #0x18]
	mov r1, #0x1e
	str r0, [r7, #0x1c]
	mul r1, r0
	str r1, [r7, #0x20]
	ldr r1, [sp, #0x7c]
	str r1, [r7, #0x2c]
	str r0, [r1, #0]
	ldr r1, [r7, #0x2c]
	str r0, [r1, #8]
	add r0, r7, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r7, #0
	bl ov22_0225ACE4
	mov r0, #0xe
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xc1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	ldr r1, [sp, #0x78]
	add r0, #0x18
	mov r2, #0xa
	mov r3, #8
	bl ov22_0225A748
	ldr r0, [r7, #0x18]
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0
	str r0, [sp]
	mov r3, #4
	ldr r0, _0225AC54 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r2, #0xff
	str r2, [sp, #0xc]
	ldr r0, [r7, #0x18]
	mov r1, #0x1a
	add r2, #0x82
	bl ov22_0225A860
	mov r0, #0x48
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0225AC54 ; =0x00010200
	mov r2, #0xff
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r7, #0x18]
	mov r1, #0x1a
	add r2, #0x82
	mov r3, #5
	bl ov22_0225A860
	ldr r0, [r7, #0x18]
	bl sub_0201A954
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225AC50: .word 0x00000BB8
_0225AC54: .word 0x00010200
	thumb_func_end ov22_0225AB54

	thumb_func_start ov22_0225AC58
ov22_0225AC58: ; 0x0225AC58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	add r4, r1, #0
	cmp r0, #0
	beq _0225AC68
	bl sub_0200DA58
_0225AC68:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _0225AC72
	bl sub_0200DA58
_0225AC72:
	add r0, r5, #0
	add r1, r4, #0
	bl ov22_0225AAC0
	ldr r0, [r5, #0x18]
	bl ov22_0225A7C0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x94
	bl sub_020D5124
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225AC58

	thumb_func_start ov22_0225AC8C
ov22_0225AC8C: ; 0x0225AC8C
	push {r4, lr}
	add r4, r0, #0
	bl ov22_0225AD5C
	ldr r0, [r4, #0x20]
	mov r1, #0x1e
	bl sub_020E1F6C
	add r1, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_02095C60
	add r0, r4, #0
	bl ov22_0225ACBC
	add r0, r4, #0
	bl ov22_0225ACE4
	add r4, #0x30
	add r0, r4, #0
	bl ov22_0225AE9C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AC8C

	thumb_func_start ov22_0225ACBC
ov22_0225ACBC: ; 0x0225ACBC
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	ldr r2, [r1, #0]
	ldr r1, [r0, #0x1c]
	cmp r1, r2
	beq _0225ACDC
	str r2, [r0, #0x1c]
	cmp r2, #0xa
	bgt _0225ACDC
	add r1, r0, #0
	add r1, #0x30
	bl ov22_0225ADC0
	ldr r0, _0225ACE0 ; =0x00000683
	bl sub_02005748
_0225ACDC:
	pop {r3, pc}
	nop
_0225ACE0: .word 0x00000683
	thumb_func_end ov22_0225ACBC

	thumb_func_start ov22_0225ACE4
ov22_0225ACE4: ; 0x0225ACE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	mov r1, #1
	str r0, [sp]
	mov r0, #0xa
	add r4, r1, #0
	mul r4, r0
	mov r7, #0
	add r5, r6, #0
_0225ACFA:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_020E1F6C
	str r0, [sp, #4]
	cmp r0, #0xa
	ble _0225AD0C
	bl sub_02022974
_0225AD0C:
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #4]
	bl sub_02021D6C
	ldr r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	mul r1, r4
	sub r0, r0, r1
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	add r4, r0, #0
	add r0, r6, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225AD4E
	ldr r0, [r6, #0x1c]
	cmp r0, #0xa
	bgt _0225AD4E
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_02021EC4
	cmp r7, #1
	bne _0225AD4E
	add r1, r6, #0
	add r1, #0x90
	mov r0, #1
	str r0, [r1, #0]
_0225AD4E:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #2
	blt _0225ACFA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225ACE4

	thumb_func_start ov22_0225AD5C
ov22_0225AD5C: ; 0x0225AD5C
	ldr r1, [r0, #0x20]
	sub r1, r1, #1
	bmi _0225AD64
	str r1, [r0, #0x20]
_0225AD64:
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225AD5C

	thumb_func_start ov22_0225AD68
ov22_0225AD68: ; 0x0225AD68
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov22_0225AD68

	thumb_func_start ov22_0225AD78
ov22_0225AD78: ; 0x0225AD78
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0xc
	bl sub_020BCFD0
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _0225ADB8
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0225ADB8:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AD78

	thumb_func_start ov22_0225ADC0
ov22_0225ADC0: ; 0x0225ADC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x3a
	mov r0, #2
	lsl r1, r1, #0xc
	lsl r0, r0, #0x14
	ldr r4, [sp, #4]
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r4, #0
	ldr r6, [sp]
	mov r7, #0
	mov r5, #0x67
	str r0, [sp, #8]
_0225ADE2:
	ldr r0, [r6, #0x10]
	mov r1, #2
	str r0, [r4, #4]
	bl sub_02021CF8
	ldr r2, [sp, #8]
	str r5, [sp, #0xc]
	lsl r0, r5, #0xc
	add r2, #0xc
	add r3, sp, #0xc
	str r0, [sp, #0xc]
	ldmia r3!, {r0, r1}
	str r2, [sp, #8]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r7, r7, #1
	str r0, [r2, #0]
	add r6, r6, #4
	add r4, r4, #4
	add r5, #0x18
	cmp r7, #2
	blt _0225ADE2
	ldr r0, [sp]
	ldr r1, [r0, #0x1c]
	mov r0, #0xa
	sub r0, r0, r1
	cmp r0, #0
	ble _0225AE3C
	lsl r0, r0, #0xc
	ldr r2, _0225AE98 ; =0x00000266
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	lsl r0, r2, #1
	add r4, r1, r0
	b _0225AE40
_0225AE3C:
	mov r4, #1
	lsl r4, r4, #0xc
_0225AE40:
	ldr r0, [sp, #4]
	mov r2, #1
	add r0, #0x24
	add r1, r4, #0
	lsl r2, r2, #0xc
	mov r3, #0x10
	bl ov22_0225AD68
	mov r2, #6
	asr r1, r4, #0x1f
	add r0, r4, #0
	lsl r2, r2, #0xe
	mov r3, #0
	bl sub_020E1F1C
	mov r3, #2
	mov r2, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	mov r0, #6
	lsl r0, r0, #0xe
	sub r4, r1, r0
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r0, #0x38
	mov r3, #0x10
	bl ov22_0225AD68
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r0, #0x4c
	mov r2, #0
	mov r3, #0x10
	bl ov22_0225AD68
	ldr r0, [sp, #4]
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225AE98: .word 0x00000266
	thumb_func_end ov22_0225ADC0

	thumb_func_start ov22_0225AE9C
ov22_0225AE9C: ; 0x0225AE9C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0225AF2E
	add r0, r5, #0
	add r0, #0x24
	bl ov22_0225AD78
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x38
	bl ov22_0225AD78
	add r0, r5, #0
	add r0, #0x4c
	bl ov22_0225AD78
	ldr r0, [r5, #0x24]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x14]
	ldr r0, [r5, #4]
	bl sub_02021C70
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl sub_02021C70
	add r6, r5, #0
	add r6, #0xc
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r1, [sp]
	ldr r0, [r5, #0x38]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	add r1, r2, #0
	bl sub_02021C50
	add r6, r5, #0
	add r6, #0x18
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r1, [sp, #4]
	ldr r0, [r5, #0x4c]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	add r1, r2, #0
	bl sub_02021C50
	cmp r4, #0
	beq _0225AF2E
	mov r0, #0
	str r0, [r5, #0]
_0225AF2E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AE9C

	thumb_func_start ov22_0225AF34
ov22_0225AF34: ; 0x0225AF34
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0225AF3E
	mov r0, #1
	bx lr
_0225AF3E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225AF34

	thumb_func_start ov22_0225AF44
ov22_0225AF44: ; 0x0225AF44
	push {r3, lr}
	sub sp, #0x10
	add r3, r1, #0
	stmia r0!, {r1}
	add r3, #0x48
	str r3, [sp]
	ldr r1, [r1, #0x74]
	lsl r1, r1, #2
	add r1, #0x89
	str r1, [sp, #4]
	mov r1, #0x10
	str r1, [sp, #8]
	add r1, sp, #0
	str r2, [sp, #0xc]
	bl ov22_02259820
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov22_0225AF44

	thumb_func_start ov22_0225AF68
ov22_0225AF68: ; 0x0225AF68
	ldr r3, _0225AF70 ; =ov22_02259838
	add r0, r0, #4
	mov r1, #1
	bx r3
	; .align 2, 0
_0225AF70: .word ov22_02259838
	thumb_func_end ov22_0225AF68

	thumb_func_start ov22_0225AF74
ov22_0225AF74: ; 0x0225AF74
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ov22_022598A0
	mov r1, #0x1c
	mov r0, #0
_0225AF82:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0225AF82
	pop {r4, pc}
	thumb_func_end ov22_0225AF74

	thumb_func_start ov22_0225AF8C
ov22_0225AF8C: ; 0x0225AF8C
	push {r3, r4, lr}
	sub sp, #0x6c
	add r2, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	add r1, r4, #0
	bl ov22_0225B4F8
	add r0, sp, #0
	bl ov22_0225B1BC
	add sp, #0x6c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AF8C

	thumb_func_start ov22_0225AFB0
ov22_0225AFB0: ; 0x0225AFB0
	push {r3, r4, lr}
	sub sp, #0x6c
	add r2, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	add r1, r4, #0
	bl ov22_0225B540
	add r0, sp, #0
	bl ov22_0225B1BC
	add sp, #0x6c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AFB0

	thumb_func_start ov22_0225AFD4
ov22_0225AFD4: ; 0x0225AFD4
	push {r3, r4, lr}
	sub sp, #0x6c
	add r2, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	add r1, r2, #0
	bl ov22_0225B4E4
	add r0, sp, #0
	add r1, r4, #0
	bl ov22_0225B540
	add r0, sp, #0
	bl ov22_0225B258
	add sp, #0x6c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225AFD4

	thumb_func_start ov22_0225AFF8
ov22_0225AFF8: ; 0x0225AFF8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0225B00E
	sub r0, #0x48
	add r0, r4, r0
	bl ov22_0225AF68
_0225B00E:
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225B01E
	add r0, r4, #0
	bl ov22_0225B328
_0225B01E:
	pop {r4, pc}
	thumb_func_end ov22_0225AFF8

	thumb_func_start ov22_0225B020
ov22_0225B020: ; 0x0225B020
	push {r4, lr}
	mov r1, #0x26
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0225B032
	bl ov22_0225B480
_0225B032:
	add r0, r4, #0
	bl ov22_0225B464
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov22_02254E0C
	mov r0, #0x63
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r0, #8
	add r0, r4, r0
	bl ov22_022594AC
	add r0, r4, #0
	bl ov22_0225B35C
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B020

	thumb_func_start ov22_0225B06C
ov22_0225B06C: ; 0x0225B06C
	ldr r3, _0225B070 ; =ov22_02255530
	bx r3
	; .align 2, 0
_0225B070: .word ov22_02255530
	thumb_func_end ov22_0225B06C

	thumb_func_start ov22_0225B074
ov22_0225B074: ; 0x0225B074
	mov r2, #0x99
	lsl r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov22_0225B074

	thumb_func_start ov22_0225B07C
ov22_0225B07C: ; 0x0225B07C
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov22_0225B07C

	thumb_func_start ov22_0225B080
ov22_0225B080: ; 0x0225B080
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	mov r2, #0x19
	add r4, r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	add r1, r2, #0
	add r0, r5, r2
	str r6, [sp]
	add r1, #0xac
	add r2, #0xb0
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r3, r4, #0
	bl ov22_02257AD8
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225B0C8
	mov r3, #0x88
	ldr r0, [r5, #0x40]
	mov r1, #2
	mov r2, #0
	sub r3, r3, r4
	bl sub_02019184
	mov r3, #0x10
	ldr r0, [r5, #0x40]
	mov r1, #2
	mov r2, #3
	sub r3, r3, r6
	bl sub_02019184
_0225B0C8:
	mov r0, #0x8f
	lsl r0, r0, #2
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B080

	thumb_func_start ov22_0225B0D8
ov22_0225B0D8: ; 0x0225B0D8
	mov r3, #0x91
	lsl r3, r3, #2
	str r1, [r0, r3]
	add r1, r3, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end ov22_0225B0D8

	thumb_func_start ov22_0225B0E4
ov22_0225B0E4: ; 0x0225B0E4
	mov r2, #0x93
	lsl r2, r2, #2
	strh r1, [r0, r2]
	bx lr
	thumb_func_end ov22_0225B0E4

	thumb_func_start ov22_0225B0EC
ov22_0225B0EC: ; 0x0225B0EC
	push {r3, r4}
	mov r4, #0x25
	lsl r4, r4, #4
	str r1, [r0, r4]
	add r1, r4, #4
	str r2, [r0, r1]
	add r4, #8
	str r3, [r0, r4]
	pop {r3, r4}
	bx lr
	thumb_func_end ov22_0225B0EC

	thumb_func_start ov22_0225B100
ov22_0225B100: ; 0x0225B100
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x82
	lsl r0, r0, #2
	add r4, r1, #0
	add r6, r2, #0
	add r0, r5, r0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02259270
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov22_02257CE0
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r1, [sp, #0x10]
	ldr r2, [r5, r0]
	sub r1, r4, r1
	add r0, r0, #4
	add r7, r2, r1
	ldr r1, [r5, r0]
	ldr r0, [sp, #0xc]
	sub r0, r6, r0
	add r0, r1, r0
	str r0, [sp]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r7, #0
	bl ov22_0225B080
	ldr r2, [sp]
	add r0, r5, #0
	sub r1, r4, r7
	sub r2, r6, r2
	bl ov22_0225B0D8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B100

	thumb_func_start ov22_0225B158
ov22_0225B158: ; 0x0225B158
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r2, #0x95
	add r5, r0, #0
	mov r0, #0x28
	lsl r2, r2, #2
	sub r0, r0, r3
	ldr r2, [r5, r2]
	lsl r0, r0, #0xc
	add r6, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	add r2, r0, #0
	add r0, r5, #0
	mov r5, #2
	add r3, r1, #0
	add r1, r6, #0
	mov r6, #0
	lsl r5, r5, #0xa
	add r5, r2, r5
	adc r3, r6
	lsl r2, r3, #0x14
	lsr r3, r5, #0xc
	orr r3, r2
	asr r2, r3, #0xc
	sub r2, r4, r2
	bl ov22_0225B100
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B158

	thumb_func_start ov22_0225B198
ov22_0225B198: ; 0x0225B198
	mov r2, #0x97
	lsl r2, r2, #2
	strh r1, [r0, r2]
	sub r2, #0xcc
	ldr r3, _0225B1A8 ; =ov22_02257D70
	add r0, r0, r2
	bx r3
	nop
_0225B1A8: .word ov22_02257D70
	thumb_func_end ov22_0225B198

	thumb_func_start ov22_0225B1AC
ov22_0225B1AC: ; 0x0225B1AC
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r3, _0225B1B8 ; =ov22_02257B74
	add r0, r0, r2
	bx r3
	nop
_0225B1B8: .word ov22_02257B74
	thumb_func_end ov22_0225B1AC

	thumb_func_start ov22_0225B1BC
ov22_0225B1BC: ; 0x0225B1BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x9a
	ldr r0, [r5, #0x68]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x9a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x8e
	ldr r1, [r5, #0x68]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x68]
	bl sub_02073C74
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	ldr r1, [r4, r1]
	bl sub_0202A61C
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B2D4
	ldr r1, [r5, #0x58]
	ldr r2, [r5, #0x68]
	add r0, r4, #0
	bl ov22_022554A8
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r5, #0x68]
	add r0, r4, r0
	mov r1, #0x15
	bl ov22_02259484
	ldr r1, [r5, #0x68]
	mov r0, #0x14
	bl ov22_02254DE0
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B388
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B450
	mov r1, #0x86
	lsl r1, r1, #2
	add r0, r4, r1
	sub r1, #0x88
	ldr r2, [r5, #0x68]
	add r1, r4, r1
	bl ov22_0225AF44
	mov r0, #0x26
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B490
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225B1BC

	thumb_func_start ov22_0225B258
ov22_0225B258: ; 0x0225B258
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x9a
	ldr r0, [r5, #0x68]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x9a
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x8e
	ldr r1, [r5, #0x68]
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, [r5, #0x68]
	bl sub_02073C74
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0]
	ldr r1, [r4, r1]
	bl sub_0202A61C
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B2D4
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r2, [r5, #0x68]
	add r0, r4, r0
	mov r1, #0x15
	bl ov22_02259484
	ldr r1, [r5, #0x68]
	mov r0, #0x14
	bl ov22_02254DE0
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B388
	mov r0, #0x26
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r5, #0
	bl ov22_0225B490
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_0225B258

	thumb_func_start ov22_0225B2D4
ov22_0225B2D4: ; 0x0225B2D4
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r1, #0
	ldr r1, [r4, #0x68]
	add r5, r0, #0
	mov r0, #0x19
	bl sub_02006C24
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _0225B324 ; =0x000002CE
	add r1, sp, #0
	str r0, [sp]
	mov r0, #0x76
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	ldr r0, [r4, #0x68]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x68]
	add r0, r5, #0
	bl ov22_0225547C
	ldr r3, [r4, #0x68]
	add r0, r5, #0
	add r1, sp, #0x10
	add r2, r4, #0
	bl ov22_0225B588
	add r0, r5, #0
	add r1, sp, #0x10
	bl ov22_022551B4
	add r0, sp, #0x10
	bl ov22_02255338
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0225B324: .word 0x000002CE
	thumb_func_end ov22_0225B2D4

	thumb_func_start ov22_0225B328
ov22_0225B328: ; 0x0225B328
	push {r3, r4, lr}
	sub sp, #4
	mov r3, #0x25
	lsl r3, r3, #4
	add r1, r0, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	ldr r2, [r0, r1]
	add r1, r3, #0
	sub r1, #0xc
	ldr r1, [r0, r1]
	add r1, r2, r1
	add r2, r3, #0
	sub r2, #0x10
	ldr r4, [r0, r2]
	add r2, r3, #0
	sub r2, #8
	sub r3, r3, #4
	ldr r2, [r0, r2]
	ldrh r3, [r0, r3]
	add r2, r4, r2
	bl ov22_0225553C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov22_0225B328

	thumb_func_start ov22_0225B35C
ov22_0225B35C: ; 0x0225B35C
	push {r4, lr}
	add r4, r0, #0
	bl ov22_022551D0
	add r0, r4, #0
	bl ov22_022554F8
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225B37A
	add r0, r4, #0
	bl ov22_02255524
_0225B37A:
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_02006CA8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B35C

	thumb_func_start ov22_0225B388
ov22_0225B388: ; 0x0225B388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	add r2, sp, #0x28
	mov r0, #0
	add r7, r1, #0
	add r3, r2, #0
	add r1, r0, #0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x30]
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x3c]
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	str r1, [sp, #0x40]
	add r1, r0, #0
	sub r1, #8
	add r1, r5, r1
	str r1, [sp, #0x44]
	mov r1, #0x15
	add r0, r0, #4
	str r1, [sp, #0x48]
	add r0, r5, r0
	add r1, r2, #0
	bl ov22_022578F4
	ldr r0, [r7, #0]
	bl sub_0202A60C
	add r6, r0, #0
	ldr r0, [r7, #0]
	bl sub_0202A614
	add r4, r0, #0
	ldr r0, [r7, #0]
	bl sub_0202A604
	str r4, [sp]
	str r0, [sp, #4]
	ldr r0, [r7, #0x68]
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, #0xa4
	ldr r1, [r5, r1]
	add r2, sp, #0x18
	add r3, r6, #0
	bl ov22_02257964
	ldr r0, [r7, #0x54]
	mov r6, #0
	cmp r0, #0
	ble _0225B44C
	add r4, r7, #0
_0225B412:
	ldr r0, [r4, #4]
	bl sub_0202A624
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	bl sub_0202A628
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	bl sub_0202A62C
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl sub_0202A630
	str r0, [sp]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, r5, r0
	bl ov22_022579FC
	ldr r0, [r7, #0x54]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r0
	blt _0225B412
_0225B44C:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B388

	thumb_func_start ov22_0225B450
ov22_0225B450: ; 0x0225B450
	add r2, r1, #0
	mov r1, #0x19
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r1, [r2, #0x5c]
	ldr r3, _0225B460 ; =ov22_02257C88
	ldr r2, [r2, #0x68]
	bx r3
	; .align 2, 0
_0225B460: .word ov22_02257C88
	thumb_func_end ov22_0225B450

	thumb_func_start ov22_0225B464
ov22_0225B464: ; 0x0225B464
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_02257A98
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov22_02257948
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B464

	thumb_func_start ov22_0225B480
ov22_0225B480: ; 0x0225B480
	mov r1, #0x19
	lsl r1, r1, #4
	ldr r3, _0225B48C ; =ov22_02257CD4
	add r0, r0, r1
	bx r3
	nop
_0225B48C: .word ov22_02257CD4
	thumb_func_end ov22_0225B480

	thumb_func_start ov22_0225B490
ov22_0225B490: ; 0x0225B490
	push {r3, r4, r5, lr}
	add r3, r1, #0
	mov r1, #0x8f
	add r4, r0, #0
	mov r2, #0x48
	lsl r1, r1, #2
	str r2, [r4, r1]
	mov r5, #0x38
	add r2, r1, #4
	str r5, [r4, r2]
	add r2, r1, #0
	add r2, #8
	str r5, [r4, r2]
	add r2, r1, #0
	mov r5, #0x40
	add r2, #0xc
	str r5, [r4, r2]
	lsl r2, r5, #6
	add r5, r1, #0
	add r5, #0x14
	str r2, [r4, r5]
	add r5, r1, #0
	add r5, #0x18
	str r2, [r4, r5]
	add r5, r1, #0
	add r5, #0x1c
	str r2, [r4, r5]
	mov r2, #0
	add r1, #0x10
	strh r2, [r4, r1]
	ldr r1, [r3, #0x60]
	ldr r2, [r3, #0x64]
	bl ov22_0225B080
	mov r0, #0x97
	ldr r1, _0225B4E0 ; =0x00007FFF
	lsl r0, r0, #2
	strh r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0225B4E0: .word 0x00007FFF
	thumb_func_end ov22_0225B490

	thumb_func_start ov22_0225B4E4
ov22_0225B4E4: ; 0x0225B4E4
	ldr r2, [r1, #0]
	str r2, [r0, #0x58]
	ldr r2, [r1, #4]
	str r2, [r0, #0x60]
	ldr r2, [r1, #8]
	str r2, [r0, #0x64]
	ldr r1, [r1, #0xc]
	str r1, [r0, #0x68]
	bx lr
	; .align 2, 0
	thumb_func_end ov22_0225B4E4

	thumb_func_start ov22_0225B4F8
ov22_0225B4F8: ; 0x0225B4F8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202A138
	add r6, r5, #0
	str r0, [r5, #0]
	mov r4, #0
	str r4, [r5, #0x54]
	add r6, #0x54
_0225B50E:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A110
	cmp r0, #0
	beq _0225B530
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A150
	ldr r1, [r5, #0x54]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_0225B530:
	add r4, r4, #1
	cmp r4, #0xa
	blt _0225B50E
	add r0, r7, #0
	bl sub_0202A1DC
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B4F8

	thumb_func_start ov22_0225B540
ov22_0225B540: ; 0x0225B540
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	bl sub_0202A4D8
	add r6, r5, #0
	str r0, [r5, #0]
	mov r4, #0
	str r4, [r5, #0x54]
	add r6, #0x54
_0225B556:
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A488
	cmp r0, #0
	beq _0225B578
	add r0, r7, #0
	add r1, r4, #0
	bl sub_0202A4F0
	ldr r1, [r5, #0x54]
	lsl r1, r1, #2
	add r1, r5, r1
	str r0, [r1, #4]
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
_0225B578:
	add r4, r4, #1
	cmp r4, #0x14
	blt _0225B556
	add r0, r7, #0
	bl sub_0202A5B8
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B540

	thumb_func_start ov22_0225B588
ov22_0225B588: ; 0x0225B588
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r7, r3, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov22_02255410
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov22_0225B5A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov22_0225B588

	thumb_func_start ov22_0225B5A8
ov22_0225B5A8: ; 0x0225B5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r2, #0
	ldr r0, [r0, #0x54]
	add r4, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	ble _0225B620
	add r6, r2, #0
_0225B5C2:
	ldr r0, [r6, #4]
	bl sub_0202A624
	add r5, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r5, #0
	bl sub_020229F8
	cmp r0, #1
	bne _0225B60E
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r1, [sp, #4]
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	ldr r3, [sp, #0xc]
	add r1, r5, #1
	mov r2, #0
	bl sub_0200723C
	add r7, r0, #0
	ldr r0, [r4, #0x10]
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02022A1C
	ldr r1, [r4, #0]
	lsl r5, r5, #3
	add r1, r1, r5
	add r0, r7, #0
	add r1, r1, #4
	bl sub_020A7118
	ldr r0, [sp, #4]
	ldr r1, [r0, #0]
	ldr r0, [r4, #0]
	str r1, [r0, r5]
_0225B60E:
	ldr r0, [sp, #0x10]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x54]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _0225B5C2
_0225B620:
	mov r0, #1
	str r0, [sp]
	mov r1, #6
	ldr r0, [sp, #4]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #0
	ldr r3, [sp, #0xc]
	add r2, r1, #0
	bl sub_0200723C
	add r5, r0, #0
	ldr r0, [r4, #0x14]
	add r1, r5, #0
	mov r2, #0
	bl sub_02022A1C
	ldr r1, [r4, #8]
	add r0, r5, #0
	add r1, r1, #4
	bl sub_020A71B0
	ldr r0, [sp, #4]
	ldr r1, [r0, #0]
	ldr r0, [r4, #8]
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	mov r1, #3
	str r1, [r0, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B5A8

	thumb_func_start ov22_0225B660
ov22_0225B660: ; 0x0225B660
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0xd
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r2, #1
	mov r0, #3
	mov r1, #0xe
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r1, #0x1a
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0xd
	bl sub_0200681C
	mov r2, #0x1a
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _0225B730 ; =ov22_0225B848
	add r1, r4, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldr r0, [r5, #0]
	bne _0225B6BC
	ldr r1, [r5, #4]
	bl sub_02029CA8
	str r0, [r4, #0]
	b _0225B6C4
_0225B6BC:
	ldr r1, [r5, #4]
	bl sub_02029CD0
	str r0, [r4, #4]
_0225B6C4:
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	bl ov22_02255094
	ldr r0, _0225B734 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r4, #0
	add r0, #0x14
	mov r1, #0xe
	bl ov22_022555D4
	ldr r0, [r4, #0x54]
	str r0, [sp]
	mov r0, #0x48
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	add r0, sp, #0
	bne _0225B704
	ldr r1, [r4, #0]
	bl ov22_0225AF8C
	b _0225B70A
_0225B704:
	ldr r1, [r4, #4]
	bl ov22_0225AFB0
_0225B70A:
	str r0, [r4, #0x10]
	add r0, r4, #0
	bl ov22_0225B85C
	add r0, r4, #0
	bl ov22_0225B910
	add r0, r4, #0
	bl ov22_0225B964
	add r0, r4, #0
	bl ov22_0225BA40
	add r0, r4, #0
	bl ov22_0225BAD0
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225B730: .word ov22_0225B848
_0225B734: .word 0x021BF6DC
	thumb_func_end ov22_0225B660

	thumb_func_start ov22_0225B738
ov22_0225B738: ; 0x0225B738
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	bl sub_0200682C
	add r5, r0, #0
	bl sub_020241B4
	bl sub_020A73C0
	ldr r0, [r5, #0x10]
	bl ov22_0225AFF8
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	add r5, #0x14
	add r0, r5, #0
	bl ov22_0225562C
	ldr r0, [r4, #0]
	cmp r0, #5
	bhi _0225B7F2
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225B774: ; jump table
	.short _0225B780 - _0225B774 - 2 ; case 0
	.short _0225B786 - _0225B774 - 2 ; case 1
	.short _0225B7A4 - _0225B774 - 2 ; case 2
	.short _0225B7B4 - _0225B774 - 2 ; case 3
	.short _0225B7C4 - _0225B774 - 2 ; case 4
	.short _0225B7E4 - _0225B774 - 2 ; case 5
_0225B780:
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B786:
	mov r0, #6
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #5
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7A4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225B7F2
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7B4:
	ldr r1, _0225B7F8 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	beq _0225B7F2
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7C4:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #2
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0225B7F2
_0225B7E4:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0225B7F2
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_0225B7F2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0225B7F8: .word 0x021BF67C
	thumb_func_end ov22_0225B738

	thumb_func_start ov22_0225B7FC
ov22_0225B7FC: ; 0x0225B7FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov22_0225B020
	add r0, r4, #0
	bl ov22_0225BA00
	add r0, r4, #0
	bl ov22_0225BAA8
	add r4, #0x14
	add r0, r4, #0
	bl ov22_022555FC
	bl ov22_022550B4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0xd
	bl sub_0201807C
	mov r0, #0xe
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B7FC

	thumb_func_start ov22_0225B848
ov22_0225B848: ; 0x0225B848
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	bl ov22_0225B06C
	add r4, #0x14
	add r0, r4, #0
	bl ov22_0225561C
	pop {r4, pc}
	thumb_func_end ov22_0225B848

	thumb_func_start ov22_0225B85C
ov22_0225B85C: ; 0x0225B85C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x7e
	mov r2, #0
	mov r3, #0x60
	bl sub_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x54]
	mov r1, #0x7d
	mov r3, #1
	bl sub_020070E8
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0225B8A2
	mov r1, #0x80
	mov r4, #4
	b _0225B8A6
_0225B8A2:
	mov r1, #0x7f
	mov r4, #3
_0225B8A6:
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x65
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #0
	add r3, sp, #0x10
	bl sub_020071D0
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r6, r0, #0
	ldrh r0, [r2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl sub_020198C0
	ldr r1, [sp, #0x10]
	mov r2, #0
	ldrh r0, [r1]
	add r3, r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r1, #2]
	mov r1, #1
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0x54]
	bl sub_02019E2C
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl sub_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov22_0225B85C

	thumb_func_start ov22_0225B910
ov22_0225B910: ; 0x0225B910
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xc
	add r1, r0, #0
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xc
	mov r1, #0xb
	mov r3, #4
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x54]
	mov r0, #0xc
	mov r1, #0xa
	mov r3, #4
	bl sub_02006E3C
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225B910

	thumb_func_start ov22_0225B964
ov22_0225B964: ; 0x0225B964
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp, #4]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe9
	mov r3, #0
	bl ov22_02255248
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp, #8]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xea
	mov r3, #0
	bl ov22_02255268
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe8
	mov r3, #0
	bl ov22_0225528C
	mov r0, #0xfa
	lsl r0, r0, #2
	mov r1, #0x65
	str r0, [sp]
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	mov r2, #0xe7
	mov r3, #0
	bl ov22_022552A8
	mov r0, #0x64
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	mov r2, #0
	mov r3, #0x90
	bl ov22_022551E4
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021E80
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov22_0225B964

	thumb_func_start ov22_0225BA00
ov22_0225BA00: ; 0x0225BA00
	push {r4, lr}
	mov r1, #0xfa
	add r4, r0, #0
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_022552C4
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_022552D8
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_022552EC
	add r0, r4, #0
	mov r1, #0xfa
	add r0, #0x14
	lsl r1, r1, #2
	bl ov22_02255300
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225BA00

	thumb_func_start ov22_0225BA40
ov22_0225BA40: ; 0x0225BA40
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0xe
	mov r1, #1
	bl sub_0201A778
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x54]
	ldr r1, [r4, r1]
	mov r2, #3
	mov r3, #0
	bl sub_0201A7E8
	mov r0, #0
	mov r1, #0xa0
	mov r2, #0xe
	bl sub_02002E7C
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #0
	mov r1, #2
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_02019060
	mov r1, #3
	ldr r0, [r4, #0x54]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225BA40

	thumb_func_start ov22_0225BAA8
ov22_0225BAA8: ; 0x0225BAA8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201ACF4
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A8FC
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0201A928
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_0225BAA8

	thumb_func_start ov22_0225BAD0
ov22_0225BAD0: ; 0x0225BAD0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0225BAEE
	add r0, r4, #0
	bl ov22_0225BB00
	b _0225BAF4
_0225BAEE:
	add r0, r4, #0
	bl ov22_0225BC18
_0225BAF4:
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201A954
	pop {r4, pc}
	thumb_func_end ov22_0225BAD0

	thumb_func_start ov22_0225BB00
ov22_0225BB00: ; 0x0225BB00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r2, _0225BC10 ; =0x00000181
	add r5, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0225BB1C
	bl sub_02022974
_0225BB1C:
	mov r0, #0xd
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_02021D6C
	mov r0, #3
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x14
	bl sub_02021C50
	mov r0, #0xc
	mov r1, #0xd
	bl sub_02023790
	add r7, r0, #0
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl sub_0202A1A0
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r4, r0, #0
	mov r0, #7
	str r0, [sp]
	mov r1, #0
	lsr r3, r4, #0x1f
	add r3, r4, r3
	asr r4, r3, #1
	mov r3, #0x80
	ldr r0, _0225BC14 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	sub r3, r3, r4
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [r5, #0]
	bl sub_0202A1F4
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_0200BE48
	mov r0, #0xc8
	mov r1, #0xd
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #0x2d
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r1, #0
	ldr r0, _0225BC14 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	mov r3, #0x80
	add r2, r4, #0
	sub r3, r3, r5
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225BC10: .word 0x00000181
_0225BC14: .word 0x00010200
	thumb_func_end ov22_0225BB00

	thumb_func_start ov22_0225BC18
ov22_0225BC18: ; 0x0225BC18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, #8]
	bl sub_02021D6C
	ldr r0, [r5, #4]
	bl sub_0202A5D0
	add r6, r0, #0
	mov r0, #0xd
	bl sub_0200B358
	add r7, r0, #0
	mov r0, #0xc8
	mov r1, #0xd
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #8]
	bl sub_020958B8
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0200BBDC
	add r0, r6, #0
	bl sub_02095888
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_0200BBA8
	ldr r0, [r5, #4]
	bl sub_0202A544
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl sub_0202A524
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #3
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200B48C
	mov r0, #0xd
	bl sub_02073C74
	add r6, r0, #0
	ldr r0, [r5, #4]
	add r1, r6, #0
	bl sub_0202A560
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #4
	bl sub_0200B5CC
	add r0, r6, #0
	bl sub_020181C4
	ldr r2, _0225BD70 ; =0x00000181
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xd
	bl sub_0200B144
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0225BCC4
	bl sub_02022974
_0225BCC4:
	ldr r0, [sp, #0x10]
	mov r1, #0x2b
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #7
	str r0, [sp]
	mov r1, #0
	lsr r6, r3, #0x1f
	add r6, r3, r6
	ldr r0, _0225BD74 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	asr r6, r6, #1
	mov r3, #0x80
	add r2, r4, #0
	sub r3, r3, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	mov r1, #0x2c
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x1b
	str r0, [sp]
	mov r1, #0
	ldr r0, _0225BD74 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x67
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	mov r3, #0x80
	add r2, r4, #0
	sub r3, r3, r5
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B190
	add r0, r7, #0
	bl sub_0200B3F0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225BD70: .word 0x00000181
_0225BD74: .word 0x00010200
	thumb_func_end ov22_0225BC18
	; 0x0225BD78
