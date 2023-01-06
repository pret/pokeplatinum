	.include "macros/function.inc"
	.include "overlay017/ov17_02250744.inc"

	

	.text


	thumb_func_start ov17_02250744
ov17_02250744: ; 0x02250744
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r7, r5, #0
	mov r4, #0
	add r7, #0xd8
	b _022507B6
_02250752:
	mov r0, #0xf3
	add r1, r5, r4
	lsl r0, r0, #2
	ldrb r6, [r1, r0]
	lsl r0, r6, #4
	add r0, r5, r0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225076A
	bl GF_AssertFail
_0225076A:
	mov r1, #0x32
	mov r0, #0x18
	lsl r1, r1, #6
	bl sub_02018144
	lsl r2, r6, #4
	add r1, r5, r2
	add r1, #0xd8
	str r0, [r1, #0]
	add r0, r7, r2
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #6
	ldr r1, _022507C0 ; =0x02254BF4
	mul r0, r4
	ldrsh r1, [r1, r0]
	lsl r2, r6, #2
	str r1, [sp, #8]
	ldr r1, _022507C0 ; =0x02254BF4
	add r0, r1, r0
	mov r1, #2
	ldrsh r1, [r0, r1]
	str r1, [sp, #0xc]
	mov r1, #4
	ldrsh r0, [r0, r1]
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r3, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r2, [r3, r2]
	mov r3, #2
	bl sub_02095484
	lsl r1, r6, #2
	add r1, r5, r1
	str r0, [r1, #0x18]
	add r4, r4, #1
_022507B6:
	cmp r4, #4
	blt _02250752
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022507C0: .word Unk_ov17_02254BF4
	thumb_func_end ov17_02250744

	thumb_func_start ov17_022507C4
ov17_022507C4: ; 0x022507C4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_022507CE:
	ldr r0, [r5, #8]
	bl sub_02007DC8
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xc8
	add r6, r6, #1
	str r7, [r0, #0]
	add r5, r5, #4
	add r4, #0x10
	cmp r6, #4
	blt _022507CE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_022507C4

	thumb_func_start ov17_022507F0
ov17_022507F0: ; 0x022507F0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r6, #0
	beq _02250806
	cmp r5, #0
	bne _02250806
	bl GF_AssertFail
_02250806:
	cmp r6, #3
	bhi _022508DC
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02250816: ; jump table
	.short _022508E0 - _02250816 - 2 ; case 0
	.short _0225081E - _02250816 - 2 ; case 1
	.short _02250842 - _02250816 - 2 ; case 2
	.short _02250886 - _02250816 - 2 ; case 3
_0225081E:
	mov r2, #0x12
	lsl r2, r2, #4
	ldr r3, [r4, #0]
	add r1, r2, #1
	ldrb r0, [r3, r2]
	add r2, #0x51
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl sub_02095848
	add r4, #0xc8
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0200BBA8
	add sp, #8
	pop {r4, r5, r6, pc}
_02250842:
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r0, #1
	lsl r2, r6, #2
	str r0, [sp]
	mov r0, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #2
	add r0, #0xc8
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0xc8
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_02250886:
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	str r3, [sp, #4]
	add r0, r4, #0
	add r0, #0xc8
	ldrb r2, [r5, #4]
	ldr r0, [r0, #0]
	bl sub_0200B60C
	ldrb r6, [r5]
	ldr r3, [r4, #0]
	mov r1, #1
	lsl r2, r6, #2
	add r2, r3, r2
	add r6, r3, r6
	mov r3, #0x42
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	lsl r3, r3, #2
	add r0, #0xc8
	add r2, #0xe8
	ldrb r3, [r6, r3]
	ldr r0, [r0, #0]
	ldr r2, [r2, #0]
	bl sub_0200B48C
	ldrb r0, [r5]
	ldr r1, [r4, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_02076B10
	add r4, #0xc8
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0200B5CC
	add sp, #8
	pop {r4, r5, r6, pc}
_022508DC:
	bl GF_AssertFail
_022508E0:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov17_022507F0

	thumb_func_start ov17_022508E4
ov17_022508E4: ; 0x022508E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r0, _02250960 ; =0x00000171
	add r7, r2, #0
	ldrb r0, [r1, r0]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02250906
	ldr r0, _02250964 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027AC0
	add r4, r0, #0
	b _02250908
_02250906:
	mov r4, #1
_02250908:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ov17_022507F0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xc8
	add r1, #0xcc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	add r2, r5, #0
	add r0, r5, #0
	str r3, [sp, #8]
	add r2, #0xcc
	ldr r2, [r2, #0]
	add r0, #0x34
	mov r1, #1
	bl sub_0201D738
	mov r1, #0xe6
	lsl r1, r1, #2
	strb r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250960: .word 0x00000171
_02250964: .word 0x00001988
	thumb_func_end ov17_022508E4

	thumb_func_start ov17_02250968
ov17_02250968: ; 0x02250968
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #7
	blo _0225097A
	bl GF_AssertFail
_0225097A:
	lsl r3, r4, #2
	ldr r2, _02250994 ; =0x02254C0C
	add r0, r5, #0
	ldr r4, _02250998 ; =0x02254C0E
	ldrh r2, [r2, r3]
	str r6, [sp]
	add r5, #0xc4
	ldrb r3, [r4, r3]
	ldr r1, [r5, #0]
	bl ov17_022508E4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02250994: .word Unk_ov17_02254C0C
_02250998: .word 0x02254C0E
	thumb_func_end ov17_02250968

	thumb_func_start ov17_0225099C
ov17_0225099C: ; 0x0225099C
	mov r1, #0xe6
	lsl r1, r1, #2
	ldr r3, _022509A8 ; =sub_0201D724
	ldrb r0, [r0, r1]
	bx r3
	nop
_022509A8: .word sub_0201D724
	thumb_func_end ov17_0225099C

	thumb_func_start ov17_022509AC
ov17_022509AC: ; 0x022509AC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x2d
	mov r1, #0x18
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x18
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x30]
	mov r1, #0x17
	mov r3, #3
	add r4, r0, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x30]
	add r0, r4, #0
	mov r1, #0x16
	mov r3, #3
	bl sub_0200710C
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x23
	mov r3, #0x18
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x24
	mov r3, #0x18
	bl sub_02003050
	ldr r1, [r5, #0]
	ldr r0, _02250A80 ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027B50
	add r6, r0, #0
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #0x30]
	add r2, r1, #0
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x26
	mov r3, #0x18
	bl sub_02003050
	ldr r0, [r5, #0x30]
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02250A80: .word 0x00001988
	thumb_func_end ov17_022509AC

	thumb_func_start ov17_02250A84
ov17_02250A84: ; 0x02250A84
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02250A84

	thumb_func_start ov17_02250A88
ov17_02250A88: ; 0x02250A88
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _02250AD0 ; =0x000080EA
	add r2, r4, #0
	str r0, [sp]
	sub r3, r0, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r2, #0xd0
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x2c]
	ldr r2, [r2, #0]
	bl ov17_0223F560
	ldr r0, _02250AD0 ; =0x000080EA
	mov r1, #0xc8
	str r0, [sp]
	sub r3, r0, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	ldr r0, _02250AD4 ; =0x0000C350
	add r1, #0x50
	str r0, [sp, #0x18]
	add r0, r4, r1
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #0x2c]
	bl ov17_0223F630
	add sp, #0x1c
	pop {r3, r4, pc}
	; .align 2, 0
_02250AD0: .word 0x000080EA
_02250AD4: .word 0x0000C350
	thumb_func_end ov17_02250A88

	thumb_func_start ov17_02250AD8
ov17_02250AD8: ; 0x02250AD8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov17_0223F6C4
	ldr r1, _02250AFC ; =0x000080E9
	str r1, [sp]
	ldr r0, [r4, #0x2c]
	add r2, r1, #1
	add r3, r1, #0
	bl ov17_0223F5E8
	add sp, #4
	pop {r3, r4, pc}
	nop
_02250AFC: .word 0x000080E9
	thumb_func_end ov17_02250AD8

	thumb_func_start ov17_02250B00
ov17_02250B00: ; 0x02250B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0x2d
	mov r1, #0x18
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x18
	str r1, [sp, #0xc]
	ldr r2, [r6, #0x30]
	mov r1, #0x1b
	mov r3, #3
	str r0, [sp, #0x14]
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r6, #0x30]
	mov r1, #0x19
	mov r3, #3
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r6, #0x30]
	mov r1, #0x1a
	mov r3, #2
	bl sub_0200710C
	ldr r0, [r6, #0x30]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x27
	mov r3, #0x18
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xd0
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x2d
	mov r2, #0x24
	mov r3, #0x18
	bl sub_02003050
	ldr r1, [r6, #0]
	ldr r0, _02250CDC ; =0x00001988
	ldr r0, [r1, r0]
	bl sub_02027B50
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r6, #0x30]
	add r2, r1, #0
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x26
	mov r3, #0x18
	bl sub_02003050
	mov r0, #0xc
	mov r1, #0x18
	bl sub_02023790
	add r4, r6, #0
	add r7, r0, #0
	mov r5, #0
	add r4, #0x34
_02250BEC:
	mov r0, #0xf3
	add r1, r6, r5
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldr r1, [r6, #0x10]
	add r2, r7, #0
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r1, r0]
	mov r1, #0x77
	bl sub_02074470
	add r0, r5, #1
	lsl r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #5
	lsl r0, r0, #4
	str r0, [sp, #0x1c]
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02250CE0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201D78C
	mov r0, #3
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _02250CE0 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r6, #0]
	ldr r0, [sp, #0x1c]
	add r2, r3, r2
	add r2, #0xe8
	mov r1, #0
	ldr r2, [r2, #0]
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201D78C
	add r5, r5, #1
	cmp r5, #4
	blt _02250BEC
	add r0, r7, #0
	bl sub_020237BC
	mov r3, #1
	lsl r3, r3, #0x1a
	add r2, r3, #0
	ldr r1, [r3, #0]
	ldr r0, _02250CE4 ; =0xFFFF1FFF
	add r2, #0x48
	and r1, r0
	mov r0, #6
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r3, #0]
	ldrh r1, [r2]
	mov r0, #0x3f
	mov r4, #0x1f
	bic r1, r0
	add r5, r1, #0
	orr r5, r4
	mov r1, #0x20
	orr r5, r1
	strh r5, [r2]
	ldrh r6, [r2]
	ldr r5, _02250CE8 ; =0xFFFFC0FF
	lsl r4, r4, #8
	and r5, r6
	orr r5, r4
	lsl r4, r1, #8
	orr r4, r5
	strh r4, [r2]
	add r2, r3, #0
	add r2, #0x4a
	ldrh r4, [r2]
	bic r4, r0
	mov r0, #0x1b
	orr r0, r4
	orr r0, r1
	strh r0, [r2]
	add r0, r3, #0
	mov r2, #0xff
	add r0, #0x40
	strh r2, [r0]
	add r0, r3, #0
	mov r1, #0
	add r0, #0x44
	strh r1, [r0]
	add r0, r3, #0
	add r0, #0x42
	strh r2, [r0]
	add r3, #0x46
	ldr r0, [sp, #0x14]
	strh r1, [r3]
	bl sub_02006CA8
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250CDC: .word 0x00001988
_02250CE0: .word 0x00010200
_02250CE4: .word 0xFFFF1FFF
_02250CE8: .word 0xFFFFC0FF
	thumb_func_end ov17_02250B00

	thumb_func_start ov17_02250CEC
ov17_02250CEC: ; 0x02250CEC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r3, #0
	mov r0, #1
	str r3, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #2
	bl sub_020038B0
	mov r3, #0
	mov r0, #1
	str r3, [sp]
	lsl r0, r0, #8
	add r4, #0xd0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #2
	bl sub_020038B0
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov17_02250CEC

	thumb_func_start ov17_02250D24
ov17_02250D24: ; 0x02250D24
	bx lr
	; .align 2, 0
	thumb_func_end ov17_02250D24

	thumb_func_start ov17_02250D28
ov17_02250D28: ; 0x02250D28
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x2e
	mov r1, #0x18
	bl sub_02006C24
	add r4, r0, #0
	str r4, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #4
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02250D88 ; =0x000080E9
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl sub_0200CDC4
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02250F68
	add r0, r5, #0
	bl ov17_02250DB0
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_0225122C
	add r0, r5, #0
	add r1, r4, #0
	bl ov17_02251344
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_02250D88: .word 0x000080E9
	thumb_func_end ov17_02250D28

	thumb_func_start ov17_02250D8C
ov17_02250D8C: ; 0x02250D8C
	push {r4, lr}
	add r4, r0, #0
	bl ov17_02250EFC
	add r0, r4, #0
	bl ov17_022512E0
	add r0, r4, #0
	bl ov17_02251544
	add r0, r4, #0
	bl ov17_02250FBC
	add r0, r4, #0
	bl ov17_022513C0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov17_02250D8C

	thumb_func_start ov17_02250DB0
ov17_02250DB0: ; 0x02250DB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r5, r0, #0
	mov r0, #0x13
	mov r1, #0x18
	bl sub_02006C24
	str r0, [sp, #0x18]
	bl sub_02079FD0
	ldr r1, [sp, #0x18]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02250EE4 ; =0x000080EB
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl sub_0200CDC4
	bl sub_02079FDC
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02250EE8 ; =0x000080EA
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200CE24
	bl sub_02079FE8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02250EE8 ; =0x000080EA
	ldr r2, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200CE54
	ldr r4, _02250EEC ; =0x02254C5C
	add r3, sp, #0x1c
	mov r2, #6
_02250E20:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02250E20
	ldr r0, [r4, #0]
	mov r7, #0
	str r0, [r3, #0]
	add r6, r7, #0
	add r4, r5, #0
_02250E32:
	ldr r0, [r5, #0]
	ldr r0, [r0, r6]
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02250EE8 ; =0x000080EA
	mov r2, #0x13
	add r0, r7, r0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200D888
	ldr r0, _02250EE8 ; =0x000080EA
	add r2, sp, #0x1c
	add r0, r7, r0
	str r0, [sp, #0x30]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	bl sub_0200CE6C
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	ldr r0, [r5, #0]
	ldr r0, [r0, r6]
	bl sub_02079FC4
	add r1, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	bl sub_02021F24
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D330
	add r7, r7, #1
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #4
	blt _02250E32
	ldr r4, _02250EF0 ; =0x02254BD4
	mov r6, #0
	mov r7, #2
_02250EA4:
	mov r0, #0xf3
	add r1, r5, r6
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldrsh r2, [r4, r7]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r4, r1]
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _02250EA4
	ldr r0, _02250EF4 ; =ov17_02250F4C
	ldr r2, _02250EF8 ; =0x0000C738
	add r1, r5, #0
	bl sub_0200D9E8
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #0x18]
	bl sub_02006CA8
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02250EE4: .word 0x000080EB
_02250EE8: .word 0x000080EA
_02250EEC: .word Unk_ov17_02254C5C
_02250EF0: .word Unk_ov17_02254BD4
_02250EF4: .word ov17_02250F4C
_02250EF8: .word 0x0000C738
	thumb_func_end ov17_02250DB0

	thumb_func_start ov17_02250EFC
ov17_02250EFC: ; 0x02250EFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F44 ; =0x000080EA
	bl sub_0200D090
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F44 ; =0x000080EA
	bl sub_0200D0A0
	ldr r0, [r6, #0x2c]
	ldr r1, _02250F48 ; =0x000080EB
	bl sub_0200D080
	mov r7, #0x4e
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02250F20:
	ldr r1, _02250F44 ; =0x000080EA
	ldr r0, [r6, #0x2c]
	add r1, r4, r1
	bl sub_0200D070
	ldr r0, [r5, r7]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02250F20
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02250F44: .word 0x000080EA
_02250F48: .word 0x000080EB
	thumb_func_end ov17_02250EFC

	thumb_func_start ov17_02250F4C
ov17_02250F4C: ; 0x02250F4C
	push {r4, r5, r6, lr}
	mov r6, #0x4e
	add r5, r1, #0
	mov r4, #0
	lsl r6, r6, #2
_02250F56:
	ldr r0, [r5, r6]
	bl sub_0200D330
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02250F56
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov17_02250F4C

	thumb_func_start ov17_02250F68
ov17_02250F68: ; 0x02250F68
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02250FB4 ; =0x000080EF
	add r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	mov r3, #0x66
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02250FB8 ; =0x000080EC
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x65
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02250FB8 ; =0x000080EC
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x64
	bl sub_0200CE54
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02250FB4: .word 0x000080EF
_02250FB8: .word 0x000080EC
	thumb_func_end ov17_02250F68

	thumb_func_start ov17_02250FBC
ov17_02250FBC: ; 0x02250FBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FDC ; =0x000080EF
	bl sub_0200D070
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FE0 ; =0x000080EC
	bl sub_0200D090
	ldr r0, [r4, #0x2c]
	ldr r1, _02250FE0 ; =0x000080EC
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_02250FDC: .word 0x000080EF
_02250FE0: .word 0x000080EC
	thumb_func_end ov17_02250FBC

	thumb_func_start ov17_02250FE4
ov17_02250FE4: ; 0x02250FE4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x18
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #8
	add r6, r0, #0
	bl MI_CpuFill8
	str r5, [r6, #0]
	mov r4, #0
_02250FFE:
	add r0, r5, #0
	bl ov17_02251070
	add r4, r4, #1
	cmp r4, #8
	blt _02250FFE
	ldr r0, _02251018 ; =ov17_0225102C
	ldr r2, _0225101C ; =0x0000C35A
	add r1, r6, #0
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_02251018: .word ov17_0225102C
_0225101C: .word 0x0000C35A
	thumb_func_end ov17_02250FE4

	thumb_func_start ov17_02251020
ov17_02251020: ; 0x02251020
	ldr r1, _02251028 ; =0x0000127D
	mov r2, #1
	strb r2, [r0, r1]
	bx lr
	; .align 2, 0
_02251028: .word 0x0000127D
	thumb_func_end ov17_02251020

	thumb_func_start ov17_0225102C
ov17_0225102C: ; 0x0225102C
	push {r4, lr}
	add r4, r0, #0
	ldr r3, [r1, #0]
	ldr r0, _0225106C ; =0x0000127D
	ldrb r2, [r3, r0]
	cmp r2, #1
	bne _02251048
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
_02251048:
	add r0, r0, #1
	ldrb r0, [r3, r0]
	cmp r0, #0x30
	bhs _02251068
	mov r0, #4
	ldrsh r2, [r1, r0]
	add r2, r2, #1
	strh r2, [r1, #4]
	ldrsh r0, [r1, r0]
	cmp r0, #4
	ble _02251068
	mov r0, #0
	strh r0, [r1, #4]
	ldr r0, [r1, #0]
	bl ov17_02251070
_02251068:
	pop {r4, pc}
	nop
_0225106C: .word 0x0000127D
	thumb_func_end ov17_0225102C

	thumb_func_start ov17_02251070
ov17_02251070: ; 0x02251070
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x18
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x20
	bl MI_CpuFill8
	str r5, [r4, #0]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _02251130 ; =0x02254C28
	bl sub_0200CE6C
	str r0, [r4, #4]
	ldr r0, [r5, #0]
	bl sub_02094E98
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r0, [r5, #0]
	add r6, #0x14
	bl sub_02094E98
	mov r1, #0x30
	bl _s32_div_f
	add r2, r1, #0
	lsl r0, r6, #8
	lsl r1, r6, #0x10
	sub r2, #0x10
	str r0, [r4, #8]
	lsl r0, r2, #8
	str r0, [r4, #0xc]
	lsl r2, r2, #0x10
	ldr r0, [r4, #4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r5, #0]
	bl sub_02094E98
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x17
	sub r1, r1, r2
	mov r0, #0x17
	ror r1, r0
	add r0, r2, r1
	add r0, #0x60
	str r0, [r4, #0x14]
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #3
	lsl r1, r1, #8
	bl _s32_div_f
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [r4, #0x18]
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #0x18
	bl _s32_div_f
	add r1, #0x10
	strh r1, [r4, #0x12]
	ldr r0, [r5, #0]
	bl sub_02094E98
	mov r1, #9
	bl _s32_div_f
	ldr r0, [r4, #4]
	bl sub_0200D364
	ldr r0, [r4, #4]
	bl sub_0200D330
	ldr r0, _02251134 ; =ov17_02251140
	ldr r2, _02251138 ; =0x0000C35B
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r0, _0225113C ; =0x0000127E
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_02251130: .word Unk_ov17_02254C28
_02251134: .word ov17_02251140
_02251138: .word 0x0000C35B
_0225113C: .word 0x0000127E
	thumb_func_end ov17_02251070

	thumb_func_start ov17_02251140
ov17_02251140: ; 0x02251140
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _02251224 ; =0x0000127D
	ldrb r1, [r0, r1]
	cmp r1, #1
	beq _02251174
	ldr r2, [r4, #0xc]
	asr r1, r2, #7
	lsr r1, r1, #0x18
	add r1, r2, r1
	asr r1, r1, #8
	cmp r1, #0xd0
	bgt _02251174
	mov r2, #0x10
	ldrsh r1, [r4, r2]
	ldr r3, [r4, #8]
	sub r2, #0x20
	add r3, r3, r1
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	asr r1, r1, #8
	cmp r1, r2
	bge _02251190
_02251174:
	ldr r1, _02251228 ; =0x0000127E
	ldrb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, r1]
	ldr r0, [r4, #4]
	bl sub_0200D0F4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
_02251190:
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	add r2, r2, r1
	mov r1, #0x5a
	lsl r1, r1, #0xa
	add r0, #0x1c
	str r2, [r4, #0x1c]
	cmp r2, r1
	blt _022511AA
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
_022511AA:
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x1c]
	lsl r5, r0, #0xc
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	lsl r0, r0, #8
	lsr r0, r0, #0x10
	bl sub_0201D15C
	asr r1, r0, #0x1f
	asr r3, r5, #0x1f
	add r2, r5, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x14]
	sub r0, r1, r0
	str r0, [r4, #8]
	mov r0, #0xa
	ldr r1, [r4, #0xc]
	lsl r0, r0, #6
	add r2, r1, r0
	str r2, [r4, #0xc]
	ldr r3, [r4, #8]
	ldr r0, [r4, #4]
	asr r1, r3, #7
	lsr r1, r1, #0x18
	add r1, r3, r1
	asr r3, r1, #8
	mov r1, #0x10
	ldrsh r1, [r4, r1]
	add r1, r3, r1
	asr r3, r2, #7
	lsr r3, r3, #0x18
	add r3, r2, r3
	lsl r1, r1, #0x10
	lsl r2, r3, #8
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	ldr r0, [r4, #4]
	bl sub_0200D330
	pop {r3, r4, r5, pc}
	nop
_02251224: .word 0x0000127D
_02251228: .word 0x0000127E
	thumb_func_end ov17_02251140

	thumb_func_start ov17_0225122C
ov17_0225122C: ; 0x0225122C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022512D0 ; =0x000080EE
	add r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	add r2, r4, #0
	mov r3, #0x54
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022512D4 ; =0x000080EB
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x53
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022512D4 ; =0x000080EB
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x52
	bl sub_0200CE54
	mov r7, #0x52
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_0225127A:
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	ldr r2, _022512D8 ; =0x02254C90
	bl sub_0200CE6C
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	bl sub_0200D330
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_0200D3F4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0225127A
	ldr r4, _022512DC ; =0x02254BE4
	mov r6, #0
	mov r7, #2
_022512A8:
	mov r0, #0xf3
	add r1, r5, r6
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	ldrsh r2, [r4, r7]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	ldrsh r1, [r4, r1]
	bl sub_0200D4C4
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _022512A8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022512D0: .word 0x000080EE
_022512D4: .word 0x000080EB
_022512D8: .word Unk_ov17_02254C90
_022512DC: .word Unk_ov17_02254BE4
	thumb_func_end ov17_0225122C

	thumb_func_start ov17_022512E0
ov17_022512E0: ; 0x022512E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r1, _02251314 ; =0x000080EE
	bl sub_0200D070
	ldr r0, [r5, #0x2c]
	ldr r1, _02251318 ; =0x000080EB
	bl sub_0200D090
	ldr r0, [r5, #0x2c]
	ldr r1, _02251318 ; =0x000080EB
	bl sub_0200D0A0
	mov r6, #0x52
	mov r4, #0
	lsl r6, r6, #2
_02251302:
	ldr r0, [r5, r6]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02251302
	pop {r4, r5, r6, pc}
	nop
_02251314: .word 0x000080EE
_02251318: .word 0x000080EB
	thumb_func_end ov17_022512E0

	thumb_func_start ov17_0225131C
ov17_0225131C: ; 0x0225131C
	push {r3, r4, r5, lr}
	mov r3, #0x52
	lsl r3, r3, #2
	lsl r4, r1, #2
	add r5, r0, r3
	ldr r0, [r5, r4]
	add r1, r2, #0
	bl sub_0200D364
	ldr r0, [r5, r4]
	mov r1, #1
	bl sub_0200D3F4
	ldr r0, _02251340 ; =0x000005DD
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02251340: .word 0x000005DD
	thumb_func_end ov17_0225131C

	thumb_func_start ov17_02251344
ov17_02251344: ; 0x02251344
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022513B4 ; =0x000080EC
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x28]
	ldr r3, [r5, #0x2c]
	bl sub_0200CDC4
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _022513B8 ; =0x000080F0
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x57
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _022513BC ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x56
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _022513BC ; =0x000080ED
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x28]
	ldr r1, [r5, #0x2c]
	mov r3, #0x55
	bl sub_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022513B4: .word 0x000080EC
_022513B8: .word 0x000080F0
_022513BC: .word 0x000080ED
	thumb_func_end ov17_02251344

	thumb_func_start ov17_022513C0
ov17_022513C0: ; 0x022513C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r1, _022513E8 ; =0x000080EC
	bl sub_0200D080
	ldr r0, [r4, #0x2c]
	ldr r1, _022513EC ; =0x000080F0
	bl sub_0200D070
	ldr r0, [r4, #0x2c]
	ldr r1, _022513F0 ; =0x000080ED
	bl sub_0200D090
	ldr r0, [r4, #0x2c]
	ldr r1, _022513F0 ; =0x000080ED
	bl sub_0200D0A0
	pop {r4, pc}
	nop
_022513E8: .word 0x000080EC
_022513EC: .word 0x000080F0
_022513F0: .word 0x000080ED
	thumb_func_end ov17_022513C0

	thumb_func_start ov17_022513F4
ov17_022513F4: ; 0x022513F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r3, [sp]
	cmp r2, #0
	beq _0225140A
	cmp r2, #1
	beq _0225141E
	cmp r2, #2
	beq _02251438
	b _02251458
_0225140A:
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x56
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x30
	mul r0, r1
	mov r6, #0
	add r4, r2, r0
	b _02251460
_0225141E:
	lsl r0, r1, #1
	add r2, r7, r0
	ldr r0, _0225153C ; =0x0000041E
	ldrsh r6, [r2, r0]
	mov r0, #0x11
	str r0, [sp, #0x14]
	mov r0, #0x86
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x30
	mul r0, r1
	add r4, r2, r0
	b _02251460
_02251438:
	lsl r0, r1, #1
	add r3, r7, r0
	ldr r0, _0225153C ; =0x0000041E
	ldrsh r2, [r3, r0]
	add r0, #8
	ldrsh r0, [r3, r0]
	add r6, r2, r0
	mov r0, #0x21
	str r0, [sp, #0x14]
	mov r0, #0xb6
	lsl r0, r0, #2
	add r2, r7, r0
	mov r0, #0x30
	mul r0, r1
	add r4, r2, r0
	b _02251460
_02251458:
	bl GF_AssertFail
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02251460:
	ldr r0, [sp, #0x30]
	add r6, #0x30
	lsl r0, r0, #5
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp]
	asr r0, r0, #3
	lsr r1, r0, #0x1c
	ldr r0, [sp]
	add r1, r0, r1
	asr r0, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [sp]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	beq _02251490
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
_02251490:
	ldr r0, [sp, #0xc]
	cmp r0, #0xc
	ble _0225149A
	bl GF_AssertFail
_0225149A:
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022514C6
	add r5, r4, #0
_022514A6:
	ldr r0, [r5, #0]
	cmp r0, #0
	bne _022514B8
	ldr r0, [r7, #0x28]
	ldr r1, [r7, #0x2c]
	ldr r2, _02251540 ; =0x02254CC4
	bl sub_0200CE6C
	str r0, [r5, #0]
_022514B8:
	ldr r0, [sp, #8]
	add r5, r5, #4
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _022514A6
_022514C6:
	ldr r0, [sp]
	mov r7, #0
	cmp r0, #0x10
	blt _022514EE
	ldr r0, [sp, #0x14]
	add r5, r4, #0
	str r0, [sp, #4]
	add r0, #0xf
	str r0, [sp, #4]
_022514D8:
	ldr r0, [r5, #0]
	ldr r1, [sp, #4]
	bl sub_0200D364
	ldr r0, [sp]
	add r5, r5, #4
	sub r0, #0x10
	add r7, r7, #1
	str r0, [sp]
	cmp r0, #0x10
	bge _022514D8
_022514EE:
	ldr r0, [sp]
	cmp r0, #0
	ble _0225150A
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge _0225150A
	ldr r2, [sp, #0x14]
	ldr r1, [sp]
	lsl r0, r7, #2
	add r1, r2, r1
	ldr r0, [r4, r0]
	sub r1, r1, #1
	bl sub_0200D364
_0225150A:
	ldr r0, [sp, #0xc]
	mov r5, #0
	cmp r0, #0
	ble _02251536
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_02251518:
	lsl r1, r6, #0x10
	ldr r0, [r4, #0]
	asr r1, r1, #0x10
	add r2, r7, #0
	bl sub_0200D4C4
	ldr r0, [r4, #0]
	bl sub_0200D330
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r6, #0x10
	add r4, r4, #4
	cmp r5, r0
	blt _02251518
_02251536:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225153C: .word 0x0000041E
_02251540: .word Unk_ov17_02254CC4
	thumb_func_end ov17_022513F4

	thumb_func_start ov17_02251544
ov17_02251544: ; 0x02251544
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0x86
	lsl r7, r7, #2
	str r0, [sp]
	mov r0, #0
	add r6, r7, #0
	str r0, [sp, #4]
	sub r6, #0xc0
_02251556:
	ldr r5, [sp]
	mov r4, #0
_0225155A:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _02251564
	bl sub_0200D0F4
_02251564:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0225156E
	bl sub_0200D0F4
_0225156E:
	mov r0, #0xb6
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0225157C
	bl sub_0200D0F4
_0225157C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xc
	blt _0225155A
	ldr r0, [sp]
	add r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02251556
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov17_02251544

	thumb_func_start ov17_02251598
ov17_02251598: ; 0x02251598
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0
	strb r0, [r7]
	mov r0, #0x18
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	str r5, [r4, #0]
	str r7, [r4, #4]
	cmp r6, #0
	ldr r2, _022515E8 ; =0x0000A028
	bne _022515D2
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r0, _022515EC ; =ov17_022515F4
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_022515D2:
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	mov r0, #9
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _022515F0 ; =ov17_02251688
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022515E8: .word 0x0000A028
_022515EC: .word ov17_022515F4
_022515F0: .word ov17_02251688
	thumb_func_end ov17_02251598

	thumb_func_start ov17_022515F4
ov17_022515F4: ; 0x022515F4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _0225166E
	mov r0, #1
	ldr r2, [r1, #8]
	lsl r0, r0, #0xa
	sub r2, r2, r0
	str r2, [r1, #8]
	ldr r2, [r1, #0xc]
	add r0, r2, r0
	str r0, [r1, #0xc]
	mov r0, #3
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	cmp r2, r0
	bgt _02251626
	str r0, [r1, #8]
	mov r0, #9
	lsl r0, r0, #0xc
	str r0, [r1, #0xc]
	ldrb r0, [r1, #0x10]
	add r0, r0, #1
	strb r0, [r1, #0x10]
_02251626:
	ldr r3, [r1, #0]
	ldr r2, _02251684 ; =0x00000851
	mov r0, #0
	strb r0, [r3, r2]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #1
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #0xff
	add r3, r2, #2
	strb r5, [r4, r3]
	ldr r3, [r1, #0xc]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #3
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #1
	add r3, r2, #4
	strb r5, [r4, r3]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #5
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	add r3, r2, #6
	strb r0, [r4, r3]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0]
	asr r3, r0, #8
	add r0, r2, #7
	strb r3, [r1, r0]
	pop {r3, r4, r5, pc}
_0225166E:
	ldr r0, [r1, #4]
	mov r2, #1
	strb r2, [r0]
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02251684: .word 0x00000851
	thumb_func_end ov17_022515F4

	thumb_func_start ov17_02251688
ov17_02251688: ; 0x02251688
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r0, [r1, #0x10]
	cmp r0, #0
	bne _022516FE
	mov r0, #1
	ldr r2, [r1, #8]
	lsl r0, r0, #0xa
	add r2, r2, r0
	str r2, [r1, #8]
	ldr r2, [r1, #0xc]
	sub r0, r2, r0
	str r0, [r1, #0xc]
	mov r0, #6
	ldr r2, [r1, #8]
	lsl r0, r0, #0xc
	cmp r2, r0
	blt _022516B6
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	ldrb r0, [r1, #0x10]
	add r0, r0, #1
	strb r0, [r1, #0x10]
_022516B6:
	ldr r3, [r1, #0]
	ldr r2, _02251714 ; =0x00000851
	mov r0, #0
	strb r0, [r3, r2]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #1
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #0xff
	add r3, r2, #2
	strb r5, [r4, r3]
	ldr r3, [r1, #0xc]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #3
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	mov r5, #1
	add r3, r2, #4
	strb r5, [r4, r3]
	ldr r3, [r1, #8]
	ldr r4, [r1, #0]
	asr r5, r3, #8
	add r3, r2, #5
	strb r5, [r4, r3]
	ldr r4, [r1, #0]
	add r3, r2, #6
	strb r0, [r4, r3]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0]
	asr r3, r0, #8
	add r0, r2, #7
	strb r3, [r1, r0]
	pop {r3, r4, r5, pc}
_022516FE:
	ldr r0, [r1, #4]
	mov r2, #1
	strb r2, [r0]
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_02251714: .word 0x00000851
	thumb_func_end ov17_02251688

	thumb_func_start ov17_02251718
ov17_02251718: ; 0x02251718
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r1, #0
	add r0, r3, #0
	strb r1, [r0]
	mov r0, #0x18
	mov r1, #0x14
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl MI_CpuFill8
	lsl r0, r6, #2
	add r0, r5, r0
	ldr r0, [r0, #0x18]
	cmp r7, #0
	str r0, [r4, #0]
	ldr r0, [sp]
	ldr r2, _02251778 ; =0x0000C350
	str r0, [r4, #4]
	bne _02251762
	mov r0, #0x4a
	lsl r0, r0, #0xa
	str r0, [r4, #8]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _0225177C ; =ov17_02251784
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_02251762:
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [r4, #8]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, _02251780 ; =ov17_022517F0
	add r1, r4, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251778: .word 0x0000C350
_0225177C: .word ov17_02251784
_02251780: .word ov17_022517F0
	thumb_func_end ov17_02251718

	thumb_func_start ov17_02251784
ov17_02251784: ; 0x02251784
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02251796
	cmp r0, #1
	beq _022517A6
	b _022517DA
_02251796:
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022517A6:
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xa
	sub r2, r1, r0
	lsl r1, r0, #4
	str r2, [r4, #8]
	cmp r2, r1
	bgt _022517C0
	lsl r0, r0, #4
	str r0, [r4, #8]
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_022517C0:
	ldr r2, [r4, #8]
	ldr r0, [r4, #0]
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_022517DA:
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov17_02251784

	thumb_func_start ov17_022517F0
ov17_022517F0: ; 0x022517F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _02251802
	cmp r0, #1
	beq _02251806
	b _0225183C
_02251802:
	add r0, r0, #1
	strb r0, [r4, #0x10]
_02251806:
	mov r0, #2
	ldr r1, [r4, #8]
	lsl r0, r0, #0xa
	sub r1, r1, r0
	ldr r0, _0225185C ; =0xFFFFD800
	str r1, [r4, #8]
	cmp r1, r0
	bgt _0225181C
	ldrb r0, [r4, #0x10]
	add r0, r0, #1
	strb r0, [r4, #0x10]
_0225181C:
	ldr r3, [r4, #8]
	ldr r0, [r4, #0]
	asr r2, r3, #7
	lsr r2, r2, #0x18
	add r2, r3, r2
	mov r1, #0
	asr r2, r2, #8
	bl sub_02007DEC
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0]
	mov r1, #1
	asr r2, r2, #8
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_0225183C:
	ldr r0, [r4, #0]
	mov r1, #6
	mov r2, #1
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0]
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	nop
_0225185C: .word 0xFFFFD800
	thumb_func_end ov17_022517F0

	thumb_func_start ov17_02251860
ov17_02251860: ; 0x02251860
	ldr r2, _022518FC ; =0x00000121
	ldrb r0, [r0, r2]
	cmp r0, #8
	bhi _022518F6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02251874: ; jump table
	.short _02251886 - _02251874 - 2 ; case 0
	.short _0225189E - _02251874 - 2 ; case 1
	.short _022518B4 - _02251874 - 2 ; case 2
	.short _022518D2 - _02251874 - 2 ; case 3
	.short _022518D2 - _02251874 - 2 ; case 4
	.short _022518DE - _02251874 - 2 ; case 5
	.short _022518DE - _02251874 - 2 ; case 6
	.short _022518EA - _02251874 - 2 ; case 7
	.short _022518EA - _02251874 - 2 ; case 8
_02251886:
	cmp r1, #0
	beq _02251890
	cmp r1, #2
	beq _02251894
	b _0225189A
_02251890:
	ldr r0, _02251900 ; =0x00001770
	bx lr
_02251894:
	mov r0, #0xfa
	lsl r0, r0, #4
	bx lr
_0225189A:
	mov r0, #0
	bx lr
_0225189E:
	cmp r1, #0
	beq _022518A8
	cmp r1, #1
	beq _022518AC
	b _022518B0
_022518A8:
	ldr r0, _02251904 ; =0x00001B58
	bx lr
_022518AC:
	ldr r0, _02251908 ; =0x00000BB8
	bx lr
_022518B0:
	mov r0, #0
	bx lr
_022518B4:
	cmp r1, #0
	beq _022518C2
	cmp r1, #1
	beq _022518C6
	cmp r1, #2
	beq _022518CA
	b _022518CE
_022518C2:
	ldr r0, _0225190C ; =0x00000D05
	bx lr
_022518C6:
	ldr r0, _0225190C ; =0x00000D05
	bx lr
_022518CA:
	ldr r0, _0225190C ; =0x00000D05
	bx lr
_022518CE:
	mov r0, #0
	bx lr
_022518D2:
	cmp r1, #0
	bne _022518DA
	ldr r0, _02251910 ; =0x00002710
	bx lr
_022518DA:
	mov r0, #0
	bx lr
_022518DE:
	cmp r1, #1
	bne _022518E6
	ldr r0, _02251910 ; =0x00002710
	bx lr
_022518E6:
	mov r0, #0
	bx lr
_022518EA:
	cmp r1, #2
	bne _022518F2
	ldr r0, _02251910 ; =0x00002710
	bx lr
_022518F2:
	mov r0, #0
	bx lr
_022518F6:
	mov r0, #0
	bx lr
	nop
_022518FC: .word 0x00000121
_02251900: .word 0x00001770
_02251904: .word 0x00001B58
_02251908: .word 0x00000BB8
_0225190C: .word 0x00000D05
_02251910: .word 0x00002710
	thumb_func_end ov17_02251860

	thumb_func_start ov17_02251914
ov17_02251914: ; 0x02251914
	push {r3, lr}
	bl ov17_02251860
	mov r1, #0xc0
	add r2, r0, #0
	mul r2, r1
	ldr r1, _0225192C ; =0x00001388
	add r0, r2, r1
	lsl r1, r1, #1
	bl _s32_div_f
	pop {r3, pc}
	; .align 2, 0
_0225192C: .word 0x00001388
	thumb_func_end ov17_02251914

	thumb_func_start ov17_02251930
ov17_02251930: ; 0x02251930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp]
	mov r0, #0
	ldr r7, [sp]
	add r5, r1, #0
	add r6, r2, #0
	str r0, [sp, #8]
	add r4, sp, #0x24
_02251942:
	cmp r5, #0
	beq _02251950
	cmp r5, #1
	beq _0225196A
	cmp r5, #2
	beq _02251974
	b _0225197C
_02251950:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_02095928
	str r0, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl sub_0209598C
	ldr r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [r4, #0]
	b _02251984
_0225196A:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldrsh r0, [r7, r0]
	str r0, [r4, #0]
	b _02251984
_02251974:
	ldr r0, _02251A18 ; =0x0000012E
	ldrsh r0, [r7, r0]
	str r0, [r4, #0]
	b _02251984
_0225197C:
	bl GF_AssertFail
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_02251984:
	ldr r0, [sp, #8]
	add r4, r4, #4
	add r0, r0, #1
	add r7, #0xc
	str r0, [sp, #8]
	cmp r0, #4
	blt _02251942
	mov r4, #0
	mov r3, #1
	add r2, sp, #0x28
	add r7, sp, #0x24
_0225199A:
	lsl r0, r4, #2
	ldr r1, [r7, r0]
	ldr r0, [r2, #0]
	cmp r1, r0
	bge _022519A6
	add r4, r3, #0
_022519A6:
	add r3, r3, #1
	add r2, r2, #4
	cmp r3, #4
	blt _0225199A
	ldr r0, [sp]
	add r1, r5, #0
	bl ov17_02251860
	lsl r2, r4, #2
	add r1, sp, #0x24
	ldr r1, [r1, r2]
	bl _s32_div_f
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #4]
	add r7, sp, #0x24
	add r4, sp, #0x14
_022519CA:
	ldr r0, [r7, #0]
	ldr r1, [sp, #0xc]
	mul r0, r1
	str r0, [r4, #0]
	add r0, #0x32
	mov r1, #0x64
	bl _s32_div_f
	stmia r4!, {r0}
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _022519CA
	mov r2, #0
	add r1, sp, #0x14
_022519EC:
	cmp r5, #0
	beq _022519FA
	cmp r5, #1
	beq _02251A00
	cmp r5, #2
	beq _02251A06
	b _02251A0A
_022519FA:
	ldr r0, [r1, #0]
	strh r0, [r6]
	b _02251A0A
_02251A00:
	ldr r0, [r1, #0]
	strh r0, [r6]
	b _02251A0A
_02251A06:
	ldr r0, [r1, #0]
	strh r0, [r6]
_02251A0A:
	add r2, r2, #1
	add r1, r1, #4
	add r6, r6, #2
	cmp r2, #4
	blt _022519EC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02251A18: .word 0x0000012E
	thumb_func_end ov17_02251930

	thumb_func_start ov17_02251A1C
ov17_02251A1C: ; 0x02251A1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp]
	ldr r0, [r0, #0]
	ldr r1, _02251D3C ; =0x00000121
	ldrb r1, [r0, r1]
	cmp r1, #8
	bhi _02251ADC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02251A38: ; jump table
	.short _02251A4A - _02251A38 - 2 ; case 0
	.short _02251A68 - _02251A38 - 2 ; case 1
	.short _02251A86 - _02251A38 - 2 ; case 2
	.short _02251AB4 - _02251A38 - 2 ; case 3
	.short _02251AB4 - _02251A38 - 2 ; case 4
	.short _02251AC2 - _02251A38 - 2 ; case 5
	.short _02251AC2 - _02251A38 - 2 ; case 6
	.short _02251AD0 - _02251A38 - 2 ; case 7
	.short _02251AD0 - _02251A38 - 2 ; case 8
_02251A4A:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D44 ; =0x000003E6
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #2
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251A68:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D48 ; =0x000003DE
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #1
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251A86:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D48 ; =0x000003DE
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #1
	add r2, r2, r3
	bl ov17_02251930
	ldr r0, [sp]
	ldr r3, _02251D44 ; =0x000003E6
	ldr r2, [sp]
	ldr r0, [r0, #0]
	mov r1, #2
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AB4:
	ldr r3, _02251D40 ; =0x000003D6
	ldr r2, [sp]
	mov r1, #0
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AC2:
	ldr r3, _02251D48 ; =0x000003DE
	ldr r2, [sp]
	mov r1, #1
	add r2, r2, r3
	bl ov17_02251930
	b _02251ADC
_02251AD0:
	ldr r3, _02251D44 ; =0x000003E6
	ldr r2, [sp]
	mov r1, #2
	add r2, r2, r3
	bl ov17_02251930
_02251ADC:
	ldr r7, _02251D40 ; =0x000003D6
	ldr r6, [sp]
	add r0, r7, #0
	add r1, r7, #0
	mov r5, #0
	add r0, #8
	add r1, #0x18
_02251AEA:
	ldr r2, _02251D44 ; =0x000003E6
	ldrsh r3, [r6, r7]
	ldrsh r4, [r6, r2]
	ldrsh r2, [r6, r0]
	add r5, r5, #1
	add r2, r3, r2
	add r2, r4, r2
	strh r2, [r6, r1]
	add r6, r6, #2
	cmp r5, #4
	blt _02251AEA
	ldr r1, [sp]
	ldr r4, _02251D40 ; =0x000003D6
	mov r0, #0
	mov r2, #1
	add r1, r1, #2
	add r5, r4, #0
_02251B0C:
	ldr r3, [sp]
	lsl r6, r0, #1
	add r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r1, r5]
	cmp r6, r3
	bge _02251B1C
	add r0, r2, #0
_02251B1C:
	add r2, r2, #1
	add r1, r1, #2
	cmp r2, #4
	blt _02251B0C
	lsl r1, r0, #1
	ldr r0, [sp]
	ldr r4, [sp]
	add r1, r0, r1
	ldr r0, _02251D40 ; =0x000003D6
	mov r5, #0
	add r7, r0, #0
	ldrsh r6, [r1, r0]
	add r7, #0x20
_02251B36:
	ldr r0, _02251D40 ; =0x000003D6
	ldrsh r1, [r4, r0]
	mov r0, #0x64
	mul r0, r1
	add r1, r6, #0
	bl _s32_div_f
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251B36
	ldr r0, [sp]
	ldr r4, _02251D48 ; =0x000003DE
	mov r2, #0
	mov r1, #1
	add r0, r0, #2
	add r5, r4, #0
_02251B5A:
	ldr r3, [sp]
	lsl r6, r2, #1
	add r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r0, r5]
	cmp r6, r3
	bge _02251B6A
	add r2, r1, #0
_02251B6A:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _02251B5A
	ldr r0, [sp]
	lsl r1, r2, #1
	add r1, r0, r1
	ldr r0, _02251D48 ; =0x000003DE
	ldr r4, [sp]
	add r7, r0, #0
	ldrsh r6, [r1, r0]
	mov r5, #0
	add r7, #0x20
_02251B84:
	ldr r0, _02251D48 ; =0x000003DE
	ldrsh r1, [r4, r0]
	mov r0, #0x64
	mul r0, r1
	add r1, r6, #0
	bl _s32_div_f
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251B84
	ldr r0, [sp]
	ldr r4, _02251D44 ; =0x000003E6
	mov r2, #0
	mov r1, #1
	add r0, r0, #2
	add r5, r4, #0
_02251BA8:
	ldr r3, [sp]
	lsl r6, r2, #1
	add r3, r3, r6
	ldrsh r6, [r3, r4]
	ldrsh r3, [r0, r5]
	cmp r6, r3
	bge _02251BB8
	add r2, r1, #0
_02251BB8:
	add r1, r1, #1
	add r0, r0, #2
	cmp r1, #4
	blt _02251BA8
	ldr r0, [sp]
	lsl r1, r2, #1
	add r1, r0, r1
	ldr r0, _02251D44 ; =0x000003E6
	ldr r4, [sp]
	add r7, r0, #0
	ldrsh r6, [r1, r0]
	mov r5, #0
	add r7, #0x20
_02251BD2:
	ldr r0, _02251D44 ; =0x000003E6
	ldrsh r1, [r4, r0]
	mov r0, #0x64
	mul r0, r1
	add r1, r6, #0
	bl _s32_div_f
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251BD2
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D4C ; =0x0000041E
	add r6, r0, #0
	mov r5, #0
_02251BFC:
	ldr r0, _02251D50 ; =0x000003F6
	mov r1, #0x64
	ldrsh r0, [r4, r0]
	mul r0, r6
	bl _s32_div_f
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251BFC
	ldr r0, [sp]
	mov r1, #1
	ldr r0, [r0, #0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D54 ; =0x00000426
	add r6, r0, #0
	mov r5, #0
_02251C24:
	ldr r0, _02251D58 ; =0x000003FE
	mov r1, #0x64
	ldrsh r0, [r4, r0]
	mul r0, r6
	bl _s32_div_f
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251C24
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	bl ov17_02251914
	ldr r4, [sp]
	ldr r7, _02251D5C ; =0x0000042E
	add r6, r0, #0
	mov r5, #0
_02251C4C:
	ldr r0, _02251D60 ; =0x00000406
	mov r1, #0x64
	ldrsh r0, [r4, r0]
	mul r0, r6
	bl _s32_div_f
	strh r0, [r4, r7]
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #4
	blt _02251C4C
	ldr r7, _02251D4C ; =0x0000041E
	ldr r5, [sp]
	add r0, r7, #0
	add r1, r7, #0
	mov r6, #0
	add r0, #8
	sub r1, #8
_02251C70:
	ldr r2, _02251D5C ; =0x0000042E
	ldrsh r3, [r5, r7]
	ldrsh r4, [r5, r2]
	ldrsh r2, [r5, r0]
	add r6, r6, #1
	add r2, r3, r2
	add r2, r4, r2
	strh r2, [r5, r1]
	add r5, r5, #2
	cmp r6, #4
	blt _02251C70
	ldr r0, [sp]
	mov r7, #0
	add r6, sp, #0x18
	str r0, [sp, #4]
	add r4, sp, #8
	add r5, sp, #0x28
_02251C92:
	stmia r6!, {r7}
	ldr r1, [sp, #4]
	ldr r0, _02251D64 ; =0x00000416
	ldrsh r0, [r1, r0]
	stmia r4!, {r0}
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl sub_02094E98
	stmia r5!, {r0}
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r0, r0, #2
	str r0, [sp, #4]
	cmp r7, #4
	blt _02251C92
	mov r0, #0
	mov ip, r0
_02251CB6:
	mov r0, ip
	mov r7, #3
	cmp r0, #3
	bge _02251D04
	add r2, sp, #0x14
	add r3, sp, #0x34
	add r4, sp, #0x24
_02251CC4:
	sub r0, r2, #4
	ldr r5, [r2, #0]
	ldr r6, [r0, #0]
	cmp r6, r5
	blt _02251CDC
	cmp r6, r5
	bne _02251CF6
	sub r0, r3, #4
	ldr r1, [r0, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	bge _02251CF6
_02251CDC:
	str r6, [r2, #0]
	sub r0, r2, #4
	str r5, [r0, #0]
	sub r0, r4, #4
	ldr r5, [r4, #0]
	ldr r1, [r0, #0]
	str r1, [r4, #0]
	str r5, [r0, #0]
	sub r0, r3, #4
	ldr r5, [r3, #0]
	ldr r1, [r0, #0]
	str r1, [r3, #0]
	str r5, [r0, #0]
_02251CF6:
	sub r7, r7, #1
	mov r0, ip
	sub r2, r2, #4
	sub r3, r3, #4
	sub r4, r4, #4
	cmp r7, r0
	bgt _02251CC4
_02251D04:
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #3
	blt _02251CB6
	mov r1, #0x13
	ldr r7, _02251D68 ; =0x000003D1
	mov r6, #0
	add r5, sp, #0x18
	mov r0, #0xc
	lsl r1, r1, #4
_02251D1A:
	ldr r3, [sp]
	ldr r2, [r5, #0]
	add r3, r3, r6
	strb r2, [r3, r7]
	ldr r2, [sp]
	ldr r4, [r2, #0]
	ldr r2, [r5, #0]
	add r5, r5, #4
	add r3, r2, #0
	mul r3, r0
	add r2, r4, r3
	strb r6, [r2, r1]
	add r6, r6, #1
	cmp r6, #4
	blt _02251D1A
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02251D3C: .word 0x00000121
_02251D40: .word 0x000003D6
_02251D44: .word 0x000003E6
_02251D48: .word 0x000003DE
_02251D4C: .word 0x0000041E
_02251D50: .word 0x000003F6
_02251D54: .word 0x00000426
_02251D58: .word 0x000003FE
_02251D5C: .word 0x0000042E
_02251D60: .word 0x00000406
_02251D64: .word 0x00000416
_02251D68: .word 0x000003D1
	thumb_func_end ov17_02251A1C

	.rodata


	.global Unk_ov17_02254BD4
Unk_ov17_02254BD4: ; 0x02254BD4
	.incbin "incbin/overlay17_rodata.bin", 0x1E48, 0x1E58 - 0x1E48

	.global Unk_ov17_02254BE4
Unk_ov17_02254BE4: ; 0x02254BE4
	.incbin "incbin/overlay17_rodata.bin", 0x1E58, 0x1E68 - 0x1E58

	.global Unk_ov17_02254BF4
Unk_ov17_02254BF4: ; 0x02254BF4
	.incbin "incbin/overlay17_rodata.bin", 0x1E68, 0x1E80 - 0x1E68

	.global Unk_ov17_02254C0C
Unk_ov17_02254C0C: ; 0x02254C0C
	.incbin "incbin/overlay17_rodata.bin", 0x1E80, 0x1E9C - 0x1E80

	.global Unk_ov17_02254C28
Unk_ov17_02254C28: ; 0x02254C28
	.incbin "incbin/overlay17_rodata.bin", 0x1E9C, 0x1ED0 - 0x1E9C

	.global Unk_ov17_02254C5C
Unk_ov17_02254C5C: ; 0x02254C5C
	.incbin "incbin/overlay17_rodata.bin", 0x1ED0, 0x1F04 - 0x1ED0

	.global Unk_ov17_02254C90
Unk_ov17_02254C90: ; 0x02254C90
	.incbin "incbin/overlay17_rodata.bin", 0x1F04, 0x1F38 - 0x1F04

	.global Unk_ov17_02254CC4
Unk_ov17_02254CC4: ; 0x02254CC4
	.incbin "incbin/overlay17_rodata.bin", 0x1F38, 0x34

