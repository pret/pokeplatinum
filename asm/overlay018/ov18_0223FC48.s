	.include "macros/function.inc"
	.include "overlay018/ov18_0223FC48.inc"

	.extern Unk_ov18_022532D8

	.text


	arm_func_start ov18_0223FC48
ov18_0223FC48: ; 0x0223FC48
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r5, _0223FF44 ; =0x02249654
	ldr r4, _0223FF48 ; =0x022532D8
	ldrb sl, [r5, #4]
	ldrb sb, [r5, #5]
	ldrb r8, [r5, #6]
	ldrb r7, [r5, #7]
	ldrb r6, [r5, #8]
	ldrb r5, [r5, #9]
	strb sl, [sp, #0x1c]
	mov fp, r0
	str r2, [sp, #0x10]
	mov r2, r3
	mov sl, r1
	ldr r0, [r4, #0]
	ldr r3, [sp, #0x48]
	mov r1, fp
	strb sb, [sp, #0x1d]
	strb r8, [sp, #0x1e]
	strb r7, [sp, #0x1f]
	strb r6, [sp, #0x20]
	strb r5, [sp, #0x21]
	bl ov18_0222F8D0
	str r0, [sp, #0x14]
	mov r0, #0x20
	mov r1, #4
	bl ov18_02245068
	ldr r1, _0223FF4C ; =0x02253398
	mvn r3, #1
	str r0, [r1, #0]
	strb sl, [r0, #0x1c]
	ldr r2, [r1, #0]
	ldr r0, _0223FF50 ; =0x04000050
	strb r3, [r2, #0x1b]
	ldr r3, [r1, #0]
	ldr r2, [sp, #0x10]
	mov r1, #0x1f
	strb r2, [r3, #0x1e]
	mov r2, #0
	bl G2x_SetBlendBrightness_
	ldr r1, _0223FF54 ; =0x02249708
	mov r0, #0
	ldrb r1, [r1, sl]
	mov r2, r0
	bl ov18_02243F8C
	ldr r3, _0223FF4C ; =0x02253398
	mvn r1, #0
	ldr r4, [r3, #0]
	mov r2, #0x100
	str r0, [r4, #0]
	ldr r0, [r3, #0]
	mov r3, #0
	ldr r0, [r0, #0]
	bl ov18_02243CF4
	ldr r0, _0223FF4C ; =0x02253398
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #0
	ldr r0, [r0, #0]
	bl ov18_02243DE4
	ldr r7, _0223FF58 ; =0x02249710
	mov r8, #0
	ldrb r0, [r7, sl]
	cmp r0, #0
	ble _0223FDC8
	ldr r0, _0223FF5C ; =0x0224967A
	ldr r4, _0223FF4C ; =0x02253398
	add sb, r0, sl, lsl #1
	mvn r6, #0
	mov r5, #0x100
	mov fp, r8
_0223FD68:
	ldrb r1, [sb], #1
	mov r0, #0
	mov r2, r0
	bl ov18_02243F8C
	ldr r2, [r4, #0]
	mov r1, r6
	add r2, r2, r8, lsl #2
	str r0, [r2, #8]
	ldr r0, [r4, #0]
	mov r2, r5
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #8]
	mov r3, fp
	bl ov18_02243CF4
	ldr r0, [r4, #0]
	mov r1, r6
	add r0, r0, r8, lsl #2
	ldr r0, [r0, #8]
	mov r2, #0
	bl ov18_02243DE4
	ldrb r0, [r7, sl]
	add r8, r8, #1
	cmp r8, r0
	blt _0223FD68
_0223FDC8:
	add r1, sp, #0x18
	str r1, [sp]
	mov r0, #0
	mov r1, #0x20
	mov r2, #0xc
	mov r3, #1
	str r0, [sp, #4]
	bl ov18_02244574
	ldr r1, _0223FF4C ; =0x02253398
	ldr r1, [r1, #0]
	str r0, [r1, #0x10]
	mov r0, #0
	ldr r1, [sp, #0x18]
	mov r2, r0
	bl ov18_022439E0
	ldr r1, _0223FF4C ; =0x02253398
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	bl ov18_0222B8F8
	ldr r1, _0223FF60 ; =0x0224969A
	mov r5, sl, lsl #2
	ldrh r4, [r1, r5]
	mov r3, #2
	ldr r2, _0223FF4C ; =0x02253398
	str r4, [sp]
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	ldr r3, _0223FF64 ; =0x02249698
	str r0, [sp, #0xc]
	ldr r0, [r2, #0]
	mov r1, #0
	ldrh r3, [r3, r5]
	ldr r0, [r0, #0x10]
	mov r2, r1
	bl ov18_02244A9C
	ldr r0, _0223FF4C ; =0x02253398
	mov r2, #0
	ldr r3, [r0, #0]
	mov r1, #0x100
	str r2, [sp]
	ldr r0, [r3, #0x10]
	ldr r3, [r3, #4]
	bl ov18_02244B70
	mov r0, #0
	mov r1, r0
	mov r2, #0x1f
	mov r3, r0
	bl ov18_02244E4C
	ldr r3, _0223FF4C ; =0x02253398
	add r4, sp, #0x1c
	ldr r3, [r3, #0]
	mov r0, #0
	ldrb r3, [r3, #0x1c]
	mov r1, #1
	mov r2, #0x1f
	ldrb r3, [r4, r3]
	bl ov18_02244E4C
	mov r0, #0
	mov r1, #3
	mov r2, #0x1f
	mov r3, #1
	bl ov18_02244E4C
	ldr r2, _0223FF68 ; =0x0224965E
	mov r0, #0
	mov r1, #1
	bl ov18_02244D34
	mov r0, #0xc0
	bl ov18_022402E4
	mov r2, #0x4000000
	ldr r0, [sp, #0x10]
	ldr r1, [r2, #0]
	cmp r0, #0
	bic r0, r1, #0xe000
	orr r0, r0, #0x6000
	str r0, [r2, #0]
	mov r0, #1
	mov r2, #0
	beq _0223FF24
	ldr r1, _0223FF6C ; =ov18_0223FFE8
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223FF4C ; =0x02253398
	add sp, sp, #0x24
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223FF24:
	ldr r1, _0223FF70 ; =ov18_02240048
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223FF4C ; =0x02253398
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223FF44: .word 0x02249654
_0223FF48: .word Unk_ov18_022532D8
_0223FF4C: .word Unk_ov18_02253398
_0223FF50: .word 0x04000050
_0223FF54: .word 0x02249708
_0223FF58: .word 0x02249710
_0223FF5C: .word 0x0224967A
_0223FF60: .word 0x0224969A
_0223FF64: .word 0x02249698
_0223FF68: .word 0x0224965E
_0223FF6C: .word ov18_0223FFE8
_0223FF70: .word ov18_02240048
	arm_func_end ov18_0223FC48

	arm_func_start ov18_0223FF74
ov18_0223FF74: ; 0x0223FF74
	stmfd sp!, {r3, lr}
	ldr r1, _0223FFB0 ; =0x02253398
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x14]
	bl ov18_022463AC
	ldr r1, _0223FFB4 ; =ov18_022405D8
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _0223FFB0 ; =0x02253398
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223FFB0: .word Unk_ov18_02253398
_0223FFB4: .word ov18_022405D8
	arm_func_end ov18_0223FF74

	arm_func_start ov18_0223FFB8
ov18_0223FFB8: ; 0x0223FFB8
	ldr r0, _0223FFC8 ; =0x02253398
	ldr r0, [r0, #0]
	ldrsb r0, [r0, #0x1b]
	bx lr
	; .align 2, 0
_0223FFC8: .word Unk_ov18_02253398
	arm_func_end ov18_0223FFB8

	arm_func_start ov18_0223FFCC
ov18_0223FFCC: ; 0x0223FFCC
	ldr r0, _0223FFE4 ; =0x02253398
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_0223FFE4: .word Unk_ov18_02253398
	arm_func_end ov18_0223FFCC

	arm_func_start ov18_0223FFE8
ov18_0223FFE8: ; 0x0223FFE8
	stmfd sp!, {r4, lr}
	ldr r1, _0224003C ; =0x02253398
	mov r4, r0
	ldr r3, [r1, #0]
	ldr r0, _02240040 ; =0x04000050
	ldrsb r2, [r3, #0x1a]
	sub r2, r2, #1
	strb r2, [r3, #0x1a]
	ldr r1, [r1, #0]
	ldrsb r1, [r1, #0x1a]
	bl G2x_ChangeBlendBrightness_
	ldr r1, _0224003C ; =0x02253398
	mvn r0, #0xb
	ldr r1, [r1, #0]
	ldrsb r1, [r1, #0x1a]
	cmp r1, r0
	ldmgtia sp!, {r4, pc}
	ldr r1, _02240044 ; =ov18_02240048
	mov r0, r4
	bl ov18_022463A4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224003C: .word Unk_ov18_02253398
_02240040: .word 0x04000050
_02240044: .word ov18_02240048
	arm_func_end ov18_0223FFE8

	arm_func_start ov18_02240048
ov18_02240048: ; 0x02240048
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _0224010C ; =0x02253398
	mov r4, r0
	ldr r0, [r1, #0]
	add r2, sp, #4
	ldr r0, [r0, #0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	ldr r1, _0224010C ; =0x02253398
	sub r0, r0, #0xc
	ldr r1, [r1, #0]
	str r0, [sp]
	ldrb r2, [r1, #0x1c]
	ldr r1, _02240110 ; =0x022496B2
	mov r2, r2, lsl #2
	ldrh r1, [r1, r2]
	cmp r0, r1
	ble _022400A8
	bl ov18_022402E4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_022400A8:
	mov r0, r1
	bl ov18_022402E4
	ldr r0, _0224010C ; =0x02253398
	mov r3, #0x78
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x1c]
	cmp r0, #5
	mov r0, #0
	bne _022400E0
	ldr r1, _02240114 ; =ov18_02240278
	mov r2, r0
	bl ov18_02246304
	ldr r1, _0224010C ; =0x02253398
	b _022400F0
_022400E0:
	ldr r1, _02240118 ; =ov18_0224011C
	mov r2, r0
	bl ov18_02246304
	ldr r1, _0224010C ; =0x02253398
_022400F0:
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0224010C: .word Unk_ov18_02253398
_02240110: .word 0x022496B2
_02240114: .word ov18_02240278
_02240118: .word ov18_0224011C
	arm_func_end ov18_02240048

	arm_func_start ov18_0224011C
ov18_0224011C: ; 0x0224011C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r4, _0224025C ; =0x02253398
	ldr sb, _02240260 ; =0x02249710
	ldr r0, [r4, #0]
	mov sl, #0
	ldrb r1, [r0, #0x1c]
	ldrb r0, [sb, r1]
	cmp r0, #0
	ble _022401A8
	ldr r8, _02240264 ; =0x022496E0
	ldr r7, _02240268 ; =0x02249666
	ldr r6, _0224026C ; =0x02249684
	add r5, sp, #0
_02240154:
	add r0, r7, r1, lsl #1
	ldrb r0, [sl, r0]
	add r3, r8, r1, lsl #3
	mov r2, r5
	add r0, r3, r0, lsl #2
	add r1, r6, r1, lsl #2
	bl ov18_02244C50
	mov r0, r5
	bl ov18_022455B8
	cmp r0, #0
	beq _02240190
	ldr r0, _0224025C ; =0x02253398
	ldr r0, [r0, #0]
	strb sl, [r0, #0x1b]
	b _022401A8
_02240190:
	ldr r0, [r4, #0]
	add sl, sl, #1
	ldrb r1, [r0, #0x1c]
	ldrb r0, [sb, r1]
	cmp sl, r0
	blt _02240154
_022401A8:
	mov r0, #1
	bl ov18_02245470
	cmp r0, #0
	beq _022401D4
	ldr r0, _0224025C ; =0x02253398
	ldr r1, _02240270 ; =0x02249670
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0x1c]
	mov r0, r0, lsl #1
	ldrsb r0, [r1, r0]
	strb r0, [r2, #0x1b]
_022401D4:
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02240200
	ldr r0, _0224025C ; =0x02253398
	ldr r1, _02240274 ; =0x02249671
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0x1c]
	mov r0, r0, lsl #1
	ldrsb r0, [r1, r0]
	strb r0, [r2, #0x1b]
_02240200:
	ldr r0, _0224025C ; =0x02253398
	ldr r2, _02240260 ; =0x02249710
	ldr r4, [r0, #0]
	mov r0, #0
	ldrb r1, [r4, #0x1c]
	ldrb r1, [r2, r1]
	cmp r1, #0
	ble _0224024C
	ldrsb r3, [r4, #0x1b]
_02240224:
	cmp r0, r3
	bne _02240238
	bl ov18_02240518
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02240238:
	ldrb r1, [r4, #0x1c]
	add r0, r0, #1
	ldrb r1, [r2, r1]
	cmp r0, r1
	blt _02240224
_0224024C:
	mvn r0, #0
	strb r0, [r4, #0x1b]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0224025C: .word Unk_ov18_02253398
_02240260: .word 0x02249710
_02240264: .word 0x022496E0
_02240268: .word 0x02249666
_0224026C: .word 0x02249684
_02240270: .word 0x02249670
_02240274: .word 0x02249671
	arm_func_end ov18_0224011C

	arm_func_start ov18_02240278
ov18_02240278: ; 0x02240278
	stmfd sp!, {r3, lr}
	ldr r2, _022402DC ; =0x02253398
	mvn ip, #0
	ldr r3, [r2, #0]
	mov r1, r0
	strb ip, [r3, #0x1b]
	ldr r3, [r2, #0]
	ldrh r0, [r3, #0x18]
	add r0, r0, #1
	strh r0, [r3, #0x18]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0x18]
	cmp r0, #0x78
	ldmloia sp!, {r3, pc}
	mov r0, #0
	bl ov18_022463AC
	ldr r1, _022402E0 ; =ov18_022405D8
	mov r0, #1
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldr r1, _022402DC ; =0x02253398
	ldr r1, [r1, #0]
	str r0, [r1, #0x14]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022402DC: .word Unk_ov18_02253398
_022402E0: .word ov18_022405D8
	arm_func_end ov18_02240278

	arm_func_start ov18_022402E4
ov18_022402E4: ; 0x022402E4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r1, _02240470 ; =0x02253398
	mov sl, r0
	ldr r0, [r1, #0]
	ldr r1, _02240474 ; =0x022496B0
	ldrb r2, [r0, #0x1c]
	ldr r0, [r0, #0]
	mov r3, sl
	mov r2, r2, lsl #2
	ldrh r2, [r1, r2]
	mvn r1, #0
	bl ov18_02243CF4
	ldr r0, _02240470 ; =0x02253398
	ldr r2, _02240474 ; =0x022496B0
	ldr r0, [r0, #0]
	add r3, sl, #8
	ldrb r4, [r0, #0x1c]
	ldr r0, [r0, #4]
	mvn r1, #0
	mov r4, r4, lsl #2
	ldrh r2, [r2, r4]
	add r2, r2, #8
	bl ov18_02243CF4
	ldr r0, _02240470 ; =0x02253398
	mov r1, sl
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov18_0224048C
	ldr r0, _02240470 ; =0x02253398
	mov r1, sl
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov18_0224048C
	ldr r4, _02240470 ; =0x02253398
	ldr r8, _02240478 ; =0x02249710
	ldr r0, [r4, #0]
	mov sb, #0
	ldrb r0, [r0, #0x1c]
	ldrb r1, [r8, r0]
	cmp r1, #0
	ble _02240408
	ldr r7, _0224047C ; =0x02249666
	ldr r5, _02240480 ; =0x022496E0
	ldr fp, _02240474 ; =0x022496B0
	mvn r6, #0
_0224039C:
	add r1, r7, r0, lsl #1
	ldrb ip, [sb, r1]
	add r2, r5, r0, lsl #3
	add r3, fp, r0, lsl #2
	add r0, r2, ip, lsl #2
	ldr r1, [r4, #0]
	mov ip, ip, lsl #2
	ldrh r2, [ip, r2]
	ldrh r0, [r0, #2]
	add r1, r1, sb, lsl #2
	ldrh r3, [r3, #2]
	add ip, sl, r0
	ldr r0, [r1, #8]
	mov r1, r6
	sub r3, ip, r3
	bl ov18_02243CF4
	ldr r0, [r4, #0]
	mov r1, sl
	add r0, r0, sb, lsl #2
	ldr r0, [r0, #8]
	bl ov18_0224048C
	ldr r0, [r4, #0]
	add sb, sb, #1
	ldrb r0, [r0, #0x1c]
	ldrb r1, [r8, r0]
	cmp sb, r1
	blt _0224039C
_02240408:
	and r1, sl, #0xff
	cmp r1, #0xc0
	movge r3, #0
	movge r1, r3
	bge _0224042C
	ldr r2, _02240484 ; =0x022496CA
	mov r3, r0, lsl #2
	ldrh r2, [r2, r3]
	add r3, r1, r2
_0224042C:
	ldr r4, _02240474 ; =0x022496B0
	mov r5, r0, lsl #2
	ldr r2, _02240488 ; =0x022496C8
	ldrh r0, [r4, r5]
	ldrh r2, [r2, r5]
	cmp r3, #0xc0
	add r4, sp, #4
	movgt r3, #0xc0
	add r2, r0, r2
	str r4, [sp]
	bl ov18_02244C38
	mov r0, #0
	mov r2, r4
	mov r1, r0
	bl ov18_02244D34
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02240470: .word Unk_ov18_02253398
_02240474: .word 0x022496B0
_02240478: .word 0x02249710
_0224047C: .word 0x02249666
_02240480: .word 0x022496E0
_02240484: .word 0x022496CA
_02240488: .word 0x022496C8
	arm_func_end ov18_022402E4

	arm_func_start ov18_0224048C
ov18_0224048C: ; 0x0224048C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r0
	mov sb, r1
	bl ov18_02243BC8
	mov r7, r0
	cmp r7, #0
	mov r8, #0
	addle sp, sp, #8
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov fp, #0x200
	mov r4, r8
	add r6, sp, #4
	add r5, sp, #0
_022404C4:
	mov r0, sl
	mov r1, r8
	mov r2, r6
	mov r3, r5
	bl ov18_02243E44
	ldr r0, [sp]
	cmp r0, sb
	blt _022404F0
	cmp r0, #0xc0
	movlt r2, r4
	blt _022404F4
_022404F0:
	mov r2, fp
_022404F4:
	mov r0, sl
	mov r1, r8
	mov r3, #0
	bl ov18_02243BD0
	add r8, r8, #1
	cmp r8, r7
	blt _022404C4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov18_0224048C

	arm_func_start ov18_02240518
ov18_02240518: ; 0x02240518
	stmfd sp!, {r4, lr}
	ldr r1, _022405C4 ; =0x02253398
	mov r4, r0
	ldr r0, [r1, #0]
	mov r1, #0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #8]
	bl ov18_02243BBC
	ldr r1, _022405C4 ; =0x02253398
	mov r2, r0
	ldr r0, [r1, #0]
	ldr r1, _022405C8 ; =0x0224967A
	ldrb r3, [r0, #0x1c]
	mov r0, #0
	add r1, r1, r3, lsl #1
	ldrb r1, [r4, r1]
	add r1, r1, #1
	bl ov18_02243ECC
	ldr r0, _022405C4 ; =0x02253398
	ldr r2, _022405CC ; =0x02249666
	ldr r0, [r0, #0]
	ldr r1, _022405D0 ; =0x022496E0
	ldrb lr, [r0, #0x1c]
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #8]
	add r2, r2, lr, lsl #1
	ldrb r3, [r4, r2]
	add r2, r1, lr, lsl #3
	mvn r1, #0
	mov ip, r3, lsl #2
	ldrh r2, [ip, r2]
	ldr r3, _022405D4 ; =0x022496E2
	add r3, r3, lr, lsl #3
	ldrh r3, [ip, r3]
	bl ov18_02243CF4
	ldr r0, _022405C4 ; =0x02253398
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #0
	add r0, r0, r4, lsl #2
	ldr r0, [r0, #8]
	bl ov18_02243DE4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022405C4: .word Unk_ov18_02253398
_022405C8: .word 0x0224967A
_022405CC: .word 0x02249666
_022405D0: .word 0x022496E0
_022405D4: .word 0x022496E2
	arm_func_end ov18_02240518

	arm_func_start ov18_022405D8
ov18_022405D8: ; 0x022405D8
	stmfd sp!, {r3, lr}
	ldr r1, _0224060C ; =0x02253398
	ldr r3, [r1, #0]
	ldrb r2, [r3, #0x1d]
	add r2, r2, #1
	strb r2, [r3, #0x1d]
	ldr r1, [r1, #0]
	ldrb r1, [r1, #0x1d]
	cmp r1, #8
	ldmloia sp!, {r3, pc}
	ldr r1, _02240610 ; =ov18_02240614
	bl ov18_022463A4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0224060C: .word Unk_ov18_02253398
_02240610: .word ov18_02240614
	arm_func_end ov18_022405D8

	arm_func_start ov18_02240614
ov18_02240614: ; 0x02240614
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _02240698 ; =0x02253398
	mov r4, r0
	ldr r0, [r1, #0]
	add r2, sp, #4
	ldr r0, [r0, #0]
	add r3, sp, #0
	mov r1, #0
	bl ov18_02243E44
	ldr r0, [sp]
	add r0, r0, #0xc
	str r0, [sp]
	bl ov18_022402E4
	ldr r0, [sp]
	cmp r0, #0xc0
	addlt sp, sp, #8
	ldmltia sp!, {r4, pc}
	ldr r0, _02240698 ; =0x02253398
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x1e]
	cmp r0, #0
	beq _02240684
	ldr r1, _0224069C ; =ov18_022406A4
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
_02240684:
	ldr r1, _022406A0 ; =ov18_02240700
	mov r0, r4
	bl ov18_022463A4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02240698: .word Unk_ov18_02253398
_0224069C: .word ov18_022406A4
_022406A0: .word ov18_02240700
	arm_func_end ov18_02240614

	arm_func_start ov18_022406A4
ov18_022406A4: ; 0x022406A4
	stmfd sp!, {r4, lr}
	ldr r1, _022406F4 ; =0x02253398
	mov r4, r0
	ldr r3, [r1, #0]
	ldr r0, _022406F8 ; =0x04000050
	ldrsb r2, [r3, #0x1a]
	add r2, r2, #1
	strb r2, [r3, #0x1a]
	ldr r1, [r1, #0]
	ldrsb r1, [r1, #0x1a]
	bl G2x_ChangeBlendBrightness_
	ldr r0, _022406F4 ; =0x02253398
	ldr r0, [r0, #0]
	ldrsb r0, [r0, #0x1a]
	cmp r0, #0
	ldmltia sp!, {r4, pc}
	ldr r1, _022406FC ; =ov18_02240700
	mov r0, r4
	bl ov18_022463A4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022406F4: .word Unk_ov18_02253398
_022406F8: .word 0x04000050
_022406FC: .word ov18_02240700
	arm_func_end ov18_022406A4

	arm_func_start ov18_02240700
ov18_02240700: ; 0x02240700
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0x4000000
	ldr r2, [r3, #0]
	ldr r1, _022407A4 ; =0x02253398
	bic r2, r2, #0xe000
	str r2, [r3, #0]
	ldr r1, [r1, #0]
	mov r6, r0
	ldr r0, [r1, #0]
	bl ov18_02243B3C
	ldr r0, _022407A4 ; =0x02253398
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl ov18_02243B3C
	ldr r7, _022407A4 ; =0x02253398
	ldr r4, _022407A8 ; =0x02249710
	ldr r1, [r7, #0]
	mov r5, #0
	ldrb r0, [r1, #0x1c]
	ldrb r0, [r4, r0]
	cmp r0, #0
	ble _02240784
_02240758:
	add r0, r1, r5, lsl #2
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0224076C
	bl ov18_02243B3C
_0224076C:
	ldr r1, [r7, #0]
	add r5, r5, #1
	ldrb r0, [r1, #0x1c]
	ldrb r0, [r4, r0]
	cmp r5, r0
	blt _02240758
_02240784:
	ldr r0, [r1, #0x10]
	bl ov18_02244650
	mov r1, r6
	mov r0, #1
	bl ov18_022463AC
	ldr r0, _022407AC ; =0x02253398
	bl ov18_0224508C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022407A4: .word Unk_ov18_02253398
_022407A8: .word 0x02249710
_022407AC: .word Unk_ov18_02253398
	arm_func_end ov18_02240700

	.rodata


	.global Unk_ov18_02249654
Unk_ov18_02249654: ; 0x02249654
	.incbin "incbin/overlay18_rodata.bin", 0x3220, 0x3224 - 0x3220

	.global Unk_ov18_02249658
Unk_ov18_02249658: ; 0x02249658
	.incbin "incbin/overlay18_rodata.bin", 0x3224, 0x322A - 0x3224

	.global Unk_ov18_0224965E
Unk_ov18_0224965E: ; 0x0224965E
	.incbin "incbin/overlay18_rodata.bin", 0x322A, 0x3232 - 0x322A

	.global Unk_ov18_02249666
Unk_ov18_02249666: ; 0x02249666
	.incbin "incbin/overlay18_rodata.bin", 0x3232, 0x323C - 0x3232

	.global Unk_ov18_02249670
Unk_ov18_02249670: ; 0x02249670
	.incbin "incbin/overlay18_rodata.bin", 0x323C, 0x3246 - 0x323C

	.global Unk_ov18_0224967A
Unk_ov18_0224967A: ; 0x0224967A
	.incbin "incbin/overlay18_rodata.bin", 0x3246, 0x3250 - 0x3246

	.global Unk_ov18_02249684
Unk_ov18_02249684: ; 0x02249684
	.incbin "incbin/overlay18_rodata.bin", 0x3250, 0x3264 - 0x3250

	.global Unk_ov18_02249698
Unk_ov18_02249698: ; 0x02249698
	.incbin "incbin/overlay18_rodata.bin", 0x3264, 0x327C - 0x3264

	.global Unk_ov18_022496B0
Unk_ov18_022496B0: ; 0x022496B0
	.incbin "incbin/overlay18_rodata.bin", 0x327C, 0x3294 - 0x327C

	.global Unk_ov18_022496C8
Unk_ov18_022496C8: ; 0x022496C8
	.incbin "incbin/overlay18_rodata.bin", 0x3294, 0x32AC - 0x3294

	.global Unk_ov18_022496E0
Unk_ov18_022496E0: ; 0x022496E0
	.incbin "incbin/overlay18_rodata.bin", 0x32AC, 0x32D4 - 0x32AC

	.global Unk_ov18_02249708
Unk_ov18_02249708: ; 0x02249708
	.incbin "incbin/overlay18_rodata.bin", 0x32D4, 0x32DC - 0x32D4

	.global Unk_ov18_02249710
Unk_ov18_02249710: ; 0x02249710
	.incbin "incbin/overlay18_rodata.bin", 0x32DC, 0x6



	.bss


	.global Unk_ov18_02253398
Unk_ov18_02253398: ; 0x02253398
	.space 0x4

