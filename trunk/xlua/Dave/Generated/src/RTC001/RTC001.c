
/*CODE_BLOCK_BEGIN[RTC001.c]*/

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
** MODIFICATION DATE : Jan 10, 2012                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** RP        App Developer                                                    **
**                                                                            **
*******************************************************************************/
/**
 * @file RTC001.c
 *
 * @brief  Real Time Clock App Implementation.
 *
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/ 
/* Inclusion of header file */
#include <DAVE3.h>
 
/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/* Update completion */
#define RTC001_UPDATE_COMPLETED	1U

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/

/*
 * Function to check whether the date is valid
 *              
 * @return     void 
 *      
 * <b>Reentrant: NO </b><BR>
 *
 */
static uint32_t RTC001_ldatevalid(uint16_t m, uint16_t d, uint16_t y);


/*
 * Function to calculate day of the week
 *              
 * @return     void 
 *      
 * <b>Reentrant: NO </b><BR>
 *
 */
static uint32_t RTC001_lweekday(uint16_t m, uint16_t d, uint16_t y);

/*
 * Function to initialize
 *
 * @return     void
 *
 * <b>Reentrant: NO </b><BR>
 *
 */
static void  RTC001_lInit(const RTC001_HandleType* Handle);

/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/



/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/



/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/



/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
 

/*
 *  Initialization function which initializes the App internal data
 *  structures to default values. 
 */ 

static void  RTC001_lInit(const RTC001_HandleType* Handle)
{
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_1>>> */
  SCU_INTERRUPT->SRCLR &= (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  								SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk |\
  								SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
  
  /* Enable alarm and periodic timer interrupts in SCU */
  SCU_INTERRUPT->SRMSK |= (((1U << SCU_INTERRUPT_SRMSK_PI_Pos) & SCU_INTERRUPT_SRMSK_PI_Msk) | \
    							((1U << SCU_INTERRUPT_SRMSK_AI_Pos) & SCU_INTERRUPT_SRMSK_AI_Msk));
  
  if (Handle->RTCInitOnce != 1 || (((RTC->CTR & RTC_CTR_ENB_Msk) >> RTC_CTR_ENB_Pos) == 0 )) 
   {
     /* RTC disabled to set the time */
     RTC001_Disable();  
     /* Calendar time and date set in RTC registers */
     RTC001_Clock_SetTime(&timeptr1);
   }     
    /* The RTC module is enabled */
	RTC->CTR |= ((uint32_t)(RTC_CTR_ENB_Msk)); 
	/* Wait for SCU register updation */
    while(!(SCU_INTERRUPT->SRRAW & (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos)));
    /* Clear the update indication field in SCU register */
    SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos);
	
     
	 
	
	
	
	
	
	
	RTC->CTR |=((uint32_t)((Handle->DividerValue << RTC_CTR_DIV_Pos) & RTC_CTR_DIV_Msk));	
    /* Wait for SCU register updation */
    while(!(SCU_INTERRUPT->SRRAW & (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos)));
    /* Clear the update indication field in SCU register */
    SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos); 
	
	
	 
	
	 
   

  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
}


/**
 *@}
 */

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/


/** @ingroup RTC001_publicparam
 * @{
 */

/*
 *  Initialization function which initializes the App internal data
 *  structures to default values.
 */
void RTC001_Init()
{
	RTC001_lInit(&RTC001_Handle);

}

/*
 *  Deinitialization function which initializes the App internal data
 *  structures to default values. 
 */
void  RTC001_DeInit(void)
{
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_2>>> */
	
  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
}


/*
 *  The function enables the RTC module.
 */
status_t  RTC001_Enable(void)
{
  status_t status = RTC001_ERROR;
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_3>>> */
 
  /* SCU register cleared */
  SCU_INTERRUPT->SRCLR &= (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  								SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk |\
  								SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
  /* RTC module enabled */
  RTC->CTR |= (RTC_CTR_ENB_Msk);
  while(!(SCU_INTERRUPT->SRRAW & (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos)));
  SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos);	
  
  status = DAVEApp_SUCCESS;	
  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
  return status;
}


/*
 *  The function disables the RTC module.
 */
 
