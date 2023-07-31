	.include "macros/function.inc"
	.include "include/headline.inc"

	

	.text


	arm_func_start ov18_0222BB34
ov18_0222BB34: ; 0x0222BB34
	stmfd sp!, {r3, lr}
	mov r0, #0xc0
	mov r1, #4
	bl ov18_02245068
	ldr r2, _0222BB98 ; =0x02253294
	ldr r1, _0222BB9C ; =0x020C072C
	str r0, [r2, #0]
	ldr r0, _0222BBA0 ; =0x02249B34
	bl ov18_0222B700
	bl ov18_0222F75C
	cmp r0, #0
	beq _0222BB70
	cmp r0, #1
	beq _0222BB84
	ldmia sp!, {r3, pc}
_0222BB70:
	ldr r0, _0222BBA4 ; =0x02249AE4
	ldr r1, _0222BBA8 ; =GX_LoadBG1Scr
	ldr r0, [r0, #0]
	bl ov18_0222B700
	ldmia sp!, {r3, pc}
_0222BB84:
	ldr r0, _0222BBA4 ; =0x02249AE4
	ldr r1, _0222BBA8 ; =GX_LoadBG1Scr
	ldr r0, [r0, #4]
	bl ov18_0222B700
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222BB98: .word Unk_ov18_02253294
_0222BB9C: .word 0x020C072C
_0222BBA0: .word Unk_ov18_02249B34
_0222BBA4: .word Unk_ov18_02249AE4
_0222BBA8: .word GX_LoadBG1Scr
	arm_func_end ov18_0222BB34

	arm_func_start ov18_0222BBAC
ov18_0222BBAC: ; 0x0222BBAC
	ldr ip, _0222BBB8 ; =ov18_0224508C
	ldr r0, _0222BBBC ; =0x02253294
	bx ip
	; .align 2, 0
_0222BBB8: .word ov18_0224508C
_0222BBBC: .word Unk_ov18_02253294
	arm_func_end ov18_0222BBAC

	arm_func_start ov18_0222BBC0
ov18_0222BBC0: ; 0x0222BBC0
	stmfd sp!, {r4, lr}
	ldr r1, _0222BC10 ; =0x02249AE4
	ldr r0, [r1, r0, lsl #2]
	bl ov18_0222B6A0
	mov r1, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _0222BC14 ; =0x02253294
	mov r4, r0
	ldr r1, [r1, #0]
	mov r2, #0xc0
	bl MIi_CpuCopyFast
	mov r0, r4
	bl ov18_0224382C
	mov r0, #1
	ldr r1, _0222BC18 ; =ov18_0222BC4C
	mov r2, #0
	mov r3, #0x78
	bl ov18_02246304
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222BC10: .word Unk_ov18_02249AE4
_0222BC14: .word Unk_ov18_02253294
_0222BC18: .word ov18_0222BC4C
	arm_func_end ov18_0222BBC0

	arm_func_start ov18_0222BC1C
ov18_0222BC1C: ; 0x0222BC1C
	stmfd sp!, {r3, lr}
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	add r0, r0, #5
	bl ov18_0222BBC0
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0222BC1C

	arm_func_start ov18_0222BC34
ov18_0222BC34: ; 0x0222BC34
	stmfd sp!, {r3, lr}
	bl ov18_0223DDCC
	ldrb r0, [r0, #0xf4]
	add r0, r0, #2
	bl ov18_0222BBC0
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0222BC34

	arm_func_start ov18_0222BC4C
ov18_0222BC4C: ; 0x0222BC4C
	stmfd sp!, {r4, lr}
	ldr r1, _0222BC88 ; =0x02253294
	mov r4, r0
	ldr r0, [r1, #0]
	mov r1, #0xc0
	bl DC_FlushRange
	ldr r0, _0222BC88 ; =0x02253294
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #0xc0
	bl GX_LoadBG1Scr
	mov r1, r4
	mov r0, #1
	bl ov18_022463AC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222BC88: .word Unk_ov18_02253294
	arm_func_end ov18_0222BC4C

	.data


	.global Unk_ov18_02249914
Unk_ov18_02249914: ; 0x02249914
	.ascii "char/jb2HlAp.nsc.l"
	.space 0x2

	.global Unk_ov18_02249928
Unk_ov18_02249928: ; 0x02249928
	.ascii "char/jb4HlIp.nsc.l"
	.space 0x2

	.global Unk_ov18_0224993C
Unk_ov18_0224993C: ; 0x0224993C
	.asciz "char/jb4HlWep.nsc.l"

	.global Unk_ov18_02249950
Unk_ov18_02249950: ; 0x02249950
	.asciz "char/jb4HlUsb.nsc.l"

	.global Unk_ov18_02249964
Unk_ov18_02249964: ; 0x02249964
	.ascii "char/jb4HlDns1.nsc.l"
	.space 0x4

	.global Unk_ov18_0224997C
Unk_ov18_0224997C: ; 0x0224997C
	.ascii "char/jb4HlSsid.nsc.l"
	.space 0x4

	.global Unk_ov18_02249994
Unk_ov18_02249994: ; 0x02249994
	.ascii "char/jb5HlMove.nsc.l"
	.space 0x4

	.global Unk_ov18_022499AC
Unk_ov18_022499AC: ; 0x022499AC
	.ascii "char/jb2HlWiFi.nsc.l"
	.space 0x4

	.global Unk_ov18_022499C4
Unk_ov18_022499C4: ; 0x022499C4
	.ascii "char/jb5HlInfo.nsc.l"
	.space 0x4

	.global Unk_ov18_022499DC
Unk_ov18_022499DC: ; 0x022499DC
	.ascii "char/jb4HlMask.nsc.l"
	.space 0x4

	.global Unk_ov18_022499F4
Unk_ov18_022499F4: ; 0x022499F4
	.ascii "char/jb4HlSet2.nsc.l"
	.space 0x4

	.global Unk_ov18_02249A0C
Unk_ov18_02249A0C: ; 0x02249A0C
	.ascii "char/jb4HlDns0.nsc.l"
	.space 0x4

	.global Unk_ov18_02249A24
Unk_ov18_02249A24: ; 0x02249A24
	.ascii "char/jb4HlSet3.nsc.l"
	.space 0x4

	.global Unk_ov18_02249A3C
Unk_ov18_02249A3C: ; 0x02249A3C
	.ascii "char/jb4HlSet1.nsc.l"
	.space 0x4

	.global Unk_ov18_02249A54
Unk_ov18_02249A54: ; 0x02249A54
	.asciz "char/jb3HlList1.nsc.l"
	.space 0x2

	.global Unk_ov18_02249A6C
Unk_ov18_02249A6C: ; 0x02249A6C
	.asciz "char/jb3HlList2.nsc.l"
	.space 0x2

	.global Unk_ov18_02249A84
Unk_ov18_02249A84: ; 0x02249A84
	.asciz "char/jb3HlList3.nsc.l"
	.space 0x2

	.global Unk_ov18_02249A9C
Unk_ov18_02249A9C: ; 0x02249A9C
	.asciz "char/jb5HlErase.nsc.l"
	.space 0x2

	.global Unk_ov18_02249AB4
Unk_ov18_02249AB4: ; 0x02249AB4
	.ascii "char/jb5HlOption.nsc.l"
	.space 0x2

	.global Unk_ov18_02249ACC
Unk_ov18_02249ACC: ; 0x02249ACC
	.asciz "char/jb4HlGateway.nsc.l"

	.global Unk_ov18_02249AE4
Unk_ov18_02249AE4: ; 0x02249AE4
	.word Unk_ov18_022499AC
	.word Unk_ov18_02249914
	.word Unk_ov18_02249A54
	.word Unk_ov18_02249A6C
	.word Unk_ov18_02249A84
	.word Unk_ov18_02249A3C
	.word Unk_ov18_022499F4
	.word Unk_ov18_02249A24
	.word Unk_ov18_02249950
	.word Unk_ov18_0224997C
	.word Unk_ov18_0224993C
	.word Unk_ov18_02249928
	.word Unk_ov18_022499DC
	.word Unk_ov18_02249ACC
	.word Unk_ov18_02249A0C
	.word Unk_ov18_02249964
	.word Unk_ov18_02249AB4
	.word Unk_ov18_022499C4
	.word Unk_ov18_02249A9C
	.word Unk_ov18_02249994

	.global Unk_ov18_02249B34
Unk_ov18_02249B34: ; 0x02249B34
	.asciz "char/jbBgHl.ncg.l"
	.space 0x2



	.bss


	.global Unk_ov18_02253294
Unk_ov18_02253294: ; 0x02253294
	.space 0x4

