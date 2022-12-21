	.include "macros/function.inc"
	.include "include/unk_0201378C.inc"

	

	.text


	thumb_func_start sub_0201378C
sub_0201378C: ; 0x0201378C
	push {r3, lr}
	bl sub_020CB8A8
	ldr r3, _020137BC ; =0x021BF5C8
	mov r0, #0
	add r2, r3, #0
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, _020137C0 ; =0x021BF5C8
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r3, #0
	bl sub_02013824
	pop {r3, pc}
	; .align 2, 0
_020137BC: .word 0x021BF5C8
_020137C0: .word 0x021BF5C8
	thumb_func_end sub_0201378C

	thumb_func_start sub_020137C4
sub_020137C4: ; 0x020137C4
	push {r3, lr}
	ldr r0, _020137E4 ; =0x021BF5C8
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020137E2
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	cmp r1, #0xa
	ble _020137E2
	mov r1, #0
	str r1, [r0, #8]
	ldr r0, _020137E8 ; =0x021BF5C8
	bl sub_02013824
_020137E2:
	pop {r3, pc}
	; .align 2, 0
_020137E4: .word 0x021BF5C8
_020137E8: .word 0x021BF5C8
	thumb_func_end sub_020137C4

	thumb_func_start sub_020137EC
sub_020137EC: ; 0x020137EC
	push {r4, lr}
	add r4, r1, #0
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _020137FA
	bl sub_02022974
_020137FA:
	add r3, r4, #0
	mov r0, #1
	add r2, r4, #0
	add r3, #0x2c
	str r0, [r4, #0]
	ldmia r3!, {r0, r1}
	add r2, #0x10
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r3, r4, #0
	add r3, #0x3c
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end sub_020137EC

	thumb_func_start sub_02013824
sub_02013824: ; 0x02013824
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #4]
	add r0, r4, #0
	add r1, r4, #0
	ldr r2, _02013848 ; =sub_020137EC
	add r0, #0x2c
	add r1, #0x3c
	add r3, r4, #0
	bl sub_020CBA68
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _02013846
	bl sub_02022974
_02013846:
	pop {r4, pc}
	; .align 2, 0
_02013848: .word sub_020137EC
	thumb_func_end sub_02013824

	thumb_func_start sub_0201384C
sub_0201384C: ; 0x0201384C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02013874 ; =0x021BF5C8
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _0201385E
	bl sub_02022974
_0201385E:
	ldr r2, _02013878 ; =0x021BF5D8
	ldmia r2!, {r0, r1}
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	ldr r2, _0201387C ; =0x021BF5E8
	stmia r5!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02013874: .word 0x021BF5C8
_02013878: .word 0x021BF5D8
_0201387C: .word 0x021BF5E8
	thumb_func_end sub_0201384C

	thumb_func_start sub_02013880
sub_02013880: ; 0x02013880
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201389C ; =0x021BF5C8
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _02013890
	bl sub_02022974
_02013890:
	ldr r2, _020138A0 ; =0x021BF5E8
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_0201389C: .word 0x021BF5C8
_020138A0: .word 0x021BF5E8
	thumb_func_end sub_02013880

	thumb_func_start sub_020138A4
sub_020138A4: ; 0x020138A4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020138C0 ; =0x021BF5C8
	ldr r0, [r0, #0]
	cmp r0, #1
	beq _020138B4
	bl sub_02022974
_020138B4:
	ldr r2, _020138C4 ; =0x021BF5D8
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r4!, {r0, r1}
	pop {r4, pc}
	; .align 2, 0
_020138C0: .word 0x021BF5C8
_020138C4: .word 0x021BF5D8
	thumb_func_end sub_020138A4

	thumb_func_start sub_020138C8
sub_020138C8: ; 0x020138C8
	push {r3, r4}
	ldr r4, _020138E8 ; =0x021BF5E8
	mov r0, #0x3c
	ldr r1, [r4, #4]
	ldr r3, [r4, #8]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0xe1
	ldr r1, [r4, #0]
	lsl r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	add r0, r3, r0
	pop {r3, r4}
	bx lr
	nop
_020138E8: .word 0x021BF5E8
	thumb_func_end sub_020138C8

	thumb_func_start sub_020138EC
sub_020138EC: ; 0x020138EC
	ldr r3, _020138F4 ; =sub_020CC218
	ldr r0, _020138F8 ; =0x021BF5D8
	ldr r1, _020138FC ; =0x021BF5E8
	bx r3
	; .align 2, 0
_020138F4: .word sub_020CC218
_020138F8: .word 0x021BF5D8
_020138FC: .word 0x021BF5E8
	thumb_func_end sub_020138EC

	thumb_func_start sub_02013900
sub_02013900: ; 0x02013900
	push {r3, r4, r5, lr}
	ldr r3, [r0, #4]
	ldr r1, _02013944 ; =0x020E53FE
	lsl r2, r3, #1
	ldrh r1, [r1, r2]
	ldr r4, [r0, #8]
	add r5, r4, r1
	cmp r3, #3
	blo _0201393E
	ldr r4, [r0, #0]
	mov r0, #0x1e
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _0201392E
	add r0, r4, #0
	mov r1, #0x64
	bl sub_020E1F6C
	cmp r1, #0
	bne _0201393C
_0201392E:
	mov r1, #0x19
	add r0, r4, #0
	lsl r1, r1, #4
	bl sub_020E1F6C
	cmp r1, #0
	bne _0201393E
_0201393C:
	add r5, r5, #1
_0201393E:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	nop
_02013944: .word 0x020E53FE
	thumb_func_end sub_02013900

	thumb_func_start sub_02013948
sub_02013948: ; 0x02013948
	push {r3, lr}
	bl sub_02013960
	cmp r0, #3
	beq _02013956
	cmp r0, #4
	bne _0201395A
_02013956:
	mov r0, #1
	pop {r3, pc}
_0201395A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_02013948

	thumb_func_start sub_02013960
sub_02013960: ; 0x02013960
	push {lr}
	sub sp, #0xc
	add r0, sp, #0
	bl sub_02013880
	ldr r0, [sp]
	bl sub_02013974
	add sp, #0xc
	pop {pc}
	thumb_func_end sub_02013960

	thumb_func_start sub_02013974
sub_02013974: ; 0x02013974
	push {r4, lr}
	add r4, r0, #0
	bmi _0201397E
	cmp r4, #0x18
	blt _02013982
_0201397E:
	bl sub_02022974
_02013982:
	ldr r0, _02013988 ; =0x020E5418
	ldrb r0, [r0, r4]
	pop {r4, pc}
	; .align 2, 0
_02013988: .word 0x020E5418
	thumb_func_end sub_02013974

	thumb_func_start sub_0201398C
sub_0201398C: ; 0x0201398C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r3, #0
	ldr r3, _020139F8 ; =0x020E53F0
	add r4, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	add r2, sp, #0x14
	ldmia r3!, {r0, r1}
	str r2, [sp]
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r3, _020139FC ; =0x020E53E4
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	str r2, [sp, #4]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r1, [sp, #4]
	str r0, [r2, #0]
	ldr r0, [sp]
	bl sub_020CC218
	add r2, r1, #0
	add r3, r0, #0
	mov r1, #0
	ldr r0, _02013A00 ; =0xBC19137F
	eor r1, r2
	eor r0, r3
	orr r0, r1
	beq _020139D0
	bl sub_02022974
_020139D0:
	sub r0, r4, r5
	mov ip, r7
	mov r0, ip
	sbc r0, r6
	bge _020139E4
	sub r0, r5, r4
	sbc r6, r7
	add sp, #0x24
	add r1, r6, #0
	pop {r4, r5, r6, r7, pc}
_020139E4:
	ldr r0, _02013A00 ; =0xBC19137F
	mov r1, #0
	sub r0, r0, r4
	sbc r1, r7
	add r0, r5, r0
	adc r6, r1
	add r1, r6, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_020139F8: .word 0x020E53F0
_020139FC: .word 0x020E53E4
_02013A00: .word 0xBC19137F
	thumb_func_end sub_0201398C

	.rodata


	.global Unk_020E53E4
Unk_020E53E4: ; 0x020E53E4
	.incbin "incbin/arm9_rodata.bin", 0x7A4, 0x7B0 - 0x7A4

	.global Unk_020E53F0
Unk_020E53F0: ; 0x020E53F0
	.incbin "incbin/arm9_rodata.bin", 0x7B0, 0x7C0 - 0x7B0

	.global Unk_020E5400
Unk_020E5400: ; 0x020E5400
	.incbin "incbin/arm9_rodata.bin", 0x7C0, 0x7D8 - 0x7C0

	.global Unk_020E5418
Unk_020E5418: ; 0x020E5418
	.incbin "incbin/arm9_rodata.bin", 0x7D8, 0x18



	.bss


	.global Unk_021BF5C8
Unk_021BF5C8: ; 0x021BF5C8
	.space 0x48

