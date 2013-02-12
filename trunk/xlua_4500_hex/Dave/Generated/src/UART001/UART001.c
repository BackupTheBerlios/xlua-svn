/*CODE_BLOCK_BEGIN[UART001.c]*/
/******************************************************************************
 Copyright (c) 2011, Infineon Technologies AG                                **
 All rights reserved.                                                        **
                                                                             **
 Redistribution and use in source and binary forms, with or without          **
 modification,are permitted provided that the following conditions are met:  **
                                                                             **
 *Redistributions of source code must retain the above copyright notice,     **
 this list of conditions and the following disclaimer.                       **
 *Redistributions in binary form must reproduce the above copyright notice,  **
 this list of conditions and the following disclaimer in the documentation   **
 and/or other materials provided with the distribution.                      **
 *Neither the name of the copyright holders nor the names of its             **
 contributors may be used to endorse or promote products derived from this   **
 software without specific prior written permission.                         **
                                                                             **
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" **
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE   **
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE  **
 ARE  DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE  **
 LIABLE  FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR        **
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF        **
 SUBSTITUTE GOODS OR  SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS   **
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN     **
 CONTRACT, STRICT LIABILITY,OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)      **
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE  **
 POSSIBILITY OF SUCH DAMAGE.                                                 **
                                                                             **
 To improve the quality of the software, users are encouraged to share       **
 modifications, enhancements or bug fixes with Infineon Technologies AG      **
 dave@infineon.com).                                                         **
                                                                             **
*******************************************************************************
**                                                                           **
**                                                                           **
** PLATFORM : Infineon XMC4000 Series   			                                  **
**                                                                           **
** COMPILER : Compiler Independent                                           **
**                                                                           **
** AUTHOR   : App Developer                                                  **
**                                                                           **
** MAY BE CHANGED BY USER [yes/no]: Yes                                      **
**                                                                           **
** MODIFICATION DATE : Dec 04, 2012                                          **
**                                                                           **
******************************************************************************/
/******************************************************************************
**                      Author(s) Identity                                   **
*******************************************************************************
**                                                                           **
** Initials     Name                                                         **
** --------------------------------------------------------------------------**
** PAE          App Developer                                                **
******************************************************************************/
/**
 * @file UART001.c
 * 
 * @App Version UART001 <1.0.4>
 *
 * @brief  UART001 App provides non reentrant APIs for higher level Apps 
 *          which can be used in a Non -RTOS environment. 
 *           Limitations of Simple UART App
 *           a) Read/Write functions are non reentrant.
 *           b) No support for DMA mode
 */
/*
 * Revision History
 * 04 Dec 2012 v1.0.4 Changes from 1.0.2 are 
 * 1. Modified for baud calculation during initialization.
 * 2. Modified the macros FUNCTION_ENTRY, FUNCTION_EXIT and ERROR
 * 3. The hardcoded values are replaced with macros in 
 *    UART001_lConfigureBaudRate() function.
 * 4. The PCTQ value updation in BRG register is removed as the value is taken
 *    as zero.
 * 5. Modified as per coding guidelines and MISRA checks
 */
/******************************************************************************
 ** INCLUDE FILES                                                            **
 *****************************************************************************/

#include <DAVE3.h>

  
/*****************************************************************************
              DUMMY DEFINTIONS OF DEBUG LOG MACROS
*****************************************************************************/
/*These definitions are included here to avoid compilation errors,
 since the DBG002 app is not part of the project. All the macros are defined
 as empty*/ 
#ifndef _DBG002_H_

#define DBG002_RegisterCallBack(A,B,C)
#define DBG002_I(e) 
#define DBG002_IG(e,g) 
#define DBG002_IH(e,h) 
#define DBG002_IP(e,p) 
#define DBG002_IGH(e,g,h) 
#define DBG002_IGP(e,g,p) 
#define DBG002_IHP(e,h,p) 
#define DBG002_IGHP(e,g,h,p) 
#define DBG002_N(e) 
#define DBG002_NG(e,g) 
#define DBG002_NH(e,h) 
#define DBG002_NP(e,p) 
#define DBG002_NGH(e,g,h) 
#define DBG002_NGP(e,g,p) 
#define DBG002_NHP(e,h,p) 
#define DBG002_NGHP(e,g,h,p) 
#define DBG002_ID(e) 
#define DBG002_IS(e) 
#define DBG002_ISG(e,g) 
#define DBG002_SAFETY_CRITICAL(groupid,messageid,length,value)
#define DBG002_CRITICAL(groupid,messageid,length,value)
#define DBG002_ERROR(groupid,messageid,length,value)
#define DBG002_WARNING(groupid,messageid,length,value)
#define DBG002_INFO(groupid,messageid,length,value)
#define DBG002_TRACE(groupid,messageid,length,value)
#define DBG002_FUNCTION_ENTRY(GID, Status) 
#define DBG002_FUNCTION_EXIT(GID, Status) 

