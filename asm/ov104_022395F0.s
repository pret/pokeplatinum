	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov104_022395F0
ov104_022395F0: ; 0x022395F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r0, [r0, #8]
	bl ov104_02239C58
	add r1, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_0209B980
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_022395F0

	thumb_func_start ov104_02239610
ov104_02239610: ; 0x02239610
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl ov104_02239C7C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02239610

	thumb_func_start ov104_02239624
ov104_02239624: ; 0x02239624
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FC00
	str r0, [sp]
	add r0, r5, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov104_02239C88
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_02239624

	thumb_func_start ov104_02239660
ov104_02239660: ; 0x02239660
	push {r4, lr}
	add r4, r0, #0
	bl ov104_0222EA48
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _0223967C ; =ov104_02239680
	add r0, r4, #0
	bl ov104_0222E974
	mov r0, #1
	pop {r4, pc}
	nop
_0223967C: .word ov104_02239680
	thumb_func_end ov104_02239660

	thumb_func_start ov104_02239680
ov104_02239680: ; 0x02239680
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r1, r0, #0
	add r1, #0x6f
	ldrb r1, [r1]
	cmp r1, #2
	blo _0223969E
	mov r1, #0
	add r0, #0x6f
	strb r1, [r0]
	mov r0, #1
	pop {r3, pc}
_0223969E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02239680

	thumb_func_start ov104_022396A4
ov104_022396A4: ; 0x022396A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r6, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r0, #0x6e
	ldrb r0, [r0]
	cmp r6, r0
	bne _022396CA
	mov r0, #1
	b _022396CC
_022396CA:
	mov r0, #0
_022396CC:
	strh r0, [r4]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov104_022396A4

	thumb_func_start ov104_022396D4
ov104_022396D4: ; 0x022396D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov104_0222FC00
	add r0, r5, #0
	bl ov104_0222FC00
	add r7, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	ldr r1, [r0, #0x28]
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xb0
	str r6, [r0, #0]
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	add r2, r7, #0
	bl ov104_02239CD0
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022396D4

	thumb_func_start ov104_0223971C
ov104_0223971C: ; 0x0223971C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	add r0, r5, #0
	bl ov104_0222FBE4
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r5, r0, #0
	add r0, #0xa8
	ldr r1, [r0, #0]
	add r0, r1, #0
	add r0, #0x22
	ldrb r0, [r0]
	cmp r0, #7
	bne _0223975C
	mov r0, #0xff
	mov r2, #0
	strh r0, [r4]
	add r1, r2, #0
_0223974E:
	add r0, r5, r2
	add r0, #0xa1
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #2
	blt _0223974E
	b _02239782
_0223975C:
	cmp r0, #6
	bne _02239782
	add r1, #0x2c
	ldrb r0, [r1]
	strh r0, [r4]
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	add r0, #0x2d
	ldrb r0, [r0]
	strh r0, [r6]
	ldrh r0, [r6]
	cmp r0, #0
	beq _02239782
	sub r0, r0, #1
	strh r0, [r6]
_02239782:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_020181C4
	mov r0, #0
	add r5, #0xa8
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0223971C

	thumb_func_start ov104_02239794
ov104_02239794: ; 0x02239794
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r0, #0x59
	ldrb r0, [r0]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02239794

	thumb_func_start ov104_022397B0
ov104_022397B0: ; 0x022397B0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r1, [r7, #0x1c]
	add r2, r1, #1
	str r2, [r7, #0x1c]
	ldrb r1, [r1]
	str r1, [sp]
	add r1, r2, #1
	str r1, [r7, #0x1c]
	ldrb r6, [r2]
	add r1, r1, #1
	str r1, [r7, #0x1c]
	bl ov104_0222FBE4
	add r5, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r4, r0, #0
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r7, r0, #0
	ldr r0, [sp]
	cmp r0, #0xd
	bhi _02239860
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022397F4: ; jump table
	.short _02239810 - _022397F4 - 2 ; case 0
	.short _02239818 - _022397F4 - 2 ; case 1
	.short _02239820 - _022397F4 - 2 ; case 2
	.short _022398D4 - _022397F4 - 2 ; case 3
	.short _022398F0 - _022397F4 - 2 ; case 4
	.short _02239918 - _022397F4 - 2 ; case 5
	.short _02239924 - _022397F4 - 2 ; case 6
	.short _02239936 - _022397F4 - 2 ; case 7
	.short _0223993C - _022397F4 - 2 ; case 8
	.short _02239944 - _022397F4 - 2 ; case 9
	.short _0223994C - _022397F4 - 2 ; case 10
	.short _02239954 - _022397F4 - 2 ; case 11
	.short _022399CE - _022397F4 - 2 ; case 12
	.short _02239AFC - _022397F4 - 2 ; case 13
_02239810:
	add r0, r4, #0
	bl sub_0209BA80
	b _02239B10
_02239818:
	add r4, #0x86
	ldrh r0, [r4]
	strh r0, [r5]
	b _02239B10
_02239820:
	cmp r6, #1
	bne _0223986A
	mov r0, #0
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0x76
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _02239842
	add r0, r4, #0
	add r0, #0x88
	ldrh r0, [r0]
	cmp r1, r0
	bne _02239848
_02239842:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
_02239848:
	add r0, r4, #0
	add r0, #0x78
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _02239862
	add r4, #0x88
	ldrh r0, [r4]
	cmp r1, r0
	beq _02239862
_02239860:
	b _02239B10
_02239862:
	ldrh r0, [r5]
	add r0, r0, #2
	strh r0, [r5]
	b _02239B10
_0223986A:
	cmp r6, #5
	bne _02239888
	add r0, r4, #0
	add r0, #0x76
	add r4, #0x86
	ldrh r1, [r0]
	ldrh r0, [r4]
	cmp r1, r0
	bne _02239882
	mov r0, #0
	strh r0, [r5]
	b _02239B10
_02239882:
	mov r0, #1
	strh r0, [r5]
	b _02239B10
_02239888:
	cmp r6, #4
	beq _02239890
	cmp r6, #6
	bne _02239986
_02239890:
	mov r0, #0
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0x76
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _022398AE
	add r0, r4, #0
	add r0, #0x88
	ldrh r0, [r0]
	cmp r1, r0
	bne _022398B4
_022398AE:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
_022398B4:
	add r0, r4, #0
	add r0, #0x78
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x86
	ldrh r0, [r0]
	cmp r1, r0
	beq _022398CC
	add r4, #0x88
	ldrh r0, [r4]
	cmp r1, r0
	bne _02239986
_022398CC:
	ldrh r0, [r5]
	add r0, r0, #2
	strh r0, [r5]
	b _02239B10
_022398D4:
	ldr r0, [r7, #8]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #0x6a
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0x6a
	bl sub_02030698
	strh r0, [r5]
	b _02239B10
_022398F0:
	ldr r0, [r7, #8]
	bl sub_0203068C
	add r4, r0, #0
	mov r0, #3
	bl sub_0205E55C
	add r6, r0, #0
	mov r0, #3
	bl sub_0205E55C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02030698
	strh r0, [r5]
	b _02239B10
_02239918:
	lsl r0, r6, #1
	add r0, r4, r0
	add r0, #0x76
	ldrh r0, [r0]
	strh r0, [r5]
	b _02239B10
_02239924:
	ldr r0, [r7, #8]
	bl sub_0203026C
	add r1, r0, #0
	ldr r0, [r7, #8]
	mov r2, #3
	bl sub_0204FA50
	b _02239B10
_02239936:
	add r4, #0xa0
	strb r6, [r4]
	b _02239B10
_0223993C:
	add r4, #0x74
	ldrh r0, [r4]
	strh r0, [r5]
	b _02239B10
_02239944:
	add r4, #0xa0
	ldrb r0, [r4]
	strh r0, [r5]
	b _02239B10
_0223994C:
	add r4, #0x71
	ldrb r0, [r4]
	strh r0, [r5]
	b _02239B10
_02239954:
	mov r0, #1
	strh r0, [r5]
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C264
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02030698
	add r1, r4, #0
	add r1, #0x72
	ldrh r1, [r1]
	cmp r0, r1
	bne _02239988
_02239986:
	b _02239B10
_02239988:
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C29C
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	mov r0, #0
	strh r0, [r5]
	b _02239B10
_022399CE:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C29C
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r7, r0, #0
	add r0, r6, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02030698
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #0
	bne _02239AE0
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	bl ov104_0223C264
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #0
	bl sub_020306E4
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02239A38
	ldr r0, [r4, #0]
	bl sub_0202D750
	mov r1, #6
	mov r2, #2
	bl sub_0202D3B4
_02239A38:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #4
	bne _02239A76
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x88
	mov r3, #0
	bl sub_020306E4
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x89
	mov r3, #0
	bl sub_020306E4
_02239A76:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #2
	bne _02239AAA
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r5, r0, #0
	mov r0, #0
	mov r1, #3
	bl sub_0205E488
	add r6, r0, #0
	mov r0, #0
	mov r1, #3
	bl sub_0205E488
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
_02239AAA:
	add r0, r4, #0
	add r0, #0xa0
	ldrb r0, [r0]
	cmp r0, #3
	bne _02239B10
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r5, r0, #0
	mov r0, #1
	mov r1, #3
	bl sub_0205E488
	add r4, r0, #0
	mov r0, #1
	mov r1, #3
	bl sub_0205E488
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #0
	bl sub_020306E4
	b _02239B10
_02239AE0:
	ldr r0, [r4, #0]
	bl sub_0203068C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	b _02239B10
_02239AFC:
	mov r2, #0
	add r1, r2, #0
_02239B00:
	add r0, r4, r2
	add r0, #0xa1
	add r2, r2, #1
	strb r1, [r0]
	cmp r2, #2
	blt _02239B00
	add r4, #0x9f
	strb r1, [r4]
_02239B10:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_022397B0

	thumb_func_start ov104_02239B14
ov104_02239B14: ; 0x02239B14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B970
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	add r6, r0, #0
	add r4, r6, #0
	add r3, sp, #0
	mov r2, #0x16
_02239B34:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02239B34
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	add r0, r6, #0
	bl ov104_02239C7C
	ldr r0, [r7, #8]
	mov r1, #0
	mov r2, #6
	bl sub_0204A124
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl sub_0209B980
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	bne _02239B68
	ldr r0, [r7, #8]
	bl ov104_0222E630
_02239B68:
	ldrb r0, [r4, #0xe]
	mov r2, #0
	cmp r0, #0
	ble _02239BA0
	add r3, sp, #0
	add r5, r3, #0
	add r6, r4, #0
_02239B76:
	add r0, r3, #0
	add r0, #0x6a
	ldrb r1, [r0]
	add r0, r4, r2
	add r0, #0x2a
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x76
	ldrh r0, [r0]
	add r2, r2, #1
	add r3, r3, #1
	strh r0, [r6, #0x2e]
	add r0, r5, #0
	add r0, #0x7e
	ldrh r0, [r0]
	add r5, r5, #2
	strh r0, [r6, #0x36]
	ldrb r0, [r4, #0xe]
	add r6, r6, #2
	cmp r2, r0
	blt _02239B76
_02239BA0:
	add r0, sp, #0x80
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x16]
	ldrh r0, [r0, #8]
	mov r1, #0xe0
	strh r0, [r4, #0x18]
	add r0, sp, #0x40
	ldrb r2, [r0, #0x18]
	strb r2, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	bic r0, r1
	add r1, r2, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #0x10]
	bl sub_0203608C
	cmp r0, #0
	bne _02239BD4
	ldr r1, [r7, #8]
	add r0, r4, #0
	bl sub_0204A4C8
_02239BD4:
	ldr r0, [r7, #8]
	bl sub_0207A268
	bl sub_02097284
	add r0, r4, #0
	bl sub_0209BA80
	ldr r1, _02239BF0 ; =0x000008D4
	mov r0, #0
	strb r0, [r4, r1]
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
	nop
_02239BF0: .word 0x000008D4
	thumb_func_end ov104_02239B14

	thumb_func_start ov104_02239BF4
ov104_02239BF4: ; 0x02239BF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov104_0222FBE4
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl sub_0209BB08
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_02239BF4

	thumb_func_start ov104_02239C10
ov104_02239C10: ; 0x02239C10
	push {r3, lr}
	ldr r1, _02239C1C ; =ov104_02239C20
	bl ov104_0222E974
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02239C1C: .word ov104_02239C20
	thumb_func_end ov104_02239C10

	thumb_func_start ov104_02239C20
ov104_02239C20: ; 0x02239C20
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	ldr r1, _02239C40 ; =0x000008D4
	ldrb r2, [r0, r1]
	cmp r2, #2
	bhs _02239C36
	mov r0, #0
	pop {r3, pc}
_02239C36:
	mov r2, #0
	strb r2, [r0, r1]
	mov r0, #1
	pop {r3, pc}
	nop
_02239C40: .word 0x000008D4
	thumb_func_end ov104_02239C20

	thumb_func_start ov104_02239C44
ov104_02239C44: ; 0x02239C44
	push {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0209B978
	bl sub_0204A32C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_02239C44