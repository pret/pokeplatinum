	.include "macros/function.inc"
	.include "include/ov6_02247A0C.inc"

	

	.text


	thumb_func_start ov6_02247A0C
ov6_02247A0C: ; 0x02247A0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xb
	mov r1, #8
	bl sub_02018184
	mov r1, #0
	mov r2, #8
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r1, _02247A30 ; =ov6_02247A34
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, pc}
	nop
_02247A30: .word ov6_02247A34
	thumb_func_end ov6_02247A0C

	thumb_func_start ov6_02247A34
ov6_02247A34: ; 0x02247A34
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _02247A56
	cmp r1, #1
	beq _02247A66
	cmp r1, #2
	beq _02247A7E
	b _02247A86
_02247A56:
	add r0, r5, #0
	bl ov6_02247A90
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02247A86
_02247A66:
	ldr r0, _02247A8C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02247A86
	ldr r0, [r4, #0]
	bl ov6_02247CC8
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _02247A86
_02247A7E:
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_02247A86:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02247A8C: .word 0x021BF67C
	thumb_func_end ov6_02247A34

	thumb_func_start ov6_02247A90
ov6_02247A90: ; 0x02247A90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl sub_0203D170
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0203D174
	str r0, [sp, #0x1c]
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018144
	mov r1, #0
	mov r2, #0x18
	add r4, r0, #0
	bl sub_020C4CF4
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xd0
	mov r3, #0xb
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #0xb
	bl sub_0200B358
	str r0, [r4, #0x14]
	mov r2, #3
	str r2, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0x11
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xb
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #1
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r3, #0xb
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	str r3, [sp, #4]
	bl sub_0200DAA4
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x64
	mov r1, #0xb
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r4, #0x14]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200C388
	add r0, r6, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0x78
	bl ov6_02247CF4
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_020237BC
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_0200B1EC
	mov r1, #0
	mov r2, #1
	mov r3, #0x78
	add r5, r0, #0
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r4, #0
	add r2, r5, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r5, #0
	bl sub_020237BC
	mov r0, #0
	ldr r5, _02247CBC ; =0x022496F4
	str r0, [sp, #0x24]
_02247B9A:
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0]
	bl sub_0200B1EC
	mov r3, #4
	mov r1, #0
	ldrsh r3, [r5, r3]
	add r2, r1, #0
	add r7, r0, #0
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _02247B9A
	mov r0, #0
	ldr r5, _02247CC0 ; =0x022496D4
	str r0, [sp, #0x14]
_02247BE2:
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0]
	bl sub_0200B1EC
	mov r3, #4
	ldrsh r3, [r5, r3]
	mov r1, #0
	mov r2, #2
	add r7, r0, #0
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x14]
	add r5, #8
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02247BE2
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, _02247CC4 ; =0x0224971C
	str r0, [sp, #0x18]
_02247C2C:
	ldr r5, [sp, #0x18]
	mov r7, #0
_02247C30:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	add r2, r7, #0
	bl sub_0202F160
	str r0, [sp, #0x28]
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0]
	bl sub_0200B1EC
	str r0, [sp, #0x2c]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x28]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	ldr r0, [r4, #0x14]
	ldr r2, [sp, #0x2c]
	add r1, r6, #0
	bl sub_0200C388
	mov r3, #4
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	mov r1, #0
	mov r2, #2
	bl ov6_02247CF4
	add r3, r0, #0
	mov r0, #6
	ldrsh r0, [r5, r0]
	mov r1, #0
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	bl sub_0201D738
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add r7, r7, #1
	add r5, #8
	cmp r7, #4
	blt _02247C30
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _02247C2C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A954
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247CBC: .word 0x022496F4
_02247CC0: .word 0x022496D4
_02247CC4: .word 0x0224971C
	thumb_func_end ov6_02247A90

	thumb_func_start ov6_02247CC8
ov6_02247CC8: ; 0x02247CC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	bl sub_0201ACF4
	add r0, r4, #0
	bl sub_0201A8FC
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0x14]
	bl sub_0200B3F0
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov6_02247CC8

	thumb_func_start ov6_02247CF4
ov6_02247CF4: ; 0x02247CF4
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r4, r3, #0
	cmp r5, #0
	bne _02247D04
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02247D04:
	add r0, r1, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_02002D7C
	cmp r5, #1
	beq _02247D18
	cmp r5, #2
	beq _02247D22
	b _02247D26
_02247D18:
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r0, r1, #1
	sub r0, r4, r0
	pop {r4, r5, r6, pc}
_02247D22:
	sub r0, r4, r0
	pop {r4, r5, r6, pc}
_02247D26:
	bl sub_02022974
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov6_02247CF4

	.rodata


	.global Unk_ov6_022496D4
Unk_ov6_022496D4: ; 0x022496D4
	.incbin "incbin/overlay6_rodata.bin", 0x8C0, 0x8E0 - 0x8C0

	.global Unk_ov6_022496F4
Unk_ov6_022496F4: ; 0x022496F4
	.incbin "incbin/overlay6_rodata.bin", 0x8E0, 0x908 - 0x8E0

	.global Unk_ov6_0224971C
Unk_ov6_0224971C: ; 0x0224971C
	.incbin "incbin/overlay6_rodata.bin", 0x908, 0xA0

