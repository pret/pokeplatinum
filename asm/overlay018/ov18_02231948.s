	.include "macros/function.inc"
	.include "overlay018/ov18_02231948.inc"

	

	.text


	arm_func_start ov18_02231948
ov18_02231948: ; 0x02231948
	stmfd sp!, {r3, lr}
	bl ov18_02231980
	mov r0, #0x1e
	bl ov18_0222B7C8
	mov r0, #0
	bl ov18_0222AD34
	mov r0, #1
	bl ov18_0222BC8C
	mov r0, #0xb
	bl ov18_0223E994
	ldr r0, _0223197C ; =ov18_02231A00
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223197C: .word ov18_02231A00
	arm_func_end ov18_02231948

	arm_func_start ov18_02231980
ov18_02231980: ; 0x02231980
	stmfd sp!, {r3, lr}
	ldr r0, _022319F0 ; =0x0224A068
	ldr r1, _022319F4 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _022319F8 ; =0x04001008
	ldr r1, _022319FC ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022319F0: .word Unk_ov18_0224A068
_022319F4: .word GX_LoadBG2Scr
_022319F8: .word 0x04001008
_022319FC: .word 0x0400000A
	arm_func_end ov18_02231980

	arm_func_start ov18_02231A00
ov18_02231A00: ; 0x02231A00
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _02231A30 ; =ov18_02231A34
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231A30: .word ov18_02231A34
	arm_func_end ov18_02231A00

	arm_func_start ov18_02231A34
ov18_02231A34: ; 0x02231A34
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02231A5C ; =ov18_02231B38
	bl ov18_0222FA60
	ldr r0, _02231A60 ; =ov18_02231A64
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231A5C: .word ov18_02231B38
_02231A60: .word ov18_02231A64
	arm_func_end ov18_02231A34

	arm_func_start ov18_02231A64
ov18_02231A64: ; 0x02231A64
	stmfd sp!, {r3, lr}
	bl ov18_02231A74
	bl ov18_02231A78
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02231A64

	arm_func_start ov18_02231A74
ov18_02231A74: ; 0x02231A74
	bx lr
	arm_func_end ov18_02231A74

	arm_func_start ov18_02231A78
ov18_02231A78: ; 0x02231A78
	bx lr
	arm_func_end ov18_02231A78

	arm_func_start ov18_02231A7C
ov18_02231A7C: ; 0x02231A7C
	stmfd sp!, {r3, lr}
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02231AA0 ; =ov18_02231AA4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231AA0: .word ov18_02231AA4
	arm_func_end ov18_02231A7C

	arm_func_start ov18_02231AA4
ov18_02231AA4: ; 0x02231AA4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222FA44
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0222BD44
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	mov r0, #0
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02231B28 ; =0x022532F4
	ldrb r0, [r0]
	cmp r0, #0
	bne _02231B08
	ldr r0, _02231B2C ; =ov18_02232530
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02231B08:
	cmp r0, #2
	bne _02231B1C
	ldr r0, _02231B30 ; =ov18_02232348
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02231B1C:
	ldr r0, _02231B34 ; =ov18_02231BC0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231B28: .word Unk_ov18_022532F4
_02231B2C: .word ov18_02232530
_02231B30: .word ov18_02232348
_02231B34: .word ov18_02231BC0
	arm_func_end ov18_02231AA4

	arm_func_start ov18_02231B38
ov18_02231B38: ; 0x02231B38
	stmfd sp!, {r3, lr}
	cmp r0, #2
	bne _02231B64
	bl ov18_0223E61C
	ldr r0, _02231BB8 ; =0x022532F4
	mov r1, #1
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x10
	bl ov18_0223E994
	b _02231BA0
_02231B64:
	cmp r0, #3
	bne _02231B88
	ldr r0, _02231BB8 ; =0x022532F4
	mov r1, #2
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
	b _02231BA0
_02231B88:
	ldr r0, _02231BB8 ; =0x022532F4
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
_02231BA0:
	mov r0, #0
	bl ov18_0222FA60
	bl ov18_0222F9E8
	ldr r0, _02231BBC ; =ov18_02231A7C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02231BB8: .word Unk_ov18_022532F4
_02231BBC: .word ov18_02231A7C
	arm_func_end ov18_02231B38

	.data


	.global Unk_ov18_0224A068
Unk_ov18_0224A068: ; 0x0224A068
	.incbin "incbin/overlay18_data.bin", 0x908, 0x14



	.bss


	.global Unk_ov18_022532F4
Unk_ov18_022532F4: ; 0x022532F4
	.space 0x4

