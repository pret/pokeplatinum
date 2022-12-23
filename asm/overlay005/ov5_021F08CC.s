	.include "macros/function.inc"
	.include "overlay005/ov5_021F08CC.inc"

	

	.text


	thumb_func_start ov5_021F08CC
ov5_021F08CC: ; 0x021F08CC
	push {r3, r4, r5, lr}
	add r0, r1, #0
	mov r1, #0x18
	add r5, r2, #0
	bl sub_02018184
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_021F08E0:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021F08E0
	add r0, r5, #0
	str r5, [r4, #0xc]
	bl ov5_021F0E58
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F08CC

	thumb_func_start ov5_021F08F8
ov5_021F08F8: ; 0x021F08F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r5, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021F0916
	cmp r0, #1
	beq _021F0942
	b _021F09B0
_021F0916:
	ldr r0, [r4, #0x38]
	bl sub_02062C48
	mov r0, #0
	str r0, [r5, #0x10]
	add r2, r5, #0
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	add r2, #0x10
	bl ov6_0224106C
	str r0, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #8]
	add r0, r4, #0
	bl ov5_021F09B4
	str r0, [r5, #0x14]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021F09B0
_021F0942:
	ldr r0, [r5, #0x14]
	bl ov5_021F09D8
	cmp r0, #1
	bne _021F09B0
	ldr r0, [r5, #0x14]
	bl ov5_021F09E4
	add r7, r0, #0
	ldr r0, [r5, #0x14]
	bl ov5_021F09F0
	cmp r7, #1
	ldr r0, [r5, #0x10]
	bne _021F0998
	ldr r0, [r0, #8]
	mov r1, #0
	bl sub_0207A0FC
	ldr r2, [r5, #4]
	add r3, r0, #0
	lsl r2, r2, #0x10
	add r0, r4, #0
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_0206D340
	ldr r0, [r4, #0xc]
	bl sub_0202CD88
	mov r1, #0xa
	bl sub_0202CF28
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02050E78
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F0998:
	cmp r0, #0
	beq _021F09A0
	bl sub_020520A4
_021F09A0:
	ldr r0, [r4, #0x38]
	bl sub_02062C78
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021F09B0:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021F08F8

	thumb_func_start ov5_021F09B4
ov5_021F09B4: ; 0x021F09B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x4c
	add r4, r1, #0
	add r6, r2, #0
	bl ov5_021F0D1C
	add r1, r0, #0
	str r5, [r1, #0x20]
	str r4, [r1, #0x1c]
	ldr r0, _021F09D4 ; =ov5_021F0A04
	mov r2, #0x80
	str r6, [r1, #0]
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021F09D4: .word ov5_021F0A04
	thumb_func_end ov5_021F09B4

	thumb_func_start ov5_021F09D8
ov5_021F09D8: ; 0x021F09D8
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F09D8

	thumb_func_start ov5_021F09E4
ov5_021F09E4: ; 0x021F09E4
	push {r3, lr}
	bl sub_0201CED0
	ldr r0, [r0, #8]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov5_021F09E4

	thumb_func_start ov5_021F09F0
ov5_021F09F0: ; 0x021F09F0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201CED0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov5_021F09F0

	thumb_func_start ov5_021F0A04
ov5_021F0A04: ; 0x021F0A04
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x20]
	ldr r6, [r0, #0x3c]
	add r0, r6, #0
	bl sub_0205EB3C
	ldr r7, _021F0A2C ; =0x021FFA0C
	add r4, r0, #0
_021F0A16:
	ldr r3, [r5, #0xc]
	add r0, r5, #0
	lsl r3, r3, #2
	ldr r3, [r7, r3]
	add r1, r6, #0
	add r2, r4, #0
	blx r3
	cmp r0, #0
	bne _021F0A16
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0A2C: .word 0x021FFA0C
	thumb_func_end ov5_021F0A04

	thumb_func_start ov5_021F0A30
ov5_021F0A30: ; 0x021F0A30
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	bl ov5_021F0D6C
	add r0, r4, #0
	bl sub_02062DDC
	mov r0, #1
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0A30

	thumb_func_start ov5_021F0A48
ov5_021F0A48: ; 0x021F0A48
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl sub_020655F4
	cmp r0, #1
	bne _021F0A7A
	add r0, r6, #0
	bl sub_020656AC
	add r0, r4, #0
	mov r1, #0x20
	bl ov5_021DFB54
	add r0, r4, #0
	bl ov5_021DFB5C
	add r0, r6, #0
	mov r1, #1
	bl sub_02062A0C
	mov r0, #2
	str r0, [r5, #0xc]
_021F0A7A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0A48

	thumb_func_start ov5_021F0A80
ov5_021F0A80: ; 0x021F0A80
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0xa
	bne _021F0A96
	mov r0, #0x65
	lsl r0, r0, #4
	bl sub_02005748
_021F0A96:
	ldr r0, [r4, #0x10]
	cmp r0, #0x22
	bge _021F0AA0
	mov r0, #0
	pop {r4, pc}
_021F0AA0:
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _021F0AAA
	mov r0, #3
	b _021F0AAC
_021F0AAA:
	mov r0, #0xc
_021F0AAC:
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0A80

	thumb_func_start ov5_021F0AB8
ov5_021F0AB8: ; 0x021F0AB8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r0, r0, #0x1e
	sub r0, r0, r1
	mov r2, #0x1e
	ror r0, r2
	add r0, r1, r0
	add r0, r0, #1
	add r1, r0, #0
	mul r1, r2
	str r1, [r4, #0x14]
	ldr r0, [r4, #0x1c]
	lsl r1, r0, #2
	ldr r0, _021F0AE8 ; =0x021FFA00
	ldr r0, [r0, r1]
	str r0, [r4, #0x18]
	mov r0, #4
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	nop
_021F0AE8: .word 0x021FFA00
	thumb_func_end ov5_021F0AB8

	thumb_func_start ov5_021F0AEC
ov5_021F0AEC: ; 0x021F0AEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x14]
	add r4, r2, #0
	sub r0, r0, #1
	str r0, [r5, #0x14]
	bl ov5_021F0D40
	cmp r0, #1
	bne _021F0B08
	mov r0, #0xa
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F0B08:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ble _021F0B12
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F0B12:
	add r0, r4, #0
	mov r1, #2
	bl sub_02062A0C
	mov r1, #0
	add r0, r4, #0
	mov r2, #1
	add r3, r1, #0
	bl ov5_021F5D8C
	str r0, [r5, #0x24]
	mov r0, #5
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F0AEC

	thumb_func_start ov5_021F0B30
ov5_021F0B30: ; 0x021F0B30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bl ov5_021F0D40
	cmp r0, #1
	bne _021F0B4A
	mov r0, #6
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
_021F0B4A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ble _021F0B54
	mov r0, #0
	pop {r4, pc}
_021F0B54:
	mov r0, #0xb
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov5_021F0B30

	thumb_func_start ov5_021F0B5C
ov5_021F0B5C: ; 0x021F0B5C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r5, r2, #0
	bl ov5_021F5C58
	add r0, r5, #0
	mov r1, #3
	bl sub_02062A0C
	mov r0, #0
	str r0, [r4, #0x10]
	mov r1, #7
	str r1, [r4, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0B5C

	thumb_func_start ov5_021F0B7C
ov5_021F0B7C: ; 0x021F0B7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021F0B94
	bl sub_0207136C
	mov r0, #0
	str r0, [r4, #0x24]
_021F0B94:
	ldr r0, [r4, #0x10]
	cmp r0, #0xf
	ble _021F0BAA
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #8
	str r0, [r4, #0xc]
	add r0, r4, #0
	mov r1, #0x39
	bl ov5_021F0DE8
_021F0BAA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0B7C

	thumb_func_start ov5_021F0BB0
ov5_021F0BB0: ; 0x021F0BB0
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F0E24
	cmp r0, #0
	bne _021F0BC0
	mov r0, #0
	pop {r4, pc}
_021F0BC0:
	mov r0, #9
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov5_021F0BB0

	thumb_func_start ov5_021F0BC8
ov5_021F0BC8: ; 0x021F0BC8
	mov r2, #1
	str r2, [r0, #8]
	mov r1, #0xf
	str r1, [r0, #0xc]
	add r0, r2, #0
	bx lr
	thumb_func_end ov5_021F0BC8

	thumb_func_start ov5_021F0BD4
ov5_021F0BD4: ; 0x021F0BD4
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	mov r1, #0x38
	bl ov5_021F0DE8
	mov r0, #0x10
	str r0, [r4, #0x10]
	mov r0, #0xe
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov5_021F0BD4

	thumb_func_start ov5_021F0BF4
ov5_021F0BF4: ; 0x021F0BF4
	push {r4, lr}
	add r4, r0, #0
	add r0, r2, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r4, #0
	mov r1, #0x37
	bl ov5_021F0DE8
	mov r0, #0x10
	str r0, [r4, #0x10]
	mov r0, #0xe
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x20]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x64
	bl sub_0202CF28
	ldr r0, [r4, #0x1c]
	bl ov5_021F0E58
	add r2, r0, #0
	mov r1, #0
	ldr r0, [r4, #0x20]
	add r3, r1, #0
	bl sub_0206D340
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov5_021F0BF4

	thumb_func_start ov5_021F0C34
ov5_021F0C34: ; 0x021F0C34
	mov r1, #0x78
	str r1, [r0, #0x10]
	mov r1, #0xd
	str r1, [r0, #0xc]
	mov r0, #1
	bx lr
	thumb_func_end ov5_021F0C34

	thumb_func_start ov5_021F0C40
ov5_021F0C40: ; 0x021F0C40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r4, r2, #0
	sub r0, r0, #1
	str r0, [r5, #0x10]
	bl ov5_021F0D40
	cmp r0, #1
	bne _021F0C5C
	mov r0, #0xa
	str r0, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F0C5C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	beq _021F0C66
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F0C66:
	add r0, r4, #0
	mov r1, #0
	bl sub_02062A0C
	add r0, r5, #0
	mov r1, #0x36
	bl ov5_021F0DE8
	mov r0, #0x10
	str r0, [r5, #0x10]
	mov r0, #0xe
	str r0, [r5, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0C40

	thumb_func_start ov5_021F0C84
ov5_021F0C84: ; 0x021F0C84
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x10]
	add r1, r1, #1
	str r1, [r4, #0x10]
	cmp r1, #0x10
	bge _021F0C96
	mov r0, #0
	pop {r4, pc}
_021F0C96:
	mov r1, #0x10
	str r1, [r4, #0x10]
	bl ov5_021F0E24
	cmp r0, #0
	bne _021F0CA6
	mov r0, #0
	pop {r4, pc}
_021F0CA6:
	mov r0, #0xf
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0C84

	thumb_func_start ov5_021F0CB0
ov5_021F0CB0: ; 0x021F0CB0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	add r5, r1, #0
	cmp r0, #0
	beq _021F0CC0
	bl ov5_021F5C58
_021F0CC0:
	add r0, r4, #0
	bl ov5_021F0DA4
	add r0, r5, #0
	bl sub_0205EB74
	bl sub_0205EED8
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021DFB54
	add r0, r5, #0
	bl ov5_021DFB5C
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0CB0

	thumb_func_start ov5_021F0CEC
ov5_021F0CEC: ; 0x021F0CEC
	ldr r1, [r0, #0x10]
	add r1, r1, #1
	str r1, [r0, #0x10]
	cmp r1, #2
	ble _021F0CFA
	mov r1, #0x11
	str r1, [r0, #0xc]
_021F0CFA:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021F0CEC

	thumb_func_start ov5_021F0D00
ov5_021F0D00: ; 0x021F0D00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021F0D12
	bl sub_0207136C
	mov r0, #0
	str r0, [r4, #0x24]
_021F0D12:
	mov r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0D00

	thumb_func_start ov5_021F0D1C
ov5_021F0D1C: ; 0x021F0D1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	bne _021F0D30
	bl GF_AssertFail
_021F0D30:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl memset
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0D1C

	thumb_func_start ov5_021F0D40
ov5_021F0D40: ; 0x021F0D40
	ldr r0, _021F0D50 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	bne _021F0D4C
	mov r0, #0
_021F0D4C:
	bx lr
	nop
_021F0D50: .word 0x021BF67C
	thumb_func_end ov5_021F0D40

	thumb_func_start ov5_021F0D54
ov5_021F0D54: ; 0x021F0D54
	ldr r0, _021F0D68 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021F0D62
	mov r0, #1
	bx lr
_021F0D62:
	mov r0, #0
	bx lr
	nop
_021F0D68: .word 0x021BF67C
	thumb_func_end ov5_021F0D54

	thumb_func_start ov5_021F0D6C
ov5_021F0D6C: ; 0x021F0D6C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xd5
	mov r3, #4
	bl sub_0200B144
	str r0, [r4, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x2c]
	mov r0, #1
	lsl r0, r0, #0xa
	mov r1, #4
	bl sub_02023790
	str r0, [r4, #0x30]
	mov r0, #8
	mov r1, #0x40
	mov r2, #4
	bl sub_0200B368
	str r0, [r4, #0x34]
	pop {r4, pc}
	thumb_func_end ov5_021F0D6C

	thumb_func_start ov5_021F0DA4
ov5_021F0DA4: ; 0x021F0DA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_0200B3F0
	ldr r0, [r4, #0x2c]
	bl sub_020237BC
	ldr r0, [r4, #0x30]
	bl sub_020237BC
	ldr r0, [r4, #0x48]
	bl sub_0200B190
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0DA4

	thumb_func_start ov5_021F0DC4
ov5_021F0DC4: ; 0x021F0DC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x20]
	add r1, r5, #0
	ldr r0, [r4, #8]
	add r1, #0x38
	mov r2, #3
	bl sub_0205D8F4
	ldr r0, [r4, #0xc]
	bl sub_02025E44
	add r5, #0x38
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0205D944
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F0DC4

	thumb_func_start ov5_021F0DE8
ov5_021F0DE8: ; 0x021F0DE8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl ov5_021F0DC4
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0x30]
	add r1, r6, #0
	ldr r4, [r5, #0x20]
	bl sub_0200B1B8
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x2c]
	ldr r2, [r5, #0x30]
	bl sub_0200C388
	ldr r0, [r4, #0xc]
	bl sub_02025E44
	add r2, r0, #0
	add r0, r5, #0
	ldr r1, [r5, #0x2c]
	add r0, #0x38
	mov r3, #1
	bl sub_0205D994
	add r5, #0x28
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0DE8

	thumb_func_start ov5_021F0E24
ov5_021F0E24: ; 0x021F0E24
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x28
	ldrb r0, [r0]
	bl sub_0205DA04
	cmp r0, #1
	bne _021F0E52
	bl ov5_021F0D54
	cmp r0, #1
	bne _021F0E52
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl sub_0200E084
	add r4, #0x38
	add r0, r4, #0
	bl sub_0201A8FC
	mov r0, #1
	pop {r4, pc}
_021F0E52:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F0E24

	thumb_func_start ov5_021F0E58
ov5_021F0E58: ; 0x021F0E58
	push {r3, lr}
	cmp r0, #0
	beq _021F0E6A
	cmp r0, #1
	beq _021F0E6E
	cmp r0, #2
	beq _021F0E72
	bl GF_AssertFail
_021F0E6A:
	ldr r0, _021F0E78 ; =0x000001BD
	pop {r3, pc}
_021F0E6E:
	ldr r0, _021F0E7C ; =0x000001BE
	pop {r3, pc}
_021F0E72:
	ldr r0, _021F0E80 ; =0x000001BF
	pop {r3, pc}
	nop
_021F0E78: .word 0x000001BD
_021F0E7C: .word 0x000001BE
_021F0E80: .word 0x000001BF
	thumb_func_end ov5_021F0E58

	.rodata


	.global Unk_ov5_021FFA00
Unk_ov5_021FFA00: ; 0x021FFA00
	.incbin "incbin/overlay5_rodata.bin", 0x70EC, 0x70F8 - 0x70EC

	.global Unk_ov5_021FFA0C
Unk_ov5_021FFA0C: ; 0x021FFA0C
	.incbin "incbin/overlay5_rodata.bin", 0x70F8, 0x48

