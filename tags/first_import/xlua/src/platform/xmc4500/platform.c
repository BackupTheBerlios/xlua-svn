
// Platform-dependent functions
#include <DAVE3.h>
#include "LIBS.h"

#include "platform.h"

#define NO_SYS    1

#include "type.h"

#include "devman.h"
#include "genstd.h"

#include <errno.h>
#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include "utils.h"
#include "common.h"
#include "platform_conf.h"
#include "buf.h"

/* Timer used by UART for timeout */
static osTimerId UART_TimerId;
/** Timer Flag to be set in the Timer call back function */
bool LUA001_TimerStatus = FALSE;
/* Timer Call Back function */
static	void  LUA001_lTimerCallBack(void const * Temp)
	{
	  LUA001_TimerStatus = TRUE;
	};

/** Cmsis Timer Defination */
osTimerDef(LuaTimer, LUA001_lTimerCallBack);






// ****************************************************************************
// Platform initialization
int platform_init() {

	osTimerId TimerId;
	TimerId = osTimerCreate(osTimer(LuaTimer), osTimerOnce, NULL);
	if (TimerId != NULL) {
		UART_TimerId = TimerId;
	}
	else {
		exit(-1);
	}

	cmn_platform_init();
	return PLATFORM_OK;
}

void platform_s_timer_delay( unsigned id, u32 delay_us )
{
}

u32 platform_s_timer_op( unsigned id, int op, u32 data )
{
	return -1;
}

// ****************************************************************************
// UART functions
u32 platform_uart_setup( unsigned id, u32 baud, int databits, int parity, int stopbits )
{
  //Nothing. already initialized by DAVE
  return 0;
}

void platform_s_uart_send( unsigned id, u8 data )
{
  while(1)
  {
    if(! USIC_IsTxFIFOfull(UART001_Handle0.UartRegs))
    {
        UART001_WriteData(UART001_Handle0,(int)data);
        break;
    }
  }
}

int platform_s_uart_recv( unsigned id, s32 timeout_in )
{
  s32 timeout;
  uint32_t c;
  osStatus OsStatus;
  timeout = timeout_in/1000;  //Convert microsecond to millisecond
  if (timeout > 0)
  {

    OsStatus = osTimerStart (UART_TimerId,timeout );
    LUA001_TimerStatus = FALSE;
    if (OsStatus != osOK)
    {
      return OsStatus;
    }
  }
  // Wait until some data is in FIFO if PLATFORM_UART_INFINITE_TIMEOUT
  if (timeout == PLATFORM_UART_INFINITE_TIMEOUT) {
	while (USIC_ubIsRxFIFOempty(UART001_Handle0.UartRegs));
  };
  while(1)
  {
	//Get Data
    if(! USIC_ubIsRxFIFOempty(UART001_Handle0.UartRegs))
    {
      c = UART001_ReadData(UART001_Handle0);
      break;
    }
    if(timeout == 0)
    {
      c = -1;
      break;
    }
    if(LUA001_TimerStatus)
    {
      c = -1;
      LUA001_TimerStatus= FALSE;
      break;
    }
  }
  return c;
}

int platform_s_uart_set_flow_control( unsigned id, int type )
{
  return PLATFORM_ERR;
}