status_t  RTC001_Disable(void)	
{
  status_t status = RTC001_ERROR;
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_4>>> */

  /* The RTC module is disabled*/
  RTC->CTR &= (~(RTC_CTR_ENB_Msk));
  while(!(SCU_INTERRUPT->SRRAW & (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos)));
  SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_CTR_Pos);	

  /* The time register values are reset */
  RTC->TIM1 = 0x00000000;
  RTC->TIM0 = 0x00000000;
  while(!(SCU_INTERRUPT->SRRAW & (1 << SCU_INTERRUPT_SRRAW_RTC_TIM0_Pos)));
  SCU_INTERRUPT->SRCLR = (1 << SCU_INTERRUPT_SRRAW_RTC_TIM0_Pos);
  SCU_INTERRUPT->SRCLR = (1 << SCU_INTERRUPT_SRRAW_RTC_TIM1_Pos);

  /* The Alarm register values are reset */
  RTC->ATIM1 = 0x00000000;
  RTC->ATIM0 = 0x00000000;
  while(!(SCU_INTERRUPT->SRRAW & (1 << SCU_INTERRUPT_SRRAW_RTC_ATIM0_Pos)));
  SCU_INTERRUPT->SRCLR = (1 << SCU_INTERRUPT_SRRAW_RTC_ATIM0_Pos);
  SCU_INTERRUPT->SRCLR = (1 << SCU_INTERRUPT_SRRAW_RTC_ATIM1_Pos);

  SCU_INTERRUPT->SRCLR &= (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  								SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk |\
  								SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
  								
  status = DAVEApp_SUCCESS;
  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
  return status;
}


/*
 *  The function gets RTC flag status.
 */	
status_t  RTC001_GetFlagStatus(RTC001_FlagType Flag)
{
  status_t status = RTC001_RESET;
  uint32_t TempValue = 0U;
  /* <<<DD_RTC001_API_6>>> */
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
	do
	{
  		if(Flag <= DAYS_FLAG)
		{
		    /* Flag value captured */
			TempValue = RTC->STSSR;
			TempValue  &= (0x1U << Flag);
		}
		else if(Flag <= YEARS_FLAG)
		{
		    /* Flag value captured */
			TempValue = RTC->STSSR;
			TempValue  &= (0x1U << ( (uint8_t)Flag + 0x01U));
		}
		else
		{
		 	/* Flag value captured */
			TempValue = RTC->STSSR;
			TempValue  &= (0x1U <<(((uint8_t)Flag) + 0x02U ));
		} 
  	    if(TempValue != 0U)
  	    {
  	      status = RTC001_SET;
  	    }

	}while(0);
	FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
	return status;
}


/*
 *  The function clears RTC flag status.
 */
void  RTC001_ClearFlagStatus(RTC001_FlagType Flag)
{
  /* <<<DD_RTC001_API_5>>> */
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
	do
	{
		if(Flag <= DAYS_FLAG)
		{
			/* Flag value cleared */
			RTC->CLRSR |= (0x01U << Flag);
		}
		else if(Flag <= YEARS_FLAG)
		{
			/* Flag value cleared */
			RTC->CLRSR |= (0x01U << ((uint8_t) Flag + 0x01U));
		}
		else
		{
			/* Flag value cleared */
			RTC->CLRSR |= (0x01U << ((uint8_t) (Flag + 0x02U )));
		} 

	}while(0);
	FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
}


/*
 *  Interface to config the alarm.
 */

