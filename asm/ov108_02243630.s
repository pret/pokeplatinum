	.include "macros/function.inc"
	.include "include/ov108_02243630.inc"

	

	.text


	thumb_func_start ov108_02243630
ov108_02243630: ; 0x02243630
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r4, #0
_02243638:
	ldr r2, _0224365C ; =0x02243774
	lsl r6, r4, #4
	lsl r3, r4, #3
	add r0, r7, #0
	add r1, r5, r6
	add r2, r2, r3
	bl sub_0201A8D4
	add r0, r5, r6
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #2
	blo _02243638
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224365C: .word 0x02243774
	thumb_func_end ov108_02243630

	thumb_func_start ov108_02243660
ov108_02243660: ; 0x02243660
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_02243666:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #2
	blo _02243666
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov108_02243660

	.rodata


	.global Unk_ov108_02243774
Unk_ov108_02243774: ; 0x02243774
	.incbin "incbin/overlay108_rodata.bin", 0xF8, 0x10

