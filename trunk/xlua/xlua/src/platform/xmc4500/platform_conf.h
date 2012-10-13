// eLua platform configuration

#ifndef __PLATFORM_CONF_H__
#define __PLATFORM_CONF_H__
#define __DAVE3__
#include "auxmods.h"
#include "exported_apps.h"

// *****************************************************************************
// Define here what components you want for this platform

#define BUILD_SHELL
#define BUILD_TERM
#define BUILD_CON_GENERIC
#define BUILD_LINENOISE
#define BUILD_MMCFS

// *****************************************************************************
// UART/Timer IDs configuration data (used in main.c)

#define LINENOISE_HISTORY_SIZE_SHELL 50

#define CON_UART_ID           0
#define CON_UART_SPEED        115200
#define CON_TIMER_ID          0
#define TERM_LINES            25
#define TERM_COLS             80

// *****************************************************************************

// *****************************************************************************
// Auxiliary libraries that will be compiled for this platform

#define LUA_PLATFORM_LIBS_ROM\
  _ROM( AUXLIB_PD, luaopen_pd, pd_map )\
  _ROM( AUXLIB_UART, luaopen_uart, uart_map )\
  _ROM( AUXLIB_TERM, luaopen_term, term_map )\
  _ROM( AUXLIB_PACK, luaopen_pack, pack_map )\
  _ROM( AUXLIB_BIT, luaopen_bit, bit_map )\
  _ROM( AUXLIB_CPU, luaopen_cpu, cpu_map )\
  _ROM( AUXLIB_ELUA, luaopen_elua, elua_map )\
  _ROM( LUA_MATHLIBNAME, luaopen_math, math_map )

#define DAVE_APPS_ROM EXPORTED_APPS_ROM

// *****************************************************************************
// Configuration data

#define LINENOISE_HISTORY_SIZE_LUA 50

// Virtual timers (0 if not used)
#define VTMR_NUM_TIMERS       0
#define VTMR_FREQ_HZ          4

// Number of resources (0 if not available/not implemented)
#define NUM_PIO               0
#define NUM_SPI               0
#define NUM_UART              2
#if VTMR_NUM_TIMERS > 0
#define NUM_TIMER             3
#else
#define NUM_TIMER             2
#endif
#define NUM_PWM               0
#define NUM_ADC               0
#define NUM_CAN               0

//#define BUILD_C_INT_HANDLERS
//#define INT_ELUA_LAST 10

//#define INT_UART_RX 10

// Enable RX buffering on UART
//#define BUF_ENABLE_UART
//#define CON_BUF_SIZE          BUF_SIZE_128

// CPU frequency (needed by the CPU module, 0 if not used)
#define CPU_FREQUENCY         120000000

// PIO prefix ('0' for P0, P1, ... or 'A' for PA, PB, ...)
#define PIO_PREFIX            '0'
#define PIO_PINS_PER_PORT     0

#define SRAM_SIZE 0x10000
#define SRAM_BASE 0x20000000
#define STACK_SIZE 2048
#define STACK_SIZE_TOTAL (STACK_SIZE)
#define MEM_START_ADDRESS {(void*)end}
#define MEM_END_ADDRESS {(void*)(SRAM_BASE + SRAM_SIZE - STACK_SIZE_TOTAL - 1)}

#endif // #ifndef __PLATFORM_CONF_H__
