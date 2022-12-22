	.include "macros/function.inc"
	.include "include/ov34_02256540.inc"

	

	.text


	thumb_func_start ov34_02256540
ov34_02256540: ; 0x02256540
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x90
	bl sub_02018144
	add r4, r0, #0
	beq _02256584
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r6, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x6c]
	bl ov25_02254664
	str r0, [r4, #0x30]
	mov r1, #0
	str r1, [r4, #0x34]
	add r2, r4, #0
	add r0, r1, #0
_02256574:
	add r1, r1, #1
	str r0, [r2, #0x38]
	add r2, r2, #4
	cmp r1, #8
	blt _02256574
	str r4, [r5, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256584:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov34_02256540

	thumb_func_start ov34_02256588
ov34_02256588: ; 0x02256588
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #8
	str r0, [sp]
	add r0, r6, #0
	add r0, #0x58
	mov r1, #0xc
	mov r2, #0x28
	mov r3, #0x29
	bl ov25_02255958
	cmp r0, #0
	beq _022565F4
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x2a
	bl sub_02006EC0
	add r2, r6, #0
	ldr r0, [r6, #0x30]
	ldr r1, _022565FC ; =0x02256A40
	add r2, #0x58
	bl ov25_02255810
	mov r1, #1
	str r0, [r6, #0x34]
	bl ov25_02255914
	add r7, r6, #0
	mov r4, #0
	add r5, r6, #0
	add r7, #0x58
_022565D4:
	ldr r0, [r6, #0x30]
	ldr r1, _02256600 ; =0x02256A50
	add r2, r7, #0
	bl ov25_02255810
	mov r1, #1
	str r0, [r5, #0x38]
	bl ov25_02255914
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _022565D4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022565F4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022565FC: .word 0x02256A40
_02256600: .word 0x02256A50
	thumb_func_end ov34_02256588

	thumb_func_start ov34_02256604
ov34_02256604: ; 0x02256604
	push {r4, r5, r6, lr}
	add r6, r0, #0
	beq _0225663C
	mov r4, #0
	add r5, r6, #0
_0225660E:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _0225661A
	ldr r0, [r6, #0x30]
	bl ov25_022558B0
_0225661A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _0225660E
	ldr r1, [r6, #0x34]
	cmp r1, #0
	beq _0225662E
	ldr r0, [r6, #0x30]
	bl ov25_022558B0
_0225662E:
	add r0, r6, #0
	add r0, #0x58
	bl ov25_022559B0
	add r0, r6, #0
	bl sub_020181C4
_0225663C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov34_02256604

	thumb_func_start ov34_02256640
ov34_02256640: ; 0x02256640
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256660 ; =0x02256A7C
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256660: .word 0x02256A7C
	thumb_func_end ov34_02256640

	thumb_func_start ov34_02256664
ov34_02256664: ; 0x02256664
	ldr r3, _0225666C ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_0225666C: .word ov25_02255130
	thumb_func_end ov34_02256664

	thumb_func_start ov34_02256670
ov34_02256670: ; 0x02256670
	ldr r3, _02256678 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256678: .word ov25_02255154
	thumb_func_end ov34_02256670

	thumb_func_start ov34_0225667C
ov34_0225667C: ; 0x0225667C
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov34_0225667C

	thumb_func_start ov34_02256690
ov34_02256690: ; 0x02256690
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02256768 ; =0x02256A60
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x27
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0xc
	mov r1, #0x26
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	add r0, r4, #0
	add r0, #0x70
	bl ov25_02254728
	add r0, r4, #0
	add r0, #0x80
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x72
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	mov r1, #0x20
	bl DC_FlushRange
	add r0, r4, #0
	mov r1, #0x1a
	add r0, #0x70
	lsl r1, r1, #4
	mov r2, #0x20
	bl GXS_LoadOBJPltt
	add r0, r4, #0
	add r0, #0x8e
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x72
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x70
	mov r1, #0x20
	bl DC_FlushRange
	add r0, r4, #0
	mov r1, #7
	add r0, #0x70
	lsl r1, r1, #6
	mov r2, #0x20
	bl GXS_LoadOBJPltt
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _0225676C ; =0x04001000
	ldr r0, _02256770 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov34_02256588
	add r0, r5, #0
	bl ov34_0225667C
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_02256768: .word 0x02256A60
_0225676C: .word 0x04001000
_02256770: .word 0xFFFFE0FF
	thumb_func_end ov34_02256690

	thumb_func_start ov34_02256774
ov34_02256774: ; 0x02256774
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	ldr r0, [r0, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	bl ov34_0225667C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov34_02256774

	thumb_func_start ov34_02256790
ov34_02256790: ; 0x02256790
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	bl ov25_0225523C
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r5, #0
	bl ov25_02255244
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	bne _022567C0
	mov r0, #1
	str r0, [r6, #0x6c]
	ldr r0, [r7, #8]
	str r0, [r4, #0]
_022567C0:
	ldr r2, [r4, #0]
	ldr r0, [sp]
	lsl r3, r2, #2
	ldr r2, _022567D0 ; =0x02256A34
	add r1, r5, #0
	ldr r2, [r2, r3]
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022567D0: .word 0x02256A34
	thumb_func_end ov34_02256790

	thumb_func_start ov34_022567D4
ov34_022567D4: ; 0x022567D4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _022567F8
	cmp r0, #1
	beq _0225681E
	pop {r4, r5, r6, pc}
_022567F8:
	ldr r1, [r6, #0]
	ldr r2, [r6, #4]
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_022558C4
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_0225681E:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _02256832
	add r0, r4, #0
	bl ov34_022569E8
	add r0, r5, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_02256832:
	ldr r0, [r4, #0x34]
	bl ov25_022558E0
	cmp r0, #0
	beq _02256848
	add r0, r4, #0
	bl ov34_022569E8
	add r0, r5, #0
	bl ov34_0225667C
_02256848:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov34_022567D4

	thumb_func_start ov34_0225684C
ov34_0225684C: ; 0x0225684C
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256870
	cmp r0, #1
	beq _02256896
	pop {r4, r5, r6, pc}
_02256870:
	ldr r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r0, [r5, #0x34]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov25_02255914
	add r0, r6, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_02256896:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _022568AA
	add r0, r5, #0
	bl ov34_022569E8
	add r0, r6, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_022568AA:
	ldr r0, [r5, #0x34]
	bl ov25_022558E0
	cmp r0, #0
	beq _022568BC
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl ov25_022558C4
_022568BC:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov34_0225684C

	thumb_func_start ov34_022568C0
ov34_022568C0: ; 0x022568C0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _022568E8
	cmp r0, #1
	beq _02256916
	cmp r0, #2
	beq _02256944
	pop {r4, r5, r6, pc}
_022568E8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov34_02256974
	ldr r1, [r6, #0]
	ldr r2, [r6, #4]
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_02255914
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_02256916:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _0225692A
	add r0, r4, #0
	bl ov34_022569E8
	add r0, r5, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_0225692A:
	ldr r0, [r4, #0x34]
	bl ov25_022558E0
	cmp r0, #0
	beq _02256972
	add r0, r4, #0
	add r1, r6, #0
	bl ov34_022569A0
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
_02256944:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _02256958
	add r0, r4, #0
	bl ov34_022569E8
	add r0, r5, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_02256958:
	add r0, r4, #0
	bl ov34_022569DC
	cmp r0, #0
	beq _02256972
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl ov25_022558C4
	add r0, r5, #0
	mov r1, #1
	bl ov25_02255254
_02256972:
	pop {r4, r5, r6, pc}
	thumb_func_end ov34_022568C0

	thumb_func_start ov34_02256974
ov34_02256974: ; 0x02256974
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	ldr r0, [r7, #0xc]
	mov r6, #0
	cmp r0, #0
	bls _0225699E
	add r4, r7, #0
_02256984:
	ldrh r1, [r4, #0x10]
	ldrh r2, [r4, #0x12]
	ldr r0, [r5, #0x38]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl ov25_02255900
	ldr r0, [r7, #0xc]
	add r6, r6, #1
	add r4, r4, #6
	add r5, r5, #4
	cmp r6, r0
	blo _02256984
_0225699E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov34_02256974

	thumb_func_start ov34_022569A0
ov34_022569A0: ; 0x022569A0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, r1, #0
	ldr r0, [r0, #0xc]
	mov r6, #0
	str r1, [sp]
	cmp r0, #0
	bls _022569DA
	add r4, r1, #0
_022569B2:
	ldrh r0, [r4, #0x14]
	add r7, r0, #1
	cmp r7, #3
	blo _022569BC
	mov r7, #3
_022569BC:
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r5, #0x38]
	add r1, r7, #0
	bl ov25_022558C4
	ldr r0, [sp]
	add r6, r6, #1
	ldr r0, [r0, #0xc]
	add r4, r4, #6
	add r5, r5, #4
	cmp r6, r0
	blo _022569B2
_022569DA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov34_022569A0

	thumb_func_start ov34_022569DC
ov34_022569DC: ; 0x022569DC
	ldr r3, _022569E4 ; =ov25_022558E0
	ldr r0, [r0, #0x38]
	bx r3
	nop
_022569E4: .word ov25_022558E0
	thumb_func_end ov34_022569DC

	thumb_func_start ov34_022569E8
ov34_022569E8: ; 0x022569E8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #1
	bl ov25_02255914
	mov r4, #0
	mov r6, #1
_022569F8:
	ldr r0, [r5, #0x38]
	add r1, r6, #0
	bl ov25_02255914
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #8
	blt _022569F8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov34_022569E8

	thumb_func_start ov34_02256A0C
ov34_02256A0C: ; 0x02256A0C
	push {r4, lr}
	add r4, r0, #0
	bl ov34_022569E8
	mov r0, #0
	str r0, [r4, #0x6c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov34_02256A0C

	.rodata


	.global Unk_ov34_02256A34
Unk_ov34_02256A34: ; 0x02256A34
	.incbin "incbin/overlay34_rodata.bin", 0x18, 0x24 - 0x18

	.global Unk_ov34_02256A40
Unk_ov34_02256A40: ; 0x02256A40
	.incbin "incbin/overlay34_rodata.bin", 0x24, 0x34 - 0x24

	.global Unk_ov34_02256A50
Unk_ov34_02256A50: ; 0x02256A50
	.incbin "incbin/overlay34_rodata.bin", 0x34, 0x44 - 0x34

	.global Unk_ov34_02256A60
Unk_ov34_02256A60: ; 0x02256A60
	.incbin "incbin/overlay34_rodata.bin", 0x44, 0x60 - 0x44

	.global Unk_ov34_02256A7C
Unk_ov34_02256A7C: ; 0x02256A7C
	.incbin "incbin/overlay34_rodata.bin", 0x60, 0x30

