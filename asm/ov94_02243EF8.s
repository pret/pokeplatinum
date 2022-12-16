	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov94_02243EF8
ov94_02243EF8: ; 0x02243EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r4, r1, #0
	bl ov94_0224432C
	ldr r2, _02243F94 ; =0x00000D78
	add r0, sp, #0
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #2
	bl ov94_0223C300
	mov r0, #2
	str r0, [sp, #0x28]
	lsl r0, r0, #0x12
	str r0, [sp, #8]
	ldr r0, _02243F98 ; =0x00182000
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _02243F9C ; =0x00000ED4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02243F9C ; =0x00000ED4
	mov r1, #7
	mul r1, r4
	ldr r0, [r5, r0]
	add r1, r1, #3
	bl sub_02021D6C
	ldr r0, _02243F9C ; =0x00000ED4
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r4, _02243FA0 ; =0x02246322
	mov r7, #0
	mov r6, #0xe
_02243F4E:
	add r0, sp, #0
	bl sub_02021AA0
	ldr r1, _02243FA4 ; =0x00000ED8
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02243FA4 ; =0x00000ED8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _02243FA4 ; =0x00000ED8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _02243FA4 ; =0x00000ED8
	ldrh r1, [r4]
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	add r7, r7, #1
	add r5, r5, #4
	add r6, r6, #4
	add r4, r4, #4
	cmp r7, #7
	blt _02243F4E
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02243F94: .word 0x00000D78
_02243F98: .word 0x00182000
_02243F9C: .word 0x00000ED4
_02243FA0: .word 0x02246322
_02243FA4: .word 0x00000ED8
	thumb_func_end ov94_02243EF8

	thumb_func_start ov94_02243FA8
ov94_02243FA8: ; 0x02243FA8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov94_02243EF8
	ldr r0, _02243FE4 ; =ov94_0224400C
	mov r1, #0x10
	mov r2, #5
	mov r3, #0x3e
	bl sub_0200679C
	ldr r1, _02243FE8 ; =0x0000108C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0201CED0
	mov r1, #0
	add r2, r1, #0
	str r1, [r0, #0]
	sub r2, #0x28
	str r2, [r0, #4]
	str r4, [r0, #8]
	str r5, [r0, #0xc]
	bl ov94_02243FF0
	ldr r0, _02243FEC ; =0x0000062F
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_02243FE4: .word ov94_0224400C
_02243FE8: .word 0x0000108C
_02243FEC: .word 0x0000062F
	thumb_func_end ov94_02243FA8

	thumb_func_start ov94_02243FF0
ov94_02243FF0: ; 0x02243FF0
	add r3, r0, #0
	ldr r2, [r3, #0xc]
	ldr r0, _02244004 ; =0x00000ED4
	ldr r3, [r3, #8]
	ldr r0, [r2, r0]
	mov r2, #7
	mul r2, r3
	ldr r3, _02244008 ; =sub_02021D6C
	add r1, r1, r2
	bx r3
	; .align 2, 0
_02244004: .word 0x00000ED4
_02244008: .word sub_02021D6C
	thumb_func_end ov94_02243FF0

	thumb_func_start ov94_0224400C
ov94_0224400C: ; 0x0224400C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r0, #3
	bhi _022440A8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02244026: ; jump table
	.short _0224402E - _02244026 - 2 ; case 0
	.short _02244054 - _02244026 - 2 ; case 1
	.short _0224406E - _02244026 - 2 ; case 2
	.short _02244094 - _02244026 - 2 ; case 3
_0224402E:
	ldr r0, [r4, #4]
	cmp r0, #0xa0
	ble _02244042
	mov r0, #0xa0
	str r0, [r4, #4]
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #0]
	bl ov94_02243FF0
_02244042:
	ldr r0, [r4, #4]
	mov r1, #0x80
	add r2, r0, #5
	ldr r0, _022440AC ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r4, r5, r6, pc}
_02244054:
	ldr r0, _022440AC ; =0x00000ED4
	ldr r0, [r5, r0]
	bl sub_02021FD0
	cmp r0, #0
	bne _022440A8
	add r0, r4, #0
	mov r1, #2
	bl ov94_02243FF0
	mov r0, #2
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
_0224406E:
	ldr r0, [r4, #4]
	cmp r0, #0x82
	bge _02244082
	mov r0, #0x82
	str r0, [r4, #4]
	mov r1, #3
	add r0, r4, #0
	str r1, [r4, #0]
	bl ov94_02243FF0
_02244082:
	ldr r0, [r4, #4]
	mov r1, #0x80
	sub r2, r0, #2
	ldr r0, _022440AC ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r4, r5, r6, pc}
_02244094:
	ldr r0, _022440B0 ; =0x0000060D
	bl sub_02005748
	ldr r1, [r4, #0xc]
	ldr r0, _022440B4 ; =0x00001090
	mov r2, #1
	strh r2, [r1, r0]
	add r0, r6, #0
	bl sub_020067D0
_022440A8:
	pop {r4, r5, r6, pc}
	nop
_022440AC: .word 0x00000ED4
_022440B0: .word 0x0000060D
_022440B4: .word 0x00001090
	thumb_func_end ov94_0224400C

	thumb_func_start ov94_022440B8
ov94_022440B8: ; 0x022440B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _022440F0 ; =ov94_022440FC
	mov r1, #0x10
	mov r2, #5
	mov r3, #0x3e
	bl sub_0200679C
	ldr r1, _022440F4 ; =0x0000108C
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0201CED0
	mov r1, #0
	str r1, [r0, #0]
	mov r1, #0x82
	str r1, [r0, #4]
	str r4, [r0, #8]
	mov r1, #5
	str r5, [r0, #0xc]
	bl ov94_02243FF0
	ldr r0, _022440F8 ; =0x0000060E
	bl sub_02005748
	pop {r3, r4, r5, pc}
	nop
_022440F0: .word ov94_022440FC
_022440F4: .word 0x0000108C
_022440F8: .word 0x0000060E
	thumb_func_end ov94_022440B8

	thumb_func_start ov94_022440FC
ov94_022440FC: ; 0x022440FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	ldr r5, [r4, #0xc]
	cmp r1, #3
	bhi _02244196
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02244114: ; jump table
	.short _0224411C - _02244114 - 2 ; case 0
	.short _02244144 - _02244114 - 2 ; case 1
	.short _02244166 - _02244114 - 2 ; case 2
	.short _0224418C - _02244114 - 2 ; case 3
_0224411C:
	ldr r0, [r4, #4]
	cmp r0, #0xa0
	ble _02244132
	mov r0, #0xa0
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #0]
	add r0, r4, #0
	mov r1, #6
	bl ov94_02243FF0
_02244132:
	ldr r0, [r4, #4]
	mov r1, #0x80
	add r2, r0, #2
	ldr r0, _02244198 ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r3, r4, r5, pc}
_02244144:
	ldr r0, _02244198 ; =0x00000ED4
	ldr r0, [r5, r0]
	bl sub_02021FD0
	cmp r0, #0
	bne _02244196
	add r0, r4, #0
	mov r1, #0
	bl ov94_02243FF0
	mov r0, #2
	str r0, [r4, #0]
	mov r0, #0x63
	lsl r0, r0, #4
	bl sub_02005748
	pop {r3, r4, r5, pc}
_02244166:
	mov r0, #0x13
	ldr r1, [r4, #4]
	mvn r0, r0
	cmp r1, r0
	bge _0224417A
	mov r1, #3
	add r0, r4, #0
	str r1, [r4, #0]
	bl ov94_02243FF0
_0224417A:
	ldr r0, [r4, #4]
	mov r1, #0x80
	sub r2, r0, #5
	ldr r0, _02244198 ; =0x00000ED4
	str r2, [r4, #4]
	ldr r0, [r5, r0]
	bl ov94_022441A0
	pop {r3, r4, r5, pc}
_0224418C:
	ldr r1, _0224419C ; =0x00001090
	mov r2, #1
	strh r2, [r5, r1]
	bl sub_020067D0
_02244196:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244198: .word 0x00000ED4
_0224419C: .word 0x00001090
	thumb_func_end ov94_022440FC

	thumb_func_start ov94_022441A0
ov94_022441A0: ; 0x022441A0
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r5, r2, #0
	cmp r1, #0
	ble _022441BE
	lsl r0, r1, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022441CC
_022441BE:
	lsl r0, r1, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022441CC:
	bl sub_020E1740
	sub r5, #8
	str r0, [sp]
	cmp r5, #0
	ble _022441EA
	lsl r0, r5, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _022441F8
_022441EA:
	lsl r0, r5, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_022441F8:
	bl sub_020E1740
	mov r1, #1
	lsl r1, r1, #0x14
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov94_022441A0

	thumb_func_start ov94_02244214
ov94_02244214: ; 0x02244214
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244230 ; =0x0224633E
	bl sub_02022664
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0224422A
	cmp r0, r4
	blt _0224422E
_0224422A:
	mov r0, #0
	mvn r0, r0
_0224422E:
	pop {r4, pc}
	; .align 2, 0
_02244230: .word 0x0224633E
	thumb_func_end ov94_02244214

	thumb_func_start ov94_02244234
ov94_02244234: ; 0x02244234
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r1, #0
	beq _0224424E
	add r0, r2, #0
	cmp r0, #1
	bne _0224424E
	ldr r0, _022442C8 ; =0x0000064F
	bl sub_02005748
_0224424E:
	ldr r4, [sp, #4]
	mov r0, #0xe
	mov r6, #0
	str r0, [sp, #0x10]
	add r5, r4, #0
	mov r7, #0x11
_0224425A:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _022442A4
	ldr r0, _022442CC ; =0x0000034A
	ldr r1, [sp, #4]
	ldrb r0, [r4, r0]
	mov r3, #0xdd
	add r2, r1, #0
	str r0, [sp]
	ldr r0, _022442D0 ; =0x00001098
	lsl r3, r3, #2
	ldr r0, [r1, r0]
	ldr r1, _022442D4 ; =0x000010A0
	ldrb r3, [r4, r3]
	ldr r1, [r2, r1]
	add r2, r6, #0
	bl ov94_02244378
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldr r0, _022442D8 ; =0x00000ED8
	beq _02244290
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x10]
	bl sub_02021D6C
	b _02244298
_02244290:
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02021D6C
_02244298:
	ldr r0, _022442D8 ; =0x00000ED8
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	b _022442AE
_022442A4:
	ldr r0, _022442D8 ; =0x00000ED8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02021CAC
_022442AE:
	mov r0, #0x49
	lsl r0, r0, #2
	add r4, r4, r0
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	add r5, r5, #4
	add r7, r7, #4
	cmp r6, #7
	blt _0224425A
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022442C8: .word 0x0000064F
_022442CC: .word 0x0000034A
_022442D0: .word 0x00001098
_022442D4: .word 0x000010A0
_022442D8: .word 0x00000ED8
	thumb_func_end ov94_02244234

	thumb_func_start ov94_022442DC
ov94_022442DC: ; 0x022442DC
	lsl r0, r0, #2
	add r0, #0xe
	bx lr
	; .align 2, 0
	thumb_func_end ov94_022442DC

	thumb_func_start ov94_022442E4
ov94_022442E4: ; 0x022442E4
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02244328 ; =0x00000ED8
	add r5, r0, #0
	mov r4, #0
_022442EC:
	ldr r0, [r5, r7]
	bl sub_02021D34
	cmp r0, #0
	beq _0224431E
	ldr r0, _02244328 ; =0x00000ED8
	ldr r0, [r5, r0]
	bl sub_02021E24
	add r6, r0, #0
	add r0, r4, #0
	bl ov94_022442DC
	add r0, r0, #1
	cmp r6, r0
	beq _0224431E
	add r0, r4, #0
	bl ov94_022442DC
	add r1, r0, #0
	ldr r0, _02244328 ; =0x00000ED8
	add r1, r1, #1
	ldr r0, [r5, r0]
	bl sub_02021D6C
_0224431E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _022442EC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02244328: .word 0x00000ED8
	thumb_func_end ov94_022442E4

	thumb_func_start ov94_0224432C
ov94_0224432C: ; 0x0224432C
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _0224436C ; =0x000010A0
	add r4, r0, #0
	mov r0, #0x56
	mov r1, #7
	add r2, r4, r2
	mov r3, #0x3e
	bl sub_02006F88
	ldr r3, _02244370 ; =0x0000109C
	mov r1, #9
	str r0, [r4, r3]
	mov r0, #0x3e
	sub r3, r3, #4
	str r0, [sp]
	mov r0, #0x56
	mov r2, #1
	add r3, r4, r3
	bl sub_02006F50
	ldr r1, _02244374 ; =0x00001094
	str r0, [r4, r1]
	add r0, r1, #4
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xe
	bl sub_020C2C54
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224436C: .word 0x000010A0
_02244370: .word 0x0000109C
_02244374: .word 0x00001094
	thumb_func_end ov94_0224432C

	thumb_func_start ov94_02244378
ov94_02244378: ; 0x02244378
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	add r1, r3, #0
	add r5, r2, #0
	bl sub_0205CA0C
	add r4, r0, #0
	mov r0, #6
	lsl r0, r0, #8
	ldr r1, [r7, #0x14]
	mul r0, r4
	add r0, r1, r0
	ldr r1, _022443B4 ; =0x02246314
	lsl r2, r5, #1
	ldrh r1, [r1, r2]
	mov r2, #2
	ldr r6, [r6, #0xc]
	lsl r2, r2, #8
	bl sub_020C0314
	lsl r0, r4, #5
	add r1, r5, #2
	add r0, r6, r0
	lsl r1, r1, #5
	mov r2, #0x20
	bl sub_020C01B8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022443B4: .word 0x02246314
	thumb_func_end ov94_02244378

	thumb_func_start ov94_022443B8
ov94_022443B8: ; 0x022443B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022443D8 ; =0x00001090
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _022443D4
	add r0, #0xc
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _022443DC ; =0x00001094
	ldr r0, [r4, r0]
	bl sub_020181C4
_022443D4:
	pop {r4, pc}
	nop
_022443D8: .word 0x00001090
_022443DC: .word 0x00001094
	thumb_func_end ov94_022443B8

	.rodata


	.global Unk_ov94_02246314
Unk_ov94_02246314: ; 0x02246314
	.incbin "incbin/overlay94_rodata.bin", 0x91C, 0x92A - 0x91C

	.global Unk_ov94_02246322
Unk_ov94_02246322: ; 0x02246322
	.incbin "incbin/overlay94_rodata.bin", 0x92A, 0x946 - 0x92A

	.global Unk_ov94_0224633E
Unk_ov94_0224633E: ; 0x0224633E
	.incbin "incbin/overlay94_rodata.bin", 0x946, 0x20

