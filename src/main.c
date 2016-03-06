//
// This file is part of the GNU ARM Eclipse distribution.
// Copyright (c) 2014 Liviu Ionescu.
//

// ----------------------------------------------------------------------------

#include <stdio.h>
#include <stdlib.h>
#include "diag/Trace.h"
#include "RCC.h"
#include "USART.h"
#include "GPIO.h"
#include "SysTick.h"
#include "fifo.h"
// ----------------------------------------------------------------------------
//
// Standalone STM32F4 empty sample (trace via ITM).
//
// Trace support is enabled by adding the TRACE macro definition.
// By default the trace messages are forwarded to the ITM output,
// but can be rerouted to any device or completely suppressed, by
// changing the definitions required in system/src/diag/trace_impl.c
// (currently OS_USE_TRACE_ITM, OS_USE_TRACE_SEMIHOSTING_DEBUG/_STDOUT).
//

// ----- main() ---------------------------------------------------------------

// Sample pragmas to cope with warnings. Please note the related line at
// the end of this function, used to pop the compiler diagnostics status.
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wmissing-declarations"
#pragma GCC diagnostic ignored "-Wreturn-type"


static void Uart_2_Init(void)
{
	Fifo_Init(&uart2_rx_fifo, uart2_rx_buf, sizeof(uart2_rx_buf));
//	UART_Config(USART2, , 115200, true);
}

int main(int argc, char* argv[])
{
	///	Configure RCC clock to CPU_FREQ frequency
	RCC_SetClockFrequency(RCC_PLLM, RCC_PLLN, RCC_PLLQ, RCC_PLLP);
	///	Configure SysTick to tick every 1ms
	SysTick_Config(CPU_FREQ*1000);
	///	Usart Configure
	Uart_2_Init();
	///	Configure pins for UASRT1
	GPIO_AlternateFunctionPrepare(GPIOA, PIN_9 | PIN_10, gpio_otyper_push_pull, gpio_speed_fast, gpio_pupd_pull_up);
	GPIO_AlternateFunctionSet(GPIOA, PIN_9, AF7);
	GPIO_AlternateFunctionSet(GPIOA, PIN_10, AF7);



	while (1)
    {
		// Add your code here.
		__WFE();
    }
}

#pragma GCC diagnostic pop

// ----------------------------------------------------------------------------
