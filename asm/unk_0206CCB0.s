	.include "macros/function.inc"
	.include "include/unk_0206CCB0.inc"

	

	.text


	thumb_func_start sub_0206CCB0
sub_0206CCB0: ; 0x0206CCB0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r5, #0
	ble _0206CCBC
	cmp r5, #6
	blt _0206CCC0
_0206CCBC:
	bl GF_AssertFail
_0206CCC0:
	sub r1, r5, #1
	ldr r6, _0206CCD8 ; =0x020EFD60
	mov r0, #0xc
	add r4, r1, #0
	mul r4, r0
	ldr r0, [r6, r4]
	cmp r0, r5
	beq _0206CCD4
	bl GF_AssertFail
_0206CCD4:
	add r0, r6, r4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206CCD8: .word 0x020EFD60
	thumb_func_end sub_0206CCB0

	thumb_func_start sub_0206CCDC
sub_0206CCDC: ; 0x0206CCDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_022464A4
	add r4, r0, #0
	cmp r4, #0
	ble _0206CCF2
	ldrh r0, [r5, #6]
	cmp r4, r0
	blt _0206CCF6
_0206CCF2:
	bl GF_AssertFail
_0206CCF6:
	sub r0, r4, #1
	ldr r1, [r5, #8]
	lsl r0, r0, #3
	add r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206CCDC

	thumb_func_start sub_0206CD00
sub_0206CD00: ; 0x0206CD00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_0206CCB0
	ldrh r2, [r0, #4]
	ldr r1, [sp, #0x18]
	strh r2, [r1]
	add r1, r5, #0
	bl sub_0206CCDC
	ldr r4, [r0, #0]
	cmp r4, #0
	bne _0206CD22
	bl GF_AssertFail
_0206CD22:
	add r0, r6, #0
	add r1, r7, #0
	add r2, r5, #0
	blx r4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206CD00

	thumb_func_start sub_0206CD2C
sub_0206CD2C: ; 0x0206CD2C
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	bl sub_0206CCB0
	add r1, r4, #0
	bl sub_0206CCDC
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _0206CD46
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206CD46:
	ldr r2, [r0, #4]
	cmp r2, #0
	bne _0206CD50
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206CD50:
	add r0, r5, #0
	add r1, r4, #0
	blx r2
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206CD2C

	thumb_func_start sub_0206CD58
sub_0206CD58: ; 0x0206CD58
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202440C
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202E43C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206CD58

	thumb_func_start sub_0206CD70
sub_0206CD70: ; 0x0206CD70
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0206CD7C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206CD70

	thumb_func_start sub_0206CD7C
sub_0206CD7C: ; 0x0206CD7C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r3, #0
	bl sub_0202440C
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0202E43C
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206CD7C

	thumb_func_start sub_0206CD94
sub_0206CD94: ; 0x0206CD94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r0, #0x40
	mov r1, #4
	str r3, [sp, #8]
	bl sub_02023790
	add r1, r7, #0
	add r4, r0, #0
	bl sub_02023D28
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CD94

	thumb_func_start sub_0206CDD0
sub_0206CDD0: ; 0x0206CDD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r1, #0
	bl ov6_02246494
	add r7, r0, #0
	add r0, r6, #0
	bl ov6_0224648C
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov6_02246490
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0206CD94
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CDD0

	thumb_func_start sub_0206CE08
sub_0206CE08: ; 0x0206CE08
	push {r4, r5, r6, lr}
	add r3, r0, #0
	add r5, r1, #0
	mov r0, #0x40
	add r1, r3, #0
	add r6, r2, #0
	bl sub_02023790
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x77
	add r2, r4, #0
	bl sub_02074470
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206CE08

	thumb_func_start sub_0206CE38
sub_0206CE38: ; 0x0206CE38
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	strb r0, [r6]
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl sub_02074470
	strb r0, [r7]
	add r0, r5, #0
	mov r1, #0x7a
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206CE38

	thumb_func_start sub_0206CE74
sub_0206CE74: ; 0x0206CE74
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #4
	add r2, sp, #8
	add r6, r3, #0
	bl sub_0200B274
	add r0, sp, #0x20
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	add r2, sp, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0206CD94
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206CE74

	thumb_func_start sub_0206CEA4
sub_0206CEA4: ; 0x0206CEA4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #4
	add r2, sp, #8
	bl sub_0200B274
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl sub_0206CD94
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206CEA4

	thumb_func_start sub_0206CED0
sub_0206CED0: ; 0x0206CED0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	add r7, r3, #0
	bl sub_02074470
	strb r0, [r4]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0206CF10
	mov r0, #0x40
	add r1, r6, #0
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x77
	add r2, r4, #0
	bl sub_02074470
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0xb
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
_0206CF10:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CED0

	thumb_func_start sub_0206CF14
sub_0206CF14: ; 0x0206CF14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r2, #0
	add r6, r3, #0
	bl sub_0202E7D8
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	add r0, r4, #6
	str r0, [sp]
	add r0, r7, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
	strb r5, [r4, #8]
	ldr r0, [sp, #0x18]
	strb r6, [r4, #7]
	strb r0, [r4, #9]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206CF14

	thumb_func_start sub_0206CF48
sub_0206CF48: ; 0x0206CF48
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0202E7E4
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r4, #0x1f]
	add r0, r5, #0
	bl sub_02075BCC
	strb r0, [r4, #0x1e]
	add r0, r4, #6
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #7]
	add r2, r4, #7
	add r4, #8
	add r0, r6, #0
	add r1, r5, #0
	add r3, r4, #0
	bl sub_0206CED0
	mov r0, #0x1b
	bl sub_02025C84
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206CF48

	thumb_func_start sub_0206CF9C
sub_0206CF9C: ; 0x0206CF9C
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E7E4
	mov r1, #2
	strb r1, [r0, #0x1f]
	add r0, #0x20
	strb r4, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	thumb_func_end sub_0206CF9C

	thumb_func_start sub_0206CFB4
sub_0206CFB4: ; 0x0206CFB4
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E7E4
	mov r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x22]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206CFB4

	thumb_func_start sub_0206CFCC
sub_0206CFCC: ; 0x0206CFCC
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E7F0
	mov r1, #1
	strb r1, [r0]
	strb r4, [r0, #1]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206CFCC

	thumb_func_start sub_0206CFE4
sub_0206CFE4: ; 0x0206CFE4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202E7FC
	mov r1, #1
	strb r1, [r0]
	strb r5, [r0, #1]
	strh r4, [r0, #2]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206CFE4

	thumb_func_start sub_0206D000
sub_0206D000: ; 0x0206D000
	push {r3, lr}
	bl sub_0202E808
	mov r1, #1
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #7]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206D000

	thumb_func_start sub_0206D018
sub_0206D018: ; 0x0206D018
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0202E808
	add r4, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0206D038
	add r0, r4, #6
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
_0206D038:
	ldrb r0, [r4, #7]
	add r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D018

	thumb_func_start sub_0206D048
sub_0206D048: ; 0x0206D048
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0202E810
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	add r0, r4, #6
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #2
	add r2, r4, #4
	add r3, r4, #5
	bl sub_0206CE38
	add r0, r5, #0
	mov r1, #0x4d
	mov r2, #0
	bl sub_02074470
	strb r0, [r4, #7]
	add r2, r4, #7
	add r4, #8
	mov r0, #0xb
	add r1, r5, #0
	add r3, r4, #0
	bl sub_0206CED0
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D048

	thumb_func_start sub_0206D088
sub_0206D088: ; 0x0206D088
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r2, #0
	bl sub_0202E81C
	add r4, r0, #0
	mov r0, #1
	strb r0, [r4]
	add r0, r5, #0
	strb r6, [r4, #1]
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r4, #6
	bl sub_020021B0
	add r0, r5, #0
	bl sub_02025FD8
	strb r0, [r4, #3]
	add r0, r5, #0
	bl sub_02025FCC
	strb r0, [r4, #4]
	add r0, r5, #0
	bl sub_02025F30
	strb r0, [r4, #2]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D088

	thumb_func_start sub_0206D0C8
sub_0206D0C8: ; 0x0206D0C8
	push {r4, lr}
	add r4, r1, #0
	bl sub_0202E828
	mov r1, #1
	strb r1, [r0]
	ldr r1, [r0, #4]
	add r2, r1, r4
	ldr r1, _0206D0EC ; =0x0000270F
	str r2, [r0, #4]
	cmp r2, r1
	bls _0206D0E2
	str r1, [r0, #4]
_0206D0E2:
	mov r0, #0x1b
	bl sub_02025C84
	pop {r4, pc}
	nop
_0206D0EC: .word 0x0000270F
	thumb_func_end sub_0206D0C8

	thumb_func_start sub_0206D0F0
sub_0206D0F0: ; 0x0206D0F0
	push {r3, lr}
	bl sub_0202E828
	mov r1, #0
	str r1, [r0, #4]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206D0F0

	thumb_func_start sub_0206D104
sub_0206D104: ; 0x0206D104
	push {r3, lr}
	bl sub_0202E834
	mov r1, #1
	strb r1, [r0]
	ldrh r1, [r0, #2]
	add r1, r1, #1
	strh r1, [r0, #2]
	ldrh r2, [r0, #2]
	ldr r1, _0206D128 ; =0x0000270F
	cmp r2, r1
	bls _0206D11E
	strh r1, [r0, #2]
_0206D11E:
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	nop
_0206D128: .word 0x0000270F
	thumb_func_end sub_0206D104

	thumb_func_start sub_0206D12C
sub_0206D12C: ; 0x0206D12C
	push {r3, lr}
	bl sub_0202E834
	mov r1, #0
	strh r1, [r0, #2]
	mov r0, #0x1b
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206D12C

	thumb_func_start sub_0206D140
sub_0206D140: ; 0x0206D140
	push {r4, lr}
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x24
	bl MIi_CpuClearFast
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0206D140

	thumb_func_start sub_0206D158
sub_0206D158: ; 0x0206D158
	ldr r3, _0206D15C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0206D15C: .word sub_020181C4
	thumb_func_end sub_0206D158

	thumb_func_start sub_0206D160
sub_0206D160: ; 0x0206D160
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x24
	add r7, r3, #0
	bl MIi_CpuClear32
	str r6, [r5, #0]
	add r0, r5, #0
	add r2, r5, #0
	add r3, r5, #0
	strh r7, [r5, #4]
	add r0, #0xa
	str r0, [sp]
	add r0, r4, #0
	add r1, r5, #6
	add r2, #8
	add r3, #9
	bl sub_0206CE38
	add r0, r4, #0
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	strh r0, [r5, #0x22]
	ldrh r0, [r5, #0x22]
	cmp r0, #0
	bne _0206D1A4
	bl GF_AssertFail
_0206D1A4:
	add r2, r5, #0
	add r5, #0xc
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, #0xb
	add r3, r5, #0
	bl sub_0206CED0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206D160

	thumb_func_start sub_0206D1B8
sub_0206D1B8: ; 0x0206D1B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, sp, #0
	add r5, r2, #0
	add r6, r0, #0
	add r3, r1, #0
	add r4, r7, #0
	mov r2, #4
_0206D1C8:
	ldmia r3!, {r0, r1}
	stmia r4!, {r0, r1}
	sub r2, r2, #1
	bne _0206D1C8
	ldr r0, [r3, #0]
	str r0, [r4, #0]
	str r5, [sp]
	add r0, sp, #0
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0206D228
	ldrh r1, [r7, #4]
	ldr r0, _0206D22C ; =0x000003E7
	cmp r1, r0
	bls _0206D1E8
	strh r0, [r7, #4]
_0206D1E8:
	cmp r5, #6
	bhi _0206D228
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206D1F8: ; jump table
	.short _0206D228 - _0206D1F8 - 2 ; case 0
	.short _0206D216 - _0206D1F8 - 2 ; case 1
	.short _0206D228 - _0206D1F8 - 2 ; case 2
	.short _0206D228 - _0206D1F8 - 2 ; case 3
	.short _0206D206 - _0206D1F8 - 2 ; case 4
	.short _0206D216 - _0206D1F8 - 2 ; case 5
	.short _0206D216 - _0206D1F8 - 2 ; case 6
_0206D206:
	add r0, r6, #0
	mov r1, #2
	mov r2, #1
	add r3, r7, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0206D216:
	ldrh r0, [r7, #4]
	cmp r0, #2
	bls _0206D228
	mov r1, #2
	add r0, r6, #0
	add r2, r1, #0
	add r3, r7, #0
	bl sub_0206CD70
_0206D228:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206D22C: .word 0x000003E7
	thumb_func_end sub_0206D1B8

	thumb_func_start sub_0206D230
sub_0206D230: ; 0x0206D230
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0206D29E
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #9]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #4]
	ldrh r2, [r4, #6]
	ldrb r3, [r4, #8]
	add r0, r5, #0
	bl sub_0206CE74
	ldrh r2, [r4, #0x22]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldrh r2, [r4, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	ldrb r0, [r4, #9]
	add r2, r4, #0
	mov r1, #4
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r3, [r4, #8]
	add r0, r5, #0
	add r2, #0xc
	bl sub_0206CD94
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0206D29E:
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #9]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #0xa]
	str r0, [sp, #4]
	ldrh r2, [r4, #6]
	ldrb r3, [r4, #8]
	add r0, r5, #0
	bl sub_0206CE74
	ldrh r2, [r4, #0x22]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldrh r2, [r4, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #1
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D230

	thumb_func_start sub_0206D2E0
sub_0206D2E0: ; 0x0206D2E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r2, [r4, #4]
	add r0, r5, #0
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r4, #0]
	cmp r0, #1
	bne _0206D318
	add sp, #8
	mov r0, #2
	pop {r4, r5, r6, pc}
_0206D318:
	mov r0, #3
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D2E0

	thumb_func_start sub_0206D320
sub_0206D320: ; 0x0206D320
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl ov6_02246498
	add r1, r0, #0
	ldrh r1, [r1, #6]
	add r0, r4, #0
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D320

	thumb_func_start sub_0206D340
sub_0206D340: ; 0x0206D340
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	add r7, r0, #0
	add r4, r2, #0
	add r6, sp, #4
	cmp r5, #0
	beq _0206D360
	add r0, r6, #4
	str r0, [sp]
	add r0, r3, #0
	add r1, r6, #0
	add r2, r6, #2
	add r3, r6, #3
	bl sub_0206CE38
_0206D360:
	strh r4, [r6, #6]
	add r0, r7, #0
	mov r1, #2
	mov r2, #3
	add r3, r6, #0
	str r5, [r6, #8]
	bl sub_0206CD70
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206D340

	thumb_func_start sub_0206D374
sub_0206D374: ; 0x0206D374
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0206D3B8
	ldrh r2, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B70C
	ldrb r0, [r4, #3]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_0206D3B8:
	mov r0, #5
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D374

	thumb_func_start sub_0206D3C0
sub_0206D3C0: ; 0x0206D3C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0206D3D6
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206D3D6:
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D3C0

	thumb_func_start sub_0206D3E4
sub_0206D3E4: ; 0x0206D3E4
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202B4A0
	add r6, r0, #0
	mov r0, #0
	add r1, sp, #0
	mov r2, #0x28
	bl MIi_CpuClearFast
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl sub_0202B42C
	add r1, r0, #0
	add r0, sp, #0
	mov r2, #0xb
	bl sub_020021D0
	add r0, r5, #0
	mov r1, #2
	add r2, r4, #0
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D3E4

	thumb_func_start sub_0206D424
sub_0206D424: ; 0x0206D424
	ldr r3, _0206D42C ; =sub_0206D3E4
	mov r1, #0x14
	bx r3
	nop
_0206D42C: .word sub_0206D3E4
	thumb_func_end sub_0206D424

	thumb_func_start sub_0206D430
sub_0206D430: ; 0x0206D430
	ldr r3, _0206D438 ; =sub_0206D3E4
	mov r1, #4
	bx r3
	nop
_0206D438: .word sub_0206D3E4
	thumb_func_end sub_0206D430

	thumb_func_start sub_0206D43C
sub_0206D43C: ; 0x0206D43C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r0, r4, #0
	add r5, r1, #0
	bl ov6_02246498
	add r6, r0, #0
	add r0, r4, #0
	bl ov6_02246490
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0206CD94
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0206CDD0
	mov r0, #6
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D43C

	thumb_func_start sub_0206D474
sub_0206D474: ; 0x0206D474
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r2, #0
	add r0, r4, #0
	add r5, r1, #0
	bl ov6_02246498
	add r6, r0, #0
	add r0, r4, #0
	bl ov6_02246490
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	add r2, r6, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0206CD94
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_0206CDD0
	mov r0, #0x20
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D474

	thumb_func_start sub_0206D4AC
sub_0206D4AC: ; 0x0206D4AC
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r1, sp, #0
	strh r0, [r1, #2]
	add r0, r4, #0
	mov r1, #2
	mov r2, #6
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206D4AC

	thumb_func_start sub_0206D4D4
sub_0206D4D4: ; 0x0206D4D4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B8C8
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B70C
	mov r0, #0xa
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D4D4

	thumb_func_start sub_0206D504
sub_0206D504: ; 0x0206D504
	push {r3, lr}
	sub sp, #0x28
	add r3, sp, #0
	cmp r2, #0xa
	blo _0206D526
	strh r1, [r3]
	strb r2, [r3, #2]
	ldrb r2, [r3, #2]
	ldr r1, _0206D52C ; =0x000003E7
	cmp r2, r1
	ble _0206D51E
	mov r1, #0xe7
	strb r1, [r3, #2]
_0206D51E:
	mov r1, #2
	mov r2, #7
	bl sub_0206CD7C
_0206D526:
	add sp, #0x28
	pop {r3, pc}
	nop
_0206D52C: .word 0x000003E7
	thumb_func_end sub_0206D504

	thumb_func_start sub_0206D530
sub_0206D530: ; 0x0206D530
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrb r2, [r4, #2]
	add r0, r5, #0
	mov r3, #3
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B77C
	mov r0, #0xb
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D530

	thumb_func_start sub_0206D578
sub_0206D578: ; 0x0206D578
	push {r3, r4, lr}
	sub sp, #0x2c
	add r4, r0, #0
	add r0, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r1, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	add r1, sp, #4
	strh r0, [r1, #6]
	add r0, r4, #0
	mov r1, #2
	mov r2, #8
	add r3, sp, #4
	bl sub_0206CD70
	add sp, #0x2c
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206D578

	thumb_func_start sub_0206D5B0
sub_0206D5B0: ; 0x0206D5B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrh r2, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B8C8
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0xc
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D5B0

	thumb_func_start sub_0206D5F0
sub_0206D5F0: ; 0x0206D5F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D5F0

	thumb_func_start sub_0206D60C
sub_0206D60C: ; 0x0206D60C
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	add r1, sp, #8
	mov r0, #4
	add r1, #2
	add r2, r4, #0
	bl sub_0206CE08
	add r0, r5, #0
	mov r1, #2
	mov r2, #0xa
	add r3, sp, #4
	bl sub_0206CD70
	add sp, #0x2c
	pop {r4, r5, pc}
	thumb_func_end sub_0206D60C

	thumb_func_start sub_0206D644
sub_0206D644: ; 0x0206D644
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #3]
	mov r1, #2
	add r2, r4, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CD94
	bl sub_0201D2E8
	ldr r1, _0206D6A4 ; =0x00003334
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0206D69C
	bl GF_AssertFail
_0206D69C:
	add r4, #0x11
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0206D6A4: .word 0x00003334
	thumb_func_end sub_0206D644

	thumb_func_start sub_0206D6A8
sub_0206D6A8: ; 0x0206D6A8
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl ov6_02246498
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D6A8

	thumb_func_start sub_0206D6C8
sub_0206D6C8: ; 0x0206D6C8
	push {r3, lr}
	sub sp, #0x28
	add r3, sp, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	mov r1, #2
	mov r2, #0xd
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	thumb_func_end sub_0206D6C8

	thumb_func_start sub_0206D6E0
sub_0206D6E0: ; 0x0206D6E0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BA94
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r1, #2
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x18
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D6E0

	thumb_func_start sub_0206D720
sub_0206D720: ; 0x0206D720
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, sp, #0
	bl sub_0202440C
	bl sub_0202E808
	ldrb r1, [r0, #7]
	cmp r1, #0
	beq _0206D758
	ldrh r1, [r0, #2]
	mov r2, #0xf
	add r3, r4, #0
	strh r1, [r4]
	ldrb r1, [r0, #4]
	strb r1, [r4, #2]
	ldrb r1, [r0, #5]
	strb r1, [r4, #3]
	ldrb r1, [r0, #6]
	strb r1, [r4, #4]
	ldrb r0, [r0, #7]
	mov r1, #2
	strb r0, [r4, #5]
	add r0, r5, #0
	bl sub_0206CD70
_0206D758:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206D720

	thumb_func_start sub_0206D75C
sub_0206D75C: ; 0x0206D75C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldrb r2, [r4, #5]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #0x1a
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D75C

	thumb_func_start sub_0206D7A4
sub_0206D7A4: ; 0x0206D7A4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	add r5, r1, #0
	bl sub_02027560
	add r4, r0, #0
	add r0, r5, #0
	bl ov6_02246498
	add r1, r0, #0
	ldrh r1, [r1]
	add r0, r4, #0
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D7A4

	thumb_func_start sub_0206D7C4
sub_0206D7C4: ; 0x0206D7C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	add r7, r0, #0
	bl sub_0207A0F8
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r5, _0206D8AC ; =0x00000000
	beq _0206D82E
_0206D7E8:
	add r0, r7, #0
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _0206D824
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0206D812
	mov r0, #1
	str r0, [sp, #0x10]
	b _0206D824
_0206D812:
	cmp r0, #1
	bne _0206D81C
	mov r0, #1
	str r0, [sp, #0xc]
	b _0206D824
_0206D81C:
	cmp r0, #2
	bne _0206D824
	mov r0, #1
	str r0, [sp, #8]
_0206D824:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, r6
	blo _0206D7E8
_0206D82E:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0206D8A8
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0206D870
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0206D870
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02054A74
	add r1, sp, #0x14
	add r1, r1, #4
	str r1, [sp]
	add r1, sp, #0x14
	add r2, r1, #0
	add r3, r1, #0
	add r2, r2, #2
	add r3, r3, #3
	bl sub_0206CE38
	ldr r0, [sp, #4]
	mov r1, #2
	mov r2, #0x10
	add r3, sp, #0x14
	bl sub_0206CD70
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_0206D870:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0206D8A8
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _0206D8A8
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0207A268
	bl sub_02054A74
	add r1, sp, #0x14
	add r1, r1, #4
	str r1, [sp]
	add r1, sp, #0x14
	add r2, r1, #0
	add r3, r1, #0
	add r2, r2, #2
	add r3, r3, #3
	bl sub_0206CE38
	ldr r0, [sp, #4]
	mov r1, #2
	mov r2, #0x10
	add r3, sp, #0x14
	bl sub_0206CD70
_0206D8A8:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0206D8AC: .word 0x00000000
	thumb_func_end sub_0206D7C4

	thumb_func_start sub_0206D8B0
sub_0206D8B0: ; 0x0206D8B0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne _0206D8EA
	add sp, #8
	mov r0, #0x1b
	pop {r4, r5, r6, pc}
_0206D8EA:
	mov r0, #0x1c
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206D8B0

	thumb_func_start sub_0206D8F0
sub_0206D8F0: ; 0x0206D8F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D8F0

	thumb_func_start sub_0206D90C
sub_0206D90C: ; 0x0206D90C
	bx lr
	; .align 2, 0
	thumb_func_end sub_0206D90C

	thumb_func_start sub_0206D910
sub_0206D910: ; 0x0206D910
	mov r0, #0
	bx lr
	thumb_func_end sub_0206D910

	thumb_func_start sub_0206D914
sub_0206D914: ; 0x0206D914
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	add r5, sp, #0
	strh r3, [r4, #4]
	cmp r2, #5
	beq _0206D946
	cmp r2, #4
	bne _0206D938
	mov r1, #2
	mov r2, #0x12
	add r3, r5, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
_0206D938:
	cmp r2, #0
	bne _0206D946
	mov r1, #2
	mov r2, #0x13
	add r3, r5, #0
	bl sub_0206CD70
_0206D946:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D914

	thumb_func_start sub_0206D94C
sub_0206D94C: ; 0x0206D94C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B70C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #2
	ldrh r2, [r4, #4]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #0x1e
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D94C

	thumb_func_start sub_0206D98C
sub_0206D98C: ; 0x0206D98C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B70C
	mov r0, #0x1f
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206D98C

	thumb_func_start sub_0206D9B4
sub_0206D9B4: ; 0x0206D9B4
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #4
	add r4, r1, #0
	strb r2, [r0, #6]
	bl sub_0201D35C
	mov r1, #3
	bl _u32_div_f
	add r0, sp, #4
	strb r1, [r0, #5]
	add r0, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r4, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	add r0, r5, #0
	mov r1, #2
	mov r2, #0x15
	add r3, sp, #4
	bl sub_0202E43C
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206D9B4

	thumb_func_start sub_0206D9F4
sub_0206D9F4: ; 0x0206D9F4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r2, [r4, #6]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE64
	ldrb r0, [r4, #3]
	mov r1, #2
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	bl sub_0201D2E8
	ldr r1, _0206DA4C ; =0x00005556
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #3
	blo _0206DA42
	bl GF_AssertFail
_0206DA42:
	add r4, #0x21
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0206DA4C: .word 0x00005556
	thumb_func_end sub_0206D9F4

	thumb_func_start sub_0206DA50
sub_0206DA50: ; 0x0206DA50
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DA50

	thumb_func_start sub_0206DA6C
sub_0206DA6C: ; 0x0206DA6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02025E68
	str r0, [r5, #0]
	add r0, r4, #0
	add r1, r5, #4
	bl sub_02025E80
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DA6C

	thumb_func_start sub_0206DA84
sub_0206DA84: ; 0x0206DA84
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	bl sub_02025E68
	ldr r1, [r4, #0]
	cmp r1, r0
	beq _0206DAA0
	bl GF_AssertFail
_0206DAA0:
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #4
	bl sub_0200B498
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DA84

	thumb_func_start sub_0206DAB8
sub_0206DAB8: ; 0x0206DAB8
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0206DA6C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x16
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end sub_0206DAB8

	thumb_func_start sub_0206DAD4
sub_0206DAD4: ; 0x0206DAD4
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	bl sub_0206DA6C
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x17
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	thumb_func_end sub_0206DAD4

	thumb_func_start sub_0206DAF0
sub_0206DAF0: ; 0x0206DAF0
	push {r3, lr}
	bl sub_0206DA84
	mov r0, #0x24
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DAF0

	thumb_func_start sub_0206DAFC
sub_0206DAFC: ; 0x0206DAFC
	push {r3, lr}
	bl sub_0206DA84
	mov r0, #0x25
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DAFC

	thumb_func_start sub_0206DB08
sub_0206DB08: ; 0x0206DB08
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	mov r1, #0x6b
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D688
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB08

	thumb_func_start sub_0206DB20
sub_0206DB20: ; 0x0206DB20
	push {r3, lr}
	sub sp, #0x28
	mov r2, #1
	add r1, sp, #0
	strb r2, [r1]
	mov r1, #2
	mov r2, #0x19
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	thumb_func_end sub_0206DB20

	thumb_func_start sub_0206DB38
sub_0206DB38: ; 0x0206DB38
	push {r3, lr}
	add r0, r1, #0
	mov r1, #0
	bl sub_0206CDD0
	mov r0, #0x26
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB38

	thumb_func_start sub_0206DB48
sub_0206DB48: ; 0x0206DB48
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #6
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB48

	thumb_func_start sub_0206DB5C
sub_0206DB5C: ; 0x0206DB5C
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strb r1, [r2]
	mov r1, #2
	mov r2, #0x1a
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB5C

	thumb_func_start sub_0206DB74
sub_0206DB74: ; 0x0206DB74
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200C2A8
	mov r0, #0x27
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB74

	thumb_func_start sub_0206DB9C
sub_0206DB9C: ; 0x0206DB9C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #6
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DB9C

	thumb_func_start sub_0206DBB0
sub_0206DBB0: ; 0x0206DBB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r6, r0, #0
	add r0, sp, #8
	add r5, r1, #0
	add r4, r3, #0
	add r0, #2
	add r1, sp, #4
	add r3, sp, #8
	str r0, [sp]
	add r0, r2, #0
	add r1, #2
	add r2, sp, #8
	add r3, #1
	bl sub_0206CE38
	add r0, sp, #4
	strh r5, [r0]
	strb r4, [r0, #7]
	add r0, r6, #0
	mov r1, #3
	mov r2, #1
	add r3, sp, #4
	bl sub_0206CD58
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DBB0

	thumb_func_start sub_0206DBE8
sub_0206DBE8: ; 0x0206DBE8
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #5]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #2
	mov r3, #4
	bl sub_0200B60C
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0206DC36
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0206DC36:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206DBE8

	thumb_func_start sub_0206DC3C
sub_0206DC3C: ; 0x0206DC3C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4, #2]
	bl sub_02026FE8
	cmp r0, #0
	bne _0206DC5C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206DC5C:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206DC3C

	thumb_func_start sub_0206DC6C
sub_0206DC6C: ; 0x0206DC6C
	push {r4, r5, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #8
	str r0, [sp]
	add r0, r2, #0
	add r2, sp, #4
	add r3, sp, #4
	add r4, r1, #0
	add r1, sp, #4
	add r2, #2
	add r3, #3
	bl sub_0206CE38
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	add r3, sp, #4
	str r4, [sp, #0xc]
	bl sub_0206CD70
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DC6C

	thumb_func_start sub_0206DC9C
sub_0206DC9C: ; 0x0206DC9C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	mov r0, #0xfa
	ldr r1, [r4, #8]
	lsl r0, r0, #2
	mul r0, r1
	mov r1, #0xfe
	bl _u32_div_f
	add r0, r0, #5
	mov r1, #0xa
	bl _u32_div_f
	mov r1, #0xa
	add r4, r0, #0
	bl _u32_div_f
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r3, #3
	bl sub_0200B60C
	add r0, r4, #0
	mov r1, #0xa
	bl _u32_div_f
	mov r0, #0
	add r2, r1, #0
	str r0, [sp]
	mov r3, #1
	add r0, r5, #0
	mov r1, #3
	str r3, [sp, #4]
	bl sub_0200B60C
	mov r0, #2
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206DC9C

	thumb_func_start sub_0206DD1C
sub_0206DD1C: ; 0x0206DD1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DD1C

	thumb_func_start sub_0206DD38
sub_0206DD38: ; 0x0206DD38
	push {r3, r4, r5, lr}
	sub sp, #0x28
	mov r4, #0xfa
	lsl r4, r4, #2
	add r4, r1, r4
	add r5, sp, #0
	cmp r2, r4
	blo _0206DD58
	str r1, [r5, #0]
	str r2, [r5, #4]
	str r3, [r5, #8]
	mov r1, #3
	mov r2, #4
	add r3, r5, #0
	bl sub_0206CD70
_0206DD58:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206DD38

	thumb_func_start sub_0206DD5C
sub_0206DD5C: ; 0x0206DD5C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #8]
	add r0, r5, #0
	mov r3, #0xa
	bl sub_0200B60C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #0]
	add r0, r5, #0
	mov r1, #2
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [r4, #4]
	add r0, r5, #0
	mov r1, #3
	mov r3, #6
	bl sub_0200B60C
	mov r0, #3
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DD5C

	thumb_func_start sub_0206DDB8
sub_0206DDB8: ; 0x0206DDB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	add r6, r2, #0
	bl sub_0206DE4C
	add r4, r0, #0
	cmp r4, #0x19
	bgt _0206DDE2
	bge _0206DDF4
	cmp r4, #0xf
	bgt _0206DDDA
	beq _0206DDF4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DDDA:
	cmp r4, #0x14
	beq _0206DDF4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DDE2:
	cmp r4, #0x23
	bgt _0206DDF0
	bge _0206DDF4
	cmp r4, #0x1e
	beq _0206DDF4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DDF0:
	cmp r4, #0x28
	bne _0206DE46
_0206DDF4:
	add r0, r6, #0
	bl sub_02092464
	cmp r0, #0xff
	bls _0206DE06
	bl GF_AssertFail
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
_0206DE06:
	add r0, sp, #4
	add r0, #0x1b
	add r1, sp, #4
	add r2, sp, #4
	add r3, sp, #4
	str r0, [sp]
	add r0, r5, #0
	add r1, #0x1c
	add r2, #0x19
	add r3, #0x1a
	bl sub_0206CE38
	add r2, sp, #4
	mov r0, #0x20
	add r1, r5, #0
	add r2, #0x18
	add r3, sp, #4
	bl sub_0206CED0
	add r0, r6, #0
	bl sub_02092464
	add r1, sp, #4
	strb r0, [r1, #0x16]
	add r0, r1, #0
	strb r4, [r0, #0x17]
	add r0, r7, #0
	mov r1, #3
	mov r2, #5
	add r3, sp, #4
	bl sub_0206CD7C
_0206DE46:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206DDB8

	thumb_func_start sub_0206DE4C
sub_0206DE4C: ; 0x0206DE4C
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0206DE7C ; =0x020EFDDC
	add r6, r0, #0
	add r5, r4, #0
_0206DE56:
	lsl r1, r5, #1
	ldrh r1, [r7, r1]
	add r0, r6, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #1
	bne _0206DE6C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
_0206DE6C:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #0x27
	blo _0206DE56
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206DE7C: .word 0x020EFDDC
	thumb_func_end sub_0206DE4C

	thumb_func_start sub_0206DE80
sub_0206DE80: ; 0x0206DE80
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	ldrb r0, [r4, #0x1a]
	beq _0206DEB4
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrb r3, [r4, #0x19]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_0206CD94
	b _0206DEC6
_0206DEB4:
	str r0, [sp]
	ldrb r0, [r4, #0x1b]
	mov r1, #1
	str r0, [sp, #4]
	ldrh r2, [r4, #0x1c]
	ldrb r3, [r4, #0x19]
	add r0, r5, #0
	bl sub_0206CE74
_0206DEC6:
	ldrb r2, [r4, #0x16]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B668
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #3
	ldrb r2, [r4, #0x17]
	add r0, r5, #0
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206DE80

	thumb_func_start sub_0206DEEC
sub_0206DEEC: ; 0x0206DEEC
	push {r4, lr}
	sub sp, #0x28
	add r4, sp, #0
	strh r1, [r4]
	strh r2, [r4, #2]
	ldrh r2, [r4, #2]
	ldr r1, _0206DF10 ; =0x000003E7
	add r3, sp, #0
	cmp r2, r1
	bls _0206DF02
	strh r1, [r3, #2]
_0206DF02:
	mov r1, #3
	mov r2, #8
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	nop
_0206DF10: .word 0x000003E7
	thumb_func_end sub_0206DEEC

	thumb_func_start sub_0206DF14
sub_0206DF14: ; 0x0206DF14
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BB04
	ldrh r2, [r4, #2]
	ldr r0, _0206DF5C ; =0x000003E7
	cmp r2, r0
	bls _0206DF42
	add r2, r0, #0
_0206DF42:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #2
	mov r3, #3
	bl sub_0200B60C
	mov r0, #7
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0206DF5C: .word 0x000003E7
	thumb_func_end sub_0206DF14

	thumb_func_start sub_0206DF60
sub_0206DF60: ; 0x0206DF60
	push {r4, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	ldrh r4, [r2]
	ldr r2, _0206DF84 ; =0x000003E7
	add r3, sp, #0
	cmp r4, r2
	bls _0206DF74
	strh r2, [r3]
_0206DF74:
	cmp r1, #1
	bls _0206DF80
	mov r1, #3
	mov r2, #9
	bl sub_0206CD70
_0206DF80:
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0206DF84: .word 0x000003E7
	thumb_func_end sub_0206DF60

	thumb_func_start sub_0206DF88
sub_0206DF88: ; 0x0206DF88
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	ldr r0, _0206DFC4 ; =0x000003E7
	cmp r2, r0
	bls _0206DFAC
	add r2, r0, #0
_0206DFAC:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	add r0, r5, #0
	mov r3, #3
	str r1, [sp, #4]
	bl sub_0200B60C
	mov r0, #8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0206DFC4: .word 0x000003E7
	thumb_func_end sub_0206DF88

	thumb_func_start sub_0206DFC8
sub_0206DFC8: ; 0x0206DFC8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0207D990
	mov r1, #0x6b
	lsl r1, r1, #2
	mov r2, #1
	mov r3, #0x20
	bl sub_0207D688
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206DFC8

	thumb_func_start sub_0206DFE0
sub_0206DFE0: ; 0x0206DFE0
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, sp, #0
	bl sub_0202440C
	bl sub_0202E828
	ldr r2, [r0, #4]
	cmp r2, #0x1e
	blo _0206E012
	ldr r1, [r0, #0]
	str r1, [r4, #0]
	str r2, [r4, #4]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xa
	add r3, r4, #0
	bl sub_0206CD7C
_0206E012:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206DFE0

	thumb_func_start sub_0206E018
sub_0206E018: ; 0x0206E018
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [r4, #4]
	add r0, r5, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #9
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E018

	thumb_func_start sub_0206E04C
sub_0206E04C: ; 0x0206E04C
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E04C

	thumb_func_start sub_0206E060
sub_0206E060: ; 0x0206E060
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r4, sp, #0
	bl sub_0202440C
	bl sub_0202E834
	ldrh r1, [r0, #2]
	cmp r1, #0xa
	blo _0206E094
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xb
	add r3, r4, #0
	bl sub_0206CD7C
_0206E094:
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E060

	thumb_func_start sub_0206E098
sub_0206E098: ; 0x0206E098
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #0xa
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E098

	thumb_func_start sub_0206E0CC
sub_0206E0CC: ; 0x0206E0CC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #9
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E0CC

	thumb_func_start sub_0206E0E0
sub_0206E0E0: ; 0x0206E0E0
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7FC
	ldrh r2, [r0]
	add r1, sp, #0
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	mov r2, #0
	strb r2, [r0]
	mov r0, #0x1b
	strh r4, [r1, #4]
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E0E0

	thumb_func_start sub_0206E118
sub_0206E118: ; 0x0206E118
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r3, #4
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _0206E15A
	add sp, #8
	mov r0, #8
	pop {r4, r5, r6, pc}
_0206E15A:
	mov r0, #9
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E118

	thumb_func_start sub_0206E160
sub_0206E160: ; 0x0206E160
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E160

	thumb_func_start sub_0206E174
sub_0206E174: ; 0x0206E174
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0207A268
	bl sub_02054A74
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #4
	str r1, [sp]
	add r1, sp, #4
	add r2, #2
	add r3, #3
	add r6, r0, #0
	bl sub_0206CE38
	add r2, sp, #8
	add r3, sp, #8
	mov r0, #0x20
	add r1, r6, #0
	add r2, #1
	add r3, #2
	bl sub_0206CED0
	add r0, sp, #4
	strh r4, [r0, #0x1c]
	add r0, r5, #0
	mov r1, #1
	mov r2, #4
	add r3, sp, #4
	bl sub_0206CD70
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E174

	thumb_func_start sub_0206E1C0
sub_0206E1C0: ; 0x0206E1C0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _0206E218
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #3]
	mov r1, #2
	add r2, r4, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CD94
	ldrh r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BE48
	add sp, #8
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_0206E218:
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #3]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #4]
	str r0, [sp, #4]
	ldrh r2, [r4]
	ldrb r3, [r4, #2]
	add r0, r5, #0
	bl sub_0206CE74
	ldrh r2, [r4, #0x1c]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BE48
	mov r0, #0xb
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E1C0

	thumb_func_start sub_0206E248
sub_0206E248: ; 0x0206E248
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E248

	thumb_func_start sub_0206E264
sub_0206E264: ; 0x0206E264
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	ldr r0, [r0, #0x14]
	bl ov25_02253DD8
	str r0, [sp]
	add r0, sp, #0
	strh r4, [r0, #4]
	add r0, r5, #0
	mov r1, #1
	mov r2, #6
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E264

	thumb_func_start sub_0206E28C
sub_0206E28C: ; 0x0206E28C
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldr r2, [r4, #0]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200B928
	ldrh r2, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	mov r0, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E28C

	thumb_func_start sub_0206E2BC
sub_0206E2BC: ; 0x0206E2BC
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7D8
	ldrh r2, [r0]
	add r1, sp, #0
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r2, [r0, #4]
	strh r2, [r1, #4]
	ldrh r2, [r0, #6]
	strh r2, [r1, #6]
	ldrh r2, [r0, #8]
	strh r2, [r1, #8]
	mov r2, #0
	strb r2, [r0]
	mov r0, #0x1b
	strh r4, [r1, #0xa]
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E2BC

	thumb_func_start sub_0206E300
sub_0206E300: ; 0x0206E300
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r0, r6, #0
	add r5, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldrb r0, [r4, #5]
	mov r1, #0
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #8]
	bl sub_020958B8
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BBDC
	ldrb r0, [r4, #7]
	bl sub_02095888
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BBA8
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldrb r2, [r4, #9]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #4
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4, #0xa]
	add r0, r5, #0
	mov r1, #5
	bl sub_0200BE48
	ldrb r0, [r4, #9]
	cmp r0, #1
	bne _0206E376
	add sp, #8
	mov r0, #0x12
	pop {r4, r5, r6, pc}
_0206E376:
	mov r0, #0x11
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E300

	thumb_func_start sub_0206E37C
sub_0206E37C: ; 0x0206E37C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4, #2]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E37C

	thumb_func_start sub_0206E398
sub_0206E398: ; 0x0206E398
	push {r4, lr}
	sub sp, #0x28
	add r4, r0, #0
	add r0, sp, #0
	strh r1, [r0, #2]
	ldr r0, [r4, #0xc]
	bl sub_0202A750
	mov r1, #0
	bl sub_02029CA8
	bl sub_0202A184
	add r1, sp, #0
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #1
	mov r2, #9
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0206E398

	thumb_func_start sub_0206E3C8
sub_0206E3C8: ; 0x0206E3C8
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0206CEA4
	ldrh r2, [r4, #2]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	mov r0, #0x14
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E3C8

	thumb_func_start sub_0206E3F8
sub_0206E3F8: ; 0x0206E3F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	bl ov6_02246498
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02027560
	ldrh r1, [r4]
	bl sub_02026FE8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206E3F8

	thumb_func_start sub_0206E414
sub_0206E414: ; 0x0206E414
	push {r3, lr}
	sub sp, #0x28
	str r1, [sp]
	mov r1, #1
	mov r2, #0xa
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	thumb_func_end sub_0206E414

	thumb_func_start sub_0206E428
sub_0206E428: ; 0x0206E428
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldr r0, [r4, #0]
	add r0, #0x14
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E428

	thumb_func_start sub_0206E448
sub_0206E448: ; 0x0206E448
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7F0
	ldrb r2, [r0]
	add r1, sp, #0
	strb r2, [r1]
	ldrb r2, [r0, #1]
	strb r2, [r1, #1]
	strh r4, [r1, #2]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xb
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206E448

	thumb_func_start sub_0206E480
sub_0206E480: ; 0x0206E480
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r0, r7, #0
	add r5, r1, #0
	bl ov6_02246498
	add r6, r0, #0
	ldrb r4, [r6, #1]
	add r0, r5, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_0206CDD0
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	bl sub_0200BF74
	ldrh r2, [r6, #2]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200BE48
	sub r4, #0x19
	cmp r4, #3
	bhi _0206E4D8
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E4C0: ; jump table
	.short _0206E4C8 - _0206E4C0 - 2 ; case 0
	.short _0206E4CC - _0206E4C0 - 2 ; case 1
	.short _0206E4D0 - _0206E4C0 - 2 ; case 2
	.short _0206E4D4 - _0206E4C0 - 2 ; case 3
_0206E4C8:
	mov r0, #0x27
	pop {r3, r4, r5, r6, r7, pc}
_0206E4CC:
	mov r0, #0x28
	pop {r3, r4, r5, r6, r7, pc}
_0206E4D0:
	mov r0, #0x29
	pop {r3, r4, r5, r6, r7, pc}
_0206E4D4:
	mov r0, #0x2a
	pop {r3, r4, r5, r6, r7, pc}
_0206E4D8:
	mov r0, #0x26
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0206E480

	thumb_func_start sub_0206E4DC
sub_0206E4DC: ; 0x0206E4DC
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E7E4
	add r6, r0, #0
	add r3, sp, #0
	mov r2, #0x12
_0206E4F4:
	ldrh r1, [r6]
	add r6, r6, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0206E4F4
	add r1, sp, #0
	strh r4, [r1, #0x24]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xd
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E4DC

	thumb_func_start sub_0206E520
sub_0206E520: ; 0x0206E520
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #5]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r2, [r4, #0x1e]
	add r0, r5, #0
	mov r1, #2
	bl sub_0200B6D8
	ldrh r2, [r4, #0x24]
	add r0, r5, #0
	mov r1, #5
	bl sub_0200BE48
	ldrb r0, [r4, #0x1f]
	cmp r0, #0
	beq _0206E572
	cmp r0, #1
	beq _0206E58A
	cmp r0, #2
	beq _0206E578
	b _0206E59A
_0206E572:
	add sp, #8
	mov r0, #0x2d
	pop {r4, r5, r6, pc}
_0206E578:
	add r4, #0x20
	ldrb r2, [r4]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BFAC
	add sp, #8
	mov r0, #0x2c
	pop {r4, r5, r6, pc}
_0206E58A:
	ldrh r2, [r4, #0x22]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200B70C
	add sp, #8
	mov r0, #0x2e
	pop {r4, r5, r6, pc}
_0206E59A:
	mov r0, #0x2d
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206E520

	thumb_func_start sub_0206E5A0
sub_0206E5A0: ; 0x0206E5A0
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E810
	add r6, r0, #0
	add r3, sp, #0
	mov r2, #0xf
_0206E5B8:
	ldrh r1, [r6]
	add r6, r6, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0206E5B8
	add r1, sp, #0
	strh r4, [r1, #0x1e]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0xe
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E5A0

	thumb_func_start sub_0206E5E4
sub_0206E5E4: ; 0x0206E5E4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrb r0, [r4, #5]
	mov r1, #1
	str r0, [sp]
	ldrb r0, [r4, #6]
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
	ldrb r0, [r4, #7]
	cmp r0, #0
	ldrb r0, [r4, #5]
	beq _0206E630
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r2, r4, #0
	ldrb r3, [r4, #4]
	add r0, r5, #0
	mov r1, #2
	add r2, #8
	bl sub_0206CD94
	b _0206E642
_0206E630:
	str r0, [sp]
	ldrb r0, [r4, #6]
	mov r1, #2
	str r0, [sp, #4]
	ldrh r2, [r4, #2]
	ldrb r3, [r4, #4]
	add r0, r5, #0
	bl sub_0206CE74
_0206E642:
	ldrh r2, [r4, #0x1e]
	add r0, r5, #0
	mov r1, #3
	bl sub_0200BE48
	mov r0, #0x2f
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E5E4

	thumb_func_start sub_0206E654
sub_0206E654: ; 0x0206E654
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E654

	thumb_func_start sub_0206E668
sub_0206E668: ; 0x0206E668
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0xf
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E668

	thumb_func_start sub_0206E680
sub_0206E680: ; 0x0206E680
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E680

	thumb_func_start sub_0206E6A8
sub_0206E6A8: ; 0x0206E6A8
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0x10
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E6A8

	thumb_func_start sub_0206E6C0
sub_0206E6C0: ; 0x0206E6C0
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x31
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E6C0

	thumb_func_start sub_0206E6E8
sub_0206E6E8: ; 0x0206E6E8
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0x11
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E6E8

	thumb_func_start sub_0206E700
sub_0206E700: ; 0x0206E700
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x32
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E700

	thumb_func_start sub_0206E728
sub_0206E728: ; 0x0206E728
	push {r3, lr}
	sub sp, #0x28
	add r2, sp, #0
	strh r1, [r2]
	mov r1, #1
	mov r2, #0x12
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E728

	thumb_func_start sub_0206E740
sub_0206E740: ; 0x0206E740
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r1, #0
	add r0, r6, #0
	bl ov6_02246498
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0
	add r2, r6, #0
	bl sub_0206CDD0
	ldrh r2, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x33
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E740

	thumb_func_start sub_0206E768
sub_0206E768: ; 0x0206E768
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r4, r1, #0
	bl sub_0202440C
	bl sub_0202E81C
	add r6, r0, #0
	add r3, sp, #0
	mov r2, #0xb
_0206E780:
	ldrh r1, [r6]
	add r6, r6, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0206E780
	add r1, sp, #0
	strh r4, [r1, #0x16]
	mov r1, #0
	strb r1, [r0]
	mov r0, #0x1b
	bl sub_02025C84
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x13
	add r3, sp, #0
	bl sub_0206CD70
	add sp, #0x28
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0206E768

	thumb_func_start sub_0206E7AC
sub_0206E7AC: ; 0x0206E7AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r0, r2, #0
	add r6, r1, #0
	str r2, [sp, #8]
	bl ov6_02246498
	add r4, r0, #0
	mov r0, #0x40
	mov r1, #4
	bl sub_02023790
	add r7, r0, #0
	ldr r2, [sp, #8]
	add r0, r6, #0
	mov r1, #0
	bl sub_0206CDD0
	add r0, r7, #0
	add r1, r4, #6
	bl sub_02023D28
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r4, #3]
	mov r1, #1
	add r2, r7, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #2]
	add r0, r6, #0
	bl sub_0200B48C
	add r0, r7, #0
	bl sub_020237BC
	ldrh r2, [r4, #0x16]
	add r0, r6, #0
	mov r1, #2
	bl sub_0200BE48
	ldrb r0, [r4, #1]
	cmp r0, #6
	bhi _0206E82E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E80E: ; jump table
	.short _0206E82E - _0206E80E - 2 ; case 0
	.short _0206E81C - _0206E80E - 2 ; case 1
	.short _0206E828 - _0206E80E - 2 ; case 2
	.short _0206E828 - _0206E80E - 2 ; case 3
	.short _0206E820 - _0206E80E - 2 ; case 4
	.short _0206E824 - _0206E80E - 2 ; case 5
	.short _0206E82C - _0206E80E - 2 ; case 6
_0206E81C:
	mov r5, #0x34
	b _0206E82E
_0206E820:
	mov r5, #0x35
	b _0206E82E
_0206E824:
	mov r5, #0x36
	b _0206E82E
_0206E828:
	mov r5, #0x37
	b _0206E82E
_0206E82C:
	mov r5, #0x38
_0206E82E:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206E7AC

	thumb_func_start sub_0206E834
sub_0206E834: ; 0x0206E834
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x11
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206E834

	thumb_func_start sub_0206E848
sub_0206E848: ; 0x0206E848
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r5, _0206E86C ; =0x020EFD34
	add r7, r0, #0
	add r4, r6, #0
_0206E852:
	ldrb r1, [r5]
	add r0, r7, #0
	bl sub_0202B4AC
	cmp r0, #0
	beq _0206E860
	add r4, r4, #1
_0206E860:
	add r6, r6, #1
	add r5, r5, #1
	cmp r6, #5
	blo _0206E852
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206E86C: .word 0x020EFD34
	thumb_func_end sub_0206E848

	thumb_func_start sub_0206E870
sub_0206E870: ; 0x0206E870
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	bl sub_0202B4A0
	add r7, r0, #0
	bl sub_0206E848
	add r4, r0, #0
	cmp r4, #0
	bgt _0206E88E
	bl GF_AssertFail
_0206E88E:
	cmp r4, #1
	ble _0206E8A0
	bl sub_0201D35C
	add r1, r4, #0
	bl _u32_div_f
	add r5, r1, #0
	b _0206E8A2
_0206E8A0:
	mov r5, #0
_0206E8A2:
	ldr r4, _0206E924 ; =0x020EFD34
	mov r6, #0
_0206E8A6:
	ldrb r1, [r4]
	add r0, r7, #0
	bl sub_0202B4AC
	cmp r0, #0
	beq _0206E8C0
	cmp r5, #0
	bne _0206E8BE
	ldr r0, _0206E924 ; =0x020EFD34
	ldrb r0, [r0, r6]
	str r0, [sp, #0xc]
	b _0206E8C8
_0206E8BE:
	sub r5, r5, #1
_0206E8C0:
	add r6, r6, #1
	add r4, r4, #1
	cmp r6, #5
	blo _0206E8A6
_0206E8C8:
	cmp r5, #0
	beq _0206E8D0
	bl GF_AssertFail
_0206E8D0:
	bl sub_0201D2E8
	mov r1, #0xf1
	lsl r1, r1, #4
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x11
	blo _0206E8E8
	bl GF_AssertFail
_0206E8E8:
	cmp r4, #9
	blt _0206E8EE
	add r4, r4, #1
_0206E8EE:
	mov r0, #1
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0xc]
	mov r3, #0
	bl sub_0200C054
	mov r0, #0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0xc]
	ldr r2, [sp, #0xc]
	mov r3, #1
	bl sub_0200C054
	ldr r0, [sp, #8]
	mov r1, #2
	add r2, r4, #0
	bl sub_0200B7EC
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206E924: .word 0x020EFD34
	thumb_func_end sub_0206E870

	thumb_func_start sub_0206E928
sub_0206E928: ; 0x0206E928
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202B4A0
	bl sub_0206E848
	cmp r0, #0
	beq _0206E93C
	mov r0, #1
	pop {r3, pc}
_0206E93C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206E928

	thumb_func_start sub_0206E940
sub_0206E940: ; 0x0206E940
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	bl sub_0201D2E8
	ldr r1, _0206EA04 ; =0x00003334
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #5
	blo _0206E95C
	bl GF_AssertFail
_0206E95C:
	ldr r0, _0206EA08 ; =0x02100BA4
	lsl r1, r4, #1
	ldrh r5, [r0, r1]
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203A944
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A138
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #0
	bl sub_0200B8C8
	cmp r4, #0xb
	bhi _0206E9FC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E98C: ; jump table
	.short _0206E9A4 - _0206E98C - 2 ; case 0
	.short _0206E9DC - _0206E98C - 2 ; case 1
	.short _0206E9E0 - _0206E98C - 2 ; case 2
	.short _0206E9E4 - _0206E98C - 2 ; case 3
	.short _0206E9F4 - _0206E98C - 2 ; case 4
	.short _0206E9E8 - _0206E98C - 2 ; case 5
	.short _0206E9EC - _0206E98C - 2 ; case 6
	.short _0206E9F0 - _0206E98C - 2 ; case 7
	.short _0206E9FC - _0206E98C - 2 ; case 8
	.short _0206E9FC - _0206E98C - 2 ; case 9
	.short _0206E9FC - _0206E98C - 2 ; case 10
	.short _0206E9F8 - _0206E98C - 2 ; case 11
_0206E9A4:
	bl sub_0201D2E8
	lsl r0, r0, #2
	lsr r4, r0, #0x10
	cmp r4, #4
	blo _0206E9B4
	bl GF_AssertFail
_0206E9B4:
	cmp r4, #3
	bhi _0206E9DC
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206E9C4: ; jump table
	.short _0206E9CC - _0206E9C4 - 2 ; case 0
	.short _0206E9D0 - _0206E9C4 - 2 ; case 1
	.short _0206E9D4 - _0206E9C4 - 2 ; case 2
	.short _0206E9D8 - _0206E9C4 - 2 ; case 3
_0206E9CC:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0206E9D0:
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0206E9D4:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0206E9D8:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0206E9DC:
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0206E9E0:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_0206E9E4:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_0206E9E8:
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206E9EC:
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_0206E9F0:
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_0206E9F4:
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_0206E9F8:
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_0206E9FC:
	bl GF_AssertFail
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206EA04: .word 0x00003334
_0206EA08: .word 0x02100BA4
	thumb_func_end sub_0206E940

	thumb_func_start sub_0206EA0C
sub_0206EA0C: ; 0x0206EA0C
	mov r0, #1
	bx lr
	thumb_func_end sub_0206EA0C

	thumb_func_start sub_0206EA10
sub_0206EA10: ; 0x0206EA10
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203D174
	bl sub_02025E38
	add r2, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r3, _0206EB78 ; =0x0000019B
	ldr r0, [r0, #0]
	cmp r0, r3
	beq _0206EA36
	add r1, r3, #1
	cmp r0, r1
	blt _0206EA4C
	add r1, r3, #6
	cmp r0, r1
	bgt _0206EA4C
_0206EA36:
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B498
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B4BC
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_0206EA4C:
	ldr r3, _0206EB7C ; =0x000001A2
	cmp r0, r3
	beq _0206EA5E
	add r1, r3, #4
	cmp r0, r1
	blt _0206EA6C
	add r1, r3, #7
	cmp r0, r1
	bgt _0206EA6C
_0206EA5E:
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B4E4
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_0206EA6C:
	ldr r3, _0206EB80 ; =0x000001AA
	cmp r0, r3
	beq _0206EA84
	add r1, r3, #4
	cmp r0, r1
	blt _0206EA7E
	add r1, r3, #6
	cmp r0, r1
	ble _0206EA84
_0206EA7E:
	ldr r3, _0206EB84 ; =0x00000101
	cmp r0, r3
	bne _0206EA88
_0206EA84:
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_0206EA88:
	add r1, r3, #0
	add r1, #0xb0
	cmp r0, r1
	beq _0206EA9E
	add r1, r3, #0
	add r1, #0xb4
	cmp r0, r1
	blt _0206EAA2
	add r3, #0xb8
	cmp r0, r3
	bgt _0206EAA2
_0206EA9E:
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_0206EAA2:
	ldr r3, _0206EB88 ; =0x000001BA
	cmp r0, r3
	beq _0206EAB4
	add r1, r3, #3
	cmp r0, r1
	blt _0206EAB8
	add r1, r3, #7
	cmp r0, r1
	bgt _0206EAB8
_0206EAB4:
	mov r0, #0x11
	pop {r3, r4, r5, pc}
_0206EAB8:
	cmp r0, #3
	beq _0206EAC4
	cmp r0, #8
	blt _0206EAC8
	cmp r0, #0x20
	bgt _0206EAC8
_0206EAC4:
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_0206EAC8:
	cmp r0, #0x21
	beq _0206EADA
	cmp r0, #0x26
	blt _0206EAD4
	cmp r0, #0x2c
	ble _0206EADA
_0206EAD4:
	ldr r1, _0206EB8C ; =0x000001EB
	cmp r0, r1
	bne _0206EADE
_0206EADA:
	mov r0, #0x13
	pop {r3, r4, r5, pc}
_0206EADE:
	cmp r0, #0x2d
	beq _0206EAEA
	cmp r0, #0x32
	blt _0206EAEE
	cmp r0, #0x40
	bgt _0206EAEE
_0206EAEA:
	mov r0, #0x14
	pop {r3, r4, r5, pc}
_0206EAEE:
	cmp r0, #0x41
	beq _0206EAFA
	cmp r0, #0x47
	blt _0206EAFE
	cmp r0, #0x55
	bgt _0206EAFE
_0206EAFA:
	mov r0, #0x15
	pop {r3, r4, r5, pc}
_0206EAFE:
	cmp r0, #0x56
	beq _0206EB0A
	cmp r0, #0x67
	blt _0206EB0E
	cmp r0, #0x77
	bgt _0206EB0E
_0206EB0A:
	mov r0, #0x16
	pop {r3, r4, r5, pc}
_0206EB0E:
	cmp r0, #0x78
	beq _0206EB1A
	cmp r0, #0x7d
	blt _0206EB1E
	cmp r0, #0x83
	bgt _0206EB1E
_0206EB1A:
	mov r0, #0x17
	pop {r3, r4, r5, pc}
_0206EB1E:
	cmp r0, #0x84
	beq _0206EB36
	cmp r0, #0x88
	blt _0206EB2A
	cmp r0, #0x95
	ble _0206EB36
_0206EB2A:
	ldr r1, _0206EB90 ; =0x00000131
	cmp r0, r1
	blt _0206EB3A
	add r1, r1, #5
	cmp r0, r1
	bgt _0206EB3A
_0206EB36:
	mov r0, #0x18
	pop {r3, r4, r5, pc}
_0206EB3A:
	cmp r0, #0x96
	beq _0206EB4E
	cmp r0, #0x9d
	blt _0206EB46
	cmp r0, #0xa4
	ble _0206EB4E
_0206EB46:
	mov r1, #0x81
	lsl r1, r1, #2
	cmp r0, r1
	bne _0206EB52
_0206EB4E:
	mov r0, #0x19
	pop {r3, r4, r5, pc}
_0206EB52:
	cmp r0, #0xa5
	beq _0206EB5E
	cmp r0, #0xaa
	blt _0206EB62
	cmp r0, #0xab
	bgt _0206EB62
_0206EB5E:
	mov r0, #0x1a
	pop {r3, r4, r5, pc}
_0206EB62:
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B498
	ldr r2, [r5, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl sub_0200B4BC
	mov r0, #0x1b
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0206EB78: .word 0x0000019B
_0206EB7C: .word 0x000001A2
_0206EB80: .word 0x000001AA
_0206EB84: .word 0x00000101
_0206EB88: .word 0x000001BA
_0206EB8C: .word 0x000001EB
_0206EB90: .word 0x00000131
	thumb_func_end sub_0206EA10

	thumb_func_start sub_0206EB94
sub_0206EB94: ; 0x0206EB94
	push {r3, r4, lr}
	sub sp, #4
	ldr r0, [r0, #0xc]
	add r4, r1, #0
	bl sub_0202D834
	mov r1, #2
	bl sub_0202D814
	add r1, sp, #0
	add r1, #2
	add r2, sp, #0
	bl ov6_0224322C
	add r0, sp, #0
	ldrh r0, [r0, #2]
	bl sub_0203A138
	add r2, r0, #0
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B8C8
	add r2, sp, #0
	ldrh r2, [r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_0206CEA4
	mov r0, #0x1d
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end sub_0206EB94

	thumb_func_start sub_0206EBD4
sub_0206EBD4: ; 0x0206EBD4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	bl sub_0202D898
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206EBD4

	thumb_func_start sub_0206EBE4
sub_0206EBE4: ; 0x0206EBE4
	mov r0, #0
	bx lr
	thumb_func_end sub_0206EBE4

	thumb_func_start sub_0206EBE8
sub_0206EBE8: ; 0x0206EBE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	ldr r4, _0206EC84 ; =0x020EFD3C
	add r7, r0, #0
	mov r6, #0
	add r5, sp, #0
_0206EBFA:
	ldrh r2, [r4]
	add r0, r7, #0
	mov r1, #2
	bl sub_0206AF3C
	strb r0, [r5]
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #1
	cmp r6, #0x12
	blo _0206EBFA
	mov r3, #0
	add r2, sp, #0x10
	ldr r0, _0206EC88 ; =0x020F0074
	add r4, r3, #0
	add r1, r3, #0
	add r2, #2
	add r6, sp, #0
_0206EC1E:
	lsl r5, r1, #1
	ldrh r5, [r0, r5]
	ldrb r5, [r6, r5]
	cmp r5, #0
	beq _0206EC2E
	strb r3, [r2]
	add r2, r2, #1
	add r4, r4, #1
_0206EC2E:
	add r3, r3, #1
	add r1, r1, #2
	cmp r3, #0x76
	blo _0206EC1E
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bne _0206EC40
	bl GF_AssertFail
_0206EC40:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _0206EC4C
	mov r5, #0
	b _0206EC7A
_0206EC4C:
	bl sub_0201D2E8
	add r5, r0, #0
	lsl r1, r4, #0x10
	ldr r0, _0206EC8C ; =0x0000FFFF
	lsr r1, r1, #0x10
	bl _s32_div_f
	add r1, r0, #0
	add r1, r1, #1
	lsl r1, r1, #0x10
	add r0, r5, #0
	lsr r1, r1, #0x10
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	cmp r5, r0
	blo _0206EC7A
	bl GF_AssertFail
_0206EC7A:
	add r0, sp, #0x10
	add r0, #2
	ldrb r0, [r0, r5]
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206EC84: .word 0x020EFD3C
_0206EC88: .word 0x020F0074
_0206EC8C: .word 0x0000FFFF
	thumb_func_end sub_0206EBE8

	thumb_func_start sub_0206EC90
sub_0206EC90: ; 0x0206EC90
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r5, r1, #0
	bl sub_02027854
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0206EBE8
	add r4, r0, #0
	lsl r0, r4, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0206ECF8 ; =0x020F0074
	ldrh r0, [r0, r1]
	bl sub_0203A138
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0200B8C8
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02027D04
	cmp r0, #5
	bhi _0206ECF2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0206ECD6: ; jump table
	.short _0206ECF2 - _0206ECD6 - 2 ; case 0
	.short _0206ECF2 - _0206ECD6 - 2 ; case 1
	.short _0206ECEE - _0206ECD6 - 2 ; case 2
	.short _0206ECEA - _0206ECD6 - 2 ; case 3
	.short _0206ECE6 - _0206ECD6 - 2 ; case 4
	.short _0206ECE2 - _0206ECD6 - 2 ; case 5
_0206ECE2:
	mov r0, #0x24
	pop {r4, r5, r6, pc}
_0206ECE6:
	mov r0, #0x25
	pop {r4, r5, r6, pc}
_0206ECEA:
	mov r0, #0x26
	pop {r4, r5, r6, pc}
_0206ECEE:
	mov r0, #0x27
	pop {r4, r5, r6, pc}
_0206ECF2:
	mov r0, #0x28
	pop {r4, r5, r6, pc}
	nop
_0206ECF8: .word 0x020F0074
	thumb_func_end sub_0206EC90

	thumb_func_start sub_0206ECFC
sub_0206ECFC: ; 0x0206ECFC
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #9
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206ECFC

	thumb_func_start sub_0206ED10
sub_0206ED10: ; 0x0206ED10
	mov r0, #0
	bx lr
	thumb_func_end sub_0206ED10

	thumb_func_start sub_0206ED14
sub_0206ED14: ; 0x0206ED14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	mov r6, #0xff
	bl sub_0201D2E8
	ldr r1, _0206EDA8 ; =0x0000FFFF
	bl _s32_div_f
	add r4, r1, #0
	add r0, r4, #0
	bl sub_02075BFC
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_0200B6D8
	cmp r5, #0
	beq _0206ED4C
	cmp r5, #6
	beq _0206ED4C
	cmp r5, #0xc
	beq _0206ED4C
	cmp r5, #0x12
	beq _0206ED4C
	cmp r5, #0x18
	bne _0206ED50
_0206ED4C:
	mov r0, #0x2e
	pop {r3, r4, r5, r6, r7, pc}
_0206ED50:
	mov r0, #1
	tst r0, r4
	bne _0206ED7C
	mov r5, #0
_0206ED58:
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02077648
	cmp r0, #1
	bne _0206ED68
	add r6, r5, #0
	b _0206ED6E
_0206ED68:
	add r5, r5, #1
	cmp r5, #5
	blo _0206ED58
_0206ED6E:
	add r0, r7, #0
	mov r1, #2
	add r2, r6, #0
	bl sub_0200B890
	mov r0, #0x2d
	pop {r3, r4, r5, r6, r7, pc}
_0206ED7C:
	mov r4, #0
_0206ED7E:
	add r1, r4, #1
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02075C60
	cmp r0, #0
	ble _0206ED92
	add r6, r4, #0
	b _0206ED98
_0206ED92:
	add r4, r4, #1
	cmp r4, #5
	blo _0206ED7E
_0206ED98:
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #1
	bl sub_0200B824
	mov r0, #0x2c
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206EDA8: .word 0x0000FFFF
	thumb_func_end sub_0206ED14

	thumb_func_start sub_0206EDAC
sub_0206EDAC: ; 0x0206EDAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x16
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203D174
	bl sub_02025E38
	add r7, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	add r5, r0, #0
	bl sub_0201D2E8
	mov r1, #0x1d
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0206C3C8
	mov r1, #4
	add r2, r4, #0
	bl sub_02071D10
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	mov r1, #0
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	mov r4, #0
_0206EE0C:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206EE64
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202D924
	add r4, r0, #0
	mov r1, #4
	bl sub_0202D93C
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #3
	bl sub_0202D93C
	add r1, r0, #0
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl sub_02075DAC
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02025FD8
	add r4, r0, #0
	add r0, r7, #0
	bl sub_02025FCC
	str r4, [sp]
	lsl r2, r5, #0x10
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	lsr r2, r2, #0x10
	bl sub_0206CE74
	b _0206EE6E
_0206EE64:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #6
	blo _0206EE0C
_0206EE6E:
	mov r0, #0x31
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_0206EDAC

	thumb_func_start sub_0206EE74
sub_0206EE74: ; 0x0206EE74
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202D834
	add r5, r0, #0
	mov r4, #0
_0206EE80:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0202D8F8
	cmp r0, #0
	beq _0206EE92
	mov r0, #1
	pop {r3, r4, r5, pc}
_0206EE92:
	add r4, r4, #1
	cmp r4, #6
	blt _0206EE80
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206EE74

	thumb_func_start sub_0206EE9C
sub_0206EE9C: ; 0x0206EE9C
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_0206EEA4:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D10
	cmp r0, #1
	bne _0206EEB2
	add r5, r5, #1
_0206EEB2:
	add r4, r4, #1
	cmp r4, #0xb
	blt _0206EEA4
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0206EE9C

	thumb_func_start sub_0206EEBC
sub_0206EEBC: ; 0x0206EEBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	add r7, r1, #0
	bl sub_0202A750
	add r6, r0, #0
	bl sub_0206EE9C
	add r4, r0, #0
	cmp r4, #1
	ble _0206EEE2
	bl sub_0201D35C
	add r1, r4, #0
	bl _u32_div_f
	add r5, r1, #0
	b _0206EEE4
_0206EEE2:
	mov r5, #0
_0206EEE4:
	mov r4, #0
_0206EEE6:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02029D10
	cmp r0, #1
	bne _0206EEFC
	cmp r5, #0
	bne _0206EEFA
	str r4, [sp, #8]
	b _0206EF02
_0206EEFA:
	sub r5, r5, #1
_0206EEFC:
	add r4, r4, #1
	cmp r4, #0xb
	blt _0206EEE6
_0206EF02:
	cmp r4, #0xb
	blt _0206EF0A
	bl GF_AssertFail
_0206EF0A:
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl sub_02029CA8
	add r5, r0, #0
	mov r0, #8
	mov r1, #4
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0202A1C0
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202A1A0
	add r0, r5, #0
	bl sub_0202A200
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0202A1F4
	add r2, r0, #0
	add r0, r7, #0
	mov r1, #1
	bl sub_0200BE48
	mov r0, #0x34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0206EEBC

	thumb_func_start sub_0206EF64
sub_0206EF64: ; 0x0206EF64
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_0202A750
	bl sub_0206EE9C
	cmp r0, #0
	beq _0206EF78
	mov r0, #1
	pop {r3, pc}
_0206EF78:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206EF64

	thumb_func_start sub_0206EF7C
sub_0206EF7C: ; 0x0206EF7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r4, #0
	bl sub_020507E4
	bl sub_0206A954
	cmp r0, #1
	bne _0206EFA6
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0206F016
_0206EFA6:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xb
	bl sub_0206AF3C
	cmp r0, #1
	bne _0206EFC8
	bl sub_0201D2E8
	mov r1, #5
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	b _0206F016
_0206EFC8:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0xa
	bl sub_0206AF3C
	cmp r0, #1
	bne _0206EFF0
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0206F016
_0206EFF0:
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x12
	bl sub_0206AF3C
	cmp r0, #1
	bne _0206F016
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
_0206F016:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206EF7C

	thumb_func_start sub_0206F01C
sub_0206F01C: ; 0x0206F01C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r0, [r0, #0xc]
	str r1, [sp, #8]
	bl sub_02027560
	add r6, r0, #0
	bl sub_0201D2E8
	mov r1, #0x7b
	lsl r1, r1, #2
	bl _s32_div_f
	add r0, r1, #1
	lsl r0, r0, #0x10
	ldr r7, _0206F0D4 ; =0x000001ED
	lsr r4, r0, #0x10
	mov r5, #1
_0206F040:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02026FE8
	cmp r0, #1
	bne _0206F050
	str r4, [sp, #0xc]
	b _0206F068
_0206F050:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	bne _0206F05C
	mov r4, #1
_0206F05C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _0206F0D4 ; =0x000001ED
	cmp r5, r0
	bls _0206F040
_0206F068:
	ldr r0, [sp, #0xc]
	mov r1, #4
	bl sub_0206F0D8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	bl sub_0201D2E8
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F0A2
	add sp, #0x10
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_0206F0A2:
	cmp r0, #1
	bne _0206F0CC
	bl sub_0201D2E8
	mov r1, #0x22
	bl _s32_div_f
	add r1, #0x19
	lsl r0, r1, #0x10
	lsr r2, r0, #0x10
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	ldr r0, [sp, #8]
	mov r3, #2
	str r1, [sp, #4]
	bl sub_0200B60C
	add sp, #0x10
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_0206F0CC:
	mov r0, #0xa
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0206F0D4: .word 0x000001ED
	thumb_func_end sub_0206F01C

	thumb_func_start sub_0206F0D8
sub_0206F0D8: ; 0x0206F0D8
	push {r3, r4, r5, lr}
	mov r2, #0x67
	add r4, r0, #0
	add r3, r1, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	bl sub_0200B144
	add r5, r0, #0
	add r1, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0200B190
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0206F0D8

	thumb_func_start sub_0206F100
sub_0206F100: ; 0x0206F100
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027520
	cmp r0, #1
	bne _0206F114
	mov r0, #1
	pop {r3, pc}
_0206F114:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206F100

	thumb_func_start sub_0206F118
sub_0206F118: ; 0x0206F118
	push {r3, lr}
	bl sub_0201D2E8
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F12E
	mov r0, #0xb
	pop {r3, pc}
_0206F12E:
	cmp r0, #1
	bne _0206F136
	mov r0, #0xc
	pop {r3, pc}
_0206F136:
	mov r0, #0xd
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F118

	thumb_func_start sub_0206F13C
sub_0206F13C: ; 0x0206F13C
	push {r3, lr}
	bl sub_0201D2E8
	mov r1, #3
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F152
	mov r0, #0xe
	pop {r3, pc}
_0206F152:
	cmp r0, #1
	bne _0206F15A
	mov r0, #0xf
	pop {r3, pc}
_0206F15A:
	mov r0, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F13C

	thumb_func_start sub_0206F160
sub_0206F160: ; 0x0206F160
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	str r1, [sp, #8]
	bl sub_02025E38
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	bl sub_02027560
	add r6, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0207A268
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_0205E1B4
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0207A0FC
	add r4, r0, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl sub_02074470
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02025FD8
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	bl sub_02025FCC
	str r4, [sp]
	str r0, [sp, #4]
	lsl r2, r5, #0x10
	lsl r3, r7, #0x18
	ldr r0, [sp, #8]
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0206CE74
	bl sub_0201D2E8
	mov r1, #0x64
	bl _s32_div_f
	add r2, r1, #0
	ldr r0, [sp, #8]
	mov r1, #1
	bl sub_0200BFAC
	bl sub_0201D2E8
	ldr r1, _0206F254 ; =0x000001EB
	bl _s32_div_f
	add r0, r1, #1
	lsl r0, r0, #0x10
	ldr r7, _0206F258 ; =0x000001ED
	lsr r4, r0, #0x10
	mov r5, #1
_0206F1F0:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02026FE8
	cmp r0, #1
	bne _0206F220
	add r0, r4, #0
	mov r1, #4
	bl sub_0206F0D8
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r1, #2
	ldr r0, [sp, #8]
	add r2, r4, #0
	mov r3, #0
	str r1, [sp, #4]
	bl sub_0200B48C
	add r0, r4, #0
	bl sub_020237BC
	b _0206F238
_0206F220:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blo _0206F22C
	mov r4, #1
_0206F22C:
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	ldr r0, _0206F258 ; =0x000001ED
	cmp r5, r0
	bls _0206F1F0
_0206F238:
	bl sub_0201D2E8
	ldr r1, _0206F25C ; =0x000001D3
	bl _s32_div_f
	add r2, r1, #0
	ldr r0, [sp, #8]
	mov r1, #3
	sub r2, r2, #1
	bl sub_0200B630
	mov r0, #0x11
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0206F254: .word 0x000001EB
_0206F258: .word 0x000001ED
_0206F25C: .word 0x000001D3
	thumb_func_end sub_0206F160

	thumb_func_start sub_0206F260
sub_0206F260: ; 0x0206F260
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02027560
	bl sub_02027520
	cmp r0, #1
	bne _0206F274
	mov r0, #1
	pop {r3, pc}
_0206F274:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end sub_0206F260

	thumb_func_start sub_0206F278
sub_0206F278: ; 0x0206F278
	mov r0, #0x12
	bx lr
	thumb_func_end sub_0206F278

	thumb_func_start sub_0206F27C
sub_0206F27C: ; 0x0206F27C
	mov r0, #0x13
	bx lr
	thumb_func_end sub_0206F27C

	thumb_func_start sub_0206F280
sub_0206F280: ; 0x0206F280
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl sub_02025E38
	mov r1, #0
	bl sub_02025F34
	cmp r0, #1
	bne _0206F296
	mov r0, #1
	pop {r3, pc}
_0206F296:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F280

	thumb_func_start sub_0206F29C
sub_0206F29C: ; 0x0206F29C
	push {r3, lr}
	bl sub_0201D2E8
	mov r1, #9
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bne _0206F2B2
	mov r0, #0x14
	pop {r3, pc}
_0206F2B2:
	cmp r0, #1
	bne _0206F2BA
	mov r0, #0x15
	pop {r3, pc}
_0206F2BA:
	cmp r0, #2
	bne _0206F2C2
	mov r0, #0x16
	pop {r3, pc}
_0206F2C2:
	cmp r0, #3
	bne _0206F2CA
	mov r0, #0x17
	pop {r3, pc}
_0206F2CA:
	cmp r0, #4
	bne _0206F2D2
	mov r0, #0x18
	pop {r3, pc}
_0206F2D2:
	cmp r0, #5
	bne _0206F2DA
	mov r0, #0x19
	pop {r3, pc}
_0206F2DA:
	cmp r0, #6
	bne _0206F2E2
	mov r0, #0x1a
	pop {r3, pc}
_0206F2E2:
	cmp r0, #7
	bne _0206F2EA
	mov r0, #0x1b
	pop {r3, pc}
_0206F2EA:
	mov r0, #0x1c
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0206F29C

	thumb_func_start sub_0206F2F0
sub_0206F2F0: ; 0x0206F2F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0202440C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0206DFE0
	add r0, r5, #0
	bl sub_0206E060
	add r0, r4, #0
	bl sub_0206D0F0
	add r0, r4, #0
	bl sub_0206D12C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206F2F0

	.rodata


	.global Unk_020EFD34
Unk_020EFD34: ; 0x020EFD34
	.incbin "incbin/arm9_rodata.bin", 0xB0F4, 0xB0FC - 0xB0F4

	.global Unk_020EFD3C
Unk_020EFD3C: ; 0x020EFD3C
	.incbin "incbin/arm9_rodata.bin", 0xB0FC, 0xB120 - 0xB0FC

	.global Unk_020EFD60
Unk_020EFD60: ; 0x020EFD60
	.incbin "incbin/arm9_rodata.bin", 0xB120, 0xB15C - 0xB120

	.global Unk_020EFD9C
Unk_020EFD9C: ; 0x020EFD9C
	.incbin "incbin/arm9_rodata.bin", 0xB15C, 0xB19C - 0xB15C

	.global Unk_020EFDDC
Unk_020EFDDC: ; 0x020EFDDC
	.incbin "incbin/arm9_rodata.bin", 0xB19C, 0xB1EC - 0xB19C

	.global Unk_020EFE2C
Unk_020EFE2C: ; 0x020EFE2C
	.incbin "incbin/arm9_rodata.bin", 0xB1EC, 0xB244 - 0xB1EC

	.global Unk_020EFE84
Unk_020EFE84: ; 0x020EFE84
	.incbin "incbin/arm9_rodata.bin", 0xB244, 0xB2CC - 0xB244

	.global Unk_020EFF0C
Unk_020EFF0C: ; 0x020EFF0C
	.incbin "incbin/arm9_rodata.bin", 0xB2CC, 0xB364 - 0xB2CC

	.global Unk_020EFFA4
Unk_020EFFA4: ; 0x020EFFA4
	.incbin "incbin/arm9_rodata.bin", 0xB364, 0xB434 - 0xB364

	.global Unk_020F0074
Unk_020F0074: ; 0x020F0074
	.incbin "incbin/arm9_rodata.bin", 0xB434, 0x1D8



	.data


	.global Unk_02100BA4
Unk_02100BA4: ; 0x02100BA4
	.incbin "incbin/arm9_data.bin", 0x1EC4, 0xA

