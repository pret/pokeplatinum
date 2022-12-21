	.include "macros/function.inc"
	.include "include/unk_02071CFC.inc"

	

	.text


	thumb_func_start sub_02071CFC
sub_02071CFC: ; 0x02071CFC
	push {r4, lr}
	add r4, r2, #0
	bl sub_0200B1B8
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	pop {r4, pc}
	thumb_func_end sub_02071CFC

	thumb_func_start sub_02071D10
sub_02071D10: ; 0x02071D10
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r3, r1, #0
	ldr r2, _02071D3C ; =0x000001B1
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203A138
	add r1, r0, #0
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02071CFC
	add r0, r4, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02071D3C: .word 0x000001B1
	thumb_func_end sub_02071D10