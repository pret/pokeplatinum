	.include "macros/function.inc"
	.include "include/ov97_022392E4.inc"

	

	.text


	thumb_func_start ov97_022392E4
ov97_022392E4: ; 0x022392E4
	cmp r0, #1
	bne _022392EC
	mov r0, #1
	b _022392EE
_022392EC:
	ldr r0, _022392F4 ; =0x000001DE
_022392EE:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	; .align 2, 0
_022392F4: .word 0x000001DE
	thumb_func_end ov97_022392E4

	thumb_func_start ov97_022392F8
ov97_022392F8: ; 0x022392F8
	cmp r0, #7
	bhi _02239318
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02239308: ; jump table
	.short _02239318 - _02239308 - 2 ; case 0
	.short _02239318 - _02239308 - 2 ; case 1
	.short _0223931C - _02239308 - 2 ; case 2
	.short _02239322 - _02239308 - 2 ; case 3
	.short _0223931C - _02239308 - 2 ; case 4
	.short _02239326 - _02239308 - 2 ; case 5
	.short _02239318 - _02239308 - 2 ; case 6
	.short _0223931C - _02239308 - 2 ; case 7
_02239318:
	mov r0, #0xea
	bx lr
_0223931C:
	mov r0, #0x6d
	lsl r0, r0, #2
	bx lr
_02239322:
	ldr r0, _0223932C ; =0x000001B7
	bx lr
_02239326:
	ldr r0, _02239330 ; =0x000001B6
	bx lr
	nop
_0223932C: .word 0x000001B7
_02239330: .word 0x000001B6
	thumb_func_end ov97_022392F8

	thumb_func_start ov97_02239334
ov97_02239334: ; 0x02239334
	cmp r0, #7
	bhi _02239354
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02239344: ; jump table
	.short _02239354 - _02239344 - 2 ; case 0
	.short _02239354 - _02239344 - 2 ; case 1
	.short _02239358 - _02239344 - 2 ; case 2
	.short _0223935C - _02239344 - 2 ; case 3
	.short _02239358 - _02239344 - 2 ; case 4
	.short _02239362 - _02239344 - 2 ; case 5
	.short _02239354 - _02239344 - 2 ; case 6
	.short _02239358 - _02239344 - 2 ; case 7
_02239354:
	mov r0, #0xeb
	bx lr
_02239358:
	ldr r0, _02239368 ; =0x000001B5
	bx lr
_0223935C:
	mov r0, #0x6e
	lsl r0, r0, #2
	bx lr
_02239362:
	mov r0, #0x6d
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
_02239368: .word 0x000001B5
	thumb_func_end ov97_02239334

	thumb_func_start ov97_0223936C
ov97_0223936C: ; 0x0223936C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r3, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r5, #1
	beq _02239380
	mov r2, #1
	b _02239382
_02239380:
	mov r2, #0
_02239382:
	ldr r0, [sp, #8]
	mov r6, #0
	sub r0, r0, #1
	str r0, [sp, #0xc]
	beq _0223940A
	ldr r1, _02239418 ; =0x0223DAE8
	lsl r0, r2, #1
	ldr r4, [sp, #4]
	add r7, r1, r0
_02239394:
	ldr r0, [sp]
	ldrb r0, [r0, r6]
	cmp r0, #0xff
	beq _0223940A
	cmp r0, #0xf7
	blo _022393CE
	ldr r0, [sp, #8]
	sub r3, r0, #1
	cmp r3, #0xa
	blo _022393AA
	mov r3, #0xa
_022393AA:
	mov r1, #0
	cmp r3, #0
	ble _022393C0
	mov r0, #0x6b
	ldr r2, [sp, #4]
	lsl r0, r0, #2
_022393B6:
	add r1, r1, #1
	strh r0, [r2]
	add r2, r2, #2
	cmp r1, r3
	blt _022393B6
_022393C0:
	ldr r0, [sp, #4]
	ldr r2, _0223941C ; =0x0000FFFF
	lsl r1, r1, #1
	strh r2, [r0, r1]
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022393CE:
	lsl r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #1
	beq _022393E0
	cmp r0, #0xea
	beq _022393EA
	cmp r0, #0xeb
	beq _022393F4
	b _022393FE
_022393E0:
	add r0, r5, #0
	bl ov97_022392E4
	strh r0, [r4]
	b _02239400
_022393EA:
	add r0, r5, #0
	bl ov97_022392F8
	strh r0, [r4]
	b _02239400
_022393F4:
	add r0, r5, #0
	bl ov97_02239334
	strh r0, [r4]
	b _02239400
_022393FE:
	strh r0, [r4]
_02239400:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r0
	blo _02239394
_0223940A:
	ldr r2, _0223941C ; =0x0000FFFF
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	strh r2, [r0, r1]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02239418: .word 0x0223DAE8
_0223941C: .word 0x0000FFFF
	thumb_func_end ov97_0223936C

	.rodata


	.global Unk_ov97_0223DAE8
Unk_ov97_0223DAE8: ; 0x0223DAE8
	.incbin "incbin/overlay97_rodata.bin", 0x474, 0x3DC

