	.include "macros/function.inc"
	.include "overlay018/ov18_0223E8D8.inc"

	

	.text


	arm_func_start ov18_0223E8D8
ov18_0223E8D8: ; 0x0223E8D8
	stmfd sp!, {r3, lr}
	mov r0, #0xa0
	mov r1, #4
	bl ov18_02245068
	ldr r2, _0223E95C ; =0x02253388
	add r1, sp, #0
	str r0, [r2, #0]
	ldr r0, _0223E960 ; =0x0224A5B8
	mov r2, #0x20
	bl ov18_02243738
	ldr r1, _0223E95C ; =0x02253388
	ldr r1, [r1, #0]
	str r0, [r1, #0x98]
	bl NNS_SndInit
	ldr r0, _0223E95C ; =0x02253388
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x98]
	bl NNS_SndArcInitOnMemory
	mov r0, #0
	bl NNS_SndArcPlayerSetup
	ldr r0, _0223E95C ; =0x02253388
	ldr r0, [r0, #0]
	add r0, r0, #0x94
	bl NNS_SndHandleInit
	mov r0, #0
	ldr r1, _0223E964 ; =ov18_0223EA1C
	mov r2, r0
	mov r3, #0xc8
	bl ov18_02246304
	ldr r1, _0223E95C ; =0x02253388
	ldr r1, [r1, #0]
	str r0, [r1, #0x9c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223E95C: .word Unk_ov18_02253388
_0223E960: .word Unk_ov18_0224A5B8
_0223E964: .word ov18_0223EA1C
	arm_func_end ov18_0223E8D8

	arm_func_start ov18_0223E968
ov18_0223E968: ; 0x0223E968
	stmfd sp!, {r3, lr}
	ldr r1, _0223E98C ; =0x02253388
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x9c]
	bl ov18_022463AC
	ldr r0, _0223E990 ; =0x02253388
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223E98C: .word Unk_ov18_02253388
_0223E990: .word Unk_ov18_02253388
	arm_func_end ov18_0223E968

	arm_func_start ov18_0223E994
ov18_0223E994: ; 0x0223E994
	ldr r1, _0223E9B0 ; =0x02253388
	mov r2, r0
	ldr r0, [r1, #0]
	ldr ip, _0223E9B4 ; =NNS_SndArcPlayerStartSeqArc
	mov r1, #0
	add r0, r0, #0x94
	bx ip
	; .align 2, 0
_0223E9B0: .word Unk_ov18_02253388
_0223E9B4: .word NNS_SndArcPlayerStartSeqArc
	arm_func_end ov18_0223E994

	arm_func_start ov18_0223E9B8
ov18_0223E9B8: ; 0x0223E9B8
	ldr r2, _0223E9D0 ; =0x02253388
	mov r1, r0
	ldr r0, [r2, #0]
	ldr ip, _0223E9D4 ; =NNS_SndPlayerSetVolume
	add r0, r0, #0x94
	bx ip
	; .align 2, 0
_0223E9D0: .word Unk_ov18_02253388
_0223E9D4: .word NNS_SndPlayerSetVolume
	arm_func_end ov18_0223E9B8

	arm_func_start ov18_0223E9D8
ov18_0223E9D8: ; 0x0223E9D8
	ldr r2, _0223E9F4 ; =0x02253388
	ldr ip, _0223E9F8 ; =NNS_SndPlayerSetTrackPitch
	ldr r3, [r2, #0]
	mov r2, r1
	mov r1, r0
	add r0, r3, #0x94
	bx ip
	; .align 2, 0
_0223E9F4: .word Unk_ov18_02253388
_0223E9F8: .word NNS_SndPlayerSetTrackPitch
	arm_func_end ov18_0223E9D8

	arm_func_start ov18_0223E9FC
ov18_0223E9FC: ; 0x0223E9FC
	ldr r0, _0223EA14 ; =0x02253388
	ldr ip, _0223EA18 ; =NNS_SndPlayerStopSeq
	ldr r0, [r0, #0]
	mov r1, #0
	add r0, r0, #0x94
	bx ip
	; .align 2, 0
_0223EA14: .word Unk_ov18_02253388
_0223EA18: .word NNS_SndPlayerStopSeq
	arm_func_end ov18_0223E9FC

	arm_func_start ov18_0223EA1C
ov18_0223EA1C: ; 0x0223EA1C
	ldr ip, _0223EA24 ; =NNS_SndMain
	bx ip
	; .align 2, 0
_0223EA24: .word NNS_SndMain
	arm_func_end ov18_0223EA1C

	.data


	.global Unk_ov18_0224A5B8
Unk_ov18_0224A5B8: ; 0x0224A5B8
	.incbin "incbin/overlay18_data.bin", 0xE58, 0x18



	.bss


	.global Unk_ov18_02253388
Unk_ov18_02253388: ; 0x02253388
	.space 0x4