status_t RTC001_ConfigAlarm (const RTC001_HandleType* Handle, RTC001_TimeHandle* timeptr, AlarmCallBackPtr CallBack,uint32_t CbArg)
{
  uint16_t m1 = 0,y1 = 0,d1 = 0,t1 = 0;
  status_t status = RTC001_ERROR;
  /* <<<DD_RTC001_API_11>>> */
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
  do
  {
   /* <<<DD_RTC001 _API_4>>> */
  /* Clearing SRCLR register */
  SCU_INTERRUPT->SRCLR &= (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  								SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk |\
  								SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
  	/* Check null callback condition */							
    if(CallBack == NULL)
    {
      status = RTC001_INVALID_HANDLE;
      ERROR(GID_RTC001,RTC001_INVALID_HANDLE, 0, NULL);
      break;
    }
  	else
  	{							
	  NVIC_SCU001_RegisterCallback(NVIC_SCU001_AI,CallBack,CbArg);
	}
	
  /*   Write values into ATIM0 and ATIM1 registers  */

    m1 = timeptr->Month;
    y1 = timeptr->Year;
    d1 = timeptr->Days;
    /* Check whether the date entered is valid */
    if (RTC001_ldatevalid(m1,d1,y1))
    { 

	  t1 = ((uint32_t)(RTC001_lweekday(m1,d1,y1)));
	  if(t1<6)
	  {
	    t1=(t1+1);
	  }
	  else if(t1==6)
	  {
	    t1=0;
	  }

      RTC->ATIM0 = (((timeptr->Sec) & RTC_ATIM0_ASE_Msk) | ((((uint32_t)timeptr->Min) << RTC_ATIM0_AMI_Pos) & RTC_ATIM0_AMI_Msk) | \
      ((((uint32_t)timeptr->Hours) << RTC_ATIM0_AHO_Pos) & RTC_ATIM0_AHO_Msk) | \
      ((((uint32_t)((timeptr->Days)-1)) << RTC_ATIM0_ADA_Pos) & RTC_ATIM0_ADA_Msk));

      RTC->ATIM1 = ((t1) | (((uint32_t)((timeptr->Month)-1)) << RTC_ATIM1_AMO_Pos)|\
      (((uint32_t)timeptr->Year) << RTC_ATIM1_AYE_Pos));

	  while(!(SCU_INTERRUPT->SRRAW & (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_ATIM0_Pos)));
      SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_ATIM0_Pos);   
      SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_ATIM1_Pos);


    }  
    else
    {
      status = RTC001_INVALID_HANDLE;
      ERROR(GID_RTC001,status, 0, NULL);
      break;
    }
    status = DAVEApp_SUCCESS;   
  }while(0);
  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
  return status;
}
	

/*
 *  Interface to get the RTC time at a particular instance.
 */
 
status_t RTC001_Clock_GetTime (RTC001_TimeHandle* timeptr)
{
  status_t status = RTC001_ERROR;
  uint32_t temp0,temp1;
  temp0 = RTC->TIM0;
  temp1 = RTC->TIM1;
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_12>>> */
  /* Initialize the header of the list */

  /*   Read values from TIM0 and TIM1 registers  */

  /*   Days of Week value  */
	timeptr->DaWe = (uint8_t)(temp1 & RTC_TIM1_DAWE_Msk);
  /*   Month value  */
	timeptr->Month = (uint8_t)(((temp1 & RTC_TIM1_MO_Msk) >> RTC_TIM1_MO_Pos) + 1U);
  /*   Year value  */
	timeptr->Year = (uint32_t)((temp1 & RTC_TIM1_YE_Msk) >> RTC_TIM1_YE_Pos);

  /*   Seconds value  */
	timeptr->Sec =  (uint8_t)((temp0 & RTC_TIM0_SE_Msk));
  /*   Minutes value  */
	timeptr->Min = (uint8_t)(((temp0 & RTC_TIM0_MI_Msk) >> RTC_TIM0_MI_Pos));
  /*   Hours value  */
	timeptr->Hours = (uint8_t)(((temp0 & RTC_TIM0_HO_Msk) >> RTC_TIM0_HO_Pos));
  /*   Days value starting from the 1st day of the month */
	timeptr->Days = (uint8_t)(((temp0 & RTC_TIM0_DA_Msk) >> RTC_TIM0_DA_Pos) + 1U);
	status = DAVEApp_SUCCESS;
  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
  return status;
}


/*
 *  This function is to set the time.
 */
