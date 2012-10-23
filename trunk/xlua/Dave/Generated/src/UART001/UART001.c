
/*CODE_BLOCK_BEGIN[UART001.c]*/
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
** PLATFORM : Infineon XMC4000 Series   			                          **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Sep 16, 2011                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** PAE          App Developer                                                 **
*******************************************************************************/
/**
 * @file UART001.c
 *
 * @brief  UART001 App provides non reentrant APIs for higher level Apps 
 *          which can be used in a Non -RTOS environment. 
 *           Limitations of Simple UART App
 *           a) Read/Write functions are non reentrant.
 *           b) No support for DMA mode
 */
 
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

#include <DAVE3.h>


/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
 
  /* System Core clock frequency in MHz */
#define UART001_CLOCK  120 
/* Step value: 3FF */
#define UART001_NORMAL_DIV_STEPVALUE   (0x3FFU) 
/* Denominator for Time Quanta Counter*/
#define UART001_BRG_DCTQ               (0x10U)
/* PCTQ for Time Quanta Counter*/
#define UART001_BRG_PCTQ               (0x00U)
/* Sample Point for bit value */
#define UART001_PCR_SP                 (0x09U)
/* Reset value of USIC Registers */
#define UART001_REG_RESET              (0x00000000U)
/*Flag Offset Transmit Receive Buffer */
#define UART001_FLAG_OFFSET            (0x05U)





/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/


/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/

/* Initializes the App based on User provide configuration. */
void UART001_lInit (const UART001_HandleType* Handle);

/* Give optimized PDIV and STEP value for the given baud rate */ 
void UART001_lConfigureBaudRate(uint32_t BaudRate,uint32_t* Pdiv,uint32_t* Step);
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
/* Initializes the App based on User provide configuration. */
 
