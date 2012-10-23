/******************************************************************************
 *
 * Copyright (C) 2011 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon?s microcontrollers.
 * This file can be freely distributed within development tools that are
 * supporting such microcontrollers.
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 *
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000 Series                                         **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [Yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Jan 10, 2012                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** RP         App Developer                                                   **
*******************************************************************************/

/**
 * @file RTC001.h
 *
 * @brief  Real Time Clock App implementation header file.
 *
 */ 
 #ifndef RTC001_H_
 #define RTC001_H_
 /*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
/** Inclusion of Header */
#include <DAVE3.h>

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#if defined(__TASKING__) || defined (__GNUC__)
#include <sys/time.h>
#endif

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
/**
 * @ingroup RTC001_publicparam
 * @{
 */

/**
 * The RTC module needs to be enabled for the normal working.
 * This is enumeration describes RTC001 App configuration.
 */
typedef enum RTC001_EnableType
{
  /** RTC module is disabled */
  RTC001_DISABLE,   
  /** RTC module is enabled */
  RTC001_ENABLE                          
}RTC001_EnableType;


/**
 * This enumeration describes RTC001 App status types.
 */

typedef enum RTC001_ErrorType
{
  /** RTC001 Invalid Handle */
  RTC001_INVALID_HANDLE = 1,
  /** RTC001 Error */
  RTC001_ERROR,
  /** RTC001 Set */
  RTC001_SET,
  /** RTC001 Reset */
  RTC001_RESET,
  /** RTC001 Function entry */
  RTC001_FUNCTION_ENTRY,
  /** RTC001 Function exit */
  RTC001_FUNCTION_EXIT
}RTC001_ErrorType;


/**
 * The Flags used in RTC includes the timer and the alarm flags.
 * The flag types can be used to compare the status of flags in RTC as
 * well as to clear the flags that are already set.
 * This enumeration describes RTC001 App Flag status
 */

typedef enum RTC001_FlagType
{
  /** The Seconds flag in RTC */
  SECONDS_FLAG,
  /** The Minutes flag in RTC */
  MINUTES_FLAG,
  /** The Hours flag in RTC */
  HOURS_FLAG,
  /** The Days flag in RTC */
  DAYS_FLAG,
  /** The Months flag in RTC */
  MONTHS_FLAG,
  /** The Years flag in RTC */
  YEARS_FLAG,
  /** The Alarm flag in RTC */
  ALARM_FLAG
}RTC001_FlagType;


/**
 * Alarm Callback Function pointer used in RTC001 App.
 * The Alarm callback is called when an alarm event happens.
 * For an alarm event to happen the compared value as well as
 * the higher values should match and the user should have enabled alarm interrupt.
 * @param[in]  CbArg */
typedef void (*AlarmCallBackPtr)(uint32_t CbArg);

/**
 * Timer Callback Function pointer used in RTC001 App.
 * The Timer callback is called when a periodic timer event happens.
 *
 */
typedef void (*RTC001_TimerCallBackPtr)(void*);

/**
 * RTC001 Time Handle defining the structure for the values used in timer configuration.
 */
typedef struct RTC001_TimeHandle
{
  /** Time value to be entered in seconds field */
  uint8_t Sec;
  /** Time value to be entered in minutes field*/
  uint8_t Min;
  /** Time value to be entered in hours field*/
  uint8_t Hours;
  /** Time value to be entered in days field */
  uint8_t Days;
  /** Time value to be entered in days of week field*/
  uint8_t DaWe;
  /** Time value to be entered in months field*/
  uint8_t Month;
  /** Time value to be entered in years field*/
  uint16_t Year;
}RTC001_TimeHandle;


/**
 * This structure defines the RTC001 handle.
 * The user selected clock, timer and divider values are used to fill this structure.
 * The values are directly taken from the UI.
 */

typedef struct  RTC001_HandleType
{
 /** If value of this flag is 1, then RTC time value will be initialized
  * only once even after system reset
  */
  bool RTCInitOnce;
  /** Clock divider value */
  uint16_t DividerValue;
}RTC001_HandleType;

