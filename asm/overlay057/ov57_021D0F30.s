	.include "macros/function.inc"
	.include "overlay057/ov57_021D0F30.inc"

	

	.text


	thumb_func_start ov57_021D0F30
ov57_021D0F30: ; 0x021D0F30
	push {r3, lr}
	add r0, r1, #0
	bl sub_020246A8
	cmp r0, #0
	bne _021D0F42
	mov r0, #0
	bl OS_ResetSystem
_021D0F42:
	pop {r3, pc}
	thumb_func_end ov57_021D0F30

	thumb_func_start ov57_021D0F44
ov57_021D0F44: ; 0x021D0F44
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	bl sub_0202479C
	add r0, r4, #0
	bl sub_0203D1A8
	add r0, r4, #0
	bl sub_02025E38
	ldr r1, _021D0F6C ; =0x00000BB8
	bl sub_02025F78
	add r0, r4, #0
	bl sub_020507E4
	bl sub_0206A92C
	pop {r4, pc}
	; .align 2, 0
_021D0F6C: .word 0x00000BB8
	thumb_func_end ov57_021D0F44