void UART001_lInit (const UART001_HandleType* Handle)
{
  uint32_t Brg_PDiv =0;
  uint32_t Fdr_Step = 0;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;

  FUNCTION_ENTRY(GID_UART001,UART001_FUN_ENTRY);
 /* <<<DD_UART001_API_1>>>*/
 
  /** UART initialization  */
  
  /* Enable the USIC Channel */
  UartRegs->KSCFG |= (((uint32_t)( 0x01U  & USIC_CH_KSCFG_MODEN_Msk)) | \
  ((uint32_t)(0x01U   << USIC_CH_KSCFG_BPMODEN_Pos) &  USIC_CH_KSCFG_BPMODEN_Msk)); 
  
  /* Get the optimum PDIV and STEP value for the given baudrate */
  UART001_lConfigureBaudRate(Handle->BaudRate,&Brg_PDiv,&Fdr_Step);
  
  
  /* Configuration of USIC Channel Fractional Divider */

  /* Fractional divider mode selected */
  UartRegs->FDR |= (( 2U << USIC_CH_FDR_DM_Pos) \
                    & USIC_CH_FDR_DM_Msk);
  
  /* Step value */
  UartRegs->FDR |= ( Fdr_Step & USIC_CH_FDR_STEP_Msk);
          
  /* The PreDivider for CTQ, PCTQ = 0  */
  /* The Denominator for CTQ, DCTQ = 16 */
    
  UartRegs->BRG |= (((uint32_t)( UART001_BRG_PCTQ  << USIC_CH_BRG_PCTQ_Pos) & \
  USIC_CH_BRG_PCTQ_Msk  ) | \
  ((uint32_t)(UART001_BRG_DCTQ  << USIC_CH_BRG_DCTQ_Pos) &  USIC_CH_BRG_DCTQ_Msk) | \
  (((uint32_t)Brg_PDiv  << USIC_CH_BRG_PDIV_Pos) &  USIC_CH_BRG_PDIV_Msk)); 
 
 
  /* Configuration of USIC Shift Control */
  
  /* Transmit/Receive LSB first is selected  */
  /* Transmission Mode (TRM) = 1  */
  /* Passive Data Level (PDL) = 1 */
  UartRegs->SCTR |= (((uint32_t)(0x01U  << USIC_CH_SCTR_PDL_Pos) & \
    USIC_CH_SCTR_PDL_Msk ) | \
    ((uint32_t)(0x01U  <<  USIC_CH_SCTR_TRM_Pos ) &   USIC_CH_SCTR_TRM_Msk ));
  /* Set Word Length (WLE) & Frame Length (FLE) */
  UartRegs->SCTR |= (((uint32_t)(Handle->DataBits  << USIC_CH_SCTR_FLE_Pos) & \
  USIC_CH_SCTR_FLE_Msk ) | \
  ((uint32_t)(Handle->DataBits  << USIC_CH_SCTR_WLE_Pos) &  USIC_CH_SCTR_WLE_Msk));

       
  /* Configuration of USIC Transmit Control/Status Register */ 
  /* TBUF Data Enable (TDEN) = 1 */
  /* TBUF Data Single Shot Mode (TDSSM) = 1 */
	
  UartRegs->TCSR |= (((uint32_t)(0x01U  << USIC_CH_TCSR_TDEN_Pos) & \
    USIC_CH_TCSR_TDEN_Msk ) | \
    ((uint32_t)(0x01U  << USIC_CH_TCSR_TDSSM_Pos) & USIC_CH_TCSR_TDSSM_Msk));

  /* Configuration of Protocol Control Register */ 
  /* Sample Mode (SMD) = 1 */
  /* 1 Stop bit is selected */   
  /* Sample Point (SP) = 2 */
  /* Pulse Length (PL) = 0 */
  
  UartRegs->PCR_ASCMode |= (((uint32_t)(0x01U  & USIC_CH_PCR_ASCMode_SMD_Msk)) | \
    ((uint32_t)((uint32_t)Handle->StopBit  << USIC_CH_PCR_ASCMode_STPB_Pos) & \
    USIC_CH_PCR_ASCMode_STPB_Msk) | \
    ((uint32_t)(UART001_PCR_SP  << USIC_CH_PCR_ASCMode_SP_Pos) & \
    USIC_CH_PCR_ASCMode_SP_Msk));
      
  if(Handle->RecvNoiseEn)
  {
   	/* Enable Receiver Noise Interrupt*/  
    UartRegs->PCR_ASCMode |=((uint32_t)(0x01U  << USIC_CH_PCR_CTR5_Pos) & \
		  	  	  	  	  USIC_CH_PCR_CTR5_Msk); 
  }
  
  if(Handle->FormatErrEn)
  {
   	/* Enable Format Error Interrupt*/  
    UartRegs->PCR_ASCMode |=((uint32_t)(0x01U  << USIC_CH_PCR_CTR6_Pos) & \
		  	  	  	  	  USIC_CH_PCR_CTR6_Msk); 
  }
  
  if(Handle->FrameFinEn)
  {
   	/* Enable Frame Finished Interrupt*/  
    UartRegs->PCR_ASCMode |=((uint32_t)(0x01U  << USIC_CH_PCR_CTR7_Pos) & \
		  	  	  	  	  USIC_CH_PCR_CTR7_Msk); 
  }
  
  /* Configuration of Protocol Status Register */ 
  /* TBIF is set to simplify polling*/
  UartRegs->PSR_ASCMode |= ((uint32_t)(0x01U  << USIC_CH_PSR_TBIF_Pos) & \
    USIC_CH_PSR_TBIF_Msk); 
	
  /* Configuration of Transmitter Buffer Control Register */ 
    UartRegs->TBCTR |= ((((uint32_t)Handle->TxLimit  << \
                    USIC_CH_TBCTR_LIMIT_Pos ) & USIC_CH_TBCTR_LIMIT_Msk));
    
  /* Configuration of Receiver Buffer Control Register */ 
  UartRegs->RBCTR |= ((((uint32_t)Handle->RxLimit  << \
                USIC_CH_RBCTR_LIMIT_Pos) & USIC_CH_RBCTR_LIMIT_Msk) | \
	((uint32_t)(0x01U   << USIC_CH_RBCTR_LOF_Pos) & \
     USIC_CH_RBCTR_LOF_Msk));
   
  /* Configuration of Channel Control Register */ 
  /* parity generation is disabled*/
    UartRegs->CCR |= ( ((uint32_t)(UART_MODE  & USIC_CH_CCR_MODE_Msk)) | \
    (((uint32_t)Handle->Parity  << USIC_CH_CCR_PM_Pos) & \
    USIC_CH_CCR_PM_Msk));
  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_EXIT);
}


