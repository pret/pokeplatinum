
	.extern OS_IrqDummy
    .extern OSi_IrqTimer0
    .extern OSi_IrqTimer1
    .extern OSi_IrqTimer2
    .extern OSi_IrqTimer3
    .extern OSi_IrqDma0
    .extern OSi_IrqDma1
    .extern OSi_IrqDma2
    .extern OSi_IrqDma3
    
    
    .text

	.section .dtcm, 4

	.public OS_IRQTable
OS_IRQTable:
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OSi_IrqTimer0
    .word OSi_IrqTimer1
    .word OSi_IrqTimer2
    .word OSi_IrqTimer3
    .word OS_IrqDummy
    .word OSi_IrqDma0
    .word OSi_IrqDma1
    .word OSi_IrqDma2
    .word OSi_IrqDma3
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy
    .word OS_IrqDummy


	.bss

    .public OSi_IrqThreadQueue
OSi_IrqThreadQueue:
	.space 0x8
