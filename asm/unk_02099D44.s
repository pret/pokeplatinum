	.include "macros/function.inc"
	.include "include/unk_02099D44.inc"

	

	.text


	thumb_func_start sub_02099D44
sub_02099D44: ; 0x02099D44
	mov r1, #0
	ldr r0, _02099D50 ; =0x02100D9C
	mvn r1, r1
	str r1, [r0, #0]
	bx lr
	nop
_02099D50: .word 0x02100D9C
	thumb_func_end sub_02099D44

	thumb_func_start sub_02099D54
sub_02099D54: ; 0x02099D54
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	lsl r0, r0, #0xc
	cmp r2, r0
	bhs _02099D6E
	add r0, r1, #0
	ldr r1, _02099D74 ; =0x021C0A34
	bl MIi_CpuCopy32
	ldr r0, _02099D78 ; =0x02100D9C
	str r4, [r0, #0]
	pop {r4, pc}
_02099D6E:
	bl GF_AssertFail
	pop {r4, pc}
	; .align 2, 0
_02099D74: .word 0x021C0A34
_02099D78: .word 0x02100D9C
	thumb_func_end sub_02099D54

	thumb_func_start sub_02099D7C
sub_02099D7C: ; 0x02099D7C
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0xc
	cmp r2, r3
	bhs _02099D98
	ldr r3, _02099DA0 ; =0x02100D9C
	ldr r3, [r3, #0]
	cmp r0, r3
	bne _02099D9C
	ldr r0, _02099DA4 ; =0x021C0A34
	bl MIi_CpuCopy32
	mov r0, #1
	pop {r3, pc}
_02099D98:
	bl GF_AssertFail
_02099D9C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02099DA0: .word 0x02100D9C
_02099DA4: .word 0x021C0A34
	thumb_func_end sub_02099D7C

	thumb_func_start sub_02099DA8
sub_02099DA8: ; 0x02099DA8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	lsl r0, r0, #0xc
	cmp r2, r0
	bhs _02099DC2
	add r0, r1, #0
	ldr r1, _02099DC8 ; =0x021C0A34
	bl MIi_CpuCopyFast
	ldr r0, _02099DCC ; =0x02100D9C
	str r4, [r0, #0]
	pop {r4, pc}
_02099DC2:
	bl GF_AssertFail
	pop {r4, pc}
	; .align 2, 0
_02099DC8: .word 0x021C0A34
_02099DCC: .word 0x02100D9C
	thumb_func_end sub_02099DA8

	thumb_func_start sub_02099DD0
sub_02099DD0: ; 0x02099DD0
	push {r3, lr}
	mov r3, #3
	lsl r3, r3, #0xc
	cmp r2, r3
	bhs _02099DEC
	ldr r3, _02099DF4 ; =0x02100D9C
	ldr r3, [r3, #0]
	cmp r0, r3
	bne _02099DF0
	ldr r0, _02099DF8 ; =0x021C0A34
	bl MIi_CpuCopyFast
	mov r0, #1
	pop {r3, pc}
_02099DEC:
	bl GF_AssertFail
_02099DF0:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02099DF4: .word 0x02100D9C
_02099DF8: .word 0x021C0A34
	thumb_func_end sub_02099DD0

	.data


	.global Unk_02100D9C
Unk_02100D9C: ; 0x02100D9C
	.incbin "incbin/arm9_data.bin", 0x20BC, 0x4



	.bss


	.global Unk_021C0A34
Unk_021C0A34: ; 0x021C0A34
	.space 0x3000

