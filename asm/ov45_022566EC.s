	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov45_022566EC
ov45_022566EC: ; 0x022566EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x9c
	bl sub_02018144
	add r4, r0, #0
	beq _02256722
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	str r5, [r4, #0]
	bl ov25_02254674
	str r0, [r4, #4]
	bl ov25_02254664
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r1, r5, #0
	bl ov45_0225673C
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256722:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov45_022566EC

	thumb_func_start ov45_02256728
ov45_02256728: ; 0x02256728
	push {r4, lr}
	add r4, r0, #0
	beq _02256738
	bl ov45_02256864
	add r0, r4, #0
	bl sub_020181C4
_02256738:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov45_02256728

	thumb_func_start ov45_0225673C
ov45_0225673C: ; 0x0225673C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #2
	bl sub_02006EC0
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	mov r3, #0xa
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x4f
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x68
	mov r1, #0xc
	mov r2, #0x4d
	mov r3, #0x4e
	bl ov25_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x7c
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl ov25_02255958
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x68
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x7c
	ldr r7, _02256860 ; =0x02256D34
	mov r4, #0
	add r6, r5, #0
	str r0, [sp, #0x10]
_022567AA:
	cmp r4, #9
	blt _022567C0
	cmp r4, #0xc
	bgt _022567C0
	ldr r0, [r5, #0x30]
	ldr r2, [sp, #0x10]
	add r1, r7, #0
	bl ov25_02255810
	str r0, [r6, #0x34]
	b _022567D2
_022567C0:
	ldr r0, [r5, #0x30]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl ov25_02255810
	mov r1, #0x50
	str r0, [r6, #0x34]
	bl ov25_02255940
_022567D2:
	add r4, r4, #1
	add r7, #0x10
	add r6, r6, #4
	cmp r4, #0xd
	blt _022567AA
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r5, #0x34]
	beq _02256832
	mov r1, #3
	bl ov25_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl ov25_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #5
	bl ov25_022558C4
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r5, #0x4c]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ov25_02255914
	ldr r1, [sp, #0xc]
	mov r2, #1
	ldrsb r1, [r1, r2]
	ldr r2, [sp, #0xc]
	mov r3, #2
	ldrsb r2, [r2, r3]
	add r0, r5, #0
	bl ov45_02256894
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02256832:
	mov r1, #2
	bl ov25_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl ov25_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #4
	bl ov25_022558C4
	ldr r1, [sp, #0xc]
	mov r2, #3
	ldrsb r1, [r1, r2]
	ldr r2, [sp, #0xc]
	mov r3, #4
	ldrsb r2, [r2, r3]
	add r0, r5, #0
	bl ov45_02256894
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256860: .word 0x02256D34
	thumb_func_end ov45_0225673C

	thumb_func_start ov45_02256864
ov45_02256864: ; 0x02256864
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0225686C:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02256878
	ldr r0, [r6, #0x30]
	bl ov25_022558B0
_02256878:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xd
	blt _0225686C
	add r0, r6, #0
	add r0, #0x68
	bl ov25_022559B0
	add r6, #0x7c
	add r0, r6, #0
	bl ov25_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov45_02256864

	thumb_func_start ov45_02256894
ov45_02256894: ; 0x02256894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225690C ; =0x04000280
	mov r3, #0
	strh r3, [r0]
	str r1, [r0, #0x10]
	add r1, r0, #0
	add r4, r2, #0
	mov r2, #0xa
	add r1, #0x18
	str r2, [r1, #0]
	str r3, [r1, #4]
	lsr r1, r0, #0xb
_022568AE:
	ldrh r2, [r0]
	tst r2, r1
	bne _022568AE
	ldr r1, _02256910 ; =0x040002A0
	ldr r0, [r5, #0x58]
	ldr r1, [r1, #0]
	bl ov25_022558C4
	ldr r2, _0225690C ; =0x04000280
	lsr r0, r2, #0xb
_022568C2:
	ldrh r1, [r2]
	tst r1, r0
	bne _022568C2
	ldr r1, _02256914 ; =0x040002A8
	ldr r0, [r5, #0x5c]
	ldr r1, [r1, #0]
	bl ov25_022558C4
	ldr r0, _0225690C ; =0x04000280
	mov r3, #0
	strh r3, [r0]
	add r1, r0, #0
	str r4, [r0, #0x10]
	mov r2, #0xa
	add r1, #0x18
	str r2, [r1, #0]
	str r3, [r1, #4]
	lsr r1, r0, #0xb
_022568E6:
	ldrh r2, [r0]
	tst r2, r1
	bne _022568E6
	ldr r1, _02256910 ; =0x040002A0
	ldr r0, [r5, #0x60]
	ldr r1, [r1, #0]
	bl ov25_022558C4
	ldr r2, _0225690C ; =0x04000280
	lsr r0, r2, #0xb
_022568FA:
	ldrh r1, [r2]
	tst r1, r0
	bne _022568FA
	ldr r1, _02256914 ; =0x040002A8
	ldr r0, [r5, #0x64]
	ldr r1, [r1, #0]
	bl ov25_022558C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225690C: .word 0x04000280
_02256910: .word 0x040002A0
_02256914: .word 0x040002A8
	thumb_func_end ov45_02256894

	thumb_func_start ov45_02256918
ov45_02256918: ; 0x02256918
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256938 ; =0x02256CE0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256938: .word 0x02256CE0
	thumb_func_end ov45_02256918

	thumb_func_start ov45_0225693C
ov45_0225693C: ; 0x0225693C
	ldr r3, _02256944 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_02256944: .word ov25_02255130
	thumb_func_end ov45_0225693C

	thumb_func_start ov45_02256948
ov45_02256948: ; 0x02256948
	ldr r3, _02256950 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256950: .word ov25_02255154
	thumb_func_end ov45_02256948

	thumb_func_start ov45_02256954
ov45_02256954: ; 0x02256954
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov45_02256954

	thumb_func_start ov45_02256968
ov45_02256968: ; 0x02256968
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022569EC ; =0x02256CC4
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
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x4c
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x4b
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _022569F0 ; =0x04001000
	ldr r0, _022569F4 ; =0xFFFFE0FF
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
	bl ov45_02256954
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_022569EC: .word 0x02256CC4
_022569F0: .word 0x04001000
_022569F4: .word 0xFFFFE0FF
	thumb_func_end ov45_02256968

	thumb_func_start ov45_022569F8
ov45_022569F8: ; 0x022569F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256A14
	cmp r0, #1
	beq _02256A22
	pop {r3, r4, r5, pc}
_02256A14:
	add r0, r4, #0
	bl ov45_02256C90
	add r0, r5, #0
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256A22:
	add r0, r4, #0
	mov r1, #5
	bl ov45_0225693C
	cmp r0, #0
	beq _02256A3C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov45_02256954
_02256A3C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov45_022569F8

	thumb_func_start ov45_02256A40
ov45_02256A40: ; 0x02256A40
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r0, _02256AB8 ; =0x00000663
	bl ov25_02254424
	ldr r0, [r5, #0x34]
	mov r1, #3
	bl ov25_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl ov25_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #5
	bl ov25_022558C4
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r5, #0x4c]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl ov25_02255914
	mov r1, #1
	mov r2, #2
	ldrsb r1, [r4, r1]
	ldrsb r2, [r4, r2]
	add r0, r5, #0
	bl ov45_02256894
	add r0, r6, #0
	bl ov45_02256954
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256AB8: .word 0x00000663
	thumb_func_end ov45_02256A40

	thumb_func_start ov45_02256ABC
ov45_02256ABC: ; 0x02256ABC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r0, _02256B34 ; =0x00000663
	bl ov25_02254424
	ldr r0, [r5, #0x34]
	mov r1, #2
	bl ov25_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl ov25_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #4
	bl ov25_022558C4
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl ov25_022558C4
	ldr r0, [r5, #0x48]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r5, #0x4c]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl ov25_02255914
	mov r1, #3
	mov r2, #4
	ldrsb r1, [r4, r1]
	ldrsb r2, [r4, r2]
	add r0, r5, #0
	bl ov45_02256894
	add r0, r6, #0
	bl ov45_02256954
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256B34: .word 0x00000663
	thumb_func_end ov45_02256ABC

	thumb_func_start ov45_02256B38
ov45_02256B38: ; 0x02256B38
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _02256B62
	mov r1, #1
	mov r3, #2
	ldrsb r1, [r2, r1]
	ldrsb r2, [r2, r3]
	add r0, r4, #0
	bl ov45_02256894
	b _02256B70
_02256B62:
	mov r1, #3
	mov r3, #4
	ldrsb r1, [r2, r1]
	ldrsb r2, [r2, r3]
	add r0, r4, #0
	bl ov45_02256894
_02256B70:
	add r0, r5, #0
	bl ov45_02256954
	pop {r3, r4, r5, pc}
	thumb_func_end ov45_02256B38

	thumb_func_start ov45_02256B78
ov45_02256B78: ; 0x02256B78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256B9A
	cmp r0, #1
	beq _02256BE4
	pop {r3, r4, r5, pc}
_02256B9A:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0, #0]
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl ov25_022558C4
	ldr r0, [r4, #0x44]
	mov r1, #4
	bl ov25_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl ov25_022558C4
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl ov25_022558C4
	ldr r0, _02256C88 ; =0x00000663
	bl ov25_02254424
	ldr r0, _02256C8C ; =0x00000126
	mov r1, #0
	bl ov25_02254444
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r4, #0x98
	add r0, r5, #0
	str r1, [r4, #0]
	bl ov25_0225524C
	pop {r3, r4, r5, pc}
_02256BE4:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256C16
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl ov25_02255914
	ldr r0, [r4, #0x64]
	mov r1, #0
	bl ov25_02255914
	add r0, r5, #0
	bl ov45_02256954
	pop {r3, r4, r5, pc}
_02256C16:
	bl sub_0200598C
	cmp r0, #0
	bne _02256C26
	ldr r0, _02256C8C ; =0x00000126
	mov r1, #0
	bl ov25_02254444
_02256C26:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0xf
	blo _02256C84
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x98
	ldr r1, [r0, #0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0x98
	ldr r0, [r4, #0x58]
	ldr r1, [r1, #0]
	bl ov25_02255914
	add r1, r4, #0
	add r1, #0x98
	ldr r0, [r4, #0x5c]
	ldr r1, [r1, #0]
	bl ov25_02255914
	add r1, r4, #0
	add r1, #0x98
	ldr r0, [r4, #0x60]
	ldr r1, [r1, #0]
	bl ov25_02255914
	ldr r0, [r4, #0x64]
	add r4, #0x98
	ldr r1, [r4, #0]
	bl ov25_02255914
_02256C84:
	pop {r3, r4, r5, pc}
	nop
_02256C88: .word 0x00000663
_02256C8C: .word 0x00000126
	thumb_func_end ov45_02256B78

	thumb_func_start ov45_02256C90
ov45_02256C90: ; 0x02256C90
	mov r1, #1
	add r0, #0x90
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov45_02256C90

	.rodata


	.global Unk_ov45_02256CC4
Unk_ov45_02256CC4: ; 0x02256CC4
	.incbin "incbin/overlay45_rodata.bin", 0x2C, 0x48 - 0x2C

	.global Unk_ov45_02256CE0
Unk_ov45_02256CE0: ; 0x02256CE0
	.incbin "incbin/overlay45_rodata.bin", 0x48, 0x9C - 0x48

	.global Unk_ov45_02256D34
Unk_ov45_02256D34: ; 0x02256D34
	.incbin "incbin/overlay45_rodata.bin", 0x9C, 0xD0

