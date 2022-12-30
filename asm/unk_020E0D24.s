	.include "macros/function.inc"

	

	.text


	arm_func_start _d_fge
_d_fge: ; 0x020E0D24
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0D98
	cmn ip, r3, lsl #1
	bhs _020E0DAC
_020E0D38:
	orrs ip, r3, r1
	bmi _020E0D68
	cmp r1, r3
	cmpeq r0, r2
	movhs r0, #1
	movlo r0, #0
	bx lr
_020E0D54:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0D68:
	orr ip, r0, ip, lsl #1
	orrs ip, ip, r2
	moveq r0, #1
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movhs r0, #1
	movlo r0, #0
	bx lr
_020E0D98:
	bne _020E0D54
	cmp r0, #0
	bhi _020E0D54
	cmn ip, r3, lsl #1
	blo _020E0D38
_020E0DAC:
	bne _020E0D54
	cmp r2, #0
	bhi _020E0D54
	b _020E0D38
	arm_func_end _d_fge

	arm_func_start _d_fgt
_d_fgt: ; 0x020E0DBC
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0E30
	cmn ip, r3, lsl #1
	bhs _020E0E44
_020E0DD0:
	orrs ip, r3, r1
	bmi _020E0E00
	cmp r1, r3
	cmpeq r0, r2
	movhi r0, #1
	movls r0, #0
	bx lr
_020E0DEC:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0E00:
	orr ip, r0, ip, lsl #1
	orrs ip, ip, r2
	moveq r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movhi r0, #1
	movls r0, #0
	bx lr
_020E0E30:
	bne _020E0DEC
	cmp r0, #0
	bhi _020E0DEC
	cmn ip, r3, lsl #1
	blo _020E0DD0
_020E0E44:
	bne _020E0DEC
	cmp r2, #0
	bhi _020E0DEC
	b _020E0DD0
	arm_func_end _d_fgt

	arm_func_start _dleq
	arm_func_start _d_fle
_dleq:
_d_fle: ; 0x020E0E54
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0ED4
	cmn ip, r3, lsl #1
	bhs _020E0EE8
_020E0E68:
	orrs ip, r3, r1
	bmi _020E0E9C
	cmp r1, r3
	cmpeq r0, r2
	movls r0, #1
	movhi r0, #0
	bx lr
_020E0E84:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0E9C:
	orr ip, r0, ip, lsl #1
	orrs ip, ip, r2
	moveq r0, #1
	bne _020E0EC0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	orr ip, ip, #0x40000000
	msr cpsr_flg, ip
	bxeq lr
_020E0EC0:
	cmp r3, r1
	cmpeq r2, r0
	movls r0, #1
	movhi r0, #0
	bx lr
_020E0ED4:
	bne _020E0E84
	cmp r0, #0
	bhi _020E0E84
	cmn ip, r3, lsl #1
	blo _020E0E68
_020E0EE8:
	bne _020E0E84
	cmp r2, #0
	bhi _020E0E84
	b _020E0E68
	arm_func_end _d_fle

	arm_func_start _d_flt
_d_flt: ; 0x020E0EF8
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0F70
	cmn ip, r3, lsl #1
	bhs _020E0F84
_020E0F0C:
	orrs ip, r3, r1
	bmi _020E0F3C
	cmp r1, r3
	cmpeq r0, r2
	movlo r0, #1
	movhs r0, #0
	bx lr
_020E0F28:
	mov r0, #0
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E0F3C:
	orr ip, r0, ip, lsl #1
	orrs ip, ip, r2
	moveq r0, #0
	bne _020E0F5C
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bxeq lr
_020E0F5C:
	cmp r3, r1
	cmpeq r2, r0
	movlo r0, #1
	movhs r0, #0
	bx lr
_020E0F70:
	bne _020E0F28
	cmp r0, #0
	bhi _020E0F28
	cmn ip, r3, lsl #1
	blo _020E0F0C
_020E0F84:
	bne _020E0F28
	cmp r2, #0
	bhi _020E0F28
	b _020E0F0C
	arm_func_end _d_flt

	arm_func_start _d_feq
_d_feq: ; 0x020E0F94
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E0FFC
	cmn ip, r3, lsl #1
	bhs _020E1010
_020E0FA8:
	orrs ip, r3, r1
	bmi _020E0FD8
	cmp r1, r3
	cmpeq r0, r2
	moveq r0, #1
	movne r0, #0
	bx lr
