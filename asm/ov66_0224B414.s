	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	arm_func_start ov66_0224B414
ov66_0224B414: ; 0x0224B414
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224B438
	ldr r0, _0224B4A0 ; =0x0225980C
	ldr r1, _0224B4A4 ; =0x02259818
	ldr r2, _0224B4A8 ; =0x02259568
	mov r3, #0x99
	bl sub_020D407C
_0224B438:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224B458
	ldr r0, _0224B4AC ; =0x02259828
	ldr r1, _0224B4A4 ; =0x02259818
	ldr r2, _0224B4A8 ; =0x02259568
	mov r3, #0x99
	bl sub_020D407C
_0224B458:
	ldrsb r2, [r5], #1
	mov r0, #0
	cmp r2, #0
	beq _0224B490
	ldr r1, _0224B4B0 ; =0x020FE764
_0224B46C:
	cmp r2, #0
	blt _0224B480
	cmp r2, #0x80
	bge _0224B480
	ldrb r2, [r1, r2]
_0224B480:
	add r0, r0, r2
	ldrsb r2, [r5], #1
	cmp r2, #0
	bne _0224B46C
_0224B490:
	mov r1, r4
	bl sub_020E1F6C
	mov r0, r1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224B4A0: .word 0x0225980C
_0224B4A4: .word 0x02259818
_0224B4A8: .word 0x02259568
_0224B4AC: .word 0x02259828
_0224B4B0: .word 0x020FE764
	arm_func_end ov66_0224B414

	arm_func_start ov66_0224B4B4
