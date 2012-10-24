/*******************************************************************************
 Copyright (c) 2011, Infineon Technologies AG                                 **
 All rights reserved.                                                         **
                                                                              **
 Redistribution and use in source and binary forms, with or without           **
 modification,are permitted provided that the following conditions are met:   **
                                                                              **
 *Redistributions of source code must retain the above copyright notice,      **
 this list of conditions and the following disclaimer.                        **
 *Redistributions in binary form must reproduce the above copyright notice,   **
 this list of conditions and the following disclaimer in the documentation    **
 and/or other materials provided with the distribution.                       **
 *Neither the name of the copyright holders nor the names of its contributors **
 may be used to endorse or promote products derived from this software without** 
 specific prior written permission.                                           **
                                                                              **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"  **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE    **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE   **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE   **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR         **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF         **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS    **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN      **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)       **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE   **
 POSSIBILITY OF SUCH DAMAGE.                                                  **
                                                                              **
 To improve the quality of the software, users are encouraged to share        **
 modifications, enhancements or bug fixes with Infineon Technologies AG       **
 dave@infineon.com).                                                          **
                                                                              **
********************************************************************************
**                                                                            **
**                                                                            **
** PLATFORM : Infineon XMC4000 Series                                         **
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
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** NPJ        App Developer                                                   **
*******************************************************************************/
/**
 * @file   TMPS001.c
 *
 * @brief  Die Temperature Sensor TMPS001 App
 *
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/** Inclusion of header file */
#include <DAVE3.h>

/*******************************************************************************
**                      Public Macro Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/

status_t  TMPS001_StartMeasurement(void) 
{
  uint32_t Result = TMPS001_FAIL;
  /* <<<DD_TMPS001_API_2>>> */
  do 
  {
	if (((SCU_GENERAL->DTSCON & SCU_GENERAL_DTSCON_PWD_Msk) >> \
		  SCU_GENERAL_DTSCON_PWD_Pos) == 1 )
	{
	  Result = TMPS001_FAIL ;
	  break ;
	}
    if(((SCU_GENERAL->DTSSTAT & SCU_GENERAL_DTSSTAT_BUSY_Msk)>>\
    	 SCU_GENERAL_DTSSTAT_BUSY_Pos) == 1 )
    {
      Result = TMPS001_BUSY ;
      break ;
    }

    while (!(SCU_GENERAL->DTSSTAT & SCU_GENERAL_DTSSTAT_RDY_Msk)) 
    {
	}
    /* starts a measurement of the DTS. */
    SET_BIT (SCU_GENERAL->DTSCON, 1) ;
    Result = DAVEApp_SUCCESS;
      
  }while (0) ;
  return Result;    
}


status_t  TMPS001_GetStatus(void)
{
  uint32_t Result = TMPS001_FAIL;
  /** <<<DD_TMPS001_API_3>>> */
  do
  {
    if (((SCU_GENERAL->DTSCON & SCU_GENERAL_DTSCON_PWD_Msk) >> \
    	  SCU_GENERAL_DTSCON_PWD_Pos) == 1 )
    {
	  Result = TMPS001_FAIL ; 
      break ;
    }
    if(((SCU_GENERAL->DTSSTAT & SCU_GENERAL_DTSSTAT_BUSY_Msk)>>\
    	 SCU_GENERAL_DTSSTAT_BUSY_Pos) == 1 )
    {
      Result = TMPS001_BUSY ;
      break ;
    }
    if  (((SCU_GENERAL->DTSSTAT & SCU_GENERAL_DTSSTAT_RDY_Msk) >>\
    	   SCU_GENERAL_DTSSTAT_RDY_Pos) == 1 )
    {
      Result =  TMPS001_READY ;
    }
  } while (0) ;
  return Result ;    
}
     
uint32_t  TMPS001_ReadTemp (void) 
{
   uint32_t Temp = 0;
  /* <<<DD_TMPS001_API_4>>> */
  do
  {
	if (((SCU_GENERAL->DTSCON & SCU_GENERAL_DTSCON_PWD_Msk) >> \
	    SCU_GENERAL_DTSCON_PWD_Pos) == 1 )
    {
      break ;
    }
    if(((SCU_GENERAL->DTSSTAT & SCU_GENERAL_DTSSTAT_BUSY_Msk)>>\
    	 SCU_GENERAL_DTSSTAT_BUSY_Pos) == 1 )
    {
      break ;
    }
	Temp  = (SCU_GENERAL->DTSSTAT  & SCU_GENERAL_DTSSTAT_RESULT_Msk);
	if(Temp != 0 )
	Temp  = (Temp - 596 )/ 2.03 ;
  }while(0) ;
  
  return Temp;
}
