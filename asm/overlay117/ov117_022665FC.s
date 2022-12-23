	.include "macros/function.inc"
	.include "overlay117/ov117_022665FC.inc"

	.text

	thumb_func_start ov117_022665FC
ov117_022665FC: ; 0x022665FC
	ldr r3, _02266608 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0226660C ; =0x02266FE4
	mov r1, #4
	bx r3
	nop
_02266608: .word sub_02032798
_0226660C: .word 0x02266FE4
	thumb_func_end ov117_022665FC

	thumb_func_start ov117_02266610
ov117_02266610: ; 0x02266610
	mov r0, #0x14
	bx lr
	thumb_func_end ov117_02266610

	thumb_func_start ov117_02266614
ov117_02266614: ; 0x02266614
	mov r0, #4
	bx lr
	thumb_func_end ov117_02266614

	thumb_func_start ov117_02266618
ov117_02266618: ; 0x02266618
	add r1, r0, #0
	add r0, r3, #0
	ldr r3, _02266620 ; =ov117_02262044
	bx r3
	; .align 2, 0
_02266620: .word ov117_02262044
	thumb_func_end ov117_02266618

	thumb_func_start ov117_02266624
ov117_02266624: ; 0x02266624
	push {r3, lr}
	mov r0, #0x18
	mov r2, #0x14
	bl sub_020359DC
	cmp r0, #1
	bne _02266636
	mov r0, #1
	pop {r3, pc}
_02266636:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov117_02266624

	thumb_func_start ov117_0226663C
ov117_0226663C: ; 0x0226663C
	mov r0, #0xbf
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r3, r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov117_0226663C

	thumb_func_start ov117_02266648
ov117_02266648: ; 0x02266648
	push {r3, lr}
	mov r1, #0
	mov r0, #0x19
	add r2, r1, #0
	bl sub_020359DC
	cmp r0, #1
	bne _0226665C
	mov r0, #1
	pop {r3, pc}
_0226665C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov117_02266648

	thumb_func_start ov117_02266660
ov117_02266660: ; 0x02266660
	push {r4, r5, r6, lr}
	add r4, r3, #0
	ldr r3, [r4, #0]
	ldr r1, [r2, #0]
	add r5, r3, #0
	add r5, #0x30
	ldrb r5, [r5]
	mov r2, #0
	cmp r5, #0
	ble _0226668E
_02266674:
	add r6, r3, #0
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r0, r6
	bne _02266686
	lsl r0, r2, #2
	add r0, r4, r0
	str r1, [r0, #0xc]
	b _0226668E
_02266686:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r5
	blt _02266674
_0226668E:
	ldr r0, [r4, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r2, r0
	blt _0226669C
	bl GF_AssertFail
_0226669C:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov117_02266660

	thumb_func_start ov117_022666A4
ov117_022666A4: ; 0x022666A4
	push {r3, lr}
	mov r0, #0x64
	str r0, [sp]
	mov r0, #0x17
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
	cmp r0, #1
	bne _022666BC
	mov r0, #1
	pop {r3, pc}
_022666BC:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov117_022666A4

	.rodata

	.global Unk_ov117_02266FE4
Unk_ov117_02266FE4: ; 0x02266FE4
	.incbin "incbin/overlay117_rodata.bin", 0x6EC, 0x71C - 0x6EC