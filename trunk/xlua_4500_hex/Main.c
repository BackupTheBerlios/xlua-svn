
#include "LIBS.h"
#include <DAVE3.h>	//SFR declarations of the selected device

extern void LUA001_Task(void const *argument);

osThreadId MainThreadId;
/* Thread definitions */
osThreadDef(LUA001_Task, osPriorityNormal, 1, 0);

int main(void)
{
  DAVE_Init();   /* initialize Dave internals */
  osKernelInitialize ();

  //IO004_EnableOutputDriver(&IO004_Handle0, IO004_OPENDRAIN);
  /* Create Task to call Lua_task */

  MainThreadId = osThreadCreate(osThread(LUA001_Task), NULL);

  osKernelStart();
  osDelay(osWaitForever);
  for (;;);
  return 0;
}
