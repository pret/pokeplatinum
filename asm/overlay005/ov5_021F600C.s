	.include "macros/function.inc"
	.include "overlay005/ov5_021F600C.inc"

	

	.text


	thumb_func_start ov5_021F600C
ov5_021F600C: ; 0x021F600C
	push {r3, r4, r5, lr}
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl ov5_021DF53C
	add r4, r0, #0
	str r5, [r4, #0]
	bl ov5_021F6038
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F600C

	thumb_func_start ov5_021F6028
ov5_021F6028: ; 0x021F6028
	push {r4, lr}
	add r4, r0, #0
	bl ov5_021F6074
	add r0, r4, #0
	bl ov5_021DF554
	pop {r4, pc}
	thumb_func_end ov5_021F6028

	thumb_func_start ov5_021F6038
ov5_021F6038: ; 0x021F6038
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	mov r2, #0x57
	bl ov5_021DF9E0
	ldr r0, [r4, #0]
	mov r1, #3
	mov r2, #6
	mov r3, #1
	bl ov5_021DFA3C
	mov r0, #3
	str r0, [sp]
	mov r3, #0
	mov r1, #4
	ldr r0, _021F6070 ; =0x02200BEC
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl ov5_021DF864
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021F6070: .word 0x02200BEC
	thumb_func_end ov5_021F6038

	thumb_func_start ov5_021F6074
ov5_021F6074: ; 0x021F6074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov5_021DFA08
	ldr r0, [r4, #0]
	mov r1, #3
	bl ov5_021DFA7C
	ldr r0, [r4, #0]
	mov r1, #4
	bl ov5_021DF9D4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021F6074

	thumb_func_start ov5_021F6094
ov5_021F6094: ; 0x021F6094
	push {r4, r5, lr}
	sub sp, #0x24
	add r5, r0, #0
	bl ov5_021DF578
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062C00
	str r0, [sp, #0x14]
	add r0, r4, #0
	mov r1, #0x16
	str r4, [sp, #0x18]
	bl ov5_021DF55C
	str r0, [sp, #0x1c]
	add r1, sp, #8
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r5, #0
	mov r1, #2
	str r5, [sp, #0x20]
	bl sub_02062758
	add r1, sp, #0x14
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, _021F60E0 ; =0x02200BD8
	add r0, r4, #0
	add r2, sp, #8
	mov r3, #0
	bl ov5_021DF72C
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021F60E0: .word 0x02200BD8
	thumb_func_end ov5_021F6094

	thumb_func_start ov5_021F60E4
ov5_021F60E4: ; 0x021F60E4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r5, r0, #0
	str r1, [r2, #8]
	bl sub_020715BC
	add r2, r4, #0
	add r3, r0, #0
	add r2, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x1c]
	bl sub_02062910
	str r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	bl sub_02062918
	str r0, [r4, #8]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020715D4
	ldr r0, [r4, #0x14]
	mov r1, #4
	add r2, sp, #0
	bl ov5_021DF84C
	str r0, [r4, #0x20]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021F60E4

	thumb_func_start ov5_021F6134
ov5_021F6134: ; 0x021F6134
	ldr r3, _021F613C ; =sub_020211FC
	ldr r0, [r1, #0x20]
	bx r3
	nop
_021F613C: .word sub_020211FC
	thumb_func_end ov5_021F6134

	thumb_func_start ov5_021F6140
ov5_021F6140: ; 0x021F6140
	push {r4, lr}
	add r2, r1, #0
	add r4, r0, #0
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #4]
	ldr r2, [r2, #8]
	bl sub_02062764
	cmp r0, #0
	bne _021F615A
	add r0, r4, #0
	bl ov5_021DF74C
_021F615A:
	pop {r4, pc}
	thumb_func_end ov5_021F6140

	thumb_func_start ov5_021F615C
ov5_021F615C: ; 0x021F615C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	ldr r4, [r5, #0x1c]
	ldr r1, [r5, #4]
	add r6, r0, #0
	ldr r2, [r5, #8]
	add r0, r4, #0
	bl sub_02062764
	cmp r0, #0
	bne _021F617E
	add r0, r6, #0
	bl ov5_021DF74C
	add sp, #0x18
	pop {r4, r5, r6, pc}
_021F617E:
	add r0, r4, #0
	add r1, sp, #0xc
	bl sub_02063050
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063078
	ldr r1, [sp, #0xc]
	ldr r0, [sp]
	add r0, r1, r0
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r1, r0
	mov r0, #3
	lsl r0, r0, #0xe
	str r1, [sp, #0x14]
	add r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x20]
	add r1, sp, #0xc
	bl sub_020212A8
	add sp, #0x18
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021F615C

	.rodata


	.global Unk_ov5_02200BD8
Unk_ov5_02200BD8: ; 0x02200BD8
	.incbin "incbin/overlay5_rodata.bin", 0x82C4, 0x82D8 - 0x82C4

	.global Unk_ov5_02200BEC
Unk_ov5_02200BEC: ; 0x02200BEC
	.incbin "incbin/overlay5_rodata.bin", 0x82D8, 0x18

