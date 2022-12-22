	.include "macros/function.inc"
	.include "include/ov104_0223DC7C.inc"

	

	.text


	thumb_func_start ov104_0223DC7C
ov104_0223DC7C: ; 0x0223DC7C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	mov r1, #0x5a
	mov r2, #0xfa
	str r3, [sp]
	ldr r0, _0223DD24 ; =ov104_0223DDB4
	lsl r1, r1, #2
	lsl r2, r2, #2
	mov r3, #0x5e
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	str r5, [r4, #0x10]
	ldr r0, [sp]
	str r7, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [sp, #0x18]
	add r1, sp, #8
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x20]
	mov r0, #0x18
	ldrsh r0, [r1, r0]
	strh r0, [r4, #0x28]
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	mov r1, #0x5e
	strh r0, [r4, #0x2a]
	mov r0, #0x70
	bl sub_02006C24
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _0223DCCE
	mov r0, #0
	strh r0, [r1]
_0223DCCE:
	add r0, r4, #0
	sub r1, r6, #1
	add r0, #0x2c
	strb r1, [r0]
	mov r0, #1
	bl sub_02019F28
	mov r2, #2
	add r1, r0, #0
	mov r0, #0
	lsl r2, r2, #0xe
	bl MIi_CpuClear32
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_0201C63C
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_0201C63C
	add r1, r4, #0
	add r1, #0x2c
	ldrb r2, [r1]
	mov r1, #0xc
	ldr r3, _0223DD28 ; =0x0224191C
	mul r1, r2
	add r0, r4, #0
	add r1, r3, r1
	bl ov104_0223E5A8
	ldr r0, _0223DD2C ; =ov104_0223DD5C
	add r1, r4, #0
	mov r2, #1
	bl sub_0200DA3C
	str r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DD24: .word ov104_0223DDB4
_0223DD28: .word 0x0224191C
_0223DD2C: .word ov104_0223DD5C
	thumb_func_end ov104_0223DC7C

	thumb_func_start ov104_0223DD30
ov104_0223DD30: ; 0x0223DD30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_0200DA58
	ldr r0, [r5, #0x34]
	bl sub_0200DA58
	ldr r0, [r5, #0x24]
	bl sub_02006CA8
	ldr r1, [r5, #0xc]
	mov r0, #0x5e
	bl sub_02018238
	add r0, r4, #0
	bl sub_020067D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223DD30

	thumb_func_start ov104_0223DD5C
ov104_0223DD5C: ; 0x0223DD5C
	push {r3, r4, r5, r6}
	add r0, r1, #0
	ldr r1, _0223DDAC ; =0x00000151
	sub r2, r1, #2
	ldrb r3, [r0, r2]
	sub r2, r1, #3
	ldrb r2, [r0, r2]
	ldrb r4, [r0, r1]
	lsl r3, r3, #8
	lsl r5, r2, #8
	add r6, r5, #0
	sub r5, r1, #1
	mov r2, #0xff
	lsl r2, r2, #8
	and r3, r2
	ldrb r5, [r0, r5]
	and r6, r2
	orr r3, r4
	orr r5, r6
	ldr r6, _0223DDB0 ; =0x04000040
	strh r5, [r6]
	strh r3, [r6, #4]
	add r3, r1, #4
	ldrb r5, [r0, r3]
	add r3, r1, #2
	ldrb r4, [r0, r3]
	add r3, r1, #1
	ldrb r3, [r0, r3]
	add r1, r1, #3
	ldrb r0, [r0, r1]
	lsl r3, r3, #8
	and r3, r2
	orr r0, r3
	strh r0, [r6, #2]
	lsl r0, r4, #8
	and r0, r2
	orr r0, r5
	strh r0, [r6, #6]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0223DDAC: .word 0x00000151
_0223DDB0: .word 0x04000040
	thumb_func_end ov104_0223DD5C

	thumb_func_start ov104_0223DDB4
ov104_0223DDB4: ; 0x0223DDB4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r3, r4, #0
	add r3, #0x2c
	ldrb r6, [r3]
	mov r3, #0xc
	ldr r2, _0223DDE0 ; =0x0224191C
	mul r3, r6
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x5e
	add r2, r2, r3
	bl ov104_0223DDE4
	cmp r0, #1
	bne _0223DDDC
	add r0, r4, #0
	add r1, r5, #0
	bl ov104_0223DD30
_0223DDDC:
	pop {r4, r5, r6, pc}
	nop
_0223DDE0: .word 0x0224191C
	thumb_func_end ov104_0223DDB4

	thumb_func_start ov104_0223DDE4
ov104_0223DDE4: ; 0x0223DDE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r6, r1, #0
	ldr r1, [r4, #0]
	add r7, r2, #0
	ldr r5, [r4, #0xc]
	cmp r1, #0x12
	bls _0223DDF8
	b _0223E290
_0223DDF8:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223DE04: ; jump table
	.short _0223DE2A - _0223DE04 - 2 ; case 0
	.short _0223E080 - _0223DE04 - 2 ; case 1
	.short _0223E09E - _0223DE04 - 2 ; case 2
	.short _0223E0AE - _0223DE04 - 2 ; case 3
	.short _0223E0C8 - _0223DE04 - 2 ; case 4
	.short _0223E0D8 - _0223DE04 - 2 ; case 5
	.short _0223E0E6 - _0223DE04 - 2 ; case 6
	.short _0223E0FA - _0223DE04 - 2 ; case 7
	.short _0223E116 - _0223DE04 - 2 ; case 8
	.short _0223E11C - _0223DE04 - 2 ; case 9
	.short _0223E134 - _0223DE04 - 2 ; case 10
	.short _0223E140 - _0223DE04 - 2 ; case 11
	.short _0223E164 - _0223DE04 - 2 ; case 12
	.short _0223E1EA - _0223DE04 - 2 ; case 13
	.short _0223E204 - _0223DE04 - 2 ; case 14
	.short _0223E218 - _0223DE04 - 2 ; case 15
	.short _0223E228 - _0223DE04 - 2 ; case 16
	.short _0223E248 - _0223DE04 - 2 ; case 17
	.short _0223E258 - _0223DE04 - 2 ; case 18
_0223DE2A:
	add r0, r6, #0
	mov r1, #0x94
	bl sub_02018144
	str r0, [r4, #0xc]
	mov r1, #0
	mov r2, #0x94
	bl memset
	ldr r5, [r4, #0xc]
	ldr r0, [r4, #0x24]
	mov r1, #2
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E17C ; =0x000007D4
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_0200CDC4
	mov r3, #0x59
	add r1, r0, #0
	lsl r3, r3, #2
	mov r2, #1
	lsl r2, r1
	ldr r0, [r4, r3]
	mov r1, #0x5e
	orr r0, r2
	str r0, [r4, r3]
	mov r0, #4
	bl sub_02012744
	str r0, [r4, #0x30]
	ldr r2, _0223E180 ; =0x0000026A
	mov r0, #1
	mov r1, #0x1a
	add r3, r6, #0
	bl sub_0200B144
	ldr r1, [r7, #0]
	str r0, [sp, #0x20]
	bl sub_0200B1EC
	str r0, [sp, #0x24]
	ldr r0, _0223E184 ; =0x00010200
	add r1, r5, #0
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223E17C ; =0x000007D4
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	ldr r2, [sp, #0x24]
	add r1, #0x7c
	add r0, #0x74
	str r0, [sp, #0xc]
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	add r0, #0x58
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	add r0, r4, #0
	bl ov104_0223E29C
	ldr r0, [r5, #0x7c]
	mov r1, #0
	bl sub_020129D0
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_0200B190
	ldr r0, [r4, #0x24]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r7, #4]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E188 ; =0x000007D2
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_0200CDC4
	mov r3, #0x16
	lsl r3, r3, #4
	str r0, [r4, r3]
	add r0, r3, #4
	ldr r2, [r4, r3]
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r2
	orr r1, r0
	add r0, r3, #4
	str r1, [r4, r0]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0223E18C ; =0x000007DA
	str r0, [sp, #8]
	ldrb r3, [r7, #5]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223E188 ; =0x000007D2
	str r0, [sp, #4]
	ldrb r3, [r7, #6]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223E188 ; =0x000007D2
	str r0, [sp, #4]
	ldrb r3, [r7, #7]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl sub_0200CE54
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0
	mov r2, #0x16
	str r0, [sp, #4]
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	lsl r2, r2, #0x14
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
	ldr r0, [r4, #0x24]
	mov r1, #2
	str r0, [sp]
	mov r0, #0x33
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _0223E190 ; =0x000007D3
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x1c]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl sub_0200CDC4
	add r3, r0, #0
	mov r7, #0x59
	mov r0, #1
	lsl r7, r7, #2
	add r1, r0, #0
	lsl r1, r3
	ldr r2, [r4, r7]
	mov r3, #0x90
	orr r1, r2
	str r1, [r4, r7]
	mov r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _0223E194 ; =0x000007DB
	str r0, [sp, #8]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223E190 ; =0x000007D3
	mov r3, #0x91
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223E190 ; =0x000007D3
	mov r3, #0x92
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x24]
	bl sub_0200CE54
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	ldr r2, _0223E198 ; =0x022418B4
	bl sub_0200CE6C
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	mov r0, #0x2a
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0223E01A
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	str r0, [sp, #0x1c]
	b _0223E02A
_0223E01A:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
	str r0, [sp, #0x1c]
_0223E02A:
	mov r0, #0x28
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0223E044
	lsl r0, r0, #0xc
	bl _f_itof
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _f_add
	b _0223E052
_0223E044:
	lsl r0, r0, #0xc
	bl _f_itof
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _f_sub
_0223E052:
	bl _f_ftoi
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl _f_ftoi
	add r5, #0x14
	add r1, r5, #0
	mov r2, #0x12
	mov r5, #0x52
	add r3, r0, #0
	lsl r2, r2, #0xe
	lsl r5, r5, #0xc
	str r6, [sp]
	add r0, r4, #0
	add r2, r7, r2
	add r3, r3, r5
	bl ov104_0223E3FC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E080:
	mov r0, #3
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	ldr r3, _0223E19C ; =0x00007FFF
	str r6, [sp, #8]
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E09E:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223E16C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E0AE:
	mov r0, #3
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, _0223E19C ; =0x00007FFF
	str r6, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E0C8:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223E16C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E0D8:
	mov r1, #0
	bl ov104_0223E6F0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E0E6:
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223E16C
	add r0, r1, #1
	str r0, [r4, #0]
	mov r0, #0xa
	str r0, [r5, #0x78]
	b _0223E290
_0223E0FA:
	ldr r0, [r5, #0x78]
	sub r0, r0, #1
	str r0, [r5, #0x78]
	bpl _0223E16C
	add r5, #0x14
	add r0, r5, #0
	bl ov104_0223E4A4
	cmp r0, #1
	bne _0223E16C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E116:
	add r0, r1, #1
	str r0, [r4, #0]
	b _0223E290
_0223E11C:
	mov r2, #0x56
	lsl r2, r2, #2
	add r1, r5, #0
	add r2, r4, r2
	bl ov104_0223E804
	cmp r0, #1
	bne _0223E16C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E134:
	mov r0, #0xa
	str r0, [r5, #0x78]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E140:
	ldr r0, [r5, #0x78]
	sub r0, r0, #1
	str r0, [r5, #0x78]
	bpl _0223E16C
	mov r0, #3
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	ldr r3, _0223E19C ; =0x00007FFF
	str r6, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E164:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0223E16E
_0223E16C:
	b _0223E290
_0223E16E:
	mov r0, #0
	mov r2, #0x59
	str r0, [sp]
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	ldr r2, _0223E1A0 ; =0x00003FFF
	b _0223E1A4
	; .align 2, 0
_0223E17C: .word 0x000007D4
_0223E180: .word 0x0000026A
_0223E184: .word 0x00010200
_0223E188: .word 0x000007D2
_0223E18C: .word 0x000007DA
_0223E190: .word 0x000007D3
_0223E194: .word 0x000007DB
_0223E198: .word 0x022418B4
_0223E19C: .word 0x00007FFF
_0223E1A0: .word 0x00003FFF
_0223E1A4:
	ldr r0, [r4, #0x1c]
	eor r2, r3
	lsl r2, r2, #0x10
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_02003A2C
	mov r0, #0
	str r0, [sp]
	mov r2, #0x16
	str r0, [sp, #4]
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	ldr r0, [r4, #0x1c]
	lsl r2, r2, #0x14
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x10
	bl sub_020039B0
	mov r0, #0xd
	mvn r0, r0
	mov r1, #0x2c
	mov r2, #1
	bl sub_0200AB4C
	ldr r0, [r5, #0x7c]
	mov r1, #1
	bl sub_020129D0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E1EA:
	mov r0, #3
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r3, _0223E298 ; =0x00007FFF
	str r6, [sp, #8]
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E204:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223E290
	mov r0, #0x1a
	str r0, [r5, #0x78]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E218:
	ldr r0, [r5, #0x78]
	sub r0, r0, #1
	str r0, [r5, #0x78]
	bpl _0223E290
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E228:
	mov r0, #0xf
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x5e
	mov r1, #0
	str r0, [sp, #8]
	ldr r3, _0223E298 ; =0x00007FFF
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E248:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223E290
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223E290
_0223E258:
	ldr r1, _0223E298 ; =0x00007FFF
	mov r0, #1
	bl sub_0200F344
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _0223E26A
	mov r0, #1
	strh r0, [r1]
_0223E26A:
	add r0, r5, #0
	add r0, #0x7c
	bl ov104_0223E3B8
	ldr r0, [r4, #0x30]
	bl sub_020127BC
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r5, #0x14
	add r0, r5, #0
	bl ov104_0223E48C
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223E290:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E298: .word 0x00007FFF
	thumb_func_end ov104_0223DDE4

	thumb_func_start ov104_0223E29C
ov104_0223E29C: ; 0x0223E29C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _0223E2B6
	bl GF_AssertFail
_0223E2B6:
	ldr r0, [r7, #0x10]
	cmp r4, #0
	str r0, [sp, #0x24]
	ldr r0, [r7, #0x18]
	str r0, [sp, #0x20]
	bne _0223E2D0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov104_0223E3CC
	b _0223E2D8
_0223E2D0:
	ldrh r0, [r4, #0x12]
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x28]
_0223E2D8:
	cmp r4, #0
	bne _0223E316
	add r0, sp, #0x3c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsl r2, r2, #0x18
	add r1, sp, #0x3c
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x3c
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	b _0223E322
_0223E316:
	add r3, r4, #0
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
_0223E322:
	add r0, sp, #0x3c
	mov r1, #1
	mov r2, #0x5e
	bl sub_02012898
	mov r1, #1
	add r2, r1, #0
	add r3, sp, #0x30
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _0223E346
	ldr r1, [sp, #0x2c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r6, r6, r0
_0223E346:
	ldr r0, [r7, #0x30]
	str r0, [sp, #0x4c]
	add r0, sp, #0x3c
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x20]
	bl sub_0200D9B0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	mov r1, #0
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x5c]
	str r0, [sp, #0x60]
	ldr r0, [sp, #0xa0]
	str r6, [sp, #0x64]
	sub r0, #8
	str r0, [sp, #0x68]
	mov r0, #0xb
	str r0, [sp, #0x70]
	mov r0, #1
	str r0, [sp, #0x74]
	mov r0, #0x5e
	str r0, [sp, #0x78]
	add r0, sp, #0x4c
	str r1, [sp, #0x6c]
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r7, r0, #0
	bl sub_02012AC0
	ldr r2, [sp, #0xa0]
	add r0, r7, #0
	add r1, r6, #0
	sub r2, #8
	bl sub_020128C4
	cmp r4, #0
	bne _0223E3A2
	add r0, sp, #0x3c
	bl sub_0201A8FC
_0223E3A2:
	str r7, [r5, #0]
	add r3, sp, #0x30
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x2c]
	strh r0, [r5, #0x10]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223E29C

	thumb_func_start ov104_0223E3B8
ov104_0223E3B8: ; 0x0223E3B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02012870
	add r0, r4, #4
	bl sub_0201EE28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223E3B8

	thumb_func_start ov104_0223E3CC
ov104_0223E3CC: ; 0x0223E3CC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r4, #0
	mov r2, #0
	add r7, r3, #0
	bl sub_02002D7C
	add r4, r0, #0
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	asr r5, r1, #3
	mov r1, #8
	bl FX_ModS32
	cmp r0, #0
	beq _0223E3F4
	add r5, r5, #1
_0223E3F4:
	str r4, [r6, #0]
	str r5, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0223E3CC

	thumb_func_start ov104_0223E3FC
ov104_0223E3FC: ; 0x0223E3FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r3, #0
	mov ip, r2
	ldr r3, _0223E488 ; =0x022418E8
	add r7, r0, #0
	add r4, r1, #0
	add r2, sp, #0
	mov r5, #6
_0223E40E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r5, r5, #1
	bne _0223E40E
	ldr r0, [r3, #0]
	add r5, r4, #0
	str r0, [r2, #0]
	mov r0, ip
	asr r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	asr r1, r6, #0xc
	strh r1, [r0, #2]
	mov r6, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	add r5, #0x14
_0223E430:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x18]
	add r2, sp, #0
	bl sub_0200CE6C
	mov r1, #0
	str r0, [r4, #4]
	bl sub_0200D3F4
	cmp r6, #3
	beq _0223E46A
	ldr r0, [r4, #4]
	mov r1, #2
	ldr r0, [r0, #0]
	bl sub_02021CF8
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021D6C
	mov r1, #2
	lsl r1, r1, #0xc
	add r0, r5, #0
	lsr r2, r1, #1
	mov r3, #6
	bl ov104_0223E534
	b _0223E478
_0223E46A:
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #6
	bl ov104_0223E534
_0223E478:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #4
	blt _0223E430
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223E488: .word 0x022418E8
	thumb_func_end ov104_0223E3FC

	thumb_func_start ov104_0223E48C
ov104_0223E48C: ; 0x0223E48C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0223E492:
	ldr r0, [r5, #4]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223E492
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0223E48C

	thumb_func_start ov104_0223E4A4
ov104_0223E4A4: ; 0x0223E4A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	mov r0, #1
	mov r1, #2
	str r0, [sp]
	ldrsh r0, [r7, r1]
	cmp r0, #4
	bge _0223E4D2
	mov r0, #0
	str r0, [sp]
	ldrsh r0, [r7, r0]
	sub r0, r0, #1
	strh r0, [r7]
	ldr r0, [sp]
	ldrsh r0, [r7, r0]
	cmp r0, #0
	bgt _0223E4D2
	mov r0, #3
	strh r0, [r7]
	ldrsh r0, [r7, r1]
	add r0, r0, #1
	strh r0, [r7, #2]
_0223E4D2:
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #0
	ble _0223E52E
	add r6, r7, #0
	add r6, #0x14
	add r4, r7, #0
	add r5, r7, #0
_0223E4E6:
	add r0, r6, #0
	bl ov104_0223E544
	ldr r1, [r4, #0x14]
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r2, r1, #0
	add r3, r1, #0
	bl ov104_0223E58C
	ldr r0, [r5, #4]
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	bl sub_02021C70
	ldr r0, [r5, #4]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021CAC
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0223E518
	mov r0, #0
	str r0, [sp]
_0223E518:
	ldr r0, [sp, #4]
	add r6, #0x14
	add r0, r0, #1
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #4]
	add r4, #0x14
	add r5, r5, #4
	cmp r0, r1
	blt _0223E4E6
_0223E52E:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0223E4A4

	thumb_func_start ov104_0223E534
ov104_0223E534: ; 0x0223E534
	str r1, [r0, #0]
	str r1, [r0, #4]
	sub r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov104_0223E534

	thumb_func_start ov104_0223E544
ov104_0223E544: ; 0x0223E544
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #8]
	lsl r2, r2, #0xc
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
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
	bl FX_Div
	ldr r1, [r4, #4]
	add r0, r0, r1
	str r0, [r4, #0]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r0, r0, #1
	cmp r0, r1
	bgt _0223E584
	str r0, [r4, #0xc]
	mov r0, #0
	pop {r4, pc}
_0223E584:
	str r1, [r4, #0xc]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0223E544

	thumb_func_start ov104_0223E58C
ov104_0223E58C: ; 0x0223E58C
	push {r4}
	sub sp, #0xc
	str r2, [sp, #4]
	str r3, [sp, #8]
	add r2, sp, #0
	add r4, r0, #0
	str r1, [sp]
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4}
	bx lr
	thumb_func_end ov104_0223E58C

	thumb_func_start ov104_0223E5A8
ov104_0223E5A8: ; 0x0223E5A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #1
	lsl r3, r3, #0x1a
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r3, #0]
	ldr r0, _0223E6AC ; =0xFFFF1FFF
	add r2, r3, #0
	and r1, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r3, #0]
	add r2, #0x48
	ldrh r6, [r2]
	mov r0, #0x3f
	mov r1, #0x1f
	bic r6, r0
	orr r1, r6
	mov r7, #0x20
	orr r1, r7
	strh r1, [r2]
	ldrh r6, [r2]
	ldr r1, _0223E6B0 ; =0xFFFFC0FF
	and r1, r6
	mov r6, #0x1f
	lsl r6, r6, #8
	orr r6, r1
	lsl r1, r7, #8
	orr r1, r6
	strh r1, [r2]
	add r1, r3, #0
	add r1, #0x4a
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #0x1d
	orr r0, r2
	orr r0, r7
	strh r0, [r1]
	add r1, r3, #0
	mov r0, #0
	add r1, #0x40
	strh r0, [r1]
	add r1, r3, #0
	add r1, #0x44
	strh r0, [r1]
	add r1, r3, #0
	add r1, #0x42
	strh r0, [r1]
	add r3, #0x46
	strh r0, [r3]
	str r0, [sp]
	str r7, [sp, #4]
	mov r0, #0xc0
	str r0, [sp, #8]
	ldrb r2, [r4, #8]
	ldr r0, [r5, #0x1c]
	mov r1, #0x70
	mov r3, #0x5e
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldrb r1, [r4, #9]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x10]
	mov r3, #1
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldrb r1, [r4, #0xa]
	ldr r0, [r5, #0x24]
	ldr r2, [r5, #0x10]
	mov r3, #1
	bl sub_0200710C
	add r0, r7, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_0201C3C0
	ldrb r1, [r4, #8]
	mov r0, #0x70
	add r2, sp, #0x10
	mov r3, #0x5e
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	add r2, r7, #0
	ldr r0, [r0, #0xc]
	add r1, #0x40
	add r2, #0xe0
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _0223E6B4 ; =ov104_0223E6BC
	ldr r2, _0223E6B8 ; =0x0000044C
	add r1, r5, #0
	bl sub_0200D9E8
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r5, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223E6AC: .word 0xFFFF1FFF
_0223E6B0: .word 0xFFFFC0FF
_0223E6B4: .word ov104_0223E6BC
_0223E6B8: .word 0x0000044C
	thumb_func_end ov104_0223E5A8

	thumb_func_start ov104_0223E6BC
ov104_0223E6BC: ; 0x0223E6BC
	push {r3, lr}
	ldr r0, [r1, #0x38]
	add r0, r0, #1
	str r0, [r1, #0x38]
	bmi _0223E6EE
	mov r2, #0
	str r2, [r1, #0x38]
	ldr r0, [r1, #0x3c]
	add r0, r0, #1
	str r0, [r1, #0x3c]
	cmp r0, #8
	blt _0223E6D6
	str r2, [r1, #0x3c]
_0223E6D6:
	mov r0, #0x20
	str r0, [sp]
	add r2, r1, #0
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x3c]
	add r2, #0x40
	lsl r1, r1, #5
	add r1, r2, r1
	mov r2, #0
	mov r3, #0xc0
	bl sub_02002FBC
_0223E6EE:
	pop {r3, pc}
	thumb_func_end ov104_0223E6BC

	thumb_func_start ov104_0223E6F0
ov104_0223E6F0: ; 0x0223E6F0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x51
	lsl r1, r1, #2
	add r4, r0, r1
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	cmp r5, #0
	bne _0223E71E
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [r4, #0]
	str r0, [r4, #4]
	mov r2, #0xfa
	ldr r0, _0223E738 ; =ov104_0223E740
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
_0223E71E:
	mov r0, #0x2e
	lsl r0, r0, #8
	str r0, [r4, #0]
	mov r0, #0x72
	lsl r0, r0, #8
	str r0, [r4, #4]
	mov r2, #0xfa
	ldr r0, _0223E73C ; =ov104_0223E7A4
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E738: .word ov104_0223E740
_0223E73C: .word ov104_0223E7A4
	thumb_func_end ov104_0223E6F0

	thumb_func_start ov104_0223E740
ov104_0223E740: ; 0x0223E740
	push {r3, lr}
	ldrb r2, [r1, #9]
	cmp r2, #0
	bne _0223E798
	mov r0, #2
	ldr r2, [r1, #0]
	lsl r0, r0, #0xa
	sub r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [r1, #4]
	add r0, r2, r0
	str r0, [r1, #4]
	mov r0, #0x2e
	ldr r2, [r1, #0]
	lsl r0, r0, #8
	cmp r2, r0
	bgt _0223E770
	str r0, [r1, #0]
	mov r0, #0x72
	lsl r0, r0, #8
	str r0, [r1, #4]
	ldrb r0, [r1, #9]
	add r0, r0, #1
	strb r0, [r1, #9]
_0223E770:
	mov r0, #0
	strb r0, [r1, #0xa]
	ldr r2, [r1, #0]
	asr r2, r2, #8
	strb r2, [r1, #0xb]
	mov r2, #0xff
	strb r2, [r1, #0xc]
	ldr r2, [r1, #4]
	asr r2, r2, #8
	strb r2, [r1, #0xd]
	mov r2, #1
	strb r2, [r1, #0xe]
	ldr r2, [r1, #0]
	asr r2, r2, #8
	strb r2, [r1, #0xf]
	strb r0, [r1, #0x10]
	ldr r0, [r1, #4]
	asr r0, r0, #8
	strb r0, [r1, #0x11]
	pop {r3, pc}
_0223E798:
	mov r2, #1
	strb r2, [r1, #8]
	bl sub_0200DA58
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223E740

	thumb_func_start ov104_0223E7A4
ov104_0223E7A4: ; 0x0223E7A4
	push {r3, lr}
	ldrb r2, [r1, #9]
	cmp r2, #0
	bne _0223E7F8
	mov r0, #2
	ldr r2, [r1, #0]
	lsl r0, r0, #0xa
	add r2, r2, r0
	str r2, [r1, #0]
	ldr r2, [r1, #4]
	sub r0, r2, r0
	str r0, [r1, #4]
	mov r0, #5
	ldr r2, [r1, #0]
	lsl r0, r0, #0xc
	cmp r2, r0
	blt _0223E7D0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldrb r0, [r1, #9]
	add r0, r0, #1
	strb r0, [r1, #9]
_0223E7D0:
	mov r0, #0
	strb r0, [r1, #0xa]
	ldr r2, [r1, #0]
	asr r2, r2, #8
	strb r2, [r1, #0xb]
	mov r2, #0xff
	strb r2, [r1, #0xc]
	ldr r2, [r1, #4]
	asr r2, r2, #8
	strb r2, [r1, #0xd]
	mov r2, #1
	strb r2, [r1, #0xe]
	ldr r2, [r1, #0]
	asr r2, r2, #8
	strb r2, [r1, #0xf]
	strb r0, [r1, #0x10]
	ldr r0, [r1, #4]
	asr r0, r0, #8
	strb r0, [r1, #0x11]
	pop {r3, pc}
_0223E7F8:
	mov r2, #1
	strb r2, [r1, #8]
	bl sub_0200DA58
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223E7A4

	thumb_func_start ov104_0223E804
ov104_0223E804: ; 0x0223E804
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r3, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	cmp r0, #0
	beq _0223E818
	cmp r0, #1
	beq _0223E854
	b _0223E88C
_0223E818:
	mov r1, #0x28
	ldrsh r2, [r3, r1]
	add r1, #0xd8
	add r0, r5, #0
	add r1, r2, r1
	mov r2, #0x2a
	ldrsh r2, [r3, r2]
	add r0, #0x90
	lsl r1, r1, #0x10
	add r2, #0x50
	lsl r2, r2, #0x10
	mov r3, #2
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	add r5, #0x90
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #1
	lsl r0, r0, #0x10
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _0223E890
_0223E854:
	mov r0, #0xf
	ldr r1, [r4, #0]
	lsl r0, r0, #8
	sub r1, r1, r0
	mov r0, #0xd
	lsl r0, r0, #0xc
	str r1, [r4, #0]
	cmp r1, r0
	bgt _0223E86E
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_0223E86E:
	mov r2, #0x2a
	ldrsh r2, [r3, r2]
	ldr r1, [r4, #0]
	add r5, #0x90
	add r2, #0x50
	lsl r1, r1, #8
	lsl r2, r2, #0x10
	mov r3, #2
	ldr r0, [r5, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x14
	bl sub_0200D500
	b _0223E890
_0223E88C:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223E890:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0223E804

	.rodata


	.global Unk_ov104_022418B4
Unk_ov104_022418B4: ; 0x022418B4
	.incbin "incbin/overlay104_rodata.bin", 0x2624, 0x2658 - 0x2624

	.global Unk_ov104_022418E8
Unk_ov104_022418E8: ; 0x022418E8
	.incbin "incbin/overlay104_rodata.bin", 0x2658, 0x268C - 0x2658

	.global Unk_ov104_0224191C
Unk_ov104_0224191C: ; 0x0224191C
	.incbin "incbin/overlay104_rodata.bin", 0x268C, 0x48

