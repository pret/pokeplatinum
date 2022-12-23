	.include "macros/function.inc"
	.include "overlay062/ov62_02235E64.inc"

	

	.text


	thumb_func_start ov62_02235E64
ov62_02235E64: ; 0x02235E64
	push {r3, r4, r5, lr}
	mov r1, #0x67
	add r5, r0, #0
	mov r0, #0x66
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x67
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl memset
	mov r0, #0x86
	lsl r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	bl ov62_022315C8
	add r0, r5, #0
	mov r1, #1
	bl ov62_0222FB60
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02235E64

	thumb_func_start ov62_02235EBC
ov62_02235EBC: ; 0x02235EBC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02235ED4
	cmp r1, #1
	beq _02235F32
	b _02235FBE
_02235ED4:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02235EE8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02235EE8:
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223603C
_02235F32:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_02231454
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0
	add r1, r0, #0
	bl sub_02019060
	mov r0, #1
	mov r1, #3
	bl sub_02019060
	mov r0, #2
	mov r1, #0
	bl sub_02019060
	mov r0, #3
	mov r1, #2
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_02019060
	mov r0, #5
	mov r1, #3
	bl sub_02019060
	mov r0, #6
	mov r1, #1
	bl sub_02019060
	mov r0, #7
	mov r1, #2
	bl sub_02019060
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	mov r1, #0x3e
	mov r3, #7
	bl sub_020070E8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223603C
_02235FBE:
	mov r1, #0
	bl ov62_0223376C
	add r0, r5, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02236034
	ldr r0, _02236044 ; =0x0000086C
	mov r6, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02235FDC
	mov r6, #1
	b _02236006
_02235FDC:
	lsl r1, r1, #2
	add r1, r5, r1
	add r0, #0x10
	ldr r0, [r1, r0]
	mov r1, #5
	add r2, r6, #0
	bl sub_0202FE98
	mov r3, #0
	mov r2, #1
	eor r1, r3
	eor r0, r2
	orr r0, r1
	bne _02235FFC
	mov r6, #1
	b _02236006
_02235FFC:
	ldr r0, _02236048 ; =0x00000874
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02236006
	mov r6, #1
_02236006:
	cmp r6, #0
	beq _02236022
	add r0, r5, #0
	bl ov62_02236C20
	mov r0, #0x66
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #9
	bl ov62_0222FB60
	b _0223603C
_02236022:
	mov r0, #0x66
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r5, #0
	mov r1, #6
	bl ov62_0222FB60
	b _0223603C
_02236034:
	add r0, r5, #0
	mov r1, #2
	bl ov62_0222FB60
_0223603C:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02236044: .word 0x0000086C
_02236048: .word 0x00000874
	thumb_func_end ov62_02235EBC

	thumb_func_start ov62_0223604C
ov62_0223604C: ; 0x0223604C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223605E
	b _02236160
_0223605E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223606A: ; jump table
	.short _02236072 - _0223606A - 2 ; case 0
	.short _02236088 - _0223606A - 2 ; case 1
	.short _022360AA - _0223606A - 2 ; case 2
	.short _02236106 - _0223606A - 2 ; case 3
_02236072:
	bl ov62_02236C20
	add r0, r4, #0
	mov r1, #6
	mov r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236168
_02236088:
	bl ov62_02236B2C
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _0223616C ; =0x02248C1C
	ldr r2, _02236170 ; =ov62_02236AB0
	mov r1, #3
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236168
_022360AA:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ov62_02234214
	add r0, r5, #0
	add r0, #0x9c
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	add r5, #0x9c
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223427C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236168
_02236106:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02236146
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	bl ov62_0223427C
	add r0, r4, #0
	bl ov62_02236B64
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236146:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02236168
_02236160:
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_02236168:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223616C: .word 0x02248C1C
_02236170: .word ov62_02236AB0
	thumb_func_end ov62_0223604C

	thumb_func_start ov62_02236174
