.section .vectors
@.org 0
@.align 2
.word 0x20000500

.word _reset + 1	@ reset handler
.word unhandled + 1	@ NMI handler
.word unhandled + 1	@ hard fault
.word unhandled + 1	@ mm fault
.word unhandled + 1	@ bus fault
.word unhandled + 1	@ usage fault
.word unhandled + 1	@ reserved
.word unhandled + 1	@ reserved
.word unhandled + 1	@ reserved
.word unhandled + 1	@ reserved
.word unhandled + 1	@ SVC
.word unhandled + 1	@ debug
.word unhandled + 1	@ reserved
.word unhandled + 1	@ PendSV
.word unhandled + 1	@ systick
.word unhandled + 1	@ IRQ0
.word unhandled + 1	@ IRQ1
.word unhandled + 1	@ IRQ2
.word unhandled + 1 	@ IRQ3
.word unhandled + 1 	@ IRQ4
.word unhandled + 1 	@ IRQ5
.word unhandled + 1 	@ IRQ6
.word unhandled + 1 	@ IRQ7
.word unhandled + 1 	@ IRQ8
.word unhandled + 1 	@ IRQ9
.word unhandled + 1 	@ IRQ10
.word unhandled + 1 	@ IRQ11
.word unhandled + 1 	@ IRQ12
.word unhandled + 1 	@ IRQ13
.word unhandled + 1 	@ IRQ14
.word unhandled + 1 	@ IRQ15
.word unhandled + 1 	@ IRQ16
.word unhandled + 1 	@ IRQ17
.word unhandled + 1 	@ IRQ18
.word unhandled + 1 	@ IRQ19
.word unhandled + 1 	@ IRQ20
.word unhandled + 1 	@ IRQ21
.word unhandled + 1 	@ IRQ22
.word unhandled + 1 	@ IRQ23
.word unhandled + 1 	@ IRQ24
.word unhandled + 1 	@ IRQ25
.word unhandled + 1 	@ IRQ26
.word unhandled + 1 	@ IRQ27
.word unhandled + 1 	@ IRQ28
.word unhandled + 1 	@ IRQ29
.word unhandled + 1 	@ IRQ30
.word unhandled + 1 	@ IRQ31
.word unhandled + 1 	@ IRQ32
.word unhandled + 1 	@ IRQ33
.word unhandled + 1 	@ IRQ34
.word unhandled + 1 	@ IRQ35
.word unhandled + 1 	@ IRQ36
.word unhandled + 1 	@ IRQ37
.word unhandled + 1 	@ IRQ38
.word unhandled + 1 	@ IRQ39
.word unhandled + 1 	@ IRQ40
.word unhandled + 1 	@ IRQ41
.word unhandled + 1 	@ IRQ42
.word unhandled + 1 	@ IRQ43
.word unhandled + 1 	@ IRQ44
.word unhandled + 1 	@ IRQ45
.word unhandled + 1 	@ IRQ46
.word unhandled + 1 	@ IRQ47
.word unhandled + 1 	@ IRQ48
.word unhandled + 1 	@ IRQ49
.word unhandled + 1 	@ IRQ50
.word unhandled + 1 	@ IRQ51
.word unhandled + 1 	@ IRQ52
.word unhandled + 1 	@ IRQ53
.word unhandled + 1 	@ IRQ54
.word unhandled + 1 	@ IRQ55
.word unhandled + 1 	@ IRQ56
.word unhandled + 1 	@ IRQ57
.word unhandled + 1 	@ IRQ58
.word unhandled + 1 	@ IRQ59
.word unhandled + 1 	@ IRQ60
.word unhandled + 1 	@ IRQ61
.word unhandled + 1 	@ IRQ62
.word unhandled + 1 	@ IRQ63
.word unhandled + 1 	@ IRQ64
.word unhandled + 1 	@ IRQ65
.word unhandled + 1 	@ IRQ66
.word unhandled + 1 	@ IRQ67

