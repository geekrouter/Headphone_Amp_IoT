/*
 * irq_handlers.c
 *
 *  Created on: 6 mar 2016
 *      Author: Konrad
 */
#include "USART.h"

void USART2_IRQHandler()
{
	///	If the last byte was transmitted
	if((USART2->SR & USART_SR_TC) && uart2_transmission_in_progress)
	{
		///	Clear the Transmission Completed IRQ Flag
		USART2->SR &= ~USART_SR_TC;
		if(uart2_tx_byte_counter >= uart2_tx_data_size)
		{
			uart2_tx_byte_counter = 0;
			uart2_transmission_in_progress = 0;
			free(uart2_tx_buf);
			Uart_Disable_Tx_IRQ(USART2);
			Uart_Disable_Tx(USART2);
		}
	}
	///	If TX Irq
	if((USART2->SR & USART_SR_TXE) && uart2_transmission_in_progress)
	{
		USART2->DR = uart2_tx_buf[uart2_tx_byte_counter++];
	}

	///	If RX Irq
	if(USART2->SR & USART_SR_RXNE)
	{
		///	Clear the RX Not Empty IRQ flag
		USART2->SR &= ~USART_SR_RXNE;

		Fifo_Put(&uart2_rx_fifo, USART2->DR);
	}
}

