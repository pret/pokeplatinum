	.include "macros/function.inc"
	.include "include/apc.inc"

	

	.extern WCM_Bssid_Any
	.extern WCM_Essid_Any
	.text


	thumb_func_start ov18_02226EF0
ov18_02226EF0: ; 0x02226EF0
	push {r3, lr}
	cmp r0, #0
	bne _02226EF8
	b _022271A0
_02226EF8:
	mov r1, #0
	ldrsh r2, [r0, r1]
	cmp r2, #7
	bls _02226F02
	b _02227192
_02226F02:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02226F0E: ; jump table
	.short _02227192 - _02226F0E - 2 ; case 0
	.short _02226F1E - _02226F0E - 2 ; case 1
	.short _02227146 - _02226F0E - 2 ; case 2
	.short _02226F9E - _02226F0E - 2 ; case 3
	.short _02227002 - _02226F0E - 2 ; case 4
	.short _02226FD0 - _02226F0E - 2 ; case 5
	.short _022270A2 - _02226F0E - 2 ; case 6
	.short _0222717E - _02226F0E - 2 ; case 7
_02226F1E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226F8A
	ldr r2, _022271A4 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02226F3E
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _02226F96
	mov r0, #6
	blx r2
	pop {r3, pc}
_02226F3E:
	cmp r0, #6
	bne _02226F64
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	beq _02226F96
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _02226F96
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02226F64:
	cmp r0, #8
	bne _02226F96
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	beq _02226F96
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _02226F96
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02226F8A:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r3, #1
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	bne _02226F98
_02226F96:
	b _022271A0
_02226F98:
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_02226F9E:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226FBE
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #6
	bne _0222709A
	mov r2, #5
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #8
	blx r2
	pop {r3, pc}
_02226FBE:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #9
	blx r2
	pop {r3, pc}
_02226FD0:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02226FF0
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #8
	bne _0222709A
	mov r2, #7
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #0xc
	blx r2
	pop {r3, pc}
_02226FF0:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #0xd
	blx r2
	pop {r3, pc}
_02227002:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222708E
	ldr r2, _022271A4 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _02227022
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #0xa
	blx r2
	pop {r3, pc}
_02227022:
	cmp r0, #6
	bne _02227048
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227048:
	cmp r0, #2
	bne _02227068
	bl WCM_CleanupAsync
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227068:
	cmp r0, #8
	bne _0222709A
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	beq _0222709A
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _0222709A
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222708E:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	bne _0222709C
_0222709A:
	b _022271A0
_0222709C:
	mov r0, #0xb
	blx r2
	pop {r3, pc}
