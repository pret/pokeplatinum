	.include "macros/function.inc"
	.include "include/mbstring.inc"

	.extern Unk_021016D0

	.text


	arm_func_start mbtowc
mbtowc: ; 0x020D4F34
	stmfd sp!, {r3, lr}
	ldr r3, _020D4F4C ; =0x021016D0
	ldr r3, [r3, #8]
	ldr r3, [r3, #0]
	blx r3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D4F4C: .word Unk_021016D0
	arm_func_end mbtowc

	arm_func_start __mbtowc_noconv
__mbtowc_noconv: ; 0x020D4F50
	cmp r1, #0
	moveq r0, #0
	bxeq lr
	cmp r2, #0
	mvneq r0, #0
	bxeq lr
	cmp r0, #0
	ldrneb r2, [r1]
	strneh r2, [r0]
	ldrsb r0, [r1]
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	bx lr
	arm_func_end __mbtowc_noconv

	arm_func_start __wctomb_noconv
__wctomb_noconv: ; 0x020D4F88
	cmp r0, #0
	moveq r0, #0
	strneb r1, [r0]
	movne r0, #1
	bx lr
	arm_func_end __wctomb_noconv

	arm_func_start wctomb
wctomb: ; 0x020D4F9C
	stmfd sp!, {r3, lr}
	ldr r2, _020D4FB4 ; =0x021016D0
	ldr r2, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D4FB4: .word Unk_021016D0
	arm_func_end wctomb

	arm_func_start mbstowcs
mbstowcs: ; 0x020D4FB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	bl strlen
	mov r5, r0
	cmp r8, #0
	mov r4, #0
	beq _020D5038
	cmp r6, #0
	bls _020D5038
_020D4FE8:
	ldrsb r0, [r7]
	cmp r0, #0
	beq _020D5020
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl mbtowc
	cmp r0, #0
	add r8, r8, #2
	addgt r7, r7, r0
	subgt r5, r5, r0
	bgt _020D502C
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020D5020:
	mov r0, #0
	strh r0, [r8]
	b _020D5038
_020D502C:
	add r4, r4, #1
	cmp r4, r6
	blo _020D4FE8
_020D5038:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end mbstowcs

	arm_func_start wcstombs
wcstombs: ; 0x020D5040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r4, r0
	mov sb, r1
	cmpne sb, #0
	mov r8, r2
	mov r7, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r6, sp, #0
_020D5064:
	ldrh r1, [sb]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r4, r7]
	beq _020D50B0
	mov r0, r6
	add sb, sb, #2
	bl wctomb
	mov r5, r0
	add r0, r7, r5
	cmp r0, r8
	bhi _020D50B0
	mov r1, r6
	mov r2, r5
	add r0, r4, r7
	bl strncpy
	add r7, r7, r5
	cmp r7, r8
	bls _020D5064
_020D50B0:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end wcstombs