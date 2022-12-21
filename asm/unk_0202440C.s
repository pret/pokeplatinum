	.include "macros/function.inc"
	.include "include/unk_0202440C.inc"

	

	.text


	thumb_func_start sub_0202440C
sub_0202440C: ; 0x0202440C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1b
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1b
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202440C

	thumb_func_start sub_02024420
sub_02024420: ; 0x02024420
	ldr r3, _02024428 ; =sub_020245BC
	mov r1, #0x25
	bx r3
	nop
_02024428: .word sub_020245BC
	thumb_func_end sub_02024420

	thumb_func_start sub_0202442C
sub_0202442C: ; 0x0202442C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1f
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202442C

	thumb_func_start sub_02024440
sub_02024440: ; 0x02024440
	ldr r3, _02024448 ; =sub_020245BC
	mov r1, #0x20
	bx r3
	nop
_02024448: .word sub_020245BC
	thumb_func_end sub_02024440

	thumb_func_start sub_0202444C
sub_0202444C: ; 0x0202444C
	push {r3, lr}
	add r3, r2, #0
	mov r2, #0
	bl sub_02025680
	pop {r3, pc}
	thumb_func_end sub_0202444C

	thumb_func_start sub_02024458
sub_02024458: ; 0x02024458
	ldr r3, _02024460 ; =sub_02025428
	add r2, r1, #0
	mov r1, #0
	bx r3
	; .align 2, 0
_02024460: .word sub_02025428
	thumb_func_end sub_02024458

	thumb_func_start sub_02024464
sub_02024464: ; 0x02024464
	push {r4, lr}
	sub sp, #8
	add r4, r2, #0
	add r2, sp, #4
	str r2, [sp]
	add r2, r3, #2
	add r3, r4, #0
	bl sub_020257E8
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02024464

	thumb_func_start sub_0202447C
sub_0202447C: ; 0x0202447C
	add r3, r1, #0
	add r1, r2, #2
	add r2, r3, #0
	ldr r3, _02024488 ; =sub_02025574
	bx r3
	nop
_02024488: .word sub_02025574
	thumb_func_end sub_0202447C

	thumb_func_start sub_0202448C
sub_0202448C: ; 0x0202448C
	push {r3, lr}
	sub sp, #8
	add r3, r2, #0
	add r2, sp, #4
	str r2, [sp]
	mov r2, #1
	bl sub_020257E8
	add sp, #8
	pop {r3, pc}
	thumb_func_end sub_0202448C

	thumb_func_start sub_020244A0
sub_020244A0: ; 0x020244A0
	ldr r3, _020244A8 ; =sub_02025574
	add r2, r1, #0
	mov r1, #1
	bx r3
	; .align 2, 0
_020244A8: .word sub_02025574
	thumb_func_end sub_020244A0

	.rodata


	.global Unk_020E582C
Unk_020E582C: ; 0x020E582C
	.incbin "incbin/arm9_rodata.bin", 0xBEC, 0xBF0 - 0xBEC

	.global Unk_020E5830
Unk_020E5830: ; 0x020E5830
	.incbin "incbin/arm9_rodata.bin", 0xBF0, 0xBF4 - 0xBF0

	.global Unk_020E5834
Unk_020E5834: ; 0x020E5834
	.incbin "incbin/arm9_rodata.bin", 0xBF4, 0xC54 - 0xBF4

	.global Unk_020E5894
Unk_020E5894: ; 0x020E5894
	.incbin "incbin/arm9_rodata.bin", 0xC54, 0x260

