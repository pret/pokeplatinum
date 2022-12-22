	.include "macros/function.inc"
	.include "include/unk_0203A944.inc"

	

	.text


	thumb_func_start sub_0203A944
sub_0203A944: ; 0x0203A944
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r1, #0
	bl sub_0203A174
	add r4, r0, #0
	cmp r4, #0x20
	blt _0203A9BC
	ldr r0, [r7, #0xc]
	bl sub_02025CD8
	add r6, r0, #0
	add r0, r6, #4
	bl sub_02013900
	sub r5, r0, #1
	bmi _0203A96C
	ldr r0, _0203A9C0 ; =0x0000016E
	cmp r5, r0
	blt _0203A970
_0203A96C:
	bl sub_02022974
_0203A970:
	ldr r0, [r6, #8]
	cmp r0, #2
	bls _0203A9A4
	ldr r6, [r6, #4]
	mov r0, #3
	tst r0, r6
	bne _0203A98A
	add r0, r6, #0
	mov r1, #0x64
	bl _u32_div_f
	cmp r1, #0
	bne _0203A998
_0203A98A:
	mov r1, #0x19
	add r0, r6, #0
	lsl r1, r1, #4
	bl _u32_div_f
	cmp r1, #0
	bne _0203A99C
_0203A998:
	mov r0, #1
	b _0203A99E
_0203A99C:
	mov r0, #0
_0203A99E:
	cmp r0, #0
	bne _0203A9A4
	add r5, r5, #1
_0203A9A4:
	add r0, r7, #0
	bl sub_02055C40
	cmp r0, #0
	beq _0203A9B0
	mov r5, #1
_0203A9B0:
	lsl r0, r5, #2
	sub r4, #0x20
	add r0, r5, r0
	add r1, r4, r0
	ldr r0, _0203A9C4 ; =0x020E98F4
	ldrb r0, [r0, r1]
_0203A9BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203A9C0: .word 0x0000016E
_0203A9C4: .word 0x020E98F4
	thumb_func_end sub_0203A944

	.rodata


	.global Unk_020E98F4
Unk_020E98F4: ; 0x020E98F4
	.incbin "incbin/arm9_rodata.bin", 0x4CB4, 0x726