@@@ EQUATES
.equ RCC, 0x40021000
.equ OFS_RCC_CR, 0x00
.equ OFS_RCC_CFGR, 0x04
.equ OFS_RCC_CIR, 0x08
.equ OFS_RCC_APB2RSTR, 0x0c
.equ OFS_RCC_APB1RSTR, 0x10
.equ OFS_RCC_AHBENR, 0x14
.equ OFS_RCC_APB2ENR, 0x18
.equ OFS_RCC_APB1ENR, 0x1c
.equ OFS_RCC_BDCR, 0x20
.equ OFS_RCC_CSR, 0x24

.equ GPIOB, 0x40010c00
.equ OFS_GPIOB_CRL, 0x00
.equ OFS_GPIOB_CRH, 0x04
.equ OFS_GPIOB_ODR, 0x0c

.equ TIM4, 0x40000800
.equ OFS_TIM4_CR1, 0x00
.equ OFS_TIM4_CR2, 0x04
.equ OFS_TIM4_SMCR, 0x08
.equ OFS_TIM4_DIER, 0x0c
.equ OFS_TIM4_SR, 0x10
.equ OFS_TIM4_EGR, 0x14
.equ OFS_TIM4_CCMR1, 0x18
.equ OFS_TIM4_CCMR2, 0x1c
.equ OFS_TIM4_CCER, 0x20
.equ OFS_TIM4_CNT, 0x24
.equ OFS_TIM4_PSC, 0x28
.equ OFS_TIM4_ARR, 0x2c
.equ OFS_TIM4_CCR1, 0x34
.equ OFS_TIM4_CCR2, 0x38
.equ OFS_TIM4_CCR3, 0x3c
.equ OFS_TIM4_CCR4, 0x40
.equ OFS_TIM4_DCR, 0x48
.equ OFS_TIM4_DMAR, 0x4c

.section .bss
@.align 2
b_var1: .word 0x00

.section .data
@.align 2
var1: .word 0x12345678

.section .rodata
@.align 2
.word 0, 0, 0, 0, 0
ro_var1: .word 0x87654321

.text
.global _start
@.align 2
.word _data_start
.word _data_end
.word _bss_start
.word _bss_end
.word _sidata
.word _etext

