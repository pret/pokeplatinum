	.include "macros/function.inc"
	.include "include/unk_020A5F6C.inc"

	

	.text


	arm_func_start sub_020A5F6C
sub_020A5F6C: ; 0x020A5F6C
	stmfd sp!, {r3, lr}
	mov r2, r0
	add r0, r1, #1
	ldr r1, [r2, #4]
	bl sub_020E2178
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	arm_func_end sub_020A5F6C

	arm_func_start sub_020A5F8C
sub_020A5F8C: ; 0x020A5F8C
	ldrh r1, [r0, #0xc]
	ldr r0, [r0, #4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020A5F8C

	arm_func_start sub_020A5FA4
sub_020A5FA4: ; 0x020A5FA4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end sub_020A5FA4

	arm_func_start sub_020A5FB8
sub_020A5FB8: ; 0x020A5FB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0D34
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0D90
	bl sub_020C0ED0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A5FB8

	arm_func_start sub_020A5FE4
sub_020A5FE4: ; 0x020A5FE4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0F1C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0F50
	bl sub_020C0FBC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A5FE4

	arm_func_start sub_020A6010
sub_020A6010: ; 0x020A6010
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_020C1000
	mov r0, r5
	mov r1, r4
	bl sub_020C1090
	bl sub_020C1164
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A6010

	arm_func_start sub_020A6034
sub_020A6034: ; 0x020A6034
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl sub_020C1000
	mov r0, r5
	mov r1, r4
	bl sub_020C10F8
	bl sub_020C1164
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020A6034

	arm_func_start sub_020A6058
sub_020A6058: ; 0x020A6058
	ldr ip, _020A6060 ; =sub_020C066C
	bx ip
	; .align 2, 0
_020A6060: .word sub_020C066C
	arm_func_end sub_020A6058

	arm_func_start sub_020A6064
sub_020A6064: ; 0x020A6064
	ldr ip, _020A606C ; =sub_020C072C
	bx ip
	; .align 2, 0
_020A606C: .word sub_020C072C
	arm_func_end sub_020A6064

	arm_func_start sub_020A6070
sub_020A6070: ; 0x020A6070
	ldr ip, _020A6078 ; =sub_020C07EC
	bx ip
	; .align 2, 0
_020A6078: .word sub_020C07EC
	arm_func_end sub_020A6070

	arm_func_start sub_020A607C
sub_020A607C: ; 0x020A607C
	ldr ip, _020A6084 ; =sub_020C08AC
	bx ip
	; .align 2, 0
_020A6084: .word sub_020C08AC
	arm_func_end sub_020A607C

	arm_func_start sub_020A6088
sub_020A6088: ; 0x020A6088
	ldr ip, _020A6090 ; =sub_020C036C
	bx ip
	; .align 2, 0
_020A6090: .word sub_020C036C
	arm_func_end sub_020A6088

	arm_func_start sub_020A6094
sub_020A6094: ; 0x020A6094
	ldr ip, _020A609C ; =sub_020C042C
	bx ip
	; .align 2, 0
_020A609C: .word sub_020C042C
	arm_func_end sub_020A6094

	arm_func_start sub_020A60A0
sub_020A60A0: ; 0x020A60A0
	ldr ip, _020A60A8 ; =sub_020C04EC
	bx ip
	; .align 2, 0
_020A60A8: .word sub_020C04EC
	arm_func_end sub_020A60A0

	arm_func_start sub_020A60AC
sub_020A60AC: ; 0x020A60AC
	ldr ip, _020A60B4 ; =sub_020C05AC
	bx ip
	; .align 2, 0
_020A60B4: .word sub_020C05AC
	arm_func_end sub_020A60AC

	arm_func_start sub_020A60B8
sub_020A60B8: ; 0x020A60B8
	ldr ip, _020A60C0 ; =sub_020C04EC
	bx ip
	; .align 2, 0
_020A60C0: .word sub_020C04EC
	arm_func_end sub_020A60B8

	arm_func_start sub_020A60C4
sub_020A60C4: ; 0x020A60C4
	ldr ip, _020A60CC ; =sub_020C05AC
	bx ip
	; .align 2, 0
_020A60CC: .word sub_020C05AC
	arm_func_end sub_020A60C4

	arm_func_start sub_020A60D0
sub_020A60D0: ; 0x020A60D0
	ldr ip, _020A60D8 ; =sub_020C0160
	bx ip
	; .align 2, 0
_020A60D8: .word sub_020C0160
	arm_func_end sub_020A60D0

	arm_func_start sub_020A60DC
sub_020A60DC: ; 0x020A60DC
	ldr ip, _020A60E4 ; =sub_020C00B4
	bx ip
	; .align 2, 0
_020A60E4: .word sub_020C00B4
	arm_func_end sub_020A60DC

	arm_func_start sub_020A60E8
sub_020A60E8: ; 0x020A60E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0AC4
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0B0C
	bl sub_020C0B78
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A60E8

	arm_func_start sub_020A6114
sub_020A6114: ; 0x020A6114
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C096C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0A0C
	bl sub_020C0A7C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A6114

	arm_func_start sub_020A6140
sub_020A6140: ; 0x020A6140
	ldr ip, _020A6148 ; =sub_020C0210
	bx ip
	; .align 2, 0
_020A6148: .word sub_020C0210
	arm_func_end sub_020A6140

	arm_func_start sub_020A614C
sub_020A614C: ; 0x020A614C
	ldr ip, _020A6154 ; =sub_020C02BC
	bx ip
	; .align 2, 0
_020A6154: .word sub_020C02BC
	arm_func_end sub_020A614C

	arm_func_start sub_020A6158
sub_020A6158: ; 0x020A6158
	ldr ip, _020A6160 ; =sub_020C06CC
	bx ip
	; .align 2, 0
_020A6160: .word sub_020C06CC
	arm_func_end sub_020A6158

	arm_func_start sub_020A6164
sub_020A6164: ; 0x020A6164
	ldr ip, _020A616C ; =sub_020C078C
	bx ip
	; .align 2, 0
_020A616C: .word sub_020C078C
	arm_func_end sub_020A6164

	arm_func_start sub_020A6170
sub_020A6170: ; 0x020A6170
	ldr ip, _020A6178 ; =sub_020C084C
	bx ip
	; .align 2, 0
_020A6178: .word sub_020C084C
	arm_func_end sub_020A6170

	arm_func_start sub_020A617C
sub_020A617C: ; 0x020A617C
	ldr ip, _020A6184 ; =sub_020C090C
	bx ip
	; .align 2, 0
_020A6184: .word sub_020C090C
	arm_func_end sub_020A617C

	arm_func_start sub_020A6188
sub_020A6188: ; 0x020A6188
	ldr ip, _020A6190 ; =sub_020C03CC
	bx ip
	; .align 2, 0
_020A6190: .word sub_020C03CC
	arm_func_end sub_020A6188

	arm_func_start sub_020A6194
sub_020A6194: ; 0x020A6194
	ldr ip, _020A619C ; =sub_020C048C
	bx ip
	; .align 2, 0
_020A619C: .word sub_020C048C
	arm_func_end sub_020A6194

	arm_func_start sub_020A61A0
sub_020A61A0: ; 0x020A61A0
	ldr ip, _020A61A8 ; =sub_020C054C
	bx ip
	; .align 2, 0
_020A61A8: .word sub_020C054C
	arm_func_end sub_020A61A0

	arm_func_start sub_020A61AC
sub_020A61AC: ; 0x020A61AC
	ldr ip, _020A61B4 ; =sub_020C060C
	bx ip
	; .align 2, 0
_020A61B4: .word sub_020C060C
	arm_func_end sub_020A61AC

	arm_func_start sub_020A61B8
sub_020A61B8: ; 0x020A61B8
	ldr ip, _020A61C0 ; =sub_020C054C
	bx ip
	; .align 2, 0
_020A61C0: .word sub_020C054C
	arm_func_end sub_020A61B8

	arm_func_start sub_020A61C4
sub_020A61C4: ; 0x020A61C4
	ldr ip, _020A61CC ; =sub_020C060C
	bx ip
	; .align 2, 0
_020A61CC: .word sub_020C060C
	arm_func_end sub_020A61C4

	arm_func_start sub_020A61D0
sub_020A61D0: ; 0x020A61D0
	ldr ip, _020A61D8 ; =sub_020C01B8
	bx ip
	; .align 2, 0
_020A61D8: .word sub_020C01B8
	arm_func_end sub_020A61D0

	arm_func_start sub_020A61DC
sub_020A61DC: ; 0x020A61DC
	ldr ip, _020A61E4 ; =sub_020C0108
	bx ip
	; .align 2, 0
_020A61E4: .word sub_020C0108
	arm_func_end sub_020A61DC

	arm_func_start sub_020A61E8
sub_020A61E8: ; 0x020A61E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0C78
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0C90
	bl sub_020C0CF4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A61E8

	arm_func_start sub_020A6214
sub_020A6214: ; 0x020A6214
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C0BBC
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020C0BD4
	bl sub_020C0C38
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A6214

	arm_func_start sub_020A6240
sub_020A6240: ; 0x020A6240
	ldr ip, _020A6248 ; =sub_020C0264
	bx ip
	; .align 2, 0
_020A6248: .word sub_020C0264
	arm_func_end sub_020A6240

	arm_func_start sub_020A624C
sub_020A624C: ; 0x020A624C
	ldr ip, _020A6254 ; =sub_020C0314
	bx ip
	; .align 2, 0
_020A6254: .word sub_020C0314
	arm_func_end sub_020A624C

	arm_func_start sub_020A6258
sub_020A6258: ; 0x020A6258
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #0]
	ldr r2, _020A6284 ; =0x020F9570
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r4, [r2, r3, lsl #2]
	bl sub_020C2C54
	ldmib r5, {r0, r1, r2}
	blx r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6284: .word 0x020F9570
	arm_func_end sub_020A6258

	arm_func_start sub_020A6288
sub_020A6288: ; 0x020A6288
	mov r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end sub_020A6288

	arm_func_start sub_020A62A0
sub_020A62A0: ; 0x020A62A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A5F8C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #0xa]
	mov r0, r4
	bl sub_020A5F6C
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A62A0

	arm_func_start sub_020A62DC
sub_020A62DC: ; 0x020A62DC
	ldrh r1, [r0, #8]
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end sub_020A62DC

	arm_func_start sub_020A62EC
sub_020A62EC: ; 0x020A62EC
	ldrh r1, [r0, #0xa]
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end sub_020A62EC

	arm_func_start sub_020A62FC
sub_020A62FC: ; 0x020A62FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020A5FA4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #8]
	mov r0, r4
	bl sub_020A5F6C
	strh r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	mov r0, #1
	sub r1, r1, #1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A62FC

	arm_func_start sub_020A6338
sub_020A6338: ; 0x020A6338
	ldr r2, _020A6350 ; =0x021C3AC0
	ldr ip, _020A6354 ; =sub_020A6288
	str r0, [r2, #0]
	ldr r0, _020A6358 ; =0x021C3AC0
	str r1, [r2, #4]
	bx ip
	; .align 2, 0
_020A6350: .word 0x021C3AC0
_020A6354: .word sub_020A6288
_020A6358: .word 0x021C3AC0
	arm_func_end sub_020A6338

	arm_func_start sub_020A635C
sub_020A635C: ; 0x020A635C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020A63B8 ; =0x021C3AC0
	mov r0, r4
	bl sub_020A62DC
	mov r5, r0
	mov r0, r4
	bl sub_020A62FC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020A6380:
	mov r0, r5
	bl sub_020A6258
	ldr r2, [r4, #0x10]
	ldr r1, [r5, #0xc]
	mov r0, r4
	sub r1, r2, r1
	str r1, [r4, #0x10]
	bl sub_020A62DC
	mov r5, r0
	mov r0, r4
	bl sub_020A62FC
	cmp r0, #0
	bne _020A6380
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A63B8: .word 0x021C3AC0
	arm_func_end sub_020A635C

	arm_func_start sub_020A63BC
sub_020A63BC: ; 0x020A63BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r5, _020A6420 ; =0x021C3AC0
	mov sb, r0
	mov r0, r5
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl sub_020A5F8C
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	bl sub_020A62EC
	mov r4, r0
	str sb, [r4]
	stmib r4, {r7, r8}
	mov r0, r5
	str r6, [r4, #0xc]
	bl sub_020A62A0
	ldr r2, [r5, #0x10]
	ldr r1, [r4, #0xc]
	mov r0, #1
	add r1, r2, r1
	str r1, [r5, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A6420: .word 0x021C3AC0
	arm_func_end sub_020A63BC

	.rodata


	.global Unk_020F9570
Unk_020F9570: ; 0x020F9570
	.incbin "incbin/arm9_rodata.bin", 0x14930, 0x90



	.bss


	.global Unk_021C3AC0
Unk_021C3AC0: ; 0x021C3AC0
	.space 0x14