#endif/* End of defintions of dummy Debug Log macros*/                  
  
 
  /* System Core clock frequency in MHz */
#define UART001_CLOCK  120 

/******************************************************************************
**                      Private Macro Definitions                            **
******************************************************************************/
#define APP_GID DBG002_GID_UART001

/* Denominator for Time Quanta Counter*/
#define UART001_BRG_DCTQ                               (0x10UL)
/* Sample Point for bit value */
#define UART001_PCR_SP                                 (0x09UL)
/*Flag Offset Transmit Receive Buffer */
#define UART001_FLAG_OFFSET                            (0x05U)

#define UART001_MAX_VALUE                              (1023.0F)
/* (DCTQ + 1) DCTQ value is 16 */
#define UART001_DCTQ_VALUE                             (0x11) 
#define UART001_MAX_STEPVALUE                          (1024.0F)
/* Intermediate step value to calculate Pdiv */
#define UART001_IM_STEPVALUE                           (500.0F)
/* UART step value for the configured baud rate */
#define UART001_STEP_VALUE                             (0x1f5UL)

/* UART Pdiv value for the configured baud rate */
#define UART001_PDIV_VALUE                             (0x1dUL)

/******************************************************************************
**                      Private Type Definitions                             **
******************************************************************************/


/******************************************************************************
**                 Private Function Declarations:
******************************************************************************/

/* Initializes the App based on User provide configuration. */
void UART001_lInit (const UART001_HandleType* Handle);

/* Give optimized PDIV and STEP value for the given baud rate */ 
void UART001_lConfigureBaudRate\
                           (uint32_t BaudRate,uint32_t* Pdiv,uint32_t* Step);
/******************************************************************************
**                      Global Constant Definitions                          **
******************************************************************************/

/******************************************************************************
**                      Global Variable Definitions                          **
******************************************************************************/

/******************************************************************************
**                      Private Constant Definitions                         **
******************************************************************************/

/******************************************************************************
**                 Function like macro definitions                           **
******************************************************************************/
/******************************************************************************
**                      Private Function Definitions                         **
******************************************************************************/
/* Initializes the App based on User provide configuration. */
 