_022270A2:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _02227134
	ldr r2, _022271A4 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #4
	bne _022270C2
	mov r0, #3
	str r0, [r2, #0x18]
	ldr r2, [r2, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #0xe
	blx r2
	pop {r3, pc}
_022270C2:
	cmp r0, #6
	bne _022270E8
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_022270E8:
	cmp r0, #2
	bne _02227108
	bl WCM_CleanupAsync
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_02227108:
	cmp r0, #8
	bne _0222712E
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	beq _022271A0
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #3
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #2
	mov r1, #0
	blx r2
	pop {r3, pc}
_0222712E:
	mov r0, #3
	str r0, [r2, #0x18]
	pop {r3, pc}
_02227134:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r2, #3
	str r2, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #0xf
	blx r2
	pop {r3, pc}
_02227146:
	mov r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0222716C
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #2
	bne _022271A0
	bl WCM_Finish
	ldr r0, _022271A4 ; =0x02251CC0
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #0x14
	blx r2
	pop {r3, pc}
_0222716C:
	ldr r0, _022271A4 ; =0x02251CC0
	mov r3, #3
	str r3, [r0, #0x18]
	ldr r3, [r0, #0x1c]
	cmp r3, #0
	beq _022271A0
	add r0, r2, #0
	blx r3
	pop {r3, pc}
_0222717E:
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x18]
	cmp r2, #5
	bne _022271A0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #5
	blx r2
	pop {r3, pc}
_02227192:
	ldr r0, _022271A4 ; =0x02251CC0
	ldr r2, [r0, #0x1c]
	cmp r2, #0
	beq _022271A0
	mov r0, #1
	mov r1, #0
	blx r2
_022271A0:
	pop {r3, pc}
	nop
_022271A4: .word Unk_ov18_02251CC0
	thumb_func_end ov18_02226EF0

	thumb_func_start ov18_022271A8
ov18_022271A8: ; 0x022271A8
	push {r3, lr}
	ldr r1, _02227208 ; =0x02251CC0
	ldr r0, [r1, #0x18]
	cmp r0, #8
	bhi _022271FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022271BE: ; jump table
	.short _022271FE - _022271BE - 2 ; case 0
	.short _022271EE - _022271BE - 2 ; case 1
	.short _022271FE - _022271BE - 2 ; case 2
	.short _022271FE - _022271BE - 2 ; case 3
	.short _022271FE - _022271BE - 2 ; case 4
	.short _022271D0 - _022271BE - 2 ; case 5
	.short _022271FE - _022271BE - 2 ; case 6
	.short _022271E2 - _022271BE - 2 ; case 7
	.short _022271FE - _022271BE - 2 ; case 8
_022271D0:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl WCM_SearchAsync
	cmp r0, #3
	beq _02227202
	mov r0, #0
	pop {r3, pc}
_022271E2:
	bl WCM_DisconnectAsync
	cmp r0, #3
	beq _02227202
	mov r0, #0
	pop {r3, pc}
_022271EE:
	ldr r0, [r1, #8]
	ldr r1, _0222720C ; =ov18_02226EF0
	bl WCM_StartupAsync
	cmp r0, #3
	beq _02227202
	mov r0, #0
	pop {r3, pc}
_022271FE:
	mov r0, #0
	pop {r3, pc}
_02227202:
	mov r0, #1
	pop {r3, pc}
	nop
_02227208: .word Unk_ov18_02251CC0
_0222720C: .word ov18_02226EF0
	thumb_func_end ov18_022271A8

	thumb_func_start ov18_02227210
ov18_02227210: ; 0x02227210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #1
	add r7, r1, #0
	bl WCM_LockApList
	bl WCM_CountApList
	add r6, r0, #0
	cmp r6, #0
	ble _02227248
	mov r4, #0
	cmp r6, #0
	ble _02227248
_0222722C:
	cmp r4, r7
	bge _02227248
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl WCM_PointApList
	add r1, r5, #0
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r4, r4, #1
	add r5, #0xc0
	cmp r4, r6
	blt _0222722C
_02227248:
	mov r0, #0
	bl WCM_LockApList
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov18_02227210

	thumb_func_start ov18_02227254
ov18_02227254: ; 0x02227254
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp]
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	add r7, r0, #0
	ldr r1, _02227330 ; =0x02251CC0
	ldr r0, [sp]
	cmp r5, #0
	str r0, [r1, #4]
	beq _02227288
	ldr r2, _02227334 ; =0x02251CE8
	mov r1, #0
_02227272:
	ldrb r0, [r5]
	add r1, r1, #1
	add r5, r5, #1
	strb r0, [r2]
	add r2, r2, #1
	cmp r1, #6
	blt _02227272
	ldr r1, _02227334 ; =0x02251CE8
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x10]
	b _02227298
_02227288:
	ldr r0, _02227334 ; =0x02251CE8
	mov r1, #0xff
	mov r2, #6
	bl MI_CpuFill8
	ldr r1, _02227338 ; =0x02215E48
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x10]
_02227298:
	cmp r4, #0
	beq _022272D6
	cmp r6, #0
	ble _022272D6
	cmp r6, #0x20
	bgt _022272D6
	mov r0, #0
	cmp r6, #0
	ble _022272BA
	ldr r2, _0222733C ; =0x02251CF0
_022272AC:
	ldrb r1, [r4]
	add r0, r0, #1
	add r4, r4, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, r6
	blt _022272AC
_022272BA:
	cmp r0, #0x20
	bge _022272CE
	ldr r1, _0222733C ; =0x02251CF0
	add r2, r1, r0
	mov r1, #0
_022272C4:
	add r0, r0, #1
	strb r1, [r2]
	add r2, r2, #1
	cmp r0, #0x20
	blt _022272C4
_022272CE:
	ldr r1, _0222733C ; =0x02251CF0
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x14]
	b _022272E6
_022272D6:
	ldr r0, _0222733C ; =0x02251CF0
	mov r1, #0xff
	mov r2, #0x20
	bl MI_CpuFill8
	ldr r1, _02227340 ; =0x02215E50
	ldr r0, _02227330 ; =0x02251CC0
	str r1, [r0, #0x14]
_022272E6:
	ldr r2, _02227330 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _0222730C
	ldr r0, [r2, #0x10]
	ldr r1, [r2, #0x14]
	ldr r2, [r2, #4]
	bl WCM_SearchAsync
	cmp r0, #3
	bne _02227324
	ldr r0, _02227330 ; =0x02251CC0
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222730C:
	bl ov18_022271A8
	cmp r0, #1
	bne _02227324
	ldr r0, _02227330 ; =0x02251CC0
	mov r1, #6
	str r1, [r0, #0x18]
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227324:
	add r0, r7, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227330: .word Unk_ov18_02251CC0
_02227334: .word Unk_ov18_02251CE8
_02227338: .word WCM_Bssid_Any
_0222733C: .word Unk_ov18_02251CF0
_02227340: .word WCM_Essid_Any
	thumb_func_end ov18_02227254

	thumb_func_start ov18_02227344
ov18_02227344: ; 0x02227344
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0222737C ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #5
	bne _02227372
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl WCM_SearchAsync
	cmp r0, #3
	bne _02227372
	ldr r0, _0222737C ; =0x02251CC0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02227372:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222737C: .word Unk_ov18_02251CC0
	thumb_func_end ov18_02227344

	thumb_func_start ov18_02227380
ov18_02227380: ; 0x02227380
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _022273B4 ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #7
	bne _022273A8
	bl WCM_DisconnectAsync
	cmp r0, #3
	bne _022273A8
	ldr r0, _022273B4 ; =0x02251CC0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_022273A8:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	nop
_022273B4: .word Unk_ov18_02251CC0
	thumb_func_end ov18_02227380

	thumb_func_start ov18_022273B8
ov18_022273B8: ; 0x022273B8
	push {r4, lr}
	bl OS_DisableInterrupts
	add r4, r0, #0
	ldr r0, _0222740C ; =0x02251CC0
	ldr r0, [r0, #0x18]
	cmp r0, #3
	bne _022273EA
	bl WCM_CleanupAsync
	cmp r0, #3
	beq _022273DA
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
_022273DA:
	ldr r0, _0222740C ; =0x02251CC0
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_022273EA:
	bl ov18_022271A8
	cmp r0, #1
	bne _02227402
	ldr r0, _0222740C ; =0x02251CC0
	mov r1, #2
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r4, pc}
_02227402:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222740C: .word Unk_ov18_02251CC0
	thumb_func_end ov18_022273B8

	thumb_func_start ov18_02227410
ov18_02227410: ; 0x02227410
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	ldr r1, _02227490 ; =0x02251CC0
	add r4, r0, #0
	str r6, [r1, #0xc]
	cmp r5, #0
	beq _02227432
	ldr r1, [r1, #0x24]
	add r0, r5, #0
	mov r2, #0x50
	bl MI_CpuCopy8
	b _0222743C
_02227432:
	ldr r0, [r1, #0x24]
	mov r1, #0
	mov r2, #0x50
	bl MI_CpuFill8
_0222743C:
	ldr r1, _02227490 ; =0x02251CC0
	add r0, r7, #0
	ldr r1, [r1, #0x20]
	mov r2, #0xc0
	bl MIi_CpuCopy32
	bl ov18_022271A8
	cmp r0, #1
	bne _02227460
	ldr r0, _02227490 ; =0x02251CC0
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227460:
	ldr r2, _02227490 ; =0x02251CC0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _02227486
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	bne _02227486
	ldr r0, _02227490 ; =0x02251CC0
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227486:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227490: .word Unk_ov18_02251CC0
	thumb_func_end ov18_02227410

	thumb_func_start ov18_02227494
ov18_02227494: ; 0x02227494
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _02227540 ; =0x02251CC0
	add r0, #0x53
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x24]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _02227544 ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2, #0]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x20]
	add r6, #0xdf
	bic r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	add r5, r5, r1
	ldr r1, [r0, #4]
	sub r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	mov r1, #3
	str r1, [r0, #0]
	str r7, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bne _02227506
	sub r3, #0x1f
	ldr r0, [r2, #0]
	add r1, r3, #0
	bl WCM_Init
	cmp r0, #0
	beq _02227500
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227500:
	ldr r0, _02227540 ; =0x02251CC0
	mov r1, #1
	str r1, [r0, #0x18]
_02227506:
	ldr r0, _02227540 ; =0x02251CC0
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _02227534
	ldr r0, [r0, #8]
	ldr r1, _02227548 ; =ov18_02226EF0
	bl WCM_StartupAsync
	cmp r0, #3
	beq _02227524
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02227524:
	ldr r0, _02227540 ; =0x02251CC0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02227534:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227540: .word Unk_ov18_02251CC0
_02227544: .word 0x0000231F
_02227548: .word ov18_02226EF0
	thumb_func_end ov18_02227494

	.bss


	.global Unk_ov18_02251CC0
Unk_ov18_02251CC0: ; 0x02251CC0
	.space 0x4

	.global Unk_ov18_02251CC4
Unk_ov18_02251CC4: ; 0x02251CC4
	.space 0x4

	.global Unk_ov18_02251CC8
Unk_ov18_02251CC8: ; 0x02251CC8
	.space 0x4

	.global Unk_ov18_02251CCC
Unk_ov18_02251CCC: ; 0x02251CCC
	.space 0x4

	.global Unk_ov18_02251CD0
Unk_ov18_02251CD0: ; 0x02251CD0
	.space 0x4

	.global Unk_ov18_02251CD4
Unk_ov18_02251CD4: ; 0x02251CD4
	.space 0x4

	.global Unk_ov18_02251CD8
Unk_ov18_02251CD8: ; 0x02251CD8
	.space 0x4

	.global Unk_ov18_02251CDC
Unk_ov18_02251CDC: ; 0x02251CDC
	.space 0x4

	.global Unk_ov18_02251CE0
Unk_ov18_02251CE0: ; 0x02251CE0
	.space 0x4

	.global Unk_ov18_02251CE4
Unk_ov18_02251CE4: ; 0x02251CE4
	.space 0x4

	.global Unk_ov18_02251CE8
Unk_ov18_02251CE8: ; 0x02251CE8
	.space 0x8

	.global Unk_ov18_02251CF0
Unk_ov18_02251CF0: ; 0x02251CF0
	.space 0x20

