	.include "macros/function.inc"
	.include "include/ov97_02233814.inc"

	

	.text


	thumb_func_start ov97_02233814
ov97_02233814: ; 0x02233814
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ov97_02233460
	lsl r0, r0, #0x10
	lsl r3, r5, #0x10
	lsr r0, r0, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _02233850 ; =ov97_022323CC
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl WM_SetMPDataToPortEx
	cmp r0, #2
	beq _0223384A
	bl ov97_022337FC
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223384A:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02233850: .word ov97_022323CC
	thumb_func_end ov97_02233814

	thumb_func_start ov97_02233854
ov97_02233854: ; 0x02233854
	push {r3, lr}
	ldr r0, _0223386C ; =ov97_022323E4
	bl WM_Enable
	cmp r0, #2
	beq _02233868
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_02233868:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0223386C: .word ov97_022323E4
	thumb_func_end ov97_02233854

	thumb_func_start ov97_02233870
ov97_02233870: ; 0x02233870
	push {r3, lr}
	ldr r0, _0223388C ; =ov97_02232424
	bl WM_Disable
	cmp r0, #2
	beq _02233888
	bl ov97_022337FC
	bl OS_Terminate
	mov r0, #0
	pop {r3, pc}
_02233888:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0223388C: .word ov97_02232424
	thumb_func_end ov97_02233870

	thumb_func_start ov97_02233890
ov97_02233890: ; 0x02233890
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x1e
	str r0, [sp]
	lsl r3, r3, #0x10
	ldr r0, _022338B8 ; =ov97_0223245C
	mov r1, #3
	mov r2, #0x11
	lsr r3, r3, #0x10
	bl WM_MeasureChannel
	cmp r0, #2
	beq _022338B2
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_022338B2:
	mov r0, #1
	pop {r3, pc}
	nop
_022338B8: .word ov97_0223245C
	thumb_func_end ov97_02233890

	thumb_func_start ov97_022338BC
