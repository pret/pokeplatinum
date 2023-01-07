	.include "macros/function.inc"
	.include "include/dwci_nd_string.inc"

	

	.text


	arm_func_start ov60_022256B4
ov60_022256B4: ; 0x022256B4
	ldr ip, _022256BC ; =ov60_02228980
	bx ip
	; .align 2, 0
_022256BC: .word ov60_02228980
	arm_func_end ov60_022256B4

	arm_func_start ov60_022256C0
ov60_022256C0: ; 0x022256C0
	ldr ip, _022256C8 ; =ov60_02228A18
	bx ip
	; .align 2, 0
_022256C8: .word ov60_02228A18
	arm_func_end ov60_022256C0

	arm_func_start ov60_022256CC
ov60_022256CC: ; 0x022256CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, r2
	ldr r4, _02225798 ; =0x01634578
	ldr r2, _0222579C ; =0x5D8A0000
	mov sb, r1
	cmp r8, r4
	mov sl, r0
	mov fp, r3
	mov r5, #0
	cmpeq sb, r2
	subhs r0, r5, #1
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, r5
	mov r0, r5
_02225704:
	ldr r1, _022257A0 ; =0x02228CF4
	add r1, r1, r4, lsl #3
	ldr r6, [r1, #4]
	ldr r1, _022257A0 ; =0x02228CF4
	cmp r8, r6
	ldr r7, [r1, r4, lsl #3]
	cmpeq sb, r7
	blo _0222575C
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl _ull_div
	umull r3, r2, r0, r7
	mla r2, r0, r6, r2
	add r0, r0, #0x30
	strb r0, [sl, r5]
	subs sb, sb, r3
	sbc r8, r8, r2
	mov r0, #1
	add r5, r5, #1
	b _0222577C
_0222575C:
	cmp r0, #0
	bne _02225770
	rsb r1, r4, #0x11
	cmp r1, fp
	bgt _0222577C
_02225770:
	mov r1, #0x30
	strb r1, [sl, r5]
	add r5, r5, #1
_0222577C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02225704
	adds r0, sb, #0x30
	strb r0, [sl, r5]
	add r0, r5, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02225798: .word 0x01634578
_0222579C: .word 0x5D8A0000
_022257A0: .word Unk_ov60_02228CF4
	arm_func_end ov60_022256CC

	arm_func_start ov60_022257A4
ov60_022257A4: ; 0x022257A4
	stmfd sp!, {r3, lr}
	mov lr, #0
	cmp r2, #8
	subgt r0, lr, #1
	ldmgtia sp!, {r3, pc}
	cmp r2, #1
	mov ip, #1
	blt _022257F4
_022257C4:
	sub r3, r2, ip
	mov r3, r3, lsl #2
	mov r3, r1, lsr r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	addhs r3, r3, #0x57
	add ip, ip, #1
	strb r3, [r0, lr]
	add lr, lr, #1
	cmp ip, r2
	ble _022257C4
_022257F4:
	mov r0, lr
	ldmia sp!, {r3, pc}
	arm_func_end ov60_022257A4

	.rodata


	.global Unk_ov60_02228CF4
Unk_ov60_02228CF4: ; 0x02228CF4
	.incbin "incbin/overlay60_rodata.bin", 0xA8, 0x80

