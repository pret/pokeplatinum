	.include "macros/function.inc"
	.include "include/unk_0204E378.inc"

	

	.text


	thumb_func_start sub_0204E378
sub_0204E378: ; 0x0204E378
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F150
	add r4, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r1, r0, #0
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0203F118
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0203E838
	add r5, #0x80
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_0203F118
	ldr r1, _0204E3C4 ; =0x020EC018
	lsl r2, r4, #2
	ldrh r1, [r1, r2]
	strh r1, [r6]
	ldr r1, _0204E3C8 ; =0x020EC01A
	ldrh r1, [r1, r2]
	strh r1, [r0]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0204E3C4: .word 0x020EC018
_0204E3C8: .word 0x020EC01A
	thumb_func_end sub_0204E378

	.rodata


	.global Unk_020EC018
Unk_020EC018: ; 0x020EC018
	.incbin "incbin/arm9_rodata.bin", 0x73D8, 0x4C