ov97_022338BC: ; 0x022338BC
	push {r3, r4, r5, lr}
	bl ov97_02233408
	add r5, r0, #0
	bl ov97_02233590
	add r4, r0, #0
	bl ov97_02233510
	add r0, #0x64
	ldrb r0, [r0]
	strh r0, [r5, #0x32]
	str r4, [r5, #0]
	bl ov97_0223358C
	strh r0, [r5, #4]
	ldr r0, _022338F4 ; =ov97_022324C4
	add r1, r5, #0
	bl WM_SetParentParameter
	cmp r0, #2
	beq _022338F0
	bl ov97_022337FC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022338F0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022338F4: .word ov97_022324C4
	thumb_func_end ov97_022338BC

	thumb_func_start ov97_022338F8
ov97_022338F8: ; 0x022338F8
	push {r3, lr}
	ldr r0, _02233910 ; =ov97_022324EC
	bl WM_StartParent
	cmp r0, #2
	beq _0223390C
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_0223390C:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233910: .word ov97_022324EC
	thumb_func_end ov97_022338F8

	thumb_func_start ov97_02233914
ov97_02233914: ; 0x02233914
	push {r3, lr}
	bl ov97_02233478
	add r1, r0, #0
	ldr r0, _02233934 ; =ov97_022327B8
	bl WM_StartScan
	cmp r0, #2
	beq _0223392E
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_0223392E:
	mov r0, #1
	pop {r3, pc}
	nop
_02233934: .word ov97_022327B8
	thumb_func_end ov97_02233914

	thumb_func_start ov97_02233938
ov97_02233938: ; 0x02233938
	push {r3, r4, r5, lr}
	bl ov97_02233478
	add r4, r0, #0
	bl ov97_02233508
	ldr r2, _022339C8 ; =0x000001C3
	mov r3, #0x38
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	add r1, #0x34
	ldrb r1, [r1]
	strb r1, [r4, #8]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	add r1, #0x35
	ldrb r1, [r1]
	strb r1, [r4, #9]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	ldrb r1, [r0, r5]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #1]
	strb r1, [r4, #0xb]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #2]
	strb r1, [r4, #0xc]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r1, #0
	mul r2, r3
	add r0, r0, r2
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xd]
	bl ov97_02233478
	add r1, r0, #0
	ldr r0, _022339CC ; =ov97_022328D4
	bl WM_StartScan
	cmp r0, #2
	beq _022339C2
	bl ov97_022337FC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022339C2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022339C8: .word 0x000001C3
_022339CC: .word ov97_022328D4
	thumb_func_end ov97_02233938

	thumb_func_start ov97_022339D0
ov97_022339D0: ; 0x022339D0
	push {r3, lr}
	ldr r0, _022339E8 ; =ov97_02232944
	bl WM_EndScan
	cmp r0, #2
	beq _022339E4
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_022339E4:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_022339E8: .word ov97_02232944
	thumb_func_end ov97_022339D0

	thumb_func_start ov97_022339EC
ov97_022339EC: ; 0x022339EC
	push {r3, r4, lr}
	sub sp, #4
	bl ov97_0223359C
	add r4, r0, #0
	bl ov97_022334B4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233A20 ; =ov97_02232998
	add r2, r4, #0
	mov r3, #1
	bl WM_StartConnectEx
	cmp r0, #2
	beq _02233A18
	bl ov97_022337FC
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02233A18:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_02233A20: .word ov97_02232998
	thumb_func_end ov97_022339EC

	thumb_func_start ov97_02233A24
ov97_02233A24: ; 0x02233A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02233A94 ; =ov97_02232C94
	mov r0, #4
	mov r2, #0
	bl WM_SetPortCallback
	cmp r0, #0
	beq _02233A40
	bl ov97_022337FC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233A40:
	bl ov97_02233408
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _02233A4E
	mov r5, #1
	b _02233A50
_02233A4E:
	mov r5, #0
_02233A50:
	bl ov97_022334A8
	add r6, r0, #0
	bl ov97_02233490
	add r4, r0, #0
	bl ov97_0223349C
	add r7, r0, #0
	bl ov97_02233484
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, _02233A98 ; =ov97_02232A7C
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl WM_StartMP
	cmp r0, #2
	beq _02233A8E
	bl ov97_022337FC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233A8E:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233A94: .word ov97_02232C94
_02233A98: .word ov97_02232A7C
	thumb_func_end ov97_02233A24

	thumb_func_start ov97_02233A9C
ov97_02233A9C: ; 0x02233A9C
	push {r3, lr}
	ldr r0, _02233AB4 ; =ov97_02232D18
	bl WM_PowerOn
	cmp r0, #2
	beq _02233AB0
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_02233AB0:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233AB4: .word ov97_02232D18
	thumb_func_end ov97_02233A9C

	thumb_func_start ov97_02233AB8
ov97_02233AB8: ; 0x02233AB8
	push {r3, lr}
	ldr r0, _02233AD4 ; =ov97_02232D3C
	bl WM_PowerOff
	cmp r0, #2
	beq _02233AD0
	bl ov97_022337FC
	bl OS_Terminate
	mov r0, #0
	pop {r3, pc}
_02233AD0:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233AD4: .word ov97_02232D3C
	thumb_func_end ov97_02233AB8

	thumb_func_start ov97_02233AD8
ov97_02233AD8: ; 0x02233AD8
	push {r3, lr}
	ldr r0, _02233AF4 ; =ov97_02232D60
	bl WM_Reset
	cmp r0, #2
	beq _02233AF0
	bl ov97_022337FC
	bl OS_Terminate
	mov r0, #0
	pop {r3, pc}
_02233AF0:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233AF4: .word ov97_02232D60
	thumb_func_end ov97_02233AD8

	thumb_func_start ov97_02233AF8
ov97_02233AF8: ; 0x02233AF8
	push {r3, lr}
	ldr r0, _02233B14 ; =ov97_02232DA4
	bl WM_End
	cmp r0, #2
	beq _02233B10
	bl ov97_022337FC
	bl OS_Terminate
	mov r0, #0
	pop {r3, pc}
_02233B10:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233B14: .word ov97_02232DA4
	thumb_func_end ov97_02233AF8