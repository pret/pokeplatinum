	.include "macros/function.inc"
	.include "overlay100/ov100_021D1C44.inc"

	

	.text


	thumb_func_start ov100_021D1C44
ov100_021D1C44: ; 0x021D1C44
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D1C8C ; =0x021D5290
	add r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r1, _021D1C90 ; =0x0013C805
	ldr r3, _021D1C94 ; =0x00000C01
	str r4, [sp, #8]
	bl sub_020206D0
	add r0, r4, #0
	bl sub_020203D4
	mov r0, #0xa
	mov r1, #0x3f
	lsl r0, r0, #0xc
	lsl r1, r1, #0x10
	add r2, r4, #0
	bl sub_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D1C8C: .word 0x021D5290
_021D1C90: .word 0x0013C805
_021D1C94: .word 0x00000C01
	thumb_func_end ov100_021D1C44

	thumb_func_start ov100_021D1C98
ov100_021D1C98: ; 0x021D1C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _021D2038 ; =0x00001EC8
	mov r3, #5
	ldr r1, [r5, r0]
	ldr r0, [r1, #0xc]
	ldr r4, [r1, #0]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0x10]
	ldr r7, [r1, #4]
	ldr r6, [r1, #8]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x12
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x14
	mov r3, #5
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	mov r2, #0x13
	mov r3, #0x6f
	bl sub_02003050
	mov r1, #0
	str r1, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	mov r2, #0x13
	mov r3, #0x6f
	bl sub_02003050
	str r4, [sp]
	mov r0, #0x32
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D203C ; =0x0000C350
	add r2, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r3, r6, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D203C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x30
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D203C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x2f
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D203C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x31
	bl sub_0200CC3C
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0x1b
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x2e
	bl ov100_021D4AC8
	ldr r0, _021D2040 ; =0x000018A8
	mov r7, #0x62
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_021D1D8A:
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, r4, #0
	ldr r2, [r5, r2]
	mov r1, #0x41
	ldr r2, [r2, #0]
	bl ov100_021D4AC8
	ldr r1, _021D2044 ; =0x00001333
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D1D8A
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0x13
	ldr r2, [r5, r2]
	lsl r0, r0, #6
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x18
	bl ov100_021D4AC8
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0x13
	ldr r3, [r5, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x16
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0x13
	ldr r3, [r5, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x17
	bl ov100_021D4B4C
	ldr r2, _021D2038 ; =0x00001EC8
	ldr r0, _021D2048 ; =0x00000648
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x35
	bl ov100_021D4AC8
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2048 ; =0x00000648
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x33
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2048 ; =0x00000648
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x34
	bl ov100_021D4B4C
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0xce
	ldr r2, [r5, r2]
	lsl r0, r0, #2
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x37
	bl ov100_021D4AC8
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xce
	ldr r3, [r5, r0]
	lsl r1, r1, #2
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x36
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xce
	ldr r3, [r5, r0]
	lsl r1, r1, #2
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x38
	bl ov100_021D4B4C
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0x7d
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x42
	bl ov100_021D4AC8
	mov r0, #0x7d
	ldr r1, _021D204C ; =0xFFFCE000
	lsl r0, r0, #4
	add r0, r5, r0
	mov r2, #0
	add r3, r1, #0
	bl sub_02017350
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0x7d
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x43
	bl ov100_021D4B4C
	mov r1, #0x93
	lsl r1, r1, #4
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	lsl r2, r2, #0xb
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r1, #0x28
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0x44
	bl ov100_021D4AC8
	ldr r0, _021D2050 ; =0x00000958
	mov r1, #0x32
	ldr r3, _021D204C ; =0xFFFCE000
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02017350
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2050 ; =0x00000958
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x45
	bl ov100_021D4B4C
	ldr r1, _021D2054 ; =0x00000AB8
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	lsl r2, r2, #0xb
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r1, #0x28
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0x1a
	bl ov100_021D4AC8
	mov r0, #0xae
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _021D2058 ; =0xFFFA6000
	add r0, r5, r0
	add r3, r1, #0
	bl sub_02017350
	mov r0, #0xae
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xae
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x19
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xae
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x1b
	bl ov100_021D4B4C
	ldr r0, _021D205C ; =0x00000C48
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x1d
	bl ov100_021D4AC8
	ldr r0, _021D2060 ; =0x00000C68
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2060 ; =0x00000C68
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x1c
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2060 ; =0x00000C68
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x1e
	bl ov100_021D4B4C
	mov r0, #0xdd
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x20
	bl ov100_021D4AC8
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xdf
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x1f
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xdf
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x21
	bl ov100_021D4B4C
	ldr r0, _021D2064 ; =0x00000F58
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x23
	bl ov100_021D4AC8
	ldr r0, _021D2068 ; =0x00000F78
	b _021D206C
	nop
_021D2038: .word 0x00001EC8
_021D203C: .word 0x0000C350
_021D2040: .word 0x000018A8
_021D2044: .word 0x00001333
_021D2048: .word 0x00000648
_021D204C: .word 0xFFFCE000
_021D2050: .word 0x00000958
_021D2054: .word 0x00000AB8
_021D2058: .word 0xFFFA6000
_021D205C: .word 0x00000C48
_021D2060: .word 0x00000C68
_021D2064: .word 0x00000F58
_021D2068: .word 0x00000F78
_021D206C:
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2228 ; =0x00000F78
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x22
	bl ov100_021D4B4C
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2228 ; =0x00000F78
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x24
	bl ov100_021D4B4C
	ldr r0, _021D222C ; =0x000010E0
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2224 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x26
	bl ov100_021D4AC8
	mov r0, #0x11
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2224 ; =0x00001EC8
	mov r1, #0x11
	ldr r3, [r5, r0]
	lsl r1, r1, #8
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x25
	bl ov100_021D4B4C
	ldr r0, _021D2224 ; =0x00001EC8
	mov r1, #0x11
	ldr r3, [r5, r0]
	lsl r1, r1, #8
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x27
	bl ov100_021D4B4C
	ldr r0, _021D2230 ; =0x00001268
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2224 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x29
	bl ov100_021D4AC8
	ldr r0, _021D2234 ; =0x00001288
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2234 ; =0x00001288
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x28
	bl ov100_021D4B4C
	ldr r2, _021D2224 ; =0x00001EC8
	ldr r0, _021D2238 ; =0x00001410
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x2a
	bl ov100_021D4AC8
	ldr r0, _021D2238 ; =0x00001410
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D223C ; =0x00001ECC
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl sub_02025F30
	cmp r0, #1
	ldr r0, _021D2240 ; =0x00001598
	ldr r2, _021D2224 ; =0x00001EC8
	beq _021D2184
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3d
	bl ov100_021D4AC8
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2240 ; =0x00001598
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x3e
	bl ov100_021D4B4C
	b _021D21A8
_021D2184:
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3f
	bl ov100_021D4AC8
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2240 ; =0x00001598
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x40
	bl ov100_021D4B4C
_021D21A8:
	ldr r0, _021D2240 ; =0x00001598
	mov r1, #1
	mov r3, #0x23
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	mov r0, #1
	ldr r1, _021D2244 ; =0x000016FC
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #2
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2224 ; =0x00001EC8
	add r1, #0x24
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0xd
	bl ov100_021D4AC8
	ldr r0, _021D2248 ; =0x00001720
	mov r1, #1
	mov r3, #0xf
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2248 ; =0x00001720
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0xe
	bl ov100_021D4B4C
	mov r0, #1
	ldr r1, _021D224C ; =0x00001884
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	mov r0, #2
	sub r1, #0xc
	str r0, [r5, r1]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2224: .word 0x00001EC8
_021D2228: .word 0x00000F78
_021D222C: .word 0x000010E0
_021D2230: .word 0x00001268
_021D2234: .word 0x00001288
_021D2238: .word 0x00001410
_021D223C: .word 0x00001ECC
_021D2240: .word 0x00001598
_021D2244: .word 0x000016FC
_021D2248: .word 0x00001720
_021D224C: .word 0x00001884
	thumb_func_end ov100_021D1C98

	thumb_func_start ov100_021D2250
ov100_021D2250: ; 0x021D2250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, _021D2318 ; =0x00001EC8
	mov r4, #0
	ldr r1, [r5, r0]
	add r7, r5, #0
	ldr r0, [r1, #4]
	mov r6, #0x10
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, sp, #0xc
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	mov r0, #2
	str r0, [sp, #0x1c]
	sub r0, r0, #3
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, _021D231C ; =0x0000C350
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x38]
	str r4, [sp, #0x3c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r7, #0x14
_021D2292:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0xc
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	bl sub_0200D330
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x14]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200D430
	lsl r1, r6, #0x10
	ldr r0, [r5, #0x14]
	asr r1, r1, #0x10
	mov r2, #0x40
	bl sub_0200D4C4
	mov r0, #1
	str r0, [r5, #0x20]
	str r4, [r5, #0x1c]
	mov r0, #0x32
	strh r0, [r5, #0x28]
	ldr r0, [sp]
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	str r4, [r5, #0x38]
	mov r0, #1
	str r0, [r5, #0x3c]
	str r0, [r5, #0x40]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	str r1, [r5, #0x44]
	mov r0, #0
	str r0, [r5, #0x48]
	mov r2, #1
	ldr r0, _021D2320 ; =ov100_021D4414
	add r1, r7, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	str r0, [r5, #0x54]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #0x78
	add r5, #0x44
	add r6, #0x40
	add r7, #0x44
	str r0, [sp]
	cmp r4, #3
	blt _021D2292
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2318: .word 0x00001EC8
_021D231C: .word 0x0000C350
_021D2320: .word ov100_021D4414
	thumb_func_end ov100_021D2250

	thumb_func_start ov100_021D2324
ov100_021D2324: ; 0x021D2324
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D232A:
	ldr r0, [r5, #0x54]
	bl sub_0200DA58
	ldr r0, [r5, #0x14]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x44
	cmp r4, #3
	blt _021D232A
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D2324

	thumb_func_start ov100_021D2340
ov100_021D2340: ; 0x021D2340
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, _021D2404 ; =0x00001ED0
	add r5, r0, #0
	mov r0, #0x6f
	bl sub_02018144
	ldr r2, _021D2404 ; =0x00001ED0
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r1, r5, #0
	ldr r0, _021D2408 ; =0x00001EC8
	add r1, #0xc
	str r1, [r4, r0]
	add r1, r5, #0
	add r1, #0xd0
	ldr r1, [r1, #0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov100_021D1C98
	add r0, r4, #0
	bl ov100_021D2250
	add r0, r4, #0
	add r0, #8
	mov r1, #0x6f
	bl ov100_021D4E3C
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _021D240C ; =0x04001014
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsr r0, r0, #0xe
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r4, #0
	ldr r3, _021D2410 ; =0x000002AA
	add r0, #8
	mov r2, #0xbf
	bl ov100_021D4E70
	mov r0, #8
	str r0, [sp]
	ldr r0, _021D2414 ; =0x04000050
	mov r1, #4
	mov r2, #0x32
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D2418 ; =0x04001050
	mov r1, #3
	mov r2, #0x12
	mov r3, #7
	bl G2x_SetBlendAlpha_
	ldr r2, _021D241C ; =0x04000060
	ldr r0, _021D2420 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021D2424 ; =0x021D5298
	bl G3X_SetEdgeColorTable
	ldr r0, _021D2408 ; =0x00001EC8
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	add r1, #0x44
	bl ov100_021D1C44
	ldr r0, _021D2408 ; =0x00001EC8
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x48]
	mov r0, #1
	bl ov100_021D4DC8
	add r0, r5, #0
	mov r1, #0x10
	bl ov100_021D4DD8
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2404: .word 0x00001ED0
_021D2408: .word 0x00001EC8
_021D240C: .word 0x04001014
_021D2410: .word 0x000002AA
_021D2414: .word 0x04000050
_021D2418: .word 0x04001050
_021D241C: .word 0x04000060
_021D2420: .word 0xFFFFCFFF
_021D2424: .word 0x021D5298
	thumb_func_end ov100_021D2340

	thumb_func_start ov100_021D2428
ov100_021D2428: ; 0x021D2428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0x15
	bls _021D2436
	b _021D2BA4
_021D2436:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2442: ; jump table
	.short _021D246E - _021D2442 - 2 ; case 0
	.short _021D24B2 - _021D2442 - 2 ; case 1
	.short _021D24C2 - _021D2442 - 2 ; case 2
	.short _021D2504 - _021D2442 - 2 ; case 3
	.short _021D252A - _021D2442 - 2 ; case 4
	.short _021D254C - _021D2442 - 2 ; case 5
	.short _021D2590 - _021D2442 - 2 ; case 6
	.short _021D25CC - _021D2442 - 2 ; case 7
	.short _021D2604 - _021D2442 - 2 ; case 8
	.short _021D26A8 - _021D2442 - 2 ; case 9
	.short _021D270E - _021D2442 - 2 ; case 10
	.short _021D272A - _021D2442 - 2 ; case 11
	.short _021D2750 - _021D2442 - 2 ; case 12
	.short _021D2826 - _021D2442 - 2 ; case 13
	.short _021D2846 - _021D2442 - 2 ; case 14
	.short _021D2892 - _021D2442 - 2 ; case 15
	.short _021D2948 - _021D2442 - 2 ; case 16
	.short _021D29AC - _021D2442 - 2 ; case 17
	.short _021D29FA - _021D2442 - 2 ; case 18
	.short _021D2A48 - _021D2442 - 2 ; case 19
	.short _021D2AEA - _021D2442 - 2 ; case 20
	.short _021D2B06 - _021D2442 - 2 ; case 21
_021D246E:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	ldr r3, _021D27AC ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r2, _021D27B0 ; =0x00001EC8
	mov r1, #0
	ldr r0, [r4, r2]
	add r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D27B4 ; =0x04000050
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	ldr r2, _021D27B0 ; =0x00001EC8
	ldr r0, _021D27B8 ; =0x04001050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl G2x_SetBlendBrightness_
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D24B2:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D2512
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D24C2:
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x14
	ldr r0, [r4, r1]
	mov r3, #0x3c
	str r2, [r0, #0x64]
	ldr r2, [r4, r1]
	mov r0, #0
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, [r4, r1]
	str r0, [r2, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2504:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	bne _021D2514
_021D2512:
	b _021D2BB6
_021D2514:
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x14
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D252A:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D2616
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D254C:
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r0, #0
	ldr r2, [r4, r1]
	mov r3, #0x3c
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	mov r2, #0x46
	ldr r0, [r4, r1]
	lsl r2, r2, #0xc
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2590:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	beq _021D2616
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xa
	blt _021D2616
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x15
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, _021D27BC ; =0x00001720
	ldr r1, _021D27C0 ; =0x021D54D0
	add r0, r4, r0
	bl ov100_021D44C0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D25CC:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D2616
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x16
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	mov r0, #0
	mov r1, #0xa
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2604:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D2618
_021D2616:
	b _021D2BB6
_021D2618:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xf
	bne _021D2648
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x1f
_021D2630:
	ldr r3, [r1, #0x20]
	add r0, r0, #1
	lsr r5, r3, #0x1f
	lsl r3, r3, #0x1f
	sub r3, r3, r5
	ror r3, r2
	add r3, r5, r3
	add r3, r3, #2
	str r3, [r1, #0x20]
	add r1, #0x44
	cmp r0, #3
	blt _021D2630
_021D2648:
	ldr r6, [r4, #4]
	cmp r6, #0x1e
	blt _021D271C
	ldr r2, _021D27B0 ; =0x00001EC8
	mov r3, #0x53
	ldr r0, [r4, r2]
	ldrsb r1, [r0, r3]
	sub r3, #0x59
	cmp r1, r3
	ble _021D2692
	lsr r5, r6, #0x1f
	lsl r3, r6, #0x1f
	sub r3, r3, r5
	mov r2, #0x1f
	ror r3, r2
	add r2, r5, r3
	beq _021D2670
	sub r1, r1, #1
	add r0, #0x53
	strb r1, [r0]
_021D2670:
	ldr r2, _021D27B0 ; =0x00001EC8
	ldr r0, _021D27B4 ; =0x04000050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	ldr r2, _021D27B0 ; =0x00001EC8
	ldr r0, _021D27B8 ; =0x04001050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl G2x_SetBlendBrightness_
	b _021D2BB6
_021D2692:
	add r1, r2, #4
	ldr r1, [r4, r1]
	mov r2, #0x17
	bl ov100_021D46C8
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D26A8:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D271C
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D27BC ; =0x00001720
	ldr r1, _021D27C4 ; =0x021D54E8
	add r0, r4, r0
	bl ov100_021D44C0
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r0, #0
	ldr r2, [r4, r1]
	mov r3, #0x5a
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, _021D27C8 ; =0xFFFB0000
	ldr r0, [r4, r1]
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D270E:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	bne _021D271E
_021D271C:
	b _021D2BB6
_021D271E:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D272A:
	ldr r0, _021D27CC ; =0x000013E8
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _021D27D0 ; =0x00001288
	add r0, r4, r0
	bl sub_02017348
	ldr r0, _021D27D4 ; =0x000004BE
	bl sub_0200549C
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2750:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	bne _021D2764
	ldr r0, _021D27BC ; =0x00001720
	ldr r1, _021D27D8 ; =0x021D54B8
	add r0, r4, r0
	bl ov100_021D44C0
_021D2764:
	ldr r0, [r4, #4]
	cmp r0, #0xf
	beq _021D2782
	cmp r0, #0x2d
	beq _021D2782
	cmp r0, #0x4b
	beq _021D2782
	cmp r0, #0x5f
	beq _021D2782
	cmp r0, #0x73
	beq _021D2782
	cmp r0, #0x82
	beq _021D2782
	cmp r0, #0x91
	bne _021D27EA
_021D2782:
	ldr r0, _021D27DC ; =0x000005C5
	bl sub_02005748
	ldr r5, [r4, #4]
	mov r1, #0x1e
	add r0, r5, #0
	bl _s32_div_f
	add r2, r0, #0
	lsl r3, r2, #5
	lsr r2, r5, #0x1f
	lsl r6, r5, #0x1b
	sub r6, r6, r2
	mov r5, #0x1b
	ror r6, r5
	add r5, r2, r6
	mov r2, #0xa
	mul r2, r5
	ldr r0, _021D27DC ; =0x000005C5
	ldr r1, _021D27E0 ; =0x0000FFFF
	b _021D27E4
	; .align 2, 0
_021D27AC: .word 0x00007FFF
_021D27B0: .word 0x00001EC8
_021D27B4: .word 0x04000050
_021D27B8: .word 0x04001050
_021D27BC: .word 0x00001720
_021D27C0: .word 0x021D54D0
_021D27C4: .word 0x021D54E8
_021D27C8: .word 0xFFFB0000
_021D27CC: .word 0x000013E8
_021D27D0: .word 0x00001288
_021D27D4: .word 0x000004BE
_021D27D8: .word 0x021D54B8
_021D27DC: .word 0x000005C5
_021D27E0: .word 0x0000FFFF
_021D27E4:
	add r2, r3, r2
	bl sub_02004F7C
_021D27EA:
	ldr r0, _021D2B2C ; =0x000013E8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D2850
	ldr r0, _021D2B30 ; =0x00001288
	mov r1, #0
	add r0, r4, r0
	bl sub_02017348
	ldr r0, _021D2B34 ; =0x00001410
	mov r1, #1
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0xae
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x31
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2826:
	ldr r1, _021D2B38 ; =0x00000B38
	ldr r0, _021D2B3C ; =0xFFFCE000
	ldr r2, [r4, r1]
	cmp r2, r0
	bge _021D283A
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	str r0, [r4, r1]
	b _021D2BB6
_021D283A:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2846:
	mov r3, #0x31
	lsl r3, r3, #6
	ldr r0, [r4, r3]
	cmp r0, #0
	beq _021D2852
_021D2850:
	b _021D2BB6
_021D2852:
	ldr r0, _021D2B38 ; =0x00000B38
	add r1, r3, #0
	ldr r2, [r4, r0]
	add r1, #0x80
	str r2, [r4, r1]
	ldr r2, _021D2B40 ; =0x00000DC8
	mov r1, #1
	str r1, [r4, r2]
	add r2, r2, #4
	str r1, [r4, r2]
	lsr r2, r3, #1
	str r1, [r4, r2]
	ldr r2, _021D2B44 ; =0x0000062C
	sub r0, #0x58
	str r1, [r4, r2]
	ldr r2, _021D2B48 ; =0x00000498
	add r0, r4, r0
	str r1, [r4, r2]
	add r2, #8
	str r1, [r4, r2]
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2B4C ; =0x00000C68
	mov r1, #1
	add r0, r4, r0
	bl sub_02017348
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2892:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #1
	bne _021D28A2
	ldr r0, _021D2B50 ; =0x000005C6
	bl sub_02005748
_021D28A2:
	ldr r0, [r4, #4]
	cmp r0, #0x14
	bne _021D28B2
	ldr r0, _021D2B54 ; =0x00001720
	ldr r1, _021D2B58 ; =0x021D54A0
	add r0, r4, r0
	bl ov100_021D44C0
_021D28B2:
	ldr r0, [r4, #4]
	cmp r0, #0x28
	bne _021D28CC
	mov r0, #0x6f
	str r0, [sp]
	mov r0, #0
	add r2, r0, #0
	ldr r1, _021D2B5C ; =0x000001E3
	sub r2, #0x50
	mov r3, #0x28
	str r0, [sp, #4]
	bl sub_020059D0
_021D28CC:
	ldr r0, [r4, #4]
	cmp r0, #0x41
	bne _021D28E6
	mov r0, #0x6f
	mov r1, #0x79
	str r0, [sp]
	mov r0, #0
	lsl r1, r1, #2
	mov r2, #0x50
	mov r3, #0x28
	str r0, [sp, #4]
	bl sub_020059D0
_021D28E6:
	ldr r0, [r4, #4]
	ldr r1, _021D2B60 ; =0x0000082C
	cmp r0, #0x28
	bge _021D28F6
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	b _021D28FC
_021D28F6:
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x2c
_021D28FC:
	sub r0, r2, r0
	str r0, [r4, r1]
	ldr r0, [r4, #4]
	ldr r1, _021D2B64 ; =0x000009B4
	cmp r0, #0x41
	bge _021D290E
	ldr r2, [r4, r1]
	mov r0, #1
	b _021D2912
_021D290E:
	ldr r2, [r4, r1]
	mov r0, #2
_021D2912:
	lsl r0, r0, #0xa
	sub r0, r2, r0
	str r0, [r4, r1]
	mov r1, #0x33
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	cmp r2, #0
	bge _021D292C
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	str r0, [r4, r1]
	b _021D2BB6
_021D292C:
	mov r0, #0
	str r0, [r4, r1]
	ldr r1, _021D2B68 ; =0x00001EC8
	str r0, [r4, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x18
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2948:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D295C
	b _021D2BB6
_021D295C:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D2B6C ; =0x000007A8
	mov r3, #1
	str r3, [r4, r0]
	mov r1, #0
	add r2, r0, #4
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0xc
	str r3, [r4, r2]
	lsl r0, r0, #1
	str r3, [r4, r0]
	ldr r0, _021D2B4C ; =0x00000C68
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x6f
	str r0, [sp]
	mov r2, #0
	ldr r1, _021D2B70 ; =0x000001E7
	mov r0, #2
	mov r3, #0x7f
	str r2, [sp, #4]
	bl sub_020059D0
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D29AC:
	mov r0, #0xf5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D2A80
	ldr r1, _021D2B68 ; =0x00001EC8
	mov r2, #0x19
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, _021D2B74 ; =0x000010D8
	mov r1, #1
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021D2B6C ; =0x000007A8
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _021D2B78 ; =0x00000648
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2B7C ; =0x00000F78
	mov r1, #1
	add r0, r4, r0
	bl sub_02017348
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D29FA:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D2A80
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D2A1A
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
_021D2A1A:
	ldr r0, _021D2B80 ; =0x000004BF
	bl sub_0200549C
	ldr r0, _021D2B84 ; =0x00001260
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _021D2B7C ; =0x00000F78
	mov r1, #0
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0x11
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2A48:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xee
	bne _021D2A64
	mov r0, #0x6f
	str r0, [sp]
	mov r2, #0
	ldr r1, _021D2B70 ; =0x000001E7
	mov r0, #2
	mov r3, #0x7f
	str r2, [sp, #4]
	bl sub_020059D0
_021D2A64:
	ldr r0, [r4, #4]
	cmp r0, #0xaa
	bne _021D2A78
	ldr r1, _021D2B68 ; =0x00001EC8
	mov r2, #0x1a
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
_021D2A78:
	ldr r0, _021D2B84 ; =0x00001260
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2A82
_021D2A80:
	b _021D2BB6
_021D2A82:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D2AA2
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D2AA2:
	ldr r2, _021D2B68 ; =0x00001EC8
	mov r1, #0xf
	ldr r0, [r4, r2]
	mvn r1, r1
	add r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D2B88 ; =0x04000050
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	ldr r2, _021D2B68 ; =0x00001EC8
	ldr r0, _021D2B8C ; =0x04001050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl G2x_SetBlendBrightness_
	bl sub_020041FC
	mov r1, #0
	bl sub_020055D0
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D2AEA:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D2B06:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D2BB6
	ldr r2, _021D2B68 ; =0x00001EC8
	mov r1, #0
	ldr r0, [r4, r2]
	add r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D2B88 ; =0x04000050
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	ldr r2, _021D2B68 ; =0x00001EC8
	ldr r0, _021D2B8C ; =0x04001050
	b _021D2B90
	; .align 2, 0
_021D2B2C: .word 0x000013E8
_021D2B30: .word 0x00001288
_021D2B34: .word 0x00001410
_021D2B38: .word 0x00000B38
_021D2B3C: .word 0xFFFCE000
_021D2B40: .word 0x00000DC8
_021D2B44: .word 0x0000062C
_021D2B48: .word 0x00000498
_021D2B4C: .word 0x00000C68
_021D2B50: .word 0x000005C6
_021D2B54: .word 0x00001720
_021D2B58: .word 0x021D54A0
_021D2B5C: .word 0x000001E3
_021D2B60: .word 0x0000082C
_021D2B64: .word 0x000009B4
_021D2B68: .word 0x00001EC8
_021D2B6C: .word 0x000007A8
_021D2B70: .word 0x000001E7
_021D2B74: .word 0x000010D8
_021D2B78: .word 0x00000648
_021D2B7C: .word 0x00000F78
_021D2B80: .word 0x000004BF
_021D2B84: .word 0x00001260
_021D2B88: .word 0x04000050
_021D2B8C: .word 0x04001050
_021D2B90:
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl G2x_SetBlendBrightness_
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2BA4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	blt _021D2BB6
	mov r0, #0
	add sp, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D2BB6:
	ldr r0, _021D2C68 ; =0x00000824
	ldr r7, _021D2C6C ; =0x00001A84
	add r3, r4, r0
	ldr r0, _021D2C70 ; =0x000018FC
	ldr r6, _021D2C74 ; =0x00001C0C
	str r0, [sp, #0x14]
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D2C78 ; =0x000009AC
	add r2, r4, r7
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D2C7C ; =0x000015EC
	add r2, r4, r6
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D2C80 ; =0x00001D94
	str r0, [r2, #0]
	ldr r0, _021D2C84 ; =0x00001774
	add r5, r4, r0
	add r0, r4, r3
	str r0, [sp, #0x10]
	mov ip, r0
	ldr r2, [sp, #0x10]
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0]
	add r0, r2, #0
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	mov r1, #2
	add r0, #8
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	str r2, [sp, #0x10]
	sub r2, r0, r1
	ldr r0, [sp, #0x14]
	add r0, #8
	str r0, [sp, #0x14]
	str r2, [r4, r0]
	add r0, r7, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r7, #8
	sub r0, r0, r1
	str r0, [r4, r7]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r6, #8
	sub r0, r0, r1
	str r0, [r4, r6]
	add r0, r3, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r3, #8
	sub r0, r0, r1
	str r0, [r4, r3]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r2, r2, r0
	ldr r0, [sp, #0xc]
	str r2, [r0, #0]
	mov r0, ip
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r1, r2, r0
	mov r0, ip
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov100_021D2E0C
	ldr r0, _021D2C88 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4BF0
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C68: .word 0x00000824
_021D2C6C: .word 0x00001A84
_021D2C70: .word 0x000018FC
_021D2C74: .word 0x00001C0C
_021D2C78: .word 0x000009AC
_021D2C7C: .word 0x000015EC
_021D2C80: .word 0x00001D94
_021D2C84: .word 0x00001774
_021D2C88: .word 0x00001EC8
	thumb_func_end ov100_021D2428

	thumb_func_start ov100_021D2C8C
ov100_021D2C8C: ; 0x021D2C8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021D2C9C
	cmp r1, #1
	beq _021D2CB0
	b _021D2DD6
_021D2C9C:
	bl ov100_021D2324
	add r0, r5, #0
	add r0, #8
	bl ov100_021D4E58
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D2DDE
_021D2CB0:
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x1b
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	ldr r0, _021D2DE8 ; =0x000018A8
	mov r7, #0x62
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_021D2CCC:
	ldr r1, _021D2DE4 ; =0x00001EC8
	add r0, r4, #0
	ldr r1, [r5, r1]
	mov r2, #0
	add r1, #0x1c
	bl ov100_021D4AA4
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D2CCC
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x13
	ldr r1, [r5, r1]
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DEC ; =0x00000648
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0xce
	ldr r1, [r5, r1]
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x7d
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DF0 ; =0x00000958
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0xae
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DF4 ; =0x00000C68
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0xdf
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DF8 ; =0x00000F78
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x11
	ldr r1, [r5, r1]
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DFC ; =0x00001288
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2E00 ; =0x00001410
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2E04 ; =0x00001598
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2E08 ; =0x00001720
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D2DDE
_021D2DD6:
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2DDE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2DE4: .word 0x00001EC8
_021D2DE8: .word 0x000018A8
_021D2DEC: .word 0x00000648
_021D2DF0: .word 0x00000958
_021D2DF4: .word 0x00000C68
_021D2DF8: .word 0x00000F78
_021D2DFC: .word 0x00001288
_021D2E00: .word 0x00001410
_021D2E04: .word 0x00001598
_021D2E08: .word 0x00001720
	thumb_func_end ov100_021D2C8C

	thumb_func_start ov100_021D2E0C
ov100_021D2E0C: ; 0x021D2E0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r0, _021D2EDC ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	ldr r0, _021D2EDC ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4844
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE0 ; =0x00000648
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE4 ; =0x00001288
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE8 ; =0x00001410
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xae
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EEC ; =0x00000C68
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF0 ; =0x00000F78
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x11
	lsl r0, r0, #8
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF4 ; =0x00000958
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF8 ; =0x00001598
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EFC ; =0x00001720
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F00 ; =0x000018A8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F04 ; =0x00001A30
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F08 ; =0x00001BB8
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x75
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	pop {r4, pc}
	nop
_021D2EDC: .word 0x00001EC8
_021D2EE0: .word 0x00000648
_021D2EE4: .word 0x00001288
_021D2EE8: .word 0x00001410
_021D2EEC: .word 0x00000C68
_021D2EF0: .word 0x00000F78
_021D2EF4: .word 0x00000958
_021D2EF8: .word 0x00001598
_021D2EFC: .word 0x00001720
_021D2F00: .word 0x000018A8
_021D2F04: .word 0x00001A30
_021D2F08: .word 0x00001BB8
	thumb_func_end ov100_021D2E0C

	.rodata


	.global Unk_ov100_021D5290
Unk_ov100_021D5290: ; 0x021D5290
	.incbin "incbin/overlay100_rodata.bin", 0x1BC, 0x1C4 - 0x1BC

	.global Unk_ov100_021D5298
Unk_ov100_021D5298: ; 0x021D5298
	.incbin "incbin/overlay100_rodata.bin", 0x1C4, 0x10


	.data


	.global Unk_ov100_021D54A0
Unk_ov100_021D54A0: ; 0x021D54A0
	.incbin "incbin/overlay100_data.bin", 0x0, 0x18 - 0x0

	.global Unk_ov100_021D54B8
Unk_ov100_021D54B8: ; 0x021D54B8
	.incbin "incbin/overlay100_data.bin", 0x18, 0x30 - 0x18

	.global Unk_ov100_021D54D0
Unk_ov100_021D54D0: ; 0x021D54D0
	.incbin "incbin/overlay100_data.bin", 0x30, 0x48 - 0x30

	.global Unk_ov100_021D54E8
Unk_ov100_021D54E8: ; 0x021D54E8
	.incbin "incbin/overlay100_data.bin", 0x48, 0x24