/**
 *@}
 */


/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/


/*******************************************************************************
**                      Extern Variables                                      **
*******************************************************************************/


/*******************************************************************************
**                     FUNCTION PROTOTYPES                                    **
*******************************************************************************/
/**
 * @ingroup RTC001_apidoc
 * @{
 */

 /**
 * Initialization function which initializes the App internal data
 * structures to default values. The UI configurations are taken care in this function.
 * The user entered values are taken into account while initialization.
 * The RTC001_Clock_SetTime Api and RTC001_ConfigAlarm Api are called within the RTC001_Init function.
 *
 *
 * @return     void
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize and RTC counter
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
void  RTC001_Init(void);


 /**
 * DeInitialization function which Deinitializes the App internal data
 * structures to reset values. The values of the RTC registers are set to their default values.
 *
 * @return     void
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize and RTC counter
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_DeInit();
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
void  RTC001_DeInit(void);


 /**
 * Enable function which enables the App.
 * The RTC module is enabled by calling this function, it can be called by the user
 * soon after configuring the time and alarm through UI.
 *
 *
 * @return     status <br>
 *             DAVEApp_SUCCESS	: for success <br>
 *             RTC001_ERROR  	: for failure case <br>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize and RTC counter
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_Enable();
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
status_t  RTC001_Enable(void);


 /**
 * Disable function which disables the App.
 * The Api is usually called to set time and set alarm.
 * The access to timer registers and alarm registers are allowed only when RTC is disabled.
 * There in that case this Api comes into function.
 *
 *
 * @return     status <br>
 *             DAVEApp_SUCCESS	: for success <br>
 *             RTC001_ERROR  	: for failure case <br>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize and RTC counter
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_Disable();
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
status_t  RTC001_Disable(void);


 /**
 * This function clears the respective RTC flag.
 * The function can be called at any time to clear the flag status.
 *
 *
 * @param[in]  Flag Enum value of type RTC001_FlagType whose
 *                   flag status will be cleared 
 * @return     void
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 *  #include <DAVE3.h>
 *  int main(void)
 *  {
 *    // Initialize and RTC counter
 *    DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *    RTC001_Enable();
 *    while(!RTC001_GetFlagStatus(HOURS_FLAG))
 *    {
 *      // Hour event happened
 *      RTC001_ClearFlagStatus(HOURS_FLAG);
 *    }
 *    // ... infinite loop ...
 *    while(1)
 *    {}
 *  }
 * @endcode<BR> </p> 
 */
