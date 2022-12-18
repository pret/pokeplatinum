	.include "macros/function.inc"
	.include "include/ov18_02231230.inc"

	

	.text


	arm_func_start ov18_02231230
ov18_02231230: ; 0x02231230
	stmfd sp!, {r4, lr}
	ldr r0, _022312DC ; =0x022532E8
	mov r1, #0
	strb r1, [r0, #1]
	bl ov18_022312F8
	mov r0, #0x10
	bl ov18_0222BBC0
	mov r0, #3
	bl ov18_0223F4D0
	mov r0, #0x39
	sub r1, r0, #0x3a
	mov r2, #0
	bl ov18_0222B594
	mov r0, #0
	mov r1, #0x5b
	bl ov18_02243F60
	ldr r2, _022312DC ; =0x022532E8
	ldr r1, _022312E0 ; =0xFE00FF00
	str r0, [r2, #8]
	ldr r3, [r0, #0]
	ldr lr, _022312E4 ; =0x0224918E
	and r1, r3, r1
	orr r1, r1, #0x84
	orr r1, r1, #0xe00000
	str r1, [r0, #0]
	ldr r4, [r2, #8]
	ldr r1, _022312E8 ; =0x02249192
	ldrh r0, [r4, #4]
	ldr ip, _022312EC ; =0x02249190
	ldr r3, _022312F0 ; =0x02249194
	bic r0, r0, #0xc00
	orr r0, r0, #0xc00
	strh r0, [r4, #4]
	ldrb r0, [r2]
	mov r4, r0, lsl #3
	ldrh r0, [lr, r4]
	ldrh r1, [r1, r4]
	ldrh r2, [ip, r4]
	ldrh r3, [r3, r4]
	bl ov18_0222BA04
	ldr r0, _022312F4 ; =ov18_02231494
	bl ov18_0222F6C4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022312DC: .word 0x022532E8
_022312E0: .word 0xFE00FF00
_022312E4: .word 0x0224918E
_022312E8: .word 0x02249192
_022312EC: .word 0x02249190
_022312F0: .word 0x02249194
_022312F4: .word ov18_02231494
	arm_func_end ov18_02231230

	arm_func_start ov18_022312F8
ov18_022312F8: ; 0x022312F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x44
	ldr r4, _02231470 ; =0x02249148
	add r3, sp, #0x2b
	mov r2, #0xb
_0223130C:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _0223130C
	ldr r4, _02231474 ; =0x0224915E
	add r3, sp, #0x14
	mov r2, #0xb
_02231338:
	ldrb r1, [r4]
	ldrb r0, [r4, #1]
	add r4, r4, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _02231338
	ldrb r2, [r4]
	ldr r0, _02231478 ; =0x0224A038
	ldr r1, _0223147C ; =0x020C07EC
	strb r2, [r3]
	bl ov18_0222B700
	ldr r0, _02231480 ; =0x0224A050
	ldr r1, _02231484 ; =sub_020C04EC
	bl ov18_0222B700
	add r0, sp, #0x14
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02231488 ; =0x022532E8
	str r0, [r1, #4]
	add r0, sp, #0x2b
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	mov r8, r0
	add r0, sp, #0
	bl sub_020A283C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	mov r7, #0
	cmpeq r1, #0
	bne _022313FC
	add r5, r8, #0xc0
	add r6, r8, #0x40
	mov r4, #0x20
_022313D8:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl sub_020C4DB0
	add r7, r7, #1
	cmp r7, #2
	add r5, r5, #0x20
	add r6, r6, #0x20
	blt _022313D8
_022313FC:
	mov r0, r8
	mov r1, #0x200
	bl sub_020C2C54
	mov r0, r8
	mov r1, #0
	mov r2, #0x200
	bl sub_020C00B4
	mov r0, r8
	bl ov18_0224382C
	ldr r2, _0223148C ; =0x04001008
	ldr r1, _02231490 ; =0x0400000A
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r2, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2, #2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02231470: .word 0x02249148
_02231474: .word 0x0224915E
_02231478: .word 0x0224A038
_0223147C: .word 0x020C07EC
_02231480: .word 0x0224A050
_02231484: .word sub_020C04EC
_02231488: .word 0x022532E8
_0223148C: .word 0x04001008
_02231490: .word 0x0400000A
	arm_func_end ov18_022312F8

	arm_func_start ov18_02231494
ov18_02231494: ; 0x02231494
	stmfd sp!, {r3, lr}
	mov r1, #1
	mov r2, r1
	mov r0, #2
	mov r3, #8
	bl ov18_02244194
	mov r0, #2
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	mov r0, #1
	mov r1, r0
	bl ov18_02244C84
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244C84
	ldr r0, _022314E4 ; =ov18_022314E8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022314E4: .word ov18_022314E8
	arm_func_end ov18_02231494

	arm_func_start ov18_022314E8
ov18_022314E8: ; 0x022314E8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B790
	ldr r0, _02231520 ; =ov18_02231524
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231520: .word ov18_02231524
	arm_func_end ov18_022314E8

	arm_func_start ov18_02231524
ov18_02231524: ; 0x02231524
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02231548 ; =ov18_0223154C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231548: .word ov18_0223154C
	arm_func_end ov18_02231524

	arm_func_start ov18_0223154C
ov18_0223154C: ; 0x0223154C
	stmfd sp!, {r3, lr}
	bl ov18_02231560
	bl ov18_02231654
	bl ov18_02231658
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0223154C

	arm_func_start ov18_02231560
ov18_02231560: ; 0x02231560
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _0223163C ; =0x02249176
	mov r4, #0
_0223156C:
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _022315BC
	mov r0, #1
	bl ov18_0222B048
	and r1, r4, #0xff
	mov lr, r1, lsl #3
	ldr r0, _02231640 ; =0x0224918E
	ldr r1, _02231644 ; =0x02249192
	ldr r2, _02231648 ; =0x02249190
	ldr r3, _0223164C ; =0x02249194
	ldr ip, _02231650 ; =0x022532E8
	ldrh r0, [r0, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	strb r4, [ip]
	bl ov18_0222BA04
	ldmia sp!, {r3, r4, r5, pc}
_022315BC:
	add r4, r4, #1
	cmp r4, #3
	add r5, r5, #8
	blo _0223156C
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022315E8
	mov r0, #1
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, pc}
_022315E8:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02231604
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, r4, r5, pc}
_02231604:
	mov r0, #0x40
	bl ov18_022454B0
	cmp r0, #0
	beq _02231620
	mov r0, #1
	bl ov18_0223188C
	ldmia sp!, {r3, r4, r5, pc}
_02231620:
	mov r0, #0x80
	bl ov18_022454B0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #3
	bl ov18_0223188C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223163C: .word 0x02249176
_02231640: .word 0x0224918E
_02231644: .word 0x02249192
_02231648: .word 0x02249190
_0223164C: .word 0x02249194
_02231650: .word 0x022532E8
	arm_func_end ov18_02231560

	arm_func_start ov18_02231654
ov18_02231654: ; 0x02231654
	bx lr
	arm_func_end ov18_02231654

	arm_func_start ov18_02231658
ov18_02231658: ; 0x02231658
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	bl ov18_0222B034
	cmp r0, #0
	beq _0223167C
	cmp r0, #1
	beq _02231688
	add sp, sp, #0x14
	ldmia sp!, {pc}
_0223167C:
	mov r0, #7
	bl ov18_0223E994
	b _022316E4
_02231688:
	add r0, sp, #0
	bl sub_020A283C
	ldr r0, _022316F4 ; =0x022532E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _022316CC
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	cmpeq r1, #0
	bne _022316CC
	mov r0, #9
	bl ov18_0223E994
	mvn r0, #0
	bl ov18_0222B068
	add sp, sp, #0x14
	ldmia sp!, {pc}
_022316CC:
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223191C
	ldr r0, _022316F4 ; =0x022532E8
	mov r1, #1
	strb r1, [r0, #1]
_022316E4:
	ldr r0, _022316F8 ; =ov18_022316FC
	bl ov18_0222F6C4
	add sp, sp, #0x14
	ldmia sp!, {pc}
	; .align 2, 0
_022316F4: .word 0x022532E8
_022316F8: .word ov18_022316FC
	arm_func_end ov18_02231658

	arm_func_start ov18_022316FC
ov18_022316FC: ; 0x022316FC
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _02231718 ; =ov18_0223171C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231718: .word ov18_0223171C
	arm_func_end ov18_022316FC

	arm_func_start ov18_0223171C
ov18_0223171C: ; 0x0223171C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02231778 ; =0x022532E8
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _02231744
	bl ov18_0222B004
_02231744:
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
	mov r0, #3
	mov r1, #0
	mov r2, #0x14
	mov r3, #8
	bl ov18_02244194
	ldr r0, _0223177C ; =ov18_02231780
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231778: .word 0x022532E8
_0223177C: .word ov18_02231780
	arm_func_end ov18_0223171C

	arm_func_start ov18_02231780
ov18_02231780: ; 0x02231780
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, _02231878 ; =0x022532E8
	ldr r0, [r0, #8]
	bl ov18_02245B74
	bl ov18_0222BAF4
	bl ov18_0222B668
	ldr r0, _02231878 ; =0x022532E8
	ldr r0, [r0, #4]
	bl ov18_0224382C
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #0x14
	bl ov18_02244CD8
	ldr r0, _02231878 ; =0x022532E8
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _02231810
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _0223187C ; =ov18_02230228
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02231810:
	ldrb r0, [r0]
	cmp r0, #0
	beq _02231830
	cmp r0, #1
	beq _02231848
	cmp r0, #2
	beq _02231860
	ldmia sp!, {r3, pc}
_02231830:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231880 ; =ov18_02230DB0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02231848:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231884 ; =ov18_022307A0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02231860:
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231888 ; =ov18_02231FFC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231878: .word 0x022532E8
_0223187C: .word ov18_02230228
_02231880: .word ov18_02230DB0
_02231884: .word ov18_022307A0
_02231888: .word ov18_02231FFC
	arm_func_end ov18_02231780

	arm_func_start ov18_0223188C
ov18_0223188C: ; 0x0223188C
	stmfd sp!, {r3, lr}
	cmp r0, #1
	mov r1, #3
	bne _022318B4
	ldr r0, _02231908 ; =0x022532E8
	ldrb r0, [r0]
	add r0, r0, #2
	bl sub_020BD140
	ldr r1, _02231908 ; =0x022532E8
	b _022318C8
_022318B4:
	ldr r0, _02231908 ; =0x022532E8
	ldrb r0, [r0]
	add r0, r0, #1
	bl sub_020BD140
	ldr r1, _02231908 ; =0x022532E8
_022318C8:
	strb r0, [r1]
	mov r0, #8
	bl ov18_0223E994
	ldr r0, _02231908 ; =0x022532E8
	ldr ip, _0223190C ; =0x0224918E
	ldrb r0, [r0]
	ldr r1, _02231910 ; =0x02249192
	ldr r2, _02231914 ; =0x02249190
	mov lr, r0, lsl #3
	ldr r3, _02231918 ; =0x02249194
	ldrh r0, [ip, lr]
	ldrh r1, [r1, lr]
	ldrh r2, [r2, lr]
	ldrh r3, [r3, lr]
	bl ov18_0222BA04
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231908: .word 0x022532E8
_0223190C: .word 0x0224918E
_02231910: .word 0x02249192
_02231914: .word 0x02249190
_02231918: .word 0x02249194
	arm_func_end ov18_0223188C

	arm_func_start ov18_0223191C
ov18_0223191C: ; 0x0223191C
	ldr r0, _0223193C ; =0x022532E8
	ldr r1, _02231940 ; =0x02249140
	ldrb r2, [r0]
	ldr ip, _02231944 ; =ov18_0223D154
	ldr r0, [r0, #4]
	ldrb r1, [r1, r2]
	mov r2, r1
	bx ip
	; .align 2, 0
_0223193C: .word 0x022532E8
_02231940: .word 0x02249140
_02231944: .word ov18_0223D154
	arm_func_end ov18_0223191C

	.rodata


	.global Unk_ov18_02249140
Unk_ov18_02249140: ; 0x02249140
	.incbin "incbin/overlay18_rodata.bin", 0x2D0C, 0x2D10 - 0x2D0C

	.global Unk_ov18_02249144
Unk_ov18_02249144: ; 0x02249144
	.incbin "incbin/overlay18_rodata.bin", 0x2D10, 0x2D14 - 0x2D10

	.global Unk_ov18_02249148
Unk_ov18_02249148: ; 0x02249148
	.incbin "incbin/overlay18_rodata.bin", 0x2D14, 0x2D2A - 0x2D14

	.global Unk_ov18_0224915E
Unk_ov18_0224915E: ; 0x0224915E
	.incbin "incbin/overlay18_rodata.bin", 0x2D2A, 0x2D42 - 0x2D2A

	.global Unk_ov18_02249176
Unk_ov18_02249176: ; 0x02249176
	.incbin "incbin/overlay18_rodata.bin", 0x2D42, 0x2D5A - 0x2D42

	.global Unk_ov18_0224918E
Unk_ov18_0224918E: ; 0x0224918E
	.incbin "incbin/overlay18_rodata.bin", 0x2D5A, 0x18



	.data


	.global Unk_ov18_0224A038
Unk_ov18_0224A038: ; 0x0224A038
	.incbin "incbin/overlay18_data.bin", 0x8D8, 0x8F0 - 0x8D8

	.global Unk_ov18_0224A050
Unk_ov18_0224A050: ; 0x0224A050
	.incbin "incbin/overlay18_data.bin", 0x8F0, 0x16



	.bss


	.global Unk_ov18_022532E8
Unk_ov18_022532E8: ; 0x022532E8
	.space 0x4

	.global Unk_ov18_022532E9
Unk_ov18_022532E9: ; 0x022532E9
	.space 0x4

	.global Unk_ov18_022532EC
Unk_ov18_022532EC: ; 0x022532EC
	.space 0x4

	.global Unk_ov18_022532F0
Unk_ov18_022532F0: ; 0x022532F0
	.space 0x4

