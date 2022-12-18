	.include "macros/function.inc"
	.include "include/ov100_021D400C.inc"

	

	.text


	thumb_func_start ov100_021D400C
ov100_021D400C: ; 0x021D400C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r6, r3, #0
	str r1, [sp]
	str r1, [sp, #4]
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r0, #0
	bl sub_020E18B0
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	mov r1, #0
	add r4, r0, #0
	bl sub_020E1108
	ldr r0, _021D4100 ; =0x45800000
	bls _021D4074
	add r1, r4, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D4082
_021D4074:
	add r1, r4, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D4082:
	bl sub_020E1740
	bl sub_020BCFF0
	bl sub_020E17B4
	ldr r1, _021D4100 ; =0x45800000
	bl sub_020E1304
	ldr r1, [sp, #0x30]
	add r4, r0, #0
	bl sub_020E11CC
	blo _021D40BA
	add r1, sp, #0x18
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1108
	bhi _021D40BA
	mov r0, #0
	add r1, r4, #0
	bl sub_020E1228
	bne _021D40C0
_021D40BA:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D40C0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x30]
	bl sub_020E18B0
	add r1, r4, #0
	bl sub_020E1304
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x30]
	bl sub_020E18B0
	add r1, r4, #0
	bl sub_020E1304
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl sub_020E0B00
	ldr r1, [sp, #0x28]
	str r0, [r1, #0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	bl sub_020E0B00
	ldr r1, [sp, #0x2c]
	str r0, [r1, #0]
	mov r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_021D4100: .word 0x45800000
	thumb_func_end ov100_021D400C

	thumb_func_start ov100_021D4104
ov100_021D4104: ; 0x021D4104
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0x10]
	add r5, r0, #0
	add r4, r3, #0
	mov r3, #3
	add r6, r1, #0
	ldr r0, [r5, #0]
	add r1, sp, #0x24
	add r2, sp, #0x20
	lsl r3, r3, #0x12
	bl sub_0200D67C
	ldr r0, [sp, #0x24]
	bl sub_020E17B4
	ldr r1, _021D41F8 ; =0x45800000
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_020E17B4
	ldr r1, _021D41F8 ; =0x45800000
	bl sub_020E1304
	add r3, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r4, [sp, #8]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r2, r7, #0
	bl ov100_021D400C
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _021D41F0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _021D41F8 ; =0x45800000
	bls _021D417A
	ldr r1, [sp, #0x1c]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D4188
_021D417A:
	ldr r1, [sp, #0x1c]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D4188:
	bl sub_020E1740
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _021D41F8 ; =0x45800000
	bls _021D41AC
	ldr r1, [sp, #0x18]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D41BA
_021D41AC:
	ldr r1, [sp, #0x18]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D41BA:
	bl sub_020E1740
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x20]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x20]
	lsr r0, r0, #0x10
	bl sub_0201D250
	add r7, r0, #0
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, r7
	add r2, r6, r2
	bl sub_0200D5E8
_021D41F0:
	ldr r0, [sp, #0x14]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D41F8: .word 0x45800000
	thumb_func_end ov100_021D4104

	thumb_func_start ov100_021D41FC
ov100_021D41FC: ; 0x021D41FC
	push {r3, lr}
	mov r1, #0x20
	str r1, [sp]
	ldr r3, _021D4210 ; =0x40A00000
	mov r1, #0x80
	mov r2, #0x28
	bl ov100_021D4104
	pop {r3, pc}
	nop
_021D4210: .word 0x40A00000
	thumb_func_end ov100_021D41FC

	thumb_func_start ov100_021D4214
ov100_021D4214: ; 0x021D4214
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x1c]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x1c]
	lsr r0, r0, #0x10
	bl sub_0201D250
	lsl r6, r0, #6
	ldr r0, [r5, #0x1c]
	mov r7, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r7, r7, #0x12
	bl sub_0201D264
	mov r3, #0x18
	add r1, r0, #0
	mul r1, r3
	lsl r0, r3, #0xd
	add r4, r1, r0
	ldr r0, [r5, #0]
	add r1, r6, r7
	add r2, r4, #0
	lsl r3, r3, #0xf
	bl sub_0200D650
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4214

	thumb_func_start ov100_021D4264
ov100_021D4264: ; 0x021D4264
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	add r7, r2, #0
	str r3, [sp]
	str r0, [r5, #0x1c]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x1c]
	bl sub_0201D250
	ldr r1, [sp]
	lsl r4, r4, #0xc
	add r6, r1, #0
	mul r6, r0
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [sp, #0x18]
	lsl r3, r7, #0xc
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #3
	ldr r0, [r5, #0]
	add r1, r4, r6
	lsl r3, r3, #0x12
	bl sub_0200D650
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4264

	thumb_func_start ov100_021D42B0
ov100_021D42B0: ; 0x021D42B0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x30]
	ldr r2, _021D430C ; =0x021D550E
	lsl r3, r1, #2
	mov r1, #0xa
	str r1, [sp]
	ldr r1, _021D4310 ; =0x021D550C
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r3]
	ldr r3, _021D4314 ; =0x40400000
	bl ov100_021D4104
	cmp r0, #0
	bne _021D42EE
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	add r0, r0, #1
	str r0, [r4, #0x30]
	bl sub_020E2178
	str r1, [r4, #0x30]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E2178
	str r1, [r4, #0x30]
	mov r0, #3
	str r0, [r4, #0xc]
_021D42EE:
	mov r3, #3
	ldr r0, [r4, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x12
	bl sub_0200D67C
	ldr r1, [sp, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x14]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D430C: .word 0x021D550E
_021D4310: .word 0x021D550C
_021D4314: .word 0x40400000
	thumb_func_end ov100_021D42B0

	thumb_func_start ov100_021D4318
ov100_021D4318: ; 0x021D4318
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r4, #0x20]
	bl sub_020E1F6C
	str r1, [r4, #0x20]
	cmp r1, #0xc
	bge _021D4360
	ldr r0, [r4, #0x24]
	mov r1, #3
	add r0, r0, #1
	str r0, [r4, #0x24]
	bl sub_020E1F6C
	str r1, [r4, #0x24]
	bl sub_0201D2E8
	ldr r1, [r4, #0x24]
	bl sub_020E1F6C
	add r0, r1, #1
	str r0, [r4, #0x28]
	bl sub_0201D2E8
	ldr r1, [r4, #0x24]
	bl sub_020E1F6C
	add r0, r1, #1
	str r0, [r4, #0x2c]
	mov r0, #2
	str r0, [r4, #0xc]
_021D4360:
	mov r3, #3
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x12
	bl sub_0200D67C
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r4, #0x28]
	ldr r3, [sp, #4]
	lsl r1, r2, #1
	add r1, r2, r1
	mul r0, r1
	add r0, r3, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r2, [r4, #0x2c]
	ldr r3, [sp]
	lsl r1, r2, #1
	add r1, r2, r1
	mul r0, r1
	add r2, r3, r0
	str r2, [sp]
	mov r3, #3
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	lsl r3, r3, #0x12
	bl sub_0200D650
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x14]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4318

	thumb_func_start ov100_021D43BC
ov100_021D43BC: ; 0x021D43BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	bl sub_020E17B4
	ldr r1, _021D4404 ; =0x42C80000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _021D4408 ; =0x3F4CCCCD
	bl sub_020E1A9C
	ldr r1, _021D440C ; =0x3E4CCCCD
	add r5, r0, #0
	bl sub_020E1164
	bhi _021D43E2
	ldr r5, _021D440C ; =0x3E4CCCCD
_021D43E2:
	ldr r1, _021D4410 ; =0x3F19999A
	add r0, r5, #0
	bl sub_020E10AC
	blo _021D43EE
	ldr r5, _021D4410 ; =0x3F19999A
_021D43EE:
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r5, #0
	bl sub_0200D6E8
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_0200D474
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4404: .word 0x42C80000
_021D4408: .word 0x3F4CCCCD
_021D440C: .word 0x3E4CCCCD
_021D4410: .word 0x3F19999A
	thumb_func_end ov100_021D43BC

	thumb_func_start ov100_021D4414
ov100_021D4414: ; 0x021D4414
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021D4434 ; =0x021D5334
	ldr r1, [r1, r2]
	blx r1
	add r0, r4, #0
	bl ov100_021D43BC
	ldr r0, [r4, #0]
	bl sub_0200D33C
	pop {r4, pc}
	nop
_021D4434: .word 0x021D5334
	thumb_func_end ov100_021D4414

	thumb_func_start ov100_021D4438
ov100_021D4438: ; 0x021D4438
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D4456
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x24
	mov r3, #0x20
	bl ov100_021D4264
	b _021D44AA
_021D4456:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D44AA
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _021D44AA
	add r1, sp, #4
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	mov r0, #1
	str r0, [sp]
	add r3, sp, #4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, _021D44B4 ; =0x40400000
	add r0, r4, #0
	bl ov100_021D4104
	ldr r0, [r4, #0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0200D788
	ldr r0, [sp, #0xc]
	ldr r1, _021D44B8 ; =0x3DCCCCCD
	bl sub_020E1108
	bls _021D44A0
	ldr r0, [sp, #0xc]
	ldr r1, _021D44BC ; =0x3B03126F
	bl sub_020E1A9C
	str r0, [sp, #0xc]
_021D44A0:
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl sub_0200D6E8
_021D44AA:
	ldr r0, [r4, #0]
	bl sub_0200D33C
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D44B4: .word 0x40400000
_021D44B8: .word 0x3DCCCCCD
_021D44BC: .word 0x3B03126F
	thumb_func_end ov100_021D4438

	.rodata


	.global Unk_ov100_021D5334
Unk_ov100_021D5334: ; 0x021D5334
	.incbin "incbin/overlay100_rodata.bin", 0x260, 0x10


	.data


	.global Unk_ov100_021D550C
Unk_ov100_021D550C: ; 0x021D550C
	.incbin "incbin/overlay100_data.bin", 0x6C, 0x28

