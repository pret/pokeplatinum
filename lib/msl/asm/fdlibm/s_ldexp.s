	.include "macros/function.inc"
	.include "include/s_ldexp.inc"

	

	.text


	arm_func_start ldexp
ldexp: ; 0x020DE160
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r4, r2
	bl __fpclassifyd
	cmp r0, #2
	ble _020DE198
	mov r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	mov r1, r0
	bl _d_feq
	bne _020DE1AC
_020DE198:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE1AC:
	ldr r3, [sp, #0xc]
	ldr r0, _020DE380 ; =0x7FF00000
	ldr r1, [sp, #8]
	and r0, r3, r0
	movs ip, r0, asr #0x14
	bne _020DE238
	bic r0, r3, #0x80000000
	orrs r0, r1, r0
	ldreq r0, [sp, #8]
	ldreq r1, [sp, #0xc]
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r3, _020DE384 ; =0x43500000
	mov r2, #0
	bl _d_mul
	mov r3, r1
	ldr r1, _020DE380 ; =0x7FF00000
	ldr ip, _020DE388 ; =0xFFFF3CB0
	and r1, r3, r1
	mov r2, r0
	mov r0, r1, asr #0x14
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r4, ip
	sub ip, r0, #0x36
	bge _020DE238
	ldr r0, _020DE38C ; =0xC2F8F359
	ldr r1, _020DE390 ; =0x01A56E1F
	bl _d_mul
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE238:
	ldr r0, _020DE394 ; =0x000007FF
	cmp ip, r0
	bne _020DE264
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	mov r2, r0
	mov r3, r1
	bl _d_add
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE264:
	add r2, ip, r4
	sub r0, r0, #1
	cmp r2, r0
	ble _020DE2A8
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl copysign
	mov r2, r0
	mov r3, r1
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl _d_mul
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE2A8:
	cmp r2, #0
	ble _020DE2D0
	ldr r1, _020DE3A0 ; =0x800FFFFF
	ldr r0, [sp, #8]
	and r1, r3, r1
	orr r1, r1, r2, lsl #20
	str r1, [sp, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE2D0:
	mvn r0, #0x35
	cmp r2, r0
	bgt _020DE350
	ldr r0, _020DE3A4 ; =0x0000C350
	cmp r4, r0
	ble _020DE31C
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl copysign
	mov r2, r0
	mov r3, r1
	ldr r0, _020DE398 ; =0x8800759C
	ldr r1, _020DE39C ; =0x7E37E43C
	bl _d_mul
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE31C:
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, _020DE38C ; =0xC2F8F359
	ldr r1, _020DE390 ; =0x01A56E1F
	bl copysign
	mov r2, r0
	mov r3, r1
	ldr r0, _020DE38C ; =0xC2F8F359
	ldr r1, _020DE390 ; =0x01A56E1F
	bl _d_mul
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_020DE350:
	ldr r0, _020DE3A0 ; =0x800FFFFF
	add r1, r2, #0x36
	and r0, r3, r0
	orr r3, r0, r1, lsl #20
	ldr r2, [sp, #8]
	ldr r1, _020DE3A8 ; =0x3C900000
	mov r0, #0
	str r3, [sp, #0xc]
	bl _d_mul
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_020DE380: .word 0x7FF00000
_020DE384: .word 0x43500000
_020DE388: .word 0xFFFF3CB0
_020DE38C: .word 0xC2F8F359
_020DE390: .word 0x01A56E1F
_020DE394: .word 0x000007FF
_020DE398: .word 0x8800759C
_020DE39C: .word 0x7E37E43C
_020DE3A0: .word 0x800FFFFF
_020DE3A4: .word 0x0000C350
_020DE3A8: .word 0x3C900000
	arm_func_end ldexp