void UART001_lInit (const UART001_HandleType* Handle)
{
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;

  DBG002_FUNCTION_ENTRY(APP_GID,UART001_FUN_ENTRY);
 /* <<<DD_UART001_API_1>>>*/
 
  /** UART initialization  */
  
  /* Enable the USIC Channel */
  UartRegs->KSCFG |= ((((uint32_t)0x01  & USIC_CH_KSCFG_MODEN_Msk)) | \
                       (((uint32_t)0x01 << USIC_CH_KSCFG_BPMODEN_Pos) &  \
                         USIC_CH_KSCFG_BPMODEN_Msk)); 
  
   
  /* Configuration of USIC Channel Fractional Divider */

  /* Fractional divider mode selected */
  UartRegs->FDR |= (((uint32_t)0x02 << USIC_CH_FDR_DM_Pos) \
                                                         & USIC_CH_FDR_DM_Msk);
  
  /* Step value */
  UartRegs->FDR |= (UART001_STEP_VALUE & USIC_CH_FDR_STEP_Msk);
          
  /* The PreDivider for CTQ, PCTQ = 0  */
  /* The Denominator for CTQ, DCTQ = 16 */
    
  UartRegs->BRG |= (((UART001_BRG_DCTQ  << USIC_CH_BRG_DCTQ_Pos) &  \
                      USIC_CH_BRG_DCTQ_Msk) | \
                    ((UART001_PDIV_VALUE << USIC_CH_BRG_PDIV_Pos) &  \
                      USIC_CH_BRG_PDIV_Msk)); 
 
 
  /* Configuration of USIC Shift Control */
  
  /* Transmit/Receive LSB first is selected  */
  /* Transmission Mode (TRM) = 1  */
  /* Passive Data Level (PDL) = 1 */
  UartRegs->SCTR |= ((((uint32_t)0x01  << USIC_CH_SCTR_PDL_Pos) & \
    USIC_CH_SCTR_PDL_Msk ) | \
    (((uint32_t)0x01  <<  USIC_CH_SCTR_TRM_Pos ) &   USIC_CH_SCTR_TRM_Msk ));
  /* Set Word Length (WLE) & Frame Length (FLE) */
  UartRegs->SCTR |= ((((uint32_t)Handle->DataBits  << USIC_CH_SCTR_FLE_Pos) & \
                      USIC_CH_SCTR_FLE_Msk ) | \
                     (((uint32_t)Handle->DataBits  << USIC_CH_SCTR_WLE_Pos) & \
                        USIC_CH_SCTR_WLE_Msk));

       
  /* Configuration of USIC Transmit Control/Status Register */ 
  /* TBUF Data Enable (TDEN) = 1 */
  /* TBUF Data Single Shot Mode (TDSSM) = 1 */
	
  UartRegs->TCSR |= ((((uint32_t)0x01  << USIC_CH_TCSR_TDEN_Pos) & \
    USIC_CH_TCSR_TDEN_Msk ) | \
    (((uint32_t)0x01  << USIC_CH_TCSR_TDSSM_Pos) & USIC_CH_TCSR_TDSSM_Msk));

  /* Configuration of Protocol Control Register */ 
  /* Sample Mode (SMD) = 1 */
  /* 1 Stop bit is selected */   
  /* Sample Point (SP) = 2 */
  /* Pulse Length (PL) = 0 */
  
  UartRegs->PCR_ASCMode |= ((((uint32_t)0x01 & USIC_CH_PCR_ASCMode_SMD_Msk)) |\
    (((uint32_t)Handle->StopBit  << USIC_CH_PCR_ASCMode_STPB_Pos) & \
    USIC_CH_PCR_ASCMode_STPB_Msk) | \
    ((UART001_PCR_SP  << USIC_CH_PCR_ASCMode_SP_Pos) & \
    USIC_CH_PCR_ASCMode_SP_Msk));
      
  if(Handle->RecvNoiseEn)
  {
   	/* Enable Receiver Noise Interrupt*/  
    UartRegs->PCR_ASCMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR5_Pos) & \
		  	  	  	  	  USIC_CH_PCR_CTR5_Msk); 
  }
  
  if(Handle->FormatErrEn)
  {
   	/* Enable Format Error Interrupt*/  
    UartRegs->PCR_ASCMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR6_Pos) & \
		  	  	  	  	                                    USIC_CH_PCR_CTR6_Msk); 
  }
  
  if(Handle->FrameFinEn)
  {
   	/* Enable Frame Finished Interrupt*/  
    UartRegs->PCR_ASCMode |=(((uint32_t)0x01  << USIC_CH_PCR_CTR7_Pos) & \
		  	                                   	  	  	  USIC_CH_PCR_CTR7_Msk); 
  }
  
  /* Configuration of Protocol Status Register */ 
  /* TBIF is set to simplify polling*/
  UartRegs->PSR_ASCMode |= (((uint32_t)0x01  << USIC_CH_PSR_TBIF_Pos) & \
                                                        USIC_CH_PSR_TBIF_Msk); 
	
  /* Configuration of Transmitter Buffer Control Register */ 
  UartRegs->TBCTR |= ((((uint32_t)Handle->TxLimit  << \
                    USIC_CH_TBCTR_LIMIT_Pos ) & USIC_CH_TBCTR_LIMIT_Msk));
    
  /* Configuration of Receiver Buffer Control Register */ 
  UartRegs->RBCTR |= ((((uint32_t)Handle->RxLimit  << \
                       USIC_CH_RBCTR_LIMIT_Pos) & USIC_CH_RBCTR_LIMIT_Msk) | \
	                    (((uint32_t)0x01 << USIC_CH_RBCTR_LOF_Pos) & \
                       USIC_CH_RBCTR_LOF_Msk));
   
  /* Configuration of Channel Control Register */ 
  /* parity generation is disabled*/
  UartRegs->CCR |= (((uint32_t)(UART_MODE  & USIC_CH_CCR_MODE_Msk)) | \
                    (((uint32_t)Handle->Parity  << USIC_CH_CCR_PM_Pos) & \
                     USIC_CH_CCR_PM_Msk));
  
  DBG002_FUNCTION_EXIT(APP_GID,UART001_FUN_EXIT);
}