status_t RTC001_Clock_SetTime(RTC001_TimeHandle* timeptr)
{
  uint16_t m = 0,y =0,d = 0,t = 0;
  status_t status = RTC001_ERROR;
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_13>>> */
  
  /*   Write values into TIM0 and TIM1 registers  */

  SCU_INTERRUPT->SRCLR &= (SCU_INTERRUPT_SRCLR_RTC_CTR_Msk | SCU_INTERRUPT_SRCLR_RTC_ATIM0_Msk | \
  								SCU_INTERRUPT_SRCLR_RTC_ATIM1_Msk | SCU_INTERRUPT_SRCLR_RTC_TIM0_Msk |\
  								SCU_INTERRUPT_SRCLR_RTC_TIM1_Msk);
 
  /*   Days of Week value  */
  m = timeptr->Month;
  y = timeptr->Year;
  d = timeptr->Days;
  
  do
  {    
    if (RTC001_ldatevalid(m,d,y))  
    { 
	  t = ((uint32_t)(RTC001_lweekday(m,d,y)));
	  if(t<6)
	  {
	    t=(t+1);
	  }
	  else if(t==6)
	  {
	    t=0;
	  }
      RTC->TIM1 = ((t) | (((uint32_t)((timeptr->Month)-1)) << 8U)|\
      (((uint32_t)timeptr->Year) << 16U));

      RTC->TIM0 = ((timeptr->Sec) | (((uint32_t)timeptr->Min) << 8U) | \
      (((uint32_t)timeptr->Hours) << 16U) | \
      (((uint32_t)((timeptr->Days)-1)) << 24U));

      while(!(SCU_INTERRUPT->SRRAW & (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_TIM0_Pos)));
      SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_TIM0_Pos);   
      SCU_INTERRUPT->SRCLR = (RTC001_UPDATE_COMPLETED << SCU_INTERRUPT_SRRAW_RTC_TIM1_Pos);

    }  
    else
    {
      status = RTC001_INVALID_HANDLE;
      ERROR(GID_RTC001,status, 0, NULL);
      break;
    }
   
  }while(0);
  status = DAVEApp_SUCCESS;
  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
  return status;
}


/*
 *  This function is to get the time in seconds calculated from Epoc time.
 */

