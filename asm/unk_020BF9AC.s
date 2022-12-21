	.include "macros/function.inc"
	.include "include/unk_020BF9AC.inc"

	

	.text


	arm_func_start sub_020BF9AC
sub_020BF9AC: ; 0x020BF9AC
	stmfd sp!, {r3, lr}
	bl sub_020BFB24
	ldr r1, _020BFA98 ; =0x04000504
	mov r0, #0
	str r0, [r1, #0]
_020BF9C0:
	ldr r0, [r1, #0xfc]
	tst r0, #0x8000000
	bne _020BF9C0
	ldr r0, _020BFA9C ; =0x04000060
	mov r2, #0
	strh r2, [r0]
	str r2, [r1, #0xfc]
	str r2, [r0, #-0x50]
	ldrh ip, [r0]
	ldr r2, _020BFAA0 ; =0xFFFFCFFD
	ldr r3, _020BFAA4 ; =0x0000CFFB
	orr ip, ip, #0x2000
	strh ip, [r0]
	ldrh ip, [r0]
	orr ip, ip, #0x1000
	strh ip, [r0]
	ldrh ip, [r0]
	and r2, ip, r2
	strh r2, [r0]
	ldrh r2, [r0]
	bic r2, r2, #0x3000
	orr r2, r2, #0x10
	strh r2, [r0]
	ldrh r2, [r0]
	and r2, r2, r3
	strh r2, [r0]
	ldr r0, [r1, #0xfc]
	orr r0, r0, #0x8000
	str r0, [r1, #0xfc]
	ldr r0, [r1, #0xfc]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x80000000
	str r0, [r1, #0xfc]
	bl sub_020BFB4C
	ldr r1, _020BFAA8 ; =0x04000350
	mov r2, #0
	ldr r0, _020BFAAC ; =0x00007FFF
	str r2, [r1, #0]
	strh r0, [r1, #4]
	strh r2, [r1, #6]
	str r2, [r1, #8]
	strh r2, [r1, #0xc]
	sub r1, r1, #0x348
	ldrh r0, [r1]
	bic r0, r0, #3
	strh r0, [r1]
	bl sub_020BFD80
	ldr r2, _020BFAB0 ; =0x001F0080
	ldr r1, _020BFAB4 ; =0x040004A4
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFA98: .word 0x04000504
_020BFA9C: .word 0x04000060
_020BFAA0: .word 0xFFFFCFFD
_020BFAA4: .word 0x0000CFFB
_020BFAA8: .word 0x04000350
_020BFAAC: .word 0x00007FFF
_020BFAB0: .word 0x001F0080
_020BFAB4: .word 0x040004A4
	arm_func_end sub_020BF9AC

	arm_func_start sub_020BFAB8
sub_020BFAB8: ; 0x020BFAB8
	stmfd sp!, {r3, lr}
	ldr r2, _020BFB14 ; =0x04000600
_020BFAC0:
	ldr r0, [r2, #0]
	tst r0, #0x8000000
	bne _020BFAC0
	ldr r0, [r2, #0]
	ldr r1, _020BFB18 ; =0x04000060
	orr r0, r0, #0x8000
	str r0, [r2, #0]
	ldrh r0, [r1]
	orr r0, r0, #0x2000
	strh r0, [r1]
	ldrh r0, [r1]
	orr r0, r0, #0x1000
	strh r0, [r1]
	bl sub_020BFBE4
	ldr r2, _020BFB1C ; =0x001F0080
	ldr r1, _020BFB20 ; =0x040004A4
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFB14: .word 0x04000600
_020BFB18: .word 0x04000060
_020BFB1C: .word 0x001F0080
_020BFB20: .word 0x040004A4
	arm_func_end sub_020BFAB8

	arm_func_start sub_020BFB24
sub_020BFB24: ; 0x020BFB24
	stmfd sp!, {r3, lr}
	ldr r0, _020BFB44 ; =0x04000400
	bl sub_020BFEBC
	ldr r1, _020BFB48 ; =0x04000600
_020BFB34:
	ldr r0, [r1, #0]
	tst r0, #0x8000000
	bne _020BFB34
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFB44: .word 0x04000400
_020BFB48: .word 0x04000600
	arm_func_end sub_020BFB24

	arm_func_start sub_020BFB4C
sub_020BFB4C: ; 0x020BFB4C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020BFBD8 ; =0x04000600
	ldr r0, [r1, #0]
	orr r0, r0, #0x8000
	str r0, [r1, #0]
	add r4, sp, #4
_020BFB68:
	mov r0, r4
	bl sub_020BFE20
	cmp r0, #0
	bne _020BFB68
	add r4, sp, #0
_020BFB7C:
	mov r0, r4
	bl sub_020BFE50
	cmp r0, #0
	bne _020BFB7C
	ldr r1, _020BFBDC ; =0x04000440
	mov r0, #3
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1, #0]
	ldr r0, [sp]
	mov r2, #0
	cmp r0, #0
	strne r0, [r1, #8]
	ldr r1, _020BFBE0 ; =0x04000454
	mov r0, #2
	str r2, [r1, #0]
	str r0, [r1, #-0x14]
	ldr r0, [sp, #4]
	str r0, [r1, #-0xc]
	str r2, [r1, #0]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BFBD8: .word 0x04000600
_020BFBDC: .word 0x04000440
_020BFBE0: .word 0x04000454
	arm_func_end sub_020BFB4C

	arm_func_start sub_020BFBE4
sub_020BFBE4: ; 0x020BFBE4
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _020BFC6C ; =0x04000600
	ldr r0, [r1, #0]
	orr r0, r0, #0x8000
	str r0, [r1, #0]
	add r4, sp, #4
_020BFC00:
	mov r0, r4
	bl sub_020BFE20
	cmp r0, #0
	bne _020BFC00
	add r4, sp, #0
_020BFC14:
	mov r0, r4
	bl sub_020BFE50
	cmp r0, #0
	bne _020BFC14
	ldr r1, _020BFC70 ; =0x04000440
	mov r0, #3
	str r0, [r1, #0]
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r2, _020BFC70 ; =0x04000440
	cmp r0, #0
	strne r0, [r1, #8]
	mov r0, #2
	str r0, [r2, #0]
	ldr r1, [sp, #4]
	mov r0, #0
	str r1, [r2, #8]
	str r0, [r2, #0x14]
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020BFC6C: .word 0x04000600
_020BFC70: .word 0x04000440
	arm_func_end sub_020BFBE4

	arm_func_start sub_020BFC74
sub_020BFC74: ; 0x020BFC74
	cmp r0, #0
	beq _020BFCA8
	ldr ip, _020BFCC0 ; =0x0400035C
	mov r0, r1, lsl #6
	strh r3, [ip]
	sub r3, ip, #0x2fc
	ldrh r1, [r3]
	orr r0, r0, r2, lsl #8
	orr r0, r0, #0x80
	bic r1, r1, #0x3f40
	orr r0, r1, r0
	strh r0, [r3]
	bx lr
_020BFCA8:
	ldr r2, _020BFCC4 ; =0x04000060
	ldr r0, _020BFCC8 ; =0x0000CF7F
	ldrh r1, [r2]
	and r0, r1, r0
	strh r0, [r2]
	bx lr
	; .align 2, 0
_020BFCC0: .word 0x0400035C
_020BFCC4: .word 0x04000060
_020BFCC8: .word 0x0000CF7F
	arm_func_end sub_020BFC74

	arm_func_start sub_020BFCCC
sub_020BFCCC: ; 0x020BFCCC
	stmfd sp!, {r3, lr}
	ldr r2, _020BFCF8 ; =0x04000600
	mov r1, r0
	ldr r0, [r2, #0]
	tst r0, #0x8000000
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x40
	bl sub_020C4CC8
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFCF8: .word 0x04000600
	arm_func_end sub_020BFCCC

	arm_func_start sub_020BFCFC
sub_020BFCFC: ; 0x020BFCFC
	stmfd sp!, {r3, lr}
	ldr r2, _020BFD28 ; =0x04000600
	mov r1, r0
	ldr r0, [r2, #0]
	tst r0, #0x8000000
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r2, #0x80
	bl sub_020C4C88
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFD28: .word 0x04000600
	arm_func_end sub_020BFCFC

	arm_func_start sub_020BFD2C
sub_020BFD2C: ; 0x020BFD2C
	ldr ip, _020BFD3C ; =sub_020C4B18
	ldr r1, _020BFD40 ; =0x04000330
	mov r2, #0x10
	bx ip
	; .align 2, 0
_020BFD3C: .word sub_020C4B18
_020BFD40: .word 0x04000330
	arm_func_end sub_020BFD2C

	arm_func_start sub_020BFD44
sub_020BFD44: ; 0x020BFD44
	ldr ip, _020BFD50 ; =sub_020C4C6C
	ldr r1, _020BFD54 ; =0x04000360
	bx ip
	; .align 2, 0
_020BFD50: .word sub_020C4C6C
_020BFD54: .word 0x04000360
	arm_func_end sub_020BFD44

	arm_func_start sub_020BFD58
sub_020BFD58: ; 0x020BFD58
	ldr ip, [sp]
	orr r0, r0, r1, lsl #16
	orr r1, r0, r3, lsl #24
	cmp ip, #0
	ldr r0, _020BFD7C ; =0x04000350
	orrne r1, r1, #0x8000
	str r1, [r0, #0]
	strh r2, [r0, #4]
	bx lr
	; .align 2, 0
_020BFD7C: .word 0x04000350
	arm_func_end sub_020BFD58

	arm_func_start sub_020BFD80
sub_020BFD80: ; 0x020BFD80
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _020BFE10 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	ldr r1, _020BFE14 ; =0x04000330
	beq _020BFDD0
	mov r2, #0
	str r2, [sp]
	mov r3, #0x10
	str r2, [sp, #4]
	bl sub_020C4430
	ldr r0, _020BFE10 ; =0x02101148
	ldr r1, _020BFE18 ; =0x04000360
	ldr r0, [r0, #0]
	mov r2, #0
	mov r3, #0x60
	bl sub_020C42D4
	b _020BFDEC
_020BFDD0:
	mov r0, #0
	mov r2, #0x10
	bl sub_020C4B4C
	ldr r1, _020BFE18 ; =0x04000360
	mov r0, #0
	mov r2, #0x60
	bl sub_020C4B4C
_020BFDEC:
	mov r2, #0
	ldr r0, _020BFE1C ; =0x040004D0
	mov r1, r2
_020BFDF8:
	add r2, r2, #1
	str r1, [r0, #0]
	cmp r2, #0x20
	blt _020BFDF8
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BFE10: .word 0x02101148
_020BFE14: .word 0x04000330
_020BFE18: .word 0x04000360
_020BFE1C: .word 0x040004D0
	arm_func_end sub_020BFD80

	arm_func_start sub_020BFE20
sub_020BFE20: ; 0x020BFE20
	ldr r2, _020BFE4C ; =0x04000600
	ldr r1, [r2, #0]
	tst r1, #0x4000
	mvnne r0, #0
	bxne lr
	ldr r1, [r2, #0]
	and r1, r1, #0x1f00
	mov r1, r1, lsr #8
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	; .align 2, 0
_020BFE4C: .word 0x04000600
	arm_func_end sub_020BFE20

	arm_func_start sub_020BFE50
sub_020BFE50: ; 0x020BFE50
	ldr r2, _020BFE7C ; =0x04000600
	ldr r1, [r2, #0]
	tst r1, #0x4000
	mvnne r0, #0
	bxne lr
	ldr r1, [r2, #0]
	and r1, r1, #0x2000
	mov r1, r1, lsr #0xd
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	; .align 2, 0
_020BFE7C: .word 0x04000600
	arm_func_end sub_020BFE50

	arm_func_start sub_020BFE80
sub_020BFE80: ; 0x020BFE80
	ldr r2, _020BFEA8 ; =0x04000600
	ldr r1, [r2, #0]
	tst r1, #1
	mvnne r0, #0
	bxne lr
	ldr r1, [r2, #0]
	and r1, r1, #2
	str r1, [r0, #0]
	mov r0, #0
	bx lr
	; .align 2, 0
_020BFEA8: .word 0x04000600
	arm_func_end sub_020BFE80

	arm_func_start sub_020BFEAC
sub_020BFEAC: ; 0x020BFEAC
	ldr r1, _020BFEB8 ; =0x04000010
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020BFEB8: .word 0x04000010
	arm_func_end sub_020BFEAC

	arm_func_start sub_020BFEBC
sub_020BFEBC: ; 0x020BFEBC
	mov r1, #0
	mov r2, #0
	mov r3, #0
	mov ip, #0
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	stmia r0, {r1, r2, r3, ip}
	bx lr
	arm_func_end sub_020BFEBC