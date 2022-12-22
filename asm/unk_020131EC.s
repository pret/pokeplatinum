	.include "macros/function.inc"
	.include "include/unk_020131EC.inc"

	

	.text


	thumb_func_start sub_020131EC
sub_020131EC: ; 0x020131EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r6, [sp, #0x20]
	str r1, [sp, #4]
	add r5, r2, #0
	add r4, r3, #0
	str r0, [sp, #0x24]
	mov r7, #0
_02013200:
	ldr r1, [r4, #0]
	ldr r0, [sp, #4]
	ldr r2, [r5, #0]
	add r0, r0, r1
	ldr r1, [sp]
	add r1, r1, r2
	add r2, r6, #0
	bl memcpy
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r0, r1, r0
	str r0, [r5, #0]
	ldr r0, [r4, #0]
	add r0, r0, r6
	str r0, [r4, #0]
	cmp r7, #8
	blt _02013200
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_020131EC

	thumb_func_start sub_0201322C
sub_0201322C: ; 0x0201322C
	push {r4, r5, r6, lr}
	add r5, r3, #0
	bl sub_02006AC0
	add r4, r0, #0
	bne _0201323C
	bl GF_AssertFail
_0201323C:
	add r0, r4, #0
	add r1, r5, #0
	bl NNS_G2dGetUnpackedCharacterData
	add r6, r0, #0
	cmp r5, #0
	bne _0201324E
	bl GF_AssertFail
_0201324E:
	cmp r6, #0
	bne _02013256
	bl GF_AssertFail
_02013256:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0201322C

	thumb_func_start sub_02013260
sub_02013260: ; 0x02013260
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r4, [sp, #0x40]
	str r0, [sp, #8]
	add r6, r0, r2
	ldrh r0, [r4, #2]
	str r1, [sp, #0xc]
	add r5, r3, #0
	cmp r0, r6
	bge _02013278
	bl GF_AssertFail
_02013278:
	ldr r0, [sp, #0xc]
	ldrh r1, [r4]
	add r0, r0, r5
	str r0, [sp, #0x14]
	cmp r1, r0
	bge _02013288
	bl GF_AssertFail
_02013288:
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x1c]
	ldrh r0, [r4, #2]
	lsl r7, r0, #2
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	mul r1, r7
	ldr r0, [sp, #8]
	str r1, [sp, #0x18]
	lsl r1, r0, #2
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _020132F2
_020132B4:
	ldr r4, [sp, #8]
	add r0, r4, #0
	cmp r0, r6
	bge _020132E0
	ldr r0, [sp, #0x18]
	lsl r1, r0, #3
	ldr r0, [sp, #0x10]
	add r5, r0, r1
_020132C4:
	str r5, [sp, #0x28]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #4]
	bl sub_020131EC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _020132C4
_020132E0:
	ldr r0, [sp, #0x18]
	add r0, r0, r7
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _020132B4
_020132F2:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02013260

	thumb_func_start sub_020132F8
sub_020132F8: ; 0x020132F8
	push {r4, r5}
	sub sp, #8
	ldr r2, _02013330 ; =0x020E52FC
	add r1, sp, #0
	ldr r3, [r2, #0]
	ldr r2, [r2, #4]
	str r3, [sp]
	str r2, [sp, #4]
	ldr r2, _02013334 ; =0x000001EF
	mov r5, #0
	add r3, r2, #0
_0201330E:
	ldr r4, [r1, #0]
	cmp r4, r3
	beq _02013328
	cmp r4, r0
	bne _02013320
	add sp, #8
	mov r0, #1
	pop {r4, r5}
	bx lr
_02013320:
	add r5, r5, #1
	add r1, r1, #4
	cmp r5, r2
	blt _0201330E
_02013328:
	mov r0, #0
	add sp, #8
	pop {r4, r5}
	bx lr
	; .align 2, 0
_02013330: .word 0x020E52FC
_02013334: .word 0x000001EF
	thumb_func_end sub_020132F8

	thumb_func_start sub_02013338
sub_02013338: ; 0x02013338
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r3, #0
	mov r3, #0
	str r3, [sp, #8]
	add r3, sp, #8
	add r5, r0, #0
	bl sub_0201322C
	ldr r0, [sp, #8]
	add r1, r5, #0
	ldr r0, [r0, #0x14]
	bl sub_020093A0
	ldr r0, [sp, #0x34]
	bl sub_020132F8
	ldr r1, [sp, #0x30]
	cmp r1, #2
	bne _02013370
	cmp r0, #1
	bne _02013370
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0x14]
	ldr r2, [sp, #0x2c]
	bl sub_020091D8
_02013370:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	bl sub_02013260
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end sub_02013338

	thumb_func_start sub_02013388
sub_02013388: ; 0x02013388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	add r5, r2, #0
	ldr r2, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	add r6, r0, #0
	mul r1, r2
	add r0, r5, #0
	lsl r1, r1, #5
	str r3, [sp, #0x20]
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	add r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x1c]
	add r0, r6, #0
	bl sub_02013338
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02013388

	thumb_func_start sub_020133D4
sub_020133D4: ; 0x020133D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r3, [sp, #8]
	ldr r3, [sp, #0x48]
	add r4, r0, #0
	str r3, [sp, #0x48]
	mov r3, #0
	str r3, [sp, #0x2c]
	bl sub_02006AC0
	str r0, [sp, #0x20]
	cmp r0, #0
	bne _020133F2
	bl GF_AssertFail
_020133F2:
	ldr r0, [sp, #0x20]
	add r1, sp, #0x2c
	bl NNS_G2dGetUnpackedCharacterData
	cmp r0, #0
	bne _02013402
	bl GF_AssertFail
_02013402:
	ldr r1, [sp, #0x4c]
	ldr r0, [sp, #8]
	add r6, r0, r1
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #2]
	cmp r0, r6
	bge _02013414
	bl GF_AssertFail
_02013414:
	ldr r1, [sp, #0x50]
	ldr r0, [sp, #0x48]
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	ldrh r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0201342A
	bl GF_AssertFail
_0201342A:
	ldr r0, [sp, #0x2c]
	add r1, r4, #0
	ldr r0, [r0, #0x14]
	str r0, [sp, #0x1c]
	bl sub_020093A0
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	ldrh r0, [r0, #2]
	lsl r7, r0, #2
	ldr r0, [sp, #0x48]
	add r1, r0, #0
	mul r1, r7
	ldr r0, [sp, #8]
	str r1, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	add r0, r1, r0
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x48]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bge _0201349E
_02013460:
	ldr r4, [sp, #8]
	add r0, r4, #0
	cmp r0, r6
	bge _0201348C
	ldr r0, [sp, #0x14]
	lsl r1, r0, #3
	ldr r0, [sp, #0xc]
	add r5, r0, r1
_02013470:
	str r5, [sp, #0x28]
	mov r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r2, sp, #0x28
	add r3, sp, #0x24
	str r7, [sp, #4]
	bl sub_020131EC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _02013470
_0201348C:
	ldr r0, [sp, #0x14]
	add r0, r0, r7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x48]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0x48]
	cmp r1, r0
	blt _02013460
_0201349E:
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020133D4

	thumb_func_start sub_020134A8
sub_020134A8: ; 0x020134A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r5, r2, #0
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	add r6, r0, #0
	mul r1, r2
	add r0, r5, #0
	lsl r1, r1, #5
	str r3, [sp, #0x10]
	bl sub_02018144
	add r4, r0, #0
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r6, #0
	str r4, [sp, #0xc]
	bl sub_020133D4
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020134A8

	thumb_func_start sub_020134E4
sub_020134E4: ; 0x020134E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	str r2, [sp, #4]
	str r0, [sp, #0x14]
	add r0, r2, #0
	add r7, r0, r1
	ldr r1, [sp, #0x3c]
	add r0, r3, #0
	add r0, r0, r1
	add r1, r3, #0
	str r3, [sp, #8]
	ldr r5, [sp, #0x40]
	str r0, [sp, #0x10]
	cmp r1, r0
	bge _0201355C
	add r0, r3, #0
	lsl r0, r0, #5
	str r0, [sp, #0xc]
	add r0, r2, #0
	lsl r0, r0, #5
	str r0, [sp, #0x1c]
_02013518:
	ldr r6, [sp, #4]
	add r0, r6, #0
	cmp r0, r7
	bge _0201354A
	ldr r1, [sp]
	ldr r0, [sp, #0xc]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x1c]
	add r4, r0, r2
_0201352C:
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x14]
	mov r2, #0x20
	add r0, r0, r1
	ldr r1, [sp, #0x18]
	add r1, r1, r4
	bl memcpy
	ldr r0, [r5, #0]
	add r6, r6, #1
	add r0, #0x20
	str r0, [r5, #0]
	add r4, #0x20
	cmp r6, r7
	blt _0201352C
_0201354A:
	ldr r0, [sp, #0xc]
	add r0, #0x20
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #8]
	cmp r1, r0
	blt _02013518
_0201355C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020134E4

	thumb_func_start sub_02013560
sub_02013560: ; 0x02013560
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r2, #0
	ldr r2, [r4, #8]
	str r2, [sp]
	ldr r2, [r4, #0xc]
	str r2, [sp, #4]
	ldr r2, [sp, #0x20]
	str r3, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x24]
	str r2, [sp, #0x10]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_020134E4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end sub_02013560

	thumb_func_start sub_02013584
sub_02013584: ; 0x02013584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	mov ip, r3
	add r5, r2, #0
	ldr r6, [sp, #0x94]
	ldr r7, [sp, #0x98]
	ldr r3, _020135EC ; =0x020E5324
	str r1, [sp, #0x10]
	str r0, [sp, #0x9c]
	add r2, sp, #0x1c
	mov r4, #0xc
_0201359E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _0201359E
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	mov r3, ip
	str r7, [sp, #8]
	bl sub_020134A8
	str r0, [sp, #0x14]
	mov r4, #0
	add r5, sp, #0x1c
_020135C4:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x9c]
	add r2, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, sp, #0x18
	bl sub_02013560
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _020135C4
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_020135EC: .word 0x020E5324
	thumb_func_end sub_02013584

	thumb_func_start sub_020135F0
sub_020135F0: ; 0x020135F0
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [r3, #4]
	str r4, [sp]
	ldr r4, [r3, #8]
	str r4, [sp, #4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #8]
	ldr r4, [sp, #0x18]
	str r4, [sp, #0xc]
	ldr r3, [r3, #0]
	bl sub_02013584
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020135F0

	thumb_func_start sub_02013610
sub_02013610: ; 0x02013610
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, _02013638 ; =0x020E5304
	add r5, r3, #0
	add r3, sp, #4
	add r7, r0, #0
	mov ip, r1
	add r6, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r7, #0
	mov r1, ip
	add r3, r6, #0
	str r5, [sp]
	bl sub_020135F0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02013638: .word 0x020E5304
	thumb_func_end sub_02013610

	thumb_func_start sub_0201363C
sub_0201363C: ; 0x0201363C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x32
	add r7, r2, #0
	add r5, r0, #0
	add r0, r7, #0
	lsl r1, r1, #6
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	add r3, r4, #0
	bl sub_02013610
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0201363C

	thumb_func_start sub_02013660
sub_02013660: ; 0x02013660
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	mov r1, #0x20
	bl sub_02018144
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	bl sub_02006AC0
	add r1, sp, #0
	add r5, r0, #0
	bl NNS_G2dGetUnpackedPaletteData
	cmp r0, #1
	beq _0201368C
	bl GF_AssertFail
_0201368C:
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl MIi_CpuCopy16
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02013660

	thumb_func_start sub_020136A4
sub_020136A4: ; 0x020136A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xac]
	mov ip, r3
	add r5, r2, #0
	ldr r6, [sp, #0xa4]
	ldr r7, [sp, #0xa8]
	ldr r3, _0201371C ; =0x020E5384
	str r1, [sp, #0x20]
	str r0, [sp, #0xac]
	add r2, sp, #0x2c
	mov r4, #0xc
_020136BE:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r4, r4, #1
	bne _020136BE
	mov r0, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xa0]
	ldr r1, [sp, #0x20]
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [sp, #0xb0]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xb4]
	add r2, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xb8]
	mov r3, ip
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xbc]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	bl sub_02013388
	str r0, [sp, #0x24]
	mov r4, #0
	add r5, sp, #0x2c
_020136F4:
	ldr r0, [sp, #0x24]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xac]
	add r2, r5, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r3, sp, #0x28
	bl sub_02013560
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _020136F4
	ldr r0, [sp, #0x24]
	bl sub_020181C4
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0201371C: .word 0x020E5384
	thumb_func_end sub_020136A4

	thumb_func_start sub_02013720
sub_02013720: ; 0x02013720
	push {r4, lr}
	sub sp, #0x20
	ldr r4, [r3, #4]
	str r4, [sp]
	ldr r4, [r3, #8]
	str r4, [sp, #4]
	ldr r4, [r3, #0xc]
	str r4, [sp, #8]
	ldr r4, [sp, #0x28]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x10]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x34]
	str r4, [sp, #0x18]
	ldr r4, [sp, #0x38]
	str r4, [sp, #0x1c]
	ldr r3, [r3, #0]
	bl sub_020136A4
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02013720

	thumb_func_start sub_02013750
sub_02013750: ; 0x02013750
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, _02013788 ; =0x020E5314
	add r5, r3, #0
	add r3, sp, #0x14
	add r7, r0, #0
	mov ip, r1
	add r6, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [sp, #0x38]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	mov r1, ip
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r3, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl sub_02013720
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02013788: .word 0x020E5314
	thumb_func_end sub_02013750

	.rodata


	.global Unk_020E52FC
Unk_020E52FC: ; 0x020E52FC
	.incbin "incbin/arm9_rodata.bin", 0x6BC, 0x6C4 - 0x6BC

	.global Unk_020E5304
Unk_020E5304: ; 0x020E5304
	.incbin "incbin/arm9_rodata.bin", 0x6C4, 0x6D4 - 0x6C4

	.global Unk_020E5314
Unk_020E5314: ; 0x020E5314
	.incbin "incbin/arm9_rodata.bin", 0x6D4, 0x6E4 - 0x6D4

	.global Unk_020E5324
Unk_020E5324: ; 0x020E5324
	.incbin "incbin/arm9_rodata.bin", 0x6E4, 0x744 - 0x6E4

	.global Unk_020E5384
Unk_020E5384: ; 0x020E5384
	.incbin "incbin/arm9_rodata.bin", 0x744, 0x60