_start:
_reset:
 @@@ init data
 bl init_data
 @@@ init bss
 bl init_bss

 @@@ enable external clock
 bl external_clock

 @@@ enable GPIOA + GPIOB + GPIOC + AFIO clock
 ldr r0, =RCC
 ldr r3, =OFS_RCC_APB2ENR
 ldr r1, [r0, r3]
 mov r2, #0x1d				@ 0x1d = 0b11101
 orr r1, r2				@ bit4 = IOPC, bit3 = IOPB, bit2 = IOPA, bit0 = AFIO enable
 str r1, [r0, r3]
 
 @@@ enable TIM4 clock on APB1
 ldr r0, =RCC
 ldr r3, =OFS_RCC_APB1ENR
 ldr r1, [r0, r3]
 mov r2, #0x04				@ bit2 = TIM4_ENABLE
 orr r1, r2
 str r1, [r0, r3]
 
 @@@ set up capture/compare channels 3+4
 ldr r0, =TIM4
 ldr r3, =OFS_TIM4_CCMR2
 ldr r1, =0x6060
 str r1, [r0, r3]
 
 @@@ enable capture/compare channels 3+4
 ldr r0, =TIM4
 ldr r3, =OFS_TIM4_CCER
 ldr r1, =0x1100
 str r1, [r0, r3]
 
 @@@ set ARR
 ldr r0, =TIM4
 ldr r3, =OFS_TIM4_ARR
 ldr r1, =0xffff
 str r1, [r0, r3]
 
 @@@ set PSC = 0x00
 ldr r0, =TIM4
 ldr r3, =OFS_TIM4_PSC
 ldr r1, =0x00
 str r1, [r0, r3]
 
 @@@ set CCR3+4 (duty cycle 100%)
 ldr r0, =TIM4
 ldr r3, =OFS_TIM4_CCR3
 ldr r1, =0xffff
 str r1, [r0, r3]
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 
 @@@ enable TIM4
 ldr r0, =TIM4
 ldr r3, =OFS_TIM4_CR1
 ldr r1, =0x01
 str r1, [r0, r3]

 @@@ set LED pin as output
 ldr r0, =GPIOB			@ GPIOB
 ldr r1, =0x44444499		@ pin8+9 = output AF PP (10MHz)
 str r1, [r0, #4]		@ high control reg (CRH)

loop:
 bl kill_all
 bl fade_up_01
 bl fade_down_01
 bl fade_up_02
 bl fade_down_02
 bl fade_up_01
 bl fade_up_02
 bl fade_down_01
 bl fade_down_02
 bl fade_up_all
 bl fade_down_all
 b loop
.ltorg

blink_test:
 push {lr}
 bl kill_all
 bl delay2
 bl set_01
 bl delay2
 bl set_02
 bl delay2
 bl kill_01
 bl delay2
 bl kill_02
 bl delay2
 pop {pc}
 bx lr
.ltorg

fade_up_01:
 push {r0, r1, r2, r3, lr}
 ldr r0, =TIM4
 ldr r1, =0x00
 ldr r2, =0xffff
 ldr r3, =OFS_TIM4_CCR3
_l_fade_up_01:
 str r1, [r0, r3]
 bl delay4
 add r1, #1
 cmp r1, r2
 bne _l_fade_up_01
 str r1, [r0, r3]
 bl delay4
 pop {r0, r1, r2, r3, pc}
 bx lr
.ltorg

fade_down_01:
 push {r0, r1, r2, r3, lr}
 ldr r0, =TIM4
 ldr r1, =0xffff
 ldr r2, =0x00
 ldr r3, =OFS_TIM4_CCR3
_l_fade_down_01:
 str r1, [r0, r3]
 bl delay4
 sub r1, #1
 cmp r1, r2
 bne _l_fade_down_01
 str r1, [r0, r3]
 bl delay4
 pop {r0, r1, r2, r3, pc}
 bx lr
.ltorg

fade_up_02:
 push {r0, r1, r2, r3, lr}
 ldr r0, =TIM4
 ldr r1, =0x00
 ldr r2, =0xffff
 ldr r3, =OFS_TIM4_CCR4
_l_fade_up_02:
 str r1, [r0, r3]
 bl delay4
 add r1, #1
 cmp r1, r2
 bne _l_fade_up_02
 str r1, [r0, r3]
 bl delay4
 pop {r0, r1, r2, r3, pc}
 bx lr
.ltorg

fade_down_02:
 push {r0, r1, r2, r3, lr}
 ldr r0, =TIM4
 ldr r1, =0xffff
 ldr r2, =0x00
 ldr r3, =OFS_TIM4_CCR4
_l_fade_down_02:
 str r1, [r0, r3]
 bl delay4
 sub r1, #1
 cmp r1, r2
 bne _l_fade_down_02
 str r1, [r0, r3]
 bl delay4
 pop {r0, r1, r2, r3, pc}
 bx lr
.ltorg

fade_up_all:
 push {r0, r1, r2, r3, r4, lr}
 ldr r0, =TIM4
 ldr r1, =0x00
 ldr r2, =0xffff
 ldr r3, =OFS_TIM4_CCR3
 ldr r4, =OFS_TIM4_CCR4
_l_fade_up_all:
 str r1, [r0, r3]
 str r1, [r0, r4]
 bl delay4
 add r1, #1
 cmp r1, r2
 bne _l_fade_up_all
 str r1, [r0, r3]
 str r1, [r0, r4]
 bl delay4
 pop {r0, r1, r2, r3, r4, pc}
 bx lr
.ltorg

fade_down_all:
 push {r0, r1, r2, r3, r4, lr}
 ldr r0, =TIM4
 ldr r1, =0xffff
 ldr r2, =0x00
 ldr r3, =OFS_TIM4_CCR3
 ldr r4, =OFS_TIM4_CCR4
_l_fade_down_all:
 str r1, [r0, r3]
 str r1, [r0, r4]
 bl delay4
 sub r1, #1
 cmp r1, r2
 bne _l_fade_down_all
 str r1, [r0, r3]
 str r1, [r0, r4]
 bl delay4
 pop {r0, r1, r2, r3, r4, pc}
 bx lr
.ltorg

PWM_test:
 push {r0, r1, r2, r3, lr}
 ldr r0, =TIM4
 ldr r3, =OFS_TIM4_CCR3
 ldr r1, =0x00
 str r1, [r0, r3]
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 bl delay
 ldr r1, =0xff
 ldr r3, =OFS_TIM4_CCR3
 str r1, [r0, r3]
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 bl delay
 ldr r1, =0xfff
 ldr r3, =OFS_TIM4_CCR3
 str r1, [r0, r3]
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 bl delay
 ldr r1, =0xffff
 ldr r3, =OFS_TIM4_CCR3
 str r1, [r0, r3]
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 bl delay
 pop {r0, r1, r2, r3, pc}
 bx lr
.ltorg

kill_all:
 push {r0, r1, r3}
 ldr r0, =TIM4
 ldr r1, =0x00
 ldr r3, =OFS_TIM4_CCR3
 str r1, [r0, r3]
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 pop {r0, r1, r3}
 bx lr
.ltorg

kill_01:
 push {r0, r1, r3}
 ldr r0, =TIM4
 ldr r1, =0x00
 ldr r3, =OFS_TIM4_CCR3
 str r1, [r0, r3]
 pop {r0, r1, r3}
 bx lr
.ltorg

kill_02:
 push {r0, r1, r3}
 ldr r0, =TIM4
 ldr r1, =0x00
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 pop {r0, r1, r3}
 bx lr
.ltorg

set_all:
 push {r0, r1, r3}
 ldr r0, =TIM4
 ldr r1, =0xffff
 ldr r3, =OFS_TIM4_CCR3
 str r1, [r0, r3]
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 pop {r0, r1, r3}
 bx lr
.ltorg

set_01:
 push {r0, r1, r3}
 ldr r0, =TIM4
 ldr r1, =0xffff
 ldr r3, =OFS_TIM4_CCR3
 str r1, [r0, r3]
 pop {r0, r1, r3}
 bx lr
.ltorg

set_02:
 push {r0, r1, r3}
 ldr r0, =TIM4
 ldr r1, =0xffff
 ldr r3, =OFS_TIM4_CCR4
 str r1, [r0, r3]
 pop {r0, r1, r3}
 bx lr
.ltorg

external_clock:
 @@@ HSE clock 				@ 12 MHz
 ldr r0, =RCC
 ldr r3, =OFS_RCC_CFGR
 
 @@@ MCO=off, PLLMUL=3x, PLLSRC=prediv1, SW=PLL
 ldr r1, =0x00050002
 str r1, [r0, r3]

 ldr r3, =OFS_RCC_CR
 ldr r1, [r0, r3]
 @@@ HSEON=1, PLLON=1
 ldr r2, =0x1010000
 orr r1, r2
 str r1, [r0, #0]

 bx lr
.ltorg

delay:
 push {r2}
 ldr r2, =500000
delay_loop:
 sub r2, r2, #1
 bne delay_loop
 pop {r2}
 bx lr
.ltorg

delay2:
 push {r2}
 ldr r2, =9999999
delay2_loop:
 sub r2, r2, #1
 bne delay2_loop
 pop {r2}
 bx lr
.ltorg

delay3:
 push {r2}
 ldr r2, =5000
delay3_loop:
 sub r2, r2, #1
 bne delay3_loop
 pop {r2}
 bx lr
.ltorg

delay4:
 push {r2}
 ldr r2, =250
delay4_loop:
 sub r2, r2, #1
 bne delay3_loop
 pop {r2}
 bx lr
.ltorg

unhandled:
 bx lr

init_data:
 movs r1, #0
 b LoopCopyDataInit
CopyDataInit:
 ldr r3, =_sidata
 ldr r3, [r3, r1]
 str r3, [r0, r1]
 add r1, r1, #4
LoopCopyDataInit:
 ldr r0, =_data_start
 ldr r3, =_data_end
 add r2, r0, r1
 cmp r2, r3
 bcc CopyDataInit
 bx lr
.ltorg

init_bss:
 ldr r2, =_bss_start
 b LoopFillZeroBss
FillZeroBss:
 movs r3, #0
 str r3, [r2]
 add r2, r2, #4
LoopFillZeroBss:
 ldr r3, =_bss_end
 cmp r2, r3
 bcc FillZeroBss
 bx lr
.ltorg
