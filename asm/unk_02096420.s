	.include "macros/function.inc"
	.include "include/unk_02096420.inc"

	

	.text


	thumb_func_start sub_02096420
sub_02096420: ; 0x02096420
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	add r6, r0, #0
	add r7, r2, #0
	ldr r0, [sp, #4]
	mov r1, #0
	add r2, r3, #0
	bl sub_0207CF48
	mov r1, #0xe
	add r4, r0, #0
	bl sub_0207D014
	cmp r0, #1
	beq _0209644C
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0209644C:
	add r0, r6, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0207D014
	cmp r0, #0
	beq _02096476
	mov r0, #7
	tst r0, r5
	beq _02096476
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096476:
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0207D014
	cmp r0, #0
	beq _02096494
	mov r0, #0x88
	tst r0, r5
	beq _02096494
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096494:
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0207D014
	cmp r0, #0
	beq _020964B2
	mov r0, #0x10
	tst r0, r5
	beq _020964B2
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020964B2:
	add r0, r4, #0
	mov r1, #0x12
	bl sub_0207D014
	cmp r0, #0
	beq _020964D0
	mov r0, #0x20
	tst r0, r5
	beq _020964D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020964D0:
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0207D014
	cmp r0, #0
	beq _020964EE
	mov r0, #0x40
	tst r0, r5
	beq _020964EE
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020964EE:
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x17
	bl sub_0207D014
	cmp r0, #0
	bne _02096512
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0207D014
	cmp r0, #0
	beq _0209652E
_02096512:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	bne _0209652E
	cmp r5, #0
	bne _02096558
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209652E:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02096558
	cmp r5, #0
	beq _02096558
	add r0, r6, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	cmp r5, r0
	bhs _02096558
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096558:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _0209657E
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x64
	bhs _0209657E
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209657E:
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	beq _020965A8
	mov r0, #0
	str r0, [sp]
	ldr r3, [sp, #4]
	add r1, r6, #0
	mov r2, #3
	bl sub_02076B94
	cmp r0, #0
	beq _020965A8
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020965A8:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	bne _020965C0
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _020965F6
_020965C0:
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x3e
	mov r2, #0
	bl sub_02074470
	cmp r0, #3
	bhs _020965F6
	add r1, r7, #0
	add r0, r6, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl sub_020790DC
	cmp r0, #5
	blo _020965F6
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020965F6:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	beq _0209661A
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02096F34
	cmp r0, #1
	bne _0209661A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209661A:
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _02096646
	mov r5, #0
_02096628:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02096F34
	cmp r0, #1
	bne _02096640
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096640:
	add r5, r5, #1
	cmp r5, #4
	blt _02096628
_02096646:
	add r0, r6, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x14]
	add r0, r6, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r6, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r6, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	beq _0209670A
	add r0, r4, #0
	mov r1, #0x27
	bl sub_0207D014
	cmp r0, #0
	beq _0209670A
	add r0, r4, #0
	mov r1, #0x30
	bl sub_0207D014
	cmp r0, #0
	ble _020966E0
	cmp r5, #0x64
	bge _0209670A
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _0209670A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020966E0:
	bge _0209670A
	cmp r5, #0
	ble _020966F2
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020966F2:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _0209670A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209670A:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_0207D014
	cmp r0, #0
	beq _02096776
	add r0, r4, #0
	mov r1, #0x31
	bl sub_0207D014
	cmp r0, #0
	ble _0209674A
	ldr r0, [sp, #0x14]
	cmp r0, #0x64
	bge _02096776
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _02096776
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209674A:
	bge _02096776
	ldr r0, [sp, #0x14]
	cmp r0, #0
	ble _0209675E
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209675E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _02096776
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096776:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_0207D014
	cmp r0, #0
	beq _020967E4
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0207D014
	cmp r0, #0
	ble _020967B8
	ldr r0, [sp, #0x10]
	cmp r0, #0x64
	bge _020967E4
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _020967E4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020967B8:
	bge _020967E4
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _020967CC
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020967CC:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _020967E4
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020967E4:
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_0207D014
	cmp r0, #0
	beq _02096852
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0207D014
	cmp r0, #0
	ble _02096826
	ldr r0, [sp, #0xc]
	cmp r0, #0x64
	bge _02096852
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _02096852
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096826:
	bge _02096852
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _0209683A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209683A:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _02096852
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096852:
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_0207D014
	cmp r0, #0
	beq _020968C0
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0207D014
	cmp r0, #0
	ble _02096894
	ldr r0, [sp, #8]
	cmp r0, #0x64
	bge _020968C0
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _020968C0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096894:
	bge _020968C0
	ldr r0, [sp, #8]
	cmp r0, #0
	ble _020968A8
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020968A8:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _020968C0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_020968C0:
	add r0, r4, #0
	mov r1, #0x2c
	bl sub_0207D014
	cmp r0, #0
	beq _0209692A
	add r0, r4, #0
	mov r1, #0x35
	bl sub_0207D014
	cmp r0, #0
	ble _02096900
	cmp r7, #0x64
	bge _0209692A
	ldr r0, [sp, #0x14]
	add r1, r5, r0
	ldr r0, [sp, #0x10]
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	add r1, r0, r1
	ldr r0, [sp, #8]
	add r0, r0, r1
	add r1, r7, r0
	ldr r0, _02096938 ; =0x000001FE
	cmp r1, r0
	bge _0209692A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096900:
	bge _0209692A
	cmp r7, #0
	ble _02096912
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096912:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02097144
	cmp r0, #1
	bne _0209692A
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0209692A:
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02096938: .word 0x000001FE
	thumb_func_end sub_02096420

	thumb_func_start sub_0209693C
sub_0209693C: ; 0x0209693C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	ldr r3, [sp, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02096420
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0209693C

	thumb_func_start sub_02096954
sub_02096954: ; 0x02096954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r5, r0, #0
	ldr r0, [sp, #0x88]
	str r2, [sp, #4]
	str r0, [sp, #0x88]
	add r0, r1, #0
	ldr r2, [sp, #0x88]
	mov r1, #0
	str r3, [sp, #8]
	bl sub_0207CF48
	mov r1, #0xe
	add r4, r0, #0
	bl sub_0207D014
	cmp r0, #1
	beq _02096984
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096984:
	mov r6, #0
	add r0, r5, #0
	mov r1, #0xa0
	add r2, r6, #0
	add r7, r6, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0207D014
	cmp r0, #0
	beq _020969AC
	ldr r1, [sp, #0x54]
	mov r0, #7
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_020969AC:
	add r0, r4, #0
	mov r1, #0x10
	bl sub_0207D014
	cmp r0, #0
	beq _020969C2
	ldr r1, [sp, #0x54]
	ldr r0, _02096B6C ; =0xFFFFF077
	mov r7, #1
	and r0, r1
	str r0, [sp, #0x54]
_020969C2:
	add r0, r4, #0
	mov r1, #0x11
	bl sub_0207D014
	cmp r0, #0
	beq _020969D8
	ldr r1, [sp, #0x54]
	mov r0, #0x10
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_020969D8:
	add r0, r4, #0
	mov r1, #0x12
	bl sub_0207D014
	cmp r0, #0
	beq _020969EE
	ldr r1, [sp, #0x54]
	mov r0, #0x20
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_020969EE:
	add r0, r4, #0
	mov r1, #0x13
	bl sub_0207D014
	cmp r0, #0
	beq _02096A04
	ldr r1, [sp, #0x54]
	mov r0, #0x40
	bic r1, r0
	str r1, [sp, #0x54]
	mov r7, #1
_02096A04:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x54]
	cmp r1, r0
	beq _02096A18
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #0x54
	bl sub_02074B30
	mov r6, #1
_02096A18:
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x54]
	add r0, r4, #0
	mov r1, #0x17
	bl sub_0207D014
	cmp r0, #0
	bne _02096A48
	add r0, r4, #0
	mov r1, #0x18
	bl sub_0207D014
	cmp r0, #0
	beq _02096A74
_02096A48:
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _02096A74
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02096A70
	add r0, r4, #0
	mov r1, #0x36
	bl sub_0207D014
	add r3, r0, #0
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_020970AC
	mov r6, #1
_02096A70:
	mov r7, #1
	b _02096AA0
_02096A74:
	add r0, r4, #0
	mov r1, #0x26
	bl sub_0207D014
	cmp r0, #0
	beq _02096AA0
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x54]
	cmp r1, r0
	bge _02096A9E
	add r0, r4, #0
	mov r1, #0x36
	bl sub_0207D014
	add r3, r0, #0
	ldr r1, [sp, #0x50]
	ldr r2, [sp, #0x54]
	add r0, r5, #0
	bl sub_020970AC
	mov r6, #1
_02096A9E:
	mov r7, #1
_02096AA0:
	add r0, r5, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x58]
	add r0, r4, #0
	mov r1, #0x19
	bl sub_0207D014
	cmp r0, #0
	beq _02096AF8
	ldr r0, [sp, #0x58]
	cmp r0, #0x64
	bge _02096AF6
	add r0, r5, #0
	bl sub_02075A70
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #8
	bl sub_0207536C
	add r0, r5, #0
	bl sub_0207418C
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _02096AF4
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r3, [sp, #0x54]
	ldr r1, [sp, #0x50]
	add r0, r5, #0
	sub r3, r2, r3
	str r2, [sp, #0x5c]
	bl sub_020970AC
_02096AF4:
	mov r6, #1
_02096AF6:
	mov r7, #1
_02096AF8:
	add r0, r4, #0
	mov r1, #0x1a
	bl sub_0207D014
	cmp r0, #0
	beq _02096B06
	mov r7, #1
_02096B06:
	add r0, r4, #0
	mov r1, #0x22
	bl sub_0207D014
	cmp r0, #0
	beq _02096B26
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	bl sub_02097004
	cmp r0, #1
	bne _02096B22
	mov r6, #1
_02096B22:
	mov r7, #1
	b _02096B44
_02096B26:
	add r0, r4, #0
	mov r1, #0x23
	bl sub_0207D014
	cmp r0, #0
	beq _02096B44
	ldr r1, [sp, #4]
	add r0, r5, #0
	mov r2, #3
	bl sub_02097004
	cmp r0, #1
	bne _02096B42
	mov r6, #1
_02096B42:
	mov r7, #1
_02096B44:
	add r0, r4, #0
	mov r1, #0x24
	bl sub_0207D014
	cmp r0, #0
	beq _02096B70
	add r0, r4, #0
	mov r1, #0x37
	bl sub_0207D014
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl sub_02096F84
	cmp r0, #1
	bne _02096B68
	mov r6, #1
_02096B68:
	mov r7, #1
	b _02096BAA
	; .align 2, 0
_02096B6C: .word 0xFFFFF077
_02096B70:
	add r0, r4, #0
	mov r1, #0x25
	bl sub_0207D014
	cmp r0, #0
	beq _02096BAA
	mov r0, #0
	str r0, [sp, #0x50]
	cmp r0, #4
	bge _02096BA8
	mov r7, #0x37
_02096B86:
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0207D014
	add r2, r0, #0
	ldr r1, [sp, #0x50]
	add r0, r5, #0
	bl sub_02096F84
	cmp r0, #1
	bne _02096B9E
	mov r6, #1
_02096B9E:
	ldr r0, [sp, #0x50]
	add r0, r0, #1
	str r0, [sp, #0x50]
	cmp r0, #4
	blt _02096B86
_02096BA8:
	mov r7, #1
_02096BAA:
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x58]
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x5c]
	add r0, r5, #0
	mov r1, #0x11
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x60]
	add r0, r5, #0
	mov r1, #0x12
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x64]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x49
	lsl r1, r1, #2
	cmp r0, r1
	beq _02096C64
	add r0, r4, #0
	mov r1, #0x27
	bl sub_0207D014
	cmp r0, #0
	beq _02096C64
	add r0, r4, #0
	mov r1, #0x30
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x54]
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x50]
	add r1, r1, r2
	ldr r2, [sp, #0xc]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096C5C
	str r0, [sp, #0x50]
	add r0, r5, #0
	mov r1, #0xd
	add r2, sp, #0x50
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096C5C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096C64
	mov r7, #1
_02096C64:
	add r0, r4, #0
	mov r1, #0x28
	bl sub_0207D014
	cmp r0, #0
	beq _02096CC4
	add r0, r4, #0
	mov r1, #0x31
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x18]
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x54]
	add r1, r1, r2
	ldr r2, [sp, #0x18]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096CBC
	str r0, [sp, #0x54]
	add r0, r5, #0
	mov r1, #0xe
	add r2, sp, #0x54
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096CBC:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096CC4
	mov r7, #1
_02096CC4:
	add r0, r4, #0
	mov r1, #0x29
	bl sub_0207D014
	cmp r0, #0
	beq _02096D24
	add r0, r4, #0
	mov r1, #0x32
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x28]
	ldr r1, [sp, #0x5c]
	str r0, [sp, #0x24]
	str r1, [sp, #0x2c]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x58]
	add r1, r1, r2
	ldr r2, [sp, #0x24]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096D1C
	str r0, [sp, #0x58]
	add r0, r5, #0
	mov r1, #0xf
	add r2, sp, #0x58
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096D1C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096D24
	mov r7, #1
_02096D24:
	add r0, r4, #0
	mov r1, #0x2a
	bl sub_0207D014
	cmp r0, #0
	beq _02096D84
	add r0, r4, #0
	mov r1, #0x33
	bl sub_0207D014
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x34]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x30]
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x5c]
	add r1, r1, r2
	ldr r2, [sp, #0x30]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096D7C
	str r0, [sp, #0x5c]
	add r0, r5, #0
	mov r1, #0x10
	add r2, sp, #0x5c
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096D7C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096D84
	mov r7, #1
_02096D84:
	add r0, r4, #0
	mov r1, #0x2b
	bl sub_0207D014
	cmp r0, #0
	beq _02096DE4
	add r0, r4, #0
	mov r1, #0x34
	bl sub_0207D014
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x40]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x3c]
	str r1, [sp, #0x44]
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r2, r2, r1
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x64]
	add r2, r1, r2
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #0x60]
	add r1, r1, r2
	ldr r2, [sp, #0x3c]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096DDC
	str r0, [sp, #0x60]
	add r0, r5, #0
	mov r1, #0x11
	add r2, sp, #0x60
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096DDC:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096DE4
	mov r7, #1
_02096DE4:
	add r0, r4, #0
	mov r1, #0x2c
	bl sub_0207D014
	cmp r0, #0
	beq _02096E44
	add r0, r4, #0
	mov r1, #0x35
	bl sub_0207D014
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x50]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x58]
	str r0, [sp, #0x48]
	mov ip, r1
	ldr r1, [sp, #0x54]
	str r0, [sp, #0x6c]
	add r1, r2, r1
	mov r2, ip
	add r2, r2, r1
	ldr r1, [sp, #0x4c]
	ldr r3, [sp, #0x60]
	add r1, r1, r2
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x48]
	add r1, r3, r1
	bl sub_020970EC
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #0x68]
	cmp r0, r1
	beq _02096E3C
	str r0, [sp, #0x64]
	add r0, r5, #0
	mov r1, #0x12
	add r2, sp, #0x64
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	mov r6, #1
_02096E3C:
	ldr r0, [sp, #0x6c]
	cmp r0, #0
	ble _02096E44
	mov r7, #1
_02096E44:
	cmp r6, #0
	bne _02096E58
	cmp r7, #1
	bne _02096E58
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096E58:
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x50]
	cmp r0, #0x64
	bge _02096E98
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0207D014
	cmp r0, #0
	beq _02096F06
	add r0, r4, #0
	mov r1, #0x38
	bl sub_0207D014
	add r2, r0, #0
	ldr r0, [sp, #0x88]
	str r0, [sp]
	ldr r1, [sp, #0x50]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_020971D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096E98:
	blt _02096ECE
	cmp r0, #0xc8
	bge _02096ECE
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0207D014
	cmp r0, #0
	beq _02096F06
	add r0, r4, #0
	mov r1, #0x39
	bl sub_0207D014
	add r2, r0, #0
	ldr r0, [sp, #0x88]
	str r0, [sp]
	ldr r1, [sp, #0x50]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_020971D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096ECE:
	cmp r0, #0xc8
	blt _02096F06
	cmp r0, #0xff
	bgt _02096F06
	add r0, r4, #0
	mov r1, #0x2f
	bl sub_0207D014
	cmp r0, #0
	beq _02096F06
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_0207D014
	add r2, r0, #0
	ldr r0, [sp, #0x88]
	str r0, [sp]
	ldr r1, [sp, #0x50]
	ldr r3, [sp, #8]
	add r0, r5, #0
	bl sub_020971D0
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x70
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096F06:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02096954

	thumb_func_start sub_02096F14
sub_02096F14: ; 0x02096F14
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	ldr r1, [sp, #0x14]
	add r3, sp, #0
	str r1, [sp]
	ldrh r3, [r3, #0x10]
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02096954
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02096F14

	thumb_func_start sub_02096F34
sub_02096F34: ; 0x02096F34
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r1, #0x36
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bne _02096F4C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096F4C:
	add r1, r6, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	add r6, #0x3e
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r7, #0
	bl sub_020790DC
	cmp r4, r0
	bhs _02096F7A
	mov r0, #1
	b _02096F7C
_02096F7A:
	mov r0, #0
_02096F7C:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02096F34

	thumb_func_start sub_02096F84
sub_02096F84: ; 0x02096F84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, #0x36
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bne _02096FA2
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02096FA2:
	add r0, r5, #0
	str r0, [sp]
	add r0, #0x3a
	str r0, [sp]
	ldr r1, [sp]
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	add r1, sp, #4
	strb r0, [r1]
	add r5, #0x3e
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_020790DC
	add r1, sp, #4
	ldrb r2, [r1]
	cmp r2, r0
	bhs _02096FFC
	cmp r4, #0x7f
	bne _02096FE0
	strb r0, [r1]
	b _02096FEC
_02096FE0:
	add r2, r2, r4
	strb r2, [r1]
	ldrb r2, [r1]
	cmp r2, r0
	bls _02096FEC
	strb r0, [r1]
_02096FEC:
	ldr r1, [sp]
	add r0, r6, #0
	add r2, sp, #4
	bl sub_02074B30
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02096FFC:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02096F84

	thumb_func_start sub_02097004
sub_02097004: ; 0x02097004
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r4, r1, #0
	str r1, [sp]
	add r1, #0x3e
	mov r2, #0
	add r5, r0, #0
	str r1, [sp]
	bl sub_02074470
	add r1, sp, #8
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #3
	bne _0209702A
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0209702A:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	bl sub_020790DC
	cmp r0, #5
	bhs _0209704C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0209704C:
	add r4, #0x3a
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02074470
	add r1, sp, #8
	strb r0, [r1, #1]
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	bl sub_020790DC
	add r7, r0, #0
	add r0, sp, #8
	ldrb r0, [r0]
	add r0, r0, r6
	cmp r0, #3
	bls _02097074
	mov r0, #3
	b _02097078
_02097074:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
_02097078:
	add r1, sp, #8
	strb r0, [r1]
	ldrb r1, [r1]
	ldr r0, [sp, #4]
	bl sub_020790DC
	add r1, sp, #8
	ldrb r2, [r1, #1]
	add r0, r2, r0
	sub r0, r0, r7
	strb r0, [r1, #1]
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #8
	bl sub_02074B30
	add r2, sp, #8
	add r0, r5, #0
	add r1, r4, #0
	add r2, #1
	bl sub_02074B30
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02097004

	thumb_func_start sub_020970AC
sub_020970AC: ; 0x020970AC
	push {r0, r1, r2, r3}
	push {r3, lr}
	cmp r2, #1
	bne _020970B8
	mov r3, #1
	b _020970CE
_020970B8:
	cmp r3, #0xff
	bne _020970C0
	add r3, r2, #0
	b _020970CE
_020970C0:
	cmp r3, #0xfe
	bne _020970C8
	lsr r3, r2, #1
	b _020970CE
_020970C8:
	cmp r3, #0xfd
	bne _020970CE
	lsr r3, r2, #2
_020970CE:
	ldr r1, [sp, #0xc]
	add r1, r1, r3
	cmp r1, r2
	bls _020970DA
	str r2, [sp, #0xc]
	b _020970DC
_020970DA:
	str r1, [sp, #0xc]
_020970DC:
	mov r1, #0xa3
	add r2, sp, #0xc
	bl sub_02074B30
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_020970AC

	thumb_func_start sub_020970EC
sub_020970EC: ; 0x020970EC
	push {r3, r4}
	cmp r0, #0
	bne _020970FE
	cmp r2, #0
	bge _020970FE
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_020970FE:
	cmp r0, #0x64
	blt _0209710E
	cmp r2, #0
	ble _0209710E
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_0209710E:
	ldr r3, _02097140 ; =0x000001FE
	add r4, r0, r1
	cmp r4, r3
	blt _02097122
	cmp r2, #0
	ble _02097122
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_02097122:
	add r0, r0, r2
	cmp r0, #0x64
	ble _0209712C
	mov r0, #0x64
	b _02097132
_0209712C:
	cmp r0, #0
	bge _02097132
	mov r0, #0
_02097132:
	ldr r2, _02097140 ; =0x000001FE
	add r3, r0, r1
	cmp r3, r2
	ble _0209713C
	sub r0, r2, r1
_0209713C:
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02097140: .word 0x000001FE
	thumb_func_end sub_020970EC

	thumb_func_start sub_02097144
sub_02097144: ; 0x02097144
	push {r4, lr}
	add r4, r1, #0
	mov r1, #9
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xff
	blt _02097158
	mov r0, #0
	pop {r4, pc}
_02097158:
	cmp r0, #0x64
	bge _0209717C
	add r0, r4, #0
	mov r1, #0x2d
	bl sub_0207D014
	cmp r0, #0
	beq _02097178
	add r0, r4, #0
	mov r1, #0x38
	bl sub_0207D014
	cmp r0, #0
	ble _02097178
	mov r0, #1
	pop {r4, pc}
_02097178:
	mov r0, #0
	pop {r4, pc}
_0209717C:
	blt _020971A2
	cmp r0, #0xc8
	bge _020971A2
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_0207D014
	cmp r0, #0
	beq _0209719E
	add r0, r4, #0
	mov r1, #0x39
	bl sub_0207D014
	cmp r0, #0
	ble _0209719E
	mov r0, #1
	pop {r4, pc}
_0209719E:
	mov r0, #0
	pop {r4, pc}
_020971A2:
	cmp r0, #0xc8
	blt _020971CA
	cmp r0, #0xff
	bge _020971CA
	add r0, r4, #0
	mov r1, #0x2f
	bl sub_0207D014
	cmp r0, #0
	beq _020971C6
	add r0, r4, #0
	mov r1, #0x3a
	bl sub_0207D014
	cmp r0, #0
	ble _020971C6
	mov r0, #1
	pop {r4, pc}
_020971C6:
	mov r0, #0
	pop {r4, pc}
_020971CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02097144

	thumb_func_start sub_020971D0
sub_020971D0: ; 0x020971D0
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r3, #0
	cmp r4, #0xff
	bne _020971EE
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _020971EE
	mov r0, #0
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
_020971EE:
	cmp r4, #0
	bne _02097202
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bge _02097202
	mov r0, #0
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
_02097202:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _02097258
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	ldr r2, [sp, #0x20]
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0207CFF0
	cmp r0, #0x35
	bne _02097230
	ldr r1, [sp, #0x18]
	mov r0, #0x96
	mul r0, r1
	mov r1, #0x64
	bl _s32_div_f
	str r0, [sp, #0x18]
_02097230:
	add r0, r5, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	cmp r0, #0xb
	bne _02097244
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02097244:
	add r0, r5, #0
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r6, r0
	bne _02097258
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_02097258:
	ldr r0, [sp, #0x18]
	add r0, r0, r4
	str r0, [sp, #0x18]
	cmp r0, #0xff
	ble _02097266
	mov r0, #0xff
	str r0, [sp, #0x18]
_02097266:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bge _02097270
	mov r0, #0
	str r0, [sp, #0x18]
_02097270:
	add r0, r5, #0
	mov r1, #9
	add r2, sp, #0x18
	bl sub_02074B30
	mov r0, #1
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	thumb_func_end sub_020971D0

	thumb_func_start sub_02097284
sub_02097284: ; 0x02097284
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	bl sub_0207A0F8
	mov r7, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _020972F8
	mov r6, #0x7f
_02097298:
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xac
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _020972F0
	add r0, r5, #0
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa3
	add r2, sp, #8
	bl sub_02074B30
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #0xa0
	add r2, sp, #8
	bl sub_02074B30
	mov r4, #0
_020972D4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02096F34
	cmp r0, #1
	bne _020972EA
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02096F84
_020972EA:
	add r4, r4, #1
	cmp r4, #4
	blt _020972D4
_020972F0:
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blt _02097298
_020972F8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02097284