/**************************************************************************//**
 *
 * Copyright (C) 2011 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with
 * Infineon's microcontrollers.
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
** PLATFORM : Infineon XMC4000 Series   			                          **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Jan 12, 2012                                           **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** NPJ        App Developer                                                   **
*******************************************************************************/

/**
 * @file TMPS001.h
 *
 * @brief  Die Temperature Sensor App implementation header file.
 *
 */

 #ifndef TMPS001_H_
 #define TMPS001_H_
/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/

#include <DAVE3.h>

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/**
 * @ingroup TMPS001_publicparam
 * @{
 */

/**
 * Global structure to indicate Temp Sensor status
 *
 */
typedef enum TMPS001_SensorStateType{
  TMPS001_DISABLE,
  TMPS001_ENABLE ,
  TMPS001_FAIL,
  TMPS001_BUSY ,
  TMPS001_READY
}TMPS001_SensorStateType;

/**
 * @}
 */

/******************************************************************************
** FUNCTION PROTOTYPES                                                       **
******************************************************************************/

/**
 * @ingroup TMPS001_apidoc
 * @{
 */
/**
 * This macro enables the Die Temperature Sensor.
 *
 *
 * @param[in]  Null <BR>
 *
 * <b>Reentrant: NO </b><BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * 
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    TMPS001_Enable();
 *    // ....
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 */
#define TMPS001_Enable()     ((SCU_GENERAL->DTSCON) &= ~(1U))

/**
 * This macro disables the Die Temperature Sensor
 *
 *
 * @param[in] Null  <BR>
 *
 * <b>Reentrant: NO </b> <BR>
 *
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 * 
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    TMPS001_Disable();
 *    // ....
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 */
#define TMPS001_Disable()    (SCU_GENERAL->DTSCON |= 0x01)


/**
 * @brief      This function gets the status of the die temperature sensor
 *
 *
 * @param[in]  Null <BR>
 *
 * @return     status_t<BR>
 *             TMPS001_READY DTS is in ready state<BR>
 *             TMPS001_BUSY  Die Temperature Sensor Busy<BR>
 *             TMPS001_FAIL  DTS not powered on<BR>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    uint32_t Temp =0;
 *    TMPS001_Enable();
 *    if(TMPS001_GetStatus() == TMPS001_READY)
 *    TMPS001_StartMeasurement();
 *    //.. delay
 *    Temp = TMPS001_ReadTemp();
 *    // ....
 *    return 0;
 *  }
 * @endcode<BR> </p>

 *
 *
 */
 status_t  TMPS001_GetStatus(void);
 /**
 * @brief      This function calculates the temperature
 *              and returns the value  in celsius.
 *             Note that the temperature returns only a integer value,
 *             as the resolution of  DTS sensor is +/- 6 degree celsius
 *
 *
 * @param[in]  Pointer contain measured value returned by function
 *
 * @return     uint32_t(Measured temperature in Celcius)<BR>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    uint32_t Temp =0;
 *    TMPS001_Enable();
 *    if(TMPS001_GetStatus() == TMPS001_READY)
 *    TMPS001_StartMeasurement();
 *    //.. delay
 *    Temp = TMPS001_ReadTemp();
 *    // ....
 *    return 0;
 *  }
 * @endcode<BR> </p>

 *
 */
 uint32_t  TMPS001_ReadTemp(void) ;
/**
 * @brief      The Die Temperature Sensor (DTS) generates a measurement by calling
 *			   TMPS001_StartMeasurement() result that indicates directly the current
 *			   temperature.The result of the measurement  can be obtained 
 *			   by calling TMPS001_ReadTemp().
 *
 * @param[in]  Null <BR>
 *
 * @return     status_t<BR>
 *             DAVEApp_SUCCESS if measurement success<BR>
 *             TMPS001_BUSY  Die Temperature Sensor Busy<BR>
 *             TMPS001_FAIL DTS not powered on<BR>
 *
 *
 * <b>Reentrant: NO </b><BR>
 * <BR><P ALIGN="LEFT"><B>Example:</B>
 * @code
 *
 * #include <DAVE3.h>
 *
 *  int main(void)
 *  {
 *    uint32_t Temp =0;
 *    TMPS001_Enable();
 *    if(TMPS001_GetStatus() == TMPS001_READY)
 *    TMPS001_StartMeasurement();
 *    //.. delay
 *    Temp = TMPS001_ReadTemp();
 *    // ....
 *    return 0;
 *  }
 * @endcode<BR> </p>
 *
 *
 */

status_t  TMPS001_StartMeasurement(void);

/**
 *@}
 */

#endif /* TMPS001_H_ */


