	.include "macros/function.inc"
	.include "include/unk_0201DBEC.inc"

	

	.text


	thumb_func_start sub_0201DBEC
sub_0201DBEC: ; 0x0201DBEC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0201DC38 ; =0x021C0700
	add r4, r1, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201DBFE
	bl sub_02022974
_0201DBFE:
	add r0, r4, #0
	mov r1, #0xc
	bl sub_02018144
	ldr r1, _0201DC38 ; =0x021C0700
	cmp r0, #0
	str r0, [r1, #0]
	bne _0201DC12
	bl sub_02022974
_0201DC12:
	add r0, r4, #0
	lsl r1, r5, #4
	bl sub_02018144
	ldr r1, _0201DC38 ; =0x021C0700
	ldr r2, [r1, #0]
	str r0, [r2, #8]
	ldr r0, [r1, #0]
	mov r2, #0
	str r5, [r0, #0]
	ldr r0, [r1, #0]
	str r2, [r0, #4]
	ldr r1, [r1, #0]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0]
	bl NNS_GfdInitVramTransferManager
	pop {r3, r4, r5, pc}
	nop
_0201DC38: .word 0x021C0700
	thumb_func_end sub_0201DBEC

	thumb_func_start sub_0201DC3C
sub_0201DC3C: ; 0x0201DC3C
	push {r3, lr}
	ldr r0, _0201DC64 ; =0x021C0700
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0201DC4A
	bl sub_02022974
_0201DC4A:
	ldr r0, _0201DC64 ; =0x021C0700
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	bl sub_020181C4
	ldr r0, _0201DC64 ; =0x021C0700
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _0201DC64 ; =0x021C0700
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0201DC64: .word 0x021C0700
	thumb_func_end sub_0201DC3C

	thumb_func_start sub_0201DC68
sub_0201DC68: ; 0x0201DC68
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0201DCA8 ; =0x021C0700
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	bne _0201DC7E
	bl sub_02022974
_0201DC7E:
	ldr r1, _0201DCA8 ; =0x021C0700
	ldr r0, [r1, #0]
	ldr r2, [r0, #4]
	add r2, r2, #1
	str r2, [r0, #4]
	ldr r0, [r1, #0]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0]
	cmp r1, r0
	blo _0201DC9A
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0201DC9A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	add r3, r7, #0
	bl NNS_GfdRegisterNewVramTransferTask
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201DCA8: .word 0x021C0700
	thumb_func_end sub_0201DC68

	thumb_func_start sub_0201DCAC
sub_0201DCAC: ; 0x0201DCAC
	push {r3, lr}
	ldr r0, _0201DCC4 ; =0x021C0700
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201DCC2
	bl NNS_GfdDoVramTransfer
	ldr r0, _0201DCC4 ; =0x021C0700
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #4]
_0201DCC2:
	pop {r3, pc}
	; .align 2, 0
_0201DCC4: .word 0x021C0700
	thumb_func_end sub_0201DCAC

	thumb_func_start sub_0201DCC8
sub_0201DCC8: ; 0x0201DCC8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x30
	mul r1, r4
	bl sub_02018144
	ldr r2, _0201DCE4 ; =sub_0201DCF8
	add r1, r4, #0
	add r5, r0, #0
	bl NNS_G2dInitCellTransferStateManager
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0201DCE4: .word sub_0201DCF8
	thumb_func_end sub_0201DCC8

	thumb_func_start sub_0201DCE8
sub_0201DCE8: ; 0x0201DCE8
	ldr r3, _0201DCEC ; =NNS_G2dUpdateCellTransferStateManager
	bx r3
	; .align 2, 0
_0201DCEC: .word NNS_G2dUpdateCellTransferStateManager
	thumb_func_end sub_0201DCE8

	thumb_func_start sub_0201DCF0
sub_0201DCF0: ; 0x0201DCF0
	ldr r3, _0201DCF4 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0201DCF4: .word sub_020181C4
	thumb_func_end sub_0201DCF0

	thumb_func_start sub_0201DCF8
sub_0201DCF8: ; 0x0201DCF8
	push {r3, lr}
	bl sub_0201DC68
	pop {r3, pc}
	thumb_func_end sub_0201DCF8

	.bss


	.global Unk_021C0700
Unk_021C0700: ; 0x021C0700
	.space 0x4