_020E0FC4:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E0FD8:
	orr ip, r0, ip, lsl #1
	orrs ip, ip, r2
	moveq r0, #1
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	moveq r0, #1
	movne r0, #0
	bx lr
_020E0FFC:
	bne _020E0FC4
	cmp r0, #0
	bhi _020E0FC4
	cmn ip, r3, lsl #1
	blo _020E0FA8
_020E1010:
	bne _020E0FC4
	cmp r2, #0
	bhi _020E0FC4
	b _020E0FA8
	arm_func_end _d_feq

	arm_func_start _d_fne
_d_fne: ; 0x020E1020
	mov ip, #0x200000
	cmn ip, r1, lsl #1
	bhs _020E1088
	cmn ip, r3, lsl #1
	bhs _020E109C
_020E1034:
	orrs ip, r3, r1
	bmi _020E1064
	cmp r1, r3
	cmpeq r0, r2
	movne r0, #1
	moveq r0, #0
	bx lr
_020E1050:
	mov r0, #1
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E1064:
	orr ip, r0, ip, lsl #1
	orrs ip, ip, r2
	moveq r0, #0
	bxeq lr
	cmp r3, r1
	cmpeq r2, r0
	movne r0, #1
	moveq r0, #0
	bx lr
_020E1088:
	bne _020E1050
	cmp r0, #0
	bhi _020E1050
	cmn ip, r3, lsl #1
	blo _020E1034
_020E109C:
	bne _020E1050
	cmp r2, #0
	bhi _020E1050
	b _020E1034
	arm_func_end _d_fne

	arm_func_start _f_fge
_f_fge: ; 0x020E10AC
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E10F4
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movge r0, #1
	movlt r0, #0
	mrs ip, cpsr
	biclt ip, ip, #0x20000000
	orrge ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E10F4:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end _f_fge

	arm_func_start _fgr
	arm_func_start _f_fgt
_fgr:
_f_fgt: ; 0x020E1108
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E1150
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movgt r0, #1
	movle r0, #0
	mrs ip, cpsr
	bicle ip, ip, #0x20000000
	orrgt ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E1150:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end _f_fgt

	arm_func_start _f_fle
_f_fle: ; 0x020E1164
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E11B4
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movle r0, #1
	movgt r0, #0
	mrs ip, cpsr
	orrgt ip, ip, #0x20000000
	bicgt ip, ip, #0x40000000
	bicle ip, ip, #0x20000000
	orrle ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E11B4:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end _f_fle

	arm_func_start _fls
	arm_func_start _f_flt
_fls:
_f_flt: ; 0x020E11CC
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	cmphs r3, r1, lsl #1
	blo _020E1214
	cmp r0, #0
	bicmi r0, r0, #0x80000000
	rsbmi r0, r0, #0
	cmp r1, #0
	bicmi r1, r1, #0x80000000
	rsbmi r1, r1, #0
	cmp r0, r1
	movlt r0, #1
	movge r0, #0
	mrs ip, cpsr
	orrge ip, ip, #0x20000000
	biclt ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
_020E1214:
	mov r0, #0
	mrs ip, cpsr
	orr ip, ip, #0x20000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end _f_flt

	arm_func_start _feq
	arm_func_start _f_feq
_feq:
_f_feq: ; 0x020E1228
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	blo _020E127C
	cmp r3, r1, lsl #1
	blo _020E127C
	orr r3, r0, r1
	movs r3, r3, lsl #1
	moveq r0, #1
	bne _020E125C
	mrs ip, cpsr
	orr ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E125C:
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	mrs ip, cpsr
	orreq ip, ip, #0x40000000
	bicne ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E127C:
	mov r0, #0
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end _f_feq

	arm_func_start _f_fne
_f_fne: ; 0x020E1290
	mov r3, #-0x1000000
	cmp r3, r0, lsl #1
	blo _020E12E4
	cmp r3, r1, lsl #1
	blo _020E12E4
	orr r3, r0, r1
	movs r3, r3, lsl #1
	moveq r0, #0
	bne _020E12C4
	mrs ip, cpsr
	orr ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E12C4:
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	mrs ip, cpsr
	bicne ip, ip, #0x40000000
	orreq ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
_020E12E4:
	mov r0, #1
	mrs ip, cpsr
	bic ip, ip, #0x40000000
	msr cpsr_flg, ip
	bx lr
	arm_func_end _f_fne