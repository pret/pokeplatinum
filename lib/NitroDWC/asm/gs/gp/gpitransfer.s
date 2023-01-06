	.include "macros/function.inc"
	.include "include/gpitransfer.inc"

	

	.text


	arm_func_start ov4_021F55F4
ov4_021F55F4: ; 0x021F55F4
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x20
	ldr ip, [sp, #0x30]
	mov r5, r2
	mov r6, r0
	cmp ip, #0
	ldreq r0, _021F5690 ; =0x02219144
	mov lr, r1
	mov r4, r3
	streq r0, [sp, #0x30]
	mov r0, r6
	mov r1, r5
	mov r3, lr
	mov r2, #0xc9
	bl ov4_021F2E04
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021F5694 ; =0x02219148
	add r0, sp, #0
	mov r3, r4
	mov r2, #1
	bl sprintf
	add r2, sp, #0
	mov r0, r6
	mov r1, r5
	bl ov4_021ED8FC
	cmp r0, #0
	addne sp, sp, #0x20
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r2, [sp, #0x30]
	mov r0, r6
	mov r1, r5
	mvn r3, #0
	bl ov4_021F2E80
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #0x20
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F5690: .word Unk_ov4_02219144
_021F5694: .word Unk_ov4_02219148
	arm_func_end ov4_021F55F4

	arm_func_start ov4_021F5698
ov4_021F5698: ; 0x021F5698
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x50
	mov r4, r1
	mov r5, r0
	mov r0, r3
	ldr r1, _021F5714 ; =0x02219160
	add r2, sp, #0x10
	mov r3, #0x40
	bl ov4_021F5978
	cmp r0, #0
	addeq sp, sp, #0x50
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _021F5718 ; =0x02219168
	add ip, sp, #0xc
	add r0, sp, #0x10
	add r2, sp, #4
	add r3, sp, #8
	str ip, [sp]
	bl sscanf
	cmp r0, #3
	addne sp, sp, #0x50
	ldmneia sp!, {r3, r4, r5, pc}
	mov ip, #0
	add r1, sp, #4
	mov r0, r5
	mov r2, r4
	mov r3, #2
	str ip, [sp]
	bl ov4_021F55F4
	add sp, sp, #0x50
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F5714: .word Unk_ov4_02219160
_021F5718: .word Unk_ov4_02219168
	arm_func_end ov4_021F5698

	.data


	.global Unk_ov4_02219144
Unk_ov4_02219144: ; 0x02219144
	.incbin "incbin/overlay4_data.bin", 0x32C4, 0x32C8 - 0x32C4

	.global Unk_ov4_02219148
Unk_ov4_02219148: ; 0x02219148
	.incbin "incbin/overlay4_data.bin", 0x32C8, 0x32E0 - 0x32C8

	.global Unk_ov4_02219160
Unk_ov4_02219160: ; 0x02219160
	.incbin "incbin/overlay4_data.bin", 0x32E0, 0x32E8 - 0x32E0

	.global Unk_ov4_02219168
Unk_ov4_02219168: ; 0x02219168
	.incbin "incbin/overlay4_data.bin", 0x32E8, 0x9