void  RTC001_ClearFlagStatus(RTC001_FlagType Flag);


 /**
 * This function gets the respective flag status.
 * The user can call this function at any time to check the flag status.
 *
 * @param[in]  Flag enum value of type RTC001_FlagType whose
 *                 flag status will be returned
 *
 * @return     status <br>
 *             RTC001_SET	: for success <br>
 *             RTC001_RESET  	: for failure case <br>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   // Initialize and RTC counter
 *   DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *   RTC001_Enable();
 *   while(!RTC001_GetFlagStatus(HOURS_FLAG))
 *   {
 *     // Hour event happened
 *     RTC001_ClearFlagStatus(HOURS_FLAG);
 *   }
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
status_t  RTC001_GetFlagStatus(RTC001_FlagType Flag);


/**
 * This function configures the RTC001 Alarm.
 * The user has to fill the alarm pointer before calling this function.
 *
 * @param[in] Handle RTC app Handle<BR>
 * @param[in] timeptr Pointer to structure which contains alarm time
 *            values <BR>
 * @param[in] CallBack Alarm event callback function name<BR>
 * @param[in] CbArg Callback function argument<BR>
 *
 * @return     status_t<BR>
 *             DAVEApp_SUCCESS : if timer is deleted successfully<BR>
 *             RTC001_ERROR    : If failed<BR>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * static volatile bool AlarmEvent;
 * void Alarm_CallBack(uint32_t Temp)
 * {
 *   AlarmEvent = TRUE;
 * }
 * int main(void)
 * {
 *   uint32_t Status;
 *   RTC001_TimeHandle Alarm_Time;
 *    // ... Initializes Apps configurations ...
 *   DAVE_Init();
 *   Alarm_Time.Sec = 32;
 *   Alarm_Time.Min = 30;
 *   Alarm_Time.Hours = 4;
 *   Alarm_Time.Days = 15;
 *   Alarm_Time.Month = 5;
 *   Alarm_Time.Year = 2012;
 *   Status = RTC001_ConfigAlarm(&RTC001_Handle,&Alarm_Time,Alarm_CallBack,0);
 *   if(Status == DAVEApp_SUCCESS)
 *   {
 *     //Alarm is created successfully
 *   }
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
status_t RTC001_ConfigAlarm (const RTC001_HandleType* Handle, RTC001_TimeHandle* timeptr, AlarmCallBackPtr CallBack,uint32_t CbArg) ;


/**
 * This function gets the clock time at the particular instance and returns the status.
 *
 * @param[in] timeptr Pointer to structure in which time values are 
 *                     written<BR>
 * @return     status_t<BR>
 *             DAVEApp_SUCCESS :if timer is deleted successfully<BR>
 *             RTC001_ERROR    : If failed<BR>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   RTC001_TimeHandle CurrentTime;
 *   // Initialize and RTC counter
 *   DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *   RTC001_Enable();
 *   while(!RTC001_GetFlagStatus(HOURS_FLAG))
 *   {
 *     // Read current time
 *     RTC001_Clock_GetTime(&CurrentTime);
 *   }
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
status_t RTC001_Clock_GetTime (RTC001_TimeHandle* timeptr);

/**
 * This function sets the clock time and returns the status.
 *
 * @param[in] timeptr Pointer to structure which contains time 
 * 					  values to be configured<BR>
 * @return     status_t<BR>
 *             DAVEApp_SUCCESS : if timer is deleted successfully<BR>
 *             RTC001_ERROR    : If failed<BR>
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   RTC001_TimeHandle SetTime;
 *   uint32_t Status;
 *   // Initialize and RTC counter
 *   DAVE_Init(); // RTC001_Init() will be called within DAVE_Init()
 *   RTC001_Disable();
 *   SetTime.Sec = 32;
 *   SetTime.Min = 30;
 *   SetTime.Hours = 4;
 *   SetTime.Days = 15;
 *   SetTime.Month = 5;
 *   SetTime.Year = 2012;
 *   Status = RTC001_Clock_SetTime(&SetTime);
 *   if(Status == DAVEApp_SUCCESS)
 *   {
 *     //Success
 *   }
 *   RTC001_Enable();
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
status_t RTC001_Clock_SetTime(RTC001_TimeHandle* timeptr);


/**
 * This function returns the time in seconds from the epoc time(01/01/1970).
 *
 * @param[in] time Pointer to an object of type time_t, 
 *                   where the time value is stored.  <BR>
 *
 * 
 * @return     status_t<BR>
 *             DAVEApp_SUCCESS : if time value is calculated successfully<BR>
 *             RTC001_ERROR    : If failed<BR>
 *                 
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code 
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t status = RTC001_ERROR;
 *   time_t Time_Sec;
 *   // ... Initializes Apps configurations ...
 *   DAVE_Init();
 *   status = RTC001_Time(&Time_Sec);
 *   if(status != DAVEApp_SUCCESS)
 *   {
 *	   //error
 *   }
 *   RTC001_Disable();
 *   // ... infinite loop ...
 *   while(1)
 *   {}
 * }
 * @endcode<BR> </p> 
 */
status_t RTC001_Time(time_t* time) ;

  
/**
 *@}
 */


/** Include App config file */
#include "RTC001_Conf.h"

#endif /* RTC001_H_ */