/* Give optimized PDIV and STEP value for the given baud rate */ 
void UART001_lConfigureBaudRate(uint32_t BaudRate,uint32_t* Pdiv,uint32_t* Step)
{
	float ratio = 0.0;
	float TempBaud = 0.0;
	float TempPdiv = 0.0;
	float TempStep = 0.0;
	TempBaud = BaudRate;
	ratio = ((((UART001_CLOCK * 1000000)/(17*1024)) * 500)/TempBaud);
	/* Calculating optimum PDIV value */
	if( ratio <= 1)
    {
		TempPdiv = 0;
    }
    else
    {
    	TempPdiv =  ratio -1;
      if( TempPdiv > 1023)
      {
    	  TempPdiv = 1023;
      }
    }
	*Pdiv = TempPdiv;
    /* Calculating STEP value */
	TempStep = (((((TempBaud * 17 * 512)/ 1000000) * 2 ) * (1+ (*Pdiv)))/(UART001_CLOCK));

    if(TempStep > 1023)
    {
    	TempStep = 1023;
    }
    *Step = TempStep;
}
/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/
void UART001_Init(void)
{

  RESET001_DeassertReset(PER0_USIC0); 
  UART001_lInit(&UART001_Handle0);     
    /* Configuration of TX Pin 1.5 based on User configuration */
    //PDR_PD = 0 
    PORT1->PDR0  &= (~(PORT1_PDR0_PD5_Msk));
    PORT1->PDR0  |= ((0 << PORT1_PDR0_PD5_Pos) & \
                                             PORT1_PDR0_PD5_Msk);         
    /* Configuration of RX Pin 1.4 based on User configuration */
	PORT1->IOCR4 |= (0 << 3);
	     
}

 /* Function provide to reset the App to default values. */
 
void  UART001_DeInit (const UART001_HandleType* Handle)
{
  /* <<<DD_UART001_API_2>>> */
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_ENTRY);
  
    
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_EXIT);
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
   uint32_t Brg_Pdiv = 0U;
   uint32_t Fdr_Step = 0U;
   USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
   status_t Status = UART001_ERROR;
   
   FUNCTION_ENTRY(GID_UART001,UART001_FUN_ENTRY);

  
  do
  {
     /* <<<DD_UART001_API_3>>>*/
    if((RD_REG(UartRegs->PSR_ASCMode,USIC_CH_PSR_ASCMode_TXIDLE_Msk, \
       USIC_CH_PSR_ASCMode_TXIDLE_Pos) 
       & RD_REG(UartRegs->PSR_ASCMode,USIC_CH_PSR_ASCMode_RXIDLE_Msk, \
        USIC_CH_PSR_ASCMode_RXIDLE_Pos)) == 1U)
    {
      /* Configuration of USIC Channel Fractional Divider */

	  UART001_lConfigureBaudRate(BaudRate,&Brg_Pdiv,&Fdr_Step);
      /* Step value: 0x3FF */
	  UartRegs->FDR &= ~(USIC_CH_FDR_STEP_Msk);
      UartRegs->FDR |= ( Fdr_Step & USIC_CH_FDR_STEP_Msk);
              
      /* The PreDivider for CTQ, PCTQ = 0  */
      /* The Denominator for CTQ, DCTQ = 16 */


      UartRegs->BRG &= ~(USIC_CH_BRG_PDIV_Msk);
      UartRegs->BRG |= (((uint32_t)((uint32_t)Brg_Pdiv  << USIC_CH_BRG_PDIV_Pos) \
    		                           &  USIC_CH_BRG_PDIV_Msk));

      /* Configure StopBit */
      UartRegs->PCR_ASCMode &= ~(USIC_CH_PCR_ASCMode_STPB_Msk);
      UartRegs->PCR_ASCMode |= (((uint32_t)Stopbit << USIC_CH_PCR_ASCMode_STPB_Pos) & \
          USIC_CH_PCR_ASCMode_STPB_Msk);
          
      /* Configure Parity*/
      UartRegs->CCR &= ~(USIC_CH_CCR_PM_Msk);
      UartRegs->CCR |= ( ((UART_MODE  & USIC_CH_CCR_MODE_Msk)) | \
      (((uint32_t)Parity  << USIC_CH_CCR_PM_Pos) & \
      USIC_CH_CCR_PM_Msk));

      Status = DAVEApp_SUCCESS;
    }
    else
    {
      Status = UART001_BUSY;
      ERROR(GID_UART001,Status, 0, NULL);
    }
  }while(0);
  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_EXIT);
  
  return Status;
}
/* This function reads out  the content of the USIC receive FIFO Buffer. 
 * Returns true in case FIFO is not empty.else  otherwise.
 *
 */

