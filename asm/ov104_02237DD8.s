	.include "macros/function.inc"
	.include "include/ov104_02237DD8.inc"

	

	.text


	thumb_func_start ov104_02237DD8
ov104_02237DD8: ; 0x02237DD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r1, #0
	add r4, r0, #0
	str r2, [sp, #4]
	ldr r1, _02238060 ; =0x00000A88
	mov r0, #0xb
	str r3, [sp, #8]
	bl sub_02018144
	ldr r1, _02238064 ; =0x02241ACC
	ldr r2, _02238060 ; =0x00000A88
	str r0, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _02238064 ; =0x02241ACC
	ldr r5, [r0, #0]
	add r0, r4, #0
	bl sub_020304A0
	str r0, [r5, #8]
	ldr r1, _02238064 ; =0x02241ACC
	str r4, [r5, #4]
	mov r0, #0xb
	str r0, [r5, #0]
	ldr r5, [r1, #0]
	bl sub_02079FF4
	str r0, [r5, #0x70]
	mov r0, #0xb
	bl sub_02079FF4
	str r0, [r5, #0x74]
	mov r0, #0x2a
	ldr r1, [sp, #0x38]
	lsl r0, r0, #6
	str r1, [r5, r0]
	mov r0, #0x20
	strb r0, [r5, #0x13]
	add r0, r4, #0
	ldr r6, [r5, #8]
	bl sub_020305B8
	add r4, r0, #0
	cmp r7, #0
	bne _02237EDC
	ldr r0, _02238064 ; =0x02241ACC
	mov r1, #0
	ldr r2, [r0, #0]
	ldr r0, [sp, #4]
	strb r0, [r2, #0x10]
	strb r1, [r2, #0x11]
	mov r0, #3
	strb r0, [r2, #0x1c]
	add r0, r6, #0
	strb r1, [r2, #0x12]
	bl sub_02030494
	ldr r0, _02238064 ; =0x02241ACC
	ldr r0, [r0, #0]
	ldrb r2, [r0, #0x10]
	cmp r2, #3
	bne _02237E64
	ldr r0, [r0, #4]
	bl sub_020507E4
	bl sub_0206B6FC
	b _02237E70
_02237E64:
	mov r3, #0
	add r0, r4, #0
	mov r1, #8
	str r3, [sp]
	bl sub_02030600
_02237E70:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bne _02237EA8
	ldr r0, _02238064 ; =0x02241ACC
	ldr r5, [r0, #0]
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r4, r0, #0
	ldr r0, _02238064 ; =0x02241ACC
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E700
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E700
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	strh r0, [r5, #0x18]
	b _02237EB0
_02237EA8:
	ldr r0, _02238064 ; =0x02241ACC
	mov r1, #0
	ldr r0, [r0, #0]
	strh r1, [r0, #0x18]
_02237EB0:
	ldr r0, _02238064 ; =0x02241ACC
	mov r1, #7
	ldr r4, [r0, #0]
	ldrh r0, [r4, #0x18]
	bl _s32_div_f
	strh r0, [r4, #0x1a]
	mov r0, #0
	str r0, [r4, #0x24]
	add r1, r4, #0
	ldr r0, [sp, #8]
	add r1, #0x2c
	strb r0, [r1]
	add r0, r4, #0
	add r1, sp, #0x20
	ldrh r2, [r1, #0x10]
	add r0, #0x2d
	add r4, #0x2e
	strb r2, [r0]
	ldrh r0, [r1, #0x14]
	strb r0, [r4]
	b _02237F84
_02237EDC:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp]
	bl sub_0203054C
	ldr r1, _02238064 ; =0x02241ACC
	mov r2, #0
	ldr r1, [r1, #0]
	add r3, r2, #0
	strb r0, [r1, #0x10]
	add r0, r6, #0
	mov r1, #2
	str r2, [sp]
	bl sub_0203054C
	ldr r1, _02238064 ; =0x02241ACC
	mov r2, #0
	ldr r4, [r1, #0]
	mov r1, #3
	strb r0, [r4, #0x11]
	str r2, [sp]
	add r0, r6, #0
	add r3, r2, #0
	bl sub_0203054C
	strb r0, [r4, #0x1c]
	mov r2, #0
	str r2, [sp]
	add r0, r6, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_0203054C
	strb r0, [r4, #0x12]
	ldr r0, _02238064 ; =0x02241ACC
	ldr r5, [r0, #0]
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r7, r0, #0
	ldr r0, _02238064 ; =0x02241ACC
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl sub_0205E700
	str r0, [sp, #0x10]
	ldrb r0, [r4, #0x10]
	bl sub_0205E700
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	bl sub_02030698
	strh r0, [r5, #0x18]
	ldrh r0, [r5, #0x18]
	mov r1, #7
	bl _s32_div_f
	mov r4, #0
	strh r0, [r5, #0x1a]
	add r7, r4, #0
_02237F60:
	ldr r0, _02238064 ; =0x02241ACC
	lsl r2, r4, #0x18
	ldr r5, [r0, #0]
	add r0, r6, #0
	mov r1, #6
	lsr r2, r2, #0x18
	add r3, r7, #0
	str r7, [sp]
	bl sub_0203054C
	add r1, r5, r4
	add r1, #0x2c
	strb r0, [r1]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _02237F60
_02237F84:
	ldr r6, _02238064 ; =0x02241ACC
	ldr r7, _02238068 ; =0x00000412
	mov r5, #0
_02237F8A:
	ldr r4, [r6, #0]
	ldr r0, [r4, #4]
	bl sub_0207A268
	add r1, r4, r5
	add r1, #0x2c
	ldrb r1, [r1]
	bl sub_0207A0FC
	ldr r4, [r6, #0]
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	lsl r1, r5, #1
	add r1, r4, r1
	strh r0, [r1, r7]
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #3
	blo _02237F8A
	ldr r0, [r4, #4]
	bl sub_0207A268
	str r0, [sp, #0xc]
	ldr r0, _02238064 ; =0x02241ACC
	mov r1, #0
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223BD70
	add r7, r0, #0
	mov r5, #0
	cmp r7, #0
	ble _0223803E
	ldr r6, _02238064 ; =0x02241ACC
_02237FD4:
	ldr r1, [r6, #0]
	ldr r0, [sp, #0xc]
	add r1, r1, r5
	add r1, #0x2c
	ldrb r1, [r1]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x70]
	bl sub_0207A048
	ldr r0, [r6, #0]
	add r1, r5, #0
	ldr r0, [r0, #0x70]
	bl sub_0207A0FC
	mov r1, #0
	str r1, [sp, #0x18]
	add r4, r0, #0
	mov r1, #6
	add r2, sp, #0x18
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, #0x32
	bls _02238034
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x32
	bl sub_02075AD0
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0x14
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
_02238034:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, r7
	blt _02237FD4
_0223803E:
	ldr r0, _02238064 ; =0x02241ACC
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x10]
	bl ov104_0223C000
	cmp r0, #1
	bne _02238056
	ldr r0, _02238064 ; =0x02241ACC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov104_0222E630
_02238056:
	ldr r0, _02238064 ; =0x02241ACC
	ldr r0, [r0, #0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02238060: .word 0x00000A88
_02238064: .word 0x02241ACC
_02238068: .word 0x00000412
	thumb_func_end ov104_02237DD8

	thumb_func_start ov104_0223806C
ov104_0223806C: ; 0x0223806C
	push {r3, lr}
	cmp r1, #0
	bne _02238078
	bl ov104_02238080
	pop {r3, pc}
_02238078:
	bl ov104_02238114
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0223806C

	thumb_func_start ov104_02238080
ov104_02238080: ; 0x02238080
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ov104_0223C124
	add r1, r0, #0
	add r2, r5, #0
	ldrb r0, [r5, #0x10]
	add r2, #0x78
	mov r3, #0xe
	bl ov104_0223BD28
	ldrb r0, [r5, #0x10]
	mov r1, #1
	ldrb r4, [r5, #0x11]
	bl ov104_0223BDA4
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223C000
	mov r3, #0x33
	lsl r3, r3, #4
	add r1, r5, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	add r1, r5, r1
	str r1, [sp, #4]
	add r1, r3, #0
	sub r1, #0x10
	add r1, r5, r1
	add r2, r4, #7
	str r1, [sp, #8]
	lsl r0, r0, #0x18
	lsl r1, r4, #1
	lsl r2, r2, #1
	lsr r0, r0, #0x18
	add r1, r5, r1
	add r2, r5, r2
	str r0, [sp, #0xc]
	add r1, #0x78
	add r2, #0x78
	sub r3, #0x1c
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r0, r6, #0
	add r3, r5, r3
	bl ov104_0222E4BC
	add r0, r5, #0
	bl ov104_0223C124
	ldr r3, _0223810C ; =0x0223FAF8
	mov r2, #0
_022380EE:
	ldrb r1, [r3]
	cmp r0, r1
	blt _02238100
	ldr r0, _02238110 ; =0x0223FAF9
	lsl r1, r2, #1
	ldrb r0, [r0, r1]
	add sp, #0x10
	strb r0, [r5, #0x1c]
	pop {r4, r5, r6, pc}
_02238100:
	add r2, r2, #1
	add r3, r3, #2
	cmp r2, #3
	blo _022380EE
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223810C: .word 0x0223FAF8
_02238110: .word 0x0223FAF9
	thumb_func_end ov104_02238080

	thumb_func_start ov104_02238114
ov104_02238114: ; 0x02238114
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18c
	add r5, r0, #0
	bl ov104_022381C4
	mov r4, #0
	add r6, r5, #0
	add r7, r4, #0
_02238124:
	str r7, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #5
	lsr r2, r2, #0x18
	add r3, r7, #0
	bl sub_0203054C
	add r1, r6, #0
	add r1, #0x78
	add r4, r4, #1
	add r6, r6, #2
	strh r0, [r1]
	cmp r4, #0xe
	blt _02238124
	mov r6, #0
	add r4, sp, #0x30
	add r7, r5, #0
_02238148:
	mov r0, #0
	str r0, [sp]
	lsl r2, r6, #0x18
	ldr r0, [r5, #8]
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_0203054C
	strh r0, [r4]
	ldrh r1, [r4]
	mov r0, #0xc5
	lsl r0, r0, #2
	strh r1, [r7, r0]
	add r6, r6, #1
	add r4, r4, #2
	add r7, r7, #2
	cmp r6, #4
	blt _02238148
	add r0, sp, #0x18
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	add r0, sp, #0x3c
	add r1, sp, #0x30
	add r2, sp, #0x10
	mov r3, #0
	bl ov104_0222E330
	mov r0, #0xb
	bl sub_02073C74
	add r6, r0, #0
	mov r7, #0
	add r4, sp, #0x3c
_02238196:
	add r0, r5, #0
	bl ov104_0223BFFC
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov104_0222DF40
	ldr r1, [r5, #0x74]
	add r0, r5, #0
	add r2, r6, #0
	bl ov104_0223C034
	add r7, r7, #1
	add r4, #0x38
	cmp r7, #4
	blt _02238196
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0x18c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02238114

	thumb_func_start ov104_022381C4
ov104_022381C4: ; 0x022381C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x70]
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
	mov r4, #0
	cmp r7, #0
	ble _0223820A
_022381DA:
	ldr r0, [r5, #0x70]
	add r1, r4, #0
	bl sub_0207A0FC
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_0203054C
	add r1, sp, #4
	strh r0, [r1]
	add r0, r6, #0
	mov r1, #6
	add r2, sp, #4
	bl sub_02074B30
	add r4, r4, #1
	cmp r4, r7
	blt _022381DA
_0223820A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022381C4

	thumb_func_start ov104_02238210
ov104_02238210: ; 0x02238210
	push {r4, lr}
	add r4, r0, #0
	beq _0223823A
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _02238220
	bl sub_020181C4
_02238220:
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _0223822A
	bl sub_020181C4
_0223822A:
	ldr r2, _0223823C ; =0x00000A88
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r4, #0
	bl sub_020181C4
_0223823A:
	pop {r4, pc}
	; .align 2, 0
_0223823C: .word 0x00000A88
	thumb_func_end ov104_02238210

	thumb_func_start ov104_02238240
ov104_02238240: ; 0x02238240
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02238260 ; =0x00000418
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_0223824A:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov104_02238264
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #6
	blt _0223824A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02238260: .word 0x00000418
	thumb_func_end ov104_02238240

	thumb_func_start ov104_02238264
ov104_02238264: ; 0x02238264
	push {r3, lr}
	cmp r1, #6
	blo _02238272
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
_02238272:
	ldrh r0, [r0, #0x38]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02238264

	thumb_func_start ov104_02238278
ov104_02238278: ; 0x02238278
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl sub_020305B8
	str r0, [sp, #4]
	ldrb r0, [r5, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	ldrb r1, [r5, #0x10]
	add r0, sp, #8
	strb r1, [r0, #8]
	mov r1, #0
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020304CC
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_020304B8
	mov r2, #0
	ldrb r1, [r5, #0x11]
	add r0, sp, #8
	add r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #2
	bl sub_020304CC
	mov r2, #0
	ldrb r1, [r5, #0x1c]
	add r0, sp, #8
	add r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #3
	bl sub_020304CC
	mov r2, #0
	ldrb r1, [r5, #0x12]
	add r0, sp, #8
	add r3, r2, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_020304CC
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E700
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E700
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_020306E4
	cmp r4, #2
	beq _0223837E
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E728
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl sub_0205E728
	bl sub_0205E6A8
	add r2, r0, #0
	ldrh r3, [r5, #0x18]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030848
	add r0, r5, #0
	add r0, #0x2f
	ldrb r1, [r0]
	add r0, sp, #8
	mov r3, #0
	strb r1, [r0, #8]
	add r0, sp, #0x10
	str r0, [sp]
	ldrb r2, [r5, #0x10]
	ldr r0, [sp, #4]
	mov r1, #8
	bl sub_020305CC
	ldrb r0, [r5, #0x10]
	cmp r0, #3
	bne _0223837E
	ldr r0, [r5, #4]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6e
	bl sub_0205E6A8
	add r3, r5, #0
	add r3, #0x2f
	add r2, r0, #0
	ldrb r3, [r3]
	add r0, r4, #0
	mov r1, #0x6e
	bl sub_020306E4
_0223837E:
	mov r4, #0
	add r6, sp, #8
	add r7, sp, #8
_02238384:
	lsl r0, r4, #1
	add r0, r5, r0
	add r0, #0x78
	ldrh r0, [r0]
	lsl r2, r4, #0x18
	mov r1, #5
	strh r0, [r7]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_020304CC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xe
	blo _02238384
	mov r4, #0
	add r6, sp, #0x10
	add r7, sp, #8
_022383AE:
	add r0, r5, r4
	add r0, #0x2c
	ldrb r0, [r0]
	lsl r2, r4, #0x18
	mov r1, #6
	strb r0, [r7, #8]
	str r6, [sp]
	ldr r0, [r5, #8]
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_020304CC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _022383AE
	ldr r0, [r5, #0x70]
	bl sub_0207A0F8
	add r6, r0, #0
	ldr r4, _02238450 ; =0x00000000
	beq _0223840C
	add r7, sp, #8
_022383DE:
	ldr r0, [r5, #0x70]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, sp, #8
	strh r0, [r1]
	str r7, [sp]
	lsl r2, r4, #0x18
	ldr r0, [r5, #8]
	mov r1, #4
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_020304CC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blo _022383DE
_0223840C:
	ldr r0, [r5, #0x74]
	bl sub_0207A0F8
	add r6, r0, #0
	ldr r4, _02238450 ; =0x00000000
	beq _0223844A
	add r7, sp, #8
_0223841A:
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0207A0FC
	lsl r0, r4, #1
	add r1, r5, r0
	mov r0, #0xc5
	lsl r0, r0, #2
	ldrh r1, [r1, r0]
	add r0, sp, #8
	lsl r2, r4, #0x18
	strh r1, [r0]
	str r7, [sp]
	ldr r0, [r5, #8]
	mov r1, #7
	lsr r2, r2, #0x18
	mov r3, #0
	bl sub_020304CC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r6
	blo _0223841A
_0223844A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02238450: .word 0x00000000
	thumb_func_end ov104_02238278

	thumb_func_start ov104_02238454
ov104_02238454: ; 0x02238454
	ldrb r1, [r0, #0x11]
	add r1, r1, #1
	strb r1, [r0, #0x11]
	ldrb r0, [r0, #0x11]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02238454

	thumb_func_start ov104_02238460
ov104_02238460: ; 0x02238460
	ldrb r0, [r0, #0x11]
	bx lr
	thumb_func_end ov104_02238460

	thumb_func_start ov104_02238464
ov104_02238464: ; 0x02238464
	push {r4, lr}
	sub sp, #0x30
	add r4, r0, #0
	bl ov104_02238498
	lsl r1, r0, #0x18
	lsr r1, r1, #0x17
	add r1, r4, r1
	add r1, #0x78
	ldrh r1, [r1]
	add r0, sp, #0
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222DD04
	bl sub_020181C4
	add r0, sp, #0
	ldrh r0, [r0, #4]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov104_0222E10C
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_02238464

	thumb_func_start ov104_02238498
ov104_02238498: ; 0x02238498
	ldrb r2, [r0, #0x11]
	mov r0, #7
	mul r0, r1
	add r0, r2, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02238498

	thumb_func_start ov104_022384A8
ov104_022384A8: ; 0x022384A8
	ldr r3, _022384B0 ; =ov104_02238278
	mov r1, #1
	bx r3
	nop
_022384B0: .word ov104_02238278
	thumb_func_end ov104_022384A8

	thumb_func_start ov104_022384B4
ov104_022384B4: ; 0x022384B4
	add r1, r0, #0
	mov r2, #1
	add r1, #0x2f
	strb r2, [r1]
	ldrh r1, [r0, #0x1a]
	cmp r1, #8
	bhs _022384C6
	add r1, r1, #1
	strh r1, [r0, #0x1a]
_022384C6:
	ldr r3, _022384D0 ; =ov104_02238278
	mov r1, #0
	strb r1, [r0, #0x11]
	bx r3
	nop
_022384D0: .word ov104_02238278
	thumb_func_end ov104_022384B4

	thumb_func_start ov104_022384D4
ov104_022384D4: ; 0x022384D4
	ldr r3, _022384D8 ; =ov104_0223C04C
	bx r3
	; .align 2, 0
_022384D8: .word ov104_0223C04C
	thumb_func_end ov104_022384D4

	thumb_func_start ov104_022384DC
ov104_022384DC: ; 0x022384DC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	ldrb r4, [r5, #0x11]
	bl ov104_0223BDA4
	add r6, r0, #0
	ldrb r0, [r5, #0x10]
	bl ov104_0223C000
	mov r3, #0x33
	lsl r3, r3, #4
	add r1, r5, r3
	str r1, [sp]
	add r1, r3, #0
	sub r1, #0x14
	add r1, r5, r1
	str r1, [sp, #4]
	add r1, r3, #0
	sub r1, #0x10
	add r1, r5, r1
	add r2, r4, #7
	str r1, [sp, #8]
	lsl r0, r0, #0x18
	lsl r1, r4, #1
	lsl r2, r2, #1
	lsr r0, r0, #0x18
	add r1, r5, r1
	add r2, r5, r2
	str r0, [sp, #0xc]
	add r1, #0x78
	add r2, #0x78
	sub r3, #0x1c
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r0, r6, #0
	add r3, r5, r3
	bl ov104_0222E4BC
	add r0, r5, #0
	bl ov104_0223C04C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022384DC

	thumb_func_start ov104_02238538
ov104_02238538: ; 0x02238538
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0x10]
	mov r4, #0
	add r7, r1, #0
	str r2, [sp]
	add r1, r4, #0
	add r5, r3, #0
	bl ov104_0223BD70
	add r3, r0, #0
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl ov104_02238584
	ldr r2, _0223857C ; =0x0223FAFE
	add r4, r4, r0
	mov r1, #0
_0223855E:
	ldrb r0, [r2]
	cmp r5, r0
	bge _0223856E
	ldr r0, _02238580 ; =0x0223FAFF
	lsl r1, r1, #1
	ldrb r0, [r0, r1]
	add r4, r4, r0
	b _02238576
_0223856E:
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, #5
	blt _0223855E
_02238576:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223857C: .word 0x0223FAFE
_02238580: .word 0x0223FAFF
	thumb_func_end ov104_02238538

	thumb_func_start ov104_02238584
ov104_02238584: ; 0x02238584
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r3, [sp, #0xc]
	str r0, [sp]
	mov r4, #0
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	str r2, [sp, #8]
	add r5, r4, #0
	add r6, r4, #0
	cmp r0, #0
	ble _022385E2
_0223859C:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _022385DA
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _022385C6
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_022385C6:
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022385DA
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_022385DA:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0223859C
_022385E2:
	ldr r0, [sp]
	ldrb r0, [r0, #0x10]
	bl ov104_0223C000
	cmp r0, #1
	bne _0223863C
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0223863C
_022385F6:
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #0xac
	mov r2, #0
	add r7, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _02238634
	add r0, r7, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02238620
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_02238620:
	add r0, r7, #0
	mov r1, #0xa0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02238634
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02238634:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _022385F6
_0223863C:
	ldr r0, _02238650 ; =0x0223FAF0
	ldrb r1, [r0, r5]
	mov r0, #0
	add r1, r0, r1
	ldr r0, _02238654 ; =0x0223FAE8
	ldrb r0, [r0, r4]
	add r0, r1, r0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238650: .word 0x0223FAF0
_02238654: .word 0x0223FAE8
	thumb_func_end ov104_02238584

	thumb_func_start ov104_02238658
ov104_02238658: ; 0x02238658
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldrb r0, [r5, #0x13]
	add r4, r1, #0
	cmp r0, #0x20
	beq _0223870E
	mov r0, #0x96
	mov r1, #0x5e
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x5e
	str r1, [sp, #0xc]
	ldrb r2, [r5, #0x13]
	mov r1, #6
	add r6, r0, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0223871C ; =0x0223FBBA
	ldr r2, [r4, #0]
	ldrh r1, [r1, r3]
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x5e
	str r0, [sp, #0xc]
	ldrb r2, [r5, #0x13]
	mov r1, #6
	add r0, r6, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02238720 ; =0x0223FBBC
	ldr r2, [r4, #0]
	ldrh r1, [r1, r3]
	mov r3, #2
	bl sub_0200710C
	ldrb r2, [r5, #0x13]
	mov r1, #6
	add r0, r6, #0
	add r3, r2, #0
	mul r3, r1
	ldr r1, _02238724 ; =0x0223FBBE
	add r2, sp, #0x10
	ldrh r1, [r1, r3]
	mov r3, #0x5e
	bl sub_020071EC
	ldr r1, [sp, #0x10]
	add r5, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	ldr r0, [sp, #0x10]
	mov r1, #1
	lsl r1, r1, #0xe
	ldr r0, [r0, #0xc]
	lsr r2, r1, #1
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0201C3C0
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_0223870E:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0223871C: .word 0x0223FBBA
_02238720: .word 0x0223FBBC
_02238724: .word 0x0223FBBE
	thumb_func_end ov104_02238658

	thumb_func_start ov104_02238728
ov104_02238728: ; 0x02238728
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r1, #0
	mov r0, #0x96
	mov r1, #0x5e
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x5e
	str r1, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r1, #0x35
	mov r3, #3
	add r4, r0, #0
	bl sub_0200710C
	ldr r0, [r5, #0]
	mov r1, #3
	bl sub_0201C3C0
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02238728

	thumb_func_start ov104_02238764
ov104_02238764: ; 0x02238764
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldrb r0, [r0, #0x10]
	str r1, [sp, #8]
	mov r1, #1
	add r4, r2, #0
	bl ov104_0223BD70
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #1
	ldrb r0, [r0, #0x10]
	bl ov104_0223BDA4
	str r0, [sp, #0xc]
	cmp r4, #0
	bne _022387C8
	mov r4, #0
	cmp r7, #0
	ble _02238808
	ldr r5, _0223880C ; =0x0223FB18
	ldr r6, [sp, #4]
_02238792:
	ldr r0, [sp, #4]
	add r1, r4, #0
	ldr r0, [r0, #0x70]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #2
	ldrsh r0, [r5, r0]
	mov r3, #0
	add r2, r4, #0
	str r0, [sp]
	ldrsh r3, [r5, r3]
	ldr r0, [sp, #8]
	bl ov104_02232F4C
	str r0, [r6, #0x30]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CC8
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, r7
	blt _02238792
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022387C8:
	mov r6, #0
	cmp r0, #0
	ble _02238808
	ldr r4, _02238810 ; =0x0223FB28
	ldr r5, [sp, #4]
_022387D2:
	ldr r0, [sp, #4]
	add r1, r6, #0
	ldr r0, [r0, #0x74]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #2
	ldrsh r0, [r4, r0]
	mov r3, #0
	add r2, r7, #0
	str r0, [sp]
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #8]
	bl ov104_02232F4C
	str r0, [r5, #0x40]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r4, r4, #4
	add r7, r7, #1
	add r5, r5, #4
	cmp r6, r0
	blt _022387D2
_02238808:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223880C: .word 0x0223FB18
_02238810: .word 0x0223FB28
	thumb_func_end ov104_02238764

	thumb_func_start ov104_02238814
ov104_02238814: ; 0x02238814
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	add r7, r1, #0
	mov r1, #1
	add r6, r2, #0
	bl ov104_0223BD70
	add r4, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	str r0, [sp]
	cmp r6, #0
	bne _0223884E
	mov r6, #0
	cmp r4, #0
	ble _0223886A
_0223883A:
	ldr r1, [r5, #0x30]
	add r0, r7, #0
	add r2, r6, #0
	bl ov104_02232FD4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r4
	blt _0223883A
	pop {r3, r4, r5, r6, r7, pc}
_0223884E:
	mov r6, #0
	cmp r0, #0
	ble _0223886A
_02238854:
	ldr r1, [r5, #0x40]
	add r0, r7, #0
	add r2, r4, #0
	bl ov104_02232FD4
	ldr r0, [sp]
	add r6, r6, #1
	add r4, r4, #1
	add r5, r5, #4
	cmp r6, r0
	blt _02238854
_0223886A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238814

	thumb_func_start ov104_0223886C
ov104_0223886C: ; 0x0223886C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	add r6, r2, #0
	add r4, r3, #0
	bl ov104_0223BD70
	cmp r4, r0
	bge _022388A2
	cmp r6, #1
	bne _02238894
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x30]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021CAC
	pop {r4, r5, r6, pc}
_02238894:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x30]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
_022388A2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0223886C

	thumb_func_start ov104_022388A4
ov104_022388A4: ; 0x022388A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	add r6, r2, #0
	add r4, r3, #0
	bl ov104_0223BDA4
	cmp r4, r0
	bge _022388DA
	cmp r6, #1
	bne _022388CC
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021CAC
	pop {r4, r5, r6, pc}
_022388CC:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
_022388DA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_022388A4

	thumb_func_start ov104_022388DC
ov104_022388DC: ; 0x022388DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldrb r0, [r7, #0x10]
	str r1, [sp]
	mov r1, #1
	add r4, r2, #0
	bl ov104_0223BD70
	str r0, [sp, #8]
	ldrb r0, [r7, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	str r0, [sp, #4]
	cmp r4, #0
	bne _0223894C
	ldr r0, [sp, #8]
	mov r6, #0
	cmp r0, #0
	ble _02238994
	ldr r4, _02238998 ; =0x0223FB18
	add r5, r7, #0
_0223890A:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [sp]
	add r1, #8
	add r2, r2, #4
	bl ov104_022330AC
	str r0, [r5, #0x50]
	ldr r0, [r7, #0x70]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223893C
	ldr r0, [r5, #0x50]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
_0223893C:
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, r0
	blt _0223890A
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223894C:
	mov r6, #0
	cmp r0, #0
	ble _02238994
	ldr r4, _0223899C ; =0x0223FB28
	add r5, r7, #0
_02238956:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [sp]
	add r1, #8
	add r2, r2, #4
	bl ov104_022330AC
	str r0, [r5, #0x60]
	ldr r0, [r7, #0x74]
	add r1, r6, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _02238988
	ldr r0, [r5, #0x60]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
_02238988:
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, r0
	blt _02238956
_02238994:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02238998: .word 0x0223FB18
_0223899C: .word 0x0223FB28
	thumb_func_end ov104_022388DC

	thumb_func_start ov104_022389A0
ov104_022389A0: ; 0x022389A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	add r4, r1, #0
	mov r1, #1
	add r6, r2, #0
	bl ov104_0223BD70
	str r0, [sp]
	ldrb r0, [r5, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	add r7, r0, #0
	cmp r6, #0
	bne _022389DC
	ldr r0, [sp]
	mov r6, #0
	cmp r0, #0
	ble _022389F2
_022389C8:
	ldr r1, [r5, #0x50]
	add r0, r4, #0
	bl ov104_022330F0
	ldr r0, [sp]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _022389C8
	pop {r3, r4, r5, r6, r7, pc}
_022389DC:
	mov r6, #0
	cmp r7, #0
	ble _022389F2
_022389E2:
	ldr r1, [r5, #0x60]
	add r0, r4, #0
	bl ov104_022330F0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r7
	blt _022389E2
_022389F2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022389A0

	thumb_func_start ov104_022389F4
ov104_022389F4: ; 0x022389F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	add r6, r2, #0
	add r4, r3, #0
	bl ov104_0223BD70
	add r7, r0, #0
	ldrb r0, [r5, #0x10]
	mov r1, #1
	bl ov104_0223BDA4
	cmp r6, #0
	bne _02238A62
	cmp r4, r7
	bge _02238AB0
	ldr r0, [r5, #0x70]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	cmp r1, #1
	bne _02238A52
	cmp r0, #0
	bne _02238A42
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A42:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A52:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x50]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A62:
	cmp r4, r0
	bge _02238AB0
	ldr r0, [r5, #0x74]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, sp, #8
	ldrh r1, [r1, #0x10]
	cmp r1, #1
	bne _02238AA2
	cmp r0, #0
	bne _02238A92
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238A92:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_02238AA2:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, #0x60]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02021CAC
_02238AB0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_022389F4

	thumb_func_start ov104_02238AB4
ov104_02238AB4: ; 0x02238AB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	cmp r1, #0
	bne _02238AC6
	mov r5, #0x1e
	mov r6, #0x8f
	lsl r5, r5, #4
	b _02238ACC
_02238AC6:
	mov r6, #0x8e
	add r5, r6, #0
	add r5, #0x92
_02238ACC:
	mov r1, #2
	mov r0, #0x5e
	lsl r1, r1, #0xc
	bl sub_02018144
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0xc
	add r4, r0, #0
	bl memset
	mov r0, #0x96
	mov r1, #0x5e
	bl sub_02006C24
	add r1, r6, #0
	add r2, sp, #8
	mov r3, #0x5e
	str r0, [sp, #4]
	bl sub_020071EC
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	mov r2, #1
	ldr r0, [r0, #0xc]
	add r1, r4, #0
	lsl r2, r2, #0xc
	add r3, r7, #0
	bl sub_0200393C
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl DC_FlushRange
	bl GX_BeginLoadBGExtPltt
	mov r1, #6
	add r0, r4, #0
	lsl r1, r1, #0xc
	add r2, r5, #0
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldr r0, [sp, #4]
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238AB4

	thumb_func_start ov104_02238B40
ov104_02238B40: ; 0x02238B40
	push {r3, lr}
	cmp r1, #5
	bhi _02238B84
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02238B52: ; jump table
	.short _02238B5E - _02238B52 - 2 ; case 0
	.short _02238B64 - _02238B52 - 2 ; case 1
	.short _02238B6A - _02238B52 - 2 ; case 2
	.short _02238B70 - _02238B52 - 2 ; case 3
	.short _02238B78 - _02238B52 - 2 ; case 4
	.short _02238B80 - _02238B52 - 2 ; case 5
_02238B5E:
	bl ov104_0222F86C
	pop {r3, pc}
_02238B64:
	bl ov104_0222F8D0
	pop {r3, pc}
_02238B6A:
	bl ov104_0222F944
	pop {r3, pc}
_02238B70:
	add r1, r2, #0
	bl ov104_0222FA38
	pop {r3, pc}
_02238B78:
	add r1, r2, #0
	bl ov104_0222FA84
	pop {r3, pc}
_02238B80:
	bl ov104_0222FAD0
_02238B84:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02238B40

	thumb_func_start ov104_02238B88
ov104_02238B88: ; 0x02238B88
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	cmp r6, #9
	bhs _02238B9E
	ldrb r0, [r5, #0x10]
	mov r1, #1
	ldr r4, [r5, #0x74]
	bl ov104_0223BDA4
	b _02238BA8
_02238B9E:
	ldrb r0, [r5, #0x10]
	mov r1, #1
	ldr r4, [r5, #0x70]
	bl ov104_0223BD70
_02238BA8:
	ldr r3, _02238BB8 ; =0x02241A38
	add r1, r4, #0
	lsl r4, r6, #2
	add r2, r0, #0
	ldr r3, [r3, r4]
	add r0, r5, #0
	blx r3
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02238BB8: .word 0x02241A38
	thumb_func_end ov104_02238B88

	thumb_func_start ov104_02238BBC
ov104_02238BBC: ; 0x02238BBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	mov r5, #0
	str r1, [sp]
	cmp r7, #0
	ble _02238C0C
_02238BCA:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0xa4
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	add r4, r0, #0
	bl _d_utod
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02238C10 ; =0x33333333
	ldr r1, _02238C14 ; =0x3FF33333
	bl _d_mul
	bl _d_dtou
	str r0, [sp, #4]
	sub r0, r0, r4
	str r0, [sp, #4]
	sub r0, r4, r0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0xa3
	add r2, sp, #4
	bl sub_02074B30
	add r5, r5, #1
	cmp r5, r7
	blt _02238BCA
_02238C0C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02238C10: .word 0x33333333
_02238C14: .word 0x3FF33333
	thumb_func_end ov104_02238BBC

	thumb_func_start ov104_02238C18
ov104_02238C18: ; 0x02238C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #8]
	str r0, [sp]
	mov r5, #0
	ldr r0, [sp, #8]
	str r1, [sp, #4]
	str r5, [sp, #0xc]
	cmp r0, #0
	ble _02238C88
_02238C2C:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	cmp r6, #3
	beq _02238C6A
	cmp r7, #3
	beq _02238C6A
	cmp r6, #8
	beq _02238C6A
	cmp r7, #8
	beq _02238C6A
	cmp r0, #0x11
	bne _02238C72
_02238C6A:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _02238C80
_02238C72:
	mov r0, #8
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0x10
	bl sub_02074B30
_02238C80:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _02238C2C
_02238C88:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _02238C96
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x1f]
_02238C96:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02238C18

	thumb_func_start ov104_02238C9C
ov104_02238C9C: ; 0x02238C9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #8]
	str r0, [sp]
	mov r6, #0
	ldr r0, [sp, #8]
	add r5, r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _02238D02
_02238CB0:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	cmp r7, #4
	beq _02238CE8
	ldr r1, [sp, #0xc]
	cmp r1, #4
	beq _02238CE8
	cmp r0, #7
	bne _02238CEC
_02238CE8:
	add r6, r6, #1
	b _02238CFA
_02238CEC:
	mov r0, #0x40
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0x10
	bl sub_02074B30
_02238CFA:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _02238CB0
_02238D02:
	ldr r0, [sp, #8]
	cmp r6, r0
	blt _02238D0E
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x1f]
_02238D0E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02238C9C

	thumb_func_start ov104_02238D14
ov104_02238D14: ; 0x02238D14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r2, [sp, #8]
	str r0, [sp]
	mov r6, #0
	ldr r0, [sp, #8]
	add r5, r6, #0
	str r1, [sp, #4]
	cmp r0, #0
	ble _02238D7A
_02238D28:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	cmp r7, #0xa
	beq _02238D60
	ldr r1, [sp, #0xc]
	cmp r1, #0xa
	beq _02238D60
	cmp r0, #0x29
	bne _02238D64
_02238D60:
	add r6, r6, #1
	b _02238D72
_02238D64:
	mov r0, #0x10
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0x10
	bl sub_02074B30
_02238D72:
	ldr r0, [sp, #8]
	add r5, r5, #1
	cmp r5, r0
	blt _02238D28
_02238D7A:
	ldr r0, [sp, #8]
	cmp r6, r0
	blt _02238D86
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x1f]
_02238D86:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02238D14

	thumb_func_start ov104_02238D8C
ov104_02238D8C: ; 0x02238D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldrh r0, [r0, #0x20]
	add r5, r2, #0
	str r1, [sp, #4]
	add r1, r5, #0
	mov r6, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	add r7, r6, #0
	cmp r5, #0
	ble _02238DFA
_02238DAA:
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xa
	mov r2, #0
	str r0, [sp, #8]
	bl sub_02074470
	cmp r0, #0xf
	beq _02238DC4
	cmp r0, #0x48
	bne _02238DD4
_02238DC4:
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r6, r6, #1
	cmp r4, r5
	blo _02238DF4
	mov r4, #0
	b _02238DF4
_02238DD4:
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	mov r1, #0xa0
	add r2, sp, #0xc
	bl sub_02074B30
	b _02238DFA
_02238DF4:
	add r7, r7, #1
	cmp r7, r5
	blt _02238DAA
_02238DFA:
	cmp r6, r5
	blt _02238E04
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x1f]
_02238E04:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238D8C

	thumb_func_start ov104_02238E08
ov104_02238E08: ; 0x02238E08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldrh r0, [r0, #0x20]
	add r6, r2, #0
	str r1, [sp, #4]
	add r1, r6, #0
	mov r7, #0
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
	add r0, r7, #0
	str r0, [sp, #8]
	cmp r6, #0
	ble _02238E8C
_02238E28:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #0xb1
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xb2
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0xc]
	cmp r1, #0xf
	beq _02238E62
	ldr r1, [sp, #0x10]
	cmp r1, #0xf
	beq _02238E62
	cmp r0, #0x28
	bne _02238E72
_02238E62:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r7, r7, #1
	cmp r5, r6
	blo _02238E82
	mov r5, #0
	b _02238E82
_02238E72:
	mov r0, #0x20
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0xa0
	add r2, sp, #0x14
	bl sub_02074B30
	b _02238E8C
_02238E82:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r6
	blt _02238E28
_02238E8C:
	cmp r7, r6
	blt _02238E96
	ldr r0, [sp]
	mov r1, #1
	strb r1, [r0, #0x1f]
_02238E96:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02238E08

	thumb_func_start ov104_02238E9C
ov104_02238E9C: ; 0x02238E9C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl ov104_0223C124
	cmp r0, #3
	bhs _02238EB4
	ldr r0, _02238EF4 ; =0x02241A20
	mov r1, #8
	ldr r4, [r0, #0]
	b _02238EC6
_02238EB4:
	cmp r0, #6
	bhs _02238EC0
	ldr r0, _02238EF4 ; =0x02241A20
	mov r1, #0x14
	ldr r4, [r0, #4]
	b _02238EC6
_02238EC0:
	ldr r0, _02238EF4 ; =0x02241A20
	mov r1, #0xa
	ldr r4, [r0, #8]
_02238EC6:
	ldrh r0, [r7, #0x20]
	bl _s32_div_f
	lsl r0, r1, #1
	ldrh r1, [r4, r0]
	add r0, sp, #0
	mov r4, #0
	strh r1, [r0]
	cmp r5, #0
	ble _02238EF2
	mov r7, #6
_02238EDC:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r7, #0
	add r2, sp, #0
	bl sub_02074B30
	add r4, r4, #1
	cmp r4, r5
	blt _02238EDC
_02238EF2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02238EF4: .word 0x02241A20
	thumb_func_end ov104_02238E9C

	thumb_func_start ov104_02238EF8
ov104_02238EF8: ; 0x02238EF8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl ov104_0223C124
	cmp r0, #3
	bhs _02238F10
	ldr r0, _02238F50 ; =0x02241A20
	mov r1, #0xb
	ldr r4, [r0, #0xc]
	b _02238F22
_02238F10:
	cmp r0, #6
	bhs _02238F1C
	ldr r0, _02238F50 ; =0x02241A20
	mov r1, #0xd
	ldr r4, [r0, #0x10]
	b _02238F22
_02238F1C:
	ldr r0, _02238F50 ; =0x02241A20
	mov r1, #0xb
	ldr r4, [r0, #0x14]
_02238F22:
	ldrh r0, [r7, #0x20]
	bl _s32_div_f
	lsl r0, r1, #1
	ldrh r1, [r4, r0]
	add r0, sp, #0
	mov r4, #0
	strh r1, [r0]
	cmp r5, #0
	ble _02238F4E
	mov r7, #6
_02238F38:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0207A0FC
	add r1, r7, #0
	add r2, sp, #0
	bl sub_02074B30
	add r4, r4, #1
	cmp r4, r5
	blt _02238F38
_02238F4E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02238F50: .word 0x02241A20
	thumb_func_end ov104_02238EF8

	thumb_func_start ov104_02238F54
ov104_02238F54: ; 0x02238F54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	mov r4, #0
	str r1, [sp]
	cmp r7, #0
	ble _02238FA8
_02238F62:
	ldr r0, [sp]
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	add r6, r0, #3
	cmp r6, #0x64
	bls _02238F80
	bl GF_AssertFail
	mov r6, #0x64
_02238F80:
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r1, r6, #0
	bl sub_02075AD0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #8
	add r2, sp, #4
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	add r4, r4, #1
	cmp r4, r7
	blt _02238F62
_02238FA8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_02238F54

	thumb_func_start ov104_02238FAC
ov104_02238FAC: ; 0x02238FAC
	ldr r1, _02238FB4 ; =0x000003E9
	str r1, [r0, #0x14]
	bx lr
	nop
_02238FB4: .word 0x000003E9
	thumb_func_end ov104_02238FAC

	thumb_func_start ov104_02238FB8
ov104_02238FB8: ; 0x02238FB8
	mov r1, #2
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02238FB8

	thumb_func_start ov104_02238FC0
ov104_02238FC0: ; 0x02238FC0
	mov r1, #0xa
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02238FC0

	thumb_func_start ov104_02238FC8
ov104_02238FC8: ; 0x02238FC8
	mov r1, #5
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02238FC8

	thumb_func_start ov104_02238FD0
ov104_02238FD0: ; 0x02238FD0
	mov r1, #0xe
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02238FD0

	thumb_func_start ov104_02238FD8
ov104_02238FD8: ; 0x02238FD8
	ldr r1, _02238FE0 ; =0x000003EA
	str r1, [r0, #0x14]
	bx lr
	nop
_02238FE0: .word 0x000003EA
	thumb_func_end ov104_02238FD8

	thumb_func_start ov104_02238FE4
ov104_02238FE4: ; 0x02238FE4
	ldrb r1, [r0, #0x1c]
	cmp r1, #7
	bhs _02238FEE
	add r1, r1, #1
	strb r1, [r0, #0x1c]
_02238FEE:
	bx lr
	thumb_func_end ov104_02238FE4

	thumb_func_start ov104_02238FF0
ov104_02238FF0: ; 0x02238FF0
	ldrb r1, [r0, #0x1c]
	cmp r1, #0
	beq _02238FFA
	sub r1, r1, #1
	strb r1, [r0, #0x1c]
_02238FFA:
	bx lr
	thumb_func_end ov104_02238FF0

	thumb_func_start ov104_02238FFC
ov104_02238FFC: ; 0x02238FFC
	mov r1, #1
	strb r1, [r0, #0x12]
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02238FFC

	thumb_func_start ov104_02239004
ov104_02239004: ; 0x02239004
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02239004

	thumb_func_start ov104_02239008
ov104_02239008: ; 0x02239008
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02239008

	thumb_func_start ov104_0223900C
ov104_0223900C: ; 0x0223900C
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0223900C

	thumb_func_start ov104_02239010
ov104_02239010: ; 0x02239010
	bx lr
	; .align 2, 0
	thumb_func_end ov104_02239010

	thumb_func_start ov104_02239014
ov104_02239014: ; 0x02239014
	ldrb r3, [r0, #0x10]
	ldrh r2, [r0, #0x1a]
	cmp r3, #1
	bhi _0223902A
	cmp r2, #8
	blo _02239024
	mov r1, #6
	b _02239036
_02239024:
	ldr r1, _0223904C ; =0x0223FC7C
	ldrb r1, [r1, r2]
	b _02239036
_0223902A:
	cmp r2, #8
	blo _02239032
	mov r1, #0x11
	b _02239036
_02239032:
	ldr r1, _02239050 ; =0x0223FC88
	ldrb r1, [r1, r2]
_02239036:
	cmp r3, #0
	bne _02239046
	ldrh r0, [r0, #0x18]
	cmp r0, #0x15
	beq _02239044
	cmp r0, #0x31
	bne _02239046
_02239044:
	mov r1, #0x14
_02239046:
	add r0, r1, #0
	bx lr
	nop
_0223904C: .word 0x0223FC7C
_02239050: .word 0x0223FC88
	thumb_func_end ov104_02239014

	thumb_func_start ov104_02239054
ov104_02239054: ; 0x02239054
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0207A0FC
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A0FC
	mov r1, #6
	add r2, sp, #0
	bl sub_02074B30
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_02239054

	.rodata


	.global Unk_ov104_0223FAE8
Unk_ov104_0223FAE8: ; 0x0223FAE8
	.incbin "incbin/overlay104_rodata.bin", 0x858, 0x860 - 0x858

	.global Unk_ov104_0223FAF0
Unk_ov104_0223FAF0: ; 0x0223FAF0
	.incbin "incbin/overlay104_rodata.bin", 0x860, 0x868 - 0x860

	.global Unk_ov104_0223FAF8
Unk_ov104_0223FAF8: ; 0x0223FAF8
	.incbin "incbin/overlay104_rodata.bin", 0x868, 0x86E - 0x868

	.global Unk_ov104_0223FAFE
Unk_ov104_0223FAFE: ; 0x0223FAFE
	.incbin "incbin/overlay104_rodata.bin", 0x86E, 0x878 - 0x86E

	.global Unk_ov104_0223FB08
Unk_ov104_0223FB08: ; 0x0223FB08
	.incbin "incbin/overlay104_rodata.bin", 0x878, 0x888 - 0x878

	.global Unk_ov104_0223FB18
Unk_ov104_0223FB18: ; 0x0223FB18
	.incbin "incbin/overlay104_rodata.bin", 0x888, 0x898 - 0x888

	.global Unk_ov104_0223FB28
Unk_ov104_0223FB28: ; 0x0223FB28
	.incbin "incbin/overlay104_rodata.bin", 0x898, 0x8A8 - 0x898

	.global Unk_ov104_0223FB38
Unk_ov104_0223FB38: ; 0x0223FB38
	.incbin "incbin/overlay104_rodata.bin", 0x8A8, 0x8BC - 0x8A8

	.global Unk_ov104_0223FB4C
Unk_ov104_0223FB4C: ; 0x0223FB4C
	.incbin "incbin/overlay104_rodata.bin", 0x8BC, 0x8D2 - 0x8BC

	.global Unk_ov104_0223FB62
Unk_ov104_0223FB62: ; 0x0223FB62
	.incbin "incbin/overlay104_rodata.bin", 0x8D2, 0x8E8 - 0x8D2

	.global Unk_ov104_0223FB78
Unk_ov104_0223FB78: ; 0x0223FB78
	.incbin "incbin/overlay104_rodata.bin", 0x8E8, 0x902 - 0x8E8

	.global Unk_ov104_0223FB92
Unk_ov104_0223FB92: ; 0x0223FB92
	.incbin "incbin/overlay104_rodata.bin", 0x902, 0x92A - 0x902

	.global Unk_ov104_0223FBBA
Unk_ov104_0223FBBA: ; 0x0223FBBA
	.incbin "incbin/overlay104_rodata.bin", 0x92A, 0x9EC - 0x92A

	.global Unk_ov104_0223FC7C
Unk_ov104_0223FC7C: ; 0x0223FC7C
	.incbin "incbin/overlay104_rodata.bin", 0x9EC, 0x9F8 - 0x9EC

	.global Unk_ov104_0223FC88
Unk_ov104_0223FC88: ; 0x0223FC88
	.incbin "incbin/overlay104_rodata.bin", 0x9F8, 0x9


	.data


	.global Unk_ov104_02241A20
Unk_ov104_02241A20: ; 0x02241A20
	.incbin "incbin/overlay104_data.bin", 0x80, 0x8C - 0x80

	.global Unk_ov104_02241A2C
Unk_ov104_02241A2C: ; 0x02241A2C
	.incbin "incbin/overlay104_data.bin", 0x8C, 0x98 - 0x8C

	.global Unk_ov104_02241A38
Unk_ov104_02241A38: ; 0x02241A38
	.incbin "incbin/overlay104_data.bin", 0x98, 0x80


	.bss


	.global Unk_ov104_02241ACC
Unk_ov104_02241ACC: ; 0x02241ACC
	.space 0x4

