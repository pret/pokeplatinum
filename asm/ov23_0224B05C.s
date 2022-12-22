	.include "macros/function.inc"
	.include "include/ov23_0224B05C.inc"

	

	.text


	thumb_func_start ov23_0224B05C
ov23_0224B05C: ; 0x0224B05C
	push {r4, r5}
	asr r2, r0, #4
	lsr r2, r2, #0x1b
	add r2, r0, r2
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r3, r0, #5
	ldr r4, _0224B090 ; =0x0225760C
	ldr r5, _0224B094 ; =0x02257620
	asr r2, r2, #5
	mov r0, #0
_0224B074:
	ldrb r1, [r4]
	cmp r2, r1
	bne _0224B080
	ldrb r1, [r5]
	cmp r3, r1
	beq _0224B08C
_0224B080:
	add r0, r0, #1
	add r4, r4, #1
	add r5, r5, #1
	cmp r0, #0x11
	blt _0224B074
	mov r0, #0x10
_0224B08C:
	pop {r4, r5}
	bx lr
	; .align 2, 0
_0224B090: .word 0x0225760C
_0224B094: .word 0x02257620
	thumb_func_end ov23_0224B05C

	thumb_func_start ov23_0224B098
ov23_0224B098: ; 0x0224B098
	push {r4, r5}
	sub sp, #8
	ldr r3, _0224B0D8 ; =0x0225683C
	add r2, sp, #0
	ldrh r4, [r3, #0x1c]
	strh r4, [r2]
	ldrh r4, [r3, #0x1e]
	ldrh r3, [r3, #0x20]
	strh r4, [r2, #2]
	strh r3, [r2, #4]
	ldrh r4, [r2]
	ldrh r5, [r2, #2]
	mov r3, #0
_0224B0B2:
	add r2, r4, #0
	add r2, #0x20
	cmp r0, r2
	bne _0224B0C6
	cmp r1, r5
	bne _0224B0C6
	add sp, #8
	mov r0, #1
	pop {r4, r5}
	bx lr
_0224B0C6:
	add r3, r3, #1
	add r4, #0x20
	cmp r3, #8
	blt _0224B0B2
	mov r0, #0
	add sp, #8
	pop {r4, r5}
	bx lr
	nop
_0224B0D8: .word 0x0225683C
	thumb_func_end ov23_0224B098

	thumb_func_start ov23_0224B0DC
ov23_0224B0DC: ; 0x0224B0DC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r1, _0224B124 ; =0x0225683C
	add r5, r0, #0
	ldrh r2, [r1, #0x22]
	add r0, sp, #0
	strh r2, [r0]
	ldrh r2, [r1, #0x24]
	ldrh r1, [r1, #0x26]
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	bl sub_02033DFC
	cmp r0, #0
	beq _0224B10A
	add r0, sp, #0
	ldrh r1, [r0]
	add sp, #8
	strh r1, [r4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
_0224B10A:
	cmp r5, #0x10
	bne _0224B110
	mov r5, #0
_0224B110:
	add r0, sp, #0
	ldrh r2, [r0]
	lsl r1, r5, #5
	add r1, r2, r1
	add r1, #0x20
	strh r1, [r4]
	ldrh r0, [r0, #2]
	strh r0, [r4, #2]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B124: .word 0x0225683C
	thumb_func_end ov23_0224B0DC

	thumb_func_start ov23_0224B128
ov23_0224B128: ; 0x0224B128
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02036180
	cmp r0, #0
	beq _0224B138
	mov r5, #0x10
_0224B138:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_0224B0DC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224B128

	thumb_func_start ov23_0224B144
ov23_0224B144: ; 0x0224B144
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _0224B274 ; =0x022577AC
	str r1, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224B154
	b _0224B272
_0224B154:
	bl sub_02028554
	cmp r0, #0x94
	beq _0224B160
	bl GF_AssertFail
_0224B160:
	ldr r0, _0224B274 ; =0x022577AC
	ldr r2, _0224B278 ; =0x000013E8
	str r4, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, _0224B274 ; =0x022577AC
	ldr r1, [sp]
	ldr r2, [r0, #0]
	mov r7, #0xff
	str r1, [r2, #0]
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
_0224B17E:
	ldr r4, [r0, #0]
	ldr r5, _0224B27C ; =0x00001284
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	add r5, r5, #2
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	ldr r5, _0224B284 ; =0x000012B4
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	add r5, r5, #2
	add r6, r4, r2
	ldr r4, _0224B280 ; =0x00000FFF
	add r2, r2, #6
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B288 ; =0x0000136B
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B28C ; =0x00001373
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B290 ; =0x00001363
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B294 ; =0x0000137B
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B298 ; =0x0000134B
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B29C ; =0x00001353
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	add r5, r4, r1
	ldr r4, _0224B2A0 ; =0x0000135B
	add r1, r1, #1
	strb r7, [r5, r4]
	ldr r4, [r0, #0]
	ldr r5, _0224B2A4 ; =0x000013AC
	add r6, r4, r3
	mov r4, #0x48
	strh r4, [r6, r5]
	ldr r4, [r0, #0]
	ldr r5, _0224B2A8 ; =0x000001B5
	add r6, r4, r3
	ldr r4, _0224B2AC ; =0x000013BC
	strh r5, [r6, r4]
	ldr r4, [r0, #0]
	mov r5, #1
	add r6, r4, r3
	ldr r4, _0224B2B0 ; =0x000013CC
	add r3, r3, #2
	strh r5, [r6, r4]
	cmp r1, #8
	blt _0224B17E
	mov r5, #0
	ldr r6, _0224B274 ; =0x022577AC
	add r4, r5, #0
	mov r7, #0xff
_0224B20E:
	ldr r0, [r6, #0]
	add r0, #0xa
	add r0, r0, r4
	bl sub_020292C0
	ldr r0, [r6, #0]
	add r4, #0x96
	add r1, r0, r5
	ldr r0, _0224B2B4 ; =0x000012E5
	strb r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B2B8 ; =0x0000133A
	add r5, r5, #1
	strb r7, [r1, r0]
	cmp r5, #0x11
	blt _0224B20E
	ldr r0, _0224B274 ; =0x022577AC
	mov r2, #0x22
	ldr r1, [r0, #0]
	ldr r0, _0224B2BC ; =0x00000A04
	lsl r2, r2, #6
	add r0, r1, r0
	add r1, r7, #0
	bl MI_CpuFill8
	ldr r0, [sp]
	bl ov23_0224B2C8
	ldr r2, _0224B274 ; =0x022577AC
	ldr r0, _0224B2C0 ; =0x000013DC
	ldr r1, [r2, #0]
	mov r3, #0x48
	strh r3, [r1, r0]
	add r1, r0, #2
	ldr r4, _0224B2A8 ; =0x000001B5
	ldr r3, [r2, #0]
	add r0, r0, #4
	strh r4, [r3, r1]
	ldr r1, [r2, #0]
	mov r3, #1
	strb r3, [r1, r0]
	ldr r0, _0224B2C4 ; =ov23_0224C5B4
	mov r1, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _0224B274 ; =0x022577AC
	ldr r1, [r1, #0]
	str r0, [r1, #4]
_0224B272:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224B274: .word 0x022577AC
_0224B278: .word 0x000013E8
_0224B27C: .word 0x00001284
_0224B280: .word 0x00000FFF
_0224B284: .word 0x000012B4
_0224B288: .word 0x0000136B
_0224B28C: .word 0x00001373
_0224B290: .word 0x00001363
_0224B294: .word 0x0000137B
_0224B298: .word 0x0000134B
_0224B29C: .word 0x00001353
_0224B2A0: .word 0x0000135B
_0224B2A4: .word 0x000013AC
_0224B2A8: .word 0x000001B5
_0224B2AC: .word 0x000013BC
_0224B2B0: .word 0x000013CC
_0224B2B4: .word 0x000012E5
_0224B2B8: .word 0x0000133A
_0224B2BC: .word 0x00000A04
_0224B2C0: .word 0x000013DC
_0224B2C4: .word ov23_0224C5B4
	thumb_func_end ov23_0224B144

	thumb_func_start ov23_0224B2C8
ov23_0224B2C8: ; 0x0224B2C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203D174
	bl sub_02029894
	add r4, r0, #0
	bl sub_020298AC
	add r6, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	bl sub_0202D034
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020294D4
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r2, [r1, #0]
	ldr r1, _0224B330 ; =0x0000096A
	add r1, r2, r1
	mov r2, #0x94
	bl MI_CpuCopy8
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r2, [r1, #0]
	ldr r1, _0224B334 ; =0x00001204
	add r1, r2, r1
	bl ov23_0224B39C
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #0x94
	add r1, #0xa
	bl MI_CpuCopy8
	ldr r1, _0224B32C ; =0x022577AC
	add r0, r4, #0
	ldr r2, [r1, #0]
	ldr r1, _0224B338 ; =0x00000A04
	add r1, r2, r1
	bl ov23_0224B39C
	pop {r4, r5, r6, pc}
	nop
_0224B32C: .word 0x022577AC
_0224B330: .word 0x0000096A
_0224B334: .word 0x00001204
_0224B338: .word 0x00000A04
	thumb_func_end ov23_0224B2C8

	thumb_func_start ov23_0224B33C
ov23_0224B33C: ; 0x0224B33C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r0, #0
	mov ip, r0
	mov lr, r0
	add r0, r1, #0
	lsl r0, r0, #2
	str r1, [sp]
	str r2, [sp, #4]
	add r3, r3, r0
	mov r7, #1
_0224B354:
	ldr r1, [sp]
	mov r0, ip
	add r0, r1, r0
	cmp r0, #0x20
	bge _0224B386
	ldr r1, [sp, #4]
	mov r0, lr
	mov r2, #0
	add r4, r1, r0
_0224B366:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0224B37E
	add r1, r6, r2
	cmp r1, #0x20
	bge _0224B37E
	add r0, r7, #0
	lsl r0, r1
	ldr r5, [r3, #0]
	mvn r0, r0
	and r0, r5
	str r0, [r3, #0]
_0224B37E:
	add r2, r2, #1
	add r4, r4, #1
	cmp r2, #3
	blt _0224B366
_0224B386:
	mov r0, lr
	add r0, r0, #3
	mov lr, r0
	mov r0, ip
	add r0, r0, #1
	add r3, r3, #4
	mov ip, r0
	cmp r0, #3
	blt _0224B354
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224B33C

	thumb_func_start ov23_0224B39C
ov23_0224B39C: ; 0x0224B39C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r2, sp, #0x10
	str r1, [sp]
	ldr r3, _0224B428 ; =0x02256874
	add r5, r0, #0
	add r2, #1
	mov r1, #9
_0224B3AC:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0224B3AC
	ldr r3, _0224B42C ; =0x0225687D
	add r2, sp, #8
	mov r1, #9
_0224B3BE:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0224B3BE
	ldr r0, [sp]
	mov r1, #0xff
	mov r2, #0x80
	bl MI_CpuFill8
	mov r4, #0
_0224B3D6:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293B0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0224B41C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293FC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202942C
	add r6, r0, #0
	cmp r4, #0
	bne _0224B402
	add r2, sp, #0x10
	add r2, #1
	b _0224B412
_0224B402:
	cmp r4, #0x10
	bge _0224B410
	ldr r0, [sp, #4]
	bl sub_0205741C
	add r2, r0, #0
	b _0224B412
_0224B410:
	add r2, sp, #8
_0224B412:
	ldr r3, [sp]
	add r0, r7, #0
	add r1, r6, #0
	bl ov23_0224B33C
_0224B41C:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224B3D6
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224B428: .word 0x02256874
_0224B42C: .word 0x0225687D
	thumb_func_end ov23_0224B39C

	thumb_func_start ov23_0224B430
ov23_0224B430: ; 0x0224B430
	push {r3, lr}
	bl ov23_0224C6E8
	ldr r0, _0224B458 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224B44C
	bl sub_0200DA58
	ldr r0, _0224B458 ; =0x022577AC
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #4]
_0224B44C:
	ldr r0, _0224B458 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224B45C ; =0x000013E4
	strb r2, [r1, r0]
	pop {r3, pc}
	; .align 2, 0
_0224B458: .word 0x022577AC
_0224B45C: .word 0x000013E4
	thumb_func_end ov23_0224B430

	thumb_func_start ov23_0224B460
ov23_0224B460: ; 0x0224B460
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224B4D0 ; =0x022577AC
	ldr r0, _0224B4D4 ; =0x000013E4
	ldr r2, [r1, #0]
	mov r4, #0
	strb r4, [r2, r0]
	ldr r1, [r1, #0]
	add r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224B4B2
_0224B476:
	add r0, r4, #0
	bl ov23_0224C6AC
	add r4, r4, #1
	cmp r4, #8
	blt _0224B476
	mov r5, #0
	ldr r6, _0224B4D0 ; =0x022577AC
	ldr r7, _0224B4D8 ; =0x00000FFF
	add r4, r5, #0
_0224B48A:
	ldr r1, [r6, #0]
	ldr r0, _0224B4DC ; =0x00001284
	add r0, r1, r0
	ldrh r3, [r0, r4]
	add r2, r0, r4
	cmp r3, r7
	beq _0224B4AA
	ldrh r1, [r2, #2]
	ldr r0, _0224B4D8 ; =0x00000FFF
	cmp r1, r0
	beq _0224B4AA
	ldrb r2, [r2, #4]
	add r0, r3, #0
	add r3, r5, #0
	bl ov23_0224C588
_0224B4AA:
	add r5, r5, #1
	add r4, r4, #6
	cmp r5, #8
	blt _0224B48A
_0224B4B2:
	ldr r0, _0224B4D0 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224B4CC
	ldr r0, _0224B4E0 ; =ov23_0224C5B4
	mov r1, #0
	mov r2, #0x64
	bl sub_0200D9E8
	ldr r1, _0224B4D0 ; =0x022577AC
	ldr r1, [r1, #0]
	str r0, [r1, #4]
_0224B4CC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B4D0: .word 0x022577AC
_0224B4D4: .word 0x000013E4
_0224B4D8: .word 0x00000FFF
_0224B4DC: .word 0x00001284
_0224B4E0: .word ov23_0224C5B4
	thumb_func_end ov23_0224B460

	thumb_func_start ov23_0224B4E4
ov23_0224B4E4: ; 0x0224B4E4
	push {r3, lr}
	ldr r0, _0224B514 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0224B4FC
	bl sub_0200DA58
	ldr r0, _0224B514 ; =0x022577AC
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #4]
_0224B4FC:
	bl ov23_0224C6E8
	ldr r0, _0224B514 ; =0x022577AC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224B50C
	bl sub_020181C4
_0224B50C:
	ldr r0, _0224B514 ; =0x022577AC
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0224B514: .word 0x022577AC
	thumb_func_end ov23_0224B4E4

	thumb_func_start ov23_0224B518
ov23_0224B518: ; 0x0224B518
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224B57C ; =0x00000FFF
	ldr r6, _0224B580 ; =0x022577AC
	str r4, [sp]
	add r5, r4, #0
_0224B524:
	ldr r0, [r6, #0]
	add r0, #0xa
	add r0, r0, r4
	bl sub_02029300
	ldr r0, [r6, #0]
	add r4, #0x96
	add r1, r0, r5
	ldr r0, _0224B584 ; =0x00001284
	strh r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B588 ; =0x00001286
	strh r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B58C ; =0x000012B4
	strh r7, [r1, r0]
	ldr r0, [r6, #0]
	add r1, r0, r5
	ldr r0, _0224B590 ; =0x000012B6
	add r5, r5, #6
	strh r7, [r1, r0]
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	cmp r0, #8
	blt _0224B524
	ldr r0, _0224B580 ; =0x022577AC
	mov r2, #0x22
	ldr r1, [r0, #0]
	ldr r0, _0224B594 ; =0x00000A04
	lsl r2, r2, #6
	add r0, r1, r0
	mov r1, #0xff
	bl MI_CpuFill8
	ldr r0, _0224B580 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov23_0224B2C8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B57C: .word 0x00000FFF
_0224B580: .word 0x022577AC
_0224B584: .word 0x00001284
_0224B588: .word 0x00001286
_0224B58C: .word 0x000012B4
_0224B590: .word 0x000012B6
_0224B594: .word 0x00000A04
	thumb_func_end ov23_0224B518

	thumb_func_start ov23_0224B598
ov23_0224B598: ; 0x0224B598
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _0224B5C0 ; =0x022577AC
	add r5, r4, #0
_0224B5A0:
	ldr r0, [r6, #0]
	add r0, #0xa
	add r0, r0, r5
	bl sub_020292C0
	add r4, r4, #1
	add r5, #0x96
	cmp r4, #0x11
	blt _0224B5A0
	ldr r0, _0224B5C0 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov23_0224B2C8
	pop {r4, r5, r6, pc}
	nop
_0224B5C0: .word 0x022577AC
	thumb_func_end ov23_0224B598

	thumb_func_start ov23_0224B5C4
ov23_0224B5C4: ; 0x0224B5C4
	ldr r0, _0224B5C8 ; =0x000013E8
	bx lr
	; .align 2, 0
_0224B5C8: .word 0x000013E8
	thumb_func_end ov23_0224B5C4

	thumb_func_start ov23_0224B5CC
ov23_0224B5CC: ; 0x0224B5CC
	push {r4, r5}
	ldr r2, _0224B610 ; =0x022577AC
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _0224B60A
	add r4, r1, r0
	ldr r1, _0224B614 ; =0x00001363
	mov r3, #0xff
	strb r3, [r4, r1]
	ldr r4, [r2, #0]
	add r5, r4, r0
	add r4, r1, #0
	add r4, #8
	strb r3, [r5, r4]
	ldr r4, [r2, #0]
	add r5, r4, r0
	add r4, r1, #0
	add r4, #0x10
	strb r3, [r5, r4]
	mov r3, #6
	mul r3, r0
	ldr r4, [r2, #0]
	ldr r0, _0224B618 ; =0x00000FFF
	add r5, r4, r3
	add r4, r1, #0
	sub r4, #0xaf
	strh r0, [r5, r4]
	ldr r2, [r2, #0]
	sub r1, #0xad
	add r2, r2, r3
	strh r0, [r2, r1]
_0224B60A:
	pop {r4, r5}
	bx lr
	nop
_0224B610: .word 0x022577AC
_0224B614: .word 0x00001363
_0224B618: .word 0x00000FFF
	thumb_func_end ov23_0224B5CC

	thumb_func_start ov23_0224B61C
ov23_0224B61C: ; 0x0224B61C
	push {r3, r4, r5, lr}
	ldr r1, _0224B648 ; =0x022577AC
	add r4, r0, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224B646
	bl ov23_0224C6AC
	ldr r1, _0224B648 ; =0x022577AC
	mov r0, #6
	add r5, r4, #0
	mul r5, r0
	ldr r0, [r1, #0]
	ldr r3, _0224B64C ; =0x00000FFF
	add r2, r0, r5
	ldr r0, _0224B650 ; =0x00001284
	strh r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, r0, #2
	add r1, r1, r5
	strh r3, [r1, r0]
_0224B646:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B648: .word 0x022577AC
_0224B64C: .word 0x00000FFF
_0224B650: .word 0x00001284
	thumb_func_end ov23_0224B61C

	thumb_func_start ov23_0224B654
ov23_0224B654: ; 0x0224B654
	ldr r3, _0224B658 ; =sub_02059514
	bx r3
	; .align 2, 0
_0224B658: .word sub_02059514
	thumb_func_end ov23_0224B654

	thumb_func_start ov23_0224B65C
ov23_0224B65C: ; 0x0224B65C
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r7, r0, #0
	str r1, [sp]
	add r5, r6, #0
_0224B666:
	ldr r0, _0224B6A8 ; =0x022577AC
	ldr r4, [r0, #0]
	add r4, #0xa
	add r0, r4, r5
	bl sub_0202988C
	cmp r0, #0
	beq _0224B69A
	add r0, r6, #0
	bl sub_02058C90
	cmp r0, #0
	beq _0224B69A
	add r0, r4, r5
	bl sub_02029874
	cmp r7, r0
	bne _0224B69A
	add r0, r4, r5
	bl sub_0202987C
	ldr r1, [sp]
	cmp r1, r0
	bne _0224B69A
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224B69A:
	add r6, r6, #1
	add r5, #0x96
	cmp r6, #8
	blt _0224B666
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B6A8: .word 0x022577AC
	thumb_func_end ov23_0224B65C

	thumb_func_start ov23_0224B6AC
ov23_0224B6AC: ; 0x0224B6AC
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r2, #0
	ldrb r4, [r5, #4]
	bl sub_0203608C
	cmp r4, r0
	bne _0224B6F4
	ldr r0, _0224B6F8 ; =0x022577AC
	ldr r1, _0224B6FC ; =0x000013E4
	ldr r0, [r0, #0]
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _0224B6F4
	ldrb r1, [r5, #7]
	cmp r1, #0
	str r4, [sp]
	beq _0224B6E4
	ldrb r1, [r5, #5]
	mov r3, #0
	str r1, [sp, #4]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldr r0, [r0, #0]
	bl ov23_0224C090
	add sp, #8
	pop {r3, r4, r5, pc}
_0224B6E4:
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	ldrh r1, [r5]
	ldrh r2, [r5, #2]
	ldrb r3, [r5, #6]
	ldr r0, [r0, #0]
	bl ov23_0224BC5C
_0224B6F4:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224B6F8: .word 0x022577AC
_0224B6FC: .word 0x000013E4
	thumb_func_end ov23_0224B6AC

	thumb_func_start ov23_0224B700
ov23_0224B700: ; 0x0224B700
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _0224B724
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224B728 ; =ov23_0224B654
	mov r1, #0x58
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224DC24
_0224B724:
	pop {r4, pc}
	nop
_0224B728: .word ov23_0224B654
	thumb_func_end ov23_0224B700

	thumb_func_start ov23_0224B72C
ov23_0224B72C: ; 0x0224B72C
	mov r0, #8
	bx lr
	thumb_func_end ov23_0224B72C

	thumb_func_start ov23_0224B730
ov23_0224B730: ; 0x0224B730
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, sp, #0
	add r4, r2, #0
	strb r5, [r0]
	bl sub_0203608C
	cmp r0, #0
	beq _0224B748
	bl GF_AssertFail
	pop {r3, r4, r5, pc}
_0224B748:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0224B780
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldrb r0, [r4]
	beq _0224B776
	add r1, r5, #0
	bl ov23_0224B79C
	cmp r0, #0
	bne _0224B78C
	ldr r0, _0224B790 ; =0x022577AC
	mov r2, #0xff
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224B794 ; =0x0000136B
	strb r2, [r1, r0]
	mov r0, #0x3d
	add r1, sp, #0
	bl sub_02035B48
	pop {r3, r4, r5, pc}
_0224B776:
	add r1, r5, #0
	mov r2, #0
	bl ov23_0224B844
	pop {r3, r4, r5, pc}
_0224B780:
	ldr r0, _0224B790 ; =0x022577AC
	mov r2, #0xff
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224B794 ; =0x0000136B
	strb r2, [r1, r0]
_0224B78C:
	pop {r3, r4, r5, pc}
	nop
_0224B790: .word 0x022577AC
_0224B794: .word 0x0000136B
	thumb_func_end ov23_0224B730

	thumb_func_start ov23_0224B798
ov23_0224B798: ; 0x0224B798
	mov r0, #3
	bx lr
	thumb_func_end ov23_0224B798

	thumb_func_start ov23_0224B79C
ov23_0224B79C: ; 0x0224B79C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224B838 ; =0x022577AC
	add r6, r1, #0
	ldr r1, [r0, #0]
	mov r0, #0x96
	add r1, #8
	mul r0, r5
	add r0, r1, r0
	str r0, [sp]
	add r0, r0, #2
	bl sub_0202988C
	cmp r0, #0
	bne _0224B7C2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B7C2:
	mov r0, #0x36
	bl sub_02036254
	cmp r0, #0
	beq _0224B7D2
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B7D2:
	ldr r7, _0224B838 ; =0x022577AC
	mov r4, #0
_0224B7D6:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224B7F4
	ldr r0, [r7, #0]
	add r1, r0, r4
	ldr r0, _0224B83C ; =0x00001373
	ldrb r0, [r1, r0]
	cmp r5, r0
	bne _0224B7F4
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B7F4:
	add r4, r4, #1
	cmp r4, #8
	blt _0224B7D6
	add r0, r5, #0
	add r1, sp, #4
	bl ov23_0224B128
	ldr r0, [sp]
	strb r6, [r0, #1]
	add r0, r5, #0
	bl ov23_0224C23C
	ldr r2, _0224B838 ; =0x022577AC
	lsl r0, r5, #0x18
	ldr r1, [r2, #0]
	lsr r0, r0, #0x18
	add r3, r1, r6
	ldr r1, _0224B840 ; =0x0000136B
	strb r0, [r3, r1]
	ldr r2, [r2, #0]
	add r1, #8
	add r2, r2, r6
	strb r0, [r2, r1]
	add r2, sp, #4
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	add r0, r6, #0
	mov r3, #0
	bl ov23_0224ADB0
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224B838: .word 0x022577AC
_0224B83C: .word 0x00001373
_0224B840: .word 0x0000136B
	thumb_func_end ov23_0224B79C

	thumb_func_start ov23_0224B844
ov23_0224B844: ; 0x0224B844
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r1, sp, #4
	add r4, r0, #0
	str r2, [sp]
	bl ov23_0224B0DC
	ldr r0, _0224B8D0 ; =0x022577AC
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224B8D4 ; =0x0000136B
	strb r4, [r1, r0]
	bl sub_02036180
	cmp r0, #0
	beq _0224B878
	ldr r0, _0224B8D0 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224B8D8 ; =0x000013DC
	add r1, r0, #2
	ldrh r4, [r2, r0]
	add r0, r0, #4
	ldrh r7, [r2, r1]
	ldrb r6, [r2, r0]
	b _0224B88E
_0224B878:
	ldr r0, _0224B8D0 ; =0x022577AC
	lsl r1, r5, #1
	ldr r0, [r0, #0]
	add r2, r0, r1
	ldr r1, _0224B8DC ; =0x000013AC
	add r0, r1, #0
	ldrh r4, [r2, r1]
	add r0, #0x10
	add r1, #0x20
	ldrh r7, [r2, r0]
	ldrh r6, [r2, r1]
_0224B88E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov23_0224ADB0
	add r0, r6, #0
	bl sub_0206419C
	add r4, r4, r0
	add r0, r6, #0
	bl sub_020641A8
	add r1, sp, #4
	add r0, r7, r0
	strh r4, [r1, #6]
	strh r0, [r1, #8]
	strb r5, [r1, #0xa]
	ldr r0, [sp]
	strb r6, [r1, #0xb]
	strb r0, [r1, #0xc]
	add r1, sp, #8
	mov r0, #0x39
	add r1, #2
	bl sub_02035B48
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224B8D0: .word 0x022577AC
_0224B8D4: .word 0x0000136B
_0224B8D8: .word 0x000013DC
_0224B8DC: .word 0x000013AC
	thumb_func_end ov23_0224B844

	thumb_func_start ov23_0224B8E0
ov23_0224B8E0: ; 0x0224B8E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r0, #0
	ldr r0, _0224BA3C ; =0x022577AC
	add r7, r1, #0
	ldr r0, [r0, #0]
	str r2, [sp]
	cmp r0, #0
	bne _0224B8F8
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B8F8:
	cmp r6, #0
	beq _0224B90E
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0224B90E
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B90E:
	add r0, r6, #0
	bl ov23_0224ACC0
	cmp r0, #0
	beq _0224B91E
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B91E:
	ldr r0, _0224BA3C ; =0x022577AC
	ldr r0, [r0, #0]
	add r1, r0, r6
	ldr r0, _0224BA40 ; =0x0000136B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224B932
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B932:
	ldr r1, [sp]
	add r0, r7, #0
	bl ov23_0224B65C
	cmp r0, #0xff
	beq _0224B976
	ldr r1, _0224BA3C ; =0x022577AC
	lsl r0, r0, #0x18
	ldr r1, [r1, #0]
	lsr r0, r0, #0x18
	add r2, r1, r6
	ldr r1, _0224BA40 ; =0x0000136B
	strb r0, [r2, r1]
	mov r1, #1
	add r2, sp, #4
	strb r1, [r2, #7]
	ldr r1, [sp]
	strh r7, [r2]
	strh r1, [r2, #2]
	mov r1, #0
	strb r1, [r2, #6]
	strb r6, [r2, #4]
	strb r0, [r2, #5]
	mov r0, #0x3a
	add r1, sp, #4
	bl sub_02035B48
	add r0, r6, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B976:
	mov r5, #0
	add r4, r5, #0
_0224B97A:
	ldr r0, _0224BA3C ; =0x022577AC
	ldr r0, [r0, #0]
	add r0, #0xa
	add r0, r0, r4
	bl sub_0202988C
	cmp r0, #0
	beq _0224B9DA
	add r0, r5, #0
	add r1, sp, #0xc
	bl ov23_0224B0DC
	add r0, sp, #4
	ldrh r0, [r0, #8]
	cmp r7, r0
	bne _0224B9DA
	add r0, sp, #4
	ldrh r1, [r0, #0xa]
	ldr r0, [sp]
	cmp r0, r1
	bne _0224B9DA
	ldr r1, _0224BA3C ; =0x022577AC
	lsl r0, r5, #0x18
	ldr r1, [r1, #0]
	lsr r0, r0, #0x18
	add r2, r1, r6
	ldr r1, _0224BA40 ; =0x0000136B
	mov r3, #0
	strb r0, [r2, r1]
	add r2, sp, #4
	strb r3, [r2, #7]
	ldr r1, [sp]
	strh r7, [r2]
	strh r1, [r2, #2]
	strb r3, [r2, #6]
	strb r6, [r2, #4]
	strb r0, [r2, #5]
	mov r0, #0x3a
	add r1, sp, #4
	bl sub_02035B48
	add r0, r6, #0
	mov r1, #0
	bl sub_02059058
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224B9DA:
	add r5, r5, #1
	add r4, #0x96
	cmp r5, #8
	ble _0224B97A
	ldr r1, [sp]
	add r0, r7, #0
	bl ov23_0224B098
	cmp r0, #0
	beq _0224BA36
	ldr r0, _0224BA3C ; =0x022577AC
	lsl r2, r6, #1
	ldr r1, [r0, #0]
	ldr r4, _0224BA44 ; =0x000013AC
	add r0, r1, r2
	ldrh r2, [r0, r4]
	add r3, sp, #4
	strh r2, [r3, #0xe]
	add r2, r4, #0
	add r2, #0x10
	ldrh r2, [r0, r2]
	strh r2, [r3, #0x10]
	add r2, r4, #0
	strb r6, [r3, #0x12]
	add r2, #0x20
	ldrh r0, [r0, r2]
	mov r2, #0
	sub r4, #0x41
	strb r0, [r3, #0x13]
	strb r2, [r3, #0x14]
	add r0, r1, r6
	strb r2, [r0, r4]
	ldrh r1, [r3, #0xe]
	ldrh r2, [r3, #0x10]
	ldrb r3, [r3, #0x13]
	add r0, r6, #0
	bl ov23_0224ADB0
	add r1, sp, #0x10
	mov r0, #0x39
	add r1, #2
	bl sub_02035B48
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224BA36:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BA3C: .word 0x022577AC
_0224BA40: .word 0x0000136B
_0224BA44: .word 0x000013AC
	thumb_func_end ov23_0224B8E0

	thumb_func_start ov23_0224BA48
ov23_0224BA48: ; 0x0224BA48
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224BA5A
	mov r1, #4
	bl sub_02002154
_0224BA5A:
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224BA48

	thumb_func_start ov23_0224BA6C
ov23_0224BA6C: ; 0x0224BA6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0224BA7E
	mov r1, #4
	bl sub_02002154
_0224BA7E:
	add r0, r4, #0
	mov r2, #0
	add r1, sp, #0
	strb r2, [r1, #1]
	add r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r1]
	strb r2, [r1, #2]
	mov r0, #0x3b
	add r1, sp, #0
	bl sub_020360D0
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	bl ov23_0224DC24
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224BA6C

	thumb_func_start ov23_0224BAAC
ov23_0224BAAC: ; 0x0224BAAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	mov r5, #0
	ldr r6, [r4, #0]
	cmp r0, #7
	bhi _0224BB0A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BACA: ; jump table
	.short _0224BADA - _0224BACA - 2 ; case 0
	.short _0224BAFE - _0224BACA - 2 ; case 1
	.short _0224BB24 - _0224BACA - 2 ; case 2
	.short _0224BB48 - _0224BACA - 2 ; case 3
	.short _0224BB6C - _0224BACA - 2 ; case 4
	.short _0224BB9E - _0224BACA - 2 ; case 5
	.short _0224BBC2 - _0224BACA - 2 ; case 6
	.short _0224BBE6 - _0224BACA - 2 ; case 7
_0224BADA:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224BAE8
	mov r6, #0x2f
	mov r0, #3
	b _0224BAEC
_0224BAE8:
	mov r6, #0x32
	mov r0, #1
_0224BAEC:
	str r0, [r4, #0xc]
	bl ov23_0224219C
	mov r2, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov23_02253F40
	b _0224BC14
_0224BAFE:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224BB0C
_0224BB0A:
	b _0224BC14
_0224BB0C:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224BC54 ; =0x02256864
	ldr r2, _0224BC58 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB24:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BB3A
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #7
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB3A:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BC14
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224BC14
_0224BB48:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BC14
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224BC54 ; =0x02256864
	ldr r2, _0224BC58 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #4
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB6C:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BB90
	add r0, r5, #0
	str r0, [r4, #4]
	bl ov23_0224219C
	add r2, r5, #0
	mov r1, #0x30
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #5
	str r0, [r4, #0xc]
	b _0224BC14
_0224BB90:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BC14
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224BC14
_0224BB9E:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BC14
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224BC54 ; =0x02256864
	ldr r2, _0224BC58 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #6
	str r0, [r4, #0xc]
	b _0224BC14
_0224BBC2:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BBD8
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #7
	str r0, [r4, #0xc]
	b _0224BC14
_0224BBD8:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BC14
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224BC14
_0224BBE6:
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #1
	add r1, sp, #4
	strb r0, [r1, #1]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r1]
	add r0, r5, #0
	strb r0, [r1, #2]
	mov r0, #0x3b
	add r1, sp, #4
	bl sub_020360D0
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224BC14:
	bl sub_02033DFC
	cmp r0, #0
	bne _0224BC38
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #8
	bhs _0224BC38
	bl sub_02035D78
	cmp r0, #0
	bne _0224BC38
	bl sub_0203608C
	cmp r0, #0
	beq _0224BC38
	mov r5, #1
_0224BC38:
	cmp r5, #0
	beq _0224BC50
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA6C
	bl sub_02059514
_0224BC50:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BC54: .word 0x02256864
_0224BC58: .word 0x000003D9
	thumb_func_end ov23_0224BAAC

	thumb_func_start ov23_0224BC5C
ov23_0224BC5C: ; 0x0224BC5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	str r3, [sp]
	bl ov23_0224DC08
	mov r0, #4
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [sp, #0x18]
	str r7, [r4, #0x20]
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x2c
	strb r1, [r0]
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [r4, #0x24]
	ldr r0, _0224BCBC ; =ov23_0224BAAC
	str r5, [r4, #0]
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	ldr r2, _0224BCC0 ; =ov23_0224BA6C
	add r0, r4, #0
	bl ov23_022431EC
	bl sub_020594FC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BCBC: .word ov23_0224BAAC
_0224BCC0: .word ov23_0224BA6C
	thumb_func_end ov23_0224BC5C

	thumb_func_start ov23_0224BCC4
ov23_0224BCC4: ; 0x0224BCC4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
	str r3, [sp]
	cmp r0, #0
	bne _0224BD16
	mov r0, #0xb
	mov r1, #0x30
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [sp, #0x18]
	str r7, [r4, #0x20]
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	cmp r0, #2
	beq _0224BD0E
	bl GF_AssertFail
_0224BD0E:
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [sp]
	str r0, [r4, #0x24]
_0224BD16:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov23_0224BCC4

	thumb_func_start ov23_0224BD1C
ov23_0224BD1C: ; 0x0224BD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r7, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r4, r7, #0
_0224BD28:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224BD80
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0224BD4A
	add r0, r4, #0
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058E4C
	b _0224BD58
_0224BD4A:
	add r0, r4, #0
	bl sub_02058CA0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058CF4
_0224BD58:
	add r5, r0, #0
	ldr r0, _0224BD8C ; =0x0000FFFF
	cmp r6, r0
	bne _0224BD64
	cmp r5, r0
	beq _0224BD80
_0224BD64:
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224BD80
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224B05C
	ldr r1, [sp]
	cmp r0, r1
	bne _0224BD80
	add r7, r7, #1
_0224BD80:
	add r4, r4, #1
	cmp r4, #8
	blt _0224BD28
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BD8C: .word 0x0000FFFF
	thumb_func_end ov23_0224BD1C

	thumb_func_start ov23_0224BD90
ov23_0224BD90: ; 0x0224BD90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r2, [sp, #8]
	add r6, r0, #0
	add r7, r1, #0
	str r3, [sp, #0xc]
	bl ov23_0224219C
	bl ov23_02253E3C
	add r5, r0, #0
	ldr r1, [sp, #0x30]
	mov r0, #2
	bl sub_02013A04
	add r4, r0, #0
	add r1, r5, #0
	mov r2, #0x26
	mov r3, #0
	bl sub_02013A4C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x27
	mov r3, #1
	bl sub_02013A4C
	ldr r0, [sp, #0x30]
	mov r1, #1
	str r4, [sp, #0x10]
	bl sub_0201A778
	add r1, r0, #0
	str r1, [sp, #0x14]
	mov r0, #0
	add r3, sp, #0x10
	strb r0, [r3, #8]
	mov r0, #1
	strb r0, [r3, #9]
	mov r0, #2
	strb r0, [r3, #0xa]
	ldrb r0, [r3, #0xb]
	mov r2, #0xf
	bic r0, r2
	strb r0, [r3, #0xb]
	ldrb r4, [r3, #0xb]
	mov r0, #0x30
	bic r4, r0
	strb r4, [r3, #0xb]
	ldrb r0, [r3, #0xb]
	bic r0, r2
	strb r0, [r3, #0xb]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_0201A8D4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r1, #1
	bl sub_0200DC48
	ldr r0, [sp, #0x30]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224BD90

	thumb_func_start ov23_0224BE28
ov23_0224BE28: ; 0x0224BE28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0xc]
	mov r5, #0
	ldr r6, [r4, #0]
	cmp r0, #0xa
	bhi _0224BEEE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224BE46: ; jump table
	.short _0224BE5C - _0224BE46 - 2 ; case 0
	.short _0224BE88 - _0224BE46 - 2 ; case 1
	.short _0224BEAC - _0224BE46 - 2 ; case 2
	.short _0224BED0 - _0224BE46 - 2 ; case 3
	.short _0224BEE2 - _0224BE46 - 2 ; case 4
	.short _0224BF08 - _0224BE46 - 2 ; case 5
	.short _0224BF6C - _0224BE46 - 2 ; case 6
	.short _0224BF90 - _0224BE46 - 2 ; case 7
	.short _0224BFC2 - _0224BE46 - 2 ; case 8
	.short _0224BFE0 - _0224BE46 - 2 ; case 9
	.short _0224C00A - _0224BE46 - 2 ; case 10
_0224BE5C:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r1, r0
	beq _0224BE72
	mov r6, #0x2d
	mov r0, #1
	b _0224BE76
_0224BE72:
	mov r6, #0x29
	mov r0, #4
_0224BE76:
	str r0, [r4, #0xc]
	bl ov23_0224219C
	mov r2, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov23_02253F40
	b _0224C042
_0224BE88:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BEEE
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224C07C ; =0x02256864
	ldr r2, _0224C080 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #2
	str r0, [r4, #0xc]
	b _0224C042
_0224BEAC:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BEC2
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224C042
_0224BEC2:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224BEEE
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224C042
_0224BED0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224BEEE
	mov r0, #0xa
	str r0, [r4, #0xc]
	b _0224C042
_0224BEE2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	beq _0224BEF0
_0224BEEE:
	b _0224C042
_0224BEF0:
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224C07C ; =0x02256864
	ldr r2, _0224C080 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #4]
	mov r0, #5
	str r0, [r4, #0xc]
	b _0224C042
_0224BF08:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BF5E
	add r0, r5, #0
	str r0, [r4, #4]
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	bl ov23_0224AEA4
	cmp r0, #0
	bne _0224BF36
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	add r1, r5, #0
	bl ov23_0224BD1C
	cmp r0, #0
	ble _0224BF4A
_0224BF36:
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x2c
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224C042
_0224BF4A:
	bl ov23_0224219C
	add r2, r5, #0
	mov r1, #0x25
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #6
	str r0, [r4, #0xc]
	b _0224C042
_0224BF5E:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224C042
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224C042
_0224BF6C:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224C042
	mov r0, #4
	str r0, [sp]
	ldr r0, [r6, #8]
	ldr r1, _0224C084 ; =0x0225686C
	ldr r2, _0224C080 ; =0x000003D9
	mov r3, #0xb
	bl ov23_0224BD90
	str r0, [r4, #4]
	mov r0, #7
	str r0, [r4, #0xc]
	b _0224C042
_0224BF90:
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224BFA6
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224C042
_0224BFA6:
	cmp r0, #1
	bne _0224BFB4
	add r0, r5, #0
	str r0, [r4, #4]
	mov r0, #8
	str r0, [r4, #0xc]
	b _0224C042
_0224BFB4:
	sub r1, r5, #1
	cmp r0, r1
	beq _0224C042
	add r0, r5, #0
	str r0, [r4, #4]
	mov r5, #1
	b _0224C042
_0224BFC2:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224C042
	bl ov23_0224219C
	bl ov23_02254044
	bl ov23_02249A74
	mov r0, #9
	str r0, [r4, #0xc]
	b _0224C042
_0224BFE0:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224C042
	bl sub_0203608C
	cmp r0, #0
	bne _0224C042
	mov r1, #1
	add r0, sp, #4
	strb r1, [r0]
	mov r0, #0x56
	add r1, sp, #4
	bl sub_020360D0
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA48
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224C00A:
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r4, #0
	mov r2, #1
	add r1, sp, #4
	strb r2, [r1, #2]
	add r0, #0x2c
	ldrb r0, [r0]
	strb r0, [r1, #1]
	strb r2, [r1, #3]
	add r1, sp, #4
	mov r0, #0x3b
	add r1, #1
	bl sub_020360D0
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA48
	ldr r0, _0224C088 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224C08C ; =0x000012E4
	add sp, #8
	strb r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224C042:
	add r0, r4, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0x10
	beq _0224C060
	bl sub_02058C90
	cmp r0, #0
	bne _0224C060
	ldr r0, [r4, #0xc]
	cmp r0, #8
	beq _0224C060
	cmp r0, #9
	beq _0224C060
	mov r5, #1
_0224C060:
	cmp r5, #0
	beq _0224C078
	bl ov23_0224219C
	bl ov23_02254044
	add r0, r7, #0
	add r1, r4, #0
	bl ov23_0224BA6C
	bl sub_02059514
_0224C078:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C07C: .word 0x02256864
_0224C080: .word 0x000003D9
_0224C084: .word 0x0225686C
_0224C088: .word 0x022577AC
_0224C08C: .word 0x000012E4
	thumb_func_end ov23_0224BE28

	thumb_func_start ov23_0224C090
ov23_0224C090: ; 0x0224C090
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #4
	mov r1, #0x30
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018184
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0x18]
	str r6, [r4, #0x1c]
	add r0, r4, #0
	ldr r1, [sp, #0x18]
	str r7, [r4, #0x20]
	add r0, #0x2b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [sp, #0x1c]
	add r0, #0x2c
	strb r1, [r0]
	mov r0, #2
	str r0, [r4, #0x14]
	ldr r0, [sp]
	mov r1, #0
	str r0, [r4, #0x24]
	add r0, r4, #0
	str r5, [r4, #0]
	add r0, #0x29
	strb r1, [r0]
	bl ov23_0224DC08
	ldr r0, _0224C0F8 ; =ov23_0224BE28
	add r1, r4, #0
	mov r2, #0x64
	bl sub_0200D9E8
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	ldr r2, _0224C0FC ; =ov23_0224BA6C
	add r0, r4, #0
	bl ov23_022431EC
	bl sub_020594FC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C0F8: .word ov23_0224BE28
_0224C0FC: .word ov23_0224BA6C
	thumb_func_end ov23_0224C090

	thumb_func_start ov23_0224C100
ov23_0224C100: ; 0x0224C100
	mov r0, #8
	bx lr
	thumb_func_end ov23_0224C100

	thumb_func_start ov23_0224C104
ov23_0224C104: ; 0x0224C104
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, _0224C18C ; =0x022577AC
	add r4, r2, #0
	ldr r1, [r0, #0]
	ldrb r0, [r4, #4]
	mov r2, #0xff
	add r1, r1, r0
	ldr r0, _0224C190 ; =0x00001363
	strb r2, [r1, r0]
	ldrb r5, [r4, #4]
	bl sub_0203608C
	cmp r5, r0
	bne _0224C176
	bl ov23_022535EC
	bl ov23_0224F24C
	bl ov23_0224321C
	bl sub_0203608C
	mov r1, #0
	bl ov23_02244858
	mov r0, #0x2b
	bl sub_020360DC
	ldr r0, _0224C18C ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0224C194 ; =0x000013E6
	strb r2, [r1, r0]
	mov r0, #1
	bl sub_02059638
	ldrb r0, [r4, #4]
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldr r0, _0224C18C ; =0x022577AC
	ldrh r1, [r4]
	ldr r0, [r0, #0]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #5]
	ldr r0, [r0, #0]
	bl ov23_0224CAF0
	ldr r0, _0224C18C ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xa
	lsl r0, r0, #8
	str r2, [r1, r0]
	add sp, #8
	pop {r3, r4, r5, pc}
_0224C176:
	add r0, r5, #0
	bl ov23_02248B98
	ldrb r0, [r4, #4]
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #5]
	bl ov23_0224ADE8
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224C18C: .word 0x022577AC
_0224C190: .word 0x00001363
_0224C194: .word 0x000013E6
	thumb_func_end ov23_0224C104

	thumb_func_start ov23_0224C198
ov23_0224C198: ; 0x0224C198
	ldr r3, _0224C1A0 ; =sub_020360DC
	mov r0, #0x38
	bx r3
	nop
_0224C1A0: .word sub_020360DC
	thumb_func_end ov23_0224C198

	thumb_func_start ov23_0224C1A4
ov23_0224C1A4: ; 0x0224C1A4
	push {r3, r4}
	ldr r2, _0224C1C0 ; =0x022577AC
	mov r4, #0xff
	ldr r1, [r2, #0]
	add r3, r1, r0
	ldr r1, _0224C1C4 ; =0x0000136B
	strb r4, [r3, r1]
	ldr r2, [r2, #0]
	add r1, #8
	add r0, r2, r0
	strb r4, [r0, r1]
	pop {r3, r4}
	bx lr
	nop
_0224C1C0: .word 0x022577AC
_0224C1C4: .word 0x0000136B
	thumb_func_end ov23_0224C1A4

	thumb_func_start ov23_0224C1C8
ov23_0224C1C8: ; 0x0224C1C8
	ldr r1, _0224C1E4 ; =0x022577AC
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224C1DE
	add r1, r1, r0
	ldr r0, _0224C1E8 ; =0x0000136B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224C1DE
	mov r0, #1
	bx lr
_0224C1DE:
	mov r0, #0
	bx lr
	nop
_0224C1E4: .word 0x022577AC
_0224C1E8: .word 0x0000136B
	thumb_func_end ov23_0224C1C8

	thumb_func_start ov23_0224C1EC
ov23_0224C1EC: ; 0x0224C1EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0224C218 ; =0x022577AC
	add r7, r1, #0
	ldr r1, [r0, #0]
	add r5, r3, #0
	mov r0, #0x96
	add r1, #8
	mul r0, r5
	add r4, r1, r0
	beq _0224C216
	add r0, r2, #0
	bl sub_02059328
	add r3, r0, #0
	add r0, r4, #2
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02029854
	strb r5, [r4]
_0224C216:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C218: .word 0x022577AC
	thumb_func_end ov23_0224C1EC

	thumb_func_start ov23_0224C21C
ov23_0224C21C: ; 0x0224C21C
	push {r3, lr}
	bl sub_0203608C
	ldr r1, _0224C234 ; =0x022577AC
	mov r0, #0x35
	ldr r2, [r1, #0]
	ldr r1, _0224C238 ; =0x00000968
	add r1, r2, r1
	mov r2, #0x96
	bl sub_02035F58
	pop {r3, pc}
	; .align 2, 0
_0224C234: .word 0x022577AC
_0224C238: .word 0x00000968
	thumb_func_end ov23_0224C21C

	thumb_func_start ov23_0224C23C
ov23_0224C23C: ; 0x0224C23C
	push {r4, lr}
	ldr r1, _0224C258 ; =0x022577AC
	add r4, r0, #0
	ldr r3, [r1, #0]
	mov r2, #0x96
	add r1, r4, #0
	add r3, #8
	mul r1, r2
	mov r0, #0x36
	add r1, r3, r1
	bl sub_02035F00
	pop {r4, pc}
	nop
_0224C258: .word 0x022577AC
	thumb_func_end ov23_0224C23C

	thumb_func_start ov23_0224C25C
ov23_0224C25C: ; 0x0224C25C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, _0224C368 ; =0x022577AC
	add r6, r2, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224C362
	bl sub_0203608C
	ldrb r1, [r6, #1]
	cmp r1, r0
	bne _0224C29C
	ldr r0, _0224C368 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224C36C ; =0x000012E4
	ldrb r1, [r2, r0]
	cmp r1, #2
	bne _0224C29C
	mov r1, #0
	strb r1, [r2, r0]
	bl sub_02059514
	mov r0, #0x38
	bl sub_020360DC
	mov r0, #0
	bl sub_02057AE4
	bl ov23_0224DC24
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224C29C:
	ldr r0, _0224C368 ; =0x022577AC
	mov r2, #5
	ldr r1, [r0, #0]
	ldr r0, _0224C36C ; =0x000012E4
	strb r2, [r1, r0]
	ldrb r5, [r6]
	cmp r5, #0x11
	blt _0224C2B0
	bl GF_AssertFail
_0224C2B0:
	ldr r0, _0224C368 ; =0x022577AC
	mov r2, #0x96
	ldr r4, [r0, #0]
	add r7, r5, #0
	add r4, #8
	mul r7, r2
	add r5, r4, r7
	add r0, r6, #0
	add r1, r5, #0
	bl MI_CpuCopy8
	ldr r2, _0224C368 ; =0x022577AC
	ldrb r1, [r5, #1]
	ldr r3, [r2, #0]
	ldrb r0, [r4, r7]
	add r3, r3, r1
	ldr r1, _0224C370 ; =0x00001363
	strb r0, [r3, r1]
	ldrb r3, [r4, r7]
	cmp r3, #0x10
	beq _0224C2E4
	ldrb r0, [r5, #1]
	ldr r2, [r2, #0]
	add r1, #0x18
	add r0, r2, r0
	strb r3, [r0, r1]
_0224C2E4:
	ldrb r0, [r5]
	add r1, sp, #8
	bl ov23_0224B128
	ldrb r4, [r5, #1]
	bl sub_0203608C
	cmp r4, r0
	bne _0224C354
	ldr r1, _0224C368 ; =0x022577AC
	ldr r0, _0224C374 ; =0x000013E6
	ldr r2, [r1, #0]
	mov r3, #1
	strb r3, [r2, r0]
	ldrb r0, [r5, #1]
	mov r3, #0
	add r2, sp, #8
	str r0, [sp]
	str r3, [sp, #4]
	ldr r0, [r1, #0]
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	ldr r0, [r0, #0]
	sub r2, r2, #1
	bl ov23_0224CAF0
	ldr r0, _0224C368 ; =0x022577AC
	ldr r1, [r0, #0]
	mov r0, #0xa
	lsl r0, r0, #8
	str r5, [r1, r0]
	add r0, r5, #2
	bl sub_02029874
	ldr r1, _0224C368 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224C378 ; =0x000013DC
	strh r0, [r2, r1]
	add r0, r5, #2
	bl sub_0202987C
	ldr r1, _0224C368 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224C37C ; =0x000013DE
	strh r0, [r2, r1]
	add r0, r5, #2
	bl sub_02029884
	ldr r1, _0224C368 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224C380 ; =0x000013E0
	strb r0, [r2, r1]
	bl ov23_02243360
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224C354:
	add r2, sp, #8
	ldrh r1, [r2]
	ldrh r2, [r2, #2]
	add r0, r4, #0
	mov r3, #0
	bl ov23_0224ADE8
_0224C362:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C368: .word 0x022577AC
_0224C36C: .word 0x000012E4
_0224C370: .word 0x00001363
_0224C374: .word 0x000013E6
_0224C378: .word 0x000013DC
_0224C37C: .word 0x000013DE
_0224C380: .word 0x000013E0
	thumb_func_end ov23_0224C25C

	thumb_func_start ov23_0224C384
ov23_0224C384: ; 0x0224C384
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0224C404 ; =0x022577AC
	ldr r6, [r0, #0]
	cmp r6, #0
	beq _0224C402
	mov r3, #0x96
	add r7, r5, #0
	add r6, #8
	mul r7, r3
	add r4, r6, r7
	add r0, r2, #0
	add r1, r4, #0
	add r2, r3, #0
	bl MI_CpuCopy8
	strb r5, [r6, r7]
	ldr r0, _0224C404 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224C408 ; =0x000013E2
	add r6, r5, #0
	strb r2, [r1, r0]
	mov r0, #6
	mul r6, r0
	add r0, r4, #2
	bl sub_02029874
	ldr r1, _0224C404 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r6
	ldr r1, _0224C40C ; =0x000012B4
	strh r0, [r2, r1]
	add r0, r4, #2
	bl sub_0202987C
	ldr r1, _0224C404 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r6
	ldr r1, _0224C410 ; =0x000012B6
	strh r0, [r2, r1]
	add r0, r4, #2
	bl sub_02029884
	ldr r1, _0224C404 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r6
	ldr r1, _0224C414 ; =0x000012B8
	strb r0, [r2, r1]
	bl ov23_0224C448
	ldr r1, _0224C404 ; =0x022577AC
	add r0, r4, #2
	ldr r2, [r1, #0]
	ldr r1, _0224C418 ; =0x00000A04
	add r2, r2, r1
	lsl r1, r5, #7
	add r1, r2, r1
	bl ov23_0224B39C
	add r0, r5, #0
	bl ov23_0224DAD0
_0224C402:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C404: .word 0x022577AC
_0224C408: .word 0x000013E2
_0224C40C: .word 0x000012B4
_0224C410: .word 0x000012B6
_0224C414: .word 0x000012B8
_0224C418: .word 0x00000A04
	thumb_func_end ov23_0224C384

	thumb_func_start ov23_0224C41C
ov23_0224C41C: ; 0x0224C41C
	mov r0, #0x96
	bx lr
	thumb_func_end ov23_0224C41C

	thumb_func_start ov23_0224C420
ov23_0224C420: ; 0x0224C420
	ldr r0, _0224C42C ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224C430 ; =0x000013E3
	ldrb r0, [r1, r0]
	bx lr
	nop
_0224C42C: .word 0x022577AC
_0224C430: .word 0x000013E3
	thumb_func_end ov23_0224C420

	thumb_func_start ov23_0224C434
ov23_0224C434: ; 0x0224C434
	ldr r0, _0224C440 ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0224C444 ; =0x000013E3
	strb r2, [r1, r0]
	bx lr
	; .align 2, 0
_0224C440: .word 0x022577AC
_0224C444: .word 0x000013E3
	thumb_func_end ov23_0224C434

	thumb_func_start ov23_0224C448
ov23_0224C448: ; 0x0224C448
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0224C4B4 ; =0x022577AC
	mov ip, r4
	add r5, r4, #0
_0224C452:
	ldr r0, [r7, #0]
	ldr r1, _0224C4B8 ; =0x000012B4
	add r2, r0, r1
	add r1, r0, r4
	ldrh r6, [r2, r5]
	ldr r0, _0224C4BC ; =0x0000138B
	add r3, r2, r5
	strb r6, [r1, r0]
	ldrh r0, [r2, r5]
	add r5, r5, #6
	asr r1, r0, #8
	mov r0, #0xf
	add r2, r1, #0
	and r2, r0
	ldrh r0, [r3, #2]
	asr r1, r0, #4
	mov r0, #0xf0
	and r0, r1
	add r2, r2, r0
	ldr r0, [r7, #0]
	add r1, r0, r4
	ldr r0, _0224C4C0 ; =0x0000138C
	strb r2, [r1, r0]
	ldr r0, [r7, #0]
	ldrh r2, [r3, #2]
	add r1, r0, r4
	ldr r0, _0224C4C4 ; =0x0000138D
	strb r2, [r1, r0]
	ldr r1, [r7, #0]
	ldrb r0, [r3, #4]
	add r2, r1, r4
	ldr r1, _0224C4C8 ; =0x0000138E
	add r4, r4, #4
	strb r0, [r2, r1]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #8
	blt _0224C452
	ldr r1, _0224C4B4 ; =0x022577AC
	mov r0, #0x37
	ldr r2, [r1, #0]
	ldr r1, _0224C4BC ; =0x0000138B
	add r1, r2, r1
	mov r2, #0x20
	bl sub_02035F00
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C4B4: .word 0x022577AC
_0224C4B8: .word 0x000012B4
_0224C4BC: .word 0x0000138B
_0224C4C0: .word 0x0000138C
_0224C4C4: .word 0x0000138D
_0224C4C8: .word 0x0000138E
	thumb_func_end ov23_0224C448

	thumb_func_start ov23_0224C4CC
ov23_0224C4CC: ; 0x0224C4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, _0224C574 ; =0x022577AC
	str r2, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224C56E
	mov r4, #0
_0224C4DC:
	add r0, r4, #0
	bl ov23_0224C6AC
	add r4, r4, #1
	cmp r4, #8
	blt _0224C4DC
	mov r5, #0
	add r7, r5, #0
	add r6, r5, #0
	add r4, sp, #4
_0224C4F0:
	ldr r0, _0224C574 ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224C578 ; =0x00001284
	add r0, r1, r0
	mov ip, r0
	ldr r0, [sp]
	add r2, r0, r5
	ldrb r0, [r0, r5]
	add r5, r5, #4
	strh r0, [r4]
	ldrb r0, [r2, #1]
	ldrh r3, [r4]
	lsl r1, r0, #8
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	add r0, r3, r0
	strh r0, [r4]
	ldrb r0, [r2, #1]
	lsl r1, r0, #4
	mov r0, #0xf
	lsl r0, r0, #8
	and r0, r1
	strh r0, [r4, #2]
	ldrh r1, [r4, #2]
	ldrb r0, [r2, #2]
	add r0, r1, r0
	strh r0, [r4, #2]
	ldrb r0, [r2, #3]
	strb r0, [r4, #4]
	ldrh r1, [r4]
	ldr r0, _0224C57C ; =0x00000FFF
	cmp r1, r0
	beq _0224C55C
	add r0, sp, #4
	ldrh r1, [r0, #2]
	ldr r0, _0224C57C ; =0x00000FFF
	cmp r1, r0
	beq _0224C55C
	mov r1, ip
	add r0, sp, #4
	add r1, r1, r6
	mov r2, #6
	bl MI_CpuCopy8
	add r0, sp, #4
	add r1, sp, #4
	add r2, sp, #4
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldrb r2, [r2, #4]
	add r3, r7, #0
	bl ov23_0224C588
_0224C55C:
	add r7, r7, #1
	add r6, r6, #6
	cmp r7, #8
	blt _0224C4F0
	ldr r0, _0224C574 ; =0x022577AC
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _0224C580 ; =0x000013E3
	strb r2, [r1, r0]
_0224C56E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224C574: .word 0x022577AC
_0224C578: .word 0x00001284
_0224C57C: .word 0x00000FFF
_0224C580: .word 0x000013E3
	thumb_func_end ov23_0224C4CC

	thumb_func_start ov23_0224C584
ov23_0224C584: ; 0x0224C584
	mov r0, #0x20
	bx lr
	thumb_func_end ov23_0224C584

	thumb_func_start ov23_0224C588
ov23_0224C588: ; 0x0224C588
	push {r3, r4, r5, r6}
	ldr r5, _0224C5AC ; =0x022577AC
	ldr r4, [r5, #0]
	add r6, r4, r3
	ldr r4, _0224C5B0 ; =0x0000133A
	strb r2, [r6, r4]
	lsl r2, r3, #1
	ldr r3, [r5, #0]
	add r6, r3, r2
	add r3, r4, #0
	sub r3, #0x44
	strh r0, [r6, r3]
	ldr r0, [r5, #0]
	sub r4, #0x22
	add r0, r0, r2
	strh r1, [r0, r4]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_0224C5AC: .word 0x022577AC
_0224C5B0: .word 0x0000133A
	thumb_func_end ov23_0224C588

	thumb_func_start ov23_0224C5B4
ov23_0224C5B4: ; 0x0224C5B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r0, _0224C690 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224C694 ; =0x000013E4
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _0224C68A
	add r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0224C68A
	ldr r0, [r2, #0]
	ldr r0, [r0, #0x3c]
	cmp r0, #0
	beq _0224C68A
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, _0224C690 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224C68A
	mov r5, #0
	add r4, r5, #0
_0224C5F6:
	cmp r5, #8
	bge _0224C610
	add r0, r5, #0
	bl sub_02032EE8
	cmp r0, #0
	bne _0224C610
	add r0, r5, #0
	bl ov23_0224B61C
	add r0, r5, #0
	bl ov23_0224D87C
_0224C610:
	ldr r0, _0224C690 ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224C698 ; =0x0000133A
	add r2, r1, r5
	ldrb r6, [r2, r0]
	cmp r6, #0xff
	beq _0224C682
	ldr r3, _0224C69C ; =0x000012F6
	add r0, r1, r4
	ldrh r3, [r0, r3]
	str r3, [sp, #8]
	ldr r3, _0224C6A0 ; =0x00001318
	ldrh r7, [r0, r3]
	add r0, r3, #0
	sub r0, #0x33
	ldrb r0, [r2, r0]
	cmp r0, #0xff
	beq _0224C63E
	ldr r1, [r1, #0]
	add r1, #0xa4
	ldr r1, [r1, #0]
	bl ov5_021E1674
_0224C63E:
	ldr r0, [sp, #8]
	ldr r2, _0224C6A4 ; =0x000001AD
	lsl r1, r0, #0x10
	mov r0, #2
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #2
	lsl r1, r7, #0x10
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, _0224C690 ; =0x022577AC
	add r2, r6, r2
	ldr r0, [r0, #0]
	add r3, sp, #0xc
	ldr r1, [r0, #0]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r1, #0x50]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x30]
	bl ov5_021E19CC
	ldr r1, _0224C690 ; =0x022577AC
	ldr r1, [r1, #0]
	add r2, r1, r5
	ldr r1, _0224C6A8 ; =0x000012E5
	strb r0, [r2, r1]
_0224C682:
	add r5, r5, #1
	add r4, r4, #2
	cmp r5, #0x11
	blt _0224C5F6
_0224C68A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C690: .word 0x022577AC
_0224C694: .word 0x000013E4
_0224C698: .word 0x0000133A
_0224C69C: .word 0x000012F6
_0224C6A0: .word 0x00001318
_0224C6A4: .word 0x000001AD
_0224C6A8: .word 0x000012E5
	thumb_func_end ov23_0224C5B4

	thumb_func_start ov23_0224C6AC
ov23_0224C6AC: ; 0x0224C6AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224C6E0 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224C6E4 ; =0x000012E5
	add r1, r2, r4
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224C6DC
	ldr r1, [r2, #0]
	add r1, #0xa4
	ldr r1, [r1, #0]
	bl ov5_021E1674
	ldr r1, _0224C6E0 ; =0x022577AC
	mov r3, #0xff
	ldr r0, [r1, #0]
	add r2, r0, r4
	ldr r0, _0224C6E4 ; =0x000012E5
	strb r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, #0x55
	add r1, r1, r4
	strb r3, [r1, r0]
_0224C6DC:
	pop {r4, pc}
	nop
_0224C6E0: .word 0x022577AC
_0224C6E4: .word 0x000012E5
	thumb_func_end ov23_0224C6AC

	thumb_func_start ov23_0224C6E8
ov23_0224C6E8: ; 0x0224C6E8
	push {r4, lr}
	ldr r0, _0224C704 ; =0x022577AC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0224C700
	mov r4, #0
_0224C6F4:
	add r0, r4, #0
	bl ov23_0224C6AC
	add r4, r4, #1
	cmp r4, #0x11
	blt _0224C6F4
_0224C700:
	pop {r4, pc}
	nop
_0224C704: .word 0x022577AC
	thumb_func_end ov23_0224C6E8

	thumb_func_start ov23_0224C708
ov23_0224C708: ; 0x0224C708
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C726
	cmp r0, #1
	beq _0224C734
	b _0224C746
_0224C726:
	add r0, r5, #0
	bl sub_0203CD44
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224C746
_0224C734:
	add r0, r5, #0
	bl sub_0203CD4C
	cmp r0, #0
	bne _0224C746
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224C746:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224C708

	thumb_func_start ov23_0224C74C
ov23_0224C74C: ; 0x0224C74C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0224C76A
	cmp r0, #1
	beq _0224C778
	b _0224C78A
_0224C76A:
	add r0, r5, #0
	bl sub_0203CD00
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0224C78A
_0224C778:
	add r0, r5, #0
	bl sub_020509DC
	cmp r0, #0
	beq _0224C78A
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224C78A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224C74C

	thumb_func_start ov23_0224C790
ov23_0224C790: ; 0x0224C790
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0xd
	bhi _0224C882
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224C7B6: ; jump table
	.short _0224C7D2 - _0224C7B6 - 2 ; case 0
	.short _0224C7FC - _0224C7B6 - 2 ; case 1
	.short _0224C82C - _0224C7B6 - 2 ; case 2
	.short _0224C842 - _0224C7B6 - 2 ; case 3
	.short _0224C854 - _0224C7B6 - 2 ; case 4
	.short _0224C878 - _0224C7B6 - 2 ; case 5
	.short _0224C88C - _0224C7B6 - 2 ; case 6
	.short _0224C8B6 - _0224C7B6 - 2 ; case 7
	.short _0224CA86 - _0224C7B6 - 2 ; case 8
	.short _0224C956 - _0224C7B6 - 2 ; case 9
	.short _0224C972 - _0224C7B6 - 2 ; case 10
	.short _0224C9AA - _0224C7B6 - 2 ; case 11
	.short _0224C9E0 - _0224C7B6 - 2 ; case 12
	.short _0224CA0A - _0224C7B6 - 2 ; case 13
_0224C7D2:
	mov r0, #0
	bl ov23_0224DBF4
	bl ov23_0224DC08
	bl sub_02035E18
	add r1, r4, #0
	add r1, #0x28
	strb r0, [r1]
	bl sub_02035EC8
	bl ov23_022417CC
	bl ov23_02249AB8
	cmp r0, #0
	beq _0224C882
	mov r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C7FC:
	bl sub_0200F2C0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	mov r1, #0x10
	mov r2, #0x12
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r5, #0x6c]
	bl ov23_0224942C
	ldr r0, _0224CAD4 ; =0x00000603
	bl sub_02005748
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C82C:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224C882
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _0224C882
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C842:
	add r0, r6, #0
	bl ov23_0224C708
	cmp r0, #0
	beq _0224C882
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C854:
	ldr r0, [r4, #0x14]
	add r1, sp, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x20]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_020544F0
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C878:
	add r0, r6, #0
	bl ov23_0224C74C
	cmp r0, #0
	bne _0224C884
_0224C882:
	b _0224CACC
_0224C884:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C88C:
	add r0, r5, #0
	bl ov23_02249404
	str r0, [r5, #0x6c]
	bl sub_0200F2C0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r1, #0x11
	mov r2, #0x13
	mov r3, #0
	bl sub_0200F174
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0224CACC
_0224C8B6:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224C98A
	bl sub_02033DFC
	cmp r0, #0
	beq _0224C8DC
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl ov23_02242E58
	cmp r0, #0
	bne _0224C8DC
	add r0, r4, #0
	mov r1, #0
	add r0, #0x2e
	strb r1, [r0]
	b _0224C8E4
_0224C8DC:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x2e
	strb r1, [r0]
_0224C8E4:
	bl sub_02035EA8
	bl sub_020594FC
	mov r3, #0x80
	str r3, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #0x32
	mov r1, #0x34
	mov r2, #0
	add r3, #0xc0
	bl sub_02006E84
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, _0224CAD8 ; =0x000003D9
	mov r1, #3
	mov r3, #0xb
	bl sub_0200DAA4
	add r0, r4, #0
	add r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	beq _0224C936
	bl sub_020594EC
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x33
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #8
	str r0, [r4, #0xc]
	b _0224CACC
_0224C936:
	ldr r0, _0224CADC ; =0x022577AC
	ldr r1, [r0, #0]
	ldr r0, _0224CAE0 ; =0x000013E6
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224C948
	mov r0, #0xd
	str r0, [r4, #0xc]
	b _0224CACC
_0224C948:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	mov r0, #9
	str r0, [r4, #0xc]
	b _0224CACC
_0224C956:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	mov r0, #0xa
	str r0, [r4, #0xc]
	b _0224CACC
_0224C972:
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x29
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0xa
	bhi _0224C98C
_0224C98A:
	b _0224CACC
_0224C98C:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224C99E
	add r0, r4, #0
	add r0, #0x2e
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224C9A4
_0224C99E:
	mov r0, #0xd
	str r0, [r4, #0xc]
	b _0224CACC
_0224C9A4:
	mov r0, #0xb
	str r0, [r4, #0xc]
	b _0224CACC
_0224C9AA:
	bl sub_02059624
	mov r0, #1
	mov r1, #0x24
	bl sub_02065838
	add r1, r0, #0
	ldr r0, [r5, #0x3c]
	mov r2, #1
	bl sub_02061550
	mov r0, #1
	bl sub_020593F4
	bl ov23_0224219C
	mov r2, #0
	mov r1, #0x44
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _0224CAE4 ; =0x00000604
	bl sub_02005748
	mov r0, #0xc
	str r0, [r4, #0xc]
	b _0224CACC
_0224C9E0:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CACC
	ldr r0, _0224CAE8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224CACC
	mov r0, #0xd
	str r0, [r4, #0xc]
	bl ov23_0224219C
	bl ov23_02254044
	mov r0, #0
	bl sub_020593F4
	b _0224CACC
_0224CA0A:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224CA24
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl ov23_02242E58
	cmp r0, #0
	bne _0224CA24
	bl ov23_02249AA4
	b _0224CA28
_0224CA24:
	bl ov23_02249B60
_0224CA28:
	mov r0, #0
	bl sub_02059638
	bl sub_02059514
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02033DFC
	cmp r0, #0
	beq _0224CA52
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	bl ov23_02242E58
	cmp r0, #0
	beq _0224CA52
	bl ov23_02242FA8
	b _0224CA56
_0224CA52:
	bl ov23_02242FBC
_0224CA56:
	ldr r0, _0224CADC ; =0x022577AC
	ldr r2, _0224CAEC ; =0x000012E4
	ldr r0, [r0, #0]
	ldrb r1, [r0, r2]
	cmp r1, #4
	bne _0224CA70
	ldr r1, _0224CAE0 ; =0x000013E6
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _0224CA70
	mov r1, #6
	strb r1, [r0, r2]
	b _0224CA76
_0224CA70:
	ldr r1, _0224CAEC ; =0x000012E4
	mov r2, #0
	strb r2, [r0, r1]
_0224CA76:
	bl ov23_0224DC24
	mov r0, #1
	bl ov23_0224DBF4
	add sp, #0x20
	mov r0, #1
	pop {r4, r5, r6, pc}
_0224CA86:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CAAE
	ldr r0, _0224CAE8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224CAAE
	mov r0, #0xd
	str r0, [r4, #0xc]
	bl ov23_0224219C
	bl ov23_02254044
	add sp, #0x20
	mov r0, #0
	pop {r4, r5, r6, pc}
_0224CAAE:
	bl sub_02035E18
	cmp r0, #1
	ble _0224CACC
	add r0, r4, #0
	add r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0224CACC
	mov r0, #0xd
	str r0, [r4, #0xc]
	bl ov23_0224219C
	bl ov23_02254044
_0224CACC:
	mov r0, #0
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_0224CAD4: .word 0x00000603
_0224CAD8: .word 0x000003D9
_0224CADC: .word 0x022577AC
_0224CAE0: .word 0x000013E6
_0224CAE4: .word 0x00000604
_0224CAE8: .word 0x021BF67C
_0224CAEC: .word 0x000012E4
	thumb_func_end ov23_0224C790

	thumb_func_start ov23_0224CAF0
ov23_0224CAF0: ; 0x0224CAF0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r5, [sp, #0x18]
	add r4, r0, #0
	str r5, [sp]
	str r5, [sp, #4]
	bl ov23_0224BCC4
	add r2, r0, #0
	beq _0224CB12
	ldr r1, [sp, #0x1c]
	add r0, #0x2d
	strb r1, [r0]
	ldr r1, _0224CB18 ; =ov23_0224C790
	add r0, r4, #0
	bl sub_02050904
_0224CB12:
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0224CB18: .word ov23_0224C790
	thumb_func_end ov23_0224CAF0

	thumb_func_start ov23_0224CB1C
ov23_0224CB1C: ; 0x0224CB1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	mov r7, #0
	ldr r5, [r4, #0]
	cmp r0, #0xa
	bhi _0224CBB0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224CB3A: ; jump table
	.short _0224CB50 - _0224CB3A - 2 ; case 0
	.short _0224CB98 - _0224CB3A - 2 ; case 1
	.short _0224CBB8 - _0224CB3A - 2 ; case 2
	.short _0224CC04 - _0224CB3A - 2 ; case 3
	.short _0224CC4A - _0224CB3A - 2 ; case 4
	.short _0224CC64 - _0224CB3A - 2 ; case 5
	.short _0224CC88 - _0224CB3A - 2 ; case 6
	.short _0224CD04 - _0224CB3A - 2 ; case 7
	.short _0224CD04 - _0224CB3A - 2 ; case 8
	.short _0224CCAC - _0224CB3A - 2 ; case 9
	.short _0224CCC4 - _0224CB3A - 2 ; case 10
_0224CB50:
	ldr r0, [r5, #0xc]
	bl sub_02029894
	bl sub_0202988C
	strb r0, [r4, #0x12]
	bl sub_020594FC
	bl ov23_0224219C
	mov r1, #0x21
	bl ov23_02254098
	ldr r0, _0224CD54 ; =0x0000061E
	bl sub_02005748
	ldr r0, [r5, #0x3c]
	bl sub_0205EB3C
	add r1, r7, #0
	add r2, r1, #0
	add r3, r1, #0
	bl ov5_021F58FC
	bl ov23_0224219C
	add r2, r7, #0
	mov r1, #0x21
	add r3, r2, #0
	bl ov23_02253F40
	mov r0, #1
	str r0, [r4, #0xc]
	add r0, r7, #0
	strb r0, [r4, #0x11]
	b _0224CD04
_0224CB98:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CBB0
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x11]
	cmp r0, #0x1e
	bhi _0224CBB2
_0224CBB0:
	b _0224CD04
_0224CBB2:
	mov r0, #2
	str r0, [r4, #0xc]
	b _0224CD04
_0224CBB8:
	bl sub_0203608C
	bl sub_02058D88
	add r6, r0, #0
	bl sub_0203608C
	bl sub_02058DC0
	str r0, [sp, #8]
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	bl sub_02059328
	str r0, [sp, #0xc]
	bl ov23_0224219C
	add r2, r7, #0
	mov r1, #0x22
	add r3, r2, #0
	bl ov23_02253F40
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	mov r3, #0x10
	bl ov23_0224C588
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov5_021F5634
	mov r0, #3
	str r0, [r4, #0xc]
	b _0224CD04
_0224CC04:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CD04
	bl sub_0203608C
	add r1, r7, #0
	bl ov23_0224BD1C
	cmp r0, #0
	beq _0224CC26
	mov r0, #4
	mov r6, #0x39
	str r0, [r4, #0xc]
	b _0224CC3A
_0224CC26:
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _0224CC34
	mov r0, #5
	mov r6, #0x24
	str r0, [r4, #0xc]
	b _0224CC3A
_0224CC34:
	mov r0, #5
	mov r6, #0x23
	str r0, [r4, #0xc]
_0224CC3A:
	bl ov23_0224219C
	mov r2, #0
	add r1, r6, #0
	add r3, r2, #0
	bl ov23_02253F40
	b _0224CD04
_0224CC4A:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CD04
	ldr r0, _0224CD58 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	beq _0224CD04
	add r7, r0, #0
	b _0224CD04
_0224CC64:
	bl ov23_0224219C
	bl ov23_02254238
	cmp r0, #0
	bne _0224CD04
	mov r0, #4
	str r0, [sp]
	ldr r0, [r5, #8]
	ldr r1, _0224CD5C ; =0x02256864
	ldr r2, _0224CD60 ; =0x000003D9
	mov r3, #0xb
	bl sub_02002100
	str r0, [r4, #8]
	mov r0, #6
	str r0, [r4, #0xc]
	b _0224CD04
_0224CC88:
	ldr r0, [r4, #8]
	mov r1, #4
	bl sub_02002114
	cmp r0, #0
	bne _0224CC9E
	mov r0, #9
	str r0, [r4, #0xc]
	add r0, r7, #0
	str r0, [r4, #8]
	b _0224CD04
_0224CC9E:
	sub r1, r7, #1
	cmp r0, r1
	beq _0224CD04
	mov r0, #0
	mov r7, #1
	str r0, [r4, #8]
	b _0224CD04
_0224CCAC:
	mov r0, #0x21
	bl ov23_0224FD68
	bl ov23_0224219C
	bl ov23_02254044
	bl ov23_02249A74
	mov r0, #0xa
	str r0, [r4, #0xc]
	b _0224CD04
_0224CCC4:
	bl sub_02033DFC
	cmp r0, #0
	beq _0224CD04
	bl sub_0203608C
	cmp r0, #0
	bne _0224CD04
	mov r1, #2
	add r0, sp, #0x10
	strb r1, [r0]
	ldrb r1, [r4, #0x12]
	cmp r1, #0
	beq _0224CCE4
	mov r1, #3
	strb r1, [r0]
_0224CCE4:
	bl ov23_0224D238
	mov r0, #0x56
	add r1, sp, #0x10
	bl sub_020360D0
	ldr r0, [sp, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0224CD04:
	cmp r7, #0
	beq _0224CD4E
	bl ov23_0224219C
	ldr r3, _0224CD64 ; =ov23_0224B654
	mov r1, #0x38
	mov r2, #1
	bl ov23_02253F40
	mov r0, #0x10
	bl ov23_0224C6AC
	bl sub_0203608C
	bl sub_02058D88
	add r6, r0, #0
	bl sub_0203608C
	bl sub_02058DC0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov5_021F5634
	ldr r0, [sp, #4]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	bl ov23_0224DC24
_0224CD4E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224CD54: .word 0x0000061E
_0224CD58: .word 0x021BF67C
_0224CD5C: .word 0x02256864
_0224CD60: .word 0x000003D9
_0224CD64: .word ov23_0224B654
	thumb_func_end ov23_0224CB1C

	thumb_func_start ov23_0224CD68
ov23_0224CD68: ; 0x0224CD68
	push {r3, lr}
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x56
	add r1, sp, #0
	bl sub_020360D0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224CD68

	thumb_func_start ov23_0224CD7C
ov23_0224CD7C: ; 0x0224CD7C
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224CD7C

	thumb_func_start ov23_0224CD80
ov23_0224CD80: ; 0x0224CD80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	add r6, r2, #0
	bl sub_02058EE0
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02058F18
	add r5, r0, #0
	add r0, r7, #0
	bl sub_02058F80
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_02058DF8
	add r0, r7, #0
	bl sub_02058E4C
	sub r0, r5, r0
	beq _0224CDBC
	add r0, r4, #1
	str r0, [sp, #0x10]
	sub r0, r4, #1
	str r0, [sp, #8]
	str r5, [sp, #0xc]
	str r5, [sp]
	b _0224CDC8
_0224CDBC:
	add r0, r5, #1
	str r0, [sp, #0xc]
	sub r0, r5, #1
	str r0, [sp]
	str r4, [sp, #0x10]
	str r4, [sp, #8]
_0224CDC8:
	add r0, sp, #0x14
	strb r7, [r0]
	ldrb r1, [r6]
	cmp r1, #0
	bne _0224CDD6
	mov r1, #0
	b _0224CDD8
_0224CDD6:
	mov r1, #5
_0224CDD8:
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_0224B65C
	ldrb r1, [r6]
	cmp r1, #0
	bne _0224CDEC
	cmp r0, #0xff
	bne _0224CE82
_0224CDEC:
	add r0, r4, #0
	add r1, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224CE00
	mov r1, #6
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE00:
	ldr r0, _0224CE90 ; =0x022577AC
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r2, r5, #0
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224CE82
	ldr r0, _0224CE90 ; =0x022577AC
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224CE82
	ldr r0, _0224CE90 ; =0x022577AC
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r2, [sp]
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224CE82
	ldrb r0, [r6]
	cmp r0, #0
	bne _0224CE44
	mov r1, #1
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE44:
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	mov r3, #0x10
	bl ov23_0224C1EC
	mov r0, #0x10
	add r1, r7, #0
	bl ov23_0224B79C
	cmp r0, #0
	beq _0224CE82
	ldrb r0, [r6]
	cmp r0, #1
	beq _0224CE6C
	cmp r0, #2
	beq _0224CE7C
	cmp r0, #3
	beq _0224CE74
	b _0224CE82
_0224CE6C:
	mov r1, #2
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE74:
	mov r1, #3
	add r0, sp, #0x14
	strb r1, [r0, #1]
	b _0224CE82
_0224CE7C:
	mov r1, #4
	add r0, sp, #0x14
	strb r1, [r0, #1]
_0224CE82:
	mov r0, #0x57
	add r1, sp, #0x14
	bl sub_02035B48
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CE90: .word 0x022577AC
	thumb_func_end ov23_0224CD80

	thumb_func_start ov23_0224CE94
ov23_0224CE94: ; 0x0224CE94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x10
	bl ov23_0224C6AC
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224CEAC
	mov r1, #4
	bl sub_02002154
_0224CEAC:
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	bl ov23_02243204
	bl sub_02059514
	bl ov23_0224DC24
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov23_0224CE94

	thumb_func_start ov23_0224CEC8
ov23_0224CEC8: ; 0x0224CEC8
	push {r4, lr}
	bl ov23_0224DC08
	mov r0, #4
	mov r1, #0x14
	bl sub_02018184
	mov r1, #0
	mov r2, #0x14
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r4, #0xc]
	bl sub_0203608C
	strb r0, [r4, #0x10]
	ldr r0, _0224CF0C ; =0x022577AC
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0x64
	ldr r0, [r0, #0]
	str r0, [r4, #0]
	ldr r0, _0224CF10 ; =ov23_0224CB1C
	bl sub_0200D9E8
	str r0, [r4, #4]
	ldr r1, [r4, #4]
	ldr r2, _0224CF14 ; =ov23_0224CE94
	add r0, r4, #0
	bl ov23_022431EC
	pop {r4, pc}
	nop
_0224CF0C: .word 0x022577AC
_0224CF10: .word ov23_0224CB1C
_0224CF14: .word ov23_0224CE94
	thumb_func_end ov23_0224CEC8

	thumb_func_start ov23_0224CF18
ov23_0224CF18: ; 0x0224CF18
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0224D018 ; =0x022577AC
	add r5, r2, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298A0
	ldrb r4, [r5]
	add r7, r0, #0
	bl sub_0203608C
	cmp r4, r0
	bne _0224D016
	ldrb r0, [r5, #1]
	cmp r0, #0
	bne _0224CF54
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224D01C ; =ov23_0224B654
	mov r1, #0x36
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224DC24
	pop {r3, r4, r5, r6, r7, pc}
_0224CF54:
	cmp r0, #1
	bne _0224CF5E
	bl ov23_0224CEC8
	pop {r3, r4, r5, r6, r7, pc}
_0224CF5E:
	cmp r0, #6
	bne _0224CF7A
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224D01C ; =ov23_0224B654
	mov r1, #0x4a
	mov r2, #1
	bl ov23_02253F40
	bl ov23_0224DC24
	pop {r3, r4, r5, r6, r7, pc}
_0224CF7A:
	cmp r0, #5
	bne _0224CF9A
	bl sub_020594FC
	bl ov23_0224219C
	ldr r3, _0224D01C ; =ov23_0224B654
	mov r1, #0x58
	mov r2, #1
	bl ov23_02253F40
	bl ov23_02249AA4
	bl ov23_0224DC24
	pop {r3, r4, r5, r6, r7, pc}
_0224CF9A:
	add r0, #0xfe
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #2
	bhi _0224D016
	add r0, r4, #0
	bl sub_02058D88
	add r4, r0, #0
	ldrb r0, [r5]
	bl sub_02058DC0
	add r6, r0, #0
	ldrb r0, [r5]
	bl sub_02058F50
	str r0, [sp]
	ldrb r3, [r5]
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_0224C1EC
	ldr r2, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x10
	bl ov23_0224C1EC
	ldrb r0, [r5, #1]
	cmp r0, #3
	bne _0224CFE0
	add r0, r7, #0
	bl sub_02029824
_0224CFE0:
	ldrb r0, [r5, #1]
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0224D016
	mov r0, #0xb
	bl sub_0202BE20
	add r1, r0, #0
	ldr r0, _0224D018 ; =0x022577AC
	mov r2, #1
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_0202B758
	ldr r0, _0224D018 ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_0202CD88
	mov r1, #0x23
	bl sub_0202CFEC
_0224D016:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D018: .word 0x022577AC
_0224D01C: .word ov23_0224B654
	thumb_func_end ov23_0224CF18

	thumb_func_start ov23_0224D020
ov23_0224D020: ; 0x0224D020
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0224D11C ; =0x022577AC
	add r6, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0224D030
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224D030:
	mov r5, #0
_0224D032:
	ldr r0, [r4, #0]
	ldr r1, _0224D120 ; =0x0000137B
	add r0, r0, r5
	ldrb r7, [r0, r1]
	cmp r7, #0xff
	beq _0224D068
	mov r2, #0xff
	strb r2, [r0, r1]
	cmp r5, r7
	beq _0224D068
	add r0, r5, #0
	bl sub_02032EE8
	str r0, [sp]
	add r0, r7, #0
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [sp]
	mov r2, #0x68
	add r3, r6, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _0224D068
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D068:
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D124 ; =0x0000134B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224D0A6
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D124 ; =0x0000134B
	ldrb r0, [r1, r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0xff
	add r3, r0, r5
	ldr r0, _0224D124 ; =0x0000134B
	strb r2, [r3, r0]
	add r0, r7, #0
	mov r2, #0x6c
	add r3, r6, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _0224D0A6
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D0A6:
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D128 ; =0x0000135B
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224D0D6
	add r0, r5, #0
	bl sub_02032EE8
	ldr r2, _0224D11C ; =0x022577AC
	mov r1, #0xff
	ldr r2, [r2, #0]
	add r3, r2, r5
	ldr r2, _0224D128 ; =0x0000135B
	strb r1, [r3, r2]
	mov r1, #0
	mov r2, #0x6d
	add r3, r6, #0
	bl ov23_022422A8
	cmp r0, #0
	beq _0224D116
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D0D6:
	ldr r0, _0224D12C ; =0x00001353
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	beq _0224D110
	add r0, r5, #0
	bl sub_02032EE8
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r1, r0, r5
	ldr r0, _0224D12C ; =0x00001353
	ldrb r0, [r1, r0]
	bl sub_02032EE8
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0xff
	add r3, r0, r5
	ldr r0, _0224D12C ; =0x00001353
	strb r2, [r3, r0]
	add r0, r7, #0
	mov r2, #0x6e
	add r3, r6, #0
	bl ov23_0224223C
	cmp r0, #0
	beq _0224D110
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224D110:
	add r5, r5, #1
	cmp r5, #8
	blt _0224D032
_0224D116:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D11C: .word 0x022577AC
_0224D120: .word 0x0000137B
_0224D124: .word 0x0000134B
_0224D128: .word 0x0000135B
_0224D12C: .word 0x00001353
	thumb_func_end ov23_0224D020

	thumb_func_start ov23_0224D130
ov23_0224D130: ; 0x0224D130
	ldr r0, _0224D14C ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224D146
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D146
	add r0, r0, #2
	bx lr
_0224D146:
	mov r0, #0
	bx lr
	nop
_0224D14C: .word 0x022577AC
	thumb_func_end ov23_0224D130

	thumb_func_start ov23_0224D150
ov23_0224D150: ; 0x0224D150
	ldr r0, _0224D170 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224D16A
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D16A
	ldrb r1, [r0]
	ldr r0, _0224D174 ; =0x0225760C
	ldrb r0, [r0, r1]
	bx lr
_0224D16A:
	mov r0, #0
	bx lr
	nop
_0224D170: .word 0x022577AC
_0224D174: .word 0x0225760C
	thumb_func_end ov23_0224D150

	thumb_func_start ov23_0224D178
ov23_0224D178: ; 0x0224D178
	ldr r0, _0224D198 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224D192
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0224D192
	ldrb r1, [r0]
	ldr r0, _0224D19C ; =0x02257620
	ldrb r0, [r0, r1]
	bx lr
_0224D192:
	mov r0, #0
	bx lr
	nop
_0224D198: .word 0x022577AC
_0224D19C: .word 0x02257620
	thumb_func_end ov23_0224D178

	thumb_func_start ov23_0224D1A0
ov23_0224D1A0: ; 0x0224D1A0
	push {r4, r5, r6, r7}
	add r7, r0, #0
	ldr r0, _0224D228 ; =0x022577AC
	add r5, r1, #0
	ldr r0, [r0, #0]
	mov ip, r0
	cmp r0, #0
	bne _0224D1B6
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0224D1B6:
	cmp r5, #0x40
	blt _0224D1C0
	mov r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0224D1C0:
	asr r0, r7, #4
	asr r1, r5, #4
	lsr r0, r0, #0x1b
	lsr r1, r1, #0x1b
	add r0, r7, r0
	add r1, r5, r1
	ldr r3, _0224D22C ; =0x0225760C
	ldr r4, _0224D230 ; =0x02257620
	asr r0, r0, #5
	asr r1, r1, #5
	mov r2, #0
_0224D1D6:
	ldrb r6, [r3]
	cmp r0, r6
	bne _0224D216
	ldrb r6, [r4]
	cmp r1, r6
	bne _0224D216
	lsr r4, r7, #0x1f
	lsl r3, r7, #0x1b
	sub r3, r3, r4
	mov r1, #0x1b
	ror r3, r1
	mov r0, #1
	add r4, r4, r3
	add r3, r0, #0
	lsl r3, r4
	lsl r4, r2, #7
	mov r2, ip
	add r2, r2, r4
	lsr r6, r5, #0x1f
	lsl r4, r5, #0x1b
	sub r4, r4, r6
	ror r4, r1
	add r1, r6, r4
	lsl r1, r1, #2
	add r2, r2, r1
	ldr r1, _0224D234 ; =0x00000A04
	ldr r1, [r2, r1]
	tst r1, r3
	bne _0224D222
	mov r0, #0
	pop {r4, r5, r6, r7}
	bx lr
_0224D216:
	add r2, r2, #1
	add r3, r3, #1
	add r4, r4, #1
	cmp r2, #0x11
	blt _0224D1D6
	mov r0, #1
_0224D222:
	pop {r4, r5, r6, r7}
	bx lr
	nop
_0224D228: .word 0x022577AC
_0224D22C: .word 0x0225760C
_0224D230: .word 0x02257620
_0224D234: .word 0x00000A04
	thumb_func_end ov23_0224D1A0

	thumb_func_start ov23_0224D238
ov23_0224D238: ; 0x0224D238
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb0
	ldr r0, _0224D38C ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_02029894
	str r0, [sp, #0xc]
	ldr r0, _0224D38C ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0203D174
	bl sub_020298B0
	add r4, r0, #0
	mov r0, #0
	bl sub_02058EE0
	str r0, [sp, #8]
	mov r0, #0
	bl sub_02058F18
	str r0, [sp, #4]
	mov r0, #0
	bl sub_02058F80
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #0x28]
	mov r0, #0xc
	str r0, [sp, #0x2c]
	ldr r0, _0224D38C ; =0x022577AC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	bl sub_0206AA20
	ldr r0, [sp, #0xc]
	bl sub_020292CC
	add r0, r4, #0
	bl sub_02028B34
	add r0, sp, #0x10
	bl sub_020361BC
	mov r4, #0
_0224D2A0:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	bl _ull_mul
	ldr r2, [sp, #0x20]
	ldr r6, [sp, #0x24]
	add r7, r2, r0
	adc r6, r1
	mov r1, #0
	add r0, r6, #0
	mov r2, #5
	mov r3, #0
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	bl _ull_mul
	cmp r1, #2
	bge _0224D2CE
	lsl r5, r1, #1
	add r5, #0xa
	b _0224D2D4
_0224D2CE:
	sub r0, r1, #3
	lsl r5, r0, #1
	add r5, #0x12
_0224D2D4:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, r7, #0
	add r3, r6, #0
	bl _ull_mul
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	add r0, r2, r0
	adc r3, r1
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r3, #0
	mov r1, #0
	mov r2, #6
	mov r3, #0
	bl _ull_mul
	lsl r6, r1, #1
	add r6, #0xc
	mov r0, #1
	mov r1, #0
	cmp r4, #0
	blt _0224D31E
	add r2, sp, #0x28
_0224D306:
	ldr r3, [r2, #0]
	cmp r5, r3
	bne _0224D316
	ldr r3, [r2, #4]
	cmp r6, r3
	bne _0224D316
	mov r0, #0
	b _0224D31E
_0224D316:
	add r1, r1, #1
	add r2, #8
	cmp r1, r4
	ble _0224D306
_0224D31E:
	cmp r0, #0
	bne _0224D326
	sub r4, r4, #1
	b _0224D33E
_0224D326:
	add r1, r4, #0
	ldr r0, [sp, #0xc]
	add r1, #0x10
	add r2, r5, #0
	add r3, r6, #0
	bl sub_02029364
	add r1, sp, #0x28
	lsl r0, r4, #3
	add r0, r1, r0
	str r5, [r0, #8]
	str r6, [r0, #0xc]
_0224D33E:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0224D2A0
	ldr r0, _0224D38C ; =0x022577AC
	mov r2, #0x22
	ldr r1, [r0, #0]
	ldr r0, _0224D390 ; =0x00000A04
	lsl r2, r2, #6
	add r0, r1, r0
	mov r1, #0xff
	bl MI_CpuFill8
	ldr r0, [sp]
	bl sub_02059328
	add r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	bl sub_02029854
	ldr r1, _0224D38C ; =0x022577AC
	ldr r0, [sp, #0xc]
	ldr r2, [r1, #0]
	ldr r1, _0224D394 ; =0x0000096A
	add r1, r2, r1
	mov r2, #0x94
	bl MI_CpuCopy8
	ldr r1, _0224D38C ; =0x022577AC
	ldr r0, [sp, #0xc]
	ldr r2, [r1, #0]
	ldr r1, _0224D398 ; =0x00001204
	add r1, r2, r1
	bl ov23_0224B39C
	add sp, #0xb0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D38C: .word 0x022577AC
_0224D390: .word 0x00000A04
_0224D394: .word 0x0000096A
_0224D398: .word 0x00001204
	thumb_func_end ov23_0224D238

	thumb_func_start ov23_0224D39C
ov23_0224D39C: ; 0x0224D39C
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421CC
	mov r2, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov23_02253F40
	pop {r4, pc}
	thumb_func_end ov23_0224D39C

	thumb_func_start ov23_0224D3B0
ov23_0224D3B0: ; 0x0224D3B0
	push {r3, lr}
	bl ov23_022421CC
	bl ov23_02254044
	pop {r3, pc}
	thumb_func_end ov23_0224D3B0

	thumb_func_start ov23_0224D3BC
ov23_0224D3BC: ; 0x0224D3BC
	push {r4, lr}
	add r4, r0, #0
	bl ov23_022421CC
	mov r1, #0
	add r2, r4, #0
	bl ov23_022541C8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224D3BC

	thumb_func_start ov23_0224D3D0
ov23_0224D3D0: ; 0x0224D3D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov23_022421CC
	add r1, r4, #0
	add r2, r5, #0
	bl ov23_02254154
	pop {r3, r4, r5, pc}
	thumb_func_end ov23_0224D3D0

	thumb_func_start ov23_0224D3E4
ov23_0224D3E4: ; 0x0224D3E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	mov r4, #0
_0224D3F0:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293B0
	str r0, [sp, #8]
	cmp r0, #0
	beq _0224D448
	cmp r4, #0
	beq _0224D448
	cmp r4, #0x10
	bge _0224D448
	bl sub_0205741C
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293FC
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202942C
	ldr r1, [sp]
	ldr r2, [sp, #4]
	sub r1, r1, r7
	sub r2, r2, r0
	cmp r1, #0
	blt _0224D448
	cmp r1, #2
	bgt _0224D448
	cmp r2, #0
	blt _0224D448
	cmp r2, #2
	bgt _0224D448
	lsl r0, r2, #1
	add r2, r2, r0
	add r0, r6, r1
	ldrb r0, [r2, r0]
	cmp r0, #0
	beq _0224D448
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0224D448:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224D3F0
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224D3E4

	thumb_func_start ov23_0224D454
ov23_0224D454: ; 0x0224D454
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	ldrh r4, [r1]
	ldrh r6, [r1, #2]
	add r5, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_0224D1A0
	cmp r0, #0
	bne _0224D4C0
	add r0, sp, #0
	strb r5, [r0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov23_0224B05C
	ldr r1, _0224D4C8 ; =0x022577AC
	mov r3, #0x1b
	ldr r2, [r1, #0]
	mov r1, #0x96
	add r2, #0xa
	mul r1, r0
	add r0, r2, r1
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1b
	sub r1, r1, r2
	ror r1, r3
	add r1, r2, r1
	lsr r4, r6, #0x1f
	lsl r2, r6, #0x1b
	sub r2, r2, r4
	ror r2, r3
	add r2, r4, r2
	bl ov23_0224D3E4
	bl sub_0205746C
	add r1, sp, #0
	strb r0, [r1, #1]
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0224D4C0
	add r0, r5, #0
	mov r1, #0
	bl sub_02059058
	mov r0, #0x3c
	add r1, sp, #0
	bl sub_02035B48
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0224D4C0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224D4C8: .word 0x022577AC
	thumb_func_end ov23_0224D454

	thumb_func_start ov23_0224D4CC
ov23_0224D4CC: ; 0x0224D4CC
	push {r3, r4, r5, lr}
	ldr r0, _0224D4F8 ; =0x022577AC
	add r5, r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xa
	lsl r0, r0, #8
	ldr r0, [r1, r0]
	add r0, r0, #2
	bl sub_020298AC
	add r4, r0, #0
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224D4F4
	ldrb r1, [r5, #1]
	add r0, r4, #0
	bl ov23_02253A00
_0224D4F4:
	pop {r3, r4, r5, pc}
	nop
_0224D4F8: .word 0x022577AC
	thumb_func_end ov23_0224D4CC

	thumb_func_start ov23_0224D4FC
ov23_0224D4FC: ; 0x0224D4FC
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224D4FC

	thumb_func_start ov23_0224D500
ov23_0224D500: ; 0x0224D500
	ldr r2, _0224D510 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224D50E
	add r2, r2, r0
	ldr r0, _0224D514 ; =0x0000134B
	strb r1, [r2, r0]
_0224D50E:
	bx lr
	; .align 2, 0
_0224D510: .word 0x022577AC
_0224D514: .word 0x0000134B
	thumb_func_end ov23_0224D500

	thumb_func_start ov23_0224D518
ov23_0224D518: ; 0x0224D518
	ldr r2, _0224D528 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224D526
	add r2, r2, r0
	ldr r0, _0224D52C ; =0x00001353
	strb r1, [r2, r0]
_0224D526:
	bx lr
	; .align 2, 0
_0224D528: .word 0x022577AC
_0224D52C: .word 0x00001353
	thumb_func_end ov23_0224D518

	thumb_func_start ov23_0224D530
ov23_0224D530: ; 0x0224D530
	ldr r1, _0224D544 ; =0x022577AC
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224D540
	add r1, r1, r0
	ldr r0, _0224D548 ; =0x0000135B
	mov r2, #1
	strb r2, [r1, r0]
_0224D540:
	bx lr
	nop
_0224D544: .word 0x022577AC
_0224D548: .word 0x0000135B
	thumb_func_end ov23_0224D530

	thumb_func_start ov23_0224D54C
ov23_0224D54C: ; 0x0224D54C
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, _0224D5A0 ; =0x022577AC
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl ov5_021E18C4
	add r1, r0, #0
	add r0, sp, #8
	bl ov5_021E1894
	ldr r1, _0224D5A0 ; =0x022577AC
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	add r1, #0xa4
	ldr r1, [r1, #0]
	bl ov5_021E1674
	ldr r0, _0224D5A0 ; =0x022577AC
	ldr r2, _0224D5A4 ; =0x0000013D
	ldr r0, [r0, #0]
	ldr r1, [r0, #0]
	mov r0, #0
	str r0, [sp]
	ldr r0, [r1, #0x50]
	str r0, [sp, #4]
	add r0, r1, #0
	ldrb r3, [r4, #5]
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r2, r3, r2
	ldr r1, [r1, #0x30]
	add r3, sp, #8
	bl ov5_021E19CC
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0224D5A0: .word 0x022577AC
_0224D5A4: .word 0x0000013D
	thumb_func_end ov23_0224D54C

	thumb_func_start ov23_0224D5A8
ov23_0224D5A8: ; 0x0224D5A8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov23_0224D5A8

	thumb_func_start ov23_0224D5BC
ov23_0224D5BC: ; 0x0224D5BC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #4
	bhi _0224D68A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224D5D6: ; jump table
	.short _0224D5E0 - _0224D5D6 - 2 ; case 0
	.short _0224D600 - _0224D5D6 - 2 ; case 1
	.short _0224D62E - _0224D5D6 - 2 ; case 2
	.short _0224D65E - _0224D5D6 - 2 ; case 3
	.short _0224D67A - _0224D5D6 - 2 ; case 4
_0224D5E0:
	bl sub_020594FC
	bl ov23_022421AC
	mov r2, #0
	mov r1, #7
	add r3, r2, #0
	bl ov23_02253F40
	ldr r0, _0224D690 ; =0x000005E3
	bl sub_02005748
	mov r0, #1
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, pc}
_0224D600:
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _0224D68A
	ldr r0, _0224D694 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224D68A
	bl ov23_022421AC
	ldrb r1, [r4, #5]
	mov r2, #0
	add r3, r2, #0
	add r1, #0xe
	bl ov23_02253F40
	mov r0, #2
	add sp, #0xc
	str r0, [r4, #0]
	pop {r4, r5, pc}
_0224D62E:
	bl ov23_022421AC
	bl ov23_02254238
	cmp r0, #0
	bne _0224D68A
	ldr r0, _0224D694 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224D68A
	add r0, r4, #0
	bl ov23_0224D54C
	mov r0, #4
	str r0, [r4, #0]
	bl ov23_022421AC
	bl ov23_02254044
	bl sub_02059514
	add sp, #0xc
	pop {r4, r5, pc}
_0224D65E:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	add sp, #0xc
	pop {r4, r5, pc}
_0224D67A:
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	bl ov23_02243204
_0224D68A:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0224D690: .word 0x000005E3
_0224D694: .word 0x021BF67C
	thumb_func_end ov23_0224D5BC

	thumb_func_start ov23_0224D698
ov23_0224D698: ; 0x0224D698
	push {r3, lr}
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r2]
	strb r0, [r1, #1]
	mov r0, #0x61
	add r1, sp, #0
	bl sub_02035B48
	pop {r3, pc}
	thumb_func_end ov23_0224D698

	thumb_func_start ov23_0224D6AC
ov23_0224D6AC: ; 0x0224D6AC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	bl sub_0203608C
	ldrb r1, [r5]
	cmp r1, r0
	bne _0224D6E8
	mov r0, #0xb
	mov r1, #8
	bl sub_02018144
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0
	str r0, [r4, #0]
	ldrb r0, [r5, #1]
	add r1, r4, #0
	mov r2, #0x64
	strb r0, [r4, #5]
	ldr r0, _0224D6EC ; =ov23_0224D5BC
	bl sub_0200D9E8
	add r1, r0, #0
	ldr r2, _0224D6F0 ; =ov23_0224D5A8
	add r0, r4, #0
	bl ov23_022431EC
_0224D6E8:
	pop {r3, r4, r5, pc}
	nop
_0224D6EC: .word ov23_0224D5BC
_0224D6F0: .word ov23_0224D5A8
	thumb_func_end ov23_0224D6AC

	thumb_func_start ov23_0224D6F4
ov23_0224D6F4: ; 0x0224D6F4
	mov r0, #2
	bx lr
	thumb_func_end ov23_0224D6F4

	thumb_func_start ov23_0224D6F8
ov23_0224D6F8: ; 0x0224D6F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp]
	mov r4, #0
_0224D704:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293B0
	str r0, [sp, #4]
	cmp r0, #0
	beq _0224D744
	cmp r4, #0
	beq _0224D744
	cmp r4, #0x10
	bge _0224D744
	bl sub_0205741C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020293FC
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202942C
	ldr r1, [sp]
	sub r2, r7, r6
	sub r0, r1, r0
	cmp r2, #0
	bne _0224D744
	cmp r0, #0
	bne _0224D744
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224D744:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0224D704
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov23_0224D6F8

	thumb_func_start ov23_0224D750
ov23_0224D750: ; 0x0224D750
	sub r0, #0x38
	cmp r0, #0xf
	bhi _0224D7C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224D762: ; jump table
	.short _0224D782 - _0224D762 - 2 ; case 0
	.short _0224D786 - _0224D762 - 2 ; case 1
	.short _0224D78A - _0224D762 - 2 ; case 2
	.short _0224D78E - _0224D762 - 2 ; case 3
	.short _0224D792 - _0224D762 - 2 ; case 4
	.short _0224D796 - _0224D762 - 2 ; case 5
	.short _0224D79A - _0224D762 - 2 ; case 6
	.short _0224D79E - _0224D762 - 2 ; case 7
	.short _0224D7A2 - _0224D762 - 2 ; case 8
	.short _0224D7A6 - _0224D762 - 2 ; case 9
	.short _0224D7AA - _0224D762 - 2 ; case 10
	.short _0224D7AE - _0224D762 - 2 ; case 11
	.short _0224D7B2 - _0224D762 - 2 ; case 12
	.short _0224D7B6 - _0224D762 - 2 ; case 13
	.short _0224D7BA - _0224D762 - 2 ; case 14
	.short _0224D7BE - _0224D762 - 2 ; case 15
_0224D782:
	mov r0, #0xb
	bx lr
_0224D786:
	mov r0, #0xc
	bx lr
_0224D78A:
	mov r0, #0x12
	bx lr
_0224D78E:
	mov r0, #0x13
	bx lr
_0224D792:
	mov r0, #0x14
	bx lr
_0224D796:
	mov r0, #0x15
	bx lr
_0224D79A:
	mov r0, #0x16
	bx lr
_0224D79E:
	mov r0, #0x17
	bx lr
_0224D7A2:
	mov r0, #0x18
	bx lr
_0224D7A6:
	mov r0, #0x19
	bx lr
_0224D7AA:
	mov r0, #0x1a
	bx lr
_0224D7AE:
	mov r0, #0x1b
	bx lr
_0224D7B2:
	mov r0, #0x1c
	bx lr
_0224D7B6:
	mov r0, #0x1d
	bx lr
_0224D7BA:
	mov r0, #0x1e
	bx lr
_0224D7BE:
	mov r0, #0x1f
	bx lr
_0224D7C2:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov23_0224D750

	thumb_func_start ov23_0224D7C8
ov23_0224D7C8: ; 0x0224D7C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r5, #0
	bl sub_02058E4C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02058F80
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224D7F6
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0224D7F6:
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224D1A0
	cmp r0, #1
	bne _0224D86E
	ldr r0, _0224D874 ; =0x022577AC
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224D878 ; =0x00001383
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224D86E
	add r0, r6, #0
	add r1, r4, #0
	bl ov23_0224B05C
	ldr r1, _0224D874 ; =0x022577AC
	lsr r3, r6, #0x1f
	ldr r2, [r1, #0]
	mov r1, #0x96
	add r2, #0xa
	mul r1, r0
	add r0, r2, r1
	lsl r2, r6, #0x1b
	sub r2, r2, r3
	mov r1, #0x1b
	ror r2, r1
	add r1, r3, r2
	lsr r3, r4, #0x1f
	lsl r7, r4, #0x1b
	sub r7, r7, r3
	mov r2, #0x1b
	ror r7, r2
	add r2, r3, r7
	bl ov23_0224D6F8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov23_0224D750
	add r2, r0, #0
	beq _0224D86E
	ldr r1, _0224D874 ; =0x022577AC
	mov r0, #1
	ldr r1, [r1, #0]
	add r3, r1, r5
	ldr r1, _0224D878 ; =0x00001383
	strb r0, [r3, r1]
	ldr r0, [sp, #8]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0xff
	add r3, r6, #0
	bl ov23_022443CC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224D86E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D874: .word 0x022577AC
_0224D878: .word 0x00001383
	thumb_func_end ov23_0224D7C8

	thumb_func_start ov23_0224D87C
ov23_0224D87C: ; 0x0224D87C
	ldr r1, _0224D890 ; =0x022577AC
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0224D88C
	add r1, r1, r0
	ldr r0, _0224D894 ; =0x00001383
	mov r2, #0
	strb r2, [r1, r0]
_0224D88C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0224D890: .word 0x022577AC
_0224D894: .word 0x00001383
	thumb_func_end ov23_0224D87C

	thumb_func_start ov23_0224D898
ov23_0224D898: ; 0x0224D898
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r0, sp, #4
	mov r1, #0
	mov r2, #8
	bl MI_CpuFill8
	mov r4, #0
	add r5, sp, #4
_0224D8AA:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0224D926
	add r0, r4, #0
	bl sub_02058DF8
	str r0, [sp]
	add r0, r4, #0
	bl sub_02058E4C
	add r7, r0, #0
	ldr r1, [sp]
	ldr r0, _0224D998 ; =0x0000FFFF
	cmp r1, r0
	bne _0224D8D2
	cmp r7, r0
	beq _0224D926
_0224D8D2:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov23_0224B05C
	add r6, r0, #0
	cmp r4, r6
	beq _0224D926
	cmp r6, #0x10
	beq _0224D926
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0224D926
	ldr r0, _0224D99C ; =0x022577AC
	ldr r1, _0224D9A0 ; =0x0000136B
	ldr r0, [r0, #0]
	add r0, r0, r4
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	bne _0224D926
	ldr r1, _0224D9A4 ; =0x00001373
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	bne _0224D926
	ldr r0, [sp]
	add r1, r7, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224D926
	ldrb r0, [r5]
	cmp r0, #0
	bne _0224D926
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #1
	bl ov23_0224B844
	mov r0, #1
	strb r0, [r5]
_0224D926:
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _0224D8AA
	bl sub_0203608C
	ldr r1, _0224D99C ; =0x022577AC
	add r4, r0, #0
	ldr r2, [r1, #0]
	ldr r1, _0224D9A8 ; =0x000012E4
	ldrb r1, [r2, r1]
	cmp r1, #6
	bne _0224D992
	bl sub_02058DF8
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02058E4C
	add r5, r0, #0
	ldr r0, _0224D998 ; =0x0000FFFF
	cmp r6, r0
	bne _0224D958
	cmp r5, r0
	beq _0224D980
_0224D958:
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_02242E58
	cmp r0, #0
	beq _0224D980
	add r0, r6, #0
	add r1, r5, #0
	bl ov23_0224B05C
	add r5, sp, #4
	ldrb r1, [r5, r4]
	cmp r1, #0
	bne _0224D980
	add r1, r4, #0
	mov r2, #1
	bl ov23_0224B844
	mov r0, #1
	strb r0, [r5, r4]
_0224D980:
	add r0, sp, #4
	ldrb r0, [r0, r4]
	cmp r0, #0
	beq _0224D992
	ldr r0, _0224D99C ; =0x022577AC
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _0224D9A8 ; =0x000012E4
	strb r2, [r1, r0]
_0224D992:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224D998: .word 0x0000FFFF
_0224D99C: .word 0x022577AC
_0224D9A0: .word 0x0000136B
_0224D9A4: .word 0x00001373
_0224D9A8: .word 0x000012E4
	thumb_func_end ov23_0224D898

	thumb_func_start ov23_0224D9AC
ov23_0224D9AC: ; 0x0224D9AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0224DA7C ; =0x022577AC
	str r1, [sp, #8]
	ldr r0, [r0, #0]
	add r1, r0, r5
	ldr r0, _0224DA80 ; =0x00001363
	ldrb r0, [r1, r0]
	cmp r0, #0xff
	bne _0224D9C8
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224D9C8:
	bl sub_0203608C
	bl sub_02058CA0
	add r4, r0, #0
	bl sub_0203608C
	bl sub_02058CF4
	add r1, r0, #0
	add r0, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224D9F8
	ldr r0, _0224DA7C ; =0x022577AC
	mov r2, #0xff
	ldr r0, [r0, #0]
	add sp, #0x10
	add r1, r0, r5
	ldr r0, _0224DA80 ; =0x00001363
	strb r2, [r1, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224D9F8:
	bl ov23_022535EC
	bl ov23_0224F24C
	bl ov23_0224321C
	bl sub_0203608C
	mov r1, #0
	bl ov23_02244858
	ldr r0, _0224DA7C ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224DA84 ; =0x000013DC
	add r1, r0, #2
	ldrh r6, [r2, r0]
	add r0, r0, #4
	ldrh r4, [r2, r1]
	ldrb r7, [r2, r0]
	cmp r6, #0
	beq _0224DA26
	cmp r4, #0
	bne _0224DA2A
_0224DA26:
	bl GF_AssertFail
_0224DA2A:
	add r0, r7, #0
	bl sub_0206419C
	str r0, [sp, #0xc]
	add r0, r7, #0
	bl sub_020641A8
	add r2, r0, #0
	ldr r0, _0224DA7C ; =0x022577AC
	mov r3, #0
	ldr r1, [r0, #0]
	ldr r0, _0224DA88 ; =0x000013E6
	add r2, r4, r2
	strb r3, [r1, r0]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, _0224DA7C ; =0x022577AC
	add r1, r6, r1
	ldr r0, [r0, #0]
	add r3, r7, #0
	ldr r0, [r0, #0]
	bl ov23_0224CAF0
	bl ov23_02249AB8
	ldr r1, _0224DA7C ; =0x022577AC
	mov r0, #0xa
	ldr r2, [r1, #0]
	mov r3, #0
	lsl r0, r0, #8
	str r3, [r2, r0]
	ldr r0, [r1, #0]
	mov r2, #0xff
	add r1, r0, r5
	ldr r0, _0224DA80 ; =0x00001363
	strb r2, [r1, r0]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DA7C: .word 0x022577AC
_0224DA80: .word 0x00001363
_0224DA84: .word 0x000013DC
_0224DA88: .word 0x000013E6
	thumb_func_end ov23_0224D9AC

	thumb_func_start ov23_0224DA8C
ov23_0224DA8C: ; 0x0224DA8C
	push {r3, lr}
	ldr r0, _0224DAAC ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224DAB0 ; =0x000012E4
	ldrb r1, [r2, r0]
	cmp r1, #1
	bne _0224DAA8
	mov r1, #2
	strb r1, [r2, r0]
	bl sub_020578DC
	mov r0, #0
	bl ov23_0224B5CC
_0224DAA8:
	pop {r3, pc}
	nop
_0224DAAC: .word 0x022577AC
_0224DAB0: .word 0x000012E4
	thumb_func_end ov23_0224DA8C

	thumb_func_start ov23_0224DAB4
ov23_0224DAB4: ; 0x0224DAB4
	ldr r0, _0224DAC8 ; =0x022577AC
	ldr r2, [r0, #0]
	ldr r0, _0224DACC ; =0x000012E4
	ldrb r1, [r2, r0]
	cmp r1, #5
	bne _0224DAC4
	mov r1, #4
	strb r1, [r2, r0]
_0224DAC4:
	bx lr
	nop
_0224DAC8: .word 0x022577AC
_0224DACC: .word 0x000012E4
	thumb_func_end ov23_0224DAB4

	thumb_func_start ov23_0224DAD0
ov23_0224DAD0: ; 0x0224DAD0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02058EA0
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02058EC0
	add r4, r0, #0
	ldr r0, _0224DB40 ; =0x022577AC
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	bne _0224DB00
	cmp r6, #0
	beq _0224DB3E
	bl sub_02033DFC
	cmp r0, #0
	bne _0224DB3E
_0224DB00:
	ldr r0, _0224DB44 ; =0x0000FFFF
	cmp r5, r0
	bne _0224DB16
	cmp r4, r0
	bne _0224DB16
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #1
	bl ov23_0224B844
	pop {r4, r5, r6, pc}
_0224DB16:
	add r0, r5, #0
	add r1, r4, #0
	bl ov23_02242E58
	cmp r0, #0
	bne _0224DB34
	ldr r0, _0224DB40 ; =0x022577AC
	add r1, r5, #0
	ldr r0, [r0, #0]
	add r2, r4, #0
	ldr r0, [r0, #0]
	bl sub_02054F68
	cmp r0, #0
	beq _0224DB3E
_0224DB34:
	add r0, r6, #0
	add r1, r6, #0
	mov r2, #1
	bl ov23_0224B844
_0224DB3E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224DB40: .word 0x022577AC
_0224DB44: .word 0x0000FFFF
	thumb_func_end ov23_0224DAD0

	thumb_func_start ov23_0224DB48
ov23_0224DB48: ; 0x0224DB48
	ldr r0, _0224DB5C ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224DB56
	ldr r0, _0224DB60 ; =0x000013DC
	ldrh r0, [r1, r0]
	bx lr
_0224DB56:
	mov r0, #0x48
	bx lr
	nop
_0224DB5C: .word 0x022577AC
_0224DB60: .word 0x000013DC
	thumb_func_end ov23_0224DB48

	thumb_func_start ov23_0224DB64
ov23_0224DB64: ; 0x0224DB64
	ldr r0, _0224DB78 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224DB72
	ldr r0, _0224DB7C ; =0x000013DE
	ldrh r0, [r1, r0]
	bx lr
_0224DB72:
	ldr r0, _0224DB80 ; =0x000001B5
	bx lr
	nop
_0224DB78: .word 0x022577AC
_0224DB7C: .word 0x000013DE
_0224DB80: .word 0x000001B5
	thumb_func_end ov23_0224DB64

	thumb_func_start ov23_0224DB84
ov23_0224DB84: ; 0x0224DB84
	ldr r0, _0224DB98 ; =0x022577AC
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0224DB92
	ldr r0, _0224DB9C ; =0x000013E0
	ldrb r0, [r1, r0]
	bx lr
_0224DB92:
	mov r0, #1
	bx lr
	nop
_0224DB98: .word 0x022577AC
_0224DB9C: .word 0x000013E0
	thumb_func_end ov23_0224DB84

	thumb_func_start ov23_0224DBA0
ov23_0224DBA0: ; 0x0224DBA0
	ldr r2, _0224DBB4 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224DBB0
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _0224DBB8 ; =0x000013AC
	strh r1, [r2, r0]
_0224DBB0:
	bx lr
	nop
_0224DBB4: .word 0x022577AC
_0224DBB8: .word 0x000013AC
	thumb_func_end ov23_0224DBA0

	thumb_func_start ov23_0224DBBC
ov23_0224DBBC: ; 0x0224DBBC
	ldr r2, _0224DBD0 ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224DBCC
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _0224DBD4 ; =0x000013BC
	strh r1, [r2, r0]
_0224DBCC:
	bx lr
	nop
_0224DBD0: .word 0x022577AC
_0224DBD4: .word 0x000013BC
	thumb_func_end ov23_0224DBBC

	thumb_func_start ov23_0224DBD8
ov23_0224DBD8: ; 0x0224DBD8
	ldr r2, _0224DBEC ; =0x022577AC
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0224DBE8
	lsl r0, r0, #1
	add r2, r2, r0
	ldr r0, _0224DBF0 ; =0x000013CC
	strh r1, [r2, r0]
_0224DBE8:
	bx lr
	nop
_0224DBEC: .word 0x022577AC
_0224DBF0: .word 0x000013CC
	thumb_func_end ov23_0224DBD8

	thumb_func_start ov23_0224DBF4
ov23_0224DBF4: ; 0x0224DBF4
	ldr r1, _0224DC00 ; =0x022577AC
	ldr r2, [r1, #0]
	ldr r1, _0224DC04 ; =0x000013E5
	strb r0, [r2, r1]
	bx lr
	nop
_0224DC00: .word 0x022577AC
_0224DC04: .word 0x000013E5
	thumb_func_end ov23_0224DBF4

	thumb_func_start ov23_0224DC08
ov23_0224DC08: ; 0x0224DC08
	push {r3, lr}
	mov r0, #1
	bl sub_02032174
	mov r0, #1
	bl sub_02032138
	mov r0, #1
	bl sub_02036814
	bl sub_020340FC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224DC08

	thumb_func_start ov23_0224DC24
ov23_0224DC24: ; 0x0224DC24
	push {r3, lr}
	mov r0, #0
	bl sub_02032174
	mov r0, #0
	bl sub_02032138
	mov r0, #0
	bl sub_02036814
	bl sub_020340FC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov23_0224DC24

	.rodata


	.global Unk_ov23_0225683C
Unk_ov23_0225683C: ; 0x0225683C
	.incbin "incbin/overlay23_rodata.bin", 0x530, 0x534 - 0x530

	.global Unk_ov23_02256840
Unk_ov23_02256840: ; 0x02256840
	.incbin "incbin/overlay23_rodata.bin", 0x534, 0x538 - 0x534

	.global Unk_ov23_02256844
Unk_ov23_02256844: ; 0x02256844
	.incbin "incbin/overlay23_rodata.bin", 0x538, 0x53C - 0x538

	.global Unk_ov23_02256848
Unk_ov23_02256848: ; 0x02256848
	.incbin "incbin/overlay23_rodata.bin", 0x53C, 0x540 - 0x53C

	.global Unk_ov23_0225684C
Unk_ov23_0225684C: ; 0x0225684C
	.incbin "incbin/overlay23_rodata.bin", 0x540, 0x544 - 0x540

	.global Unk_ov23_02256850
Unk_ov23_02256850: ; 0x02256850
	.incbin "incbin/overlay23_rodata.bin", 0x544, 0x548 - 0x544

	.global Unk_ov23_02256854
Unk_ov23_02256854: ; 0x02256854
	.incbin "incbin/overlay23_rodata.bin", 0x548, 0x54C - 0x548

	.global Unk_ov23_02256858
Unk_ov23_02256858: ; 0x02256858
	.incbin "incbin/overlay23_rodata.bin", 0x54C, 0x552 - 0x54C

	.global Unk_ov23_0225685E
Unk_ov23_0225685E: ; 0x0225685E
	.incbin "incbin/overlay23_rodata.bin", 0x552, 0x558 - 0x552

	.global Unk_ov23_02256864
Unk_ov23_02256864: ; 0x02256864
	.incbin "incbin/overlay23_rodata.bin", 0x558, 0x560 - 0x558

	.global Unk_ov23_0225686C
Unk_ov23_0225686C: ; 0x0225686C
	.incbin "incbin/overlay23_rodata.bin", 0x560, 0x568 - 0x560

	.global Unk_ov23_02256874
Unk_ov23_02256874: ; 0x02256874
	.incbin "incbin/overlay23_rodata.bin", 0x568, 0x571 - 0x568

	.global Unk_ov23_0225687D
Unk_ov23_0225687D: ; 0x0225687D
	.incbin "incbin/overlay23_rodata.bin", 0x571, 0x9


	.data


	.global Unk_ov23_0225760C
Unk_ov23_0225760C: ; 0x0225760C
	.incbin "incbin/overlay23_data.bin", 0xA2C, 0xA40 - 0xA2C

	.global Unk_ov23_02257620
Unk_ov23_02257620: ; 0x02257620
	.incbin "incbin/overlay23_data.bin", 0xA40, 0x11


	.bss


	.global Unk_ov23_022577AC
Unk_ov23_022577AC: ; 0x022577AC
	.space 0x4