uint32_t UART001_ReadDataMultiple(const UART001_HandleType* Handle,uint16_t* DataPtr,uint32_t Count)
{ 
  uint32_t ReadCount = 0;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_ENTRY);
  /* <<<DD_UART001_API_1>>>*/
  while(! USIC_ubIsRxFIFOempty(UartRegs) && Count)
  {
    *DataPtr = (uint16_t)UartRegs->OUTR;
	Count--;
	ReadCount++;
	DataPtr++;
  }
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_EXIT);
  
  return ReadCount;
}

uint32_t UART001_WriteDataMultiple(
const UART001_HandleType* Handle,
uint16_t* DataPtr,
uint32_t Count)
{
  uint32_t WriteCount = 0;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_ENTRY);
  /* <<<DD_UART001_API_2>>>*/
  while(! USIC_IsTxFIFOfull(UartRegs)&& Count)
  {
    UartRegs->IN[0] = *DataPtr;
	Count--;
	WriteCount++;
	DataPtr++;
  }  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_EXIT);
  
  return WriteCount;
}


/* Checks the specified Flag status bit.*/

status_t UART001_GetFlagStatus 
(
  const UART001_HandleType* Handle,
  UART001_FlagStatusType Flag
)
{
  status_t Status = UART001_RESET;
  uint32_t TempValue = 0U;
  USIC_CH_TypeDef* UartRegs = Handle->UartRegs;
  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_ENTRY);
  /* <<<DD_UART001_API_6>>>*/
  if(Flag <= UART001_ALT_REC_IND_FLAG)
  {
    TempValue = UartRegs->PSR_ASCMode;
    TempValue  &= (0x01U << Flag);    
  }
  else if(Flag <= UART001_FIFO_ALTRECV_BUF_FLAG)
  {
    TempValue = UartRegs->TRBSR;
    TempValue  &= (0x01U << ( Flag - UART001_FIFO_STD_RECV_BUF_FLAG));
    
  }
  else
  {
    TempValue = UartRegs->TRBSR;
    TempValue  &= (0x01U << (((uint32_t)Flag - UART001_FIFO_STD_RECV_BUF_FLAG) + 0x05U ));
  } 

  if(TempValue != 0U)
  {
    Status = UART001_SET;
  }
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_EXIT);
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
  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_ENTRY);

  /* <<<DD_UART001_API_7>>>*/
  if(Flag <= UART001_ALT_REC_IND_FLAG)
  {
    UartRegs->PSCR  |= (0x01U << Flag);    
  }
  else if(Flag <= UART001_FIFO_ALTRECV_BUF_FLAG)
  {
    UartRegs->TRBSCR  |= (0x01U << ( Flag - UART001_FIFO_STD_RECV_BUF_FLAG));    
  }
  else
  {
    UartRegs->TRBSCR  |= (0x01U << ( ((uint32_t)Flag - UART001_FIFO_STD_RECV_BUF_FLAG) + \
                                                       UART001_FLAG_OFFSET ));
  }  
  FUNCTION_ENTRY(GID_UART001,UART001_FUN_EXIT);
}


/*CODE_BLOCK_END*/


