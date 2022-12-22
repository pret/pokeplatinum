	.include "macros/function.inc"
	.include "include/ov21_021D94BC.inc"

	

	.text


	thumb_func_start ov21_021D94BC
ov21_021D94BC: ; 0x021D94BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r2, [sp]
	add r0, r2, #0
	add r4, r1, #0
	bl ov21_021D9534
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021D957C
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r4, #0
	bl ov21_021D95B4
	str r6, [r5, #0]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D95E4
	str r0, [r5, #0x24]
	ldr r0, _021D9504 ; =ov21_021D95E8
	str r0, [r5, #8]
	ldr r0, _021D9508 ; =ov21_021D964C
	str r0, [r5, #0xc]
	ldr r0, _021D950C ; =ov21_021D9780
	str r0, [r5, #0x10]
	ldr r0, _021D9510 ; =ov21_021D97A0
	str r0, [r5, #0x14]
	ldr r0, _021D9514 ; =ov21_021D9830
	str r0, [r5, #0x18]
	ldr r0, _021D9518 ; =ov21_021D9960
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D9504: .word ov21_021D95E8
_021D9508: .word ov21_021D964C
_021D950C: .word ov21_021D9780
_021D9510: .word ov21_021D97A0
_021D9514: .word ov21_021D9830
_021D9518: .word ov21_021D9960
	thumb_func_end ov21_021D94BC

	thumb_func_start ov21_021D951C
ov21_021D951C: ; 0x021D951C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021D95B8
	ldr r0, [r4, #4]
	bl ov21_021D95CC
	ldr r0, [r4, #0x20]
	bl ov21_021D95E0
	pop {r4, pc}
	thumb_func_end ov21_021D951C

	thumb_func_start ov21_021D9534
ov21_021D9534: ; 0x021D9534
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	bne _021D9546
	bl sub_02022974
_021D9546:
	add r2, r4, #0
	mov r1, #0x10
	mov r0, #0
_021D954C:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021D954C
	add r0, r5, #0
	bl ov21_021D138C
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	add r0, r5, #0
	mov r1, #1
	bl ov21_021D1410
	str r0, [r4, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov21_021D1430
	str r0, [r4, #0xc]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9534

	thumb_func_start ov21_021D957C
ov21_021D957C: ; 0x021D957C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021D958E
	bl sub_02022974
_021D958E:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D957C

	thumb_func_start ov21_021D95B4
ov21_021D95B4: ; 0x021D95B4
	mov r0, #0
	bx lr
	thumb_func_end ov21_021D95B4

	thumb_func_start ov21_021D95B8
ov21_021D95B8: ; 0x021D95B8
	push {r4, lr}
	add r4, r0, #0
	bne _021D95C2
	bl sub_02022974
_021D95C2:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D95B8

	thumb_func_start ov21_021D95CC
ov21_021D95CC: ; 0x021D95CC
	push {r4, lr}
	add r4, r0, #0
	bne _021D95D6
	bl sub_02022974
_021D95D6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D95CC

	thumb_func_start ov21_021D95E0
ov21_021D95E0: ; 0x021D95E0
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D95E0

	thumb_func_start ov21_021D95E4
ov21_021D95E4: ; 0x021D95E4
	mov r0, #0
	bx lr
	thumb_func_end ov21_021D95E4

	thumb_func_start ov21_021D95E8
ov21_021D95E8: ; 0x021D95E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r6, r1, #0
	mov r1, #0x9c
	bl sub_02018144
	add r4, r0, #0
	bne _021D95FE
	bl sub_02022974
_021D95FE:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x9c
	bl memset
	add r0, r4, #0
	ldr r1, _021D9648 ; =0x0000FFFF
	str r4, [r5, #8]
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DC35C
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021D9ADC
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov21_021DB3E0
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DB428
	mov r1, #0
	mov r0, #4
_021D9638:
	add r1, r1, #1
	str r0, [r4, #0x2c]
	add r4, r4, #4
	cmp r1, #6
	blt _021D9638
	mov r0, #1
	pop {r4, r5, r6, pc}
	nop
_021D9648: .word 0x0000FFFF
	thumb_func_end ov21_021D95E8

	thumb_func_start ov21_021D964C
ov21_021D964C: ; 0x021D964C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #0xc]
	ldr r4, [r5, #8]
	ldr r7, [r0, #4]
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021D9666
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D9666:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021D9672
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9672:
	ldr r0, [r6, #8]
	bl ov21_021D86D8
	cmp r0, #0
	beq _021D9682
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9682:
	ldr r0, [r6, #8]
	bl ov21_021D863C
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _021D9778
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D969C: ; jump table
	.short _021D96A6 - _021D969C - 2 ; case 0
	.short _021D9702 - _021D969C - 2 ; case 1
	.short _021D9710 - _021D969C - 2 ; case 2
	.short _021D9766 - _021D969C - 2 ; case 3
	.short _021D9774 - _021D969C - 2 ; case 4
_021D96A6:
	ldr r1, [r4, #0x24]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _021D96B6
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	beq _021D96DE
_021D96B6:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #2
	str r0, [r7, #4]
	add r0, r4, #0
	add r0, #0x98
	str r0, [r7, #8]
	add r0, r4, #0
	bl ov21_021D9CA8
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov21_021D9CB8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D9778
_021D96DE:
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021D9B98
	ldr r0, [r6, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021D96F8
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DB2FC
_021D96F8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DC368
	b _021D9778
_021D9702:
	add r4, #0x98
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D9778
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D9778
_021D9710:
	ldr r0, [r4, #0x24]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x28]
	ldr r2, [r5, #4]
	add r0, r4, #0
	bl ov21_021D9B34
	ldr r1, [r5, #4]
	add r0, r4, #0
	bl ov21_021DB468
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DC35C
	ldr r1, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, r1
	beq _021D9746
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DB428
_021D9746:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #1
	str r0, [r7, #4]
	add r0, r4, #0
	add r0, #0x98
	str r0, [r7, #8]
	add r0, r4, #0
	bl ov21_021D9D68
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D9778
_021D9766:
	add r4, #0x98
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D9778
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D9778
_021D9774:
	mov r0, #0
	str r0, [r5, #0]
_021D9778:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D964C

	thumb_func_start ov21_021D9780
ov21_021D9780: ; 0x021D9780
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #8]
	add r0, r5, #0
	bl ov21_021D9B24
	add r0, r5, #0
	bl ov21_021DB3C8
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9780

	thumb_func_start ov21_021D97A0
ov21_021D97A0: ; 0x021D97A0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r0, #0
	add r7, r2, #0
	ldr r5, [r3, #8]
	ldr r0, [r4, #8]
	cmp r1, #3
	bhi _021D982A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D97BE: ; jump table
	.short _021D97C6 - _021D97BE - 2 ; case 0
	.short _021D97E4 - _021D97BE - 2 ; case 1
	.short _021D9814 - _021D97BE - 2 ; case 2
	.short _021D9826 - _021D97BE - 2 ; case 3
_021D97C6:
	mov r1, #0x4e
	ldr r0, [r4, #4]
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x4e
	str r0, [r4, #8]
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D982A
_021D97E4:
	ldr r1, [r4, #4]
	add r3, r5, #0
	str r1, [sp]
	add r1, r6, #0
	bl ov21_021D9A08
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #1
	sub r2, #0x10
	mov r3, #0x3f
	bl sub_0200AAE0
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl ov21_021DB480
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D982A
_021D9814:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021D982A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D982A
_021D9826:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D982A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D97A0

	thumb_func_start ov21_021D9830
ov21_021D9830: ; 0x021D9830
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r0, r2, #0
	add r5, r1, #0
	ldr r0, [r0, #8]
	str r2, [sp, #4]
	ldr r6, [r3, #8]
	ldr r4, [r5, #8]
	bl ov21_021D86D8
	cmp r0, #0
	beq _021D9856
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DC96C
	b _021D98E0
_021D9856:
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DC7C0
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r2, [r6, #0x24]
	ldr r3, [r4, r0]
	cmp r3, r2
	bne _021D9874
	add r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [r6, #0x28]
	cmp r1, r0
	beq _021D98D6
_021D9874:
	mov r0, #0x41
	lsl r0, r0, #2
	str r2, [r4, r0]
	ldr r1, [r6, #0x28]
	add r0, r0, #4
	str r1, [r4, r0]
	cmp r3, #3
	bne _021D9892
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DB6C8
	add r0, r4, #0
	bl ov21_021DBDA0
_021D9892:
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DB79C
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DBE3C
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bne _021D98C4
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DB634
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DBBE4
_021D98C4:
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r2, [r4, r3]
	add r3, r3, #4
	ldr r3, [r4, r3]
	add r0, r4, #0
	mov r1, #1
	bl ov21_021DC8B4
_021D98D6:
	ldr r2, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021DB49C
_021D98E0:
	mov r7, #0
	str r6, [sp, #8]
	add r5, r4, #0
_021D98E6:
	ldr r1, [sp, #8]
	ldr r0, [r5, #0]
	ldr r1, [r1, #0x2c]
	bl ov21_021D144C
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _021D990E
	cmp r7, #5
	bne _021D98FE
	mov r3, #1
	b _021D9900
_021D98FE:
	mov r3, #3
_021D9900:
	mov r0, #5
	str r0, [sp]
	mov r2, #5
	ldr r0, [r5, #0]
	mvn r2, r2
	bl ov21_021D1524
_021D990E:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #8]
	cmp r7, #6
	blt _021D98E6
	mov r5, #0
	mov r7, #6
_021D9920:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D992C
	ldr r1, [r6, #0x44]
	bl ov21_021D144C
_021D992C:
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _021D9940
	str r7, [sp]
	mov r2, #5
	ldr r0, [r4, #0x30]
	mvn r2, r2
	mov r3, #0xb
	bl ov21_021D1524
_021D9940:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D9950
	ldr r1, [r6, #0x44]
	bl ov21_021D144C
_021D9950:
	add r5, r5, #1
	add r4, r4, #4
	add r6, r6, #4
	cmp r5, #0xf
	blt _021D9920
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D9830

	thumb_func_start ov21_021D9960
ov21_021D9960: ; 0x021D9960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021D9A02
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D997C: ; jump table
	.short _021D9986 - _021D997C - 2 ; case 0
	.short _021D99B0 - _021D997C - 2 ; case 1
	.short _021D99C2 - _021D997C - 2 ; case 2
	.short _021D99EA - _021D997C - 2 ; case 3
	.short _021D99FC - _021D997C - 2 ; case 4
_021D9986:
	ldr r0, [r2, #8]
	bl ov21_021D86D0
	cmp r0, #1
	bne _021D9996
	mov r0, #2
	str r0, [r4, #0]
	b _021D9A02
_021D9996:
	mov r0, #2
	str r0, [sp]
	mov r0, #6
	add r1, r0, #0
	sub r1, #0x16
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D9A02
_021D99B0:
	mov r0, #2
	bl sub_0200AC1C
	cmp r0, #0
	beq _021D9A02
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D9A02
_021D99C2:
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021D9A4C
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #3
	bne _021D99E2
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021DB6C8
	add r0, r5, #0
	bl ov21_021DBDA0
_021D99E2:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D9A02
_021D99EA:
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D9A02
_021D99FC:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D9A02:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D9960

	thumb_func_start ov21_021D9A08
ov21_021D9A08: ; 0x021D9A08
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	add r6, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov21_021D9A74
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021DB50C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021DB708
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021DBDC8
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r3, [r5, r3]
	add r0, r5, #0
	mov r1, #1
	bl ov21_021DC8B4
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D9A08

	thumb_func_start ov21_021D9A4C
ov21_021D9A4C: ; 0x021D9A4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021DBE2C
	add r0, r5, #0
	bl ov21_021DB78C
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DB5DC
	mov r0, #0x79
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #0
	bl ov21_021D2584
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9A4C

	thumb_func_start ov21_021D9A74
ov21_021D9A74: ; 0x021D9A74
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x1d
	mov r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4, #0]
	mov r1, #0x4b
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r5, r0, #0
	ldrh r0, [r2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	mov r1, #6
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9A74

	thumb_func_start ov21_021D9ADC
ov21_021D9ADC: ; 0x021D9ADC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov21_021D9BEC
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r3, [r5, #0x24]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9B58
	add r0, r5, #0
	bl ov21_021D9B04
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D9ADC

	thumb_func_start ov21_021D9B04
ov21_021D9B04: ; 0x021D9B04
	mov r2, #0
	add r3, r0, #0
	mov r1, #3
_021D9B0A:
	add r2, r2, #1
	str r1, [r3, #0x2c]
	add r3, r3, #4
	cmp r2, #6
	blt _021D9B0A
	mov r2, #0
	mov r1, #3
_021D9B18:
	add r2, r2, #1
	str r1, [r0, #0x44]
	add r0, r0, #4
	cmp r2, #0xf
	blt _021D9B18
	bx lr
	thumb_func_end ov21_021D9B04

	thumb_func_start ov21_021D9B24
ov21_021D9B24: ; 0x021D9B24
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021D9D00
	add r0, r4, #0
	bl ov21_021D9D50
	pop {r4, pc}
	thumb_func_end ov21_021D9B24

	thumb_func_start ov21_021D9B34
ov21_021D9B34: ; 0x021D9B34
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov21_021D9D50
	ldr r0, [r5, #0x28]
	add r1, r4, #0
	str r0, [sp]
	ldr r3, [r5, #0x24]
	add r0, r5, #0
	add r2, r6, #0
	bl ov21_021D9B58
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9B34

	thumb_func_start ov21_021D9B58
ov21_021D9B58: ; 0x021D9B58
	push {r3, lr}
	cmp r3, #3
	bhi _021D9B94
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_021D9B6A: ; jump table
	.short _021D9B72 - _021D9B6A - 2 ; case 0
	.short _021D9B78 - _021D9B6A - 2 ; case 1
	.short _021D9B7E - _021D9B6A - 2 ; case 2
	.short _021D9B90 - _021D9B6A - 2 ; case 3
_021D9B72:
	bl ov21_021D9D78
	pop {r3, pc}
_021D9B78:
	bl ov21_021D9EB4
	pop {r3, pc}
_021D9B7E:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _021D9B8A
	bl ov21_021DA018
	pop {r3, pc}
_021D9B8A:
	bl ov21_021DA1C8
	pop {r3, pc}
_021D9B90:
	bl ov21_021DA38C
_021D9B94:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9B58

	thumb_func_start ov21_021D9B98
ov21_021D9B98: ; 0x021D9B98
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021D9C90
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021D9BB0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9B98

	thumb_func_start ov21_021D9BB0
ov21_021D9BB0: ; 0x021D9BB0
	push {r3, lr}
	cmp r2, #3
	bhi _021D9BEA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D9BC2: ; jump table
	.short _021D9BCA - _021D9BC2 - 2 ; case 0
	.short _021D9BD0 - _021D9BC2 - 2 ; case 1
	.short _021D9BD6 - _021D9BC2 - 2 ; case 2
	.short _021D9BE6 - _021D9BC2 - 2 ; case 3
_021D9BCA:
	bl ov21_021D9E08
	pop {r3, pc}
_021D9BD0:
	bl ov21_021D9F44
	pop {r3, pc}
_021D9BD6:
	cmp r3, #0
	bne _021D9BE0
	bl ov21_021DA0BC
	pop {r3, pc}
_021D9BE0:
	bl ov21_021DA280
	pop {r3, pc}
_021D9BE6:
	bl ov21_021DA41C
_021D9BEA:
	pop {r3, pc}
	thumb_func_end ov21_021D9BB0

	thumb_func_start ov21_021D9BEC
ov21_021D9BEC: ; 0x021D9BEC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #0x18
	bl sub_02018144
	str r0, [r5, #4]
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x20
	add r0, r0, #4
	mov r2, #0x40
	mov r3, #0xc0
	bl ov21_021D154C
	mov r0, #0xec
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0
	mov r2, #0x20
	mov r3, #0xbc
	bl ov21_021D154C
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x40
	add r0, #8
	mov r2, #0x60
	mov r3, #0xc0
	bl ov21_021D154C
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x60
	add r0, #0xc
	mov r2, #0x80
	mov r3, #0xc0
	bl ov21_021D154C
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0x80
	add r0, #0x10
	mov r2, #0xa0
	mov r3, #0xc0
	bl ov21_021D154C
	mov r0, #0xfc
	str r0, [sp]
	ldr r0, [r5, #4]
	mov r1, #0xa0
	add r0, #0x14
	mov r2, #0xc0
	mov r3, #0xac
	bl ov21_021D154C
	str r4, [r5, #0x10]
	str r5, [r5, #0x14]
	str r6, [sp]
	add r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021D9C8C ; =ov21_021D9D18
	mov r1, #6
	add r3, #0x10
	bl sub_02023FCC
	str r0, [r5, #0]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D9C8C: .word ov21_021D9D18
	thumb_func_end ov21_021D9BEC

	thumb_func_start ov21_021D9C90
ov21_021D9C90: ; 0x021D9C90
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021D9CA8
	ldr r0, [r4, #0]
	bl sub_0202404C
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov21_021D9CB8
	pop {r4, pc}
	thumb_func_end ov21_021D9C90

	thumb_func_start ov21_021D9CA8
ov21_021D9CA8: ; 0x021D9CA8
	mov r2, #0
	mov r1, #3
_021D9CAC:
	add r2, r2, #1
	str r1, [r0, #0x2c]
	add r0, r0, #4
	cmp r2, #6
	blt _021D9CAC
	bx lr
	thumb_func_end ov21_021D9CA8

	thumb_func_start ov21_021D9CB8
ov21_021D9CB8: ; 0x021D9CB8
	cmp r1, #3
	bhi _021D9CFE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D9CC8: ; jump table
	.short _021D9CD0 - _021D9CC8 - 2 ; case 0
	.short _021D9CDC - _021D9CC8 - 2 ; case 1
	.short _021D9CE8 - _021D9CC8 - 2 ; case 2
	.short _021D9CF4 - _021D9CC8 - 2 ; case 3
_021D9CD0:
	ldr r1, [r0, #0x30]
	cmp r1, #2
	beq _021D9CFE
	mov r1, #1
	str r1, [r0, #0x30]
	bx lr
_021D9CDC:
	ldr r1, [r0, #0x34]
	cmp r1, #2
	beq _021D9CFE
	mov r1, #1
	str r1, [r0, #0x34]
	bx lr
_021D9CE8:
	ldr r1, [r0, #0x38]
	cmp r1, #2
	beq _021D9CFE
	mov r1, #1
	str r1, [r0, #0x38]
	bx lr
_021D9CF4:
	ldr r1, [r0, #0x3c]
	cmp r1, #2
	beq _021D9CFE
	mov r1, #1
	str r1, [r0, #0x3c]
_021D9CFE:
	bx lr
	thumb_func_end ov21_021D9CB8

	thumb_func_start ov21_021D9D00
ov21_021D9D00: ; 0x021D9D00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_02024034
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9D00

	thumb_func_start ov21_021D9D18
ov21_021D9D18: ; 0x021D9D18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r2, #4]
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
	cmp r1, #2
	bne _021D9D46
	ldr r0, [r4, #0x18]
	mov r1, #4
	add r2, r5, #0
	bl ov21_021D4F20
	add r0, r4, #0
	add r0, #0x80
	str r5, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r4, #0x94
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D9D46:
	mov r0, #0
	add r4, #0x94
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9D18

	thumb_func_start ov21_021D9D50
ov21_021D9D50: ; 0x021D9D50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_02024034
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9D50

	thumb_func_start ov21_021D9D68
ov21_021D9D68: ; 0x021D9D68
	mov r2, #0
	mov r1, #3
_021D9D6C:
	add r2, r2, #1
	str r1, [r0, #0x44]
	add r0, r0, #4
	cmp r2, #0xf
	blt _021D9D6C
	bx lr
	thumb_func_end ov21_021D9D68

	thumb_func_start ov21_021D9D78
ov21_021D9D78: ; 0x021D9D78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	mov r1, #0x18
	str r2, [sp, #0xc]
	bl sub_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x30
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021D9D98:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r4, #0
	mov r5, #0x30
	sub r7, #0x10
	str r0, [sp, #0x18]
_021D9DA8:
	add r0, r5, #0
	add r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	ldr r1, [r0, #0xc]
	add r0, r4, r6
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	sub r3, #0x28
	bl ov21_021D154C
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #2
	blt _021D9DA8
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _021D9D98
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, _021D9E04 ; =ov21_021D9E90
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #6
	ldr r0, [r0, #0xc]
	add r3, #0x10
	bl sub_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D9E04: .word ov21_021D9E90
	thumb_func_end ov21_021D9D78

	thumb_func_start ov21_021D9E08
ov21_021D9E08: ; 0x021D9E08
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r1, #0
	add r2, r4, #0
	mov r0, #3
_021D9E14:
	add r1, r1, #1
	str r0, [r2, #0x44]
	add r2, r2, #4
	cmp r1, #6
	blt _021D9E14
	ldr r0, [r4, #8]
	bl sub_0202404C
	ldr r0, [r5, #8]
	bl ov21_021D8658
	cmp r0, #5
	bhi _021D9E8C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9E3A: ; jump table
	.short _021D9E46 - _021D9E3A - 2 ; case 0
	.short _021D9E52 - _021D9E3A - 2 ; case 1
	.short _021D9E5E - _021D9E3A - 2 ; case 2
	.short _021D9E6A - _021D9E3A - 2 ; case 3
	.short _021D9E76 - _021D9E3A - 2 ; case 4
	.short _021D9E82 - _021D9E3A - 2 ; case 5
_021D9E46:
	ldr r0, [r4, #0x44]
	cmp r0, #2
	beq _021D9E8C
	mov r0, #1
	str r0, [r4, #0x44]
	pop {r3, r4, r5, pc}
_021D9E52:
	ldr r0, [r4, #0x48]
	cmp r0, #2
	beq _021D9E8C
	mov r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021D9E5E:
	ldr r0, [r4, #0x4c]
	cmp r0, #2
	beq _021D9E8C
	mov r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021D9E6A:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021D9E8C
	mov r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
_021D9E76:
	ldr r0, [r4, #0x54]
	cmp r0, #2
	beq _021D9E8C
	mov r0, #1
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021D9E82:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021D9E8C
	mov r0, #1
	str r0, [r4, #0x58]
_021D9E8C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9E08

	thumb_func_start ov21_021D9E90
ov21_021D9E90: ; 0x021D9E90
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r2, #4]
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021D9EB0
	add r2, r5, #0
	ldr r0, [r4, #0x18]
	mov r1, #4
	add r2, #8
	bl ov21_021D4F20
	add r4, #0x84
	str r5, [r4, #0]
_021D9EB0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9E90

	thumb_func_start ov21_021D9EB4
ov21_021D9EB4: ; 0x021D9EB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	mov r1, #0x28
	str r2, [sp, #0xc]
	bl sub_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021D9ED4:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r4, #0
	mov r5, #0x30
	sub r7, #0x10
	str r0, [sp, #0x18]
_021D9EE4:
	add r0, r5, #0
	add r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	ldr r1, [r0, #0xc]
	add r0, r4, r6
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	sub r3, #0x28
	bl ov21_021D154C
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #2
	blt _021D9EE4
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021D9ED4
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, _021D9F40 ; =ov21_021D9FF8
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0xa
	ldr r0, [r0, #0xc]
	add r3, #0x10
	bl sub_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D9F40: .word ov21_021D9FF8
	thumb_func_end ov21_021D9EB4

	thumb_func_start ov21_021D9F44
ov21_021D9F44: ; 0x021D9F44
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r1, #0
	add r2, r4, #0
	mov r0, #3
_021D9F50:
	add r1, r1, #1
	str r0, [r2, #0x44]
	add r2, r2, #4
	cmp r1, #0xa
	blt _021D9F50
	ldr r0, [r4, #8]
	bl sub_0202404C
	ldr r0, [r5, #8]
	bl ov21_021D8674
	cmp r0, #9
	bhi _021D9FF4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D9F76: ; jump table
	.short _021D9FF4 - _021D9F76 - 2 ; case 0
	.short _021D9F8A - _021D9F76 - 2 ; case 1
	.short _021D9F96 - _021D9F76 - 2 ; case 2
	.short _021D9FA2 - _021D9F76 - 2 ; case 3
	.short _021D9FAE - _021D9F76 - 2 ; case 4
	.short _021D9FBA - _021D9F76 - 2 ; case 5
	.short _021D9FC6 - _021D9F76 - 2 ; case 6
	.short _021D9FD2 - _021D9F76 - 2 ; case 7
	.short _021D9FDE - _021D9F76 - 2 ; case 8
	.short _021D9FEA - _021D9F76 - 2 ; case 9
_021D9F8A:
	ldr r0, [r4, #0x44]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x44]
	pop {r3, r4, r5, pc}
_021D9F96:
	ldr r0, [r4, #0x48]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021D9FA2:
	ldr r0, [r4, #0x4c]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021D9FAE:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
_021D9FBA:
	ldr r0, [r4, #0x54]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021D9FC6:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, pc}
_021D9FD2:
	ldr r0, [r4, #0x5c]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021D9FDE:
	ldr r0, [r4, #0x60]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_021D9FEA:
	ldr r0, [r4, #0x64]
	cmp r0, #2
	beq _021D9FF4
	mov r0, #1
	str r0, [r4, #0x64]
_021D9FF4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021D9F44

	thumb_func_start ov21_021D9FF8
ov21_021D9FF8: ; 0x021D9FF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r2, #4]
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA016
	ldr r0, [r4, #0x18]
	mov r1, #4
	add r2, r5, #6
	bl ov21_021D4F20
	add r4, #0x84
	str r5, [r4, #0]
_021DA016:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9FF8

	thumb_func_start ov21_021DA018
ov21_021DA018: ; 0x021DA018
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	mov r1, #0x2c
	str r2, [sp, #0xc]
	bl sub_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021DA038:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r4, #0
	mov r5, #0x30
	sub r7, #0x10
	str r0, [sp, #0x18]
_021DA048:
	add r0, r5, #0
	add r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	ldr r1, [r0, #0xc]
	add r0, r4, r6
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	sub r3, #0x28
	bl ov21_021D154C
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #2
	blt _021DA048
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021DA038
	mov r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0xa0
	ldr r0, [r0, #0xc]
	mov r2, #0xc0
	add r0, #0x28
	mov r3, #8
	bl ov21_021D154C
	ldr r3, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r2, _021DA0B8 ; =ov21_021DA18C
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	mov r1, #0xb
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, #0x10
	ldr r0, [r0, #0xc]
	bl sub_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DA0B8: .word ov21_021DA18C
	thumb_func_end ov21_021DA018

	thumb_func_start ov21_021DA0BC
ov21_021DA0BC: ; 0x021DA0BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r2, r5, #0
	mov r0, #3
_021DA0C8:
	add r1, r1, #1
	str r0, [r2, #0x44]
	add r2, r2, #4
	cmp r1, #0xb
	blt _021DA0C8
	ldr r0, [r5, #8]
	bl sub_0202404C
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov21_021D8698
	add r1, r0, #0
	add r0, r5, #0
	bl ov21_021DA0FC
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov21_021D8698
	add r1, r0, #0
	add r0, r5, #0
	bl ov21_021DA0FC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DA0BC

	thumb_func_start ov21_021DA0FC
ov21_021DA0FC: ; 0x021DA0FC
	cmp r1, #9
	bhi _021DA18A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DA10C: ; jump table
	.short _021DA18A - _021DA10C - 2 ; case 0
	.short _021DA120 - _021DA10C - 2 ; case 1
	.short _021DA12C - _021DA10C - 2 ; case 2
	.short _021DA138 - _021DA10C - 2 ; case 3
	.short _021DA144 - _021DA10C - 2 ; case 4
	.short _021DA150 - _021DA10C - 2 ; case 5
	.short _021DA15C - _021DA10C - 2 ; case 6
	.short _021DA168 - _021DA10C - 2 ; case 7
	.short _021DA174 - _021DA10C - 2 ; case 8
	.short _021DA180 - _021DA10C - 2 ; case 9
_021DA120:
	ldr r1, [r0, #0x44]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x44]
	bx lr
_021DA12C:
	ldr r1, [r0, #0x48]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x48]
	bx lr
_021DA138:
	ldr r1, [r0, #0x4c]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x4c]
	bx lr
_021DA144:
	ldr r1, [r0, #0x50]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x50]
	bx lr
_021DA150:
	ldr r1, [r0, #0x54]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x54]
	bx lr
_021DA15C:
	ldr r1, [r0, #0x58]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x58]
	bx lr
_021DA168:
	ldr r1, [r0, #0x5c]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x5c]
	bx lr
_021DA174:
	ldr r1, [r0, #0x60]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x60]
	bx lr
_021DA180:
	ldr r1, [r0, #0x64]
	cmp r1, #2
	beq _021DA18A
	mov r1, #1
	str r1, [r0, #0x64]
_021DA18A:
	bx lr
	thumb_func_end ov21_021DA0FC

	thumb_func_start ov21_021DA18C
ov21_021DA18C: ; 0x021DA18C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r2, #4]
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA1BE
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DA1C4
	ldr r0, [r4, #0x18]
	mov r1, #4
	add r2, r5, #6
	bl ov21_021D4F20
	add r0, r4, #0
	add r0, #0x84
	str r5, [r0, #0]
	mov r0, #1
	add r4, #0x90
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021DA1BE:
	mov r0, #0
	add r4, #0x90
	str r0, [r4, #0]
_021DA1C4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DA18C

	thumb_func_start ov21_021DA1C8
ov21_021DA1C8: ; 0x021DA1C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	mov r1, #0x28
	str r2, [sp, #0xc]
	bl sub_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021DA1E8:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r4, #0
	mov r5, #0x30
	sub r7, #0x10
	str r0, [sp, #0x18]
_021DA1F8:
	add r0, r5, #0
	add r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	ldr r1, [r0, #0xc]
	add r0, r4, r6
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	sub r3, #0x28
	bl ov21_021D154C
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #2
	blt _021DA1F8
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _021DA1E8
	mov r0, #0xa8
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0x80
	ldr r0, [r0, #0xc]
	mov r2, #0xa0
	add r0, #0x20
	mov r3, #0x58
	bl ov21_021D154C
	mov r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0xa0
	ldr r0, [r0, #0xc]
	mov r2, #0xc0
	add r0, #0x24
	mov r3, #8
	bl ov21_021D154C
	ldr r3, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r2, _021DA27C ; =ov21_021DA2C0
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, #0x10
	ldr r0, [r0, #0xc]
	bl sub_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DA27C: .word ov21_021DA2C0
	thumb_func_end ov21_021DA1C8

	thumb_func_start ov21_021DA280
ov21_021DA280: ; 0x021DA280
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r2, r5, #0
	mov r0, #3
_021DA28C:
	add r1, r1, #1
	str r0, [r2, #0x44]
	add r2, r2, #4
	cmp r1, #0xa
	blt _021DA28C
	ldr r0, [r5, #8]
	bl sub_0202404C
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov21_021D8698
	add r1, r0, #0
	add r0, r5, #0
	bl ov21_021DA308
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov21_021D8698
	add r1, r0, #0
	add r0, r5, #0
	bl ov21_021DA308
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DA280

	thumb_func_start ov21_021DA2C0
ov21_021DA2C0: ; 0x021DA2C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r2, #4]
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA300
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DA306
	cmp r5, #8
	ldr r0, [r4, #0x18]
	bne _021DA2EA
	mov r1, #4
	add r2, r5, #7
	bl ov21_021D4F20
	b _021DA2F2
_021DA2EA:
	mov r1, #4
	add r2, r5, #6
	bl ov21_021D4F20
_021DA2F2:
	add r0, r4, #0
	add r0, #0x84
	str r5, [r0, #0]
	mov r0, #1
	add r4, #0x90
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021DA300:
	mov r0, #0
	add r4, #0x90
	str r0, [r4, #0]
_021DA306:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DA2C0

	thumb_func_start ov21_021DA308
ov21_021DA308: ; 0x021DA308
	sub r1, #0xa
	cmp r1, #7
	bhi _021DA388
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021DA31A: ; jump table
	.short _021DA32A - _021DA31A - 2 ; case 0
	.short _021DA336 - _021DA31A - 2 ; case 1
	.short _021DA342 - _021DA31A - 2 ; case 2
	.short _021DA34E - _021DA31A - 2 ; case 3
	.short _021DA35A - _021DA31A - 2 ; case 4
	.short _021DA366 - _021DA31A - 2 ; case 5
	.short _021DA372 - _021DA31A - 2 ; case 6
	.short _021DA37E - _021DA31A - 2 ; case 7
_021DA32A:
	ldr r1, [r0, #0x44]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x44]
	bx lr
_021DA336:
	ldr r1, [r0, #0x48]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x48]
	bx lr
_021DA342:
	ldr r1, [r0, #0x4c]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x4c]
	bx lr
_021DA34E:
	ldr r1, [r0, #0x50]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x50]
	bx lr
_021DA35A:
	ldr r1, [r0, #0x54]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x54]
	bx lr
_021DA366:
	ldr r1, [r0, #0x58]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x58]
	bx lr
_021DA372:
	ldr r1, [r0, #0x5c]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x5c]
	bx lr
_021DA37E:
	ldr r1, [r0, #0x60]
	cmp r1, #2
	beq _021DA388
	mov r1, #1
	str r1, [r0, #0x60]
_021DA388:
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021DA308

	thumb_func_start ov21_021DA38C
ov21_021DA38C: ; 0x021DA38C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r2, #0
	mov r1, #0x3c
	str r2, [sp, #0xc]
	bl sub_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021DA3AC:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r4, #0
	mov r5, #0x1c
	sub r7, #0x10
	str r0, [sp, #0x18]
_021DA3BC:
	add r0, r5, #0
	add r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	add r3, r5, #0
	ldr r1, [r0, #0xc]
	add r0, r4, r6
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	sub r3, #0x18
	bl ov21_021D154C
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #3
	blt _021DA3BC
	ldr r0, [sp, #0x10]
	add r6, r6, #3
	add r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021DA3AC
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, _021DA418 ; =ov21_021DA514
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r1, #0xf
	ldr r0, [r0, #0xc]
	add r3, #0x10
	bl sub_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DA418: .word ov21_021DA514
	thumb_func_end ov21_021DA38C

	thumb_func_start ov21_021DA41C
ov21_021DA41C: ; 0x021DA41C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r1, #0
	add r2, r4, #0
	mov r0, #3
_021DA428:
	add r1, r1, #1
	str r0, [r2, #0x44]
	add r2, r2, #4
	cmp r1, #0xf
	blt _021DA428
	ldr r0, [r4, #8]
	bl sub_0202404C
	ldr r0, [r5, #8]
	bl ov21_021D86BC
	cmp r0, #0xe
	bhi _021DA512
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA44E: ; jump table
	.short _021DA512 - _021DA44E - 2 ; case 0
	.short _021DA46C - _021DA44E - 2 ; case 1
	.short _021DA478 - _021DA44E - 2 ; case 2
	.short _021DA484 - _021DA44E - 2 ; case 3
	.short _021DA490 - _021DA44E - 2 ; case 4
	.short _021DA49C - _021DA44E - 2 ; case 5
	.short _021DA4A8 - _021DA44E - 2 ; case 6
	.short _021DA4B4 - _021DA44E - 2 ; case 7
	.short _021DA4C0 - _021DA44E - 2 ; case 8
	.short _021DA4CC - _021DA44E - 2 ; case 9
	.short _021DA4D8 - _021DA44E - 2 ; case 10
	.short _021DA4E4 - _021DA44E - 2 ; case 11
	.short _021DA4F0 - _021DA44E - 2 ; case 12
	.short _021DA4FC - _021DA44E - 2 ; case 13
	.short _021DA508 - _021DA44E - 2 ; case 14
_021DA46C:
	ldr r0, [r4, #0x60]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_021DA478:
	ldr r0, [r4, #0x70]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x70]
	pop {r3, r4, r5, pc}
_021DA484:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, pc}
_021DA490:
	ldr r0, [r4, #0x48]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021DA49C:
	ldr r0, [r4, #0x74]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x74]
	pop {r3, r4, r5, pc}
_021DA4A8:
	ldr r0, [r4, #0x64]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x64]
	pop {r3, r4, r5, pc}
_021DA4B4:
	ldr r0, [r4, #0x78]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x78]
	pop {r3, r4, r5, pc}
_021DA4C0:
	ldr r0, [r4, #0x54]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021DA4CC:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
_021DA4D8:
	ldr r0, [r4, #0x5c]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021DA4E4:
	ldr r0, [r4, #0x68]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
_021DA4F0:
	ldr r0, [r4, #0x4c]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021DA4FC:
	ldr r0, [r4, #0x44]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x44]
	pop {r3, r4, r5, pc}
_021DA508:
	ldr r0, [r4, #0x6c]
	cmp r0, #2
	beq _021DA512
	mov r0, #1
	str r0, [r4, #0x6c]
_021DA512:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DA41C

	thumb_func_start ov21_021DA514
ov21_021DA514: ; 0x021DA514
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r2, #4]
	lsl r0, r5, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA532
	ldr r0, [r4, #0x18]
	mov r1, #4
	add r2, r5, #6
	bl ov21_021D4F20
	add r4, #0x84
	str r5, [r4, #0]
_021DA532:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DA514

	thumb_func_start ov21_021DA534
ov21_021DA534: ; 0x021DA534
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r6, r0, #0
	cmp r4, #5
	bhi _021DA592
	add r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_021DA54C: ; jump table
	.short _021DA558 - _021DA54C - 2 ; case 0
	.short _021DA562 - _021DA54C - 2 ; case 1
	.short _021DA56C - _021DA54C - 2 ; case 2
	.short _021DA576 - _021DA54C - 2 ; case 3
	.short _021DA580 - _021DA54C - 2 ; case 4
	.short _021DA58A - _021DA54C - 2 ; case 5
_021DA558:
	mov r2, #0x10
	mov r1, #0xd4
	mov r3, #0x1c
	add r0, r2, #0
	b _021DA592
_021DA562:
	mov r1, #0xe0
	mov r2, #0x30
	mov r3, #0x2c
	mov r0, #0x10
	b _021DA592
_021DA56C:
	mov r1, #0xe0
	mov r2, #0x50
	mov r3, #0x2c
	mov r0, #0x10
	b _021DA592
_021DA576:
	mov r1, #0xe0
	mov r2, #0x70
	mov r3, #0x2c
	mov r0, #0x10
	b _021DA592
_021DA580:
	mov r1, #0xe0
	mov r2, #0x90
	mov r3, #0x2c
	mov r0, #0x10
	b _021DA592
_021DA58A:
	mov r1, #0xd4
	mov r2, #0xb0
	mov r3, #0x3c
	mov r0, #0x10
_021DA592:
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	str r4, [sp, #0xc]
	bl ov21_021D4FE4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DA534

	thumb_func_start ov21_021DA5A8
ov21_021DA5A8: ; 0x021DA5A8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DA6AC ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	beq _021DA67E
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DA68C
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #5
	bhi _021DA66E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA5D6: ; jump table
	.short _021DA658 - _021DA5D6 - 2 ; case 0
	.short _021DA5E2 - _021DA5D6 - 2 ; case 1
	.short _021DA5FA - _021DA5D6 - 2 ; case 2
	.short _021DA610 - _021DA5D6 - 2 ; case 3
	.short _021DA628 - _021DA5D6 - 2 ; case 4
	.short _021DA640 - _021DA5D6 - 2 ; case 5
_021DA5E2:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA5FA:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA610:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA628:
	add r0, r4, #0
	mov r1, #4
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA640:
	add r0, r4, #0
	mov r1, #5
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA658:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
_021DA66E:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	b _021DA68C
_021DA67E:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x8c
	str r1, [r0, #0]
_021DA68C:
	ldr r0, _021DA6AC ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _021DA6AA
	add r0, r4, #0
	mov r2, #0
	add r0, #0x80
	str r2, [r0, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x2c]
_021DA6AA:
	pop {r4, pc}
	; .align 2, 0
_021DA6AC: .word 0x021BF67C
	thumb_func_end ov21_021DA5A8

	thumb_func_start ov21_021DA6B0
ov21_021DA6B0: ; 0x021DA6B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r1, #0
	mov r1, #0x7e
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, #6
	ldr r7, [sp, #0x20]
	str r0, [sp, #0x18]
_021DA6D4:
	mov r4, #0
	mov r6, #0x30
_021DA6D8:
	ldr r0, [sp, #0x18]
	add r1, r4, r0
	ldr r0, [sp, #0x20]
	cmp r0, #5
	bhi _021DA740
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA6EE: ; jump table
	.short _021DA6FA - _021DA6EE - 2 ; case 0
	.short _021DA706 - _021DA6EE - 2 ; case 1
	.short _021DA712 - _021DA6EE - 2 ; case 2
	.short _021DA71E - _021DA6EE - 2 ; case 3
	.short _021DA72A - _021DA6EE - 2 ; case 4
	.short _021DA736 - _021DA6EE - 2 ; case 5
_021DA6FA:
	cmp r4, #2
	bne _021DA702
	mov r1, #0
	b _021DA740
_021DA702:
	mov r5, #1
	b _021DA740
_021DA706:
	cmp r4, #2
	bne _021DA70E
	mov r1, #1
	b _021DA740
_021DA70E:
	mov r5, #0
	b _021DA740
_021DA712:
	cmp r4, #2
	bne _021DA71A
	mov r1, #2
	b _021DA740
_021DA71A:
	mov r5, #0
	b _021DA740
_021DA71E:
	cmp r4, #2
	bne _021DA726
	mov r1, #3
	b _021DA740
_021DA726:
	mov r5, #0
	b _021DA740
_021DA72A:
	cmp r4, #2
	bne _021DA732
	mov r1, #4
	b _021DA740
_021DA732:
	mov r5, #1
	b _021DA740
_021DA736:
	cmp r4, #2
	bne _021DA73E
	mov r1, #5
	b _021DA740
_021DA73E:
	mov r5, #1
_021DA740:
	cmp r4, #2
	bge _021DA766
	mov r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r4, r7
	mov r1, #0x1c
	mul r1, r2
	ldr r0, [r0, #0x1c]
	ldr r2, [sp, #0x1c]
	add r0, r0, r1
	add r1, r6, #0
	mov r3, #0x3c
	bl ov21_021D4FE4
	b _021DA776
_021DA766:
	ldr r0, [sp, #0x10]
	add r2, r4, r7
	ldr r3, [r0, #0x1c]
	mov r0, #0x1c
	mul r0, r2
	add r0, r3, r0
	bl ov21_021DA534
_021DA776:
	add r4, r4, #1
	add r6, #0x50
	cmp r4, #3
	blt _021DA6D8
	ldr r0, [sp, #0x1c]
	add r7, r7, #3
	add r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	blt _021DA6D4
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	mov r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	mov r3, #6
	bl ov21_021D4F04
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DA6B0

	thumb_func_start ov21_021DA7B0
ov21_021DA7B0: ; 0x021DA7B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DA884 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	beq _021DA87A
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DA880
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	sub r0, #8
	cmp r0, #5
	bhi _021DA880
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA7E0: ; jump table
	.short _021DA7EC - _021DA7E0 - 2 ; case 0
	.short _021DA804 - _021DA7E0 - 2 ; case 1
	.short _021DA81C - _021DA7E0 - 2 ; case 2
	.short _021DA832 - _021DA7E0 - 2 ; case 3
	.short _021DA84A - _021DA7E0 - 2 ; case 4
	.short _021DA862 - _021DA7E0 - 2 ; case 5
_021DA7EC:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA804:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA81C:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA832:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA84A:
	add r0, r4, #0
	mov r1, #4
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA862:
	add r0, r4, #0
	mov r1, #5
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA87A:
	mov r0, #0
	add r4, #0x8c
	str r0, [r4, #0]
_021DA880:
	pop {r4, pc}
	nop
_021DA884: .word 0x021BF67C
	thumb_func_end ov21_021DA7B0

	thumb_func_start ov21_021DA888
ov21_021DA888: ; 0x021DA888
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r1, #0
	mov r1, #0x7e
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, #6
	ldr r7, [sp, #0x20]
	str r0, [sp, #0x18]
_021DA8AC:
	mov r4, #0
	mov r6, #0x30
_021DA8B0:
	ldr r0, [sp, #0x18]
	add r1, r4, r0
	ldr r0, [sp, #0x20]
	cmp r0, #5
	bhi _021DA918
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA8C6: ; jump table
	.short _021DA8D2 - _021DA8C6 - 2 ; case 0
	.short _021DA8DE - _021DA8C6 - 2 ; case 1
	.short _021DA8EA - _021DA8C6 - 2 ; case 2
	.short _021DA8F6 - _021DA8C6 - 2 ; case 3
	.short _021DA902 - _021DA8C6 - 2 ; case 4
	.short _021DA90E - _021DA8C6 - 2 ; case 5
_021DA8D2:
	cmp r4, #2
	bne _021DA8DA
	mov r1, #0
	b _021DA918
_021DA8DA:
	mov r5, #0
	b _021DA918
_021DA8DE:
	cmp r4, #2
	bne _021DA8E6
	mov r1, #1
	b _021DA918
_021DA8E6:
	mov r5, #0
	b _021DA918
_021DA8EA:
	cmp r4, #2
	bne _021DA8F2
	mov r1, #2
	b _021DA918
_021DA8F2:
	mov r5, #0
	b _021DA918
_021DA8F6:
	cmp r4, #2
	bne _021DA8FE
	mov r1, #3
	b _021DA918
_021DA8FE:
	mov r5, #0
	b _021DA918
_021DA902:
	cmp r4, #2
	bne _021DA90A
	mov r1, #4
	b _021DA918
_021DA90A:
	mov r5, #0
	b _021DA918
_021DA90E:
	cmp r4, #2
	bne _021DA916
	mov r1, #5
	b _021DA918
_021DA916:
	mov r5, #1
_021DA918:
	cmp r4, #2
	bge _021DA93E
	mov r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r4, r7
	mov r1, #0x1c
	mul r1, r2
	ldr r0, [r0, #0x1c]
	ldr r2, [sp, #0x1c]
	add r0, r0, r1
	add r1, r6, #0
	mov r3, #0x3c
	bl ov21_021D4FE4
	b _021DA94E
_021DA93E:
	ldr r0, [sp, #0x10]
	add r2, r4, r7
	ldr r3, [r0, #0x1c]
	mov r0, #0x1c
	mul r0, r2
	add r0, r3, r0
	bl ov21_021DA534
_021DA94E:
	add r4, r4, #1
	add r6, #0x50
	cmp r4, #3
	blt _021DA8B0
	ldr r0, [sp, #0x1c]
	add r7, r7, #3
	add r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	blt _021DA8AC
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	mov r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	mov r3, #6
	bl ov21_021D4F04
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DA888

	thumb_func_start ov21_021DA988
ov21_021DA988: ; 0x021DA988
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DAAD0 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	bne _021DA998
	b _021DAAC8
_021DA998:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DA9AC
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0xf
	bls _021DA9AE
_021DA9AC:
	b _021DAACE
_021DA9AE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DA9BA: ; jump table
	.short _021DAACE - _021DA9BA - 2 ; case 0
	.short _021DAACE - _021DA9BA - 2 ; case 1
	.short _021DAACE - _021DA9BA - 2 ; case 2
	.short _021DAACE - _021DA9BA - 2 ; case 3
	.short _021DAACE - _021DA9BA - 2 ; case 4
	.short _021DAACE - _021DA9BA - 2 ; case 5
	.short _021DA9DA - _021DA9BA - 2 ; case 6
	.short _021DA9F2 - _021DA9BA - 2 ; case 7
	.short _021DAA0A - _021DA9BA - 2 ; case 8
	.short _021DAA20 - _021DA9BA - 2 ; case 9
	.short _021DAA38 - _021DA9BA - 2 ; case 10
	.short _021DAA50 - _021DA9BA - 2 ; case 11
	.short _021DAA68 - _021DA9BA - 2 ; case 12
	.short _021DAA80 - _021DA9BA - 2 ; case 13
	.short _021DAA98 - _021DA9BA - 2 ; case 14
	.short _021DAAB0 - _021DA9BA - 2 ; case 15
_021DA9DA:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA9F2:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA0A:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA20:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA38:
	add r0, r4, #0
	mov r1, #4
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA50:
	add r0, r4, #0
	mov r1, #5
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA68:
	add r0, r4, #0
	mov r1, #6
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA80:
	add r0, r4, #0
	mov r1, #7
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA98:
	add r0, r4, #0
	mov r1, #8
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAAB0:
	add r0, r4, #0
	mov r1, #9
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAAC8:
	mov r0, #0
	add r4, #0x8c
	str r0, [r4, #0]
_021DAACE:
	pop {r4, pc}
	; .align 2, 0
_021DAAD0: .word 0x021BF67C
	thumb_func_end ov21_021DA988

	thumb_func_start ov21_021DAAD4
ov21_021DAAD4: ; 0x021DAAD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r1, #0
	mov r1, #0x7e
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0x10
	str r0, [sp, #0x24]
	mov r0, #6
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x1c]
_021DAAFA:
	mov r0, #0x30
	mov r4, #0
	str r0, [sp, #0x18]
_021DAB00:
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x18]
	add r1, r4, r0
	ldr r0, [sp, #0x28]
	cmp r0, #5
	bhi _021DAB90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAB18: ; jump table
	.short _021DAB24 - _021DAB18 - 2 ; case 0
	.short _021DAB34 - _021DAB18 - 2 ; case 1
	.short _021DAB44 - _021DAB18 - 2 ; case 2
	.short _021DAB54 - _021DAB18 - 2 ; case 3
	.short _021DAB64 - _021DAB18 - 2 ; case 4
	.short _021DAB74 - _021DAB18 - 2 ; case 5
_021DAB24:
	cmp r4, #2
	bne _021DAB2C
	mov r1, #0
	b _021DAB90
_021DAB2C:
	mov r5, #0
	mov r7, #0x3c
	mov r6, #0x10
	b _021DAB90
_021DAB34:
	cmp r4, #2
	bne _021DAB3C
	mov r1, #1
	b _021DAB90
_021DAB3C:
	mov r5, #0
	mov r7, #0x3c
	mov r6, #0x10
	b _021DAB90
_021DAB44:
	cmp r4, #2
	bne _021DAB4C
	mov r1, #2
	b _021DAB90
_021DAB4C:
	mov r5, #0
	mov r7, #0x3c
	mov r6, #0x10
	b _021DAB90
_021DAB54:
	cmp r4, #2
	bne _021DAB5C
	mov r1, #3
	b _021DAB90
_021DAB5C:
	mov r5, #0
	mov r7, #0x3c
	mov r6, #0x10
	b _021DAB90
_021DAB64:
	cmp r4, #2
	bne _021DAB6C
	mov r1, #4
	b _021DAB90
_021DAB6C:
	mov r5, #0
	mov r7, #0x3c
	mov r6, #0x10
	b _021DAB90
_021DAB74:
	cmp r4, #2
	bne _021DAB7C
	mov r1, #5
	b _021DAB90
_021DAB7C:
	cmp r4, #0
	bne _021DAB8A
	mov r7, #0x10
	mov r5, #0
	add r6, r7, #0
	mov r3, #0x18
	b _021DAB90
_021DAB8A:
	mov r5, #1
	mov r7, #0x3c
	mov r6, #0x10
_021DAB90:
	cmp r4, #2
	bge _021DABB6
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	add r1, r4, r0
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	add r1, r3, #0
	ldr r2, [sp, #0x24]
	add r3, r7, #0
	bl ov21_021D4FE4
	b _021DABC8
_021DABB6:
	ldr r0, [sp, #0x10]
	ldr r3, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	add r2, r4, r0
	mov r0, #0x1c
	mul r0, r2
	add r0, r3, r0
	bl ov21_021DA534
_021DABC8:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r0, #0x50
	str r0, [sp, #0x18]
	cmp r4, #3
	blt _021DAB00
	ldr r0, [sp, #0x24]
	add r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #3
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #6
	blt _021DAAFA
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	mov r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	mov r3, #6
	bl ov21_021D4F04
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DAAD4

	thumb_func_start ov21_021DAC08
ov21_021DAC08: ; 0x021DAC08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DAD70 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	bne _021DAC18
	b _021DAD68
_021DAC18:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DAC2C
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0x10
	bls _021DAC2E
_021DAC2C:
	b _021DAD6E
_021DAC2E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAC3A: ; jump table
	.short _021DAD6E - _021DAC3A - 2 ; case 0
	.short _021DAD6E - _021DAC3A - 2 ; case 1
	.short _021DAD6E - _021DAC3A - 2 ; case 2
	.short _021DAD6E - _021DAC3A - 2 ; case 3
	.short _021DAD6E - _021DAC3A - 2 ; case 4
	.short _021DAD6E - _021DAC3A - 2 ; case 5
	.short _021DAC5C - _021DAC3A - 2 ; case 6
	.short _021DAC74 - _021DAC3A - 2 ; case 7
	.short _021DAC8C - _021DAC3A - 2 ; case 8
	.short _021DACA2 - _021DAC3A - 2 ; case 9
	.short _021DACBA - _021DAC3A - 2 ; case 10
	.short _021DACD2 - _021DAC3A - 2 ; case 11
	.short _021DACEA - _021DAC3A - 2 ; case 12
	.short _021DAD02 - _021DAC3A - 2 ; case 13
	.short _021DAD1A - _021DAC3A - 2 ; case 14
	.short _021DAD32 - _021DAC3A - 2 ; case 15
	.short _021DAD50 - _021DAC3A - 2 ; case 16
_021DAC5C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAC74:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAC8C:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACA2:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACBA:
	add r0, r4, #0
	mov r1, #4
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACD2:
	add r0, r4, #0
	mov r1, #5
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACEA:
	add r0, r4, #0
	mov r1, #6
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD02:
	add r0, r4, #0
	mov r1, #7
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD1A:
	add r0, r4, #0
	mov r1, #8
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD32:
	add r0, r4, #0
	mov r1, #9
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	mov r0, #1
	add r4, #0x8c
	str r0, [r4, #0]
	pop {r4, pc}
_021DAD50:
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD68:
	mov r0, #0
	add r4, #0x8c
	str r0, [r4, #0]
_021DAD6E:
	pop {r4, pc}
	; .align 2, 0
_021DAD70: .word 0x021BF67C
	thumb_func_end ov21_021DAC08

	thumb_func_start ov21_021DAD74
ov21_021DAD74: ; 0x021DAD74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r1, #0
	mov r1, #0x7e
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	mov r0, #0
	str r0, [sp, #0x2c]
	mov r0, #0x10
	str r0, [sp, #0x24]
	mov r0, #6
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x1c]
_021DAD9A:
	mov r0, #0x30
	mov r4, #0
	str r0, [sp, #0x18]
_021DADA0:
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x18]
	add r1, r4, r0
	ldr r0, [sp, #0x2c]
	cmp r0, #5
	bhi _021DAE5C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DADB8: ; jump table
	.short _021DADC4 - _021DADB8 - 2 ; case 0
	.short _021DADD8 - _021DADB8 - 2 ; case 1
	.short _021DADEC - _021DADB8 - 2 ; case 2
	.short _021DAE00 - _021DADB8 - 2 ; case 3
	.short _021DAE14 - _021DADB8 - 2 ; case 4
	.short _021DAE38 - _021DADB8 - 2 ; case 5
_021DADC4:
	cmp r4, #2
	bne _021DADCC
	mov r1, #0
	b _021DAE5C
_021DADCC:
	mov r6, #0
	mov r0, #0x3c
	add r5, r6, #0
	str r0, [sp, #0x28]
	mov r7, #0x10
	b _021DAE5C
_021DADD8:
	cmp r4, #2
	bne _021DADE0
	mov r1, #1
	b _021DAE5C
_021DADE0:
	mov r6, #0
	mov r0, #0x3c
	add r5, r6, #0
	str r0, [sp, #0x28]
	mov r7, #0x10
	b _021DAE5C
_021DADEC:
	cmp r4, #2
	bne _021DADF4
	mov r1, #2
	b _021DAE5C
_021DADF4:
	mov r6, #0
	mov r0, #0x3c
	add r5, r6, #0
	str r0, [sp, #0x28]
	mov r7, #0x10
	b _021DAE5C
_021DAE00:
	cmp r4, #2
	bne _021DAE08
	mov r1, #3
	b _021DAE5C
_021DAE08:
	mov r6, #0
	mov r0, #0x3c
	add r5, r6, #0
	str r0, [sp, #0x28]
	mov r7, #0x10
	b _021DAE5C
_021DAE14:
	cmp r4, #2
	bne _021DAE1C
	mov r1, #4
	b _021DAE5C
_021DAE1C:
	cmp r4, #0
	bne _021DAE2C
	mov r0, #0x3c
	mov r6, #1
	mov r5, #2
	str r0, [sp, #0x28]
	mov r7, #0x10
	b _021DAE5C
_021DAE2C:
	mov r6, #0
	mov r0, #0x3c
	add r5, r6, #0
	str r0, [sp, #0x28]
	mov r7, #0x10
	b _021DAE5C
_021DAE38:
	cmp r4, #2
	bne _021DAE40
	mov r1, #5
	b _021DAE5C
_021DAE40:
	cmp r4, #0
	bne _021DAE52
	mov r0, #0x10
	mov r6, #0
	add r5, r6, #0
	str r0, [sp, #0x28]
	add r7, r0, #0
	mov r3, #0x18
	b _021DAE5C
_021DAE52:
	mov r6, #1
	mov r0, #0x3c
	add r5, r6, #0
	str r0, [sp, #0x28]
	mov r7, #0x10
_021DAE5C:
	cmp r4, #2
	bge _021DAE82
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	add r1, r4, r0
	mov r0, #0x1c
	mul r0, r1
	add r0, r2, r0
	add r1, r3, #0
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl ov21_021D4FE4
	b _021DAE94
_021DAE82:
	ldr r0, [sp, #0x10]
	ldr r3, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	add r2, r4, r0
	mov r0, #0x1c
	mul r0, r2
	add r0, r3, r0
	bl ov21_021DA534
_021DAE94:
	ldr r0, [sp, #0x18]
	add r4, r4, #1
	add r0, #0x50
	str r0, [sp, #0x18]
	cmp r4, #3
	bge _021DAEA2
	b _021DADA0
_021DAEA2:
	ldr r0, [sp, #0x24]
	add r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	add r0, r0, #3
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #6
	bge _021DAEC0
	b _021DAD9A
_021DAEC0:
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	mov r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	mov r3, #6
	bl ov21_021D4F04
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DAD74

	thumb_func_start ov21_021DAED8
ov21_021DAED8: ; 0x021DAED8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DB028 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	bne _021DAEE8
	b _021DB020
_021DAEE8:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DAEFC
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0x10
	bls _021DAEFE
_021DAEFC:
	b _021DB026
_021DAEFE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DAF0A: ; jump table
	.short _021DB026 - _021DAF0A - 2 ; case 0
	.short _021DB026 - _021DAF0A - 2 ; case 1
	.short _021DB026 - _021DAF0A - 2 ; case 2
	.short _021DB026 - _021DAF0A - 2 ; case 3
	.short _021DB026 - _021DAF0A - 2 ; case 4
	.short _021DB026 - _021DAF0A - 2 ; case 5
	.short _021DAF2C - _021DAF0A - 2 ; case 6
	.short _021DAF44 - _021DAF0A - 2 ; case 7
	.short _021DAF5C - _021DAF0A - 2 ; case 8
	.short _021DAF72 - _021DAF0A - 2 ; case 9
	.short _021DAF8A - _021DAF0A - 2 ; case 10
	.short _021DAFA2 - _021DAF0A - 2 ; case 11
	.short _021DAFBA - _021DAF0A - 2 ; case 12
	.short _021DAFD2 - _021DAF0A - 2 ; case 13
	.short _021DB026 - _021DAF0A - 2 ; case 14
	.short _021DAFEA - _021DAF0A - 2 ; case 15
	.short _021DB008 - _021DAF0A - 2 ; case 16
_021DAF2C:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF44:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF5C:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF72:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF8A:
	add r0, r4, #0
	mov r1, #4
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFA2:
	add r0, r4, #0
	mov r1, #5
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFBA:
	add r0, r4, #0
	mov r1, #6
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFD2:
	add r0, r4, #0
	mov r1, #7
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFEA:
	add r0, r4, #0
	mov r1, #8
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	mov r0, #1
	add r4, #0x8c
	str r0, [r4, #0]
	pop {r4, pc}
_021DB008:
	add r0, r4, #0
	mov r1, #9
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB020:
	mov r0, #0
	add r4, #0x8c
	str r0, [r4, #0]
_021DB026:
	pop {r4, pc}
	; .align 2, 0
_021DB028: .word 0x021BF67C
	thumb_func_end ov21_021DAED8

	thumb_func_start ov21_021DB02C
ov21_021DB02C: ; 0x021DB02C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r0, r1, #0
	mov r1, #0x2a
	lsl r1, r1, #4
	bl sub_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	mov r0, #0x10
	str r0, [sp, #0x1c]
	mov r0, #6
	ldr r7, [sp, #0x20]
	str r0, [sp, #0x18]
_021DB050:
	mov r4, #0
	mov r6, #0x1c
_021DB054:
	ldr r0, [sp, #0x18]
	add r1, r4, r0
	ldr r0, [sp, #0x20]
	cmp r0, #5
	bhi _021DB0BC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB06A: ; jump table
	.short _021DB076 - _021DB06A - 2 ; case 0
	.short _021DB082 - _021DB06A - 2 ; case 1
	.short _021DB08E - _021DB06A - 2 ; case 2
	.short _021DB09A - _021DB06A - 2 ; case 3
	.short _021DB0A6 - _021DB06A - 2 ; case 4
	.short _021DB0B2 - _021DB06A - 2 ; case 5
_021DB076:
	cmp r4, #3
	bne _021DB07E
	mov r1, #0
	b _021DB0BC
_021DB07E:
	mov r5, #0
	b _021DB0BC
_021DB082:
	cmp r4, #3
	bne _021DB08A
	mov r1, #1
	b _021DB0BC
_021DB08A:
	mov r5, #0
	b _021DB0BC
_021DB08E:
	cmp r4, #3
	bne _021DB096
	mov r1, #2
	b _021DB0BC
_021DB096:
	mov r5, #0
	b _021DB0BC
_021DB09A:
	cmp r4, #3
	bne _021DB0A2
	mov r1, #3
	b _021DB0BC
_021DB0A2:
	mov r5, #0
	b _021DB0BC
_021DB0A6:
	cmp r4, #3
	bne _021DB0AE
	mov r1, #4
	b _021DB0BC
_021DB0AE:
	mov r5, #0
	b _021DB0BC
_021DB0B2:
	cmp r4, #3
	bne _021DB0BA
	mov r1, #5
	b _021DB0BC
_021DB0BA:
	mov r5, #1
_021DB0BC:
	cmp r4, #3
	bge _021DB0E2
	mov r0, #0x14
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r4, r7
	mov r1, #0x1c
	mul r1, r2
	ldr r0, [r0, #0x1c]
	ldr r2, [sp, #0x1c]
	add r0, r0, r1
	add r1, r6, #0
	mov r3, #0x20
	bl ov21_021D4FE4
	b _021DB0F2
_021DB0E2:
	ldr r0, [sp, #0x10]
	add r2, r4, r7
	ldr r3, [r0, #0x1c]
	mov r0, #0x1c
	mul r0, r2
	add r0, r3, r0
	bl ov21_021DA534
_021DB0F2:
	add r4, r4, #1
	add r6, #0x38
	cmp r4, #4
	blt _021DB054
	ldr r0, [sp, #0x1c]
	add r7, r7, #4
	add r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	blt _021DB050
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	mov r2, #4
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	mov r3, #6
	bl ov21_021D4F04
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DB02C

	thumb_func_start ov21_021DB12C
ov21_021DB12C: ; 0x021DB12C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021DB2F8 ; =0x021BF67C
	ldr r1, [r0, #0x44]
	mov r0, #1
	tst r0, r1
	bne _021DB13C
	b _021DB2EE
_021DB13C:
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021DB150
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0x14
	bls _021DB152
_021DB150:
	b _021DB2F4
_021DB152:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB15E: ; jump table
	.short _021DB2F4 - _021DB15E - 2 ; case 0
	.short _021DB2F4 - _021DB15E - 2 ; case 1
	.short _021DB2F4 - _021DB15E - 2 ; case 2
	.short _021DB2F4 - _021DB15E - 2 ; case 3
	.short _021DB2F4 - _021DB15E - 2 ; case 4
	.short _021DB2F4 - _021DB15E - 2 ; case 5
	.short _021DB188 - _021DB15E - 2 ; case 6
	.short _021DB1A0 - _021DB15E - 2 ; case 7
	.short _021DB1B8 - _021DB15E - 2 ; case 8
	.short _021DB1CE - _021DB15E - 2 ; case 9
	.short _021DB1E6 - _021DB15E - 2 ; case 10
	.short _021DB1FE - _021DB15E - 2 ; case 11
	.short _021DB216 - _021DB15E - 2 ; case 12
	.short _021DB22E - _021DB15E - 2 ; case 13
	.short _021DB246 - _021DB15E - 2 ; case 14
	.short _021DB25E - _021DB15E - 2 ; case 15
	.short _021DB276 - _021DB15E - 2 ; case 16
	.short _021DB28E - _021DB15E - 2 ; case 17
	.short _021DB2A6 - _021DB15E - 2 ; case 18
	.short _021DB2BE - _021DB15E - 2 ; case 19
	.short _021DB2D6 - _021DB15E - 2 ; case 20
_021DB188:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1A0:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1B8:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1CE:
	add r0, r4, #0
	mov r1, #3
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1E6:
	add r0, r4, #0
	mov r1, #4
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1FE:
	add r0, r4, #0
	mov r1, #5
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB216:
	add r0, r4, #0
	mov r1, #6
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB22E:
	add r0, r4, #0
	mov r1, #7
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB246:
	add r0, r4, #0
	mov r1, #8
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB25E:
	add r0, r4, #0
	mov r1, #9
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB276:
	add r0, r4, #0
	mov r1, #0xa
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB28E:
	add r0, r4, #0
	mov r1, #0xb
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2A6:
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2BE:
	add r0, r4, #0
	mov r1, #0xd
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2D6:
	add r0, r4, #0
	mov r1, #0xe
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r0, r0, #2
	add r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2EE:
	mov r0, #0
	add r4, #0x8c
	str r0, [r4, #0]
_021DB2F4:
	pop {r4, pc}
	nop
_021DB2F8: .word 0x021BF67C
	thumb_func_end ov21_021DB12C

	thumb_func_start ov21_021DB2FC
ov21_021DB2FC: ; 0x021DB2FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021DB388 ; =0x021BF67C
	add r4, r1, #0
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021DB31E
	ldr r0, [r5, #0x18]
	mov r1, #0
	mov r2, #1
	bl ov21_021D4F20
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8c
	str r1, [r0, #0]
_021DB31E:
	ldr r0, _021DB388 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021DB33A
	mov r1, #0
	ldr r0, [r5, #0x18]
	sub r2, r1, #1
	bl ov21_021D4F20
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8c
	str r1, [r0, #0]
_021DB33A:
	ldr r0, _021DB388 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	beq _021DB356
	mov r1, #1
	ldr r0, [r5, #0x18]
	sub r2, r1, #2
	bl ov21_021D4F20
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8c
	str r1, [r0, #0]
_021DB356:
	ldr r0, _021DB388 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _021DB372
	mov r1, #1
	ldr r0, [r5, #0x18]
	add r2, r1, #0
	bl ov21_021D4F20
	add r0, r5, #0
	mov r1, #1
	add r0, #0x8c
	str r1, [r0, #0]
_021DB372:
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DA5A8
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DB38C
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DB388: .word 0x021BF67C
	thumb_func_end ov21_021DB2FC

	thumb_func_start ov21_021DB38C
ov21_021DB38C: ; 0x021DB38C
	push {r3, lr}
	cmp r2, #3
	bhi _021DB3C6
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DB39E: ; jump table
	.short _021DB3A6 - _021DB39E - 2 ; case 0
	.short _021DB3AC - _021DB39E - 2 ; case 1
	.short _021DB3B2 - _021DB39E - 2 ; case 2
	.short _021DB3C2 - _021DB39E - 2 ; case 3
_021DB3A6:
	bl ov21_021DA7B0
	pop {r3, pc}
_021DB3AC:
	bl ov21_021DA988
	pop {r3, pc}
_021DB3B2:
	cmp r3, #0
	bne _021DB3BC
	bl ov21_021DAC08
	pop {r3, pc}
_021DB3BC:
	bl ov21_021DAED8
	pop {r3, pc}
_021DB3C2:
	bl ov21_021DB12C
_021DB3C6:
	pop {r3, pc}
	thumb_func_end ov21_021DB38C

	thumb_func_start ov21_021DB3C8
ov21_021DB3C8: ; 0x021DB3C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl sub_020181C4
	ldr r0, [r4, #0x18]
	bl ov21_021D4EFC
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov21_021DB3C8

	thumb_func_start ov21_021DB3E0
ov21_021DB3E0: ; 0x021DB3E0
	push {r3, lr}
	ldr r2, [r0, #0x24]
	ldr r3, [r0, #0x28]
	bl ov21_021DB3EC
	pop {r3, pc}
	thumb_func_end ov21_021DB3E0

	thumb_func_start ov21_021DB3EC
ov21_021DB3EC: ; 0x021DB3EC
	push {r3, lr}
	cmp r2, #3
	bhi _021DB426
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DB3FE: ; jump table
	.short _021DB406 - _021DB3FE - 2 ; case 0
	.short _021DB40C - _021DB3FE - 2 ; case 1
	.short _021DB412 - _021DB3FE - 2 ; case 2
	.short _021DB422 - _021DB3FE - 2 ; case 3
_021DB406:
	bl ov21_021DA6B0
	pop {r3, pc}
_021DB40C:
	bl ov21_021DA888
	pop {r3, pc}
_021DB412:
	cmp r3, #0
	bne _021DB41C
	bl ov21_021DAAD4
	pop {r3, pc}
_021DB41C:
	bl ov21_021DAD74
	pop {r3, pc}
_021DB422:
	bl ov21_021DB02C
_021DB426:
	pop {r3, pc}
	thumb_func_end ov21_021DB3EC

	thumb_func_start ov21_021DB428
ov21_021DB428: ; 0x021DB428
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x24]
	cmp r0, #3
	bhi _021DB456
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB43E: ; jump table
	.short _021DB446 - _021DB43E - 2 ; case 0
	.short _021DB44A - _021DB43E - 2 ; case 1
	.short _021DB44E - _021DB43E - 2 ; case 2
	.short _021DB452 - _021DB43E - 2 ; case 3
_021DB446:
	mov r4, #1
	b _021DB45A
_021DB44A:
	mov r4, #2
	b _021DB45A
_021DB44E:
	mov r4, #3
	b _021DB45A
_021DB452:
	mov r4, #4
	b _021DB45A
_021DB456:
	bl sub_02022974
_021DB45A:
	ldr r0, [r5, #0x18]
	mov r1, #4
	add r2, r4, #0
	bl ov21_021D4F20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DB428

	thumb_func_start ov21_021DB468
ov21_021DB468: ; 0x021DB468
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021DB3C8
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DB3EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB468

	thumb_func_start ov21_021DB480
ov21_021DB480: ; 0x021DB480
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0]
	add r6, r2, #0
	bl ov21_021D25B8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DB49C
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DB480

	thumb_func_start ov21_021DB49C
ov21_021DB49C: ; 0x021DB49C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r2, #4]
	add r4, r1, #0
	bl ov21_021D3998
	cmp r0, #0
	beq _021DB4CA
	add r0, r5, #0
	mov r1, #1
	bl ov21_021DB4E4
	cmp r0, #0
	beq _021DB4C0
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0]
	bl ov21_021D25B8
_021DB4C0:
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DB4D4
	pop {r3, r4, r5, pc}
_021DB4CA:
	add r0, r5, #0
	mov r1, #0
	bl ov21_021DB4E4
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB49C

	thumb_func_start ov21_021DB4D4
ov21_021DB4D4: ; 0x021DB4D4
	ldr r3, _021DB4E0 ; =ov21_021D2544
	add r2, r0, #0
	ldr r0, [r1, #0x18]
	ldr r1, [r2, #0]
	bx r3
	nop
_021DB4E0: .word ov21_021D2544
	thumb_func_end ov21_021DB4D4

	thumb_func_start ov21_021DB4E4
ov21_021DB4E4: ; 0x021DB4E4
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	add r5, r1, #0
	bl ov21_021D25A0
	cmp r5, r0
	beq _021DB508
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r5, #0
	bl ov21_021D2584
	mov r0, #1
	pop {r3, r4, r5, pc}
_021DB508:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB4E4

	thumb_func_start ov21_021DB50C
ov21_021DB50C: ; 0x021DB50C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021DB5CC ; =0x00003EFD
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	mov r2, #0x7d
	mov r3, #1
	bl sub_02009A4C
	add r1, r5, #0
	add r1, #0xe4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldr r0, _021DB5D0 ; =0x00003E83
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #3
	mov r3, #0
	bl sub_02009B04
	add r1, r5, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200A640
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldr r0, _021DB5D4 ; =0x00003EFE
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x7e
	mov r3, #1
	bl sub_02009BC4
	add r1, r5, #0
	add r1, #0xec
	str r0, [r1, #0]
	ldr r0, _021DB5D8 ; =0x00003EFC
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x7c
	mov r3, #1
	bl sub_02009BC4
	add r5, #0xf0
	str r0, [r5, #0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB5CC: .word 0x00003EFD
_021DB5D0: .word 0x00003E83
_021DB5D4: .word 0x00003EFE
_021DB5D8: .word 0x00003EFC
	thumb_func_end ov21_021DB50C

	thumb_func_start ov21_021DB5DC
ov21_021DB5DC: ; 0x021DB5DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	add r0, r5, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200A6DC
	mov r0, #5
	add r1, r5, #0
	lsl r0, r0, #6
	add r1, #0xe4
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x51
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xe8
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x52
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xec
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	add r5, #0xf0
	ldr r0, [r4, r0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB5DC

	thumb_func_start ov21_021DB634
ov21_021DB634: ; 0x021DB634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x80
	mov r3, #1
	bl sub_02009A4C
	add r1, r5, #0
	add r1, #0xf4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldr r0, _021DB6C0 ; =0x00003F01
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x81
	mov r3, #1
	bl sub_02009BC4
	add r1, r5, #0
	add r1, #0xfc
	str r0, [r1, #0]
	ldr r0, _021DB6C4 ; =0x00003EFF
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x7f
	mov r3, #1
	bl sub_02009BC4
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DB6C0: .word 0x00003F01
_021DB6C4: .word 0x00003EFF
	thumb_func_end ov21_021DB634

	thumb_func_start ov21_021DB6C8
ov21_021DB6C8: ; 0x021DB6C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	mov r0, #5
	add r1, r5, #0
	lsl r0, r0, #6
	add r1, #0xf4
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x52
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xfc
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r1, #0x53
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r1, #0x4c
	ldr r1, [r5, r1]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DB6C8

	thumb_func_start ov21_021DB708
ov21_021DB708: ; 0x021DB708
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	ldr r3, _021DB788 ; =0x00003EFC
	add r5, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r1, [sp, #0x10]
	lsl r0, r0, #6
	add r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r2, #0x79
	add r3, r3, #2
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x20
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	add r0, r5, #0
	str r6, [sp, #0x48]
	bl ov21_021DB858
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r3, [r5, r3]
	add r0, r5, #0
	add r1, sp, #0x2c
	bl ov21_021DB81C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	nop
_021DB788: .word 0x00003EFC
	thumb_func_end ov21_021DB708

	thumb_func_start ov21_021DB78C
ov21_021DB78C: ; 0x021DB78C
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021DB90C
	add r0, r4, #0
	bl ov21_021DB924
	pop {r4, pc}
	thumb_func_end ov21_021DB78C

	thumb_func_start ov21_021DB79C
ov21_021DB79C: ; 0x021DB79C
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	ldr r3, _021DB818 ; =0x00003EFC
	add r5, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r1, [sp, #0x10]
	lsl r0, r0, #6
	add r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r2, #0x79
	add r3, r3, #2
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x20
	str r0, [sp, #0x40]
	mov r0, #2
	str r0, [sp, #0x44]
	add r0, r5, #0
	str r6, [sp, #0x48]
	bl ov21_021DB924
	mov r3, #0x41
	lsl r3, r3, #2
	ldr r2, [r5, r3]
	add r3, r3, #4
	ldr r3, [r5, r3]
	add r0, r5, #0
	add r1, sp, #0x2c
	bl ov21_021DB81C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DB818: .word 0x00003EFC
	thumb_func_end ov21_021DB79C

	thumb_func_start ov21_021DB81C
ov21_021DB81C: ; 0x021DB81C
	push {r3, lr}
	cmp r2, #3
	bhi _021DB856
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DB82E: ; jump table
	.short _021DB836 - _021DB82E - 2 ; case 0
	.short _021DB83C - _021DB82E - 2 ; case 1
	.short _021DB842 - _021DB82E - 2 ; case 2
	.short _021DB852 - _021DB82E - 2 ; case 3
_021DB836:
	bl ov21_021DB944
	pop {r3, pc}
_021DB83C:
	bl ov21_021DB9B4
	pop {r3, pc}
_021DB842:
	cmp r3, #0
	bne _021DB84C
	bl ov21_021DBA24
	pop {r3, pc}
_021DB84C:
	bl ov21_021DBAB8
	pop {r3, pc}
_021DB852:
	bl ov21_021DBB74
_021DB856:
	pop {r3, pc}
	thumb_func_end ov21_021DB81C

	thumb_func_start ov21_021DB858
ov21_021DB858: ; 0x021DB858
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0xe
	add r6, r0, #0
	add r4, r1, #0
	mov r5, #0
	lsl r7, r7, #0x10
_021DB864:
	cmp r5, #5
	bhi _021DB8C2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB874: ; jump table
	.short _021DB880 - _021DB874 - 2 ; case 0
	.short _021DB88E - _021DB874 - 2 ; case 1
	.short _021DB898 - _021DB874 - 2 ; case 2
	.short _021DB8A2 - _021DB874 - 2 ; case 3
	.short _021DB8AC - _021DB874 - 2 ; case 4
	.short _021DB8B6 - _021DB874 - 2 ; case 5
_021DB880:
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x35
	lsl r0, r0, #0xe
	str r0, [r4, #8]
	b _021DB8C2
_021DB88E:
	mov r0, #0xf
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB898:
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB8A2:
	mov r0, #0x13
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB8AC:
	mov r0, #0x15
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB8B6:
	mov r0, #0x17
	lsl r0, r0, #0x10
	str r0, [r4, #0xc]
	mov r0, #0x35
	lsl r0, r0, #0xe
	str r0, [r4, #8]
_021DB8C2:
	add r0, r4, #0
	bl sub_02021B90
	str r0, [r6, #0]
	cmp r5, #5
	bhi _021DB902
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DB8DA: ; jump table
	.short _021DB8E6 - _021DB8DA - 2 ; case 0
	.short _021DB8F0 - _021DB8DA - 2 ; case 1
	.short _021DB8F0 - _021DB8DA - 2 ; case 2
	.short _021DB8F0 - _021DB8DA - 2 ; case 3
	.short _021DB8F0 - _021DB8DA - 2 ; case 4
	.short _021DB8FA - _021DB8DA - 2 ; case 5
_021DB8E6:
	ldr r0, [r6, #0]
	mov r1, #3
	bl sub_02021D6C
	b _021DB902
_021DB8F0:
	ldr r0, [r6, #0]
	mov r1, #2
	bl sub_02021D6C
	b _021DB902
_021DB8FA:
	ldr r0, [r6, #0]
	mov r1, #1
	bl sub_02021D6C
_021DB902:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #6
	blt _021DB864
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DB858

	thumb_func_start ov21_021DB90C
ov21_021DB90C: ; 0x021DB90C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021DB912:
	ldr r0, [r5, #0]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021DB912
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DB90C

	thumb_func_start ov21_021DB924
ov21_021DB924: ; 0x021DB924
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DB92C:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DB938
	bl sub_02021BD4
	str r6, [r5, #0x30]
_021DB938:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _021DB92C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DB924

	thumb_func_start ov21_021DB944
ov21_021DB944: ; 0x021DB944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x30
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #8
_021DB95C:
	ldr r0, [sp, #8]
	mov r4, #0x30
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [r6, #0xc]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
_021DB976:
	str r4, [r6, #8]
	ldr r0, [r7, #0]
	lsl r0, r0, #0xc
	str r0, [r7, #0]
	add r0, r6, #0
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0x30]
	bl sub_02021D6C
	ldr r0, [sp, #0xc]
	add r4, #0x50
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DB976
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _021DB95C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DB944

	thumb_func_start ov21_021DB9B4
ov21_021DB9B4: ; 0x021DB9B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x10
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #8
_021DB9CC:
	ldr r0, [sp, #8]
	mov r4, #0x30
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [r6, #0xc]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
_021DB9E6:
	str r4, [r6, #8]
	ldr r0, [r7, #0]
	lsl r0, r0, #0xc
	str r0, [r7, #0]
	add r0, r6, #0
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0x30]
	bl sub_02021D6C
	ldr r0, [sp, #0xc]
	add r4, #0x50
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DB9E6
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _021DB9CC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DB9B4

	thumb_func_start ov21_021DBA24
ov21_021DBA24: ; 0x021DBA24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x10
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #8
_021DBA3C:
	ldr r0, [sp, #8]
	mov r4, #0x30
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [r6, #0xc]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
_021DBA56:
	str r4, [r6, #8]
	ldr r0, [r7, #0]
	lsl r0, r0, #0xc
	str r0, [r7, #0]
	add r0, r6, #0
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0x30]
	bl sub_02021D6C
	ldr r0, [sp, #0xc]
	add r4, #0x50
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DBA56
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _021DBA3C
	mov r0, #0xb0
	mov r2, #0x18
	str r0, [r6, #0xc]
	lsl r0, r2, #0xc
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	lsl r1, r0, #0xc
	lsl r0, r2, #0xf
	add r0, r1, r0
	str r0, [r6, #0xc]
	add r0, r6, #0
	bl sub_02021B90
	ldr r1, [sp]
	str r0, [r1, #0x58]
	mov r1, #5
	bl sub_02021D6C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DBA24

	thumb_func_start ov21_021DBAB8
ov21_021DBAB8: ; 0x021DBAB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x10
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #8
_021DBAD0:
	ldr r0, [sp, #8]
	mov r4, #0x30
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [r6, #0xc]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
_021DBAEA:
	str r4, [r6, #8]
	ldr r0, [r7, #0]
	lsl r0, r0, #0xc
	str r0, [r7, #0]
	add r0, r6, #0
	bl sub_02021B90
	mov r1, #0
	str r0, [r5, #0x30]
	bl sub_02021D6C
	ldr r0, [sp, #0xc]
	add r4, #0x50
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DBAEA
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _021DBAD0
	mov r0, #0x90
	str r0, [r6, #0xc]
	mov r0, #0x80
	lsl r0, r0, #0xc
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [r6, #0xc]
	add r0, r6, #0
	bl sub_02021B90
	ldr r1, [sp]
	str r0, [r1, #0x50]
	mov r1, #0
	bl sub_02021D6C
	mov r0, #0xb0
	mov r2, #0x18
	str r0, [r6, #0xc]
	lsl r0, r2, #0xc
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	lsl r1, r0, #0xc
	lsl r0, r2, #0xf
	add r0, r1, r0
	str r0, [r6, #0xc]
	add r0, r6, #0
	bl sub_02021B90
	ldr r1, [sp]
	str r0, [r1, #0x54]
	mov r1, #4
	bl sub_02021D6C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DBAB8

	thumb_func_start ov21_021DBB74
ov21_021DBB74: ; 0x021DBB74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x10]
	mov r0, #0x10
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #4]
	add r7, #8
_021DBB8C:
	ldr r0, [sp, #8]
	mov r4, #0x1c
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [r6, #0xc]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsl r1, r0, #2
	ldr r0, [sp]
	add r5, r0, r1
_021DBBA6:
	str r4, [r6, #8]
	ldr r0, [r7, #0]
	lsl r0, r0, #0xc
	str r0, [r7, #0]
	add r0, r6, #0
	bl sub_02021B90
	mov r1, #6
	str r0, [r5, #0x30]
	bl sub_02021D6C
	ldr r0, [sp, #0xc]
	add r4, #0x38
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _021DBBA6
	ldr r0, [sp, #8]
	add r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _021DBB8C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DBB74

	thumb_func_start ov21_021DBBE4
ov21_021DBBE4: ; 0x021DBBE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	ldr r4, [r1, #0]
	ldr r3, _021DBD9C ; =0x00003EFF
	str r0, [sp, #0x2c]
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r1, [sp, #0x10]
	lsl r0, r0, #6
	add r5, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x58
	sub r2, #0x7c
	add r3, r3, #2
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	mov r0, #0xf
	str r0, [sp, #0x4c]
	mov r0, #2
	str r0, [sp, #0x50]
	mov r0, #0
	str r0, [sp, #0x34]
	mov r0, #0x10
	ldr r7, [sp, #0x34]
	str r5, [sp, #0x54]
	str r0, [sp, #0x30]
_021DBC4E:
	ldr r0, [sp, #0x30]
	mov r6, #0
	str r0, [sp, #0x44]
	lsl r1, r0, #0xc
	mov r0, #3
	lsl r0, r0, #0x12
	add r0, r1, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	lsl r1, r7, #2
	mov r5, #0x1c
	add r4, r0, r1
_021DBC66:
	str r5, [sp, #0x40]
	lsl r0, r5, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x38
	bl sub_02021B90
	add r1, r4, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r0, r6, r7
	cmp r0, #0xe
	bhi _021DBD78
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DBC8A: ; jump table
	.short _021DBCA8 - _021DBC8A - 2 ; case 0
	.short _021DBCB6 - _021DBC8A - 2 ; case 1
	.short _021DBCC4 - _021DBC8A - 2 ; case 2
	.short _021DBCD2 - _021DBC8A - 2 ; case 3
	.short _021DBCE0 - _021DBC8A - 2 ; case 4
	.short _021DBCEE - _021DBC8A - 2 ; case 5
	.short _021DBCFC - _021DBC8A - 2 ; case 6
	.short _021DBD0A - _021DBC8A - 2 ; case 7
	.short _021DBD18 - _021DBC8A - 2 ; case 8
	.short _021DBD26 - _021DBC8A - 2 ; case 9
	.short _021DBD34 - _021DBC8A - 2 ; case 10
	.short _021DBD42 - _021DBC8A - 2 ; case 11
	.short _021DBD50 - _021DBC8A - 2 ; case 12
	.short _021DBD5E - _021DBC8A - 2 ; case 13
	.short _021DBD6C - _021DBC8A - 2 ; case 14
_021DBCA8:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021D6C
	b _021DBD78
_021DBCB6:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_02021D6C
	b _021DBD78
_021DBCC4:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_02021D6C
	b _021DBD78
_021DBCD2:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021D6C
	b _021DBD78
_021DBCE0:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_02021D6C
	b _021DBD78
_021DBCEE:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_02021D6C
	b _021DBD78
_021DBCFC:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02021D6C
	b _021DBD78
_021DBD0A:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #9
	bl sub_02021D6C
	b _021DBD78
_021DBD18:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0xc
	bl sub_02021D6C
	b _021DBD78
_021DBD26:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02021D6C
	b _021DBD78
_021DBD34:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_02021D6C
	b _021DBD78
_021DBD42:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0xd
	bl sub_02021D6C
	b _021DBD78
_021DBD50:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_02021D6C
	b _021DBD78
_021DBD5E:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_02021D6C
	b _021DBD78
_021DBD6C:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CAC
_021DBD78:
	add r6, r6, #1
	add r5, #0x38
	add r4, r4, #4
	cmp r6, #3
	bge _021DBD84
	b _021DBC66
_021DBD84:
	ldr r0, [sp, #0x30]
	add r7, r7, #3
	add r0, #0x20
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #5
	bge _021DBD98
	b _021DBC4E
_021DBD98:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DBD9C: .word 0x00003EFF
	thumb_func_end ov21_021DBBE4

	thumb_func_start ov21_021DBDA0
ov21_021DBDA0: ; 0x021DBDA0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DBDA8:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DBDBC
	bl sub_02021BD4
	add r0, r5, #0
	add r0, #0xa8
	str r6, [r0, #0]
_021DBDBC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _021DBDA8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DBDA0

	thumb_func_start ov21_021DBDC8
ov21_021DBDC8: ; 0x021DBDC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r4, [r1, #0]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021DBE28 ; =0x00003E83
	add r6, r2, #0
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #4]
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #0xc]
	mov r0, #0
	mov r2, #0x15
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x24]
	str r6, [sp, #0x28]
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	add r0, r5, #0
	add r1, sp, #4
	bl ov21_021DBEC8
	mov r3, #0x42
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r2, r3, #0
	str r0, [sp]
	add r2, #0x48
	sub r3, r3, #4
	ldr r2, [r4, r2]
	ldr r3, [r5, r3]
	add r0, r5, #0
	add r1, sp, #4
	bl ov21_021DBE98
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_021DBE28: .word 0x00003E83
	thumb_func_end ov21_021DBDC8

	thumb_func_start ov21_021DBE2C
ov21_021DBE2C: ; 0x021DBE2C
	push {r4, lr}
	add r4, r0, #0
	bl ov21_021DC04C
	add r0, r4, #0
	bl ov21_021DC068
	pop {r4, pc}
	thumb_func_end ov21_021DBE2C

	thumb_func_start ov21_021DBE3C
ov21_021DBE3C: ; 0x021DBE3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r4, [r1, #0]
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021DBE94 ; =0x00003E83
	add r6, r2, #0
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #4]
	mov r1, #0
	bl sub_0200A72C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	mov r0, #2
	str r0, [sp, #0x24]
	add r0, r5, #0
	str r6, [sp, #0x28]
	bl ov21_021DC068
	mov r3, #0x42
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r2, r3, #0
	str r0, [sp]
	add r2, #0x48
	sub r3, r3, #4
	ldr r2, [r4, r2]
	ldr r3, [r5, r3]
	add r0, r5, #0
	add r1, sp, #4
	bl ov21_021DBE98
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_021DBE94: .word 0x00003E83
	thumb_func_end ov21_021DBE3C

	thumb_func_start ov21_021DBE98
ov21_021DBE98: ; 0x021DBE98
	push {r3, lr}
	cmp r3, #0
	beq _021DBEA8
	cmp r3, #1
	beq _021DBEAE
	cmp r3, #2
	beq _021DBEB4
	pop {r3, pc}
_021DBEA8:
	bl ov21_021DC088
	pop {r3, pc}
_021DBEAE:
	bl ov21_021DC12C
	pop {r3, pc}
_021DBEB4:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _021DBEC0
	bl ov21_021DC1E8
	pop {r3, pc}
_021DBEC0:
	bl ov21_021DC2A4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov21_021DBE98

	thumb_func_start ov21_021DBEC8
ov21_021DBEC8: ; 0x021DBEC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	add r6, r2, #0
	mov r1, #2
	bl sub_0201FAB4
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #8
	mov r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, _021DC048 ; =0x000002B9
	add r0, r6, #0
	mov r3, #0x32
	bl ov21_021D4DAC
	ldr r1, [sp, #8]
	neg r0, r0
	str r1, [r4, #4]
	ldr r1, [r5, #4]
	lsr r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r0, #5
	mvn r0, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	add r1, r7, #3
	bl sub_02012A60
	ldr r0, [sp, #8]
	bl ov21_021D4DA0
	add r0, r6, #0
	mov r1, #8
	mov r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, _021DC048 ; =0x000002B9
	add r0, r6, #0
	mov r3, #0x2f
	bl ov21_021D4DAC
	ldr r1, [sp, #0xc]
	neg r0, r0
	str r1, [r4, #4]
	ldr r1, [r5, #8]
	lsr r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r0, #5
	mvn r0, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x20]
	ldr r0, [r0, #0]
	add r1, r7, #3
	bl sub_02012A60
	ldr r0, [sp, #0xc]
	bl ov21_021D4DA0
	add r0, r6, #0
	mov r1, #8
	mov r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, _021DC048 ; =0x000002B9
	add r0, r6, #0
	mov r3, #0x30
	bl ov21_021D4DAC
	ldr r1, [sp, #0x10]
	neg r0, r0
	str r1, [r4, #4]
	ldr r1, [r5, #0xc]
	lsr r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r0, #5
	mvn r0, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x24]
	ldr r0, [r0, #0]
	add r1, r7, #3
	bl sub_02012A60
	ldr r0, [sp, #0x10]
	bl ov21_021D4DA0
	add r0, r6, #0
	mov r1, #8
	mov r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	ldr r2, _021DC048 ; =0x000002B9
	add r0, r6, #0
	mov r3, #0x31
	bl ov21_021D4DAC
	ldr r1, [sp, #0x14]
	neg r0, r0
	str r1, [r4, #4]
	ldr r1, [r5, #0x10]
	lsr r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r0, #5
	mvn r0, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x28]
	ldr r0, [r0, #0]
	add r1, r7, #3
	bl sub_02012A60
	ldr r0, [sp, #0x14]
	bl ov21_021D4DA0
	add r0, r6, #0
	mov r1, #8
	mov r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, _021DC048 ; =0x000002B9
	add r0, r6, #0
	mov r3, #0x33
	bl ov21_021D4DAC
	ldr r1, [sp, #0x18]
	neg r0, r0
	str r1, [r4, #4]
	ldr r1, [r5, #0x14]
	lsr r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	mov r0, #5
	mvn r0, r0
	str r0, [r4, #0x14]
	add r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x2c]
	ldr r0, [r0, #0]
	add r1, r7, #1
	bl sub_02012A60
	ldr r0, [sp, #0x18]
	bl ov21_021D4DA0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DC048: .word 0x000002B9
	thumb_func_end ov21_021DBEC8

	thumb_func_start ov21_021DC04C
ov21_021DC04C: ; 0x021DC04C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021DC052:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021DC05C
	bl ov21_021D4D1C
_021DC05C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _021DC052
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DC04C

	thumb_func_start ov21_021DC068
ov21_021DC068: ; 0x021DC068
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_021DC070:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC07C
	bl ov21_021D4D1C
	str r6, [r5, #0x6c]
_021DC07C:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _021DC070
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DC068

	thumb_func_start ov21_021DC088
ov21_021DC088: ; 0x021DC088
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	str r2, [sp, #0xc]
	bl sub_0201FAB4
	str r0, [sp, #0x10]
	add r0, #0xb
	mov r5, #0
	str r0, [sp, #0x10]
_021DC0A4:
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	mov r2, #2
	bl ov21_021D4D6C
	add r7, r0, #0
	cmp r5, #5
	bhi _021DC0E2
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC0C0: ; jump table
	.short _021DC0CC - _021DC0C0 - 2 ; case 0
	.short _021DC0D0 - _021DC0C0 - 2 ; case 1
	.short _021DC0D4 - _021DC0C0 - 2 ; case 2
	.short _021DC0D8 - _021DC0C0 - 2 ; case 3
	.short _021DC0DC - _021DC0C0 - 2 ; case 4
	.short _021DC0E0 - _021DC0C0 - 2 ; case 5
_021DC0CC:
	mov r4, #0x51
	b _021DC0E2
_021DC0D0:
	mov r4, #0x52
	b _021DC0E2
_021DC0D4:
	mov r4, #0x53
	b _021DC0E2
_021DC0D8:
	mov r4, #0x54
	b _021DC0E2
_021DC0DC:
	mov r4, #0x55
	b _021DC0E2
_021DC0E0:
	mov r4, #0x56
_021DC0E2:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC128 ; =0x000002B9
	add r1, r7, #0
	add r3, r4, #0
	bl ov21_021D4DAC
	neg r0, r0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	mov r1, #5
	mvn r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	bl sub_02012A60
	add r0, r7, #0
	bl ov21_021D4DA0
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #6
	blt _021DC0A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DC128: .word 0x000002B9
	thumb_func_end ov21_021DC088

	thumb_func_start ov21_021DC12C
ov21_021DC12C: ; 0x021DC12C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	str r2, [sp, #0xc]
	bl sub_0201FAB4
	str r0, [sp, #0x10]
	add r0, #0xb
	mov r5, #0
	str r0, [sp, #0x10]
_021DC148:
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	mov r2, #2
	bl ov21_021D4D6C
	add r7, r0, #0
	cmp r5, #9
	bhi _021DC19E
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC164: ; jump table
	.short _021DC178 - _021DC164 - 2 ; case 0
	.short _021DC17C - _021DC164 - 2 ; case 1
	.short _021DC180 - _021DC164 - 2 ; case 2
	.short _021DC184 - _021DC164 - 2 ; case 3
	.short _021DC188 - _021DC164 - 2 ; case 4
	.short _021DC18C - _021DC164 - 2 ; case 5
	.short _021DC190 - _021DC164 - 2 ; case 6
	.short _021DC194 - _021DC164 - 2 ; case 7
	.short _021DC198 - _021DC164 - 2 ; case 8
	.short _021DC19C - _021DC164 - 2 ; case 9
_021DC178:
	mov r4, #0x36
	b _021DC19E
_021DC17C:
	mov r4, #0x37
	b _021DC19E
_021DC180:
	mov r4, #0x38
	b _021DC19E
_021DC184:
	mov r4, #0x39
	b _021DC19E
_021DC188:
	mov r4, #0x3a
	b _021DC19E
_021DC18C:
	mov r4, #0x3b
	b _021DC19E
_021DC190:
	mov r4, #0x3c
	b _021DC19E
_021DC194:
	mov r4, #0x3d
	b _021DC19E
_021DC198:
	mov r4, #0x3e
	b _021DC19E
_021DC19C:
	mov r4, #0x7e
_021DC19E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC1E4 ; =0x000002B9
	add r1, r7, #0
	add r3, r4, #0
	bl ov21_021D4DAC
	neg r0, r0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	mov r1, #5
	mvn r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	bl sub_02012A60
	add r0, r7, #0
	bl ov21_021D4DA0
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #0xa
	blt _021DC148
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DC1E4: .word 0x000002B9
	thumb_func_end ov21_021DC12C

	thumb_func_start ov21_021DC1E8
ov21_021DC1E8: ; 0x021DC1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	str r2, [sp, #0xc]
	bl sub_0201FAB4
	str r0, [sp, #0x10]
	add r0, #0xb
	mov r5, #0
	str r0, [sp, #0x10]
_021DC204:
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	mov r2, #2
	bl ov21_021D4D6C
	add r7, r0, #0
	cmp r5, #9
	bhi _021DC25A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC220: ; jump table
	.short _021DC234 - _021DC220 - 2 ; case 0
	.short _021DC238 - _021DC220 - 2 ; case 1
	.short _021DC23C - _021DC220 - 2 ; case 2
	.short _021DC240 - _021DC220 - 2 ; case 3
	.short _021DC244 - _021DC220 - 2 ; case 4
	.short _021DC248 - _021DC220 - 2 ; case 5
	.short _021DC24C - _021DC220 - 2 ; case 6
	.short _021DC250 - _021DC220 - 2 ; case 7
	.short _021DC254 - _021DC220 - 2 ; case 8
	.short _021DC258 - _021DC220 - 2 ; case 9
_021DC234:
	mov r4, #0x40
	b _021DC25A
_021DC238:
	mov r4, #0x46
	b _021DC25A
_021DC23C:
	mov r4, #0x49
	b _021DC25A
_021DC240:
	mov r4, #0x47
	b _021DC25A
_021DC244:
	mov r4, #0x48
	b _021DC25A
_021DC248:
	mov r4, #0x4c
	b _021DC25A
_021DC24C:
	mov r4, #0x4b
	b _021DC25A
_021DC250:
	mov r4, #0x4d
	b _021DC25A
_021DC254:
	mov r4, #0x50
	b _021DC25A
_021DC258:
	mov r4, #0x7f
_021DC25A:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC2A0 ; =0x000002B9
	add r1, r7, #0
	add r3, r4, #0
	bl ov21_021D4DAC
	neg r0, r0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	mov r1, #5
	mvn r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	bl sub_02012A60
	add r0, r7, #0
	bl ov21_021D4DA0
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #0xa
	blt _021DC204
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DC2A0: .word 0x000002B9
	thumb_func_end ov21_021DC1E8

	thumb_func_start ov21_021DC2A4
ov21_021DC2A4: ; 0x021DC2A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	mov r1, #2
	str r2, [sp, #0xc]
	bl sub_0201FAB4
	str r0, [sp, #0x10]
	add r0, #0xb
	mov r5, #0
	str r0, [sp, #0x10]
_021DC2C0:
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	mov r2, #2
	bl ov21_021D4D6C
	add r7, r0, #0
	cmp r5, #8
	bhi _021DC310
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC2DC: ; jump table
	.short _021DC2EE - _021DC2DC - 2 ; case 0
	.short _021DC2F2 - _021DC2DC - 2 ; case 1
	.short _021DC2F6 - _021DC2DC - 2 ; case 2
	.short _021DC2FA - _021DC2DC - 2 ; case 3
	.short _021DC2FE - _021DC2DC - 2 ; case 4
	.short _021DC302 - _021DC2DC - 2 ; case 5
	.short _021DC306 - _021DC2DC - 2 ; case 6
	.short _021DC30A - _021DC2DC - 2 ; case 7
	.short _021DC30E - _021DC2DC - 2 ; case 8
_021DC2EE:
	mov r4, #0x41
	b _021DC310
_021DC2F2:
	mov r4, #0x42
	b _021DC310
_021DC2F6:
	mov r4, #0x44
	b _021DC310
_021DC2FA:
	mov r4, #0x43
	b _021DC310
_021DC2FE:
	mov r4, #0x4a
	b _021DC310
_021DC302:
	mov r4, #0x45
	b _021DC310
_021DC306:
	mov r4, #0x4e
	b _021DC310
_021DC30A:
	mov r4, #0x4f
	b _021DC310
_021DC30E:
	mov r4, #0x7f
_021DC310:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC358 ; =0x000002B9
	add r1, r7, #0
	add r3, r4, #0
	bl ov21_021D4DAC
	neg r0, r0
	lsr r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	mov r1, #5
	mvn r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x10]
	bl sub_02012A60
	add r0, r7, #0
	bl ov21_021D4DA0
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #9
	blt _021DC2C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DC358: .word 0x000002B9
	thumb_func_end ov21_021DC2A4

	thumb_func_start ov21_021DC35C
ov21_021DC35C: ; 0x021DC35C
	ldr r1, _021DC364 ; =0x0000FFFF
	add r0, #0x84
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_021DC364: .word 0x0000FFFF
	thumb_func_end ov21_021DC35C

	thumb_func_start ov21_021DC368
ov21_021DC368: ; 0x021DC368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021DC3BC
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DC380
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DC368

	thumb_func_start ov21_021DC380
ov21_021DC380: ; 0x021DC380
	push {r3, lr}
	cmp r2, #3
	bhi _021DC3BA
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021DC392: ; jump table
	.short _021DC39A - _021DC392 - 2 ; case 0
	.short _021DC3A0 - _021DC392 - 2 ; case 1
	.short _021DC3A6 - _021DC392 - 2 ; case 2
	.short _021DC3B6 - _021DC392 - 2 ; case 3
_021DC39A:
	bl ov21_021DC48C
	pop {r3, pc}
_021DC3A0:
	bl ov21_021DC4F8
	pop {r3, pc}
_021DC3A6:
	cmp r3, #0
	bne _021DC3B0
	bl ov21_021DC57C
	pop {r3, pc}
_021DC3B0:
	bl ov21_021DC600
	pop {r3, pc}
_021DC3B6:
	bl ov21_021DC720
_021DC3BA:
	pop {r3, pc}
	thumb_func_end ov21_021DC380

	thumb_func_start ov21_021DC3BC
ov21_021DC3BC: ; 0x021DC3BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	add r4, r1, #0
	cmp r0, #5
	bhi _021DC47A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC3D6: ; jump table
	.short _021DC3E2 - _021DC3D6 - 2 ; case 0
	.short _021DC3F2 - _021DC3D6 - 2 ; case 1
	.short _021DC40C - _021DC3D6 - 2 ; case 2
	.short _021DC426 - _021DC3D6 - 2 ; case 3
	.short _021DC448 - _021DC3D6 - 2 ; case 4
	.short _021DC462 - _021DC3D6 - 2 ; case 5
_021DC3E2:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov21_021D86C4
	ldr r0, _021DC484 ; =0x000005DD
	bl sub_02005748
	b _021DC47A
_021DC3F2:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #0
	beq _021DC47A
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov21_021D8628
	ldr r0, _021DC484 ; =0x000005DD
	bl sub_02005748
	b _021DC47A
_021DC40C:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #1
	beq _021DC47A
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov21_021D8628
	ldr r0, _021DC484 ; =0x000005DD
	bl sub_02005748
	b _021DC47A
_021DC426:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #2
	beq _021DC47A
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov21_021D8628
	ldr r0, _021DC484 ; =0x000005DD
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	add r0, #0x88
	str r1, [r0, #0]
	b _021DC47A
_021DC448:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #3
	beq _021DC47A
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov21_021D8628
	ldr r0, _021DC484 ; =0x000005DD
	bl sub_02005748
	b _021DC47A
_021DC462:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #1
	bgt _021DC47A
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov21_021D86C4
	ldr r0, _021DC484 ; =0x000005DD
	bl sub_02005748
_021DC47A:
	ldr r0, _021DC488 ; =0x0000FFFF
	add r5, #0x80
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_021DC484: .word 0x000005DD
_021DC488: .word 0x0000FFFF
	thumb_func_end ov21_021DC3BC

	thumb_func_start ov21_021DC48C
ov21_021DC48C: ; 0x021DC48C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r6, r1, #0
	mov r4, #0x64
	cmp r0, #5
	bhi _021DC4CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC4A8: ; jump table
	.short _021DC4B4 - _021DC4A8 - 2 ; case 0
	.short _021DC4B8 - _021DC4A8 - 2 ; case 1
	.short _021DC4BC - _021DC4A8 - 2 ; case 2
	.short _021DC4C0 - _021DC4A8 - 2 ; case 3
	.short _021DC4C4 - _021DC4A8 - 2 ; case 4
	.short _021DC4C8 - _021DC4A8 - 2 ; case 5
_021DC4B4:
	mov r4, #0
	b _021DC4CA
_021DC4B8:
	mov r4, #1
	b _021DC4CA
_021DC4BC:
	mov r4, #2
	b _021DC4CA
_021DC4C0:
	mov r4, #3
	b _021DC4CA
_021DC4C4:
	mov r4, #4
	b _021DC4CA
_021DC4C8:
	mov r4, #5
_021DC4CA:
	cmp r4, #0x64
	beq _021DC4E6
	ldr r0, [r6, #8]
	bl ov21_021D8658
	cmp r4, r0
	beq _021DC4E6
	ldr r0, _021DC4F0 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov21_021D8644
_021DC4E6:
	ldr r0, _021DC4F4 ; =0x0000FFFF
	add r5, #0x84
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	nop
_021DC4F0: .word 0x000005DD
_021DC4F4: .word 0x0000FFFF
	thumb_func_end ov21_021DC48C

	thumb_func_start ov21_021DC4F8
ov21_021DC4F8: ; 0x021DC4F8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r6, r1, #0
	mov r4, #0x64
	cmp r0, #9
	bhi _021DC54E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC514: ; jump table
	.short _021DC528 - _021DC514 - 2 ; case 0
	.short _021DC52C - _021DC514 - 2 ; case 1
	.short _021DC530 - _021DC514 - 2 ; case 2
	.short _021DC534 - _021DC514 - 2 ; case 3
	.short _021DC538 - _021DC514 - 2 ; case 4
	.short _021DC53C - _021DC514 - 2 ; case 5
	.short _021DC540 - _021DC514 - 2 ; case 6
	.short _021DC544 - _021DC514 - 2 ; case 7
	.short _021DC548 - _021DC514 - 2 ; case 8
	.short _021DC54C - _021DC514 - 2 ; case 9
_021DC528:
	mov r4, #1
	b _021DC54E
_021DC52C:
	mov r4, #2
	b _021DC54E
_021DC530:
	mov r4, #3
	b _021DC54E
_021DC534:
	mov r4, #4
	b _021DC54E
_021DC538:
	mov r4, #5
	b _021DC54E
_021DC53C:
	mov r4, #6
	b _021DC54E
_021DC540:
	mov r4, #7
	b _021DC54E
_021DC544:
	mov r4, #8
	b _021DC54E
_021DC548:
	mov r4, #9
	b _021DC54E
_021DC54C:
	mov r4, #0
_021DC54E:
	cmp r4, #0x64
	beq _021DC56A
	ldr r0, [r6, #8]
	bl ov21_021D8674
	cmp r4, r0
	beq _021DC56A
	ldr r0, _021DC574 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov21_021D8660
_021DC56A:
	ldr r0, _021DC578 ; =0x0000FFFF
	add r5, #0x84
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	nop
_021DC574: .word 0x000005DD
_021DC578: .word 0x0000FFFF
	thumb_func_end ov21_021DC4F8

	thumb_func_start ov21_021DC57C
ov21_021DC57C: ; 0x021DC57C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r6, r1, #0
	mov r4, #0x64
	cmp r0, #0xa
	bhi _021DC5E0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC598: ; jump table
	.short _021DC5AE - _021DC598 - 2 ; case 0
	.short _021DC5B2 - _021DC598 - 2 ; case 1
	.short _021DC5B6 - _021DC598 - 2 ; case 2
	.short _021DC5BA - _021DC598 - 2 ; case 3
	.short _021DC5BE - _021DC598 - 2 ; case 4
	.short _021DC5C2 - _021DC598 - 2 ; case 5
	.short _021DC5C6 - _021DC598 - 2 ; case 6
	.short _021DC5CA - _021DC598 - 2 ; case 7
	.short _021DC5CE - _021DC598 - 2 ; case 8
	.short _021DC5D2 - _021DC598 - 2 ; case 9
	.short _021DC5D6 - _021DC598 - 2 ; case 10
_021DC5AE:
	mov r4, #1
	b _021DC5E0
_021DC5B2:
	mov r4, #2
	b _021DC5E0
_021DC5B6:
	mov r4, #3
	b _021DC5E0
_021DC5BA:
	mov r4, #4
	b _021DC5E0
_021DC5BE:
	mov r4, #5
	b _021DC5E0
_021DC5C2:
	mov r4, #6
	b _021DC5E0
_021DC5C6:
	mov r4, #7
	b _021DC5E0
_021DC5CA:
	mov r4, #8
	b _021DC5E0
_021DC5CE:
	mov r4, #9
	b _021DC5E0
_021DC5D2:
	mov r4, #0
	b _021DC5E0
_021DC5D6:
	mov r0, #1
	str r0, [r5, #0x20]
	ldr r0, _021DC5F8 ; =0x000005DD
	bl sub_02005748
_021DC5E0:
	cmp r4, #0x64
	beq _021DC5EE
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021DC67C
_021DC5EE:
	ldr r0, _021DC5FC ; =0x0000FFFF
	add r5, #0x84
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	nop
_021DC5F8: .word 0x000005DD
_021DC5FC: .word 0x0000FFFF
	thumb_func_end ov21_021DC57C

	thumb_func_start ov21_021DC600
ov21_021DC600: ; 0x021DC600
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r6, r1, #0
	mov r4, #0x64
	cmp r0, #9
	bhi _021DC65E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC61C: ; jump table
	.short _021DC630 - _021DC61C - 2 ; case 0
	.short _021DC634 - _021DC61C - 2 ; case 1
	.short _021DC638 - _021DC61C - 2 ; case 2
	.short _021DC63C - _021DC61C - 2 ; case 3
	.short _021DC640 - _021DC61C - 2 ; case 4
	.short _021DC644 - _021DC61C - 2 ; case 5
	.short _021DC648 - _021DC61C - 2 ; case 6
	.short _021DC64C - _021DC61C - 2 ; case 7
	.short _021DC650 - _021DC61C - 2 ; case 8
	.short _021DC654 - _021DC61C - 2 ; case 9
_021DC630:
	mov r4, #0xa
	b _021DC65E
_021DC634:
	mov r4, #0xb
	b _021DC65E
_021DC638:
	mov r4, #0xc
	b _021DC65E
_021DC63C:
	mov r4, #0xd
	b _021DC65E
_021DC640:
	mov r4, #0xe
	b _021DC65E
_021DC644:
	mov r4, #0xf
	b _021DC65E
_021DC648:
	mov r4, #0x10
	b _021DC65E
_021DC64C:
	mov r4, #0x11
	b _021DC65E
_021DC650:
	mov r4, #0
	b _021DC65E
_021DC654:
	mov r0, #0
	str r0, [r5, #0x20]
	ldr r0, _021DC674 ; =0x000005DD
	bl sub_02005748
_021DC65E:
	cmp r4, #0x64
	beq _021DC66C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021DC67C
_021DC66C:
	ldr r0, _021DC678 ; =0x0000FFFF
	add r5, #0x84
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DC674: .word 0x000005DD
_021DC678: .word 0x0000FFFF
	thumb_func_end ov21_021DC600

	thumb_func_start ov21_021DC67C
ov21_021DC67C: ; 0x021DC67C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	ldr r0, [r4, #8]
	beq _021DC6DC
	mov r1, #0
	bl ov21_021D8698
	cmp r6, r0
	beq _021DC718
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov21_021D8698
	cmp r6, r0
	beq _021DC718
	add r1, r5, #0
	add r1, #0x88
	ldr r0, [r4, #8]
	ldr r1, [r1, #0]
	bl ov21_021D8698
	cmp r6, r0
	beq _021DC718
	add r2, r5, #0
	add r2, #0x88
	ldr r0, [r4, #8]
	ldr r2, [r2, #0]
	add r1, r6, #0
	bl ov21_021D867C
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	add r5, #0x88
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	str r0, [r5, #0]
	ldr r0, _021DC71C ; =0x000005DD
	bl sub_02005748
	pop {r4, r5, r6, pc}
_021DC6DC:
	mov r1, #0
	bl ov21_021D8698
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _021DC6F8
	add r1, r6, #0
	mov r2, #0
	bl ov21_021D867C
	ldr r0, _021DC71C ; =0x000005DD
	bl sub_02005748
	b _021DC712
_021DC6F8:
	mov r1, #1
	bl ov21_021D8698
	cmp r0, #0
	beq _021DC712
	ldr r0, [r4, #8]
	add r1, r6, #0
	mov r2, #1
	bl ov21_021D867C
	ldr r0, _021DC71C ; =0x000005DD
	bl sub_02005748
_021DC712:
	mov r0, #0
	add r5, #0x88
	str r0, [r5, #0]
_021DC718:
	pop {r4, r5, r6, pc}
	nop
_021DC71C: .word 0x000005DD
	thumb_func_end ov21_021DC67C

	thumb_func_start ov21_021DC720
ov21_021DC720: ; 0x021DC720
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r6, r1, #0
	mov r4, #0x64
	cmp r0, #0xe
	bhi _021DC794
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DC73C: ; jump table
	.short _021DC75A - _021DC73C - 2 ; case 0
	.short _021DC75E - _021DC73C - 2 ; case 1
	.short _021DC762 - _021DC73C - 2 ; case 2
	.short _021DC766 - _021DC73C - 2 ; case 3
	.short _021DC76A - _021DC73C - 2 ; case 4
	.short _021DC76E - _021DC73C - 2 ; case 5
	.short _021DC772 - _021DC73C - 2 ; case 6
	.short _021DC776 - _021DC73C - 2 ; case 7
	.short _021DC77A - _021DC73C - 2 ; case 8
	.short _021DC77E - _021DC73C - 2 ; case 9
	.short _021DC782 - _021DC73C - 2 ; case 10
	.short _021DC786 - _021DC73C - 2 ; case 11
	.short _021DC78A - _021DC73C - 2 ; case 12
	.short _021DC78E - _021DC73C - 2 ; case 13
	.short _021DC792 - _021DC73C - 2 ; case 14
_021DC75A:
	mov r4, #0xd
	b _021DC794
_021DC75E:
	mov r4, #4
	b _021DC794
_021DC762:
	mov r4, #0xc
	b _021DC794
_021DC766:
	mov r4, #9
	b _021DC794
_021DC76A:
	mov r4, #8
	b _021DC794
_021DC76E:
	mov r4, #3
	b _021DC794
_021DC772:
	mov r4, #0xa
	b _021DC794
_021DC776:
	mov r4, #1
	b _021DC794
_021DC77A:
	mov r4, #6
	b _021DC794
_021DC77E:
	mov r4, #0xb
	b _021DC794
_021DC782:
	mov r4, #0xe
	b _021DC794
_021DC786:
	mov r4, #2
	b _021DC794
_021DC78A:
	mov r4, #5
	b _021DC794
_021DC78E:
	mov r4, #7
	b _021DC794
_021DC792:
	mov r4, #0
_021DC794:
	cmp r4, #0x64
	beq _021DC7B0
	ldr r0, [r6, #8]
	bl ov21_021D86BC
	cmp r4, r0
	beq _021DC7B0
	ldr r0, _021DC7B8 ; =0x000005DD
	bl sub_02005748
	ldr r0, [r6, #8]
	add r1, r4, #0
	bl ov21_021D86A8
_021DC7B0:
	ldr r0, _021DC7BC ; =0x0000FFFF
	add r5, #0x84
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DC7B8: .word 0x000005DD
_021DC7BC: .word 0x0000FFFF
	thumb_func_end ov21_021DC720

	thumb_func_start ov21_021DC7C0
ov21_021DC7C0: ; 0x021DC7C0
	push {r3, r4, r5, lr}
	mov r3, #0x4b
	lsl r3, r3, #2
	ldr r2, [r0, r3]
	cmp r2, #0
	bne _021DC7EC
	ldr r2, [r1, #4]
	cmp r2, #0
	ble _021DC7F0
	str r2, [r0, r3]
	mov r5, #0
	add r2, r3, #4
	str r5, [r0, r2]
	add r2, r3, #0
	ldr r4, [r1, #8]
	add r2, #8
	add r3, #8
	str r4, [r0, r2]
	ldr r0, [r0, r3]
	str r5, [r0, #0]
	str r5, [r1, #4]
	pop {r3, r4, r5, pc}
_021DC7EC:
	bl ov21_021DC7F4
_021DC7F0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DC7C0

	thumb_func_start ov21_021DC7F4
ov21_021DC7F4: ; 0x021DC7F4
	push {r4, lr}
	sub sp, #8
	mov r3, #0x4b
	add r4, r0, #0
	lsl r3, r3, #2
	ldr r1, [r4, r3]
	cmp r1, #0
	beq _021DC8A6
	add r0, r3, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021DC814
	cmp r0, #1
	beq _021DC866
	add sp, #8
	pop {r4, pc}
_021DC814:
	cmp r1, #1
	bne _021DC82E
	mov r1, #0
	str r1, [sp]
	mov r0, #2
	sub r3, #0x20
	str r0, [sp, #4]
	add r0, r4, r3
	mov r2, #0x10
	add r3, r1, #0
	bl ov21_021D2648
	b _021DC842
_021DC82E:
	mov r2, #0
	str r2, [sp]
	mov r0, #2
	sub r3, #0x20
	str r0, [sp, #4]
	add r0, r4, r3
	mov r1, #0x10
	add r3, r2, #0
	bl ov21_021D2648
_021DC842:
	mov r0, #0x43
	lsl r0, r0, #2
	ldr r3, [r4, r0]
	mov r0, #0x10
	sub r0, r0, r3
	str r0, [sp]
	ldr r0, _021DC8AC ; =0x04001050
	mov r1, #0
	mov r2, #4
	bl G2x_SetBlendAlpha_
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_021DC866:
	sub r3, #0x20
	add r0, r4, r3
	bl ov21_021D2664
	mov r1, #0x43
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	mov r2, #0x10
	sub r2, r2, r3
	lsl r2, r2, #8
	orr r3, r2
	ldr r2, _021DC8B0 ; =0x04001052
	cmp r0, #1
	strh r3, [r2]
	bne _021DC8A6
	add r1, #0x20
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _021DC892
	mov r1, #0
	sub r0, r2, #2
	strh r1, [r0]
_021DC892:
	mov r1, #0x4d
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	mov r2, #1
	str r2, [r0, #0]
	sub r0, r1, #4
	mov r2, #0
	str r2, [r4, r0]
	sub r1, #8
	str r2, [r4, r1]
_021DC8A6:
	add sp, #8
	pop {r4, pc}
	nop
_021DC8AC: .word 0x04001050
_021DC8B0: .word 0x04001052
	thumb_func_end ov21_021DC7F4

	thumb_func_start ov21_021DC8B4
ov21_021DC8B4: ; 0x021DC8B4
	push {r3, lr}
	cmp r2, #2
	bne _021DC8CA
	cmp r3, #0
	bne _021DC8C4
	bl ov21_021DC90C
	pop {r3, pc}
_021DC8C4:
	bl ov21_021DC93C
	pop {r3, pc}
_021DC8CA:
	bl ov21_021DC8D0
	pop {r3, pc}
	thumb_func_end ov21_021DC8B4

	thumb_func_start ov21_021DC8D0
ov21_021DC8D0: ; 0x021DC8D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r6, #0
_021DC8D8:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DC8E4
	add r1, r4, #0
	bl sub_02021FE0
_021DC8E4:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC8F2
	ldr r0, [r0, #0]
	add r1, r4, #0
	bl sub_02012AF0
_021DC8F2:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021DC902
	add r1, r4, #0
	bl sub_02021FE0
_021DC902:
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #0xf
	blt _021DC8D8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DC8D0

	thumb_func_start ov21_021DC90C
ov21_021DC90C: ; 0x021DC90C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021DC914:
	cmp r4, #0xa
	beq _021DC932
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DC924
	add r1, r6, #0
	bl sub_02021FE0
_021DC924:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC932
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02012AF0
_021DC932:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _021DC914
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DC90C

	thumb_func_start ov21_021DC93C
ov21_021DC93C: ; 0x021DC93C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
_021DC944:
	cmp r4, #9
	beq _021DC962
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DC954
	add r1, r6, #0
	bl sub_02021FE0
_021DC954:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC962
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_02012AF0
_021DC962:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xf
	blt _021DC944
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DC93C

	thumb_func_start ov21_021DC96C
ov21_021DC96C: ; 0x021DC96C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	ldr r0, [r4, #8]
	bl ov21_021D86E0
	cmp r0, #4
	bne _021DC9B8
	ldr r0, [r4, #8]
	bl ov21_021D86D8
	cmp r0, #3
	bne _021DC99C
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #4
	sub r2, #0x10
	mov r3, #0x3f
	bl sub_0200AAE0
	add sp, #4
	pop {r3, r4, pc}
_021DC99C:
	ldr r0, [r4, #8]
	bl ov21_021D86D8
	cmp r0, #1
	bne _021DC9B8
	mov r0, #2
	str r0, [sp]
	mov r0, #4
	add r1, r0, #0
	sub r1, #0x14
	mov r2, #0
	mov r3, #0x3f
	bl sub_0200AAE0
_021DC9B8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021DC96C