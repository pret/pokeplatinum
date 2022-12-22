	.include "macros/function.inc"
	.include "include/unk_02026150.inc"

	

	.text


	thumb_func_start sub_02026150
sub_02026150: ; 0x02026150
	push {r3, lr}
	cmp r1, #5
	bhs _0202615E
	ldr r2, _02026168 ; =0x02100880
	lsl r0, r1, #5
	add r0, r2, r0
	pop {r3, pc}
_0202615E:
	mov r1, #0xd
	bl sub_020245BC
	pop {r3, pc}
	nop
_02026168: .word 0x02100880
	thumb_func_end sub_02026150

	thumb_func_start sub_0202616C
sub_0202616C: ; 0x0202616C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	cmp r5, #5
	bhs _02026194
	ldr r2, _020261A4 ; =0x00000161
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	add r5, #0x46
	add r6, r0, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0200B1B8
	add r0, r6, #0
	bl sub_0200B190
	pop {r4, r5, r6, pc}
_02026194:
	mov r1, #0
	bl sub_0202610C
	add r1, r4, #0
	bl sub_0202604C
	pop {r4, r5, r6, pc}
	nop
_020261A4: .word 0x00000161
	thumb_func_end sub_0202616C

	thumb_func_start sub_020261A8
sub_020261A8: ; 0x020261A8
	ldr r0, _020261AC ; =0x02100860
	bx lr
	; .align 2, 0
_020261AC: .word 0x02100860
	thumb_func_end sub_020261A8

	thumb_func_start sub_020261B0
sub_020261B0: ; 0x020261B0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bne _020261BA
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_020261BA:
	ldr r5, _020261E0 ; =0x02100880
	mov r4, #0
	mov r7, #0x20
_020261C0:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	bl memcmp
	cmp r0, #0
	bne _020261D2
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_020261D2:
	add r4, r4, #1
	add r5, #0x20
	cmp r4, #5
	blo _020261C0
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020261E0: .word 0x02100880
	thumb_func_end sub_020261B0

	.data


	.global Unk_02100860
Unk_02100860: ; 0x02100860
	.incbin "incbin/arm9_data.bin", 0x1B80, 0x1BA0 - 0x1B80

	.global Unk_02100880
Unk_02100880: ; 0x02100880
	.incbin "incbin/arm9_data.bin", 0x1BA0, 0xA0

