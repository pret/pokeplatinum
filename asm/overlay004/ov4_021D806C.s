	.include "macros/function.inc"
	.include "overlay004/ov4_021D806C.inc"

	

	.text


	arm_func_start ov4_021D806C
ov4_021D806C: ; 0x021D806C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021D8130 ; =0x0221A4B4
	mov r5, r0
	ldr r2, [r2, #0]
	mov r4, r1
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl RTC_GetDateTime
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl RTC_ConvertDateTimeToSecond
	mvn r2, #0
	cmp r1, r2
	cmpeq r0, r2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _021D8134 ; =0x0221A4B8
	ldr ip, [r2]
	ldr r3, [r2, #4]
	subs r2, r0, ip
	sbcs r2, r1, r3
	bge _021D80E0
	ldr r2, _021D8138 ; =0xBC191380
	adds r0, r0, r2
	adc r1, r1, #0
_021D80E0:
	ldr r2, _021D813C ; =0x0221A4C0
	mov ip, #0
	ldr lr, [r2]
	ldr r3, [r2, #4]
	subs r2, r0, lr
	sbc r3, r1, r3
	subs r0, r2, #0
	sbcs r0, r3, #0
	blt _021D8114
	ldr r0, _021D8140 ; =0xBC19137F
	subs r0, r0, r2
	sbcs r0, ip, r3
	bge _021D811C
_021D8114:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021D811C:
	mov r0, r5
	mov r1, r4
	bl RTC_ConvertSecondToDateTime
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D8130: .word 0x0221A4B4
_021D8134: .word 0x0221A4B8
_021D8138: .word 0xBC191380
_021D813C: .word 0x0221A4C0
_021D8140: .word 0xBC19137F
	arm_func_end ov4_021D806C

	arm_func_start ov4_021D8144
ov4_021D8144: ; 0x021D8144
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _021D81AC ; =ov4_021D7780
	ldr r1, _021D81B0 ; =ov4_021D77C4
	bl ov4_021D6CA4
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl strlen
	cmp r0, #0
	bne _021D8188
	ldr r0, _021D81B4 ; =0x02217424
	mov r1, r4
	bl ov4_021D6D88
	b _021D8194
_021D8188:
	mov r0, r5
	mov r1, r4
	bl ov4_021D6D88
_021D8194:
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov4_021D6D3C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D81AC: .word ov4_021D7780
_021D81B0: .word ov4_021D77C4
_021D81B4: .word 0x02217424
	arm_func_end ov4_021D8144

	arm_func_start ov4_021D81B8
ov4_021D81B8: ; 0x021D81B8
	stmfd sp!, {r4, lr}
	bl ov4_021D6FF0
	mov r4, r0
	sub r0, r4, #3
	cmp r0, #2
	bhi _021D81D4
	bl ov4_021D6D3C
_021D81D4:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021D81B8

	arm_func_start ov4_021D81DC
ov4_021D81DC: ; 0x021D81DC
	stmfd sp!, {r3, lr}
	ldr r0, _021D8288 ; =0x0221A4E4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D81F4
	bl OS_Terminate
_021D81F4:
	ldr r1, _021D828C ; =0x00001E20
	mov r0, #4
	bl ov4_021D7780
	ldr r1, _021D8288 ; =0x0221A4E4
	cmp r0, #0
	str r0, [r1, #0]
	bne _021D8224
	ldr r1, _021D8290 ; =0xFFFFB17C
	mov r0, #9
	bl ov4_021D7724
	mov r0, #0
	ldmia sp!, {r3, pc}
_021D8224:
	ldr r2, _021D828C ; =0x00001E20
	mov r1, #0
	bl MI_CpuFill8
	ldr r1, _021D8288 ; =0x0221A4E4
	ldr r0, _021D8294 ; =0x0221742C
	ldr r1, [r1, #0]
	mov r2, #9
	add r1, r1, #0x48
	add r1, r1, #0x1c00
	bl MI_CpuCopy8
	ldr r1, _021D8288 ; =0x0221A4E4
	ldr r3, _021D8298 ; =ov4_021D7780
	ldr r0, [r1, #0]
	ldr r2, _021D829C ; =ov4_021D77C4
	add r0, r0, #0x1000
	str r3, [r0, #0xc54]
	ldr r0, [r1, #0]
	add r0, r0, #0x1000
	str r2, [r0, #0xc58]
	ldr r1, [r1, #0]
	add r0, r1, #0x14
	add r0, r0, #0x1c00
	bl ov4_021D3048
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D8288: .word 0x0221A4E4
_021D828C: .word 0x00001E20
_021D8290: .word 0xFFFFB17C
_021D8294: .word 0x0221742C
_021D8298: .word ov4_021D7780
_021D829C: .word ov4_021D77C4
	arm_func_end ov4_021D81DC

	arm_func_start ov4_021D82A0
ov4_021D82A0: ; 0x021D82A0
	stmdb sp!, {lr}
	sub sp, sp, #0x1c4
	ldr r0, _021D8390 ; =0x0221A4E4
	ldr r0, [r0, #0]
	cmp r0, #0
	addeq sp, sp, #0x1c4
	moveq r0, #0
	ldmeqia sp!, {pc}
	bl ov4_021D3334
	cmp r0, #0
	beq _021D82E0
	cmp r0, #0x14
	beq _021D831C
	cmp r0, #0x15
	beq _021D82EC
	b _021D834C
_021D82E0:
	add sp, sp, #0x1c4
	mov r0, #2
	ldmia sp!, {pc}
_021D82EC:
	bl ov4_021D32AC
	ldr r0, _021D8390 ; =0x0221A4E4
	ldr r2, _021D8394 ; =0x00001E20
	ldr r1, [r0, #0]
	mov r0, #4
	bl ov4_021D77C4
	ldr r0, _021D8390 ; =0x0221A4E4
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x1c4
	mov r0, #3
	ldmia sp!, {pc}
_021D831C:
	bl ov4_021D32AC
	ldr r0, _021D8390 ; =0x0221A4E4
	ldr r2, _021D8394 ; =0x00001E20
	ldr r1, [r0, #0]
	mov r0, #4
	bl ov4_021D77C4
	ldr r0, _021D8390 ; =0x0221A4E4
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x1c4
	mov r0, #5
	ldmia sp!, {pc}
_021D834C:
	add r0, sp, #0
	bl ov4_021D3380
	bl ov4_021D32AC
	ldr r0, _021D8390 ; =0x0221A4E4
	ldr r2, _021D8394 ; =0x00001E20
	ldr r1, [r0, #0]
	mov r0, #4
	bl ov4_021D77C4
	ldr r1, [sp]
	ldr r2, _021D8390 ; =0x0221A4E4
	mov r3, #0
	mov r0, #2
	str r3, [r2, #0]
	bl ov4_021D7724
	mov r0, #4
	add sp, sp, #0x1c4
	ldmia sp!, {pc}
	; .align 2, 0
_021D8390: .word 0x0221A4E4
_021D8394: .word 0x00001E20
	arm_func_end ov4_021D82A0

	arm_func_start ov4_021D8398
ov4_021D8398: ; 0x021D8398
	ldr ip, _021D83A0 ; =ov4_021D3220
	bx ip
	; .align 2, 0
_021D83A0: .word ov4_021D3220
	arm_func_end ov4_021D8398

	.data


	.global Unk_ov4_02217424
Unk_ov4_02217424: ; 0x02217424
	.incbin "incbin/overlay4_data.bin", 0x15A4, 0x15AC - 0x15A4

	.global Unk_ov4_0221742C
Unk_ov4_0221742C: ; 0x0221742C
	.incbin "incbin/overlay4_data.bin", 0x15AC, 0x1



	.bss


	.global Unk_ov4_0221A4E4
Unk_ov4_0221A4E4: ; 0x0221A4E4
	.space 0x4

