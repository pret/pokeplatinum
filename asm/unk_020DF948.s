	.include "macros/function.inc"
	.include "include/unk_020DF948.inc"

	.extern Unk_020FE764

	.text


	arm_func_start stricmp
stricmp: ; 0x020DF948
	stmfd sp!, {r3, lr}
	ldr r3, _020DF9AC ; =0x020FE764
_020DF950:
	ldrb r2, [r0], #1
	cmp r2, #0
	blt _020DF968
	cmp r2, #0x80
	bge _020DF968
	ldrb r2, [r3, r2]
_020DF968:
	ldrb lr, [r1], #1
	and ip, r2, #0xff
	cmp lr, #0
	blt _020DF984
	cmp lr, #0x80
	bge _020DF984
	ldrb lr, [r3, lr]
_020DF984:
	and r2, lr, #0xff
	cmp ip, r2
	mvnlo r0, #0
	ldmloia sp!, {r3, pc}
	movhi r0, #1
	ldmhiia sp!, {r3, pc}
	cmp ip, #0
	bne _020DF950
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020DF9AC: .word Unk_020FE764
	arm_func_end stricmp

	arm_func_start strcasecmp
strcasecmp: ; 0x020DF9B0
	ldr ip, _020DF9B8 ; =stricmp
	bx ip
	; .align 2, 0
_020DF9B8: .word stricmp
	arm_func_end strcasecmp