ov62_02236174: ; 0x02236174
	push {r3, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0202404C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov62_02236174

	thumb_func_start ov62_0223618C
ov62_0223618C: ; 0x0223618C
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bhi _0223629A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022361A8: ; jump table
	.short _022361B0 - _022361A8 - 2 ; case 0
	.short _022361DC - _022361A8 - 2 ; case 1
	.short _022361F4 - _022361A8 - 2 ; case 2
	.short _02236256 - _022361A8 - 2 ; case 3
_022361B0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022361C2
	add r4, #0x9c
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02234228
	b _022361CC
_022361C2:
	add r4, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02232394
_022361CC:
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_022361DC:
	mov r2, #1
	add r0, r4, #0
	add r1, r4, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022362B2
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_022361F4:
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02236220
	add r0, r4, #0
	add r0, #0x10
	add r1, r5, #0
	bl ov62_02232378
	add r4, #0x10
	add r0, r4, #0
	mov r1, #0
	bl ov62_022323B8
	add r0, r5, #0
	mov r1, #0x50
	mov r2, #3
	bl ov62_022343B8
	b _02236246
_02236220:
	add r0, r4, #0
	add r0, #0x9c
	add r1, r5, #0
	bl ov62_02234214
	add r0, r4, #0
	add r0, #0x9c
	mov r1, #0
	bl ov62_0223427C
	add r4, #0x9c
	add r0, r4, #0
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov62_022343B8
_02236246:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_02236256:
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #0
	mov r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _022362B2
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02236278
	add r4, #0x10
	add r0, r4, #0
	mov r1, #1
	bl ov62_022323B8
	b _02236282
_02236278:
	add r4, #0x9c
	add r0, r4, #0
	mov r1, #1
	bl ov62_0223427C
_02236282:
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_0223629A:
	ldr r1, [r4, #0xc]
	mov r0, #1
	eor r1, r0
	str r1, [r4, #0xc]
	add r0, r5, #0
	add r1, #0x79
	bl ov62_02236BC8
	add r0, r5, #0
	mov r1, #3
	bl ov62_0222FB60
_022362B2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_0223618C

	thumb_func_start ov62_022362B8
ov62_022362B8: ; 0x022362B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	mov r6, #0x5e
	ldr r4, [r5, r0]
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #4
	bl sub_0201A7E8
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x82
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r4, r6
	add r1, r7, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236394 ; =0x000F0D00
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add r6, #0x10
	add r0, r4, r6
	bl sub_0201A7A0
	mov r2, #6
	str r2, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r3, #0x12
	bl sub_0201A7E8
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	mov r1, #0x83
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, r6
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236394 ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02236394: .word 0x000F0D00
	thumb_func_end ov62_022362B8

	thumb_func_start ov62_02236398
ov62_02236398: ; 0x02236398
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x62
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02236398

	thumb_func_start ov62_022363CC
ov62_022363CC: ; 0x022363CC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r2, [r4, #8]
	ldr r5, [r4, r1]
	cmp r2, #7
	bls _022363E0
	b _022365EA
_022363E0:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022363EC: ; jump table
	.short _022363FC - _022363EC - 2 ; case 0
	.short _02236458 - _022363EC - 2 ; case 1
	.short _022364A8 - _022363EC - 2 ; case 2
	.short _022364E6 - _022363EC - 2 ; case 3
	.short _02236530 - _022363EC - 2 ; case 4
	.short _0223658E - _022363EC - 2 ; case 5
	.short _0223659E - _022363EC - 2 ; case 6
	.short _022365B0 - _022363EC - 2 ; case 7
_022363FC:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02024034
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02236430
	add r0, r5, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ov62_02234228
	b _0223643A
_02236430:
	add r0, r5, #0
	add r0, #0x10
	add r1, r4, #0
	bl ov62_02232394
_0223643A:
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02236BA8
	mov r0, #0x66
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_02236458:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223648E
	add r0, r4, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r4, #0
	bl ov62_02236C94
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_0223648E:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223660C
_022364A8:
	bl ov62_022362B8
	mov r1, #0x4a
	add r0, r4, #0
	lsl r1, r1, #2
	bl ov62_02231AAC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	mov r1, #0x54
	mov r3, #7
	bl sub_0200710C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_022364E6:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #0
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02236516
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236516:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223660C
_02236530:
	ldr r0, _02236614 ; =0x02248C14
	bl sub_02022760
	cmp r0, #0
	beq _02236570
	mov r0, #0x66
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	bl ov62_02234520
	mov r0, #0x83
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02024800
	cmp r0, #0
	beq _02236560
	ldr r1, _02236618 ; =0x0000012A
	add r0, r4, #0
	bl ov62_02231B3C
	b _02236568
_02236560:
	ldr r1, _0223661C ; =0x0000012B
	add r0, r4, #0
	bl ov62_02231B3C
_02236568:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_02236570:
	ldr r0, _02236620 ; =0x02248C18
	bl sub_02022760
	cmp r0, #0
	beq _0223660C
	mov r0, #0x66
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	bl ov62_02234520
	mov r0, #6
	str r0, [r4, #8]
	b _0223660C
_0223658E:
	sub r1, #0x30
	ldr r0, [r4, r1]
	bl sub_020246E0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_0223659E:
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_02236398
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_022365B0:
	add r0, r5, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r5, #0
	add r1, r5, #4
	mov r2, #1
	mov r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022365D0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_022365D0:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223660C
_022365EA:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _022365FE
	add r0, r4, #0
	mov r1, #7
	bl ov62_0222FB60
	b _0223660C
_022365FE:
	mov r1, #0
	str r1, [r5, r0]
	str r1, [r5, #0xc]
	add r0, r4, #0
	mov r1, #2
	bl ov62_0222FB60
_0223660C:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02236614: .word 0x02248C14
_02236618: .word 0x0000012A
_0223661C: .word 0x0000012B
_02236620: .word 0x02248C18
	thumb_func_end ov62_022363CC

	thumb_func_start ov62_02236624
ov62_02236624: ; 0x02236624
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223663A
	cmp r1, #1
	beq _0223665E
	cmp r1, #2
	beq _0223666E
	b _022366B2
_0223663A:
	ldr r1, _022366CC ; =0x0000012B
	bl ov62_02231AAC
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022366C4
_0223665E:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022366C4
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022366C4
_0223666E:
	ldr r1, _022366D0 ; =0x00000874
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _022366AA
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r4, r0]
	sub r1, #0x44
	str r0, [sp]
	ldr r0, [r4, r1]
	mov r1, #0x66
	add r2, sp, #0xc
	mov r3, #0
	bl sub_0202F298
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0x3c
	ldr r1, [r4, r1]
	bl ov62_022486A4
	bl sub_0202F22C
	add r0, r4, #0
	bl ov62_022339A0
	add r0, r4, #0
	bl ov62_022338A8
_022366AA:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022366C4
_022366B2:
	bl ov62_02231B8C
	add r0, r4, #0
	bl ov62_02236C20
	add r0, r4, #0
	mov r1, #9
	bl ov62_0222FB60
_022366C4:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_022366CC: .word 0x0000012B
_022366D0: .word 0x00000874
	thumb_func_end ov62_02236624

	thumb_func_start ov62_022366D4
ov62_022366D4: ; 0x022366D4
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022366F0
	cmp r1, #1
	beq _02236710
	cmp r1, #2
	beq _02236720
	b _0223679E
_022366F0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022367AA
_02236710:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022367AA
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022367AA
_02236720:
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0223676A
	mov r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02236742
	add r0, r4, #0
	add r0, #0x9c
	add r1, r5, #0
	bl ov62_02234228
	b _0223674C
_02236742:
	add r0, r4, #0
	add r0, #0x10
	add r1, r5, #0
	bl ov62_02232394
_0223674C:
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	add r0, r5, #0
	bl ov62_02236BA8
	add r0, r5, #0
	bl ov62_02236C94
_0223676A:
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_022314A8
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	ldr r1, [r1, #0]
	bl ov62_022300C8
	ldr r0, _022367B0 ; =0x00000868
	mov r1, #1
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_0208BA84
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _022367AA
_0223679E:
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022367AA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_022367B0: .word 0x00000868
	thumb_func_end ov62_022366D4

	thumb_func_start ov62_022367B4
ov62_022367B4: ; 0x022367B4
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022367CE
	cmp r1, #1
	beq _02236812
	cmp r1, #2
	beq _02236852
	b _02236896
_022367CE:
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022367FA
	add r4, #0x9c
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02234228
	b _02236804
_022367FA:
	add r4, #0x10
	add r0, r4, #0
	add r1, r5, #0
	bl ov62_02232394
_02236804:
	add r0, r5, #0
	bl ov62_02236BA8
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223691A
_02236812:
	add r0, r4, #0
	add r0, #8
	mov r1, #1
	bl ov62_02231664
	add r0, r4, #0
	add r1, r4, #4
	mov r2, #1
	mov r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02236838
	add r0, r5, #0
	bl ov62_02236C94
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
_02236838:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _0223691A
_02236852:
	mov r1, #1
	bl ov62_0223376C
	add r0, r5, #0
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	bl ov62_0223146C
	add r0, r5, #0
	mov r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #6
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r5, #0x24]
	mov r1, #7
	bl sub_02019EBC
	ldr r0, [r5, #8]
	add r0, r0, #1
	str r0, [r5, #8]
	b _0223691A
_02236896:
	bl ov62_02233790
	cmp r0, #0
	beq _0223691A
	add r0, r4, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022368EA
	add r0, r5, #0
	bl ov62_022318E8
	add r0, r4, #0
	add r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	mov r1, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	mov r2, #0xc
	mov r3, #0x10
	bl sub_02003A2C
	mov r1, #1
	ldr r3, [r5, #0x10]
	add r0, r5, #0
	add r2, r1, #0
	bl ov62_0222FB44
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	add r0, r4, #0
	bl sub_020181C4
	b _0223691A
_022368EA:
	ldr r0, [r5, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	ldr r0, [r5, #0x58]
	mov r1, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsl r3, r3, #0x18
	mov r2, #2
	lsr r3, r3, #0x18
	bl sub_02003A2C
_0223691A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_022367B4

	thumb_func_start ov62_02236920
ov62_02236920: ; 0x02236920
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _02236934
	b _02236A88
_02236934:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02236940: ; jump table
	.short _0223694C - _02236940 - 2 ; case 0
	.short _0223696C - _02236940 - 2 ; case 1
	.short _0223698E - _02236940 - 2 ; case 2
	.short _022369EA - _02236940 - 2 ; case 3
	.short _02236A5A - _02236940 - 2 ; case 4
	.short _02236A78 - _02236940 - 2 ; case 5
_0223694C:
	mov r1, #6
	mov r2, #7
	bl ov62_022343B8
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_0223696C:
	bl ov62_02236B2C
	mov r0, #0x66
	str r0, [sp]
	ldr r0, _02236AA4 ; =0x02248C1C
	ldr r2, _02236AA8 ; =ov62_02236AB0
	mov r1, #3
	add r3, r4, #0
	bl sub_02023FCC
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_0223698E:
	mov r1, #1
	bl ov62_02234540
	add r0, r5, #0
	add r0, #0x9c
	add r1, r4, #0
	bl ov62_02234214
	add r0, r5, #0
	add r0, #0x9c
	bl ov62_02233FEC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #3
	bl ov62_022343B8
	add r5, #0x9c
	add r0, r5, #0
	mov r1, #0
	bl ov62_0223427C
	add r0, r4, #0
	mov r1, #0
	bl ov62_02234540
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_022369EA:
	add r0, r5, #0
	add r0, #8
	mov r1, #0
	bl ov62_02231664
	mov r2, #0
	add r0, r5, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02236A40
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #1
	bl ov62_0223427C
	add r0, r4, #0
	bl ov62_02236B64
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02236A32
	mov r0, #0xff
	b _02236A36
_02236A32:
	ldr r0, [r4, #8]
	add r0, r0, #1
_02236A36:
	str r0, [r4, #8]
	mov r0, #0x66
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_02236A40:
	ldr r0, [r4, #0x58]
	mov r1, #3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl sub_02003A2C
	b _02236A9E
_02236A5A:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x66
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_02236A78:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02236A9E
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_02236A88:
	ldr r0, _02236AAC ; =0x000006D8
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov62_02230098
	add r0, r4, #0
	mov r1, #3
	bl ov62_0222FB60
_02236A9E:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02236AA4: .word 0x02248C1C
_02236AA8: .word ov62_02236AB0
_02236AAC: .word 0x000006D8
	thumb_func_end ov62_02236920

	thumb_func_start ov62_02236AB0
ov62_02236AB0: ; 0x02236AB0
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r2, #0x86
	lsl r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _02236B24
	cmp r0, #0
	beq _02236ACC
	cmp r0, #1
	beq _02236ADC
	cmp r0, #2
	beq _02236B16
	pop {r3, r4, r5, pc}
_02236ACC:
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02236ADC:
	add r0, r5, #0
	bl ov62_02234520
	ldr r0, _02236B28 ; =0x0000086C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02236B02
	add r4, #0xa0
	ldr r0, [r4, #0]
	mov r1, #5
	mov r2, #0
	bl sub_0202FE98
	mov r3, #0
	mov r2, #1
	eor r1, r3
	eor r0, r2
	orr r0, r1
	bne _02236B0C
_02236B02:
	add r0, r5, #0
	mov r1, #7
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02236B0C:
	add r0, r5, #0
	mov r1, #5
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02236B16:
	add r0, r5, #0
	bl ov62_02234520
	add r0, r5, #0
	mov r1, #8
	bl ov62_0222FB60
_02236B24:
	pop {r3, r4, r5, pc}
	nop
_02236B28: .word 0x0000086C
	thumb_func_end ov62_02236AB0

	thumb_func_start ov62_02236B2C
ov62_02236B2C: ; 0x02236B2C
	push {r3, r4}
	mov r3, #0x86
	lsl r3, r3, #4
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	ldr r1, [r0, r3]
	lsl r2, r2, #2
	add r4, r0, r2
	add r2, r3, #0
	add r2, #0x2c
	ldr r4, [r4, r2]
	add r2, r1, #0
	str r4, [r1, #0x10]
	add r2, #0x9c
	str r4, [r2, #0]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x1c
	lsl r2, r2, #2
	add r0, r0, r2
	ldr r0, [r0, r3]
	add r1, #0xa0
	str r0, [r1, #0]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov62_02236B2C

	thumb_func_start ov62_02236B64
ov62_02236B64: ; 0x02236B64
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	mov r6, #0x5e
	ldr r4, [r5, r0]
	lsl r6, r6, #2
	add r0, r4, r6
	bl sub_0201A7A0
	mov r0, #3
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	add r1, r4, r6
	mov r2, #6
	mov r3, #8
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0x79
	bl ov62_02236BC8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov62_02236B64

	thumb_func_start ov62_02236BA8
ov62_02236BA8: ; 0x02236BA8
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov62_02236BA8

	thumb_func_start ov62_02236BC8
ov62_02236BC8: ; 0x02236BC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	mov r6, #0x5e
	add r7, r1, #0
	ldr r4, [r5, r0]
	lsl r6, r6, #2
	add r0, r4, r6
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	add r1, r7, #0
	bl sub_0200B1EC
	add r5, r0, #0
	add r0, r4, r6
	add r1, r5, #0
	bl ov62_0223429C
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236C1C ; =0x000F0D00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02236C1C: .word 0x000F0D00
	thumb_func_end ov62_02236BC8

	thumb_func_start ov62_02236C20
ov62_02236C20: ; 0x02236C20
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r5, r0, #0
	lsl r1, r1, #4
	ldr r4, [r5, r1]
	mov r1, #2
	bl ov62_022312CC
	add r0, r5, #0
	mov r1, #2
	bl ov62_022313E0
	mov r1, #0x57
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r0, r1, #4
	add r1, r5, #0
	add r0, r4, r0
	add r1, #0x14
	mov r2, #2
	bl ov62_0223118C
	mov r0, #0x56
	lsl r0, r0, #2
	add r5, #0x14
	add r0, r4, r0
	add r1, r5, #0
	mov r2, #3
	bl ov62_0223124C
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x50
	mov r2, #0xe8
	bl sub_0200D4C4
	mov r0, #0x16
	lsl r0, r0, #4
	mov r1, #0x24
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_020128C4
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020129D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02236C20

	thumb_func_start ov62_02236C94
ov62_02236C94: ; 0x02236C94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x86
	lsl r0, r0, #4
	ldr r4, [r5, r0]
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov62_022312B0
	mov r0, #0x57
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200D0F4
	add r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov62_02236C94

	.rodata


	.global Unk_ov62_02248C14
Unk_ov62_02248C14: ; 0x02248C14
	.incbin "incbin/overlay62_rodata.bin", 0x4E8, 0x4F0 - 0x4E8

	.global Unk_ov62_02248C1C
Unk_ov62_02248C1C: ; 0x02248C1C
	.incbin "incbin/overlay62_rodata.bin", 0x4F0, 0x4FC - 0x4F0

	.global Unk_ov62_02248C28
Unk_ov62_02248C28: ; 0x02248C28
	.incbin "incbin/overlay62_rodata.bin", 0x4FC, 0x28

