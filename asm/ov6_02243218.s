	.include "macros/function.inc"
	.include "include/ov6_02243218.inc"

	

	.text


	thumb_func_start ov6_02243218
ov6_02243218: ; 0x02243218
	push {r3, lr}
	mov r1, #0x16
	bl sub_020E2178
	ldr r0, _02243228 ; =0x02249090
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
	; .align 2, 0
_02243228: .word 0x02249090
	thumb_func_end ov6_02243218

	thumb_func_start ov6_0224322C
ov6_0224322C: ; 0x0224322C
	push {r4, r5, r6, lr}
	sub sp, #0x1a8
	add r5, r1, #0
	mov r1, #0x16
	add r4, r2, #0
	bl sub_020E2178
	ldr r0, _02243254 ; =0x02249090
	lsl r1, r1, #2
	ldr r6, [r0, r1]
	add r0, sp, #0
	add r1, r6, #0
	bl sub_0203A614
	ldr r0, [sp, #0x64]
	strh r0, [r4]
	strh r6, [r5]
	add sp, #0x1a8
	pop {r4, r5, r6, pc}
	nop
_02243254: .word 0x02249090
	thumb_func_end ov6_0224322C

	.rodata


	.global Unk_ov6_02249090
Unk_ov6_02249090: ; 0x02249090
	.incbin "incbin/overlay6_rodata.bin", 0x27C, 0x58

