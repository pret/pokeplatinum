	.include "macros/function.inc"
	.include "include/unk_0205964C.inc"

	

	.text


	thumb_func_start sub_0205964C
sub_0205964C: ; 0x0205964C
	ldr r0, _02059654 ; =0x021C084C
	ldr r0, [r0, #0]
	bx lr
	nop
_02059654: .word 0x021C084C
	thumb_func_end sub_0205964C

	thumb_func_start sub_02059658
sub_02059658: ; 0x02059658
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059658

	thumb_func_start sub_0205965C
sub_0205965C: ; 0x0205965C
	push {r4, lr}
	ldr r1, _020596B4 ; =0x021C084C
	add r4, r0, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _020596B0
	bl sub_02099514
	mov r0, #0xf
	mov r1, #0x48
	bl sub_02018144
	ldr r1, _020596B4 ; =0x021C084C
	mov r2, #0x48
	str r0, [r1, #0]
	mov r1, #0
	bl sub_020C4CF4
	ldr r0, _020596B4 ; =0x021C084C
	mov r1, #0x32
	ldr r0, [r0, #0]
	mov r2, #0xa
	strh r1, [r0, #0x3c]
	ldr r0, _020596B8 ; =sub_020598C4
	mov r1, #0
	bl sub_0200D9E8
	ldr r1, _020596B4 ; =0x021C084C
	ldr r2, [r1, #0]
	str r0, [r2, #0x38]
	ldr r0, [r1, #0]
	mov r2, #0
	str r4, [r0, #0x18]
	ldr r0, [r1, #0]
	str r2, [r0, #0x44]
	bl sub_02059658
	ldr r0, _020596B4 ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x1c
	bl sub_020361BC
_020596B0:
	pop {r4, pc}
	nop
_020596B4: .word 0x021C084C
_020596B8: .word sub_020598C4
	thumb_func_end sub_0205965C

	thumb_func_start sub_020596BC
sub_020596BC: ; 0x020596BC
	push {r4, r5, r6, lr}
	ldr r0, _02059704 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02059702
	ldr r0, [r0, #0x38]
	bl sub_0200DA58
	mov r4, #0
	ldr r6, _02059704 ; =0x021C084C
	add r5, r4, #0
_020596D2:
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _020596DE
	bl sub_020181C4
_020596DE:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _020596D2
	ldr r0, _02059704 ; =0x021C084C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x44]
	cmp r0, #0
	beq _020596F4
	bl sub_020181C4
_020596F4:
	ldr r0, _02059704 ; =0x021C084C
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, _02059704 ; =0x021C084C
	mov r1, #0
	str r1, [r0, #0]
_02059702:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02059704: .word 0x021C084C
	thumb_func_end sub_020596BC

	thumb_func_start sub_02059708
sub_02059708: ; 0x02059708
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02059740
	add r0, r5, #0
	bl sub_0203D174
	mov r1, #0
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xb0
	ldr r3, [r3, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_020368B8
	add r0, r5, #0
	bl sub_0205965C
	ldr r0, _02059744 ; =sub_020598FC
	mov r1, #0
	bl sub_020598EC
_02059740:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02059744: .word sub_020598FC
	thumb_func_end sub_02059708

	thumb_func_start sub_02059748
sub_02059748: ; 0x02059748
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035E38
	cmp r0, #0
	bne _02059780
	add r0, r5, #0
	bl sub_0203D174
	mov r1, #0
	add r3, r5, #0
	str r1, [sp]
	add r3, #0xb0
	ldr r3, [r3, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02036900
	add r0, r5, #0
	bl sub_0205965C
	ldr r0, _02059784 ; =sub_02059924
	mov r1, #0
	bl sub_020598EC
_02059780:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02059784: .word sub_02059924
	thumb_func_end sub_02059748

	thumb_func_start sub_02059788
sub_02059788: ; 0x02059788
	ldr r1, _02059798 ; =0x021C084C
	ldr r3, _0205979C ; =sub_020598EC
	ldr r1, [r1, #0]
	add r1, #0x3e
	strb r0, [r1]
	ldr r0, _020597A0 ; =sub_02059944
	mov r1, #0
	bx r3
	; .align 2, 0
_02059798: .word 0x021C084C
_0205979C: .word sub_020598EC
_020597A0: .word sub_02059944
	thumb_func_end sub_02059788

	thumb_func_start sub_020597A4
sub_020597A4: ; 0x020597A4
	ldr r3, _020597AC ; =sub_020598EC
	ldr r0, _020597B0 ; =sub_02059E80
	mov r1, #0
	bx r3
	; .align 2, 0
_020597AC: .word sub_020598EC
_020597B0: .word sub_02059E80
	thumb_func_end sub_020597A4

	thumb_func_start sub_020597B4
sub_020597B4: ; 0x020597B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F3B0
	mov r0, #1
	mov r1, #0
	bl sub_0200F3B0
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	bl sub_02036780
	cmp r0, #0
	beq _0205986C
	ldr r0, _02059870 ; =0x021C084C
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020597F4
	add r0, r4, #0
	bl sub_0205965C
	ldr r0, _02059870 ; =0x021C084C
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x42
	strb r1, [r0]
	b _020597FA
_020597F4:
	mov r0, #0
	add r1, #0x42
	strb r0, [r1]
_020597FA:
	ldr r0, _02059870 ; =0x021C084C
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x43
	strb r1, [r0]
	bl sub_0203608C
	str r0, [sp, #8]
	bl sub_0203608C
	bl sub_02032EE8
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02059842
	ldr r6, _02059870 ; =0x021C084C
	add r5, r4, #0
	add r7, r4, #0
_02059822:
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	bne _02059836
	ldr r1, _02059874 ; =0x0000066C
	add r0, r7, #0
	bl sub_02018144
	ldr r1, [r6, #0]
	str r0, [r1, r5]
_02059836:
	add r5, r5, #4
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02059822
_02059842:
	ldr r0, _02059870 ; =0x021C084C
	mov r3, #0xff
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x18]
	str r0, [sp]
	ldr r0, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #4]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl sub_02071D40
	mov r0, #0x5f
	bl sub_020364F0
	ldr r0, _02059878 ; =sub_02059ED8
	mov r1, #0
	bl sub_020598EC
_0205986C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02059870: .word 0x021C084C
_02059874: .word 0x0000066C
_02059878: .word sub_02059ED8
	thumb_func_end sub_020597B4

	thumb_func_start sub_0205987C
sub_0205987C: ; 0x0205987C
	push {r3, lr}
	ldr r0, _02059898 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02059896
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	ldr r0, _0205989C ; =sub_0205A040
	mov r1, #5
	bl sub_020598EC
_02059896:
	pop {r3, pc}
	; .align 2, 0
_02059898: .word 0x021C084C
_0205989C: .word sub_0205A040
	thumb_func_end sub_0205987C

	thumb_func_start sub_020598A0
sub_020598A0: ; 0x020598A0
	push {r3, lr}
	ldr r0, _020598BC ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020598B8
	mov r0, #0x5b
	bl sub_020364F0
	ldr r0, _020598C0 ; =sub_0205A018
	mov r1, #5
	bl sub_020598EC
_020598B8:
	pop {r3, pc}
	nop
_020598BC: .word 0x021C084C
_020598C0: .word sub_0205A018
	thumb_func_end sub_020598A0

	thumb_func_start sub_020598C4
sub_020598C4: ; 0x020598C4
	push {r3, lr}
	ldr r1, _020598E8 ; =0x021C084C
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _020598D4
	bl sub_0200DA58
	pop {r3, pc}
_020598D4:
	ldr r1, [r2, #0x34]
	cmp r1, #0
	beq _020598E4
	add r2, #0x40
	ldrb r0, [r2]
	cmp r0, #0
	bne _020598E4
	blx r1
_020598E4:
	pop {r3, pc}
	nop
_020598E8: .word 0x021C084C
	thumb_func_end sub_020598C4

	thumb_func_start sub_020598EC
sub_020598EC: ; 0x020598EC
	ldr r2, _020598F8 ; =0x021C084C
	ldr r3, [r2, #0]
	str r0, [r3, #0x34]
	ldr r0, [r2, #0]
	strh r1, [r0, #0x3c]
	bx lr
	; .align 2, 0
_020598F8: .word 0x021C084C
	thumb_func_end sub_020598EC

	thumb_func_start sub_020598FC
sub_020598FC: ; 0x020598FC
	push {r3, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _0205991A
	bl ov7_0224B4B8
	bl sub_02032AC0
	ldr r0, _0205991C ; =sub_02059920
	mov r1, #0
	bl sub_020598EC
_0205991A:
	pop {r3, pc}
	; .align 2, 0
_0205991C: .word sub_02059920
	thumb_func_end sub_020598FC

	thumb_func_start sub_02059920
sub_02059920: ; 0x02059920
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059920

	thumb_func_start sub_02059924
sub_02059924: ; 0x02059924
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _0205993A
	bl ov7_0224B450
	ldr r0, _0205993C ; =sub_02059940
	mov r1, #0
	bl sub_020598EC
_0205993A:
	pop {r3, pc}
	; .align 2, 0
_0205993C: .word sub_02059940
	thumb_func_end sub_02059924

	thumb_func_start sub_02059940
sub_02059940: ; 0x02059940
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059940

	thumb_func_start sub_02059944
sub_02059944: ; 0x02059944
	push {r3, lr}
	ldr r0, _0205995C ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x3e
	ldrb r0, [r0]
	bl sub_02036948
	ldr r0, _02059960 ; =sub_02059964
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_0205995C: .word 0x021C084C
_02059960: .word sub_02059964
	thumb_func_end sub_02059944

	thumb_func_start sub_02059964
sub_02059964: ; 0x02059964
	push {r3, lr}
	bl sub_0203699C
	cmp r0, #0
	beq _0205997A
	bl sub_02032AC0
	ldr r0, _0205997C ; =sub_02059980
	mov r1, #0
	bl sub_020598EC
_0205997A:
	pop {r3, pc}
	; .align 2, 0
_0205997C: .word sub_02059980
	thumb_func_end sub_02059964

	thumb_func_start sub_02059980
sub_02059980: ; 0x02059980
	bx lr
	; .align 2, 0
	thumb_func_end sub_02059980

	thumb_func_start sub_02059984
sub_02059984: ; 0x02059984
	push {r3, lr}
	mov r0, #0x62
	bl sub_02036540
	cmp r0, #0
	beq _020599C0
	bl sub_02057C84
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _020599DC ; =0x021C084C
	mov r2, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	bl sub_02057524
	bl sub_02059524
	bl sub_02035EC8
	mov r0, #0x5c
	bl sub_020364F0
	ldr r0, _020599E0 ; =sub_020599E4
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
_020599C0:
	ldr r0, _020599DC ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _020599D0
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_020599D0:
	mov r0, #0x1e
	strh r0, [r1, #0x3c]
	mov r0, #0x62
	bl sub_020364F0
	pop {r3, pc}
	; .align 2, 0
_020599DC: .word 0x021C084C
_020599E0: .word sub_020599E4
	thumb_func_end sub_02059984

	thumb_func_start sub_020599E4
sub_020599E4: ; 0x020599E4
	push {lr}
	sub sp, #0xc
	bl sub_0203608C
	cmp r0, #0
	bne _020599F4
	bl sub_02032CE8
_020599F4:
	mov r0, #0x5c
	bl sub_02036540
	cmp r0, #0
	beq _02059A32
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	bl sub_020576A0
	mov r0, #0
	bl sub_02057AE4
	ldr r0, _02059A38 ; =sub_02059A70
	mov r1, #1
	bl sub_020598EC
_02059A32:
	add sp, #0xc
	pop {pc}
	nop
_02059A38: .word sub_02059A70
	thumb_func_end sub_020599E4

	thumb_func_start sub_02059A3C
sub_02059A3C: ; 0x02059A3C
	push {r3, lr}
	ldr r0, _02059A68 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059A4E
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059A4E:
	mov r0, #0x1e
	bl sub_02036540
	cmp r0, #0
	beq _02059A64
	bl sub_02035EA8
	ldr r0, _02059A6C ; =sub_02059BF4
	mov r1, #0
	bl sub_020598EC
_02059A64:
	pop {r3, pc}
	nop
_02059A68: .word 0x021C084C
_02059A6C: .word sub_02059BF4
	thumb_func_end sub_02059A3C

	thumb_func_start sub_02059A70
sub_02059A70: ; 0x02059A70
	push {r3, lr}
	ldr r0, _02059AAC ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059A82
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059A82:
	bl sub_0203608C
	cmp r0, #0
	bne _02059A9A
	bl sub_0205928C
	cmp r0, #0
	beq _02059AA8
	mov r0, #0x1e
	bl sub_020364F0
	b _02059AA0
_02059A9A:
	mov r0, #0x1e
	bl sub_020364F0
_02059AA0:
	ldr r0, _02059AB0 ; =sub_02059A3C
	mov r1, #0x14
	bl sub_020598EC
_02059AA8:
	pop {r3, pc}
	nop
_02059AAC: .word 0x021C084C
_02059AB0: .word sub_02059A3C
	thumb_func_end sub_02059A70

	thumb_func_start sub_02059AB4
sub_02059AB4: ; 0x02059AB4
	push {r3, lr}
	mov r0, #0x62
	bl sub_02036540
	cmp r0, #0
	beq _02059AEC
	bl sub_02057C84
	add r1, r0, #0
	mov r0, #0xf
	bl sub_02018144
	ldr r1, _02059B08 ; =0x021C084C
	mov r2, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	bl sub_02057524
	bl sub_02059524
	mov r0, #0x5c
	bl sub_020364F0
	ldr r0, _02059B0C ; =sub_02059B10
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
_02059AEC:
	ldr r0, _02059B08 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059AFC
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059AFC:
	mov r0, #0x1e
	strh r0, [r1, #0x3c]
	mov r0, #0x62
	bl sub_020364F0
	pop {r3, pc}
	; .align 2, 0
_02059B08: .word 0x021C084C
_02059B0C: .word sub_02059B10
	thumb_func_end sub_02059AB4

	thumb_func_start sub_02059B10
sub_02059B10: ; 0x02059B10
	push {r3, lr}
	sub sp, #0x10
	bl sub_0203608C
	cmp r0, #0
	bne _02059B20
	bl sub_02032CE8
_02059B20:
	mov r0, #0x5c
	bl sub_02036540
	cmp r0, #0
	beq _02059B6C
	bl sub_020576A0
	mov r0, #0
	bl sub_02057AE4
	mov r1, #1
	add r0, sp, #0xc
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0xc
	bl sub_020360D0
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	ldr r0, _02059B70 ; =sub_02059CD8
	mov r1, #0
	bl sub_020598EC
_02059B6C:
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
_02059B70: .word sub_02059CD8
	thumb_func_end sub_02059B10

	thumb_func_start sub_02059B74
sub_02059B74: ; 0x02059B74
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0
	str r0, [sp]
	bl sub_02035E18
	cmp r0, #0
	ble _02059BDC
	ldr r6, _02059BEC ; =0x021C084C
	mov r7, #0
_02059B86:
	bl sub_0203608C
	ldr r1, [sp]
	cmp r1, r0
	beq _02059BCC
	add r0, r1, #0
	bl sub_02036564
	cmp r0, #0x5e
	bne _02059BCC
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x18]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _02059BCC
	mov r4, #0
	add r5, r4, #0
_02059BA8:
	ldr r0, [r6, #0]
	ldr r0, [r0, r5]
	cmp r0, #0
	beq _02059BB8
	bl sub_020181C4
	ldr r0, [r6, #0]
	str r7, [r0, r5]
_02059BB8:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02059BA8
	ldr r0, [r6, #0]
	ldr r1, _02059BF0 ; =0x0000238E
	ldr r0, [r0, #0x18]
	mov r2, #0
	bl sub_0203E880
_02059BCC:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	bl sub_02035E18
	ldr r1, [sp]
	cmp r1, r0
	blt _02059B86
_02059BDC:
	ldr r1, _02059BEC ; =0x021C084C
	mov r0, #4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	ldr r1, [r1, #8]
	bl sub_02038A1C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02059BEC: .word 0x021C084C
_02059BF0: .word 0x0000238E
	thumb_func_end sub_02059B74

	thumb_func_start sub_02059BF4
sub_02059BF4: ; 0x02059BF4
	push {r3, lr}
	bl sub_020590C4
	cmp r0, #0
	bne _02059C1E
	ldr r0, _02059C24 ; =0x021C084C
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, #0x43
	strb r1, [r0]
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020360D0
	ldr r0, _02059C28 ; =sub_02059CD8
	mov r1, #0
	bl sub_020598EC
_02059C1E:
	bl sub_02059B74
	pop {r3, pc}
	; .align 2, 0
_02059C24: .word 0x021C084C
_02059C28: .word sub_02059CD8
	thumb_func_end sub_02059BF4

	thumb_func_start sub_02059C2C
sub_02059C2C: ; 0x02059C2C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _02059C4A
	mov r0, #0xb
	bl sub_02079FF4
	ldr r1, _02059C70 ; =0x021C084C
	ldr r2, [r1, #0]
	str r0, [r2, #0x44]
	ldr r1, [r1, #0]
	add r0, r4, #0
	ldr r1, [r1, #0x44]
	bl sub_0207A21C
_02059C4A:
	cmp r5, #0
	beq _02059C58
	ldr r0, _02059C74 ; =sub_02059E50
	mov r1, #3
	bl sub_020598EC
	pop {r3, r4, r5, pc}
_02059C58:
	mov r1, #3
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020360D0
	ldr r0, _02059C78 ; =sub_02059BF4
	mov r1, #0
	bl sub_020598EC
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02059C70: .word 0x021C084C
_02059C74: .word sub_02059E50
_02059C78: .word sub_02059BF4
	thumb_func_end sub_02059C2C

	thumb_func_start sub_02059C7C
sub_02059C7C: ; 0x02059C7C
	ldr r3, _02059C84 ; =sub_020598EC
	ldr r0, _02059C88 ; =sub_02059BF4
	mov r1, #0
	bx r3
	; .align 2, 0
_02059C84: .word sub_020598EC
_02059C88: .word sub_02059BF4
	thumb_func_end sub_02059C7C

	thumb_func_start sub_02059C8C
sub_02059C8C: ; 0x02059C8C
	push {r3, lr}
	bl sub_020363A0
	cmp r0, #0
	bne _02059CCA
	bl sub_0203608C
	bl sub_020593CC
	cmp r0, #0
	bne _02059CCA
	ldr r0, _02059CCC ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059CB2
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059CB2:
	bl sub_020594FC
	ldr r0, _02059CCC ; =0x021C084C
	ldr r1, _02059CD0 ; =sub_02059C2C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x18]
	bl sub_0205AB10
	ldr r0, _02059CD4 ; =sub_02059C7C
	mov r1, #0
	bl sub_020598EC
_02059CCA:
	pop {r3, pc}
	; .align 2, 0
_02059CCC: .word 0x021C084C
_02059CD0: .word sub_02059C2C
_02059CD4: .word sub_02059C7C
	thumb_func_end sub_02059C8C

	thumb_func_start sub_02059CD8
sub_02059CD8: ; 0x02059CD8
	push {r3, lr}
	ldr r0, _02059D04 ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x43
	ldrb r0, [r0]
	cmp r0, #0
	beq _02059CFC
	ldr r0, _02059D08 ; =sub_02059C8C
	mov r1, #5
	bl sub_020598EC
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x5e
	add r1, sp, #0
	bl sub_020360D0
_02059CFC:
	bl sub_02059B74
	pop {r3, pc}
	nop
_02059D04: .word 0x021C084C
_02059D08: .word sub_02059C8C
	thumb_func_end sub_02059CD8

	thumb_func_start sub_02059D0C
sub_02059D0C: ; 0x02059D0C
	push {r4, lr}
	add r4, r2, #0
	bl sub_0203608C
	ldrb r1, [r4]
	cmp r1, r0
	bne _02059D24
	ldr r0, _02059D28 ; =0x021C084C
	mov r1, #1
	ldr r0, [r0, #0]
	add r0, #0x43
	strb r1, [r0]
_02059D24:
	pop {r4, pc}
	nop
_02059D28: .word 0x021C084C
	thumb_func_end sub_02059D0C

	thumb_func_start sub_02059D2C
sub_02059D2C: ; 0x02059D2C
	ldr r0, _02059D4C ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02059D46
	ldr r1, [r0, #0x34]
	ldr r0, _02059D50 ; =sub_02059CD8
	cmp r1, r0
	beq _02059D42
	ldr r0, _02059D54 ; =sub_02059BF4
	cmp r1, r0
	bne _02059D46
_02059D42:
	mov r0, #1
	bx lr
_02059D46:
	mov r0, #0
	bx lr
	nop
_02059D4C: .word 0x021C084C
_02059D50: .word sub_02059CD8
_02059D54: .word sub_02059BF4
	thumb_func_end sub_02059D2C

	thumb_func_start sub_02059D58
sub_02059D58: ; 0x02059D58
	push {r4, lr}
	sub sp, #8
	ldr r0, _02059DC4 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059D6E
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	add sp, #8
	pop {r4, pc}
_02059D6E:
	mov r4, #5
	bl sub_0203895C
	cmp r0, #2
	beq _02059D84
	cmp r0, #4
	beq _02059D80
	cmp r0, #5
	bne _02059D86
_02059D80:
	mov r4, #0xf
	b _02059D86
_02059D84:
	mov r4, #7
_02059D86:
	add r0, sp, #0
	bl sub_020389A0
	ldr r0, _02059DC4 ; =0x021C084C
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x44]
	ldr r0, [r0, #0x18]
	cmp r1, #0
	bne _02059DA2
	add r1, sp, #0
	add r2, r4, #0
	bl sub_020517E8
	b _02059DBA
_02059DA2:
	add r2, r4, #0
	bl sub_0205184C
	ldr r0, _02059DC4 ; =0x021C084C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x44]
	bl sub_020181C4
	ldr r0, _02059DC4 ; =0x021C084C
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x44]
_02059DBA:
	bl sub_020596BC
	add sp, #8
	pop {r4, pc}
	nop
_02059DC4: .word 0x021C084C
	thumb_func_end sub_02059D58

	thumb_func_start sub_02059DC8
sub_02059DC8: ; 0x02059DC8
	push {r3, lr}
	bl sub_020348B0
	cmp r0, #0
	beq _02059E02
	ldr r0, _02059E04 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059DE0
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
_02059DE0:
	ldr r0, _02059E04 ; =0x021C084C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x3c]
	cmp r0, #0x5a
	bne _02059DF0
	mov r0, #4
	bl sub_020364F0
_02059DF0:
	mov r0, #4
	bl sub_02036540
	cmp r0, #0
	beq _02059E02
	ldr r0, _02059E08 ; =sub_02059D58
	mov r1, #0
	bl sub_020598EC
_02059E02:
	pop {r3, pc}
	; .align 2, 0
_02059E04: .word 0x021C084C
_02059E08: .word sub_02059D58
	thumb_func_end sub_02059DC8

	thumb_func_start sub_02059E0C
sub_02059E0C: ; 0x02059E0C
	push {r3, lr}
	ldr r0, _02059E2C ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059E1E
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059E1E:
	bl sub_02034878
	ldr r0, _02059E30 ; =sub_02059DC8
	mov r1, #0x78
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059E2C: .word 0x021C084C
_02059E30: .word sub_02059DC8
	thumb_func_end sub_02059E0C

	thumb_func_start sub_02059E34
sub_02059E34: ; 0x02059E34
	push {r3, lr}
	mov r0, #3
	bl sub_02036540
	cmp r0, #0
	beq _02059E48
	ldr r0, _02059E4C ; =sub_02059E0C
	mov r1, #2
	bl sub_020598EC
_02059E48:
	pop {r3, pc}
	nop
_02059E4C: .word sub_02059E0C
	thumb_func_end sub_02059E34

	thumb_func_start sub_02059E50
sub_02059E50: ; 0x02059E50
	push {r3, lr}
	ldr r0, _02059E78 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059E62
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059E62:
	mov r0, #0
	bl sub_020576CC
	mov r0, #3
	bl sub_020364F0
	ldr r0, _02059E7C ; =sub_02059E34
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059E78: .word 0x021C084C
_02059E7C: .word sub_02059E34
	thumb_func_end sub_02059E50

	thumb_func_start sub_02059E80
sub_02059E80: ; 0x02059E80
	push {r3, lr}
	bl sub_02036964
	ldr r0, _02059E90 ; =sub_02059E94
	mov r1, #2
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059E90: .word sub_02059E94
	thumb_func_end sub_02059E80

	thumb_func_start sub_02059E94
sub_02059E94: ; 0x02059E94
	push {r3, lr}
	bl sub_02033E30
	cmp r0, #0
	beq _02059EA6
	ldr r0, _02059EA8 ; =sub_02059964
	mov r1, #0xa
	bl sub_020598EC
_02059EA6:
	pop {r3, pc}
	; .align 2, 0
_02059EA8: .word sub_02059964
	thumb_func_end sub_02059E94

	thumb_func_start sub_02059EAC
sub_02059EAC: ; 0x02059EAC
	ldr r1, _02059EB8 ; =0x021C084C
	mov r2, #1
	ldr r1, [r1, #0]
	add r0, r1, r0
	strb r2, [r0, #0x10]
	bx lr
	; .align 2, 0
_02059EB8: .word 0x021C084C
	thumb_func_end sub_02059EAC

	thumb_func_start sub_02059EBC
sub_02059EBC: ; 0x02059EBC
	push {r4, lr}
	add r4, r0, #0
	cmp r4, #4
	blt _02059EC8
	bl sub_02022974
_02059EC8:
	ldr r0, _02059ED4 ; =0x021C084C
	ldr r1, [r0, #0]
	lsl r0, r4, #2
	ldr r0, [r1, r0]
	pop {r4, pc}
	nop
_02059ED4: .word 0x021C084C
	thumb_func_end sub_02059EBC

	thumb_func_start sub_02059ED8
sub_02059ED8: ; 0x02059ED8
	push {r4, lr}
	bl sub_0203608C
	add r4, r0, #0
	mov r0, #0x5f
	bl sub_02036540
	cmp r0, #0
	beq _02059F02
	ldr r1, _02059F04 ; =0x021C084C
	mov r0, #0x58
	ldr r2, [r1, #0]
	lsl r1, r4, #2
	ldr r1, [r2, r1]
	ldr r2, _02059F08 ; =0x0000066C
	bl sub_0203597C
	ldr r0, _02059F0C ; =sub_02059F10
	mov r1, #0
	bl sub_020598EC
_02059F02:
	pop {r4, pc}
	; .align 2, 0
_02059F04: .word 0x021C084C
_02059F08: .word 0x0000066C
_02059F0C: .word sub_02059F10
	thumb_func_end sub_02059ED8

	thumb_func_start sub_02059F10
sub_02059F10: ; 0x02059F10
	push {r3, r4, r5, lr}
	mov r4, #0
	bl sub_02035E18
	cmp r0, #0
	ble _02059F32
	ldr r5, _02059F44 ; =0x021C084C
_02059F1E:
	ldr r0, [r5, #0]
	add r0, r0, r4
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _02059F40
	add r4, r4, #1
	bl sub_02035E18
	cmp r4, r0
	blt _02059F1E
_02059F32:
	mov r0, #0x61
	bl sub_020364F0
	ldr r0, _02059F48 ; =sub_02059FB8
	mov r1, #0
	bl sub_020598EC
_02059F40:
	pop {r3, r4, r5, pc}
	nop
_02059F44: .word 0x021C084C
_02059F48: .word sub_02059FB8
	thumb_func_end sub_02059F10

	thumb_func_start sub_02059F4C
sub_02059F4C: ; 0x02059F4C
	push {r3, lr}
	bl sub_020348B0
	cmp r0, #0
	bne _02059F86
	ldr r0, _02059F88 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059F64
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
_02059F64:
	ldr r0, _02059F88 ; =0x021C084C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0x3c]
	cmp r0, #0x5a
	bne _02059F74
	mov r0, #5
	bl sub_020364F0
_02059F74:
	mov r0, #5
	bl sub_02036540
	cmp r0, #0
	beq _02059F86
	ldr r0, _02059F8C ; =sub_02059FD4
	mov r1, #0
	bl sub_020598EC
_02059F86:
	pop {r3, pc}
	; .align 2, 0
_02059F88: .word 0x021C084C
_02059F8C: .word sub_02059FD4
	thumb_func_end sub_02059F4C

	thumb_func_start sub_02059F90
sub_02059F90: ; 0x02059F90
	push {r3, lr}
	ldr r0, _02059FB0 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059FA2
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059FA2:
	bl sub_02034884
	ldr r0, _02059FB4 ; =sub_02059F4C
	mov r1, #0x78
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_02059FB0: .word 0x021C084C
_02059FB4: .word sub_02059F4C
	thumb_func_end sub_02059F90

	thumb_func_start sub_02059FB8
sub_02059FB8: ; 0x02059FB8
	push {r3, lr}
	mov r0, #0x61
	bl sub_02036540
	cmp r0, #0
	beq _02059FCC
	ldr r0, _02059FD0 ; =sub_02059F90
	mov r1, #2
	bl sub_020598EC
_02059FCC:
	pop {r3, pc}
	nop
_02059FD0: .word sub_02059F90
	thumb_func_end sub_02059FB8

	thumb_func_start sub_02059FD4
sub_02059FD4: ; 0x02059FD4
	push {r3, lr}
	ldr r0, _0205A00C ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _02059FE6
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_02059FE6:
	mov r0, #0x62
	bl sub_020364F0
	ldr r0, _0205A00C ; =0x021C084C
	ldr r0, [r0, #0]
	add r0, #0x42
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A002
	ldr r0, _0205A010 ; =sub_02059984
	mov r1, #0x1e
	bl sub_020598EC
	pop {r3, pc}
_0205A002:
	ldr r0, _0205A014 ; =sub_02059AB4
	mov r1, #0x1e
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_0205A00C: .word 0x021C084C
_0205A010: .word sub_02059984
_0205A014: .word sub_02059AB4
	thumb_func_end sub_02059FD4

	thumb_func_start sub_0205A018
sub_0205A018: ; 0x0205A018
	push {r3, lr}
	mov r0, #0x5b
	bl sub_02036540
	cmp r0, #0
	beq _0205A03A
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	mov r0, #1
	bl sub_020576CC
	ldr r0, _0205A03C ; =sub_0205A058
	mov r1, #5
	bl sub_020598EC
_0205A03A:
	pop {r3, pc}
	; .align 2, 0
_0205A03C: .word sub_0205A058
	thumb_func_end sub_0205A018

	thumb_func_start sub_0205A040
sub_0205A040: ; 0x0205A040
	push {r3, lr}
	mov r0, #1
	bl sub_020576CC
	ldr r0, _0205A054 ; =sub_0205A058
	mov r1, #5
	bl sub_020598EC
	pop {r3, pc}
	nop
_0205A054: .word sub_0205A058
	thumb_func_end sub_0205A040

	thumb_func_start sub_0205A058
sub_0205A058: ; 0x0205A058
	push {r3, lr}
	ldr r0, _0205A078 ; =0x021C084C
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0x3c]
	cmp r0, #0
	beq _0205A06A
	sub r0, r0, #1
	strh r0, [r1, #0x3c]
	pop {r3, pc}
_0205A06A:
	bl sub_02036978
	ldr r0, _0205A07C ; =sub_020596BC
	mov r1, #0
	bl sub_020598EC
	pop {r3, pc}
	; .align 2, 0
_0205A078: .word 0x021C084C
_0205A07C: .word sub_020596BC
	thumb_func_end sub_0205A058

	thumb_func_start sub_0205A080
sub_0205A080: ; 0x0205A080
	push {r3, lr}
	ldr r1, _0205A09C ; =0x021C084C
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0205A092
	add r1, #0x41
	ldrb r1, [r1]
	cmp r1, #0
	bne _0205A096
_0205A092:
	mov r0, #0
	pop {r3, pc}
_0205A096:
	bl ov23_02242E10
	pop {r3, pc}
	; .align 2, 0
_0205A09C: .word 0x021C084C
	thumb_func_end sub_0205A080

	thumb_func_start sub_0205A0A0
sub_0205A0A0: ; 0x0205A0A0
	push {r3, lr}
	ldr r0, _0205A0B8 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205A0B6
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A0B6
	bl ov23_02242C78
_0205A0B6:
	pop {r3, pc}
	; .align 2, 0
_0205A0B8: .word 0x021C084C
	thumb_func_end sub_0205A0A0

	thumb_func_start sub_0205A0BC
sub_0205A0BC: ; 0x0205A0BC
	push {r3, lr}
	ldr r0, _0205A0D4 ; =0x021C084C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0205A0D2
	add r0, #0x41
	ldrb r0, [r0]
	cmp r0, #0
	beq _0205A0D2
	bl ov23_02242CB4
_0205A0D2:
	pop {r3, pc}
	; .align 2, 0
_0205A0D4: .word 0x021C084C
	thumb_func_end sub_0205A0BC

	.bss


	.global Unk_021C084C
Unk_021C084C: ; 0x021C084C
	.space 0x4

