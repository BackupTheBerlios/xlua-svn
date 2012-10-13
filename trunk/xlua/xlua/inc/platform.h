// Platform-specific functions

#ifndef __PLATFORM_H__
#define __PLATFORM_H__

#include "devman.h"
#include "type.h"
#include "elua_int.h"

// Error / status codes
enum
{
  PLATFORM_ERR,
  PLATFORM_OK,
  PLATFORM_UNDERFLOW = -1
};

// Platform initialization
int platform_init();
void platform_int_init();

// *****************************************************************************
// UART subsection

// There are 4 "virtual" UART ports (UART0...UART3).
#define PLATFORM_UART_TOTAL                   4

// Parity
enum
{
  PLATFORM_UART_PARITY_EVEN,
  PLATFORM_UART_PARITY_ODD,
  PLATFORM_UART_PARITY_NONE
};

// Stop bits
enum
{
  PLATFORM_UART_STOPBITS_1,
  PLATFORM_UART_STOPBITS_1_5,
  PLATFORM_UART_STOPBITS_2
};

// "Infinite timeout" constant for recv
#define PLATFORM_UART_INFINITE_TIMEOUT        (-1)

// Flow control types (this is a bit mask, one can specify PLATFORM_UART_FLOW_RTS | PLATFORM_UART_FLOW_CTS )
#define PLATFORM_UART_FLOW_NONE               0
#define PLATFORM_UART_FLOW_RTS                1
#define PLATFORM_UART_FLOW_CTS                2

// The platform UART functions
int platform_uart_exists( unsigned id );
u32 platform_uart_setup( unsigned id, u32 baud, int databits, int parity, int stopbits );
int platform_uart_set_buffer( unsigned id, unsigned size );
void platform_uart_send( unsigned id, u8 data );
void platform_s_uart_send( unsigned id, u8 data );
int platform_uart_recv( unsigned id, unsigned timer_id, s32 timeout );
int platform_s_uart_recv( unsigned id, s32 timeout );
int platform_uart_set_flow_control( unsigned id, int type );
int platform_s_uart_set_flow_control( unsigned id, int type );

// *****************************************************************************
// Timer subsection

// There are 16 "virtual" timers (TMR0...TMR15)
#define PLATFORM_TIMER_TOTAL                  16

// Data types
typedef u32 timer_data_type;

// Interrupt types
#define PLATFORM_TIMER_INT_ONESHOT            1
#define PLATFORM_TIMER_INT_CYCLIC             2

// Match interrupt error codes
#define PLATFORM_TIMER_INT_OK                 0
#define PLATFORM_TIMER_INT_TOO_SHORT          1
#define PLATFORM_TIMER_INT_TOO_LONG           2
#define PLATFORM_TIMER_INT_INVALID_ID         3  

// Timer operations
enum
{
  PLATFORM_TIMER_OP_START,
  PLATFORM_TIMER_OP_READ,
  PLATFORM_TIMER_OP_SET_CLOCK,
  PLATFORM_TIMER_OP_GET_CLOCK,
  PLATFORM_TIMER_OP_GET_MAX_DELAY,
  PLATFORM_TIMER_OP_GET_MIN_DELAY
};

// The platform timer functions
int platform_timer_exists( unsigned id );
void platform_timer_delay( unsigned id, u32 delay_us );
void platform_s_timer_delay( unsigned id, u32 delay_us );
u32 platform_timer_op( unsigned id, int op, u32 data );
u32 platform_s_timer_op( unsigned id, int op, u32 data );
int platform_timer_set_match_int( unsigned id, u32 period_us, int type );
int platform_s_timer_set_match_int( unsigned id, u32 period_us, int type );
u32 platform_timer_get_diff_us( unsigned id, timer_data_type end, timer_data_type start );
// CPU specific functions

#define PLATFORM_CPU_DISABLE            0
#define PLATFORM_CPU_ENABLE             1

// Interrupt functions return status
#define PLATFORM_INT_OK                 0
#define PLATFORM_INT_GENERIC_ERROR      ( -1 )
#define PLATFORM_INT_INVALID            ( -2 )
#define PLATFORM_INT_NOT_HANDLED        ( -3 )
#define PLATFORM_INT_BAD_RESNUM         ( -4 )

int platform_cpu_set_global_interrupts( int status );
int platform_cpu_get_global_interrupts();
int platform_cpu_set_interrupt( elua_int_id id, elua_int_resnum resnum, int status );
int platform_cpu_get_interrupt( elua_int_id id, elua_int_resnum resnum );
int platform_cpu_get_interrupt_flag( elua_int_id id, elua_int_resnum resnum, int clear );
u32 platform_cpu_get_frequency();

// *****************************************************************************

// Allocator support
void* platform_get_first_free_ram( unsigned id );
void* platform_get_last_free_ram( unsigned id );

#endif
