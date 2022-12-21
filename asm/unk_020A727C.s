	.include "macros/function.inc"
	.include "include/unk_020A727C.inc"

	

	.text


	arm_func_start sub_020A727C
sub_020A727C: ; 0x020A727C
	ldrh r2, [r0, #0xc]
	ldrh ip, [r0, #0xe]
	mov r3, #0
	add r0, r0, r2
	cmp ip, #0
	bls _020A72BC
_020A7294:
	ldr r2, [r0, #0]
	cmp r2, r1
	bxeq lr
	add r2, r3, #1
	mov r2, r2, lsl #0x10
	ldr r3, [r0, #4]
	cmp ip, r2, lsr #16
	add r0, r0, r3
	mov r3, r2, lsr #0x10
	bhi _020A7294
_020A72BC:
	mov r0, #0
	bx lr
	arm_func_end sub_020A727C

	arm_func_start sub_020A72C4
sub_020A72C4: ; 0x020A72C4
	ldr r1, [r0, #4]
	mov ip, #0
	add r1, r1, r0
	str r1, [r0, #4]
	ldrh r1, [r0]
	cmp r1, #0
	bxls lr
_020A72E0:
	ldr r3, [r0, #4]
	add r1, ip, #1
	ldr r2, [r3, ip, lsl #2]
	mov r1, r1, lsl #0x10
	add r2, r0, r2
	str r2, [r3, ip, lsl #2]
	ldrh r2, [r0]
	mov ip, r1, lsr #0x10
	cmp r2, r1, lsr #16
	bhi _020A72E0
	bx lr
	arm_func_end sub_020A72C4