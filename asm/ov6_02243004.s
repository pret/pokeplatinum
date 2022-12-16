	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov6_02243004
ov6_02243004: ; 0x02243004
	push {r3, lr}
	cmp r1, #9
	bhi _022430B8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02243016: ; jump table
	.short _0224302A - _02243016 - 2 ; case 0
	.short _02243034 - _02243016 - 2 ; case 1
	.short _02243050 - _02243016 - 2 ; case 2
	.short _0224305A - _02243016 - 2 ; case 3
	.short _02243064 - _02243016 - 2 ; case 4
	.short _0224306E - _02243016 - 2 ; case 5
	.short _02243078 - _02243016 - 2 ; case 6
	.short _02243094 - _02243016 - 2 ; case 7
	.short _022430A0 - _02243016 - 2 ; case 8
	.short _022430AC - _02243016 - 2 ; case 9
_0224302A:
	bl ov6_0223E6EC
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_02243034:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223E708
	cmp r0, #0
	beq _0224304C
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223E700
	mov r0, #1
	pop {r3, pc}
_0224304C:
	mov r0, #0
	pop {r3, pc}
_02243050:
	bl ov6_0223E814
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_0224305A:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223E828
	b _022430BC
_02243064:
	bl ov6_0223FCCC
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_0224306E:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223FCE8
	b _022430BC
_02243078:
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223FCF4
	cmp r0, #6
	bne _02243090
	ldr r0, _022430C0 ; =0x02249940
	ldr r0, [r0, #0]
	bl ov6_0223FCE0
	mov r0, #1
	pop {r3, pc}
_02243090:
	mov r0, #0
	pop {r3, pc}
_02243094:
	mov r1, #0
	bl ov6_0223EA74
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_022430A0:
	mov r1, #1
	bl ov6_0223EA74
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_022430AC:
	mov r1, #2
	bl ov6_0223EA74
	ldr r1, _022430C0 ; =0x02249940
	str r0, [r1, #0]
	b _022430BC
_022430B8:
	bl sub_02022974
_022430BC:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022430C0: .word 0x02249940
	thumb_func_end ov6_02243004
	.bss


	.global Unk_ov6_02249940
Unk_ov6_02249940: ; 0x02249940
	.space 0x4

