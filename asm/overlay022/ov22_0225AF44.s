	.include "macros/function.inc"
	.include "overlay022/ov22_0225AF44.inc"

	

	.text


	thumb_func_start ov22_0225AF44
ov22_0225AF44: ; 0x0225AF44
	push {r3, lr}
	sub sp, #0x10
	add r3, r1, #0
	stmia r0!, {r1}
	add r3, #0x48
	str r3, [sp]
	ldr r1, [r1, #0x74]
	lsl r1, r1, #2
	add r1, #0x89
	str r1, [sp, #4]
	mov r1, #0x10
	str r1, [sp, #8]
	add r1, sp, #0
	str r2, [sp, #0xc]
	bl ov22_02259820
	add sp, #0x10
	pop {r3, pc}
	thumb_func_end ov22_0225AF44

	thumb_func_start ov22_0225AF68
ov22_0225AF68: ; 0x0225AF68
	ldr r3, _0225AF70 ; =ov22_02259838
	add r0, r0, #4
	mov r1, #1
	bx r3
	; .align 2, 0
_0225AF70: .word ov22_02259838
	thumb_func_end ov22_0225AF68

	thumb_func_start ov22_0225AF74
ov22_0225AF74: ; 0x0225AF74
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	bl ov22_022598A0
	mov r1, #0x1c
	mov r0, #0
_0225AF82:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0225AF82
	pop {r4, pc}
	thumb_func_end ov22_0225AF74