ov66_0224B4B4: ; 0x0224B4B4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1e4
	ldr r2, _0224B4E8 ; =0x00000101
	mov r4, r0
	add r0, sp, #0
	bl sub_020D8C44
	mov r0, #0
	strb r0, [sp, #0x100]
	ldr r0, [r4, #0x80c]
	add r1, sp, #0
	bl ov4_021EA598
	add sp, sp, #0x1e4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0224B4E8: .word 0x00000101
	arm_func_end ov66_0224B4B4

	arm_func_start ov66_0224B4EC
ov66_0224B4EC: ; 0x0224B4EC
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224B510
	ldr r0, _0224B53C ; =0x02259838
	ldr r1, _0224B540 ; =0x02259818
	ldr r2, _0224B544 ; =0x022596FC
	mov r3, #0xb4
	bl sub_020D407C
_0224B510:
	cmp r4, #0
	bgt _0224B52C
	ldr r0, _0224B548 ; =0x02259848
	ldr r1, _0224B540 ; =0x02259818
	ldr r2, _0224B544 ; =0x022596FC
	mov r3, #0xb5
	bl sub_020D407C
_0224B52C:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B414
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224B53C: .word 0x02259838
_0224B540: .word 0x02259818
_0224B544: .word 0x022596FC
_0224B548: .word 0x02259848
	arm_func_end ov66_0224B4EC

	arm_func_start ov66_0224B54C
ov66_0224B54C: ; 0x0224B54C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224B570
	ldr r0, _0224B64C ; =0x02259858
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc1
	bl sub_020D407C
_0224B570:
	cmp r4, #0
	bne _0224B58C
	ldr r0, _0224B658 ; =0x02259868
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc2
	bl sub_020D407C
_0224B58C:
	cmp r5, #0
	bne _0224B5A8
	ldr r0, _0224B65C ; =0x02259878
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc6
	bl sub_020D407C
_0224B5A8:
	cmp r4, #0
	bne _0224B5C4
	ldr r0, _0224B660 ; =0x02259888
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc7
	bl sub_020D407C
_0224B5C4:
	cmp r5, #0
	bne _0224B5E0
	ldr r0, _0224B65C ; =0x02259878
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc8
	bl sub_020D407C
_0224B5E0:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224B600
	ldr r0, _0224B664 ; =0x02259898
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc8
	bl sub_020D407C
_0224B600:
	cmp r4, #0
	bne _0224B61C
	ldr r0, _0224B660 ; =0x02259888
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc9
	bl sub_020D407C
_0224B61C:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224B63C
	ldr r0, _0224B668 ; =0x022598A8
	ldr r1, _0224B650 ; =0x02259818
	ldr r2, _0224B654 ; =0x022597BC
	mov r3, #0xc9
	bl sub_020D407C
_0224B63C:
	mov r0, r5
	mov r1, r4
	bl sub_020DF9B0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224B64C: .word 0x02259858
_0224B650: .word 0x02259818
_0224B654: .word 0x022597BC
_0224B658: .word 0x02259868
_0224B65C: .word 0x02259878
_0224B660: .word 0x02259888
_0224B664: .word 0x02259898
_0224B668: .word 0x022598A8
	arm_func_end ov66_0224B54C

	arm_func_start ov66_0224B66C
ov66_0224B66C: ; 0x0224B66C
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _0224B68C
	ldr r0, _0224B6A8 ; =0x02259838
	ldr r1, _0224B6AC ; =0x02259818
	ldr r2, _0224B6B0 ; =0x022597F0
	mov r3, #0xd2
	bl sub_020D407C
_0224B68C:
	ldr r0, [r4, #0x15c]
	bl ov4_021D78B0
	ldr r0, [r4, #0x134]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021EA364
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224B6A8: .word 0x02259838
_0224B6AC: .word 0x02259818
_0224B6B0: .word 0x022597F0
	arm_func_end ov66_0224B66C

	arm_func_start ov66_0224B6B4
ov66_0224B6B4: ; 0x0224B6B4
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224B6D8
	ldr r0, _0224B704 ; =0x02259838
	ldr r1, _0224B708 ; =0x02259818
	ldr r2, _0224B70C ; =0x02259614
	mov r3, #0xe1
	bl sub_020D407C
_0224B6D8:
	cmp r4, #0
	bgt _0224B6F4
	ldr r0, _0224B710 ; =0x02259848
	ldr r1, _0224B708 ; =0x02259818
	ldr r2, _0224B70C ; =0x02259614
	mov r3, #0xe2
	bl sub_020D407C
_0224B6F4:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B414
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224B704: .word 0x02259838
_0224B708: .word 0x02259818
_0224B70C: .word 0x02259614
_0224B710: .word 0x02259848
	arm_func_end ov66_0224B6B4

	arm_func_start ov66_0224B714
ov66_0224B714: ; 0x0224B714
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224B738
	ldr r0, _0224B808 ; =0x02259858
	ldr r1, _0224B80C ; =0x02259818
	ldr r2, _0224B810 ; =0x022596B4
	mov r3, #0xee
	bl sub_020D407C
_0224B738:
	cmp r4, #0
	bne _0224B754
	ldr r0, _0224B814 ; =0x02259868
	ldr r1, _0224B80C ; =0x02259818
	ldr r2, _0224B810 ; =0x022596B4
	mov r3, #0xef
	bl sub_020D407C
_0224B754:
	cmp r5, #0
	cmpne r4, #0
	bne _0224B780
	cmp r5, #0
	cmpeq r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	mvneq r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_0224B780:
	cmp r5, #0
	bne _0224B79C
	ldr r0, _0224B818 ; =0x02259878
	ldr r1, _0224B80C ; =0x02259818
	ldr r2, _0224B810 ; =0x022596B4
	ldr r3, _0224B81C ; =0x00000102
	bl sub_020D407C
_0224B79C:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224B7BC
	ldr r0, _0224B820 ; =0x02259898
	ldr r1, _0224B80C ; =0x02259818
	ldr r2, _0224B810 ; =0x022596B4
	ldr r3, _0224B81C ; =0x00000102
	bl sub_020D407C
_0224B7BC:
	cmp r4, #0
	bne _0224B7D8
	ldr r0, _0224B824 ; =0x02259888
	ldr r1, _0224B80C ; =0x02259818
	ldr r2, _0224B810 ; =0x022596B4
	ldr r3, _0224B828 ; =0x00000103
	bl sub_020D407C
_0224B7D8:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224B7F8
	ldr r0, _0224B82C ; =0x022598A8
	ldr r1, _0224B80C ; =0x02259818
	ldr r2, _0224B810 ; =0x022596B4
	ldr r3, _0224B828 ; =0x00000103
	bl sub_020D407C
_0224B7F8:
	mov r0, r5
	mov r1, r4
	bl sub_020DF9B0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224B808: .word 0x02259858
_0224B80C: .word 0x02259818
_0224B810: .word 0x022596B4
_0224B814: .word 0x02259868
_0224B818: .word 0x02259878
_0224B81C: .word 0x00000102
_0224B820: .word 0x02259898
_0224B824: .word 0x02259888
_0224B828: .word 0x00000103
_0224B82C: .word 0x022598A8
	arm_func_end ov66_0224B714

	arm_func_start ov66_0224B830
ov66_0224B830: ; 0x0224B830
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _0224B854 ; =0x02259838
	ldr r1, _0224B858 ; =0x02259818
	ldr r2, _0224B85C ; =0x022597D4
	ldr r3, _0224B860 ; =0x0000010A
	bl sub_020D407C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0224B854: .word 0x02259838
_0224B858: .word 0x02259818
_0224B85C: .word 0x022597D4
_0224B860: .word 0x0000010A
	arm_func_end ov66_0224B830

	arm_func_start ov66_0224B864
ov66_0224B864: ; 0x0224B864
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0224B8E0 ; =ov66_0224B54C
	ldr ip, _0224B8E4 ; =ov66_0224B66C
	str r1, [sp]
	mov r4, r0
	ldr r3, _0224B8E8 ; =ov66_0224B4EC
	mov r0, #0x1e4
	mov r1, #7
	mov r2, #2
	str ip, [sp, #4]
	bl ov4_021EA224
	cmp r0, #0
	str r0, [r4, #0x80c]
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	mov r2, r1
	mov r0, #0x1e4
	bl ov4_021E9A8C
	cmp r0, #0
	str r0, [r4, #0x810]
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x80c]
	bl ov4_021EA364
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224B8E0: .word ov66_0224B54C
_0224B8E4: .word ov66_0224B66C
_0224B8E8: .word ov66_0224B4EC
	arm_func_end ov66_0224B864

	arm_func_start ov66_0224B8EC
ov66_0224B8EC: ; 0x0224B8EC
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _0224B90C
	ldr r0, _0224B930 ; =0x022598B8
	ldr r1, _0224B934 ; =0x02259818
	ldr r2, _0224B938 ; =0x02259600
	ldr r3, _0224B93C ; =0x00000127
	bl sub_020D407C
_0224B90C:
	ldr r0, [r4, #0x80c]
	cmp r0, #0
	beq _0224B91C
	bl ov4_021EA364
_0224B91C:
	ldr r0, [r4, #0x810]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021E9B50
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224B930: .word 0x022598B8
_0224B934: .word 0x02259818
_0224B938: .word 0x02259600
_0224B93C: .word 0x00000127
	arm_func_end ov66_0224B8EC

	arm_func_start ov66_0224B940
ov66_0224B940: ; 0x0224B940
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1e4
	movs r5, r0
	mov r4, r1
	bne _0224B968
	ldr r0, _0224B9C0 ; =0x022598B8
	ldr r1, _0224B9C4 ; =0x02259818
	ldr r2, _0224B9C8 ; =0x0225963C
	mov r3, #0x134
	bl sub_020D407C
_0224B968:
	mov r0, #0
	add lr, sp, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov ip, #0xf
_0224B980:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0224B980
	ldr r2, _0224B9CC ; =0x00000101
	str r0, [lr]
	add r0, sp, #0
	mov r1, r4
	bl sub_020D8C44
	mov r0, #0
	strb r0, [sp, #0x100]
	ldr r0, [r5, #0x810]
	add r1, sp, #0
	bl ov4_021E9C2C
	add sp, sp, #0x1e4
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0224B9C0: .word 0x022598B8
_0224B9C4: .word 0x02259818
_0224B9C8: .word 0x0225963C
_0224B9CC: .word 0x00000101
	arm_func_end ov66_0224B940

	arm_func_start ov66_0224B9D0
ov66_0224B9D0: ; 0x0224B9D0
	ldr ip, _0224B9D8 ; =sub_020DF9B0
	bx ip
	; .align 2, 0
_0224B9D8: .word sub_020DF9B0
	arm_func_end ov66_0224B9D0

	arm_func_start ov66_0224B9DC
ov66_0224B9DC: ; 0x0224B9DC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs sl, r0
	mov sb, r1
	bne _0224BA00
	ldr r0, _0224BA78 ; =0x022598B8
	ldr r1, _0224BA7C ; =0x02259818
	ldr r2, _0224BA80 ; =0x022596A0
	ldr r3, _0224BA84 ; =0x0000014D
	bl sub_020D407C
_0224BA00:
	ldr r0, [sl, #0x810]
	bl ov4_021E9BBC
	mov r7, r0
	cmp r7, #0
	mov r6, #0
	ble _0224BA70
	ldr r5, _0224BA88 ; =0x022598C8
	ldr r4, _0224BA7C ; =0x02259818
	ldr fp, _0224BA80 ; =0x022596A0
_0224BA24:
	ldr r0, [sl, #0x810]
	mov r1, r6
	bl ov4_021E9BC4
	movs r8, r0
	bne _0224BA4C
	ldr r3, _0224BA8C ; =0x00000153
	mov r0, r5
	mov r1, r4
	mov r2, fp
	bl sub_020D407C
_0224BA4C:
	mov r0, r8
	mov r1, sb
	bl sub_020DF9B0
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r6, r6, #1
	cmp r6, r7
	blt _0224BA24
_0224BA70:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0224BA78: .word 0x022598B8
_0224BA7C: .word 0x02259818
_0224BA80: .word 0x022596A0
_0224BA84: .word 0x0000014D
_0224BA88: .word 0x022598C8
_0224BA8C: .word 0x00000153
	arm_func_end ov66_0224B9DC

	arm_func_start ov66_0224BA90
ov66_0224BA90: ; 0x0224BA90
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1ec
	movs r7, r0
	mov r6, r1
	mov r5, r2
	bne _0224BABC
	ldr r0, _0224BC44 ; =0x022598B8
	ldr r1, _0224BC48 ; =0x02259818
	ldr r2, _0224BC4C ; =0x0225959C
	mov r3, #0x160
	bl sub_020D407C
_0224BABC:
	cmp r6, #0
	bne _0224BAD8
	ldr r0, _0224BC50 ; =0x022598D4
	ldr r1, _0224BC48 ; =0x02259818
	ldr r2, _0224BC4C ; =0x0225959C
	ldr r3, _0224BC54 ; =0x00000162
	bl sub_020D407C
_0224BAD8:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _0224BAF8
	ldr r0, _0224BC58 ; =0x022598E4
	ldr r1, _0224BC48 ; =0x02259818
	ldr r2, _0224BC4C ; =0x0225959C
	ldr r3, _0224BC54 ; =0x00000162
	bl sub_020D407C
_0224BAF8:
	mov r0, r6
	bl sub_020D8B60
	ldr r3, _0224BC5C ; =0x00000101
	cmp r0, r3
	blo _0224BB20
	ldr r0, _0224BC60 ; =0x022598F8
	ldr r1, _0224BC48 ; =0x02259818
	ldr r2, _0224BC4C ; =0x0225959C
	add r3, r3, #0x61
	bl sub_020D407C
_0224BB20:
	cmp r5, #0
	bne _0224BB3C
	ldr r0, _0224BC64 ; =0x02259918
	ldr r1, _0224BC48 ; =0x02259818
	ldr r2, _0224BC4C ; =0x0225959C
	ldr r3, _0224BC68 ; =0x00000163
	bl sub_020D407C
_0224BB3C:
	mov r0, #2
	bl ov4_021D7880
	movs r4, r0
	addeq sp, sp, #0x1ec
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r1, _0224BC6C ; =0x0225992C
	mov r0, #0
	ldrb ip, [r1]
	add lr, sp, #8
	mov r1, r0
	strb ip, [r4]
	mov r2, r0
	mov r3, r0
	mov ip, #0xf
_0224BB74:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0224BB74
	str r0, [lr]
	add ip, sp, #0x10c
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r2, _0224BC5C ; =0x00000101
	mov r1, r6
	add r0, sp, #8
	bl sub_020D8C44
	mov r0, #0
	strb r0, [sp, #0x108]
	ldr r1, _0224BC70 ; =ov66_0224B714
	ldr r0, _0224BC74 ; =ov66_0224B830
	str r1, [sp]
	str r0, [sp, #4]
	ldr r3, _0224BC78 ; =ov66_0224B6B4
	mov r0, #0xe0
	mov r1, #0x3d
	mov r2, #2
	bl ov4_021EA224
	str r0, [sp, #0x13c]
	cmp r0, #0
	addeq sp, sp, #0x1ec
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r3, #0
	str r3, [sp, #0x160]
	str r4, [sp, #0x164]
	str r3, [sp, #0x168]
	strb r3, [sp, #0x16c]
	str r3, [sp]
	ldr r0, [r7, #0x810]
	ldr r2, _0224BC7C ; =ov66_0224B9D0
	add r1, sp, #8
	bl ov4_021E9F18
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	beq _0224BC30
	ldr r0, [r7, #0x810]
	bl ov4_021E9DB0
_0224BC30:
	ldr r0, [r7, #0x80c]
	add r1, sp, #8
	bl ov4_021EA44C
	add sp, sp, #0x1ec
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224BC44: .word 0x022598B8
_0224BC48: .word 0x02259818
_0224BC4C: .word 0x0225959C
_0224BC50: .word 0x022598D4
_0224BC54: .word 0x00000162
_0224BC58: .word 0x022598E4
_0224BC5C: .word 0x00000101
_0224BC60: .word 0x022598F8
_0224BC64: .word 0x02259918
_0224BC68: .word 0x00000163
_0224BC6C: .word 0x0225992C
_0224BC70: .word ov66_0224B714
_0224BC74: .word ov66_0224B830
_0224BC78: .word ov66_0224B6B4
_0224BC7C: .word ov66_0224B9D0
	arm_func_end ov66_0224BA90

	arm_func_start ov66_0224BC80
ov66_0224BC80: ; 0x0224BC80
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x1e8
	movs r5, r0
	mov r4, r1
	bne _0224BCA8
	ldr r0, _0224BD6C ; =0x022598B8
	ldr r1, _0224BD70 ; =0x02259818
	ldr r2, _0224BD74 ; =0x02259578
	ldr r3, _0224BD78 ; =0x00000189
	bl sub_020D407C
_0224BCA8:
	cmp r4, #0
	bne _0224BCC4
	ldr r0, _0224BD7C ; =0x022598D4
	ldr r1, _0224BD70 ; =0x02259818
	ldr r2, _0224BD74 ; =0x02259578
	ldr r3, _0224BD80 ; =0x0000018B
	bl sub_020D407C
_0224BCC4:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224BCE4
	ldr r0, _0224BD84 ; =0x022598E4
	ldr r1, _0224BD70 ; =0x02259818
	ldr r2, _0224BD74 ; =0x02259578
	ldr r3, _0224BD80 ; =0x0000018B
	bl sub_020D407C
_0224BCE4:
	mov r0, r4
	bl sub_020D8B60
	ldr r3, _0224BD88 ; =0x00000101
	cmp r0, r3
	blo _0224BD0C
	ldr r0, _0224BD8C ; =0x022598F8
	ldr r1, _0224BD70 ; =0x02259818
	ldr r2, _0224BD74 ; =0x02259578
	add r3, r3, #0x8a
	bl sub_020D407C
_0224BD0C:
	ldr r2, _0224BD88 ; =0x00000101
	add r0, sp, #4
	mov r1, r4
	bl sub_020D8C44
	mov r3, #0
	strb r3, [sp, #0x104]
	str r3, [sp]
	ldr r0, [r5, #0x810]
	ldr r2, _0224BD90 ; =ov66_0224B9D0
	add r1, sp, #4
	bl ov4_021E9F18
	mov r1, r0
	mvn r0, #0
	cmp r1, r0
	beq _0224BD58
	ldr r0, [r5, #0x810]
	bl ov4_021E9DB0
	add sp, sp, #0x1e8
	ldmia sp!, {r3, r4, r5, pc}
_0224BD58:
	ldr r0, [r5, #0x80c]
	add r1, sp, #4
	bl ov4_021EA4F4
	add sp, sp, #0x1e8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224BD6C: .word 0x022598B8
_0224BD70: .word 0x02259818
_0224BD74: .word 0x02259578
_0224BD78: .word 0x00000189
_0224BD7C: .word 0x022598D4
_0224BD80: .word 0x0000018B
_0224BD84: .word 0x022598E4
_0224BD88: .word 0x00000101
_0224BD8C: .word 0x022598F8
_0224BD90: .word ov66_0224B9D0
	arm_func_end ov66_0224BC80

	arm_func_start ov66_0224BD94
ov66_0224BD94: ; 0x0224BD94
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224BDB8
	ldr r0, _0224BE38 ; =0x022598B8
	ldr r1, _0224BE3C ; =0x02259818
	ldr r2, _0224BE40 ; =0x02259744
	ldr r3, _0224BE44 ; =0x000001A9
	bl sub_020D407C
_0224BDB8:
	cmp r4, #0
	bne _0224BDD4
	ldr r0, _0224BE48 ; =0x022598D4
	ldr r1, _0224BE3C ; =0x02259818
	ldr r2, _0224BE40 ; =0x02259744
	ldr r3, _0224BE4C ; =0x000001AB
	bl sub_020D407C
_0224BDD4:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224BDF4
	ldr r0, _0224BE50 ; =0x022598E4
	ldr r1, _0224BE3C ; =0x02259818
	ldr r2, _0224BE40 ; =0x02259744
	ldr r3, _0224BE4C ; =0x000001AB
	bl sub_020D407C
_0224BDF4:
	mov r0, r4
	bl sub_020D8B60
	ldr r3, _0224BE54 ; =0x00000101
	cmp r0, r3
	blo _0224BE1C
	ldr r0, _0224BE58 ; =0x022598F8
	ldr r1, _0224BE3C ; =0x02259818
	ldr r2, _0224BE40 ; =0x02259744
	add r3, r3, #0xaa
	bl sub_020D407C
_0224BE1C:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B4B4
	cmp r0, #0
	moveq r0, #0
	addne r0, r0, #0x104
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224BE38: .word 0x022598B8
_0224BE3C: .word 0x02259818
_0224BE40: .word 0x02259744
_0224BE44: .word 0x000001A9
_0224BE48: .word 0x022598D4
_0224BE4C: .word 0x000001AB
_0224BE50: .word 0x022598E4
_0224BE54: .word 0x00000101
_0224BE58: .word 0x022598F8
	arm_func_end ov66_0224BD94

	arm_func_start ov66_0224BE5C
ov66_0224BE5C: ; 0x0224BE5C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224BE80
	ldr r0, _0224BFB4 ; =0x02259838
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	mov r3, #0x1bc
	bl sub_020D407C
_0224BE80:
	cmp r4, #0
	bne _0224BE9C
	ldr r0, _0224BFC0 ; =0x02259930
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	ldr r3, _0224BFC4 ; =0x000001BD
	bl sub_020D407C
_0224BE9C:
	cmp r5, #0
	bne _0224BEB8
	ldr r0, _0224BFC8 ; =0x02259944
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	ldr r3, _0224BFCC ; =0x000001C2
	bl sub_020D407C
_0224BEB8:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224BED8
	ldr r0, _0224BFD0 ; =0x02259958
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	ldr r3, _0224BFCC ; =0x000001C2
	bl sub_020D407C
_0224BED8:
	mov r0, r5
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224BEFC
	ldr r0, _0224BFD4 ; =0x02259970
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	ldr r3, _0224BFCC ; =0x000001C2
	bl sub_020D407C
_0224BEFC:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _0224BF1C
	ldr r0, _0224BFD8 ; =0x02259990
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	ldr r3, _0224BFDC ; =0x000001C7
	bl sub_020D407C
_0224BF1C:
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _0224BF50
	ldr r0, _0224BFE0 ; =0x022599A4
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	ldr r3, _0224BFE4 ; =0x000001D9
	bl sub_020D407C
	ldmia sp!, {r3, r4, r5, pc}
_0224BF50:
	str r0, [r4, #8]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r1, #1
	mov r1, r1, lsl #2
	bl ov4_021D7894
	cmp r0, #0
	bne _0224BF88
	ldr r0, _0224BFE0 ; =0x022599A4
	ldr r1, _0224BFB8 ; =0x02259818
	ldr r2, _0224BFBC ; =0x0225975C
	mov r3, #0x1e0
	bl sub_020D407C
	ldmia sp!, {r3, r4, r5, pc}
_0224BF88:
	str r0, [r4, #0xc]
	ldmib r4, {r0, r1}
	str r5, [r1, r0, lsl #2]
	ldr r2, [r5, #0xdc]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	str r2, [r1, r0, lsl #2]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224BFB4: .word 0x02259838
_0224BFB8: .word 0x02259818
_0224BFBC: .word 0x0225975C
_0224BFC0: .word 0x02259930
_0224BFC4: .word 0x000001BD
_0224BFC8: .word 0x02259944
_0224BFCC: .word 0x000001C2
_0224BFD0: .word 0x02259958
_0224BFD4: .word 0x02259970
_0224BFD8: .word 0x02259990
_0224BFDC: .word 0x000001C7
_0224BFE0: .word 0x022599A4
_0224BFE4: .word 0x000001D9
	arm_func_end ov66_0224BE5C

	arm_func_start ov66_0224BFE8
ov66_0224BFE8: ; 0x0224BFE8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _0224C018
	ldr r0, _0224C108 ; =0x022598B8
	ldr r1, _0224C10C ; =0x02259818
	ldr r2, _0224C110 ; =0x02259678
	mov r3, #0x1f0
	bl sub_020D407C
_0224C018:
	cmp r6, #0
	bne _0224C034
	ldr r0, _0224C114 ; =0x022598D4
	ldr r1, _0224C10C ; =0x02259818
	ldr r2, _0224C110 ; =0x02259678
	ldr r3, _0224C118 ; =0x000001F2
	bl sub_020D407C
_0224C034:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _0224C054
	ldr r0, _0224C11C ; =0x022598E4
	ldr r1, _0224C10C ; =0x02259818
	ldr r2, _0224C110 ; =0x02259678
	ldr r3, _0224C118 ; =0x000001F2
	bl sub_020D407C
_0224C054:
	mov r0, r6
	bl sub_020D8B60
	ldr r3, _0224C120 ; =0x00000101
	cmp r0, r3
	blo _0224C07C
	ldr r0, _0224C124 ; =0x022598F8
	ldr r1, _0224C10C ; =0x02259818
	ldr r2, _0224C110 ; =0x02259678
	add r3, r3, #0xf1
	bl sub_020D407C
_0224C07C:
	cmp r5, #0
	bne _0224C098
	ldr r0, _0224C128 ; =0x022599A8
	ldr r1, _0224C10C ; =0x02259818
	ldr r2, _0224C110 ; =0x02259678
	ldr r3, _0224C12C ; =0x000001F3
	bl sub_020D407C
_0224C098:
	mov r0, r7
	mov r1, r6
	bl ov66_0224B4B4
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, #0
	str r7, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [r0, #0x134]
	ldr r1, _0224C130 ; =ov66_0224BE5C
	add r2, sp, #8
	bl ov4_021EA638
	ldr r1, [sp, #0x14]
	mov r0, r7
	stmia sp, {r1, r4}
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	mov r1, r6
	blx r5
	ldr r0, [sp, #0x10]
	bl ov4_021D78B0
	ldr r0, [sp, #0x14]
	bl ov4_021D78B0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C108: .word 0x022598B8
_0224C10C: .word 0x02259818
_0224C110: .word 0x02259678
_0224C114: .word 0x022598D4
_0224C118: .word 0x000001F2
_0224C11C: .word 0x022598E4
_0224C120: .word 0x00000101
_0224C124: .word 0x022598F8
_0224C128: .word 0x022599A8
_0224C12C: .word 0x000001F3
_0224C130: .word ov66_0224BE5C
	arm_func_end ov66_0224BFE8

	arm_func_start ov66_0224C134
ov66_0224C134: ; 0x0224C134
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224C158
	ldr r0, _0224C174 ; =0x022598B8
	ldr r1, _0224C178 ; =0x02259818
	ldr r2, _0224C17C ; =0x0225955C
	ldr r3, _0224C180 ; =0x0000020F
	bl sub_020D407C
_0224C158:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B4B4
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224C174: .word 0x022598B8
_0224C178: .word 0x02259818
_0224C17C: .word 0x0225955C
_0224C180: .word 0x0000020F
	arm_func_end ov66_0224C134

	arm_func_start ov66_0224C184
ov66_0224C184: ; 0x0224C184
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _0224C1AC
	ldr r0, _0224C250 ; =0x022598B8
	ldr r1, _0224C254 ; =0x02259818
	ldr r2, _0224C258 ; =0x022595B0
	ldr r3, _0224C25C ; =0x0000021A
	bl sub_020D407C
_0224C1AC:
	cmp r5, #0
	bne _0224C1C8
	ldr r0, _0224C260 ; =0x022598D4
	ldr r1, _0224C254 ; =0x02259818
	ldr r2, _0224C258 ; =0x022595B0
	mov r3, #0x21c
	bl sub_020D407C
_0224C1C8:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224C1E8
	ldr r0, _0224C264 ; =0x022598E4
	ldr r1, _0224C254 ; =0x02259818
	ldr r2, _0224C258 ; =0x022595B0
	mov r3, #0x21c
	bl sub_020D407C
_0224C1E8:
	mov r0, r5
	bl sub_020D8B60
	ldr r1, _0224C268 ; =0x00000101
	cmp r0, r1
	blo _0224C210
	ldr r0, _0224C26C ; =0x022598F8
	ldr r1, _0224C254 ; =0x02259818
	ldr r2, _0224C258 ; =0x022595B0
	mov r3, #0x21c
	bl sub_020D407C
_0224C210:
	mov r0, r6
	mov r1, r5
	bl ov66_0224B4B4
	movs r1, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r1, #0x158]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r4
	add r1, r1, #0x138
	mov r2, #0x20
	bl sub_020D50B8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224C250: .word 0x022598B8
_0224C254: .word 0x02259818
_0224C258: .word 0x022595B0
_0224C25C: .word 0x0000021A
_0224C260: .word 0x022598D4
_0224C264: .word 0x022598E4
_0224C268: .word 0x00000101
_0224C26C: .word 0x022598F8
	arm_func_end ov66_0224C184

	arm_func_start ov66_0224C270
ov66_0224C270: ; 0x0224C270
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _0224C298
	ldr r0, _0224C32C ; =0x022598B8
	ldr r1, _0224C330 ; =0x02259818
	ldr r2, _0224C334 ; =0x02259588
	ldr r3, _0224C338 ; =0x00000233
	bl sub_020D407C
_0224C298:
	cmp r5, #0
	bne _0224C2B4
	ldr r0, _0224C33C ; =0x022598D4
	ldr r1, _0224C330 ; =0x02259818
	ldr r2, _0224C334 ; =0x02259588
	ldr r3, _0224C340 ; =0x00000235
	bl sub_020D407C
_0224C2B4:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224C2D4
	ldr r0, _0224C344 ; =0x022598E4
	ldr r1, _0224C330 ; =0x02259818
	ldr r2, _0224C334 ; =0x02259588
	ldr r3, _0224C340 ; =0x00000235
	bl sub_020D407C
_0224C2D4:
	mov r0, r5
	bl sub_020D8B60
	ldr r3, _0224C348 ; =0x00000101
	cmp r0, r3
	blo _0224C2FC
	ldr r0, _0224C34C ; =0x022598F8
	ldr r1, _0224C330 ; =0x02259818
	ldr r2, _0224C334 ; =0x02259588
	add r3, r3, #0x134
	bl sub_020D407C
_0224C2FC:
	mov r0, r6
	mov r1, r5
	bl ov66_0224B4B4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, #1
	str r1, [r0, #0x158]
	mov r1, r4
	add r0, r0, #0x138
	mov r2, #0x20
	bl sub_020D50B8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224C32C: .word 0x022598B8
_0224C330: .word 0x02259818
_0224C334: .word 0x02259588
_0224C338: .word 0x00000233
_0224C33C: .word 0x022598D4
_0224C340: .word 0x00000235
_0224C344: .word 0x022598E4
_0224C348: .word 0x00000101
_0224C34C: .word 0x022598F8
	arm_func_end ov66_0224C270

	arm_func_start ov66_0224C350
ov66_0224C350: ; 0x0224C350
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r0
	mov r4, r1
	mov r6, r2
	bne _0224C378
	ldr r0, _0224C430 ; =0x022598B8
	ldr r1, _0224C434 ; =0x02259818
	ldr r2, _0224C438 ; =0x022596CC
	ldr r3, _0224C43C ; =0x0000024A
	bl sub_020D407C
_0224C378:
	cmp r4, #0
	bne _0224C394
	ldr r0, _0224C440 ; =0x022598D4
	ldr r1, _0224C434 ; =0x02259818
	ldr r2, _0224C438 ; =0x022596CC
	mov r3, #0x24c
	bl sub_020D407C
_0224C394:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224C3B4
	ldr r0, _0224C444 ; =0x022598E4
	ldr r1, _0224C434 ; =0x02259818
	ldr r2, _0224C438 ; =0x022596CC
	mov r3, #0x24c
	bl sub_020D407C
_0224C3B4:
	mov r0, r4
	bl sub_020D8B60
	ldr r1, _0224C448 ; =0x00000101
	cmp r0, r1
	blo _0224C3DC
	ldr r0, _0224C44C ; =0x022598F8
	ldr r1, _0224C434 ; =0x02259818
	ldr r2, _0224C438 ; =0x022596CC
	mov r3, #0x24c
	bl sub_020D407C
_0224C3DC:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B4B4
	movs r5, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r5, #0x15c]
	bl ov4_021D78B0
	cmp r6, #0
	ldreq r6, _0224C450 ; =0x0225992C
	mov r0, r6
	bl sub_020D8B60
	mov r4, r0
	add r0, r4, #1
	bl ov4_021D7880
	str r0, [r5, #0x15c]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r6
	add r2, r4, #1
	bl sub_020D50B8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224C430: .word 0x022598B8
_0224C434: .word 0x02259818
_0224C438: .word 0x022596CC
_0224C43C: .word 0x0000024A
_0224C440: .word 0x022598D4
_0224C444: .word 0x022598E4
_0224C448: .word 0x00000101
_0224C44C: .word 0x022598F8
_0224C450: .word 0x0225992C
	arm_func_end ov66_0224C350

	arm_func_start ov66_0224C454
ov66_0224C454: ; 0x0224C454
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224C478
	ldr r0, _0224C4F8 ; =0x022598B8
	ldr r1, _0224C4FC ; =0x02259818
	ldr r2, _0224C500 ; =0x022596E4
	mov r3, #0x278
	bl sub_020D407C
_0224C478:
	cmp r4, #0
	bne _0224C494
	ldr r0, _0224C504 ; =0x022598D4
	ldr r1, _0224C4FC ; =0x02259818
	ldr r2, _0224C500 ; =0x022596E4
	ldr r3, _0224C508 ; =0x0000027A
	bl sub_020D407C
_0224C494:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224C4B4
	ldr r0, _0224C50C ; =0x022598E4
	ldr r1, _0224C4FC ; =0x02259818
	ldr r2, _0224C500 ; =0x022596E4
	ldr r3, _0224C508 ; =0x0000027A
	bl sub_020D407C
_0224C4B4:
	mov r0, r4
	bl sub_020D8B60
	ldr r1, _0224C510 ; =0x00000101
	cmp r0, r1
	blo _0224C4DC
	ldr r0, _0224C514 ; =0x022598F8
	ldr r1, _0224C4FC ; =0x02259818
	ldr r2, _0224C500 ; =0x022596E4
	ldr r3, _0224C508 ; =0x0000027A
	bl sub_020D407C
_0224C4DC:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B4B4
	cmp r0, #0
	movne r1, #1
	strne r1, [r0, #0x160]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224C4F8: .word 0x022598B8
_0224C4FC: .word 0x02259818
_0224C500: .word 0x022596E4
_0224C504: .word 0x022598D4
_0224C508: .word 0x0000027A
_0224C50C: .word 0x022598E4
_0224C510: .word 0x00000101
_0224C514: .word 0x022598F8
	arm_func_end ov66_0224C454

	arm_func_start ov66_0224C518
ov66_0224C518: ; 0x0224C518
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224C53C
	ldr r0, _0224C5BC ; =0x022598B8
	ldr r1, _0224C5C0 ; =0x02259818
	ldr r2, _0224C5C4 ; =0x022597A4
	ldr r3, _0224C5C8 ; =0x0000028A
	bl sub_020D407C
_0224C53C:
	cmp r4, #0
	bne _0224C558
	ldr r0, _0224C5CC ; =0x022598D4
	ldr r1, _0224C5C0 ; =0x02259818
	ldr r2, _0224C5C4 ; =0x022597A4
	mov r3, #0x28c
	bl sub_020D407C
_0224C558:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224C578
	ldr r0, _0224C5D0 ; =0x022598E4
	ldr r1, _0224C5C0 ; =0x02259818
	ldr r2, _0224C5C4 ; =0x022597A4
	mov r3, #0x28c
	bl sub_020D407C
_0224C578:
	mov r0, r4
	bl sub_020D8B60
	ldr r1, _0224C5D4 ; =0x00000101
	cmp r0, r1
	blo _0224C5A0
	ldr r0, _0224C5D8 ; =0x022598F8
	ldr r1, _0224C5C0 ; =0x02259818
	ldr r2, _0224C5C4 ; =0x022597A4
	mov r3, #0x28c
	bl sub_020D407C
_0224C5A0:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B4B4
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #0x160]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224C5BC: .word 0x022598B8
_0224C5C0: .word 0x02259818
_0224C5C4: .word 0x022597A4
_0224C5C8: .word 0x0000028A
_0224C5CC: .word 0x022598D4
_0224C5D0: .word 0x022598E4
_0224C5D4: .word 0x00000101
_0224C5D8: .word 0x022598F8
	arm_func_end ov66_0224C518

	arm_func_start ov66_0224C5DC
ov66_0224C5DC: ; 0x0224C5DC
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r4, r1
	mov r5, r2
	bne _0224C604
	ldr r0, _0224C698 ; =0x022598B8
	ldr r1, _0224C69C ; =0x02259818
	ldr r2, _0224C6A0 ; =0x02259628
	ldr r3, _0224C6A4 ; =0x0000029A
	bl sub_020D407C
_0224C604:
	cmp r4, #0
	bne _0224C620
	ldr r0, _0224C6A8 ; =0x022598D4
	ldr r1, _0224C69C ; =0x02259818
	ldr r2, _0224C6A0 ; =0x02259628
	mov r3, #0x29c
	bl sub_020D407C
_0224C620:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224C640
	ldr r0, _0224C6AC ; =0x022598E4
	ldr r1, _0224C69C ; =0x02259818
	ldr r2, _0224C6A0 ; =0x02259628
	mov r3, #0x29c
	bl sub_020D407C
_0224C640:
	mov r0, r4
	bl sub_020D8B60
	ldr r1, _0224C6B0 ; =0x00000101
	cmp r0, r1
	blo _0224C668
	ldr r0, _0224C6B4 ; =0x022598F8
	ldr r1, _0224C69C ; =0x02259818
	ldr r2, _0224C6A0 ; =0x02259628
	mov r3, #0x29c
	bl sub_020D407C
_0224C668:
	mov r0, r6
	mov r1, r4
	bl ov66_0224B4B4
	movs r4, r0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r1, r5
	add r0, r4, #0x164
	mov r2, #0x80
	bl sub_020D8C44
	mov r0, #0
	strb r0, [r4, #0x1e3]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224C698: .word 0x022598B8
_0224C69C: .word 0x02259818
_0224C6A0: .word 0x02259628
_0224C6A4: .word 0x0000029A
_0224C6A8: .word 0x022598D4
_0224C6AC: .word 0x022598E4
_0224C6B0: .word 0x00000101
_0224C6B4: .word 0x022598F8
	arm_func_end ov66_0224C5DC

	arm_func_start ov66_0224C6B8
ov66_0224C6B8: ; 0x0224C6B8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0224C6DC
	ldr r0, _0224C764 ; =0x022598B8
	ldr r1, _0224C768 ; =0x02259818
	ldr r2, _0224C76C ; =0x02259714
	mov r3, #0x2bc
	bl sub_020D407C
_0224C6DC:
	cmp r4, #0
	bne _0224C6F8
	ldr r0, _0224C770 ; =0x022598D4
	ldr r1, _0224C768 ; =0x02259818
	ldr r2, _0224C76C ; =0x02259714
	ldr r3, _0224C774 ; =0x000002BE
	bl sub_020D407C
_0224C6F8:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224C718
	ldr r0, _0224C778 ; =0x022598E4
	ldr r1, _0224C768 ; =0x02259818
	ldr r2, _0224C76C ; =0x02259714
	ldr r3, _0224C774 ; =0x000002BE
	bl sub_020D407C
_0224C718:
	mov r0, r4
	bl sub_020D8B60
	ldr r1, _0224C77C ; =0x00000101
	cmp r0, r1
	blo _0224C740
	ldr r0, _0224C780 ; =0x022598F8
	ldr r1, _0224C768 ; =0x02259818
	ldr r2, _0224C76C ; =0x02259714
	ldr r3, _0224C774 ; =0x000002BE
	bl sub_020D407C
_0224C740:
	mov r0, r5
	mov r1, r4
	bl ov66_0224B4B4
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r0, #0x134]
	bl ov4_021EA3D8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224C764: .word 0x022598B8
_0224C768: .word 0x02259818
_0224C76C: .word 0x02259714
_0224C770: .word 0x022598D4
_0224C774: .word 0x000002BE
_0224C778: .word 0x022598E4
_0224C77C: .word 0x00000101
_0224C780: .word 0x022598F8
	arm_func_end ov66_0224C6B8

	arm_func_start ov66_0224C784
ov66_0224C784: ; 0x0224C784
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xe0
	movs r7, r0
	mov r6, r1
	mov r4, r2
	mov r5, r3
	bne _0224C7B4
	ldr r0, _0224C960 ; =0x022598B8
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	mov r3, #0x2d0
	bl sub_020D407C
_0224C7B4:
	cmp r6, #0
	bne _0224C7D0
	ldr r0, _0224C96C ; =0x022599BC
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	ldr r3, _0224C970 ; =0x000002D2
	bl sub_020D407C
_0224C7D0:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _0224C7F0
	ldr r0, _0224C974 ; =0x022599CC
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	ldr r3, _0224C970 ; =0x000002D2
	bl sub_020D407C
_0224C7F0:
	mov r0, r6
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224C814
	ldr r0, _0224C978 ; =0x022599DC
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	ldr r3, _0224C970 ; =0x000002D2
	bl sub_020D407C
_0224C814:
	cmp r4, #0
	bne _0224C830
	ldr r0, _0224C97C ; =0x022598D4
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	ldr r3, _0224C980 ; =0x000002D3
	bl sub_020D407C
_0224C830:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224C850
	ldr r0, _0224C984 ; =0x022598E4
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	ldr r3, _0224C980 ; =0x000002D3
	bl sub_020D407C
_0224C850:
	cmp r5, #0
	blt _0224C860
	cmp r5, #3
	ble _0224C874
_0224C860:
	ldr r0, _0224C988 ; =0x022599F4
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	mov r3, #0x2d4
	bl sub_020D407C
_0224C874:
	mov r0, r7
	mov r1, r4
	bl ov66_0224B4B4
	movs r4, r0
	addeq sp, sp, #0xe0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	add lr, sp, #0
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov ip, #7
_0224C8A4:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0224C8A4
	add r0, sp, #0
	mov r1, r6
	mov r2, #0x80
	bl sub_020D8C44
	ldr r1, [sp, #0xf8]
	mov r0, #0
	strb r0, [sp, #0x7f]
	cmp r1, #0
	ldrne r0, [sp, #0xfc]
	cmpne r0, #0
	moveq r0, #0
	streq r0, [sp, #0xd8]
	beq _0224C91C
	add r0, sp, #0x80
	mov r2, #0x18
	bl sub_020D8C44
	mov r3, #0
	ldr r1, [sp, #0xfc]
	add r0, sp, #0x98
	mov r2, #0x40
	strb r3, [sp, #0x97]
	bl sub_020D8C44
	mov r1, #0
	mov r0, #1
	strb r1, [sp, #0xd7]
	str r0, [sp, #0xd8]
_0224C91C:
	str r5, [sp, #0xdc]
	ldr r0, [r4, #0x134]
	add r1, sp, #0
	bl ov4_021EA44C
	ldr r0, [r4, #0x134]
	add r1, sp, #0
	bl ov4_021EA598
	cmp r0, #0
	addne sp, sp, #0xe0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _0224C98C ; =0x02259A10
	ldr r1, _0224C964 ; =0x02259818
	ldr r2, _0224C968 ; =0x0225972C
	ldr r3, _0224C990 ; =0x000002F7
	bl sub_020D407C
	add sp, sp, #0xe0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224C960: .word 0x022598B8
_0224C964: .word 0x02259818
_0224C968: .word 0x0225972C
_0224C96C: .word 0x022599BC
_0224C970: .word 0x000002D2
_0224C974: .word 0x022599CC
_0224C978: .word 0x022599DC
_0224C97C: .word 0x022598D4
_0224C980: .word 0x000002D3
_0224C984: .word 0x022598E4
_0224C988: .word 0x022599F4
_0224C98C: .word 0x02259A10
_0224C990: .word 0x000002F7
	arm_func_end ov66_0224C784

	arm_func_start ov66_0224C994
ov66_0224C994: ; 0x0224C994
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xe0
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _0224C9C0
	ldr r0, _0224CAA0 ; =0x022598B8
	ldr r1, _0224CAA4 ; =0x02259818
	ldr r2, _0224CAA8 ; =0x022595EC
	ldr r3, _0224CAAC ; =0x000002FE
	bl sub_020D407C
_0224C9C0:
	cmp r5, #0
	bne _0224C9DC
	ldr r0, _0224CAB0 ; =0x02259A44
	ldr r1, _0224CAA4 ; =0x02259818
	ldr r2, _0224CAA8 ; =0x022595EC
	mov r3, #0x300
	bl sub_020D407C
_0224C9DC:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224C9FC
	ldr r0, _0224CAB4 ; =0x02259A54
	ldr r1, _0224CAA4 ; =0x02259818
	ldr r2, _0224CAA8 ; =0x022595EC
	mov r3, #0x300
	bl sub_020D407C
_0224C9FC:
	mov r0, r5
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224CA20
	ldr r0, _0224CAB8 ; =0x02259A64
	ldr r1, _0224CAA4 ; =0x02259818
	ldr r2, _0224CAA8 ; =0x022595EC
	mov r3, #0x300
	bl sub_020D407C
_0224CA20:
	cmp r4, #0
	bne _0224CA3C
	ldr r0, _0224CABC ; =0x022598D4
	ldr r1, _0224CAA4 ; =0x02259818
	ldr r2, _0224CAA8 ; =0x022595EC
	ldr r3, _0224CAC0 ; =0x00000301
	bl sub_020D407C
_0224CA3C:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224CA5C
	ldr r0, _0224CAC4 ; =0x022598E4
	ldr r1, _0224CAA4 ; =0x02259818
	ldr r2, _0224CAA8 ; =0x022595EC
	ldr r3, _0224CAC0 ; =0x00000301
	bl sub_020D407C
_0224CA5C:
	mov r0, r6
	mov r1, r4
	bl ov66_0224B4B4
	movs r4, r0
	addeq sp, sp, #0xe0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x80
	bl sub_020D8C44
	mov r0, #0
	strb r0, [sp, #0x7f]
	ldr r0, [r4, #0x134]
	add r1, sp, #0
	bl ov4_021EA4F4
	add sp, sp, #0xe0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0224CAA0: .word 0x022598B8
_0224CAA4: .word 0x02259818
_0224CAA8: .word 0x022595EC
_0224CAAC: .word 0x000002FE
_0224CAB0: .word 0x02259A44
_0224CAB4: .word 0x02259A54
_0224CAB8: .word 0x02259A64
_0224CABC: .word 0x022598D4
_0224CAC0: .word 0x00000301
_0224CAC4: .word 0x022598E4
	arm_func_end ov66_0224C994

	arm_func_start ov66_0224CAC8
ov66_0224CAC8: ; 0x0224CAC8
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	mov r5, r1
	bne _0224CAEC
	ldr r0, _0224CBB4 ; =0x02259838
	ldr r1, _0224CBB8 ; =0x02259818
	ldr r2, _0224CBBC ; =0x0225978C
	mov r3, #0x318
	bl sub_020D407C
_0224CAEC:
	cmp r5, #0
	bne _0224CB08
	ldr r0, _0224CBC0 ; =0x02259930
	ldr r1, _0224CBB8 ; =0x02259818
	ldr r2, _0224CBBC ; =0x0225978C
	ldr r3, _0224CBC4 ; =0x00000319
	bl sub_020D407C
_0224CB08:
	ldr r0, [r4, #0x134]
	cmp r0, #0
	bne _0224CB28
	ldr r0, _0224CBC8 ; =0x02259A7C
	ldr r1, _0224CBB8 ; =0x02259818
	ldr r2, _0224CBBC ; =0x0225978C
	ldr r3, _0224CBCC ; =0x0000031E
	bl sub_020D407C
_0224CB28:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0224CB48
	ldr r0, _0224CBD0 ; =0x02259A94
	ldr r1, _0224CBB8 ; =0x02259818
	ldr r2, _0224CBBC ; =0x0225978C
	ldr r3, _0224CBD4 ; =0x00000323
	bl sub_020D407C
_0224CB48:
	ldr r0, [r5, #4]
	ldrsb r0, [r0]
	cmp r0, #0
	bne _0224CB6C
	ldr r0, _0224CBD8 ; =0x02259AA8
	ldr r1, _0224CBB8 ; =0x02259818
	ldr r2, _0224CBBC ; =0x0225978C
	mov r3, #0x324
	bl sub_020D407C
_0224CB6C:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _0224CB8C
	ldr r0, _0224CBDC ; =0x02259AC4
	ldr r1, _0224CBB8 ; =0x02259818
	ldr r2, _0224CBBC ; =0x0225978C
	ldr r3, _0224CBE0 ; =0x00000325
	bl sub_020D407C
_0224CB8C:
	ldr r0, [r4, #0x134]
	ldr r1, [r5, #4]
	bl ov4_021EA598
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0xc]
	mov r2, r4
	ldmia r5, {r0, r1, ip}
	blx ip
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224CBB4: .word 0x02259838
_0224CBB8: .word 0x02259818
_0224CBBC: .word 0x0225978C
_0224CBC0: .word 0x02259930
_0224CBC4: .word 0x00000319
_0224CBC8: .word 0x02259A7C
_0224CBCC: .word 0x0000031E
_0224CBD0: .word 0x02259A94
_0224CBD4: .word 0x00000323
_0224CBD8: .word 0x02259AA8
_0224CBDC: .word 0x02259AC4
_0224CBE0: .word 0x00000325
	arm_func_end ov66_0224CAC8

	arm_func_start ov66_0224CBE4
ov66_0224CBE4: ; 0x0224CBE4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0xf0
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _0224CC14
	ldr r0, _0224CCD4 ; =0x022598B8
	ldr r1, _0224CCD8 ; =0x02259818
	ldr r2, _0224CCDC ; =0x02259650
	ldr r3, _0224CCE0 ; =0x00000336
	bl sub_020D407C
_0224CC14:
	cmp r6, #0
	bne _0224CC30
	ldr r0, _0224CCE4 ; =0x02259A44
	ldr r1, _0224CCD8 ; =0x02259818
	ldr r2, _0224CCDC ; =0x02259650
	mov r3, #0x338
	bl sub_020D407C
_0224CC30:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _0224CC50
	ldr r0, _0224CCE8 ; =0x02259A54
	ldr r1, _0224CCD8 ; =0x02259818
	ldr r2, _0224CCDC ; =0x02259650
	mov r3, #0x338
	bl sub_020D407C
_0224CC50:
	mov r0, r6
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224CC74
	ldr r0, _0224CCEC ; =0x02259A64
	ldr r1, _0224CCD8 ; =0x02259818
	ldr r2, _0224CCDC ; =0x02259650
	mov r3, #0x338
	bl sub_020D407C
_0224CC74:
	cmp r5, #0
	bne _0224CC90
	ldr r0, _0224CCF0 ; =0x022599A8
	ldr r1, _0224CCD8 ; =0x02259818
	ldr r2, _0224CCDC ; =0x02259650
	ldr r3, _0224CCF4 ; =0x00000339
	bl sub_020D407C
_0224CC90:
	add r0, sp, #0x10
	mov r1, r6
	mov r2, #0x80
	bl sub_020D8C44
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [sp, #0x8f]
	str r7, [sp]
	str r5, [sp, #8]
	str r4, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [r7, #0x80c]
	ldr r1, _0224CCF8 ; =ov66_0224CAC8
	add r2, sp, #0
	bl ov4_021EA638
	add sp, sp, #0xf0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CCD4: .word 0x022598B8
_0224CCD8: .word 0x02259818
_0224CCDC: .word 0x02259650
_0224CCE0: .word 0x00000336
_0224CCE4: .word 0x02259A44
_0224CCE8: .word 0x02259A54
_0224CCEC: .word 0x02259A64
_0224CCF0: .word 0x022599A8
_0224CCF4: .word 0x00000339
_0224CCF8: .word ov66_0224CAC8
	arm_func_end ov66_0224CBE4

	arm_func_start ov66_0224CCFC
ov66_0224CCFC: ; 0x0224CCFC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xfc
	movs r5, r0
	mov r4, r1
	bne _0224CD24
	ldr r0, _0224CF0C ; =0x02259838
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF18 ; =0x0000034F
	bl sub_020D407C
_0224CD24:
	cmp r4, #0
	bne _0224CD40
	ldr r0, _0224CF1C ; =0x02259930
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	mov r3, #0x350
	bl sub_020D407C
_0224CD40:
	ldr r0, [r5, #0x134]
	cmp r0, #0
	bne _0224CD60
	ldr r0, _0224CF20 ; =0x02259A7C
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF24 ; =0x00000355
	bl sub_020D407C
_0224CD60:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0224CD80
	ldr r0, _0224CF28 ; =0x02259ADC
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF2C ; =0x0000035A
	bl sub_020D407C
_0224CD80:
	ldr r0, [r4, #8]
	ldrsb r0, [r0]
	cmp r0, #0
	bne _0224CDA4
	ldr r0, _0224CF30 ; =0x02259AF4
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF2C ; =0x0000035A
	bl sub_020D407C
_0224CDA4:
	ldr r0, [r4, #8]
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224CDC8
	ldr r0, _0224CF34 ; =0x02259B10
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF2C ; =0x0000035A
	bl sub_020D407C
_0224CDC8:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _0224CDE8
	ldr r0, _0224CF38 ; =0x02259B34
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF3C ; =0x0000035B
	bl sub_020D407C
_0224CDE8:
	ldr r0, [r4, #4]
	ldrsb r0, [r0]
	cmp r0, #0
	bne _0224CE0C
	ldr r0, _0224CF40 ; =0x02259B4C
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF3C ; =0x0000035B
	bl sub_020D407C
_0224CE0C:
	ldr r0, [r4, #4]
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224CE30
	ldr r0, _0224CF44 ; =0x02259B68
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF3C ; =0x0000035B
	bl sub_020D407C
_0224CE30:
	ldr r0, [r5, #0x134]
	ldr r1, [r4, #4]
	bl ov4_021EA598
	movs r6, r0
	addeq sp, sp, #0xfc
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	add r0, sp, #0x1c
	mov r1, r6
	mov r2, #0xe0
	bl sub_020D50B8
	ldr r0, [r5, #0x134]
	mov r1, r6
	bl ov4_021EA4F4
	cmp r0, #0
	bne _0224CE80
	ldr r0, _0224CF48 ; =0x02259B8C
	ldr r1, _0224CF10 ; =0x02259818
	ldr r2, _0224CF14 ; =0x0225968C
	ldr r3, _0224CF4C ; =0x00000367
	bl sub_020D407C
_0224CE80:
	ldr r1, [r4, #8]
	add r0, sp, #0x1c
	mov r2, #0x80
	bl sub_020D8C44
	mov r0, #0
	strb r0, [sp, #0x9b]
	ldr r0, [r5, #0x134]
	add r1, sp, #0x1c
	bl ov4_021EA44C
	ldr r0, [r4, #0]
	mov r1, r5
	bl ov66_0224C518
	cmp r0, #0
	ldrne r0, [r5, #0x114]
	cmpne r0, #0
	addeq sp, sp, #0xfc
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	str r5, [sp, #0x10]
	ldr r0, [r4, #4]
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r2, [r4, #8]
	mov r0, #0xc
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x130]
	add r3, sp, #0x10
	str r2, [sp]
	stmib sp, {r1, r5}
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	ldr r2, [r5, #0x114]
	mov r1, #8
	bl ov66_02248C2C
	add sp, sp, #0xfc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224CF0C: .word 0x02259838
_0224CF10: .word 0x02259818
_0224CF14: .word 0x0225968C
_0224CF18: .word 0x0000034F
_0224CF1C: .word 0x02259930
_0224CF20: .word 0x02259A7C
_0224CF24: .word 0x00000355
_0224CF28: .word 0x02259ADC
_0224CF2C: .word 0x0000035A
_0224CF30: .word 0x02259AF4
_0224CF34: .word 0x02259B10
_0224CF38: .word 0x02259B34
_0224CF3C: .word 0x0000035B
_0224CF40: .word 0x02259B4C
_0224CF44: .word 0x02259B68
_0224CF48: .word 0x02259B8C
_0224CF4C: .word 0x00000367
	arm_func_end ov66_0224CCFC

	arm_func_start ov66_0224CF50
ov66_0224CF50: ; 0x0224CF50
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _0224CF7C
	ldr r0, _0224D060 ; =0x022598B8
	ldr r1, _0224D064 ; =0x02259818
	ldr r2, _0224D068 ; =0x022595C4
	ldr r3, _0224D06C ; =0x00000386
	bl sub_020D407C
_0224CF7C:
	cmp r5, #0
	bne _0224CF98
	ldr r0, _0224D070 ; =0x02259B98
	ldr r1, _0224D064 ; =0x02259818
	ldr r2, _0224D068 ; =0x022595C4
	mov r3, #0x388
	bl sub_020D407C
_0224CF98:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _0224CFB8
	ldr r0, _0224D074 ; =0x02259BA8
	ldr r1, _0224D064 ; =0x02259818
	ldr r2, _0224D068 ; =0x022595C4
	mov r3, #0x388
	bl sub_020D407C
_0224CFB8:
	mov r0, r5
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224CFDC
	ldr r0, _0224D078 ; =0x02259BBC
	ldr r1, _0224D064 ; =0x02259818
	ldr r2, _0224D068 ; =0x022595C4
	mov r3, #0x388
	bl sub_020D407C
_0224CFDC:
	cmp r4, #0
	bne _0224CFF8
	ldr r0, _0224D07C ; =0x02259BD8
	ldr r1, _0224D064 ; =0x02259818
	ldr r2, _0224D068 ; =0x022595C4
	ldr r3, _0224D080 ; =0x00000389
	bl sub_020D407C
_0224CFF8:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _0224D018
	ldr r0, _0224D084 ; =0x02259BE8
	ldr r1, _0224D064 ; =0x02259818
	ldr r2, _0224D068 ; =0x022595C4
	ldr r3, _0224D080 ; =0x00000389
	bl sub_020D407C
_0224D018:
	mov r0, r4
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224D03C
	ldr r0, _0224D088 ; =0x02259BFC
	ldr r1, _0224D064 ; =0x02259818
	ldr r2, _0224D068 ; =0x022595C4
	ldr r3, _0224D080 ; =0x00000389
	bl sub_020D407C
_0224D03C:
	str r6, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [r6, #0x80c]
	ldr r1, _0224D08C ; =ov66_0224CCFC
	add r2, sp, #0
	bl ov4_021EA638
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224D060: .word 0x022598B8
_0224D064: .word 0x02259818
_0224D068: .word 0x022595C4
_0224D06C: .word 0x00000386
_0224D070: .word 0x02259B98
_0224D074: .word 0x02259BA8
_0224D078: .word 0x02259BBC
_0224D07C: .word 0x02259BD8
_0224D080: .word 0x00000389
_0224D084: .word 0x02259BE8
_0224D088: .word 0x02259BFC
_0224D08C: .word ov66_0224CCFC
	arm_func_end ov66_0224CF50

	arm_func_start ov66_0224D090
ov66_0224D090: ; 0x0224D090
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x2e0
	movs r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bne _0224D0C0
	ldr r0, _0224D254 ; =0x022598B8
	ldr r1, _0224D258 ; =0x02259818
	ldr r2, _0224D25C ; =0x022595D8
	ldr r3, _0224D260 ; =0x0000039B
	bl sub_020D407C
_0224D0C0:
	cmp r7, #0
	bne _0224D0DC
	ldr r0, _0224D264 ; =0x02259A44
	ldr r1, _0224D258 ; =0x02259818
	ldr r2, _0224D25C ; =0x022595D8
	ldr r3, _0224D268 ; =0x0000039D
	bl sub_020D407C
_0224D0DC:
	ldrsb r0, [r7]
	cmp r0, #0
	bne _0224D0FC
	ldr r0, _0224D26C ; =0x02259A54
	ldr r1, _0224D258 ; =0x02259818
	ldr r2, _0224D25C ; =0x022595D8
	ldr r3, _0224D268 ; =0x0000039D
	bl sub_020D407C
_0224D0FC:
	mov r0, r7
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224D120
	ldr r0, _0224D270 ; =0x02259A64
	ldr r1, _0224D258 ; =0x02259818
	ldr r2, _0224D25C ; =0x022595D8
	ldr r3, _0224D268 ; =0x0000039D
	bl sub_020D407C
_0224D120:
	cmp r6, #0
	bne _0224D13C
	ldr r0, _0224D274 ; =0x022598D4
	ldr r1, _0224D258 ; =0x02259818
	ldr r2, _0224D25C ; =0x022595D8
	ldr r3, _0224D278 ; =0x0000039E
	bl sub_020D407C
_0224D13C:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _0224D15C
	ldr r0, _0224D27C ; =0x022598E4
	ldr r1, _0224D258 ; =0x02259818
	ldr r2, _0224D25C ; =0x022595D8
	ldr r3, _0224D278 ; =0x0000039E
	bl sub_020D407C
_0224D15C:
	cmp r5, #0
	blt _0224D16C
	cmp r5, #3
	ble _0224D180
_0224D16C:
	ldr r0, _0224D280 ; =0x022599F4
	ldr r1, _0224D258 ; =0x02259818
	ldr r2, _0224D25C ; =0x022595D8
	ldr r3, _0224D284 ; =0x0000039F
	bl sub_020D407C
_0224D180:
	ldr r2, _0224D288 ; =0x00000101
	add r0, sp, #0xfc
	mov r1, r6
	bl sub_020D8C44
	mov r0, #0
	strb r0, [sp, #0x1fc]
	ldr r0, [r8, #0x80c]
	add r1, sp, #0xfc
	bl ov4_021EA598
	movs r4, r0
	addeq sp, sp, #0x2e0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, sp, #0x1c
	mov r1, r7
	mov r2, #0x80
	bl sub_020D8C44
	mov r0, #0
	strb r0, [sp, #0x9b]
	ldr r0, [r4, #0x134]
	add r1, sp, #0x1c
	bl ov4_021EA598
	cmp r0, #0
	addeq sp, sp, #0x2e0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [sp, #0x2f8]
	cmp r1, #0
	ldrne r1, [r0, #0xdc]
	ldreq r2, [r0, #0xdc]
	orrne r1, r1, r5
	mvneq r1, r5
	andeq r1, r2, r1
	str r1, [r0, #0xdc]
	ldr r1, [r4, #0x120]
	cmp r1, #0
	addeq sp, sp, #0x2e0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r6, [sp, #0x10]
	str r7, [sp, #0x14]
	ldr r0, [r0, #0xdc]
	mov r1, #0
	str r0, [sp, #0x18]
	ldr r2, [r4, #0x130]
	mov r0, #0xc
	str r2, [sp]
	stmib sp, {r1, r6}
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x120]
	add r3, sp, #0x10
	mov r0, r8
	mov r1, #0xb
	bl ov66_02248C2C
	add sp, sp, #0x2e0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0224D254: .word 0x022598B8
_0224D258: .word 0x02259818
_0224D25C: .word 0x022595D8
_0224D260: .word 0x0000039B
_0224D264: .word 0x02259A44
_0224D268: .word 0x0000039D
_0224D26C: .word 0x02259A54
_0224D270: .word 0x02259A64
_0224D274: .word 0x022598D4
_0224D278: .word 0x0000039E
_0224D27C: .word 0x022598E4
_0224D280: .word 0x022599F4
_0224D284: .word 0x0000039F
_0224D288: .word 0x00000101
	arm_func_end ov66_0224D090

	arm_func_start ov66_0224D28C
ov66_0224D28C: ; 0x0224D28C
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	mov r5, r1
	bne _0224D2B0
	ldr r0, _0224D33C ; =0x02259838
	ldr r1, _0224D340 ; =0x02259818
	ldr r2, _0224D344 ; =0x02259774
	ldr r3, _0224D348 ; =0x0000041A
	bl sub_020D407C
_0224D2B0:
	cmp r5, #0
	bne _0224D2CC
	ldr r0, _0224D34C ; =0x02259930
	ldr r1, _0224D340 ; =0x02259818
	ldr r2, _0224D344 ; =0x02259774
	ldr r3, _0224D350 ; =0x0000041B
	bl sub_020D407C
_0224D2CC:
	ldr r0, [r4, #0x134]
	cmp r0, #0
	bne _0224D2EC
	ldr r0, _0224D354 ; =0x02259A7C
	ldr r1, _0224D340 ; =0x02259818
	ldr r2, _0224D344 ; =0x02259774
	ldr r3, _0224D358 ; =0x00000424
	bl sub_020D407C
_0224D2EC:
	ldr r0, [r4, #0x134]
	ldr r1, [r5, #0]
	bl ov4_021EA598
	movs r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #4]
	add r0, r4, #0x80
	mov r2, #0x18
	bl sub_020D8C44
	mov r0, #0
	strb r0, [r4, #0x97]
	ldr r1, [r5, #8]
	add r0, r4, #0x98
	mov r2, #0x40
	bl sub_020D8C44
	mov r0, #0
	strb r0, [r4, #0xd7]
	mov r0, #1
	str r0, [r4, #0xd8]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0224D33C: .word 0x02259838
_0224D340: .word 0x02259818
_0224D344: .word 0x02259774
_0224D348: .word 0x0000041A
_0224D34C: .word 0x02259930
_0224D350: .word 0x0000041B
_0224D354: .word 0x02259A7C
_0224D358: .word 0x00000424
	arm_func_end ov66_0224D28C

	arm_func_start ov66_0224D35C
ov66_0224D35C: ; 0x0224D35C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xec
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _0224D38C
	ldr r0, _0224D42C ; =0x022598B8
	ldr r1, _0224D430 ; =0x02259818
	ldr r2, _0224D434 ; =0x02259664
	ldr r3, _0224D438 ; =0x0000043D
	bl sub_020D407C
_0224D38C:
	cmp r6, #0
	bne _0224D3A8
	ldr r0, _0224D43C ; =0x02259C18
	ldr r1, _0224D430 ; =0x02259818
	ldr r2, _0224D434 ; =0x02259664
	ldr r3, _0224D440 ; =0x0000043F
	bl sub_020D407C
_0224D3A8:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _0224D3C8
	ldr r0, _0224D444 ; =0x02259C28
	ldr r1, _0224D430 ; =0x02259818
	ldr r2, _0224D434 ; =0x02259664
	ldr r3, _0224D440 ; =0x0000043F
	bl sub_020D407C
_0224D3C8:
	mov r0, r6
	bl sub_020D8B60
	cmp r0, #0x80
	blo _0224D3EC
	ldr r0, _0224D448 ; =0x02259C38
	ldr r1, _0224D430 ; =0x02259818
	ldr r2, _0224D434 ; =0x02259664
	ldr r3, _0224D440 ; =0x0000043F
	bl sub_020D407C
_0224D3EC:
	add r0, sp, #0xc
	mov r1, r6
	mov r2, #0x80
	bl sub_020D8C44
	mov r1, #0
	add r0, sp, #0xc
	strb r1, [sp, #0x8b]
	str r5, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp]
	ldr r0, [r7, #0x80c]
	ldr r1, _0224D44C ; =ov66_0224D28C
	add r2, sp, #0
	bl ov4_021EA638
	add sp, sp, #0xec
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D42C: .word 0x022598B8
_0224D430: .word 0x02259818
_0224D434: .word 0x02259664
_0224D438: .word 0x0000043D
_0224D43C: .word 0x02259C18
_0224D440: .word 0x0000043F
_0224D444: .word 0x02259C28
_0224D448: .word 0x02259C38
_0224D44C: .word ov66_0224D28C
	arm_func_end ov66_0224D35C
	.data


	.global Unk_ov66_0225955C
Unk_ov66_0225955C: ; 0x0225955C
	.incbin "incbin/overlay66_data.bin", 0x83C, 0x848 - 0x83C

	.global Unk_ov66_02259568
Unk_ov66_02259568: ; 0x02259568
	.incbin "incbin/overlay66_data.bin", 0x848, 0x858 - 0x848

	.global Unk_ov66_02259578
Unk_ov66_02259578: ; 0x02259578
	.incbin "incbin/overlay66_data.bin", 0x858, 0x868 - 0x858

	.global Unk_ov66_02259588
Unk_ov66_02259588: ; 0x02259588
	.incbin "incbin/overlay66_data.bin", 0x868, 0x87C - 0x868

	.global Unk_ov66_0225959C
Unk_ov66_0225959C: ; 0x0225959C
	.incbin "incbin/overlay66_data.bin", 0x87C, 0x890 - 0x87C

	.global Unk_ov66_022595B0
Unk_ov66_022595B0: ; 0x022595B0
	.incbin "incbin/overlay66_data.bin", 0x890, 0x8A4 - 0x890

	.global Unk_ov66_022595C4
Unk_ov66_022595C4: ; 0x022595C4
	.incbin "incbin/overlay66_data.bin", 0x8A4, 0x8B8 - 0x8A4

	.global Unk_ov66_022595D8
Unk_ov66_022595D8: ; 0x022595D8
	.incbin "incbin/overlay66_data.bin", 0x8B8, 0x8CC - 0x8B8

	.global Unk_ov66_022595EC
Unk_ov66_022595EC: ; 0x022595EC
	.incbin "incbin/overlay66_data.bin", 0x8CC, 0x8E0 - 0x8CC

	.global Unk_ov66_02259600
Unk_ov66_02259600: ; 0x02259600
	.incbin "incbin/overlay66_data.bin", 0x8E0, 0x8F4 - 0x8E0

	.global Unk_ov66_02259614
Unk_ov66_02259614: ; 0x02259614
	.incbin "incbin/overlay66_data.bin", 0x8F4, 0x908 - 0x8F4

	.global Unk_ov66_02259628
Unk_ov66_02259628: ; 0x02259628
	.incbin "incbin/overlay66_data.bin", 0x908, 0x91C - 0x908

	.global Unk_ov66_0225963C
Unk_ov66_0225963C: ; 0x0225963C
	.incbin "incbin/overlay66_data.bin", 0x91C, 0x930 - 0x91C

	.global Unk_ov66_02259650
Unk_ov66_02259650: ; 0x02259650
	.incbin "incbin/overlay66_data.bin", 0x930, 0x944 - 0x930

	.global Unk_ov66_02259664
Unk_ov66_02259664: ; 0x02259664
	.incbin "incbin/overlay66_data.bin", 0x944, 0x958 - 0x944

	.global Unk_ov66_02259678
Unk_ov66_02259678: ; 0x02259678
	.incbin "incbin/overlay66_data.bin", 0x958, 0x96C - 0x958

	.global Unk_ov66_0225968C
Unk_ov66_0225968C: ; 0x0225968C
	.incbin "incbin/overlay66_data.bin", 0x96C, 0x980 - 0x96C

	.global Unk_ov66_022596A0
Unk_ov66_022596A0: ; 0x022596A0
	.incbin "incbin/overlay66_data.bin", 0x980, 0x994 - 0x980

	.global Unk_ov66_022596B4
Unk_ov66_022596B4: ; 0x022596B4
	.incbin "incbin/overlay66_data.bin", 0x994, 0x9AC - 0x994

	.global Unk_ov66_022596CC
Unk_ov66_022596CC: ; 0x022596CC
	.incbin "incbin/overlay66_data.bin", 0x9AC, 0x9C4 - 0x9AC

	.global Unk_ov66_022596E4
Unk_ov66_022596E4: ; 0x022596E4
	.incbin "incbin/overlay66_data.bin", 0x9C4, 0x9DC - 0x9C4

	.global Unk_ov66_022596FC
Unk_ov66_022596FC: ; 0x022596FC
	.incbin "incbin/overlay66_data.bin", 0x9DC, 0x9F4 - 0x9DC

	.global Unk_ov66_02259714
Unk_ov66_02259714: ; 0x02259714
	.incbin "incbin/overlay66_data.bin", 0x9F4, 0xA0C - 0x9F4

	.global Unk_ov66_0225972C
Unk_ov66_0225972C: ; 0x0225972C
	.incbin "incbin/overlay66_data.bin", 0xA0C, 0xA24 - 0xA0C

	.global Unk_ov66_02259744
Unk_ov66_02259744: ; 0x02259744
	.incbin "incbin/overlay66_data.bin", 0xA24, 0xA3C - 0xA24

	.global Unk_ov66_0225975C
Unk_ov66_0225975C: ; 0x0225975C
	.incbin "incbin/overlay66_data.bin", 0xA3C, 0xA54 - 0xA3C

	.global Unk_ov66_02259774
Unk_ov66_02259774: ; 0x02259774
	.incbin "incbin/overlay66_data.bin", 0xA54, 0xA6C - 0xA54

	.global Unk_ov66_0225978C
Unk_ov66_0225978C: ; 0x0225978C
	.incbin "incbin/overlay66_data.bin", 0xA6C, 0xA84 - 0xA6C

	.global Unk_ov66_022597A4
Unk_ov66_022597A4: ; 0x022597A4
	.incbin "incbin/overlay66_data.bin", 0xA84, 0xA9C - 0xA84

	.global Unk_ov66_022597BC
Unk_ov66_022597BC: ; 0x022597BC
	.incbin "incbin/overlay66_data.bin", 0xA9C, 0xAB4 - 0xA9C

	.global Unk_ov66_022597D4
Unk_ov66_022597D4: ; 0x022597D4
	.incbin "incbin/overlay66_data.bin", 0xAB4, 0xAD0 - 0xAB4

	.global Unk_ov66_022597F0
Unk_ov66_022597F0: ; 0x022597F0
	.incbin "incbin/overlay66_data.bin", 0xAD0, 0xAEC - 0xAD0

	.global Unk_ov66_0225980C
Unk_ov66_0225980C: ; 0x0225980C
	.incbin "incbin/overlay66_data.bin", 0xAEC, 0xAF8 - 0xAEC

	.global Unk_ov66_02259818
Unk_ov66_02259818: ; 0x02259818
	.incbin "incbin/overlay66_data.bin", 0xAF8, 0xB08 - 0xAF8

	.global Unk_ov66_02259828
Unk_ov66_02259828: ; 0x02259828
	.incbin "incbin/overlay66_data.bin", 0xB08, 0xB18 - 0xB08

	.global Unk_ov66_02259838
Unk_ov66_02259838: ; 0x02259838
	.incbin "incbin/overlay66_data.bin", 0xB18, 0xB28 - 0xB18

	.global Unk_ov66_02259848
Unk_ov66_02259848: ; 0x02259848
	.incbin "incbin/overlay66_data.bin", 0xB28, 0xB38 - 0xB28

	.global Unk_ov66_02259858
Unk_ov66_02259858: ; 0x02259858
	.incbin "incbin/overlay66_data.bin", 0xB38, 0xB48 - 0xB38

	.global Unk_ov66_02259868
Unk_ov66_02259868: ; 0x02259868
	.incbin "incbin/overlay66_data.bin", 0xB48, 0xB58 - 0xB48

	.global Unk_ov66_02259878
Unk_ov66_02259878: ; 0x02259878
	.incbin "incbin/overlay66_data.bin", 0xB58, 0xB68 - 0xB58

	.global Unk_ov66_02259888
Unk_ov66_02259888: ; 0x02259888
	.incbin "incbin/overlay66_data.bin", 0xB68, 0xB78 - 0xB68

	.global Unk_ov66_02259898
Unk_ov66_02259898: ; 0x02259898
	.incbin "incbin/overlay66_data.bin", 0xB78, 0xB88 - 0xB78

	.global Unk_ov66_022598A8
Unk_ov66_022598A8: ; 0x022598A8
	.incbin "incbin/overlay66_data.bin", 0xB88, 0xB98 - 0xB88

	.global Unk_ov66_022598B8
Unk_ov66_022598B8: ; 0x022598B8
	.incbin "incbin/overlay66_data.bin", 0xB98, 0xBA8 - 0xB98

	.global Unk_ov66_022598C8
Unk_ov66_022598C8: ; 0x022598C8
	.incbin "incbin/overlay66_data.bin", 0xBA8, 0xBB4 - 0xBA8

	.global Unk_ov66_022598D4
Unk_ov66_022598D4: ; 0x022598D4
	.incbin "incbin/overlay66_data.bin", 0xBB4, 0xBC4 - 0xBB4

	.global Unk_ov66_022598E4
Unk_ov66_022598E4: ; 0x022598E4
	.incbin "incbin/overlay66_data.bin", 0xBC4, 0xBD8 - 0xBC4

	.global Unk_ov66_022598F8
Unk_ov66_022598F8: ; 0x022598F8
	.incbin "incbin/overlay66_data.bin", 0xBD8, 0xBF8 - 0xBD8

	.global Unk_ov66_02259918
Unk_ov66_02259918: ; 0x02259918
	.incbin "incbin/overlay66_data.bin", 0xBF8, 0xC0C - 0xBF8

	.global Unk_ov66_0225992C
Unk_ov66_0225992C: ; 0x0225992C
	.incbin "incbin/overlay66_data.bin", 0xC0C, 0xC10 - 0xC0C

	.global Unk_ov66_02259930
Unk_ov66_02259930: ; 0x02259930
	.incbin "incbin/overlay66_data.bin", 0xC10, 0xC24 - 0xC10

	.global Unk_ov66_02259944
Unk_ov66_02259944: ; 0x02259944
	.incbin "incbin/overlay66_data.bin", 0xC24, 0xC38 - 0xC24

	.global Unk_ov66_02259958
Unk_ov66_02259958: ; 0x02259958
	.incbin "incbin/overlay66_data.bin", 0xC38, 0xC50 - 0xC38

	.global Unk_ov66_02259970
Unk_ov66_02259970: ; 0x02259970
	.incbin "incbin/overlay66_data.bin", 0xC50, 0xC70 - 0xC50

	.global Unk_ov66_02259990
Unk_ov66_02259990: ; 0x02259990
	.incbin "incbin/overlay66_data.bin", 0xC70, 0xC84 - 0xC70

	.global Unk_ov66_022599A4
Unk_ov66_022599A4: ; 0x022599A4
	.incbin "incbin/overlay66_data.bin", 0xC84, 0xC88 - 0xC84

	.global Unk_ov66_022599A8
Unk_ov66_022599A8: ; 0x022599A8
	.incbin "incbin/overlay66_data.bin", 0xC88, 0xC9C - 0xC88

	.global Unk_ov66_022599BC
Unk_ov66_022599BC: ; 0x022599BC
	.incbin "incbin/overlay66_data.bin", 0xC9C, 0xCAC - 0xC9C

	.global Unk_ov66_022599CC
Unk_ov66_022599CC: ; 0x022599CC
	.incbin "incbin/overlay66_data.bin", 0xCAC, 0xCBC - 0xCAC

	.global Unk_ov66_022599DC
Unk_ov66_022599DC: ; 0x022599DC
	.incbin "incbin/overlay66_data.bin", 0xCBC, 0xCD4 - 0xCBC

	.global Unk_ov66_022599F4
Unk_ov66_022599F4: ; 0x022599F4
	.incbin "incbin/overlay66_data.bin", 0xCD4, 0xCF0 - 0xCD4

	.global Unk_ov66_02259A10
Unk_ov66_02259A10: ; 0x02259A10
	.incbin "incbin/overlay66_data.bin", 0xCF0, 0xD24 - 0xCF0

	.global Unk_ov66_02259A44
Unk_ov66_02259A44: ; 0x02259A44
	.incbin "incbin/overlay66_data.bin", 0xD24, 0xD34 - 0xD24

	.global Unk_ov66_02259A54
Unk_ov66_02259A54: ; 0x02259A54
	.incbin "incbin/overlay66_data.bin", 0xD34, 0xD44 - 0xD34

	.global Unk_ov66_02259A64
Unk_ov66_02259A64: ; 0x02259A64
	.incbin "incbin/overlay66_data.bin", 0xD44, 0xD5C - 0xD44

	.global Unk_ov66_02259A7C
Unk_ov66_02259A7C: ; 0x02259A7C
	.incbin "incbin/overlay66_data.bin", 0xD5C, 0xD74 - 0xD5C

	.global Unk_ov66_02259A94
Unk_ov66_02259A94: ; 0x02259A94
	.incbin "incbin/overlay66_data.bin", 0xD74, 0xD88 - 0xD74

	.global Unk_ov66_02259AA8
Unk_ov66_02259AA8: ; 0x02259AA8
	.incbin "incbin/overlay66_data.bin", 0xD88, 0xDA4 - 0xD88

	.global Unk_ov66_02259AC4
Unk_ov66_02259AC4: ; 0x02259AC4
	.incbin "incbin/overlay66_data.bin", 0xDA4, 0xDBC - 0xDA4

	.global Unk_ov66_02259ADC
Unk_ov66_02259ADC: ; 0x02259ADC
	.incbin "incbin/overlay66_data.bin", 0xDBC, 0xDD4 - 0xDBC

	.global Unk_ov66_02259AF4
Unk_ov66_02259AF4: ; 0x02259AF4
	.incbin "incbin/overlay66_data.bin", 0xDD4, 0xDF0 - 0xDD4

	.global Unk_ov66_02259B10
Unk_ov66_02259B10: ; 0x02259B10
	.incbin "incbin/overlay66_data.bin", 0xDF0, 0xE14 - 0xDF0

	.global Unk_ov66_02259B34
Unk_ov66_02259B34: ; 0x02259B34
	.incbin "incbin/overlay66_data.bin", 0xE14, 0xE2C - 0xE14

	.global Unk_ov66_02259B4C
Unk_ov66_02259B4C: ; 0x02259B4C
	.incbin "incbin/overlay66_data.bin", 0xE2C, 0xE48 - 0xE2C

	.global Unk_ov66_02259B68
Unk_ov66_02259B68: ; 0x02259B68
	.incbin "incbin/overlay66_data.bin", 0xE48, 0xE6C - 0xE48

	.global Unk_ov66_02259B8C
Unk_ov66_02259B8C: ; 0x02259B8C
	.incbin "incbin/overlay66_data.bin", 0xE6C, 0xE78 - 0xE6C

	.global Unk_ov66_02259B98
Unk_ov66_02259B98: ; 0x02259B98
	.incbin "incbin/overlay66_data.bin", 0xE78, 0xE88 - 0xE78

	.global Unk_ov66_02259BA8
Unk_ov66_02259BA8: ; 0x02259BA8
	.incbin "incbin/overlay66_data.bin", 0xE88, 0xE9C - 0xE88

	.global Unk_ov66_02259BBC
Unk_ov66_02259BBC: ; 0x02259BBC
	.incbin "incbin/overlay66_data.bin", 0xE9C, 0xEB8 - 0xE9C

	.global Unk_ov66_02259BD8
Unk_ov66_02259BD8: ; 0x02259BD8
	.incbin "incbin/overlay66_data.bin", 0xEB8, 0xEC8 - 0xEB8

	.global Unk_ov66_02259BE8
Unk_ov66_02259BE8: ; 0x02259BE8
	.incbin "incbin/overlay66_data.bin", 0xEC8, 0xEDC - 0xEC8

	.global Unk_ov66_02259BFC
Unk_ov66_02259BFC: ; 0x02259BFC
	.incbin "incbin/overlay66_data.bin", 0xEDC, 0xEF8 - 0xEDC

	.global Unk_ov66_02259C18
Unk_ov66_02259C18: ; 0x02259C18
	.incbin "incbin/overlay66_data.bin", 0xEF8, 0xF08 - 0xEF8

	.global Unk_ov66_02259C28
Unk_ov66_02259C28: ; 0x02259C28
	.incbin "incbin/overlay66_data.bin", 0xF08, 0xF18 - 0xF08

	.global Unk_ov66_02259C38
Unk_ov66_02259C38: ; 0x02259C38
	.incbin "incbin/overlay66_data.bin", 0xF18, 0x18