status_t RTC001_Time(time_t* time)
{
  uint8_t TimeMonthVar=0,TimeMonth1=0,TimeMonth2=0,TimeDay1=0,TimeDay2=0,TimeHour=0,TimeMinute=0,TimeSecond=0;
  uint32_t TimeMonthCalc1=0,TimeYear1=0,TimeYear2=0,TimeLpVar=0;
  uint32_t TimeYear3=0,TimeMonth3=0,TimeDay3=0,TimeHour2=0,TimeMinute2=0;
  uint8_t Count = 0U;
  uint32_t Temp_Value1 =0,Temp_Value2=0;
  time_t Time =0;
  status_t ReturnStatus;
  
  FUNCTION_ENTRY(GID_RTC001,RTC001_FUNCTION_ENTRY);
   /* <<<DD_RTC001_API_15>>> */
  do
  {
    if((RTC->CTR & (RTC_CTR_ENB_Msk)) == 0)
    {
      ReturnStatus = RTC001_ERROR;
      break;
    }
    if(time == NULL)
    {
      ReturnStatus = RTC001_ERROR;
      break;
    }

    /*   Read values from TIM0 and TIM1 registers  */
    TimeYear1 = ((uint32_t)((RTC->TIM1 & RTC_TIM1_YE_Msk) >> 16U));
    TimeMonth1 = 	((uint8_t)(((RTC->TIM1 & RTC_TIM1_MO_Msk) >> 8U) + 1U));
    TimeDay1 = ((uint8_t)(((RTC->TIM0 & RTC_TIM0_DA_Msk) >> 24U) + 1U));
    TimeHour = ((uint8_t)(((RTC->TIM0 & RTC_TIM0_HO_Msk) >> 16U)));
    TimeMinute = ((uint8_t)(((RTC->TIM0 & RTC_TIM0_MI_Msk) >> 8U)));
    TimeSecond = ((uint8_t)((RTC->TIM0 & RTC_TIM0_SE_Msk)));
  
	/* Count the number of days to be adjusted for leap years, start from previous year */
    /*TimeLpYear = TimeYear1;*/
    for (TimeLpVar=(TimeYear1-1); TimeLpVar>= 1970U; TimeLpVar--)
    {
      if((((TimeLpVar) % 400) ==0) || ((((TimeLpVar) % 100) != 0) && (((TimeLpVar) %4) == 0)))
      {
        Count++;
      }
    }
    /*if current year is leap year add 1 only if March or later*/
    if((((TimeYear1) % 400) ==0) || ((((TimeYear1) % 100) != 0) && (((TimeYear1) %4) == 0)))
    {
	  if(TimeMonth1 > 2)
	  {
		Count++;
	  }
    }

    Temp_Value1 = (Count * 0x18U * 0x3CU * 0x3CU);

	/* Difference Calculation */
    TimeYear2 = (TimeYear1 - (0x7B2U));
    TimeMonth2 = (TimeMonth1 - (1U));
    TimeDay2 = (TimeDay1 - (1U));
	
    /* Calculation of seconds for ordinary year */
    TimeYear3 = (TimeYear2 * 0x16DU * 0x18U * 0x3CU * 0x3CU);
  /* Calculation of seconds for ordinary month */
    for (TimeMonthVar=TimeMonth2;TimeMonthVar>=1U;TimeMonthVar--)
    {
      if((TimeMonthVar <= 7) && ((TimeMonthVar % 2) == 1))
      {
        TimeMonthCalc1 = (1U * 0x1FU * 0x18U * 0x3CU * 0x3CU);		/* 31*/
	  }
	  if((TimeMonthVar <= 7) && ((TimeMonthVar % 2) == 0))
	  {
	    if(TimeMonthVar == 2)
	    {
	      TimeMonthCalc1 = (1U * 0x1CU * 0x18U * 0x3CU * 0x3CU);	 /* 28*/
	    }
	    else
	    {
	      TimeMonthCalc1 = (1U * 0x1EU * 0x18U * 0x3CU * 0x3CU);	   /* 30*/
	    }
	  }
	  if((TimeMonthVar > 7) && ((TimeMonthVar % 2) == 0))
	  {
        TimeMonthCalc1 = (1U * 0x1EU * 0x18U * 0x3CU * 0x3CU);		 /* 30*/
	  }
	  if((TimeMonthVar > 7) && ((TimeMonthVar % 2) == 1))
	  {
	    TimeMonthCalc1 = (1U * 0x1FU * 0x18U * 0x3CU * 0x3CU);		 /* 31*/
	  }
      TimeMonth3 = TimeMonth3 + TimeMonthCalc1;
    }
	/* Calculation of seconds for ordinary day */
    TimeDay3 = (TimeDay2 * 0x18U * 0x3CU * 0x3CU);
	/* Calculation of seconds for ordinary hour */
    TimeHour2 = (TimeHour * 0x3CU * 0x3CU);
	/* Calculation of seconds for ordinary minute */
    TimeMinute2 = (TimeMinute * 0x3CU);
	/* Calculation of seconds for ordinary second */
	
    Temp_Value2 = (TimeYear3 + TimeMonth3 + TimeDay3 + TimeHour2 + TimeMinute2 + TimeSecond);
    Time = Temp_Value1 + Temp_Value2;
    *time = Time;
    ReturnStatus = DAVEApp_SUCCESS;

  }
  while(0);
  FUNCTION_EXIT(GID_RTC001,RTC001_FUNCTION_EXIT);
  return ReturnStatus;
}
/* return 1 if date is valid, 0 otherwise.	*/
static uint32_t RTC001_ldatevalid(uint16_t m,uint16_t d,uint16_t y)
{
  uint8_t valid;
  do{
  if ((m == 0) || (m > 12) )
  {
	valid = 0;
    break;
  }
  if (m != 2)
  {
    if ( (d == 0) || (d > 31) )
    {
      valid = 0;
	  break;
    }
    if ( (m == 4) || (m == 6) || (m == 9) || (m == 11) )
    {
      if ( d > 30 )
      {
        valid = 0;
		break;
      }
      else
      {
		valid = 1;
        break;
      }
    }
  }
  else
  {
    if ( d > 29 )
    {
      valid = 0;
      break;
    }
    if ( d < 29 )
    {
      valid = 1;
      break;
    }
    if ((((y) % 400U) ==0) || ((((y) % 100U) != 0) && (((y) %4U) == 0)))
    {
      valid = 1;
      break;
    }
    else 
    {
      valid = 0;
      break;
    }
  }
  valid = 1;
  }while(0);
  return valid;
}

/* given month, day, year, returns day of week, eg. Monday = 0 etc.
 tested for 1901 to 2099 (seems to work from 1800 on too)*/ 

static uint32_t RTC001_lweekday(uint16_t m,uint16_t d,uint16_t y)
{
    uint16_t vx, tx, ix, feb;
    uint8_t vx_list[] = {0, 20, 0, 16, 24, 20, 0, 24, 4, 12, 8, 16, 12,};

    vx = vx_list[m];
    if(y > 1900)
    {
      y = y - 1900;
    }
    feb = m  > 2 ;
	/* take care of February */
    ix = ((y - 21) % 28) + vx + feb;
	/* take care of leap year */
    tx = ((ix + (ix / 4)) % 7) + d;
    return (tx % 7);
}

/**
 *@}
 */

/*CODE_BLOCK_END*/