/* Give optimized PDIV and STEP value for the given baud rate */ 
void UART001_lConfigureBaudRate\
                              (uint32_t BaudRate,uint32_t* Pdiv,uint32_t* Step)
{
	float ratio = (float)0;
	float TempBaud = (float)0;
	float TempPdiv = (float)0;
	float TempStep = (float)0;
	TempBaud = (float)BaudRate;
	ratio = (((((float)UART001_CLOCK * (float)1000000)/ \
             ((float)UART001_DCTQ_VALUE * (float)UART001_MAX_STEPVALUE)) * \
            UART001_IM_STEPVALUE)/TempBaud);
	/* Calculating optimum PDIV value */
	if( ratio <= (float)1)
	{
		TempPdiv = (float)0;
	}
	else
	{
		TempPdiv =  ratio - (float)1;
		if( TempPdiv > UART001_MAX_VALUE)
		{
			TempPdiv = UART001_MAX_VALUE;
		}
	}
	*Pdiv = (uint32_t)TempPdiv;
	/* Calculating STEP value */
	TempStep = ((((TempBaud * (float)UART001_DCTQ_VALUE * \
	             (float)UART001_MAX_STEPVALUE) / (float)1000000) * \
	             ((float)1+ (float)(*Pdiv))) / (float)(UART001_CLOCK));

	if(TempStep > UART001_MAX_VALUE)
	{
		TempStep = UART001_MAX_VALUE;
	}
	*Step = (uint32_t)TempStep;
}
/******************************************************************************
**                      Public Function Definitions                          **
******************************************************************************/
void UART001_Init(void)
{

/* Reset the Peripheral*/
    RESET001_DeassertReset(PER0_USIC0); 
    UART001_lInit(&UART001_Handle0);     
    /* Configuration of TX Pin 1.5 based on User configuration */
    /* PDR_PD = 0  */
    PORT1->PDR0  &= (~(PORT1_PDR0_PD5_Msk));         
    /* Configuration of RX Pin 1.4 based on User configuration */
	     
}
 /* Function provide to reset the App to default values. */
 void  UART001_DeInit (const UART001_HandleType* Handle)
{
  /* <<<DD_UART001_API_2>>> */
  DBG002_FUNCTION_ENTRY(APP_GID,UART001_FUN_ENTRY);
  
    
  DBG002_FUNCTION_EXIT(APP_GID,UART001_FUN_EXIT);
}

/* Function which allows changing of baudrate,parity & stopbit at run time.*/
status_t  UART001_Configure
( 
  const UART001_HandleType* Handle,
  uint32_t BaudRate,
  UART_ParityType Parity,
  UART_StopBitType Stopbit
)
{
   uint32_t Brg_Pdiv = 0x00U;
   uint32_t Fdr_Step = 0x00U;
   uint32_t TXIDLE_status;
   uint32_t RXIDLE_status;
   USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
   status_t Status = (status_t)UART001_ERROR;
   
   DBG002_FUNCTION_ENTRY(APP_GID,UART001_FUN_ENTRY);
   /* <<<DD_UART001_API_3>>>*/

   TXIDLE_status = (uint32_t)\
                 RD_REG(UartRegs->PSR_ASCMode,USIC_CH_PSR_ASCMode_TXIDLE_Msk, \
	                       USIC_CH_PSR_ASCMode_TXIDLE_Pos);

   RXIDLE_status = (uint32_t)\
                 RD_REG(UartRegs->PSR_ASCMode,USIC_CH_PSR_ASCMode_RXIDLE_Msk, \
	                       USIC_CH_PSR_ASCMode_RXIDLE_Pos);
   if(( TXIDLE_status & RXIDLE_status) == 0x01U)
    {
      /* Configuration of USIC Channel Fractional Divider */
      UART001_lConfigureBaudRate(BaudRate,&Brg_Pdiv,&Fdr_Step);

      /* Step value: 0x3FF */
      UartRegs->FDR &= ~(USIC_CH_FDR_STEP_Msk);
      UartRegs->FDR |= ( Fdr_Step & USIC_CH_FDR_STEP_Msk);
              
      /* The PreDivider for CTQ, PCTQ = 0  */
      /* The Denominator for CTQ, DCTQ = 16 */

      UartRegs->BRG &= ~(USIC_CH_BRG_PDIV_Msk);
      UartRegs->BRG |= ((((uint32_t)Brg_Pdiv  << USIC_CH_BRG_PDIV_Pos) \
    		                                          &  USIC_CH_BRG_PDIV_Msk));

      /* Configure StopBit */
      UartRegs->PCR_ASCMode &= ~(USIC_CH_PCR_ASCMode_STPB_Msk);
      UartRegs->PCR_ASCMode |= \
                      (((uint32_t)Stopbit << USIC_CH_PCR_ASCMode_STPB_Pos) & \
                       USIC_CH_PCR_ASCMode_STPB_Msk);
          
      /* Configure Parity*/
      UartRegs->CCR &= ~(USIC_CH_CCR_PM_Msk);
      UartRegs->CCR |= (((UART_MODE  & USIC_CH_CCR_MODE_Msk)) | \
                        (((uint32_t)Parity  << USIC_CH_CCR_PM_Pos) & \
                                                       USIC_CH_CCR_PM_Msk));

      Status = (status_t)DAVEApp_SUCCESS;
    }
    else
    {
      Status = (status_t)UART001_BUSY;
      DBG002_ERROR(APP_GID,Status, 0, NULL);
    }
  DBG002_FUNCTION_EXIT(APP_GID,UART001_FUN_EXIT);
  
  return Status;
}
/* This function reads out  the content of the USIC receive FIFO Buffer. 
 * Returns true in case FIFO is not empty.else  otherwise.
 *
 */

