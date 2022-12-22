	.include "macros/function.inc"
	.include "include/unk_020507CC.inc"

	

	.text


	thumb_func_start sub_020507CC
sub_020507CC: ; 0x020507CC
	mov r0, #0xeb
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_020507CC

	thumb_func_start sub_020507D4
sub_020507D4: ; 0x020507D4
	ldr r3, _020507E0 ; =memset
	mov r2, #0xeb
	mov r1, #0
	lsl r2, r2, #2
	bx r3
	nop
_020507E0: .word memset
	thumb_func_end sub_020507D4

	thumb_func_start sub_020507E4
sub_020507E4: ; 0x020507E4
	ldr r3, _020507EC ; =sub_020245BC
	mov r1, #4
	bx r3
	nop
_020507EC: .word sub_020245BC
	thumb_func_end sub_020507E4

	thumb_func_start sub_020507F0
sub_020507F0: ; 0x020507F0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl sub_02050870
	cmp r0, #0
	beq _02050816
	lsr r3, r4, #0x1f
	lsl r2, r4, #0x1d
	ldrb r5, [r0]
	sub r2, r2, r3
	mov r1, #0x1d
	ror r2, r1
	mov r0, #1
	add r1, r3, r2
	add r2, r0, #0
	lsl r2, r1
	add r1, r5, #0
	tst r1, r2
	bne _02050818
_02050816:
	mov r0, #0
_02050818:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_020507F0

	thumb_func_start sub_0205081C
sub_0205081C: ; 0x0205081C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_02050870
	cmp r0, #0
	beq _02050840
	lsr r5, r4, #0x1f
	lsl r3, r4, #0x1d
	sub r3, r3, r5
	mov r2, #0x1d
	ror r3, r2
	mov r6, #1
	add r2, r5, r3
	add r3, r6, #0
	ldrb r1, [r0]
	lsl r3, r2
	orr r1, r3
	strb r1, [r0]
_02050840:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0205081C

	thumb_func_start sub_02050844
sub_02050844: ; 0x02050844
	push {r4, r5, r6, lr}
	add r4, r1, #0
	bl sub_02050870
	cmp r0, #0
	beq _0205086C
	lsr r5, r4, #0x1f
	lsl r3, r4, #0x1d
	sub r3, r3, r5
	mov r2, #0x1d
	ror r3, r2
	mov r6, #1
	add r2, r5, r3
	add r3, r6, #0
	lsl r3, r2
	mov r2, #0xff
	ldrb r1, [r0]
	eor r2, r3
	and r1, r2
	strb r1, [r0]
_0205086C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02050844

	thumb_func_start sub_02050870
sub_02050870: ; 0x02050870
	push {r3, r4, r5, lr}
	add r5, r0, #0
	cmp r1, #0
	bne _0205087C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0205087C:
	mov r0, #1
	lsl r0, r0, #0xe
	cmp r1, r0
	bhs _0205089C
	mov r0, #0x5b
	lsr r4, r1, #3
	lsl r0, r0, #2
	cmp r4, r0
	blt _02050892
	bl sub_02022974
_02050892:
	mov r0, #9
	lsl r0, r0, #6
	add r0, r5, r0
	add r0, r0, r4
	pop {r3, r4, r5, pc}
_0205089C:
	sub r1, r1, r0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	asr r4, r0, #3
	cmp r4, #8
	blt _020508AE
	bl sub_02022974
_020508AE:
	ldr r0, _020508B4 ; =0x021C07F4
	add r0, r0, r4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020508B4: .word 0x021C07F4
	thumb_func_end sub_02050870

	thumb_func_start sub_020508B8
sub_020508B8: ; 0x020508B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #0xe
	sub r4, r1, r0
	mov r0, #0x12
	lsl r0, r0, #4
	cmp r4, r0
	blt _020508CE
	bl sub_02022974
_020508CE:
	lsl r0, r4, #1
	add r0, r5, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020508B8

	.bss


	.global Unk_021C07F4
Unk_021C07F4: ; 0x021C07F4
	.space 0x8

