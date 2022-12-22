	.include "macros/function.inc"
	.include "include/unk_02038FFC.inc"

	

	.text


	thumb_func_start sub_02038FFC
sub_02038FFC: ; 0x02038FFC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02099550
	bl sub_020995B4
	mov r1, #0x72
	add r0, r4, #0
	lsl r1, r1, #4
	bl sub_02018144
	add r4, r0, #0
	add r0, #0x1f
	mov r1, #0x1f
	bic r0, r1
	bl DWC_Init
	add r5, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02099560
	bl sub_020995C4
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02038FFC

	thumb_func_start sub_02039034
sub_02039034: ; 0x02039034
	push {r4, lr}
	bl sub_0202AD28
	add r4, r0, #0
	bl DWC_CheckUserData
	cmp r0, #0
	bne _02039052
	ldr r1, _02039054 ; =0x4144414A
	add r0, r4, #0
	bl DWC_CreateUserData
	add r0, r4, #0
	bl DWC_ClearDirtyFlag
_02039052:
	pop {r4, pc}
	; .align 2, 0
_02039054: .word 0x4144414A
	thumb_func_end sub_02039034

	thumb_func_start sub_02039058
sub_02039058: ; 0x02039058
	push {r3, r4, lr}
	sub sp, #0xc
	bl sub_0202AD28
	add r4, r0, #0
	add r1, sp, #0
	bl DWC_CreateExchangeToken
	add r0, r4, #0
	add r1, sp, #0
	bl DWC_GetGsProfileId
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end sub_02039058

	thumb_func_start sub_02039074
sub_02039074: ; 0x02039074
	push {r4, lr}
	bl sub_0202B370
	bl sub_0202AD28
	add r4, r0, #0
	bl DWC_CheckHasProfile
	cmp r0, #0
	beq _02039096
	add r0, r4, #0
	bl DWC_CheckValidConsole
	cmp r0, #0
	beq _02039096
	mov r0, #1
	pop {r4, pc}
_02039096:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02039074