uint32_t UART001_ReadDataMultiple\
            (const UART001_HandleType* Handle,uint16_t* DataPtr,uint32_t Count)
{ 
  uint32_t ReadCount = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;  
  DBG002_FUNCTION_ENTRY(APP_GID,UART001_FUN_ENTRY);
  /* <<<DD_UART001_API_1>>>*/
  while(! USIC_ubIsRxFIFOempty(UartRegs) && Count)
  {
    *DataPtr = (uint16_t)UartRegs->OUTR;
    Count--;
    ReadCount++;
    DataPtr++;
  }
  DBG002_FUNCTION_EXIT(APP_GID,UART001_FUN_EXIT);
  
  return ReadCount;
}

uint32_t UART001_WriteDataMultiple
(
  const UART001_HandleType* Handle,
  const uint16_t* DataPtr,
  uint32_t Count
)
{
  uint32_t WriteCount = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
  DBG002_FUNCTION_ENTRY(APP_GID,UART001_FUN_ENTRY);
  /* <<<DD_UART001_API_2>>>*/
  while(! USIC_IsTxFIFOfull(UartRegs)&& Count)
  {
    UartRegs->IN[0] = *DataPtr;
    Count--;
    WriteCount++;
    DataPtr++;
  }  
  DBG002_FUNCTION_EXIT(APP_GID,UART001_FUN_EXIT);
  
  return WriteCount;
}


/* Checks the specified Flag status bit.*/

status_t UART001_GetFlagStatus 
(
  const UART001_HandleType* Handle,
  UART001_FlagStatusType Flag
)
{
  status_t Status = (status_t)UART001_RESET;
  uint32_t TempValue = 0x00U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
  DBG002_FUNCTION_ENTRY(APP_GID,UART001_FUN_ENTRY);
  /* <<<DD_UART001_API_6>>>*/
  if(Flag <= UART001_ALT_REC_IND_FLAG)
  {
    TempValue = UartRegs->PSR_ASCMode;
    TempValue  &= ((uint32_t)0x01 << (uint32_t)Flag);    
  }
  else if(Flag <= UART001_FIFO_ALTRECV_BUF_FLAG)
  {
    TempValue = UartRegs->TRBSR;
    TempValue  &= ((uint32_t)0x01 << \
                  ((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG));
    
  }
  else
  {
    TempValue = UartRegs->TRBSR;
    TempValue  &= ((uint32_t)0x01 << \
       (((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG) + 0x05U ));
  } 

  if(TempValue != 0x00U)
  {
    Status = (status_t)UART001_SET;
  }
  DBG002_FUNCTION_EXIT(APP_GID,UART001_FUN_EXIT);
  return Status;
}

/* Clears the specified flag status.*/
void UART001_ClearFlag
(
  const UART001_HandleType* Handle,
  UART001_FlagStatusType Flag
)
{

  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
  DBG002_FUNCTION_ENTRY(APP_GID,UART001_FUN_ENTRY);

  /* <<<DD_UART001_API_7>>>*/
  if(Flag <= UART001_ALT_REC_IND_FLAG)
  {
    UartRegs->PSCR  |= ((uint32_t)0x01 << (uint32_t)Flag);    
  }
  else if(Flag <= UART001_FIFO_ALTRECV_BUF_FLAG)
  {
    UartRegs->TRBSCR  |= ((uint32_t)0x01 << \
                 ((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG)); 
  }
  else
  {
    UartRegs->TRBSCR  |= ((uint32_t)0x01 << \
               (((uint32_t)Flag - (uint32_t)UART001_FIFO_STD_RECV_BUF_FLAG) + \
                                                       UART001_FLAG_OFFSET ));
  }  
  DBG002_FUNCTION_EXIT(APP_GID,UART001_FUN_EXIT);
}


/*CODE_BLOCK_END*/
