	.include "macros/function.inc"
	.include "include/ov107_02245EB0.inc"

	

	.text


	thumb_func_start ov107_02245EB0
ov107_02245EB0: ; 0x02245EB0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	ldr r0, _02245FC8 ; =0x00000068
	mov r1, #2
	bl sub_02006590
	bl ov107_02246EAC
	mov r2, #2
	mov r0, #3
	mov r1, #0x64
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0xf7
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x64
	bl sub_0200681C
	mov r2, #0xf7
	mov r1, #0
	lsl r2, r2, #2
	add r5, r0, #0
	bl memset
	mov r0, #0x64
	bl sub_02018340
	str r0, [r5, #0x4c]
	add r0, r4, #0
	str r4, [r5, #0]
	bl sub_02006840
	add r4, r0, #0
	mov r0, #0x53
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl sub_020302DC
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r0, r1, #4
	ldr r0, [r5, r0]
	bl sub_0203041C
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	add r2, r4, #0
	add r2, #0x20
	strb r0, [r5, #9]
	mov r0, #0xd9
	lsl r0, r0, #2
	sub r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl sub_02025E44
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xde
	add r2, r4, #0
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #0
	add r2, #8
	sub r1, #0x10
	str r2, [r5, r1]
	add r2, r4, #0
	add r1, r0, #0
	add r2, #0xc
	sub r1, #0xc
	str r2, [r5, r1]
	add r2, r4, #0
	add r1, r0, #0
	add r2, #0x10
	sub r1, #8
	str r2, [r5, r1]
	add r2, r4, #0
	sub r1, r0, #4
	add r2, #0x14
	str r2, [r5, r1]
	mov r2, #0xff
	strb r2, [r5, #0x11]
	ldrh r1, [r4, #0x28]
	add r0, #0x5e
	add r2, #0x4d
	strh r1, [r5, r0]
	ldr r0, [r5, r2]
	bl sub_0203068C
	str r0, [r5, #4]
	ldr r0, _02245FCC ; =0x000003D3
	mov r3, #0
	mov r2, #1
_02245F7E:
	add r1, r5, r3
	add r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02245F7E
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02245F96
	mov r0, #3
	b _02245F98
_02245F96:
	mov r0, #4
_02245F98:
	strb r0, [r5, #0x14]
	ldrb r0, [r5, #0x14]
	mov r1, #0
	strb r0, [r5, #0x15]
	sub r0, r0, #1
	strb r0, [r5, #0xc]
	mov r0, #0x3d
	lsl r0, r0, #4
	strb r1, [r5, r0]
	add r0, r5, #0
	bl ov107_02246EE4
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02245FC0
	add r0, r5, #0
	bl sub_0209BA80
_02245FC0:
	mov r0, #0
	str r0, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02245FC8: .word 0x00000068
_02245FCC: .word 0x000003D3
	thumb_func_end ov107_02245EB0

	thumb_func_start ov107_02245FD0
ov107_02245FD0: ; 0x02245FD0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, _0224612C ; =0x000003D2
	add r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #1
	bne _02246040
	ldr r2, [r5, #0]
	cmp r2, #1
	bne _0224606C
	mov r2, #0
	strb r2, [r4, r1]
	bl ov107_0224883C
	add r0, r4, #0
	bl ov107_02249238
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224600C
	bl ov107_02249B8C
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
_0224600C:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldr r0, [r4, #0x24]
	mov r1, #0
	bl ov104_0222E5D0
	add r0, r4, #0
	mov r1, #7
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov107_02248350
	b _0224606C
_02246040:
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	beq _0224606C
	ldr r0, [r5, #0]
	cmp r0, #1
	beq _02246050
	cmp r0, #3
	bne _0224606C
_02246050:
	ldr r0, _0224612C ; =0x000003D2
	mov r1, #0
	strb r1, [r4, r0]
	add r0, r4, #0
	bl ov107_0224883C
	add r0, r4, #0
	bl ov107_02249238
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov107_02248350
_0224606C:
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _02246116
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224607E: ; jump table
	.short _02246088 - _0224607E - 2 ; case 0
	.short _0224609E - _0224607E - 2 ; case 1
	.short _022460DC - _0224607E - 2 ; case 2
	.short _022460F2 - _0224607E - 2 ; case 3
	.short _02246108 - _0224607E - 2 ; case 4
_02246088:
	add r0, r4, #0
	bl ov107_02246170
	cmp r0, #1
	bne _02246116
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov107_02248350
	b _02246116
_0224609E:
	add r0, r4, #0
	bl ov107_022462CC
	cmp r0, #1
	bne _02246116
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _022460BA
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #2
	bl ov107_02248350
	b _02246116
_022460BA:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _022460D0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov107_02248350
	b _02246116
_022460D0:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov107_02248350
	b _02246116
_022460DC:
	add r0, r4, #0
	bl ov107_02246BDC
	cmp r0, #1
	bne _02246116
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov107_02248350
	b _02246116
_022460F2:
	add r0, r4, #0
	bl ov107_02246CD0
	cmp r0, #1
	bne _02246116
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #4
	bl ov107_02248350
	b _02246116
_02246108:
	add r0, r4, #0
	bl ov107_02246D3C
	cmp r0, #1
	bne _02246116
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246116:
	add r0, r4, #0
	bl ov107_022492A8
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224612C: .word 0x000003D2
	thumb_func_end ov107_02245FD0

	thumb_func_start ov107_02246130
ov107_02246130: ; 0x02246130
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0xd9
	lsl r0, r0, #2
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl sub_0201DC3C
	add r0, r4, #0
	bl ov107_02246D84
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x64
	bl sub_0201807C
	ldr r0, _0224616C ; =0x00000068
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224616C: .word 0x00000068
	thumb_func_end ov107_02246130

	thumb_func_start ov107_02246170
ov107_02246170: ; 0x02246170
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _0224626C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02246188: ; jump table
	.short _02246192 - _02246188 - 2 ; case 0
	.short _022461AE - _02246188 - 2 ; case 1
	.short _022461D6 - _02246188 - 2 ; case 2
	.short _0224621C - _02246188 - 2 ; case 3
	.short _0224625E - _02246188 - 2 ; case 4
_02246192:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _022461A6
	bl sub_020365F4
	mov r0, #0xd8
	bl sub_020364F0
_022461A6:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461AE:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _022461CE
	mov r0, #0xd8
	bl sub_02036540
	cmp r0, #1
	bne _0224626C
	bl sub_020365F4
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461CE:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461D6:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _022461F6
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0
	bl ov107_02248874
	cmp r0, #1
	bne _0224626C
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461F6:
	add r0, r4, #0
	bl ov107_02246274
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_0224621C:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02246256
	ldrb r0, [r4, #0x17]
	cmp r0, #2
	blo _0224626C
	mov r0, #0
	strb r0, [r4, #0x17]
	add r0, r4, #0
	bl ov107_02246274
	mov r0, #6
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #1
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_02246256:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_0224625E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0224626C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0224626C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02246170

	thumb_func_start ov107_02246274
ov107_02246274: ; 0x02246274
	push {r4, r5, lr}
	sub sp, #0xc
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r4, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov107_022484DC
	add r5, r4, #0
	add r5, #0x50
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r1, r5, #0
	bl ov107_02248E84
	add r0, r4, #0
	add r1, r5, #0
	bl ov107_02248C08
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x80
	bl ov107_02247B78
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x70
	bl ov107_02247C64
	add r0, r4, #0
	bl ov107_02248240
	bl sub_0201FFD0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02246274

	thumb_func_start ov107_022462CC
ov107_022462CC: ; 0x022462CC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x11
	bls _022462DA
	bl _02246BD0
_022462DA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022462E6: ; jump table
	.short _0224630A - _022462E6 - 2 ; case 0
	.short _02246366 - _022462E6 - 2 ; case 1
	.short _022463C0 - _022462E6 - 2 ; case 2
	.short _02246520 - _022462E6 - 2 ; case 3
	.short _022465DA - _022462E6 - 2 ; case 4
	.short _022466E2 - _022462E6 - 2 ; case 5
	.short _022467B2 - _022462E6 - 2 ; case 6
	.short _0224694E - _022462E6 - 2 ; case 7
	.short _0224699A - _022462E6 - 2 ; case 8
	.short _022469E6 - _022462E6 - 2 ; case 9
	.short _02246AA2 - _022462E6 - 2 ; case 10
	.short _02246ADC - _022462E6 - 2 ; case 11
	.short _02246AEE - _022462E6 - 2 ; case 12
	.short _02246B00 - _022462E6 - 2 ; case 13
	.short _02246B12 - _022462E6 - 2 ; case 14
	.short _02246B2E - _022462E6 - 2 ; case 15
	.short _02246B52 - _022462E6 - 2 ; case 16
	.short _02246B92 - _022462E6 - 2 ; case 17
_0224630A:
	mov r0, #0
	strb r0, [r4, #0xb]
	mov r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #0xf]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	cmp r0, #1
	bne _0224632C
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02248240
	b _0224635A
_0224632C:
	cmp r0, #2
	bne _02246352
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xd3
	mov r2, #0x69
	bl ov107_02249C60
	mov r0, #6
	strb r0, [r4, #8]
	b _0224635A
_02246352:
	cmp r0, #3
	bne _0224635A
	mov r0, #0xd
	strb r0, [r4, #8]
_0224635A:
	ldrb r1, [r4, #0xf]
	mov r0, #0xf8
	bic r1, r0
	strb r1, [r4, #0xf]
	bl _02246BD0
_02246366:
	ldr r1, _02246664 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov107_02248358
	ldr r0, _02246664 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0224639E
	ldr r0, _02246668 ; =0x000005DC
	bl sub_02005748
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	blo _0224638A
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224638A:
	add r0, r4, #0
	bl ov107_022482A4
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	bl _02246BD0
_0224639E:
	mov r0, #2
	tst r0, r1
	beq _022463EE
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _022463EE
	ldr r0, _02246668 ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022483F0
	bl _02246BD0
_022463C0:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _02246668 ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x18
	bl sub_020014D0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _0224640A
	bhs _02246412
	cmp r5, #6
	bls _022463F0
_022463EE:
	b _02246BD0
_022463F0:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022463FC: ; jump table
	.short _02246424 - _022463FC - 2 ; case 0
	.short _022464B0 - _022463FC - 2 ; case 1
	.short _022464FC - _022463FC - 2 ; case 2
	.short _02246BD0 - _022463FC - 2 ; case 3
	.short _02246BD0 - _022463FC - 2 ; case 4
	.short _02246BD0 - _022463FC - 2 ; case 5
	.short _0224650E - _022463FC - 2 ; case 6
_0224640A:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	b _02246BD0
_02246412:
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_02248240
	mov r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246424:
	strb r5, [r4, #0x13]
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xda
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224646C
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_02248BEC
	mov r1, #0
	add r0, r4, #0
	mov r2, #1
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x10
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #3
	strb r0, [r4, #8]
	b _02246BD0
_0224646C:
	add r0, r4, #0
	bl ov107_022482D4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r5, r0, #0
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_022464B0:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov107_022482D4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r5, r0, #0
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r5, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r4, #0
	mov r1, #0x15
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247DF0
	mov r0, #4
	strb r0, [r4, #8]
	b _02246BD0
_022464FC:
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_0224650E:
	add r0, r4, #0
	bl ov107_022482D4
	add r0, r4, #0
	bl ov107_02248240
	mov r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246520:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246542
	bhs _022465C0
	cmp r0, #1
	bhi _02246540
	cmp r0, #0
	beq _02246548
	cmp r0, #1
	beq _022465C0
_02246540:
	b _02246BD0
_02246542:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246548:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	cmp r0, #1
	bhs _0224658E
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_0224658E:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022465BA
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	mov r2, #1
	bl ov104_0223BC2C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02248C08
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02249024
	mov r0, #0xb
	strb r0, [r4, #8]
	b _02246BD0
_022465BA:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022465C0:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022465DA:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246600
	bhs _022466C8
	cmp r0, #2
	bhi _022465FE
	cmp r0, #0
	beq _02246606
	cmp r0, #1
	beq _0224666C
	cmp r0, #2
	beq _022466C8
_022465FE:
	b _02246BD0
_02246600:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246606:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02246654
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1d
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_02246654:
	add r0, r4, #0
	mov r1, #1
	bl ov107_02248E54
	mov r0, #5
	strb r0, [r4, #8]
	b _02246BD0
	nop
_02246664: .word 0x021BF67C
_02246668: .word 0x000005DC
_0224666C:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _022466BA
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1e
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_022466BA:
	add r0, r4, #0
	mov r1, #2
	bl ov107_02248E54
	mov r0, #5
	strb r0, [r4, #8]
	b _02246BD0
_022466C8:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022466E2:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246704
	bhs _02246798
	cmp r0, #1
	bhi _02246702
	cmp r0, #0
	beq _0224670A
	cmp r0, #1
	beq _02246798
_02246702:
	b _02246BD0
_02246704:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_0224670A:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	add r5, r0, #0
	ldrb r0, [r4, #0xe]
	bl ov107_02248770
	cmp r5, r0
	bhs _02246752
	add r0, r4, #0
	bl ov107_02248BEC
	add r0, r4, #0
	mov r1, #0x1c
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02246752:
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02246792
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	ldrb r0, [r4, #0xe]
	bl ov107_02248770
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl ov104_0223BC2C
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02248C08
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	add r0, r4, #0
	bl ov107_022490E8
	mov r0, #0xb
	strb r0, [r4, #8]
	b _02246BD0
_02246792:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02246798:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022467B2:
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001288
	ldr r1, _02246AA8 ; =0x000005DC
	add r5, r0, #0
	bl ov107_02249CE0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x18
	bl sub_020014D0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bhi _022467F0
	bhs _022467F6
	cmp r5, #5
	bhi _022467EE
	cmp r5, #3
	blo _022467EE
	beq _02246810
	cmp r5, #4
	beq _02246866
	cmp r5, #5
	beq _022468E2
_022467EE:
	b _02246BD0
_022467F0:
	add r0, r0, #1
	cmp r5, r0
	b _02246BD0
_022467F6:
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02248348
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_02246810:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02248348
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0x37
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02246858
	add r0, r4, #0
	bl ov107_02248BEC
	mov r1, #0
	add r0, r4, #0
	mov r2, #2
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x2b
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #7
	strb r0, [r4, #8]
	b _02246BD0
_02246858:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02248A2C
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02246BD0
_02246866:
	add r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov107_02248348
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r0, #1
	bne _02246894
	add r0, r4, #0
	mov r1, #0x2a
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xe
	strb r0, [r4, #8]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02246894:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	mov r1, #0xdd
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022468D4
	add r0, r4, #0
	bl ov107_02248BEC
	mov r1, #0
	add r0, r4, #0
	mov r2, #5
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x42
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #8
	strb r0, [r4, #8]
	b _02246BD0
_022468D4:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	bl ov107_02248AF0
	mov r0, #0x11
	strb r0, [r4, #8]
	b _02246BD0
_022468E2:
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r0, #2
	bne _02246904
	ldr r0, _02246AA8 ; =0x000005DC
	mov r1, #0
	bl sub_020057A4
	ldr r0, _02246AAC ; =0x000005F3
	bl sub_02005748
	b _02246BD0
_02246904:
	strb r5, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02248348
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	mov r1, #0
	add r0, r4, #0
	mov r2, #0x32
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	add r0, r4, #0
	bl ov107_02247D94
	mov r0, #9
	strb r0, [r4, #8]
	b _02246BD0
_0224694E:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246970
	bhs _02246988
	cmp r0, #1
	bhi _0224696E
	cmp r0, #0
	beq _02246976
	cmp r0, #1
	beq _02246988
_0224696E:
	b _02246BD0
_02246970:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246976:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x2e
	bl ov107_0224933C
	cmp r0, #1
	bne _022469BA
	mov r0, #1
	pop {r3, r4, r5, pc}
_02246988:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_0224699A:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _022469BC
	bhs _022469D4
	cmp r0, #1
	bhi _022469BA
	cmp r0, #0
	beq _022469C2
	cmp r0, #1
	beq _022469D4
_022469BA:
	b _02246BD0
_022469BC:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_022469C2:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0x45
	bl ov107_0224933C
	cmp r0, #1
	bne _02246A06
	mov r0, #1
	pop {r3, r4, r5, pc}
_022469D4:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_022469E6:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bhi _02246A08
	bhs _02246A90
	cmp r0, #1
	bhi _02246A06
	cmp r0, #0
	beq _02246A0E
	cmp r0, #1
	beq _02246A90
_02246A06:
	b _02246BD0
_02246A08:
	add r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246A0E:
	add r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl sub_0205E630
	add r5, r0, #0
	ldrb r0, [r4, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl sub_02030698
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r5, #0x32
	bhs _02246A70
	add r0, r4, #0
	bl ov107_02248BB4
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02249DBC
	add r0, r4, #0
	mov r1, #0x45
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	mov r0, #0xe
	strb r0, [r4, #8]
	b _02246BD0
_02246A70:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02246A8A
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #5
	bl ov107_022493CC
	mov r0, #0xa
	strb r0, [r4, #8]
	b _02246BD0
_02246A8A:
	mov r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02246A90:
	add r0, r4, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246AA2:
	ldr r1, _02246AB0 ; =0x021BF67C
	b _02246AB4
	nop
_02246AA8: .word 0x000005DC
_02246AAC: .word 0x000005F3
_02246AB0: .word 0x021BF67C
_02246AB4:
	ldr r2, [r1, #0x48]
	mov r1, #3
	tst r1, r2
	bne _02246ABE
	b _02246BD0
_02246ABE:
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0xd3
	mov r2, #0x69
	bl ov107_02249C60
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246ADC:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_0224850C
	cmp r0, #1
	bne _02246BD0
	mov r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_02246AEE:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_0224850C
	cmp r0, #1
	bne _02246BD0
	mov r0, #0xd
	strb r0, [r4, #8]
	b _02246BD0
_02246B00:
	ldrb r0, [r4, #0x13]
	cmp r0, #3
	bne _02246B0C
	mov r0, #0x10
	strb r0, [r4, #8]
	b _02246BD0
_02246B0C:
	mov r0, #0x11
	strb r0, [r4, #8]
	b _02246BD0
_02246B12:
	ldr r0, _02246BD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_022482FC
	mov r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246B2E:
	ldr r0, _02246BD4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02248240
	mov r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246B52:
	ldr r1, _02246BD4 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02246B66
	sub r1, #0x21
	bl ov107_0224877C
	b _02246BD0
_02246B66:
	mov r1, #0x10
	tst r1, r2
	beq _02246B74
	mov r1, #1
	bl ov107_0224877C
	b _02246BD0
_02246B74:
	mov r0, #3
	tst r0, r2
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02249238
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_02246B92:
	ldr r1, _02246BD4 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	add r3, r2, #0
	tst r3, r1
	beq _02246BA6
	sub r1, #0x21
	bl ov107_022487DC
	b _02246BD0
_02246BA6:
	mov r1, #0x10
	tst r1, r2
	beq _02246BB4
	mov r1, #1
	bl ov107_022487DC
	b _02246BD0
_02246BB4:
	mov r0, #3
	tst r0, r2
	beq _02246BD0
	ldr r0, _02246BD8 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov107_02249238
	add r0, r4, #0
	bl ov107_022482B0
	mov r0, #2
	strb r0, [r4, #8]
_02246BD0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02246BD4: .word 0x021BF67C
_02246BD8: .word 0x000005DC
	thumb_func_end ov107_022462CC

	thumb_func_start ov107_02246BDC
ov107_02246BDC: ; 0x02246BDC
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #5
	bhi _02246CC8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02246BF2: ; jump table
	.short _02246BFE - _02246BF2 - 2 ; case 0
	.short _02246C22 - _02246BF2 - 2 ; case 1
	.short _02246C48 - _02246BF2 - 2 ; case 2
	.short _02246C6A - _02246BF2 - 2 ; case 3
	.short _02246C88 - _02246BF2 - 2 ; case 4
	.short _02246C9A - _02246BF2 - 2 ; case 5
_02246BFE:
	ldrb r2, [r4, #0xf]
	mov r1, #0xf8
	bic r2, r1
	mov r1, #8
	orr r1, r2
	strb r1, [r4, #0xf]
	ldrb r2, [r4, #0xd]
	mov r1, #0x15
	bl ov107_02248874
	cmp r0, #1
	bne _02246CC8
	mov r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C22:
	ldrb r1, [r4, #0x11]
	cmp r1, #0xff
	beq _02246CC8
	mov r1, #0
	strb r1, [r4, #0x17]
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x11]
	cmp r2, #5
	bne _02246C3C
	mov r2, #5
	bl ov107_022493CC
	b _02246C40
_02246C3C:
	bl ov107_02248F18
_02246C40:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C48:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov107_02249C9C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_0224850C
	cmp r0, #1
	bne _02246CC8
	mov r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C6A:
	ldrb r0, [r4, #0x16]
	sub r0, r0, #1
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02246CC8
	bl sub_020365F4
	mov r0, #0x85
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C88:
	mov r0, #0x85
	bl sub_02036540
	cmp r0, #1
	bne _02246CC8
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C9A:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov107_02249C9C
	add r1, r0, #0
	ldrb r2, [r4, #0x13]
	add r0, r4, #0
	bl ov107_02248674
	cmp r0, #1
	bne _02246CC8
	bl sub_020365F4
	mov r0, #0x64
	bl sub_020363E8
	mov r0, #0xff
	strb r0, [r4, #0x11]
	ldr r0, _02246CCC ; =0x000003D2
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02246CC8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02246CCC: .word 0x000003D2
	thumb_func_end ov107_02246BDC

	thumb_func_start ov107_02246CD0
ov107_02246CD0: ; 0x02246CD0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02246CE4
	cmp r1, #1
	beq _02246CFC
	cmp r1, #2
	beq _02246D1E
	b _02246D38
_02246CE4:
	mov r1, #0x17
	mov r2, #0
	bl ov107_02248874
	cmp r0, #1
	bne _02246D38
	mov r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246D38
_02246CFC:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _02246D06
	sub r0, r0, #1
	strb r0, [r4, #0x16]
_02246D06:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02246D38
	bl sub_020365F4
	mov r0, #0x86
	bl sub_020364F0
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246D38
_02246D1E:
	mov r0, #0x86
	bl sub_02036540
	cmp r0, #1
	bne _02246D38
	bl sub_020365F4
	add r4, #0xc0
	add r0, r4, #0
	bl ov107_02248860
	mov r0, #1
	pop {r4, pc}
_02246D38:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov107_02246CD0

	thumb_func_start ov107_02246D3C
ov107_02246D3C: ; 0x02246D3C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02246D4E
	cmp r0, #1
	beq _02246D6E
	b _02246D7C
_02246D4E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	b _02246D7C
_02246D6E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02246D7C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_02246D7C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02246D3C

	thumb_func_start ov107_02246D84
ov107_02246D84: ; 0x02246D84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	mov r1, #0xcb
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	mov r1, #0x36
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	mov r0, #0
	mov r6, #0xd
	ldr r7, [sp]
	str r0, [sp, #4]
	lsl r6, r6, #6
_02246DB6:
	mov r4, #0
	add r5, r7, #0
_02246DBA:
	ldr r0, [r5, r6]
	bl ov107_02249B8C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _02246DBA
	ldr r0, [sp, #4]
	add r7, #8
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02246DB6
	ldr r0, [sp]
	mov r1, #1
	ldrb r0, [r0, #9]
	bl ov104_0223B7DC
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _02246E0E
	mov r7, #0x33
	ldr r4, [sp]
	lsl r7, r7, #4
_02246DEC:
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	ldr r0, [r4, r7]
	bl ov107_02249B8C
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, r6
	blt _02246DEC
_02246E0E:
	bl sub_02039794
	mov r1, #5
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #2
	bl sub_02002FA0
	mov r1, #5
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_02002FA0
	mov r1, #5
	ldr r0, [sp]
	lsl r1, r1, #6
	ldr r0, [r0, r1]
	bl sub_02002F54
	mov r1, #5
	ldr r0, [sp]
	mov r2, #0
	lsl r1, r1, #6
	str r2, [r0, r1]
	add r1, #0x18
	add r0, r0, r1
	bl ov107_02249954
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	bl sub_0200B190
	ldr r0, [sp]
	ldr r0, [r0, #0x24]
	bl sub_0200B3F0
	ldr r0, [sp]
	ldr r0, [r0, #0x28]
	bl sub_020237BC
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl sub_020237BC
	mov r1, #0x51
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_0200C560
	ldr r4, [sp]
	mov r5, #0
_02246E7C:
	ldr r0, [r4, #0x30]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02246E7C
	ldr r0, [sp]
	mov r1, #1
	add r0, #0x50
	bl ov107_02249D5C
	ldr r0, [sp]
	ldr r0, [r0, #0x4c]
	bl ov107_022472A4
	mov r1, #0xdf
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bl sub_02006CA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02246D84

	thumb_func_start ov107_02246EAC
ov107_02246EAC: ; 0x02246EAC
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02246EDC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02246EE0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_02246EDC: .word 0xFFFFE0FF
_02246EE0: .word 0x04001000
	thumb_func_end ov107_02246EAC

	thumb_func_start ov107_02246EE4
ov107_02246EE4: ; 0x02246EE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r5, r0, #0
	mov r0, #0x96
	mov r1, #0x64
	bl sub_02006C24
	mov r1, #0xdf
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov107_02247220
	add r0, r5, #0
	bl ov107_02247280
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xc9
	mov r3, #0x64
	bl sub_0200B144
	str r0, [r5, #0x20]
	mov r0, #0x64
	bl sub_0200B358
	str r0, [r5, #0x24]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x64
	bl sub_02023790
	str r0, [r5, #0x28]
	mov r0, #0x96
	lsl r0, r0, #2
	mov r1, #0x64
	bl sub_02023790
	str r0, [r5, #0x2c]
	mov r6, #0
	add r4, r5, #0
	mov r7, #0x20
_02246F38:
	add r0, r7, #0
	mov r1, #0x64
	bl sub_02023790
	str r0, [r4, #0x30]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _02246F38
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x64
	bl sub_02002E7C
	mov r1, #6
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x64
	bl sub_02002E98
	mov r0, #1
	mov r1, #2
	mov r2, #0
	mov r3, #0x64
	bl sub_0200C440
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0x50
	mov r2, #1
	bl ov107_02249D14
	add r0, sp, #0x28
	add r1, sp, #0x2c
	add r3, sp, #0x28
	str r0, [sp]
	add r0, r5, #0
	add r1, #2
	add r2, sp, #0x2c
	add r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02246FA6
	mov r0, #0x3c
	mov r7, #0x40
	str r0, [sp, #0x1c]
	b _02246FAC
_02246FA6:
	mov r0, #0x1c
	mov r7, #0x20
	str r0, [sp, #0x1c]
_02246FAC:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov104_0223B7DC
	mov r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	bgt _02246FBE
	b _022470C8
_02246FBE:
	add r4, r5, #0
_02246FC0:
	mov r0, #7
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0xc5
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #0
	mov r0, #0xf
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0x33
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	str r0, [sp]
	lsl r0, r7, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x3a
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	mov r2, #3
	add r0, r5, r0
	add r1, r6, #3
	add r3, r2, #0
	bl ov107_02249B1C
	mov r1, #0xc1
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x74
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249C08
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	bne _02247090
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	b _022470B4
_02247090:
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl ov107_02249BAC
_022470B4:
	ldr r0, [sp, #0x1c]
	add r6, r6, #1
	add r0, #0x40
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r4, r4, #4
	add r7, #0x40
	cmp r6, r0
	bge _022470C8
	b _02246FC0
_022470C8:
	add r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	mov r3, #0
	bl ov107_02248488
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	mov r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x34]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #8]
	mov r1, #0
	str r0, [sp, #0xc]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02247148
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249BAC
_02247148:
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
_02247150:
	mov r7, #0
	ldr r4, [sp, #0x24]
	add r6, r7, #0
_02247156:
	add r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl ov107_022495E4
	mov r0, #0xc
	str r0, [sp]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #0x30]
	add r2, r1, #0
	add r0, r0, r6
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	add r3, r1, #0
	bl ov107_02249B1C
	mov r1, #0xd
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	add r7, r7, #1
	add r6, #0xc
	add r4, r4, #4
	cmp r7, #2
	blt _02247156
	ldr r0, [sp, #0x20]
	add r0, #0x40
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02247150
	add r0, r5, #0
	bl ov107_02249580
	mov r1, #0
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r5, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0x36
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #0
	bl ov107_02249BAC
	bl sub_02035E38
	cmp r0, #0
	beq _0224720E
	mov r0, #1
	mov r1, #0x10
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	bl sub_02039734
_0224720E:
	ldr r0, _0224721C ; =ov107_022472E8
	add r1, r5, #0
	bl sub_02017798
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224721C: .word ov107_022472E8
	thumb_func_end ov107_02246EE4

	thumb_func_start ov107_02247220
ov107_02247220: ; 0x02247220
	push {r4, lr}
	add r4, r0, #0
	bl ov107_02247320
	ldr r0, [r4, #0x4c]
	bl ov107_02247340
	mov r0, #0x64
	bl sub_02002F38
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	lsl r2, r1, #8
	mov r3, #0x64
	bl sub_02002F70
	mov r2, #5
	lsl r2, r2, #6
	ldr r0, [r4, r2]
	mov r1, #0
	add r2, #0xc0
	mov r3, #0x64
	bl sub_02002F70
	add r0, r4, #0
	mov r1, #3
	bl ov107_02247484
	bl ov107_022474F8
	add r0, r4, #0
	mov r1, #2
	bl ov107_0224752C
	bl ov107_02247574
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #4
	bl ov107_022475F0
	pop {r4, pc}
	thumb_func_end ov107_02247220

	thumb_func_start ov107_02247280
ov107_02247280: ; 0x02247280
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	add r2, r0, #0
	mov r1, #0xde
	mov r0, #0x56
	lsl r1, r1, #2
	lsl r0, r0, #2
	lsl r2, r2, #0x18
	ldr r1, [r4, r1]
	add r0, r4, r0
	lsr r2, r2, #0x18
	bl ov107_02249604
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02247280

	thumb_func_start ov107_022472A4
ov107_022472A4: ; 0x022472A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov107_022472A4

	thumb_func_start ov107_022472E8
ov107_022472E8: ; 0x022472E8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022472FA
	bl sub_02003694
_022472FA:
	ldr r0, [r4, #0x4c]
	bl sub_0201C2B8
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _02247318 ; =0x027E0000
	ldr r1, _0224731C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02247318: .word 0x027E0000
_0224731C: .word 0x00003FF8
	thumb_func_end ov107_022472E8

	thumb_func_start ov107_02247320
ov107_02247320: ; 0x02247320
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0224733C ; =0x0224A1DC
	add r3, sp, #0
	mov r2, #5
_0224732A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0224732A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0224733C: .word 0x0224A1DC
	thumb_func_end ov107_02247320

	thumb_func_start ov107_02247340
ov107_02247340: ; 0x02247340
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _02247468 ; =0x0224A0BC
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0224746C ; =0x0224A0F0
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02247470 ; =0x0224A128
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02247474 ; =0x0224A144
	add r3, sp, #0x38
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02247478 ; =0x0224A160
	add r3, sp, #0x1c
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x64
	bl sub_02019690
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _0224747C ; =0x0224A10C
	add r3, sp, #0
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
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r1, _02247480 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	strh r2, [r1]
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x9c
	pop {r4, r5, pc}
	; .align 2, 0
_02247468: .word 0x0224A0BC
_0224746C: .word 0x0224A0F0
_02247470: .word 0x0224A128
_02247474: .word 0x0224A144
_02247478: .word 0x0224A160
_0224747C: .word 0x0224A10C
_02247480: .word 0x04000008
	thumb_func_end ov107_02247340

	thumb_func_start ov107_02247484
ov107_02247484: ; 0x02247484
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl sub_020070E8
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022474D6
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x28
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022474D6:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x29
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02247484

	thumb_func_start ov107_022474F8
ov107_022474F8: ; 0x022474F8
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x8a
	add r2, sp, #0
	mov r3, #0x64
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022474F8

	thumb_func_start ov107_0224752C
ov107_0224752C: ; 0x0224752C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2a
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_0224752C

	thumb_func_start ov107_02247574
ov107_02247574: ; 0x02247574
	push {r3, r4, lr}
	sub sp, #4
	mov r0, #0x96
	mov r1, #0x8a
	add r2, sp, #0
	mov r3, #0x64
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	bl DC_FlushRange
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl GX_LoadBGPltt
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02247574

	thumb_func_start ov107_022475A8
ov107_022475A8: ; 0x022475A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2c
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x2b
	add r3, r4, #0
	bl sub_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022475A8

	thumb_func_start ov107_022475F0
ov107_022475F0: ; 0x022475F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	add r4, r1, #0
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7d
	add r3, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x64
	str r0, [sp, #0xc]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	mov r1, #0x7e
	add r3, r4, #0
	bl sub_0200710C
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0xab
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022475F0

	thumb_func_start ov107_02247650
ov107_02247650: ; 0x02247650
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl ov107_02247680
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02247650

	thumb_func_start ov107_02247680
ov107_02247680: ; 0x02247680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	add r5, r0, #0
	add r0, r6, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r1, r7, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _022476B6
	cmp r0, #2
	beq _022476C8
	b _022476D4
_022476B6:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r4, r4, r0
	b _022476D4
_022476C8:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	sub r4, r4, r0
_022476D4:
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r6, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247680

	thumb_func_start ov107_02247714
ov107_02247714: ; 0x02247714
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	mov r4, #0
	str r4, [sp, #0x18]
	bl ov107_02247744
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02247714

	thumb_func_start ov107_02247744
ov107_02247744: ; 0x02247744
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	add r4, r3, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl sub_0200C388
	ldr r0, [sp, #0x38]
	cmp r0, #1
	beq _0224776E
	cmp r0, #2
	beq _02247780
	b _0224778C
_0224776E:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	add r0, r0, #1
	lsr r0, r0, #1
	sub r4, r4, r0
	b _0224778C
_02247780:
	mov r0, #0
	ldr r1, [r5, #0x28]
	add r2, r0, #0
	bl sub_02002D7C
	sub r4, r4, r0
_0224778C:
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	add r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsl r0, r0, #0x18
	lsl r2, r2, #0x18
	lsr r0, r0, #8
	lsr r2, r2, #0x10
	orr r0, r2
	orr r0, r1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	add r0, r6, #0
	bl sub_0201D78C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02247744

	thumb_func_start ov107_022477CC
ov107_022477CC: ; 0x022477CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	mov r3, #1
	add r4, r1, #0
	str r3, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0xf
	str r1, [sp, #0x10]
	add r5, r0, #0
	add r1, r5, #0
	str r2, [sp, #0x14]
	add r1, #0xc0
	add r2, r4, #0
	bl ov107_02247650
	add r5, #0xc0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_022477CC

	thumb_func_start ov107_02247804
ov107_02247804: ; 0x02247804
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B70C
	mov r3, #8
	str r3, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x30
	bl ov107_02247A14
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x31
	mov r3, #0x48
	bl ov107_02247A14
	add r0, r6, #0
	bl sub_02075BCC
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B6D8
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x32
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x33
	mov r3, #0x48
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B6A0
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x34
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x35
	mov r3, #0x48
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x38
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x36
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x38
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x37
	mov r3, #0x58
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r2, #0x38
	str r2, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0x68
	bl ov107_02247A14
	mov r0, #0x38
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x39
	mov r3, #0xb8
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3a
	mov r3, #8
	bl ov107_02247A14
	mov r0, #0x48
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3b
	mov r3, #0x58
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3c
	mov r3, #0x68
	bl ov107_02247A14
	mov r0, #0x48
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3d
	mov r3, #0xb8
	bl ov107_02247A14
	add r0, r6, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #3
	bl ov107_022480EC
	mov r0, #0x58
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3e
	mov r3, #8
	bl ov107_02247A14
	mov r3, #0x58
	str r3, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x3f
	bl ov107_02247A14
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02247804

	thumb_func_start ov107_02247A14
ov107_02247A14: ; 0x02247A14
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	mov r4, #0xff
	str r4, [sp, #4]
	mov r4, #1
	str r4, [sp, #8]
	mov r4, #2
	str r4, [sp, #0xc]
	mov r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x18]
	bl ov107_02247744
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02247A14

	thumb_func_start ov107_02247A3C
ov107_02247A3C: ; 0x02247A3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r4, r2, #0
	bl sub_0201ADA4
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x36
	str r0, [sp, #8]
	mov r0, #0x3a
	str r0, [sp, #0xc]
	mov r0, #0x42
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	mov r3, #0x47
	bl ov107_02247AD0
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x37
	str r0, [sp, #8]
	mov r0, #0x3b
	str r0, [sp, #0xc]
	mov r0, #0x43
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #1
	mov r3, #0x48
	bl ov107_02247AD0
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x38
	str r0, [sp, #8]
	mov r0, #0x3c
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #2
	mov r3, #0x49
	bl ov107_02247AD0
	mov r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0x3d
	str r0, [sp, #0xc]
	mov r0, #0x45
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #3
	mov r3, #0x4a
	bl ov107_02247AD0
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov107_02247A3C

	thumb_func_start ov107_02247AD0
ov107_02247AD0: ; 0x02247AD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r0, [r4, #0x24]
	add r1, r5, #0
	bl sub_0200B630
	mov r0, #0x18
	mul r0, r5
	add r0, #0xc
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0x20
	bl ov107_02247714
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #4
	mov r3, #3
	bl ov107_022480EC
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #5
	mov r3, #3
	bl ov107_022480EC
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x30]
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x91
	bl ov107_02247744
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247AD0

	thumb_func_start ov107_02247B78
ov107_02247B78: ; 0x02247B78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02247B96
	mov r6, #0x24
	b _02247B98
_02247B96:
	mov r6, #4
_02247B98:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov104_0223B7DC
	mov r7, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _02247C58
	add r0, r6, #0
	str r0, [sp, #0x14]
	add r0, #0x18
	str r0, [sp, #0x14]
	add r0, r6, #0
	str r0, [sp, #0x10]
	add r0, #0x20
	str r0, [sp, #0x10]
_02247BB8:
	mov r0, #0xda
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, r7]
	cmp r0, #0
	bne _02247BDC
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r6, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_0201AE78
	b _02247C42
_02247BDC:
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xa3
	mov r2, #0
	str r0, [sp, #0x18]
	bl sub_02074470
	str r4, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	mov r0, #1
	str r0, [sp]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x14]
	mov r1, #0
	add r2, r4, #0
	bl sub_0200C578
	ldr r0, [sp, #0x18]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r2, #3
	mov r3, #0
	bl sub_0200C5BC
_02247C42:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r0, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r6, #0x40
	add r0, #0x40
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blt _02247BB8
_02247C58:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02247B78

	thumb_func_start ov107_02247C64
ov107_02247C64: ; 0x02247C64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r0, r1, #0
	mov r1, #0
	bl sub_0201ADA4
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02247C84
	mov r4, #0x28
	mov r6, #0x50
	b _02247C88
_02247C84:
	mov r4, #8
	mov r6, #0x30
_02247C88:
	ldrb r0, [r5, #9]
	mov r1, #1
	bl ov104_0223B7DC
	mov r7, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02247CF8
_02247C98:
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_0207A0FC
	mov r1, #0xa1
	mov r2, #0
	str r0, [sp, #0x18]
	bl sub_02074470
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r1, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200C648
	ldr r0, [sp, #0x18]
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	mov r1, #0
	lsl r0, r0, #0x18
	str r1, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov107_022481FC
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r4, #0x40
	add r6, #0x40
	cmp r7, r0
	blt _02247C98
_02247CF8:
	ldr r0, [sp, #0x10]
	bl sub_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov107_02247C64

	thumb_func_start ov107_02247D04
ov107_02247D04: ; 0x02247D04
	push {r4, r5, r6, r7}
	mov r4, #0x12
	mov r6, #0
	lsl r4, r4, #4
	add r7, r0, #0
	add r3, r6, #0
	add r5, r4, #4
_02247D12:
	str r3, [r7, r4]
	str r3, [r7, r5]
	add r6, r6, #1
	add r7, #8
	cmp r6, #3
	blt _02247D12
	mov r4, #0x12
	lsl r4, r4, #4
	add r5, r4, #0
	add r6, r0, r4
	sub r5, #0x10
	str r6, [r0, r5]
	add r5, r4, #0
	sub r5, #0xc
	str r1, [r0, r5]
	add r1, r4, #0
	sub r1, #8
	strb r3, [r0, r1]
	mov r3, #1
	sub r1, r4, #7
	strb r3, [r0, r1]
	sub r1, r4, #6
	strb r2, [r0, r1]
	sub r1, r4, #5
	ldrb r2, [r0, r1]
	mov r1, #0xf
	bic r2, r1
	sub r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0x30
	bic r2, r1
	sub r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r2, r1
	add r1, #0xdb
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov107_02247D04

	thumb_func_start ov107_02247D68
ov107_02247D68: ; 0x02247D68
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	add r5, r7, #0
	str r2, [sp]
	add r5, #0x30
	lsl r4, r6, #2
	ldr r0, [r7, #0x20]
	ldr r2, [r5, r4]
	add r1, r3, #0
	bl sub_0200B1B8
	lsl r0, r6, #3
	add r2, r7, r0
	mov r0, #0x12
	ldr r1, [r5, r4]
	lsl r0, r0, #4
	str r1, [r2, r0]
	add r1, r0, #4
	ldr r0, [sp]
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247D68

	thumb_func_start ov107_02247D94
ov107_02247D94: ; 0x02247D94
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #0x4c]
	add r1, #0xf0
	bl ov107_02249D84
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0xf0
	mov r2, #2
	bl ov107_02247D04
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1a
	bl ov107_02247D68
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x1b
	bl ov107_02247D68
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	mov r2, #0
	add r1, #0xac
	str r0, [sp, #4]
	add r0, r4, r1
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xf]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xf]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov107_02247D94

	thumb_func_start ov107_02247DF0
ov107_02247DF0: ; 0x02247DF0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r4, #0x4c]
	add r1, r4, r1
	bl ov107_02249D84
	mov r1, #1
	lsl r1, r1, #8
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #3
	bl ov107_02247D04
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x16
	bl ov107_02247D68
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x17
	bl ov107_02247D68
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x18
	bl ov107_02247D68
	mov r1, #0x64
	str r1, [sp]
	mov r0, #2
	mov r2, #0
	add r1, #0xac
	str r0, [sp, #4]
	add r0, r4, r1
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xf]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0xf]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov107_02247DF0

	thumb_func_start ov107_02247E5C
ov107_02247E5C: ; 0x02247E5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0xa0
	bl ov107_02249D84
	add r0, r5, #0
	add r0, #0xa0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #4
	mov r1, #0x64
	bl sub_02013A04
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r4, _02247F08 ; =0x0224A1BC
	str r0, [r5, r1]
	mov r6, #0
	add r7, r1, #0
_02247E8A:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blo _02247E8A
	ldr r4, _02247F0C ; =0x0224A17C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, sp, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xa0
	str r0, [sp, #0xc]
	ldr r0, _02247F10 ; =ov107_02247F14
	str r5, [sp, #0x1c]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #4
	strh r0, [r3, #0x10]
	ldrb r4, [r3, #0x18]
	mov r1, #0xf
	bic r4, r1
	mov r1, #0xf
	orr r1, r4
	strb r1, [r3, #0x18]
	strh r0, [r3, #0x12]
	add r0, r2, #0
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	mov r0, #2
	orr r0, r1
	strb r0, [r5, #0xf]
	add r5, #0xa0
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F08: .word 0x0224A1BC
_02247F0C: .word 0x0224A17C
_02247F10: .word ov107_02247F14
	thumb_func_end ov107_02247E5C

	thumb_func_start ov107_02247F14
ov107_02247F14: ; 0x02247F14
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r1, #0x13
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02001504
	add r6, r0, #0
	cmp r4, #0
	bne _02247F2E
	ldr r0, _02247F64 ; =0x000005DC
	bl sub_02005748
_02247F2E:
	add r0, r5, #0
	add r1, sp, #0x18
	bl sub_020014D0
	mov r3, #1
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r6, #0xe0
	str r3, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	add r1, r6, #0
	lsl r4, r2, #2
	ldr r2, _02247F68 ; =0x0224A0CC
	ldr r2, [r2, r4]
	bl ov107_02247650
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02247F64: .word 0x000005DC
_02247F68: .word 0x0224A0CC
	thumb_func_end ov107_02247F14

	thumb_func_start ov107_02247F6C
ov107_02247F6C: ; 0x02247F6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r1, r5, #0
	ldr r0, [r5, #0x4c]
	add r1, #0xb0
	bl ov107_02249D84
	add r0, r5, #0
	add r0, #0xb0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #4
	mov r1, #0x64
	bl sub_02013A04
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r4, _02248018 ; =0x0224A19C
	str r0, [r5, r1]
	mov r6, #0
	add r7, r1, #0
_02247F9A:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, #4
	blo _02247F9A
	ldr r4, _0224801C ; =0x0224A17C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r3, sp, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xb0
	str r0, [sp, #0xc]
	ldr r0, _02248020 ; =ov107_02248028
	str r5, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, _02248024 ; =ov107_022480A0
	mov r1, #0xf
	str r0, [sp, #8]
	mov r0, #4
	strh r0, [r3, #0x10]
	ldrb r4, [r3, #0x18]
	bic r4, r1
	mov r1, #0xf
	orr r1, r4
	strb r1, [r3, #0x18]
	strh r0, [r3, #0x12]
	mov r1, #0
	add r0, r2, #0
	add r2, r1, #0
	mov r3, #0x64
	bl sub_0200112C
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	mov r0, #2
	orr r0, r1
	strb r0, [r5, #0xf]
	add r5, #0xb0
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248018: .word 0x0224A19C
_0224801C: .word 0x0224A17C
_02248020: .word ov107_02248028
_02248024: .word ov107_022480A0
	thumb_func_end ov107_02247F6C

	thumb_func_start ov107_02248028
ov107_02248028: ; 0x02248028
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	mov r1, #0x13
	add r6, r0, #0
	add r5, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r5, #0
	bne _02248042
	ldr r0, _02248098 ; =0x000005DC
	bl sub_02005748
_02248042:
	add r0, r6, #0
	add r1, sp, #0x18
	bl sub_020014D0
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	mov r2, #2
	bl ov107_02249CAC
	cmp r0, #1
	beq _02248060
	mov r6, #1
	b _02248062
_02248060:
	mov r6, #0
_02248062:
	mov r5, #1
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	add r0, r4, #0
	add r4, #0xc0
	lsl r3, r2, #2
	ldr r2, _0224809C ; =0x0224A0AC
	add r1, r4, #0
	lsl r4, r6, #0x18
	add r2, r2, r3
	lsr r4, r4, #0x17
	ldrh r2, [r4, r2]
	add r3, r5, #0
	bl ov107_02247650
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02248098: .word 0x000005DC
_0224809C: .word 0x0224A0AC
	thumb_func_end ov107_02248028

	thumb_func_start ov107_022480A0
ov107_022480A0: ; 0x022480A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0x13
	add r5, r0, #0
	bl sub_02001504
	add r1, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r1, #9]
	mov r2, #2
	bl ov107_02249CAC
	cmp r4, #4
	beq _022480C6
	cmp r4, #5
	beq _022480D2
	b _022480DE
_022480C6:
	cmp r0, #1
	bne _022480CE
	mov r1, #2
	b _022480E0
_022480CE:
	mov r1, #1
	b _022480E0
_022480D2:
	cmp r0, #2
	bne _022480DA
	mov r1, #2
	b _022480E0
_022480DA:
	mov r1, #1
	b _022480E0
_022480DE:
	mov r1, #1
_022480E0:
	add r0, r5, #0
	mov r2, #0xf
	mov r3, #2
	bl sub_020013D8
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022480A0

	thumb_func_start ov107_022480EC
ov107_022480EC: ; 0x022480EC
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	mov r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl sub_0200B60C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022480EC

	thumb_func_start ov107_02248104
ov107_02248104: ; 0x02248104
	ldr r3, _0224810C ; =sub_0200B538
	ldr r0, [r0, #0x24]
	bx r3
	nop
_0224810C: .word sub_0200B538
	thumb_func_end ov107_02248104

	thumb_func_start ov107_02248110
ov107_02248110: ; 0x02248110
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	add r1, r4, #0
	bl sub_0200B498
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248110

	thumb_func_start ov107_0224812C
ov107_0224812C: ; 0x0224812C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	add r5, r3, #0
	bl sub_02025E38
	add r6, r0, #0
	mov r0, #8
	mov r1, #0x64
	bl sub_02023790
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02023D28
	add r0, r6, #0
	bl sub_02025F30
	cmp r0, #0
	bne _02248168
	ldr r1, _02248190 ; =0x00070800
	b _0224816C
_02248168:
	mov r1, #0xc1
	lsl r1, r1, #0xa
_0224816C:
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02248190: .word 0x00070800
	thumb_func_end ov107_0224812C

	thumb_func_start ov107_02248194
ov107_02248194: ; 0x02248194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #0x18]
	add r6, r3, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	str r0, [sp, #0x1c]
	bl sub_02025F30
	cmp r0, #0
	bne _022481BA
	ldr r4, _022481F8 ; =0x00070800
	b _022481BE
_022481BA:
	mov r4, #0xc1
	lsl r4, r4, #0xa
_022481BE:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	mov r1, #0
	bl sub_0200B498
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	lsr r0, r4, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	lsr r0, r4, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #1
	bl ov107_02247714
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022481F8: .word 0x00070800
	thumb_func_end ov107_02248194

	thumb_func_start ov107_022481FC
ov107_022481FC: ; 0x022481FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r2, #0
	add r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02248216
	mov r3, #0x40
	mov r4, #7
	mov r5, #8
	mov r6, #0
	b _02248222
_02248216:
	cmp r3, #1
	bne _0224823C
	mov r3, #0x41
	mov r4, #3
	mov r5, #4
	mov r6, #0
_02248222:
	str r2, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	add r2, r3, #0
	add r3, r7, #0
	bl ov107_02247714
_0224823C:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022481FC

	thumb_func_start ov107_02248240
ov107_02248240: ; 0x02248240
	push {r3, r4, lr}
	sub sp, #0x1c
	mov r2, #5
	str r2, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	add r4, r0, #0
	add r1, r4, #0
	str r3, [sp, #0x18]
	add r1, #0x60
	mov r3, #0x10
	bl ov107_02247680
	strb r0, [r4, #0xa]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xd0
	bl ov107_02249DBC
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r1, #0xd0
	mov r2, #4
	str r3, [sp, #0x14]
	bl ov107_02247650
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02248240

	thumb_func_start ov107_022482A4
ov107_022482A4: ; 0x022482A4
	ldr r3, _022482AC ; =ov107_02248860
	add r0, #0xd0
	bx r3
	nop
_022482AC: .word ov107_02248860
	thumb_func_end ov107_022482A4

	thumb_func_start ov107_022482B0
ov107_022482B0: ; 0x022482B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xe0
	bl ov107_02249DBC
	mov r0, #0
	strh r0, [r4, #0x18]
	add r0, r4, #0
	bl ov107_02247E5C
	pop {r4, pc}
	thumb_func_end ov107_022482B0

	thumb_func_start ov107_022482D4
ov107_022482D4: ; 0x022482D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4e
	lsl r0, r0, #2
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x1c
	add r2, #0x1e
	bl sub_020014DC
	add r0, r4, #0
	add r0, #0xe0
	bl ov107_02248860
	add r0, r4, #0
	bl ov107_02249258
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022482D4

	thumb_func_start ov107_022482FC
ov107_022482FC: ; 0x022482FC
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02249DBC
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	add r0, r4, #0
	add r1, #0xc0
	mov r2, #0x25
	bl ov107_02247650
	strb r0, [r4, #0xa]
	mov r0, #0
	strh r0, [r4, #0x18]
	add r0, r4, #0
	bl ov107_02247F6C
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_022482FC

	thumb_func_start ov107_02248348
ov107_02248348: ; 0x02248348
	ldr r3, _0224834C ; =ov107_02249258
	bx r3
	; .align 2, 0
_0224834C: .word ov107_02249258
	thumb_func_end ov107_02248348

	thumb_func_start ov107_02248350
ov107_02248350: ; 0x02248350
	mov r3, #0
	strb r3, [r0, #8]
	str r2, [r1, #0]
	bx lr
	thumb_func_end ov107_02248350

	thumb_func_start ov107_02248358
ov107_02248358: ; 0x02248358
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	mov r4, #0
	bl ov107_02249C98
	ldr r1, _022483EC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	tst r1, r2
	beq _0224838A
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _022483EA
	cmp r0, #0
	bne _02248384
	ldrb r1, [r5, #0x14]
	sub r1, r1, #1
	add r1, r2, r1
	b _02248386
_02248384:
	sub r1, r2, #1
_02248386:
	strb r1, [r5, #0xd]
	mov r4, #1
_0224838A:
	ldr r1, _022483EC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x10
	tst r1, r2
	beq _022483AE
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _022483EA
	ldrb r1, [r5, #0x14]
	sub r1, r1, #1
	cmp r0, r1
	bne _022483A8
	sub r0, r2, r1
	b _022483AA
_022483A8:
	add r0, r2, #1
_022483AA:
	strb r0, [r5, #0xd]
	mov r4, #1
_022483AE:
	ldr r0, _022483EC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	beq _022483C6
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _022483EA
	ldrb r0, [r5, #0xc]
	mov r4, #1
	strb r0, [r5, #0xd]
_022483C6:
	ldr r0, _022483EC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _022483E0
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	bhs _022483EA
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	mov r4, #1
	strb r0, [r5, #0xd]
_022483E0:
	cmp r4, #1
	bne _022483EA
	add r0, r5, #0
	bl ov107_022483F0
_022483EA:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022483EC: .word 0x021BF67C
	thumb_func_end ov107_02248358

	thumb_func_start ov107_022483F0
ov107_022483F0: ; 0x022483F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224841C ; =0x000005DC
	bl sub_02005748
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _0224840E
	ldrb r2, [r4, #0xd]
	add r0, r4, #0
	mov r1, #0x16
	bl ov107_02248874
_0224840E:
	ldrb r1, [r4, #0xd]
	add r0, r4, #0
	mov r2, #0
	bl ov107_02248420
	pop {r4, pc}
	nop
_0224841C: .word 0x000005DC
	thumb_func_end ov107_022483F0

	thumb_func_start ov107_02248420
ov107_02248420: ; 0x02248420
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	cmp r2, #0
	bne _02248438
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r2, #1
	mov r1, #0
	b _02248442
_02248438:
	mov r0, #0xcb
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r2, #2
	mov r1, #0x11
_02248442:
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	blo _0224845C
	add r0, r4, #0
	bl ov107_02249BEC
	add r0, r4, #0
	mov r1, #0xe0
	mov r2, #0xa0
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
_0224845C:
	add r0, r4, #0
	add r1, r2, #0
	bl ov107_02249BEC
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	add r3, r6, #0
	bl ov107_02248488
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x10
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02248420

	thumb_func_start ov107_02248488
ov107_02248488: ; 0x02248488
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r4, r3, #0
	bl ov104_0223BA14
	cmp r0, #1
	bne _022484BE
	cmp r4, #0
	bne _022484A4
	mov r0, #0x28
	str r0, [r5, #0]
	b _022484D6
_022484A4:
	cmp r4, #1
	bne _022484AE
	mov r0, #0x68
	str r0, [r5, #0]
	b _022484D6
_022484AE:
	cmp r4, #2
	bne _022484B8
	mov r0, #0xa8
	str r0, [r5, #0]
	b _022484D6
_022484B8:
	mov r0, #0xe8
	str r0, [r5, #0]
	b _022484D6
_022484BE:
	cmp r4, #0
	bne _022484C8
	mov r0, #0x48
	str r0, [r5, #0]
	b _022484D6
_022484C8:
	cmp r4, #1
	bne _022484D2
	mov r0, #0x88
	str r0, [r5, #0]
	b _022484D6
_022484D2:
	mov r0, #0xc8
	str r0, [r5, #0]
_022484D6:
	mov r0, #0x58
	str r0, [r6, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02248488

	thumb_func_start ov107_022484DC
ov107_022484DC: ; 0x022484DC
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x18]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022484FE
	mov r0, #0x20
	strh r0, [r5]
	mov r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022484FE:
	mov r1, #0
	strh r1, [r5]
	strh r1, [r6]
	mov r0, #0x78
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022484DC

	thumb_func_start ov107_0224850C
ov107_0224850C: ; 0x0224850C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r7, r1, #0
	add r5, r2, #0
	bl ov107_02249C98
	add r6, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl sub_0207A0FC
	cmp r5, #5
	bls _02248530
	b _02248666
_02248530:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224853C: ; jump table
	.short _02248548 - _0224853C - 2 ; case 0
	.short _02248556 - _0224853C - 2 ; case 1
	.short _02248666 - _0224853C - 2 ; case 2
	.short _022485DC - _0224853C - 2 ; case 3
	.short _0224861A - _0224853C - 2 ; case 4
	.short _02248658 - _0224853C - 2 ; case 5
_02248548:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248556:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _022485AE
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _02248572
	mov r5, #9
	b _02248574
_02248572:
	mov r5, #0xa
_02248574:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02248582
	mov r1, #0x50
	b _02248584
_02248582:
	mov r1, #0x30
_02248584:
	lsl r0, r6, #6
	add r0, r1, r0
	lsl r0, r0, #0x10
	str r5, [sp]
	asr r0, r0, #0x10
	str r0, [sp, #4]
	mov r1, #0
	mov r0, #0x32
	str r0, [sp, #8]
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [sp, #0xc]
	add r0, r4, r0
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r4, r1]
_022485AE:
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249C40
	cmp r0, #0
	bne _02248666
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	mov r0, #0xc9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022485DC:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _0224860C
	ldr r0, _0224866C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02248666
	ldr r0, _02248670 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248A2C
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224860C:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224861A:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _0224864A
	ldr r0, _0224866C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02248666
	ldr r0, _02248670 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248AF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0224864A:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248658:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	add sp, #0x14
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02248666:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224866C: .word 0x021BF67C
_02248670: .word 0x000005DC
	thumb_func_end ov107_0224850C

	thumb_func_start ov107_02248674
ov107_02248674: ; 0x02248674
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	add r7, r1, #0
	add r6, r2, #0
	ldrb r5, [r4, #0x15]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	cmp r6, #5
	bhi _0224876C
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022486A0: ; jump table
	.short _022486AC - _022486A0 - 2 ; case 0
	.short _022486AC - _022486A0 - 2 ; case 1
	.short _0224876C - _022486A0 - 2 ; case 2
	.short _022486B8 - _022486A0 - 2 ; case 3
	.short _02248712 - _022486A0 - 2 ; case 4
	.short _022486AC - _022486A0 - 2 ; case 5
_022486AC:
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486B8:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _022486EC
	bl sub_0203608C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _022486DC
	cmp r0, r5
	blo _022486EC
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486DC:
	cmp r0, r5
	bhs _022486EC
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486EC:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _0224876C
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248A2C
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248712:
	ldrb r0, [r4, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02248746
	bl sub_0203608C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _02248736
	cmp r0, r5
	blo _02248746
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248736:
	cmp r0, r5
	bhs _02248746
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248746:
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _0224876C
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x18
	orr r0, r1
	strb r0, [r4, #0xf]
	add r0, r4, #0
	add r1, r7, #0
	bl ov107_02248AF0
	ldrb r1, [r4, #0xf]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #0xf]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224876C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02248674

	thumb_func_start ov107_02248770
ov107_02248770: ; 0x02248770
	cmp r0, #1
	bne _02248778
	mov r0, #1
	bx lr
_02248778:
	mov r0, #0xf
	bx lr
	thumb_func_end ov107_02248770

	thumb_func_start ov107_0224877C
ov107_0224877C: ; 0x0224877C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0xd]
	mov r5, #0x37
	lsl r5, r5, #4
	lsl r0, r3, #0x18
	asr r2, r0, #0x18
	mov r0, #0
_0224878C:
	add r2, r2, r1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	bpl _0224879E
	ldrb r2, [r4, #0x14]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	b _022487A6
_0224879E:
	ldrb r6, [r4, #0x14]
	cmp r2, r6
	blt _022487A6
	add r2, r0, #0
_022487A6:
	cmp r2, r3
	beq _022487DA
	ldr r6, [r4, r5]
	ldrb r6, [r6, r2]
	cmp r6, #1
	bne _0224878C
	strb r2, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022483F0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247804
_022487DA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_0224877C

	thumb_func_start ov107_022487DC
ov107_022487DC: ; 0x022487DC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldrb r3, [r4, #0xd]
	mov r5, #0xdd
	lsl r5, r5, #2
	lsl r0, r3, #0x18
	asr r2, r0, #0x18
	mov r0, #0
_022487EC:
	add r2, r2, r1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	bpl _022487FE
	ldrb r2, [r4, #0x14]
	sub r2, r2, #1
	lsl r2, r2, #0x18
	asr r2, r2, #0x18
	b _02248806
_022487FE:
	ldrb r6, [r4, #0x14]
	cmp r2, r6
	blt _02248806
	add r2, r0, #0
_02248806:
	cmp r2, r3
	beq _0224883A
	ldr r6, [r4, r5]
	ldrb r6, [r6, r2]
	cmp r6, #1
	bne _022487EC
	strb r2, [r4, #0xd]
	add r0, r4, #0
	bl ov107_022483F0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247A3C
_0224883A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_022487DC

	thumb_func_start ov107_0224883C
ov107_0224883C: ; 0x0224883C
	push {r4, lr}
	add r4, r0, #0
	bl ov107_02248BB4
	add r0, r4, #0
	bl ov107_02249258
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov107_02249BAC
	pop {r4, pc}
	thumb_func_end ov107_0224883C

	thumb_func_start ov107_02248860
ov107_02248860: ; 0x02248860
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0201AD10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248860

	thumb_func_start ov107_02248874
ov107_02248874: ; 0x02248874
	push {r3, r4, r5, lr}
	add r3, r1, #0
	sub r3, #0x14
	add r5, r0, #0
	cmp r3, #3
	bhi _022488B2
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0224888C: ; jump table
	.short _02248894 - _0224888C - 2 ; case 0
	.short _0224889C - _0224888C - 2 ; case 1
	.short _022488A4 - _0224888C - 2 ; case 2
	.short _022488AC - _0224888C - 2 ; case 3
_02248894:
	mov r4, #0x35
	bl ov107_022488CC
	b _022488B2
_0224889C:
	mov r4, #0x36
	bl ov107_02248940
	b _022488B2
_022488A4:
	mov r4, #0x37
	bl ov107_022489D0
	b _022488B2
_022488AC:
	mov r4, #0x38
	bl ov107_02248A04
_022488B2:
	mov r1, #0xe
	lsl r1, r1, #6
	add r0, r4, #0
	add r1, r5, r1
	mov r2, #0x28
	bl sub_020359DC
	cmp r0, #1
	bne _022488C8
	mov r0, #1
	pop {r3, r4, r5, pc}
_022488C8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248874

	thumb_func_start ov107_022488CC
ov107_022488CC: ; 0x022488CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r4, r1, #0
	bl sub_02025E38
	mov r1, #0xe
	lsl r1, r1, #6
	strh r4, [r6, r1]
	bl sub_02025F30
	ldr r1, _0224890C ; =0x00000382
	mov r4, #0
	strh r0, [r6, r1]
	add r5, r6, #4
	sub r7, r1, #2
_022488F0:
	mov r0, #0x53
	lsl r0, r0, #2
	lsl r2, r4, #0x18
	ldrb r1, [r6, #9]
	ldr r0, [r6, r0]
	lsr r2, r2, #0x18
	bl ov107_02249CAC
	strh r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #3
	blt _022488F0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224890C: .word 0x00000382
	thumb_func_end ov107_022488CC

	thumb_func_start ov107_02248910
ov107_02248910: ; 0x02248910
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #0x17]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x17]
	bl sub_0203608C
	cmp r5, r0
	beq _0224893A
	ldr r0, _0224893C ; =0x000003D3
	mov r3, #0
	add r5, r6, #4
_0224892C:
	ldrh r2, [r5]
	add r1, r4, r3
	add r3, r3, #1
	add r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _0224892C
_0224893A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224893C: .word 0x000003D3
	thumb_func_end ov107_02248910

	thumb_func_start ov107_02248940
ov107_02248940: ; 0x02248940
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xe
	lsl r0, r0, #6
	strh r1, [r5, r0]
	add r4, r2, #0
	add r0, r0, #2
	strh r4, [r5, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _02248960
	ldrb r0, [r5, #0x11]
	cmp r0, #0xff
	bne _02248960
	strb r4, [r5, #0x11]
_02248960:
	ldrb r1, [r5, #0x11]
	mov r0, #0xe1
	lsl r0, r0, #2
	strh r1, [r5, r0]
	ldrb r2, [r5, #0x12]
	add r1, r0, #4
	add r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248940

	thumb_func_start ov107_02248978
ov107_02248978: ; 0x02248978
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #0x17]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #0x17]
	bl sub_0203608C
	cmp r6, r0
	beq _022489C8
	ldrh r1, [r5, #2]
	ldr r0, _022489CC ; =0x000003D1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _022489BC
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	ldr r0, _022489CC ; =0x000003D1
	beq _022489AA
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022489AA:
	ldrb r1, [r4, r0]
	ldrb r0, [r4, #0x15]
	add r0, r1, r0
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, pc}
_022489BC:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
_022489C8:
	pop {r4, r5, r6, pc}
	nop
_022489CC: .word 0x000003D1
	thumb_func_end ov107_02248978

	thumb_func_start ov107_022489D0
ov107_022489D0: ; 0x022489D0
	mov r2, #0xe
	lsl r2, r2, #6
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	add r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_022489D0

	thumb_func_start ov107_022489E0
ov107_022489E0: ; 0x022489E0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _02248A02
	ldrh r0, [r6, #2]
	mov r1, #0x3d
	lsl r1, r1, #4
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov107_02248420
_02248A02:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_022489E0

	thumb_func_start ov107_02248A04
ov107_02248A04: ; 0x02248A04
	mov r1, #0xe
	mov r2, #1
	lsl r1, r1, #6
	strh r2, [r0, r1]
	bx lr
	; .align 2, 0
	thumb_func_end ov107_02248A04

	thumb_func_start ov107_02248A10
ov107_02248A10: ; 0x02248A10
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0203608C
	cmp r5, r0
	beq _02248A26
	ldrh r1, [r4]
	ldr r0, _02248A28 ; =0x000003D2
	strb r1, [r6, r0]
_02248A26:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02248A28: .word 0x000003D2
	thumb_func_end ov107_02248A10

	thumb_func_start ov107_02248A2C
ov107_02248A2C: ; 0x02248A2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #2
	bl ov107_0224752C
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201AD10
	ldrb r0, [r4, #0x14]
	add r1, r5, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247804
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248A2C

	thumb_func_start ov107_02248A74
ov107_02248A74: ; 0x02248A74
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov107_02249C98
	mov r1, #0x37
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #1
	strb r2, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248A74

	thumb_func_start ov107_02248A8C
ov107_02248A8C: ; 0x02248A8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r5, #0
	mov r1, #0x2f
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02248A74
	add r0, r5, #0
	bl ov107_02249580
	ldr r0, _02248AEC ; =0x00000624
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02248AEC: .word 0x00000624
	thumb_func_end ov107_02248A8C

	thumb_func_start ov107_02248AF0
ov107_02248AF0: ; 0x02248AF0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	mov r1, #2
	bl ov107_022475A8
	add r0, r4, #0
	add r0, #0xc0
	bl ov107_02248860
	add r0, r4, #0
	add r0, #0xc0
	bl sub_0201AD10
	ldrb r0, [r4, #0x14]
	add r1, r5, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207A0FC
	add r2, r0, #0
	add r0, r4, #0
	add r4, #0x90
	add r1, r4, #0
	bl ov107_02247A3C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248AF0

	thumb_func_start ov107_02248B38
ov107_02248B38: ; 0x02248B38
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov107_02249C98
	mov r1, #0xdd
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #1
	strb r2, [r1, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248B38

	thumb_func_start ov107_02248B50
ov107_02248B50: ; 0x02248B50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r5, #0
	mov r1, #0x46
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02248B38
	add r0, r5, #0
	bl ov107_02249580
	ldr r0, _02248BB0 ; =0x00000624
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02248BB0: .word 0x00000624
	thumb_func_end ov107_02248B50

	thumb_func_start ov107_02248BB4
ov107_02248BB4: ; 0x02248BB4
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02248BEA
	mov r0, #4
	bic r1, r0
	mov r0, #0x47
	strb r1, [r4, #0xf]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200DC9C
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201AD10
_02248BEA:
	pop {r4, pc}
	thumb_func_end ov107_02248BB4

	thumb_func_start ov107_02248BEC
ov107_02248BEC: ; 0x02248BEC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r4, #0xc0
	add r1, r0, #0
	add r0, r4, #0
	bl ov107_02249DBC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02248BEC

	thumb_func_start ov107_02248C08
ov107_02248C08: ; 0x02248C08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r1, sp, #0x28
	str r1, [sp]
	add r1, sp, #0x2c
	add r3, sp, #0x28
	add r5, r0, #0
	add r1, #2
	add r2, sp, #0x2c
	add r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02248CA2
	add r1, sp, #0x28
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
	b _02248E46
_02248CA2:
	bl sub_0203608C
	cmp r0, #0
	add r1, sp, #0x28
	bne _02248D7A
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x20]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	mov r0, #1
	str r0, [sp]
	ldr r2, _02248E50 ; =0x000003D6
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
	b _02248E46
_02248D7A:
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	mov r0, #1
	str r0, [sp]
	ldr r2, _02248E50 ; =0x000003D6
	add r0, r5, #0
	ldrh r2, [r5, r2]
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	mov r1, #0
	add r0, #0x68
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	add r2, r7, #0
	mov r0, #0x30
	sub r2, #0x30
	str r0, [sp]
	mov r0, #0x10
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl sub_0201AE78
	ldrb r0, [r5, #9]
	bl sub_0205E630
	str r0, [sp, #0x24]
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl sub_02030698
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0
	mov r3, #4
	bl ov107_022480EC
	str r6, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #2
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
_02248E46:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02248E50: .word 0x000003D6
	thumb_func_end ov107_02248C08

	thumb_func_start ov107_02248E54
ov107_02248E54: ; 0x02248E54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl ov107_02248770
	add r2, r0, #0
	mov r1, #0
	add r0, r5, #0
	mov r3, #4
	str r1, [sp]
	bl ov107_022480EC
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add r0, r5, #0
	bl ov107_02247D94
	strb r4, [r5, #0xe]
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248E54

	thumb_func_start ov107_02248E84
ov107_02248E84: ; 0x02248E84
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	add r5, r0, #0
	add r1, #2
	add r2, sp, #8
	add r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _02248EBC
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_0224812C
	b _02248F0C
_02248EBC:
	bl sub_0203608C
	cmp r0, #0
	add r0, sp, #4
	bne _02248EEA
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov107_0224812C
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_02248194
	b _02248F0C
_02248EEA:
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	mov r0, #0
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov107_02248194
	mov r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov107_0224812C
_02248F0C:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_02248E84

	thumb_func_start ov107_02248F18
ov107_02248F18: ; 0x02248F18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0224901C ; =0x000005E3
	add r7, r1, #0
	add r6, r2, #0
	bl sub_02005748
	ldrb r0, [r4, #0x15]
	add r1, r7, #0
	str r0, [sp]
	bl ov107_02249C9C
	str r0, [sp, #4]
	cmp r6, #4
	bhi _02248F62
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248F44: ; jump table
	.short _02248F4E - _02248F44 - 2 ; case 0
	.short _02248F52 - _02248F44 - 2 ; case 1
	.short _02248F62 - _02248F44 - 2 ; case 2
	.short _02248F5C - _02248F44 - 2 ; case 3
	.short _02248F60 - _02248F44 - 2 ; case 4
_02248F4E:
	mov r5, #1
	b _02248F62
_02248F52:
	ldrb r0, [r4, #0x12]
	bl ov107_02248770
	add r5, r0, #0
	b _02248F62
_02248F5C:
	mov r5, #2
	b _02248F62
_02248F60:
	mov r5, #5
_02248F62:
	bl sub_0203608C
	cmp r0, #0
	bne _02248F96
	ldr r0, [sp]
	cmp r7, r0
	bhs _02248F84
	add r0, r4, #0
	mov r1, #5
	bl ov107_02248110
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl ov104_0223BC2C
	b _02248FC0
_02248F84:
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02249020 ; =0x000003D6
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _02248FC0
_02248F96:
	ldr r0, [sp]
	cmp r7, r0
	bhs _02248FAE
	ldr r0, [r4, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r0, _02249020 ; =0x000003D6
	ldrh r1, [r4, r0]
	sub r1, r1, r5
	strh r1, [r4, r0]
	b _02248FC0
_02248FAE:
	add r0, r4, #0
	mov r1, #5
	bl ov107_02248110
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	add r2, r5, #0
	bl ov104_0223BC2C
_02248FC0:
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x50
	bl ov107_02248C08
	add r0, r4, #0
	bl ov107_02248BB4
	cmp r6, #4
	bhi _02249018
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02248FE0: ; jump table
	.short _02248FEA - _02248FE0 - 2 ; case 0
	.short _02248FF6 - _02248FE0 - 2 ; case 1
	.short _02249018 - _02248FE0 - 2 ; case 2
	.short _02249004 - _02248FE0 - 2 ; case 3
	.short _02249010 - _02248FE0 - 2 ; case 4
_02248FEA:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02249024
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02248FF6:
	ldrb r2, [r4, #0x12]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_022490E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02249004:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02248A8C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02249010:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov107_02248B50
_02249018:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224901C: .word 0x000005E3
_02249020: .word 0x000003D6
	thumb_func_end ov107_02248F18

	thumb_func_start ov107_02249024
ov107_02249024: ; 0x02249024
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x14]
	add r4, r1, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r6, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	mov r1, #0xda
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #1
	strb r2, [r1, r0]
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xc5
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov107_02249BAC
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov107_02247B78
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x70
	bl ov107_02247C64
	ldrb r0, [r5, #0x14]
	add r1, r4, #0
	bl ov107_02249C98
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x33
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
	ldr r0, _022490E4 ; =0x00000624
	bl sub_02005748
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022490E4: .word 0x00000624
	thumb_func_end ov107_02249024

	thumb_func_start ov107_022490E8
ov107_022490E8: ; 0x022490E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r6, r1, #0
	add r7, r2, #0
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	add r1, r0, #0
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0207A0FC
	add r4, r0, #0
	bl sub_02076B10
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov107_02248104
	cmp r7, #1
	bne _02249140
	add r0, r5, #0
	mov r1, #0x1f
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldr r0, _02249230 ; =0x00000633
	bl sub_02005748
	b _02249152
_02249140:
	add r0, r5, #0
	mov r1, #0x20
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldr r0, _02249234 ; =0x00000634
	bl sub_02005748
_02249152:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	ldrb r0, [r5, #0x14]
	bne _02249178
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	strb r7, [r1, r0]
	b _02249188
_02249178:
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0
	strb r2, [r1, r0]
_02249188:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022491C0
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x32
	bl sub_02075AD0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	b _0224921A
_022491C0:
	ldrb r0, [r5, #0x14]
	add r1, r6, #0
	bl ov107_02249C98
	mov r1, #0xdb
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _022491F8
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x37
	bl sub_02075AD0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
	b _0224921A
_022491F8:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r1, #0x2d
	bl sub_02075AD0
	str r0, [sp]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0
	bl sub_02074B30
	add r0, r4, #0
	bl sub_0207418C
_0224921A:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x80
	bl ov107_02247B78
	add r0, r5, #0
	add r5, #0x70
	add r1, r5, #0
	bl ov107_02247C64
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02249230: .word 0x00000633
_02249234: .word 0x00000634
	thumb_func_end ov107_022490E8

	thumb_func_start ov107_02249238
ov107_02249238: ; 0x02249238
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	mov r1, #0
	bl sub_0201ADA4
	add r4, #0x90
	add r0, r4, #0
	bl sub_0201ACF4
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov107_02249238

	thumb_func_start ov107_02249258
ov107_02249258: ; 0x02249258
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0xf]
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022492A6
	mov r0, #2
	bic r1, r0
	mov r0, #0x4e
	strb r1, [r4, #0xf]
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x12
	bl sub_02001504
	add r5, r0, #0
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201AD10
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r0, #0x4e
	lsl r0, r0, #2
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02001384
_022492A6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02249258

	thumb_func_start ov107_022492A8
ov107_022492A8: ; 0x022492A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl ov104_0223B7A8
	mov r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02249338
	add r5, r6, #0
_022492C0:
	mov r0, #0xde
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [sp, #4]
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp, #4]
	mov r1, #0xa4
	mov r2, #0
	bl sub_02074470
	add r1, r0, #0
	lsl r0, r7, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	bl ov104_0222E240
	add r1, r0, #0
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224932E
	bl ov107_02249C1C
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov107_02249C98
	cmp r4, r0
	bne _02249314
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02249322
_02249314:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl ov107_02249C28
	b _0224932E
_02249322:
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl ov107_02249C28
_0224932E:
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _022492C0
_02249338:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022492A8

	thumb_func_start ov107_0224933C
ov107_0224933C: ; 0x0224933C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov107_02248BB4
	ldrb r0, [r5, #9]
	bl sub_0205E630
	add r7, r0, #0
	ldrb r0, [r5, #9]
	bl sub_0205E630
	bl sub_0205E6A8
	add r2, r0, #0
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_02030698
	cmp r0, r4
	bhs _02249382
	add r0, r5, #0
	bl ov107_02248BEC
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	mov r0, #0xf
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02249382:
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #0
	bne _022493C6
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02248860
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	add r2, r4, #0
	bl ov104_0223BC2C
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov107_02248C08
	cmp r4, #2
	bne _022493B6
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov107_02248A8C
	b _022493BE
_022493B6:
	ldrb r1, [r5, #0xd]
	add r0, r5, #0
	bl ov107_02248B50
_022493BE:
	mov r0, #0xc
	strb r0, [r5, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022493C6:
	mov r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_0224933C

	thumb_func_start ov107_022493CC
ov107_022493CC: ; 0x022493CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #9]
	add r4, r1, #0
	mov r1, #0
	add r7, r2, #0
	bl ov104_0223B7A8
	cmp r7, #5
	bne _022493E6
	mov r6, #2
	b _022493EA
_022493E6:
	bl sub_02022974
_022493EA:
	ldrb r7, [r5, #0x15]
	add r1, r4, #0
	add r0, r7, #0
	bl ov107_02249C9C
	bl sub_0203608C
	cmp r0, #0
	bne _0224949A
	cmp r4, r7
	bhs _0224947A
	add r0, r5, #0
	mov r1, #5
	bl ov107_02248110
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	mov r2, #0x32
	bl ov104_0223BC2C
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	str r0, [sp]
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r3, r4, #1
	lsl r3, r3, #0x10
	add r2, r0, #0
	ldr r1, [sp]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02249536
	ldrb r1, [r5, #0xf]
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xf]
	b _02249536
_0224947A:
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r1, _02249578 ; =0x000003D3
	add r2, r1, #3
	add r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	add r1, r1, #3
	sub r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	add r1, r1, #1
	strb r1, [r0, r6]
	b _02249536
_0224949A:
	cmp r4, r7
	bhs _022494BE
	ldr r0, [r5, #0x24]
	mov r1, #5
	bl ov107_02249CF4
	ldr r1, _02249578 ; =0x000003D3
	add r2, r1, #3
	add r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	add r1, r1, #3
	sub r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	add r1, r1, #1
	strb r1, [r0, r6]
	b _02249536
_022494BE:
	add r0, r5, #0
	mov r1, #5
	bl ov107_02248110
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	mov r2, #0x32
	bl ov104_0223BC2C
	mov r0, #0x53
	lsl r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	add r2, r6, #0
	bl ov107_02249CAC
	add r4, r0, #0
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0203068C
	add r7, r0, #0
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	add r1, r6, #0
	bl sub_0205E5B4
	bl sub_0205E6A8
	add r3, r4, #1
	lsl r3, r3, #0x10
	add r2, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	lsr r3, r3, #0x10
	bl sub_020306E4
	ldrb r0, [r5, #9]
	bl ov104_0223BA14
	cmp r0, #1
	bne _02249536
	ldrb r1, [r5, #0xf]
	mov r0, #0xf8
	bic r1, r0
	mov r0, #0x10
	orr r0, r1
	strb r0, [r5, #0xf]
_02249536:
	add r0, r5, #0
	bl ov107_02248BB4
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0x50
	bl ov107_02248C08
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	bl ov107_02249DBC
	mov r1, #6
	add r3, r6, #0
	mul r3, r1
	ldr r1, _0224957C ; =0x0224A0DC
	lsl r2, r4, #1
	add r1, r1, r3
	ldrh r1, [r2, r1]
	add r0, r5, #0
	mov r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249578: .word 0x000003D3
_0224957C: .word 0x0224A0DC
	thumb_func_end ov107_022493CC

	thumb_func_start ov107_02249580
ov107_02249580: ; 0x02249580
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldrb r0, [r6, #9]
	mov r1, #1
	bl ov104_0223B7DC
	add r5, r0, #0
	mov r4, #0
	cmp r5, #0
	ble _022495A4
_02249594:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl ov107_022495A8
	add r4, r4, #1
	cmp r4, r5
	blt _02249594
_022495A4:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov107_02249580

	thumb_func_start ov107_022495A8
ov107_022495A8: ; 0x022495A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x37
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _022495C8
	lsl r1, r4, #3
	add r1, r5, r1
	sub r0, #0x30
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
_022495C8:
	mov r0, #0xdd
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _022495E2
	lsl r1, r4, #3
	add r1, r5, r1
	sub r0, #0x30
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov107_02249BAC
_022495E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022495A8

	thumb_func_start ov107_022495E4
ov107_022495E4: ; 0x022495E4
	push {r3, r4, r5, lr}
	ldrb r0, [r0, #9]
	add r5, r1, #0
	add r4, r2, #0
	bl ov104_0223BA14
	cmp r0, #1
	bne _022495F8
	mov r0, #0x40
	b _022495FA
_022495F8:
	mov r0, #0x60
_022495FA:
	str r0, [r5, #0]
	mov r0, #0x3c
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov107_022495E4

	.rodata


	.global Unk_ov107_0224A0AC
Unk_ov107_0224A0AC: ; 0x0224A0AC
	.incbin "incbin/overlay107_rodata.bin", 0x2AC, 0x2BC - 0x2AC

	.global Unk_ov107_0224A0BC
Unk_ov107_0224A0BC: ; 0x0224A0BC
	.incbin "incbin/overlay107_rodata.bin", 0x2BC, 0x2CC - 0x2BC

	.global Unk_ov107_0224A0CC
Unk_ov107_0224A0CC: ; 0x0224A0CC
	.incbin "incbin/overlay107_rodata.bin", 0x2CC, 0x2DC - 0x2CC

	.global Unk_ov107_0224A0DC
Unk_ov107_0224A0DC: ; 0x0224A0DC
	.incbin "incbin/overlay107_rodata.bin", 0x2DC, 0x2F0 - 0x2DC

	.global Unk_ov107_0224A0F0
Unk_ov107_0224A0F0: ; 0x0224A0F0
	.incbin "incbin/overlay107_rodata.bin", 0x2F0, 0x30C - 0x2F0

	.global Unk_ov107_0224A10C
Unk_ov107_0224A10C: ; 0x0224A10C
	.incbin "incbin/overlay107_rodata.bin", 0x30C, 0x328 - 0x30C

	.global Unk_ov107_0224A128
Unk_ov107_0224A128: ; 0x0224A128
	.incbin "incbin/overlay107_rodata.bin", 0x328, 0x344 - 0x328

	.global Unk_ov107_0224A144
Unk_ov107_0224A144: ; 0x0224A144
	.incbin "incbin/overlay107_rodata.bin", 0x344, 0x360 - 0x344

	.global Unk_ov107_0224A160
Unk_ov107_0224A160: ; 0x0224A160
	.incbin "incbin/overlay107_rodata.bin", 0x360, 0x37C - 0x360

	.global Unk_ov107_0224A17C
Unk_ov107_0224A17C: ; 0x0224A17C
	.incbin "incbin/overlay107_rodata.bin", 0x37C, 0x39C - 0x37C

	.global Unk_ov107_0224A19C
Unk_ov107_0224A19C: ; 0x0224A19C
	.incbin "incbin/overlay107_rodata.bin", 0x39C, 0x3BC - 0x39C

	.global Unk_ov107_0224A1BC
Unk_ov107_0224A1BC: ; 0x0224A1BC
	.incbin "incbin/overlay107_rodata.bin", 0x3BC, 0x3DC - 0x3BC

	.global Unk_ov107_0224A1DC
Unk_ov107_0224A1DC: ; 0x0224A1DC
	.incbin "incbin/overlay107_rodata.bin", 0x3DC, 0x28

