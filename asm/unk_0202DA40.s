	.include "macros/function.inc"
	.include "include/unk_0202DA40.inc"

	

	.text


	thumb_func_start sub_0202DA40
sub_0202DA40: ; 0x0202DA40
	ldr r3, _0202DA48 ; =sub_020245BC
	mov r1, #0x1a
	bx r3
	nop
_0202DA48: .word sub_020245BC
	thumb_func_end sub_0202DA40

	thumb_func_start sub_0202DA4C
sub_0202DA4C: ; 0x0202DA4C
	mov r0, #0xf8
	bx lr
	thumb_func_end sub_0202DA4C

	thumb_func_start sub_0202DA50
sub_0202DA50: ; 0x0202DA50
	ldr r3, _0202DA5C ; =MIi_CpuClearFast
	add r1, r0, #0
	mov r0, #0
	mov r2, #0xf8
	bx r3
	nop
_0202DA5C: .word MIi_CpuClearFast
	thumb_func_end sub_0202DA50

	thumb_func_start sub_0202DA60
sub_0202DA60: ; 0x0202DA60
	add r0, #0xec
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA60

	thumb_func_start sub_0202DA68
sub_0202DA68: ; 0x0202DA68
	add r0, #0xec
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA68

	thumb_func_start sub_0202DA70
sub_0202DA70: ; 0x0202DA70
	ldr r3, _0202DA78 ; =MIi_CpuCopyFast
	mov r2, #0xec
	bx r3
	nop
_0202DA78: .word MIi_CpuCopyFast
	thumb_func_end sub_0202DA70

	thumb_func_start sub_0202DA7C
sub_0202DA7C: ; 0x0202DA7C
	ldr r3, _0202DA88 ; =MIi_CpuCopyFast
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0xec
	bx r3
	; .align 2, 0
_0202DA88: .word MIi_CpuCopyFast
	thumb_func_end sub_0202DA7C

	thumb_func_start sub_0202DA8C
sub_0202DA8C: ; 0x0202DA8C
	add r0, #0xf0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA8C

	thumb_func_start sub_0202DA94
sub_0202DA94: ; 0x0202DA94
	add r0, #0xf0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA94

	thumb_func_start sub_0202DA9C
sub_0202DA9C: ; 0x0202DA9C
	add r0, #0xf4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DA9C

	thumb_func_start sub_0202DAA4
sub_0202DAA4: ; 0x0202DAA4
	add r0, #0xf4
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DAA4

	thumb_func_start sub_0202DAAC
sub_0202DAAC: ; 0x0202DAAC
	add r0, #0xee
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202DAAC