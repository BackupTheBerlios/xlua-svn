/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2011)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000 Series   			                          **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Nov 20, 2011                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** PAE        App Developer                                                   **
*******************************************************************************/

/**
 * @file NVIC_SCU001.h
 *
 * @brief  Header file for NVIC_SCU001 App.
 *
 */

#ifndef NVIC_SCU001_H_
#define NVIC_SCU001_H_

/******************************************************************************
**                      Include Files                                        **
******************************************************************************/

#include <DAVE3.h>

/******************************************************************************
**                      Global Macro Definitions                             **
******************************************************************************/

/******************************************************************************
**                      Global Type Definitions                              **
******************************************************************************/

/**
 * @ingroup NVIC_SCU001_publicparam
 * @{
 */


/**
 * @brief   Callback function prototype
 */
typedef void (*NVIC_SCU001_CallbackType)(uint32_t CbArg);

/**
 * @brief This data structure is used for selecting the
 * SCU Event for the  specified driver API functions.
 *
 */
typedef enum NVIC_SCU001_InterruptType{
	NVIC_SCU001_PRWARN,
	NVIC_SCU001_PI,
	NVIC_SCU001_AI,
	NVIC_SCU001_DLROVR,
	NVIC_SCU001_HDSTAT,
	NVIC_SCU001_HDCLR,
	NVIC_SCU001_HDSET,
	NVIC_SCU001_HDCR,
	NVIC_SCU001_OSCSITRIM,
	NVIC_SCU001_OSCSICTRL,
	NVIC_SCU001_OSCULSTAT,
	NVIC_SCU001_OSCULCTRL,
	NVIC_SCU001_RTC_CTR,
	NVIC_SCU001_RTC_ATIM0,
	NVIC_SCU001_RTC_ATIM1,
	NVIC_SCU001_RTC_TIM0,
	NVIC_SCU001_RTC_TIM1,
	NVIC_SCU001_RMX
}NVIC_SCU001_InterruptType;

/**
 * @brief Structure which holds NVIC_SCU001 Error Codes
 */
typedef enum NVIC_SCU001_ErrorCodeType {
  /*
	GROUPID  #17
	MODULENAME = NVIC_SCU001
  */

  /*
	ERRCODESTRING = NVIC_SCU001_FUNC_ENTRY
	STRCODESTRING = Entered Function %s
  */
  NVIC_SCU001_FUNC_ENTRY = 1U,
  /**
   * Exit specific function
   */

    /*
	ERRCODESTRING = NVIC_SCU001_FUNC_EXIT
	STRCODESTRING = Exited Function %s
  */
  NVIC_SCU001_FUNC_EXIT = 2U
  /*
	ERRORCODEEND
  */

}NVIC_SCU001_ErrorCodeType;

/**
 * @brief Data structure which has the Channel Configuration options.
 * The channel selection and address configurations are done using
 * this structure.
 */

typedef struct NVIC_SCU001_SCUIntParamType
{
  NVIC_SCU001_CallbackType CbListener; // User defined function
  uint32_t CbArg;
}NVIC_SCU001_SCUIntParamType;

typedef struct{
  NVIC_SCU001_SCUIntParamType SCU[NVIC_SCU001_RMX + 1];
}NVIC_SCU001_HandleType;

 
/**
 * @}
 */
/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/


/*******************************************************************************
**                      Extern Variables                                      **
*******************************************************************************/


/*******************************************************************************
** FUNCTION PROTOTYPES                                                        **
*******************************************************************************/

/**
 * @ingroup NVIC_SCU001_apidoc
 * @{
 */

/**
 * @brief  Function to initialize the SCU Event Masks based on  user configuration.
 *
 *
 * @param[in]  None
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * @code
 *  #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC_SCU001_Init() is called within DAVE_Init()
 *    // .....
 *    return 0;
 *  }
 *
 * @endcode<BR> </p>
 */
void  NVIC_SCU001_Init(void);

/**
 * @brief Function to register event handler functions for a specific SCU Event. The
 *        user registers the callback function and if the event is unmasked,the Interrupt
 *        handler will service the Event as well as clear the Event Status Bit.
 *
 * Service ID: 0x02
 *
 * @param[in]  Interrupt ID
 * @param[in]  User defined Event Handler
 * @param[in]  Callback Function argument if any.
 *
 * @return     None
 *
 * <b>Reentrant: NO </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * @code
 *  #include <DAVE3.h>
 *
 *  void CbListener(uint32_t CbArg)
 *  {// Callback function implementation
 *  };
 *  int main(void)
 *  {
 *    DAVE_Init(); // NVIC_SCU001_Init() is called within DAVE_Init()
 *    // Example usage of API
 *    NVIC_SCU001_RegisterCallback(NVIC_SCU001_AI,CbListener,0);
 *    // .....
 *    return 0;
 *  }
 *
 * @endcode<BR> </p>
 */
void NVIC_SCU001_RegisterCallback(
  NVIC_SCU001_InterruptType IntID,
  NVIC_SCU001_CallbackType userFunction,
  uint32_t CbArgs);

/**
 *@}
 */


#endif /* NVIC_SCU001_H_ */
