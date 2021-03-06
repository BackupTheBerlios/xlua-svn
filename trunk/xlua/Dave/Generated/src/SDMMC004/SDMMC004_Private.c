

/*CODE_BLOCK_BEGIN[SDMMC004_Private.c]*/

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
** AUTHOR : App Developer                                                     **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : August 23, 2012                                        **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                       Author(s) Identity                                   **
********************************************************************************
**                                                                            **
** Initials    Name                                                           **
** ---------------------------------------------------------------------------**
** SK          App Developer                                                  **
*******************************************************************************/



/**
 * @file   SDMMC004_Private.c
 *
 * @brief  This file contains definitions of all private type definitions and
 * functions of SDMMC LLD App.
 *
 */
/*******************************************************************************
 *                            INCLUDE FILES                                   **
 ******************************************************************************/
#include "../../inc/SDMMC004/SDMMC004_Conf.h"
#include <DAVE3.h>
#include "../../inc/SDMMC004/SDMMC004_Private.h"



/**
 * @cond INTERNAL_DOCS
 */

/*******************************************************************************
 **                      Global Variable Definitions                           **
 *******************************************************************************/
extern volatile SDMMC004_HandleType SDMMC004_Handle ;
/**  Card Information Structure */
SDMMC004_CardInfoType SDMMC004_CardInfo ;
/** Structure containing the Interrupt related variables */
volatile SDMMC004_InterruptContext SDMMC004_ISRContext;

/* Dummy Variable to store return status */
status_t SDMMC004_ReturnStatus;

/** Command Mutex Handle */
osMutexDef(CmdMutexHandle);
osMutexId SDMMC004_CmdMutexId;

/** Data Mutex Handle  */
osMutexDef(DataMutexHandle);
osMutexId SDMMC004_DataMutexId;

/** Command Related Semaphore */
osSemaphoreDef(CmdSemaphore);
osSemaphoreId SDMMC004_CmdSemaphoreId;
int SDMMC004_CmdSemaphoreIndex;

/** Data related semaphore */
osSemaphoreDef(DataSemaphore);
osSemaphoreId SDMMC004_DataSemaphoreId; 
int SDMMC004_DataSemaphoreIndex;

/* Transfer Related Semaphore */
osSemaphoreDef(TransferSemaphore);
osSemaphoreId SDMMC004_TransferSemaphoreId;
int SDMMC004_TransferSemaphoreIndex;


#if SDMMC_UVP_TEST
extern Test_TriggerInterruptType Test_TriggerInterrupt;
#endif /* SDMMC_UVP_TEST */

/** Stores Normal Interrupt Status Register */
volatile  uint16_t NormalIntStatus;
/** Stores Error Interrupt Status Register */
volatile  uint16_t ErrorIntStatus;

/** Stores the address of the Buffer from where to write for write operation & 
 * Address of the Buffer on which to write for read operation */
volatile uint32_t  *SDMMC004_BufferPtr;
/** Number of QuadBytes to transfer or read from the card.*/
volatile uint32_t SDMMC004_TransferQuadBytes;
/* Number of blocks of data to write or read on or from the card*/
volatile uint32_t SDMMC004_BlockCount;

/*******************************************************************************
 *                                ARRAYS                                      **
 ******************************************************************************/
/**
 * Command Structure defining SD, MMC and Application specific commands 
 */
const SDMMC004_CommandType SDMMC004_Command[40] =
{
    /* SD  Card Commands */
    { 0,0,0,0,0,0,SDMMC004_GO_IDLE_STATE,0 },     /*0*/
    { 1,0,1,0,0,0,SDMMC004_ALL_SEND_CID,0 },      /*1*/
    { 2,0,1,1,0,0,SDMMC004_SEND_RELATIVE_ADDR,0}, /*2*/
    { 0,0,0,0,0,0,SDMMC004_SET_DSR,0 },           /*3*/
    { 2,0,1,1,1,0,SDMMC004_SWITCH_FUNC,0},        /*4*/
    { 3,0,1,1,0,0,SDMMC004_SELECT_DESELECT_CARD,0},/*5*/
    { 2,0,1,1,0,0,SDMMC004_SD_SEND_IF_COND,0},    /*6*/
    { 1,0,1,0,0,0,SDMMC004_SEND_CSD,0},           /*7*/
    { 1,0,1,0,0,0,SDMMC004_SEND_CID,0},           /*8*/
    { 3,0,1,1,0,0,SDMMC004_STOP_TRANSMISSION,0},  /*9*/
    { 2,0,1,1,0,0,SDMMC004_SEND_STATUS,0 },       /*10*/
    { 0,0,0,0,0,0,SDMMC004_GO_INACTIVE_STATE,0},  /*11*/
    { 2,0,1,1,0,0,SDMMC004_SET_BLOCKLEN,0},       /*12*/
    { 2,0,1,1,1,0,SDMMC004_READ_SINGLE_BLOCK,0},  /*13*/
    { 2,0,1,1,1,0,SDMMC004_READ_MULTIPLE_BLOCK,0},/*14*/
    { 2,0,1,1,1,0,SDMMC004_WRITE_BLOCK,0 },       /*15*/
    { 2,0,1,1,1,0,SDMMC004_WRITE_MULTIPLE_BLOCK,0},/*16*/
    { 2,0,1,1,1,0,SDMMC004_PROGRAM_CSD,0},        /*17*/
    { 2,0,1,1,0,0,SDMMC004_SET_WRITE_PROT,0},     /*18*/
    { 2,0,1,1,0,0,SDMMC004_CLR_WRITE_PROT,0},     /*19*/
    { 2,0,1,1,1,0,SDMMC004_SEND_WRITE_PROT,0},    /*20*/
    { 2,0,1,1,0,0,SDMMC004_ERASE_WR_BLK_START,0}, /*21*/
    { 2,0,1,1,0,0,SDMMC004_ERASE_WR_BLK_END,0},   /*22*/
    { 3,0,1,1,0,0,SDMMC004_ERASE,0},              /*23*/
    { 2,0,1,1,1,0,SDMMC004_LOCK_UNLOCK,0},        /*24*/
    { 2,0,1,1,0,0,SDMMC004_APP_CMD,0},            /*25*/
    { 2,0,1,1,1,0,SDMMC004_GEN_CMD,0},            /*26*/
    /*  End of SD card commands */
    /* Start of Application Specific commands */
    { 2,0,1,1,0,0,SDMMC004_SET_BUS_WIDTH,0},      /*27*/
    { 2,0,1,1,1,0,SDMMC004_SD_STATUS,0},          /*28*/
    { 2,0,1,1,1,0,SDMMC004_SEND_NUM_WR_BLOCKS,0}, /*29*/
    { 2,0,1,1,0,0,SDMMC004_SET_WR_BLK_ERASE_COUNT,0},/*30*/
    { 2,0,0,0,0,0,SDMMC004_SD_SEND_OP_COND,0},    /*31*/
    { 2,0,1,1,0,0,SDMMC004_SET_CLR_CARD_DETECT,0},/*32*/
    { 2,0,1,1,1,0,SDMMC004_SEND_SCR,0 },          /*33*/
    /* End of Application Specific Commands */
    /* Start of SDMMC_MMC Card  specific commands */
    { 2,0,0,1,0,0,SDMMC004_MMC_SEND_OP_COND,0},   /*34*/
    { 3,0,1,1,0,0,SDMMC004_MMC_SLEEP_AWAKE,0},    /*35*/
    { 3,0,1,1,0,0,SDMMC004_SWITCH_FUNC,0},        /*36*/
    { 2,0,1,1,1,0,SDMMC004_MMC_SEND_EXT_CSD,0},   /*37*/
    { 2,0,1,1,0,0,SDMMC004_ERASE_GROUP_START,0},  /*38*/
    { 2,0,1,1,0,0,SDMMC004_ERASE_GROUP_END,0},    /*39*/
    /* End of SDMMC_MMC  Card specific commands */
};

/* SD Card's Command Index Hash Table having index of the command structure
 * Array Index 0-57 is for SD general Commands and Array Index 58-64 is for
 * Application Specific Commands.
 */
const uint8_t SDMMC004_SDHashTable[65] =
{
    0, 0xFF,1,2,3,0xFF,4,5,6,7,8,0xFF,9,10,0xFF,\
    11, 12, 13, 14,0xFF, 0xFF, 0xFF, 0xFF, 0xFF,\
    15, 16, 0xFF, 17, 18, 19, 20, 0xFF, 21, 22,\
    0xFF, 0xFF, 0xFF, 0xFF, 23, 0xFF, 0xFF, 0xFF,\
    24, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF,\
    0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 25, 26, 0xFF, \
    27, 28, 29,30,31,32,33
};

#if SDMMC_SUPPORT_MMC_CARD
const uint8_t SDMMC004_MMCHashTable[64] =
{
    0,34,1,2,3,35,36,5,37,7,8,0xFF,9,10,0xFF,11,12,\
    13,14,0xFF,0xFF,0xFF,0xFF,0xFF,15,16,0xFF,17,\
    18,19,20,0xFF,0xFF,0xFF,0xFF,38,39,0xFF,23,\
    0xFF,0xFF,0xFF,24,0xFF,0xFF,0xFF,0xFF,0xFF,\
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,25,26,0xFF,\
    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF
};
#endif

/*******************************************************************************
 **                      Private Function Definitions                         **
 *******************************************************************************/
/*<<<DD_SDMMC_nonAPI_1>>> */
/*
 * This function resets the Host Controller's register depending on the
 * parameter passed.
 */
status_t SDMMC004_lReset( uint8_t Reset )
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;

  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  SDMMC->SW_RESET =  (SDMMC->SW_RESET | Reset);
  /* The Host Controller takes some time to complete software reset*/
  osDelay(SDMMC004_RESET_DELAY);
  if (SDMMC->SW_RESET & Reset)
  {
    Status = SDMMC004_ERROR;
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}
/* <<<DD_SDMMC_nonAPI_2>>> */
/*
 * This function clears the card related structures and stops the SD clock.
 */
void SDMMC004_lCardCleanUp()
{
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  memset((void*)&SDMMC004_CardInfo,0,sizeof(SDMMC004_CardInfo));
  SDMMC004_Handle.CardType = 0;
  SDMMC004_Handle.f8 = 0;
  SDMMC004_Handle.CommandInterruptError = SDMMC004_ERROR;
  SDMMC004_Handle.DataInterruptError = SDMMC004_ERROR;
  SDMMC004_Handle.ErrorRecoveryStatus = SDMMC004_ERROR;
  SDMMC004_Handle.TransferInterruptError = SDMMC004_ERROR;
  SDMMC004_Handle.State  = 0;
  /* Stop the SD Clock Enable */
  CLR_BIT( SDMMC->CLOCK_CTRL,SDMMC_CLOCK_CTRL_SDCLOCK_EN_Pos  );
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
}

/* <<<DD_SDMMC_nonAPI_3>>> */
/*
 * This function checks whether the CMD and DATA lines are free before issuing
 * any command.
 */
status_t SDMMC004_lCheckDatCmdline(const SDMMC004_CommandType *CommandPtr)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
#if SDMMC_UVP_TEST
    if( Test_TriggerInterrupt.Trigger_DataCmdLineBusy == TRUE)
    {
      Status = (uint32_t)SDMMC004_CMD_LINE_BUSY;
      break;
    }
#endif
    /* Read from Present state register to Check Cmd line is free */
    /* <<<DD_SDMMC_nonAPI_3_1>>> */
    if ( SDMMC->PRESENT_STATE  & SDMMC_PRESENT_STATE_COMMAND_INHIBIT_CMD_Msk)
    {
      Status = (uint32_t)SDMMC004_CMD_LINE_BUSY;
      break;
    }
    /* Check for  data line for Send Status command  and all those commands using
   data line */
    /* <<<DD_SDMMC_nonAPI_3_2>>> */
    if (( 1UL == CommandPtr->DataPresentSelect) ||  \
        ( (SDMMC004_SEND_STATUS == CommandPtr->CommandIndex) || \
            (3UL == CommandPtr->ResponseTypeSelect) )
       )
    {
      /* <<<DD_SDMMC_nonAPI_3_3>>> */
      /* Read from Present state register to Check data line is free */
      if ( (SDMMC->PRESENT_STATE  & SDMMC_PRESENT_STATE_COMMAND_INHIBIT_DAT_Msk )!= 0)
      {
        Status = (uint32_t)SDMMC004_DATA_LINE_BUSY;
        break;
      }
      /* <<<DD_SDMMC_nonAPI_3_4>>> */
      else
      {
        /* Update the data line state to active */
        if( (1UL == CommandPtr->DataPresentSelect) ||
            (3UL == CommandPtr->ResponseTypeSelect) )
        {
          SDMMC004_Handle.State |=(uint32_t)SDMMC004_STATE_DATA_ACTIVE;
        }
      }
    }
    /* Update the Command line state to active */
    SDMMC004_Handle.State |=(uint32_t)SDMMC004_STATE_CMD_ACTIVE;
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_4>>> */
/*
 * This function checks response error types in Command's Arguments category
 */
void SDMMC004_lCheckArgumentError
(
  const uint32_t  *CardStatusPtr,
  uint8_t *ErrorPtr
)
{
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /* The command's argument was out of the allowed range for this card.*/
  /* <<<DD_SDMMC_nonAPI_4_1>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_OUT_OF_RANGE_BITMASK ) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x, SDMMC004_OUT_OF_RANGE_ERROR,0,NULL);
  } /*End of "if( *CardStatusPtr & CSR_OUT_OF_RANGE_BITMASK ) "*/

  /* A mis-aligned address which did not match the block length was used in
   * the command.*/
  /* <<<DD_SDMMC_nonAPI_4_2>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_ADDRESS_ERROR_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x, SDMMC004_ADDRESS_ERROR,0,NULL);
  } /*End of " if ( *CardStatusPtr & CSR_ADDRESS_ERROR_BITMASK) "*/

  /* The transferred block length is not allowed for this card, or the number
   * of transferred bytes does not match the block length.*/
  /* <<<DD_SDMMC_nonAPI_4_3>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_BLOCK_LEN_ERROR_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_BLOCK_LEN_ERROR,0,NULL);
  }/*End of " if (*CardStatusPtr & CSR_BLOCK_LEN_ERROR_BITMASK) "*/

  /* Set when the host attempts to write to a protected block or to the
     temporary or permanent write protected card.*/
  /* <<<DD_SDMMC_nonAPI_4_4>>> */
  if (( *CardStatusPtr & SDMMC004_CSR_WP_VIOLATION_BITMASK ) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_WP_VIOLATION_ERROR,0,NULL);
  }/*End of "if ( *CardStatusPtr & CSR_WP_VIOLATION_BITMASK ) "*/
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
}

/* <<<DD_SDMMC_nonAPI_5>>> */
/*
 * This function checks response error types in Erase category
 */
void SDMMC004_lCheckEraseError
(
    const uint32_t *CardStatusPtr,
    uint8_t *ErrorPtr
)
{
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /* An error in the sequence of erase commands occurred.*/
  /* <<<DD_SDMMC_nonAPI_5_1>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_ERASE_SEQ_ERROR_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_ERASE_SEQ_ERROR,0,NULL);
  }
  /* An invalid selection of write-blocks for erase occurred.*/
  /* <<<DD_SDMMC_nonAPI_5_2>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_ERASE_PARAM_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_ERASE_PARAM_ERROR,0,NULL);
  }
  /* Set when only partial address space was erased due to existing
   * write protected blocks or the temporary or permanent write protected card
   *  was erased.*/
  /* <<<DD_SDMMC_nonAPI_5_3>>> */
  if (( *CardStatusPtr & SDMMC004_CSR_WP_ERASE_SKIP_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_WP_ERASE_SKIP_ERROR,0,NULL);
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
}

/* <<<DD_SDMMC_nonAPI_6>>> */
/*
 * This function checks response error types in card's internal error category
 */
void SDMMC004_lCheckCardError
(
  const uint32_t *CardStatusPtr,
  uint8_t *ErrorPtr
)
{
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /* Card internal ECC was applied but failed to correct the data.*/
  /* <<<DD_SDMMC_nonAPI_6_1>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_CARD_ECC_FAILED_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_CARD_ECC_ERROR,0,NULL);
  }
  /* Internal card controller error*/
  /* <<<DD_SDMMC_nonAPI_6_2>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_CC_ERROR_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_CC_ERROR,0,NULL);
  }
  /* <<<DD_SDMMC_nonAPI_6_3>>> */
  /* A general or an unknown error occurred during the operation.*/
  if ((*CardStatusPtr & SDMMC004_CSR_ERROR_BITMASK) != 0)
  {
    *ErrorPtr = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_UNKNOWN_ERROR,0,NULL);
  }
  /* Debug Log message .*/
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
}

/*<<<DD_SDMMC_nonAPI_7>>> */
/*
 * This function checks for any error in the command's response received.
 */
status_t SDMMC004_lCheckErrorInResponse( const uint32_t *CardStatusPtr)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  uint8_t ErrorStatus = 0;      /* No Error */
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);

  /* Argument Related Error Function */
  SDMMC004_lCheckArgumentError( CardStatusPtr, &ErrorStatus );

  /* Erase Related Error function  */
  SDMMC004_lCheckEraseError( CardStatusPtr, &ErrorStatus);

  /* Card Related Error function */
  SDMMC004_lCheckCardError(CardStatusPtr, &ErrorStatus);

  /* Set when a sequence or password error has been detected in lock/unlock
   * card command.*/
  /*<<<DD_SDMMC_nonAPI_7_1>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_LOCK_UNLOCK_FAILED_BITMASK) != 0)
  {
    ErrorStatus = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_LOCK_UNLOCK_ERROR,0,NULL);
  }

  /* Can be either one of the following errors:
   * The read only section of the CSD does not match the card content.
   *  An attempt to reverse the copy  or permanent WP  bits was made.
   */
  /*<<<DD_SDMMC_nonAPI_7_4>>> */
  if ((*CardStatusPtr & SDMMC004_CSR_CSD_OVERWRITE_BITMASK) != 0)
  {
    ErrorStatus = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_CSD_OVERWRITE,0,NULL);
  }
  /*<<<DD_SDMMC_nonAPI_7_5>>> */
  /* Error in the sequence of the authentication process*/
  if ((*CardStatusPtr & SDMMC004_CSR_ASK_SEQ_ERROR_BITMASK) != 0)
  {
    ErrorStatus = 1UL;
    ERROR(GID_SDMMC00x,SDMMC004_ASK_SEQ_ERROR,0,NULL);
  }
  /* Below Additional condition is because some SD cards treat CMD55 as Illegal
   * Command and gives this error in response */
  /*<<<DD_SDMMC_nonAPI_7_6>>> */
  if (ErrorStatus == 1UL) 
  {
    Status = (uint32_t) SDMMC004_ERROR;
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/*<<<DD_SDMMC_nonAPI_41>>> */
/*
 * This function checks for lock status of SDMMC card.
 */
void SDMMC004_lGetCardLockState(uint32_t CardStatus, uint16_t CommandIndex)
{
/*<<<DD_SDMMC_nonAPI_41_1>>> */
  if (((CardStatus & SDMMC004_CSR_CARD_IS_LOCKED_BITMASK) != 0) &&
      (CommandIndex != SDMMC004_SEND_RELATIVE_ADDR ))
  {
    SDMMC004_Handle.State |= SDMMC004_STATE_CARD_LOCKED ;
  }
/*<<<DD_SDMMC_nonAPI_41_2>>> */
  else
  {
    SDMMC004_Handle.State &= ~SDMMC004_STATE_CARD_LOCKED ;
  }
}

/*<<<DD_SDMMC_nonAPI_42>>> */
/*
 * This function provide the delay in transfer.
 */
status_t SDMMC004_lTransferDelay(uint32_t DelayTime)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  SDMMC004_TransferSemaphoreIndex = osSemaphoreWait ( \
                                    SDMMC004_TransferSemaphoreId,\
                                    DelayTime);
  /*<<<DD_SDMMC_nonAPI_42_1>>> */
  if(  SDMMC004_TransferSemaphoreIndex < 0)
  {
    Status = SDMMC004_ERROR;
  }
  /* <<<DD_SDMMC_nonAPI_42_2>>> */
  if( SDMMC004_Handle.TransferInterruptError !=  SDMMC004_TRANSFER_COMPLETE)
  {
    Status = (uint32_t)SDMMC004_Handle.DataInterruptError;
  }
  return Status;
}

/* <<<DD_SDMMC_nonAPI_8>>> */
/*
 * This function reads for the response received for the command issued.
 */
status_t  SDMMC004_lReadResponse
(
  const SDMMC004_CommandType *CommandPtr,
  SDMMC004_ResponseType ResponseType,
  void *ResponsePtr
)
{
  uint32_t CardStatus = 0;
  uint32_t ErrorStatus = 0;
  uint32_t *TmpPtr;
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /* Check for  No response type commands */
  /*<<<DD_SDMMC_nonAPI_8_1>>> */
  if (CommandPtr->CommandIndex == SDMMC004_GO_IDLE_STATE || \
      CommandPtr->CommandIndex == SDMMC004_GO_INACTIVE_STATE)
  {
    Status = (uint32_t)DAVEApp_SUCCESS;
  }
  /*<<<DD_SDMMC_nonAPI_8_2>>> */
  else
  {
    TmpPtr = (uint32_t *)ResponsePtr;
    CardStatus = SDMMC->RESPONSE0;
    /* Check Lock Status */
  /*<<<DD_SDMMC_nonAPI_8_3>>> */
    SDMMC004_lGetCardLockState(CardStatus, CommandPtr->CommandIndex);
    /* Check response type*/
    switch( ResponseType )
    {
    /* Response R1*/
    /*<<<DD_SDMMC_nonAPI_8_4>>> */
    case SDMMC004_RESPONSE_R1:
      /* check the error bits in the response */
      *TmpPtr = CardStatus;
      /*<<<DD_SDMMC_nonAPI_8_5>>> */
      Status = SDMMC004_lCheckErrorInResponse(&CardStatus);
      break;

      /* Response R1b*/
      /*<<<DD_SDMMC_nonAPI_8_6>>> */
    case SDMMC004_RESPONSE_R1b:
      *TmpPtr = CardStatus;
      /* check the error bits in the response */
      Status = SDMMC004_lCheckErrorInResponse(&CardStatus);
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
#if SDMMC_UVP_TEST
      if (Test_TriggerInterrupt.Trigger_TransferInterruptError == TRUE)
      {
        /* Release the Semaphore */
        Status = osSemaphoreRelease (SDMMC004_TransferSemaphoreId);
        SDMMC004_Handle.TransferInterruptError = SDMMC004_ERROR;
      }
#endif  /* SDMMC_UVP_TEST*/

      /*Wait for the transfer complete Interrupt */
      /*<<<DD_SDMMC_nonAPI_8_7>>> */
      Status = SDMMC004_lTransferDelay(SDMMC004_DELAY_IN_TRANSFER);
      if(Status != (uint32_t) DAVEApp_SUCCESS)
      {
        ERROR(GID_SDMMC00x, Status, 0, NULL);
        break;
      }

#if SDMMC_UVP_TEST
      if (Test_TriggerInterrupt.Trigger_TransferInterruptError == TRUE)
      {
        /* Enable the Transfer Complete Status Interrupt */
        SDMMC->EN_INT_STATUS_NORM |= SDMMC_EN_INT_STATUS_NORM_TX_COMPLETE_EN_Msk;
        /*  Enable the Transfer Complete Signal Interrupt */
        SDMMC->EN_INT_SIGNAL_NORM |= SDMMC_EN_INT_SIGNAL_NORM_TX_COMPLETE_EN_Msk;
      }
#endif     /* SDMMC_UVP_TEST*/
      break;
   /* Response R2*/
   /*<<<DD_SDMMC_nonAPI_8_8>>> */
    case SDMMC004_RESPONSE_R2:
      /* Response register R0-R7 */
      *TmpPtr = CardStatus;
      TmpPtr++;

      *TmpPtr = SDMMC->RESPONSE2;
      TmpPtr++;

      *TmpPtr = SDMMC->RESPONSE4;
      TmpPtr++;

      *TmpPtr = SDMMC->RESPONSE6;
      break;
    /* Response R3*/
    /*<<<DD_SDMMC_nonAPI_8_9>>> */
    case SDMMC004_RESPONSE_R3:
      
    /* Response R7*/
    /*<<<DD_SDMMC_nonAPI_8_10>>> */
    case SDMMC004_RESPONSE_R7:
      *TmpPtr = CardStatus;
      break;

    /* Response R6*/
    /*<<<DD_SDMMC_nonAPI_8_11>>> */
    case SDMMC004_RESPONSE_R6:
      ErrorStatus  = CardStatus & SDMMC_RESPONSE0_RESPONSE0_Msk;
      /*<<<DD_SDMMC_nonAPI_8_12>>> */
      Status = SDMMC004_lCheckErrorInResponse(&ErrorStatus);
      /* Read the 16bit RCA received in Response R1 register */
      *TmpPtr =(uint16_t)((CardStatus & SDMMC_RESPONSE0_RESPONSE1_Msk) >> \
          SDMMC004_HC_RESPONSE1_BITPOS );
      break;

    /* No response*/
    /*<<<DD_SDMMC_nonAPI_8_13>>> */
    case SDMMC004_NO_RESPONSE:
      Status = DAVEApp_SUCCESS;
      break;

    default:
      Status = (uint32_t)SDMMC004_ERROR;
      break;
    } /* End of " switch( ResponseType )"*/
  }/* End of " if (CommandPtr->CommandIndex == SDMMC004_GO_IDLE_STATE ||
               CommandPtr->CommandIndex == SDMMC004_GO_INACTIVE_STATE)"*/
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/*<<<DD_SDMMC_nonAPI_9>>> */
/*
 * This function issues the command.
 */
status_t SDMMC004_lSendCommand
( 
    const SDMMC004_CommandType *CommandPtr,
    uint32_t Argument,
    SDMMC004_ResponseType ResponseType,
    void *ResponsePtr
)
{
  status_t Status = (uint32_t)SDMMC004_ERROR;
  osStatus SemStatus;
  SDMMC004_Handle.IssueAbort = 0UL;  
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /*  Take Command Mutex */
    SemStatus = osMutexWait(SDMMC004_CmdMutexId,  osWaitForever );
    if (osOK != SemStatus)
    {
      break;
    } /* End of " if ((uint32_t)osOK != SemStatus)"*/
    SDMMC004_Handle.CommandInterruptError = SDMMC004_ERROR;
    SDMMC004_Handle.DataInterruptError = SDMMC004_BUFFER_READY;
    /* Data or Command line free */
    /*<<<DD_SDMMC_nonAPI_9_1>>>*/
    Status = SDMMC004_lCheckDatCmdline(CommandPtr);
    if ((Status == (uint32_t)SDMMC004_DATA_LINE_BUSY) ||
        (Status == (uint32_t)SDMMC004_CMD_LINE_BUSY))
    {
      break;
    }
    /* Set argument register */
    SDMMC->ARGUMENT1 = Argument;
    /* Set command register */
    SDMMC->COMMAND = (uint16_t)(*(uint16_t *)CommandPtr);
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_CommandErrorInterrupt == TRUE)
    {
      /* Forcefully trigger the Command Timeout Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0001 ;
    }
    if (Test_TriggerInterrupt.Trigger_EraseStartError == TRUE)
    {
      /* Forcefully trigger the Command Index Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0008 ;
    }
    if (Test_TriggerInterrupt.Trigger_EraseEndError == TRUE)
    {
      /* Forcefully trigger the Command Index Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0008 ;
    }
    if (Test_TriggerInterrupt.Trigger_Cmd55Error == TRUE)
    {
      /* Forcefully trigger the Command Timeout Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0001 ;
    }
    if (Test_TriggerInterrupt.Trigger_Command42Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = FALSE;
    }
#endif  /*SDMMC_UVP_TEST*/   
    /* Blocking until any of the bit in the Interrupt Status Register gets set */
    SDMMC004_CmdSemaphoreIndex = osSemaphoreWait (SDMMC004_CmdSemaphoreId,\
        SDMMC004_DELAY_IN_COMMAND);
    if( SDMMC004_CmdSemaphoreIndex < 0)
    {
      break;
    } 
    /* Check for any errors */
    /*<<<DD_SDMMC_nonAPI_9_3>>> */
    if( SDMMC004_Handle.CommandInterruptError == SDMMC004_COMMAND_COMPLETE )
    {
#if SDMMC_UVP_TEST
      if(Test_TriggerInterrupt.Trigger_CommandResponseError == TRUE)
      {
        Status = (uint32_t)SDMMC004_ERROR;
        break;
      }
#endif
      /* Read response received. */
      /*<<<DD_SDMMC_nonAPI_9_4>>>*/
      Status = SDMMC004_lReadResponse(CommandPtr,ResponseType,ResponsePtr);
      break;
    }
    /*<<<DD_SDMMC_nonAPI_9_5>>>*/
    /* For Cmd8, check for  Command Timeout Interrupt */
    else if ((CommandPtr->CommandIndex == SDMMC004_SD_SEND_IF_COND) &&
        (SDMMC004_Handle.CommandInterruptError == \
            SDMMC004_COMMAND_TIMEOUT_ERROR))
    {
      Status = (uint32_t)SDMMC004_COMMAND_TIMEOUT_ERROR;
      break;
    }
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_CommandErrorInterrupt == TRUE)
    {
      /* Enable the Command Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM |= SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk;
      /* Enable the Command Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM |= SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk;
      SDMMC->EN_INT_STATUS_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
    
      SDMMC->EN_INT_STATUS_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
    
      SDMMC->EN_INT_STATUS_NORM |= (SDMMC_EN_INT_STATUS_NORM_TX_COMPLETE_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM |= (SDMMC_EN_INT_SIGNAL_NORM_TX_COMPLETE_EN_Msk);
    }
    if (Test_TriggerInterrupt.Trigger_Cmd55Error == TRUE)
    {
      /* Enable the Command Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM |= SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk;
      /* Enable the Command Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM |= SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk;
    
      SDMMC->EN_INT_STATUS_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
    
      SDMMC->EN_INT_STATUS_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM |= (SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
    
      SDMMC->EN_INT_STATUS_NORM |= (SDMMC_EN_INT_STATUS_NORM_TX_COMPLETE_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM |= (SDMMC_EN_INT_SIGNAL_NORM_TX_COMPLETE_EN_Msk);
    }
    if (Test_TriggerInterrupt.Trigger_Command42Error == TRUE)
    {
      /* Enable the Command Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM |= SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk;
      /* Enable the Command Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM |= SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk;
    }

    if (Test_TriggerInterrupt.Trigger_EraseEndError == TRUE)
    {
      /* Enable the Command Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM |= SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk;
      /* Enable the Command Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM |= SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk;
    }
    if (Test_TriggerInterrupt.Trigger_EraseStartError == TRUE)
    {
      /* Enable the Command Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM |=  SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk;
      /* Disable the Command Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM |=  SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk ;
    }
#endif  /*SDMMC_UVP_TEST*/

#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_TC8Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = FALSE;
    }
    if (Test_TriggerInterrupt.Trigger_TC10Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = FALSE;
    }
    if (Test_TriggerInterrupt.Trigger_TC13Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = FALSE;
    }
    if (Test_TriggerInterrupt.Trigger_TC17Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = FALSE;
    }
    if (Test_TriggerInterrupt.Trigger_TC20Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = FALSE;
    }
#endif /* SDMMC_UVP_TEST  */

    /*<<<DD_SDMMC_nonAPI_9_6>>>*/
    if (CommandPtr->DataPresentSelect == 1)
    {
      SDMMC004_Handle.IssueAbort = 1UL;
    }
    /* Error Recovery for the failed command  */
    Status = SDMMC004_lErrorInterruptRecovery( SDMMC004_ISRContext.InterruptStatusShadow, \
                                               SDMMC004_Handle.IssueAbort);
  } while(0);
  /*Releasing the Command Semaphore */
  if (SemStatus == osOK)
  {
    SemStatus = osMutexRelease (SDMMC004_CmdMutexId);
    if (SemStatus != osOK)
    {
      Status = (uint32_t)SDMMC004_SENDCOMMAND_ERROR;
    } /* End of "if (osOK != SemStatus)"*/
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/*<<<DD_SDMMC_nonAPI_10>>> */
/*
 * This function sets the voltage window in OCR register
 */
status_t  SDMMC004_lSetVoltageWindow()
{
  status_t Status = (uint32_t)SDMMC004_ERROR;
  uint32_t CardStatus = 0;
  uint32_t Argument = 0;
  uint32_t LoopCount= 0;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /* <<<DD_SDMMC_nonAPI_10_1>>> */
  /* For Standard Capacity Card  */
  if (SDMMC004_Handle.f8 == 0)
  {
    /* Set HCS = 0  */
    Argument = SDMMC004_SD_ACMD41_F80_ARG;
  }
  /* <<<DD_SDMMC_nonAPI_10_2>>> */
  /* For High Capacity Card */
  else
  {
    /* Set  HCS = 1 */
    Argument = SDMMC004_SD_ACMD41_F81_ARG;
  }
  do
  {
    /*Send Command55 for Application Specific Command with default RCA as 0*/
    Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(55)),\
                                     SDMMC004_ARGUMENT0,SDMMC004_RESPONSE_R1,\
                                     &CardStatus);
    /* <<<DD_SDMMC_nonAPI_10_3>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* Send ACMD41 to Set the card's voltage window */
    Status = SDMMC004_lSendCommand( &(SDMMC004_SD_COMMAND(62)),\
                                    Argument,\
                                    SDMMC004_RESPONSE_R3,  \
                                    &(SDMMC004_CardInfo.Ocr));
    /* <<<DD_SDMMC_nonAPI_10_4>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS && \
        (Status != (uint32_t)SDMMC004_ILLEGAL_COMMAND_ERROR))
    {
      break;
    }
    Status = (uint32_t)DAVEApp_SUCCESS;
    /* Cards takes some time to set power status bit. Put some delay*/
    /* Timeout of 10 ms.*/
    SDMMC004_lDelay(SDMMC004_CARD_POWER_DELAY);
    /* Check for busy bit in the OCR content i.e response */
  } while(!(SDMMC004_CardInfo.Ocr & SDMMC004_OCR_POWER_STATUS_BITMASK) &&\
            ( (LoopCount++)<50 ) );
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/*<<<DD_SDMMC_nonAPI_11>>> */
/*
 * This function queries Voltage operating condition of the card.
 */
status_t SDMMC004_lQueryOperatingCond()
{
  uint32_t ResponseData = 0;
  status_t Status;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /*Query voltage operating condition i.e. cmd8 */
  Status = SDMMC004_lSendCommand( &(SDMMC004_SD_COMMAND(8)),\
                                    SDMMC004_SD_CMD8_ARG,SDMMC004_RESPONSE_R7, \
                                    &ResponseData );
  do
  {
    /*<<<DD_SDMMC_nonAPI_11_1>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS )
    {
      /*<<<DD_SDMMC_nonAPI_11_2>>> */
      /*  No response is received for Standard Capacity SD cards or MMC card. */
      if (SDMMC004_Handle.CommandInterruptError == \
          SDMMC004_COMMAND_TIMEOUT_ERROR )
      {
        SDMMC004_Handle.f8 = 0;
        Status = (uint32_t)DAVEApp_SUCCESS;
      }
      /*<<<DD_SDMMC_nonAPI_11_3>>> */
      else
      {
        break;
      }
    }
    /* Response received i.e. High Capacity cards. */
    /*<<<DD_SDMMC_nonAPI_11_4>>> */
    else
    {
      /*<<<DD_SDMMC_nonAPI_11_5>>> */
      /* Check whether Check pattern matches in the Argument and Response */
      if (( (ResponseData >> SDMMC004_SD_CMD8_CHECK_PATTERN_BITPOS) &\
          SDMMC004_SD_CMD8_CHECK_PATTERN_BITMASK) != \
          (SDMMC004_SD_CMD8_CHECK_PATTERN_VALUE)
      )
      {
        Status  = (uint32_t)SDMMC004_BAD_RESPONSE;
        break;
      }
      /*<<<DD_SDMMC_nonAPI_11_6>>> */
      /* Check the Voltage Supplied is Accepted by the card in the response  */
      if( ((uint8_t)( ResponseData >> SDMMC004_SD_CMD8_VHS_BITPOS) &\
          SDMMC004_SD_CMD8_VHS_BITMASK) \
          != ( SDMMC004_SD_VHS_PATTERN_2_7_3_6_VALUE ) )
      {
        Status = (uint32_t)SDMMC004_BAD_RESPONSE;
        break;
      }
      /* Set Flag f8 */
      SDMMC004_Handle.f8 = 1;
    }
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/*<<<DD_SDMMC_nonAPI_12>>> */
/*
 * This function queries voltage supported from the card.
 */
status_t SDMMC004_lQueryVoltage (uint32_t Argument)
{
  uint32_t CardStatus = 0;
  status_t Status;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Send Command55 for Application Specific Command with default RCA as 0*/
    Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(55)),\
        Argument,\
        SDMMC004_RESPONSE_R1,\
        &CardStatus);
    /*<<<DD_SDMMC_nonAPI_12_1>>> */
    if (Status != DAVEApp_SUCCESS )
    {
      /* Some SD cards which doen't supports CMD8 treat cmd55 as illegal so
       * ignore this error */
      /*<<<DD_SDMMC_nonAPI_12_2>>> */
      if (!( (Status == (uint32_t)SDMMC004_ILLEGAL_COMMAND_ERROR) &&
          (SDMMC004_Handle.f8 == 0) ))
      {
        break;
      }
    }
    /* Send ACMD41 to query the card's voltage window */
    Status = SDMMC004_lSendCommand( &(SDMMC004_SD_COMMAND(62)),Argument,\
                                  SDMMC004_RESPONSE_R3,&(SDMMC004_CardInfo.Ocr));
    /*<<<DD_SDMMC_nonAPI_12_3>>> */
    if ( (Status != (uint32_t)DAVEApp_SUCCESS) &&\
         (Status != (uint32_t)SDMMC004_ILLEGAL_COMMAND_ERROR))
    {
      /* No response means SDMMC_MMC card */
#if SDMMC_SUPPORT_MMC_CARD
      /*<<<DD_SDMMC_nonAPI_12_4>>> */
      if (Status == (uint32_t) SDMMC004_COMMAND_TIMEOUT_ERROR)
      {
        Status  =  (uint32_t)SDMMC004_lInitializeMmcCard();
        break;
      }
      else
#endif /* SDMMC_SUPPORT_MMC_CARD */
      {
        break;
      }
    }
    /* Send ACMD41 with voltage window argument set */
    /*<<<DD_SDMMC_nonAPI_12_5>>> */
    Status = SDMMC004_lSetVoltageWindow();
    if( Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* SD Card Type */
    /*<<<DD_SDMMC_nonAPI_12_6>>> */
    SDMMC004_lWriteCardType();
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/*<<<DD_SDMMC_nonAPI_13>>> */
/*
 * This function reads the card registers after the card is initialized.
 */
status_t SDMMC004_lAfterCardInitialize()
{
  status_t Status = (uint32_t)SDMMC004_ERROR;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Read CSD & SCR Register & Card Write Protection Flags. */
    Status = SDMMC004_lReadCardRegisters();
    /*<<<DD_SDMMC_nonAPI_13_1>>> */
    if(Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
#if SDMMC_SUPPORT_4_BUS_WIDTH
    /* Switch  to 4-bit bus width if supported */
    Status = SDMMC004_lSwitchBusWidth();
    /*<<<DD_SDMMC_nonAPI_13_2>>> */
    if( Status != (uint32_t)DAVEApp_SUCCESS )
    {
      /* Change bus width to default in the Host Controller */
      CLR_BIT( SDMMC->HOST_CTRL,SDMMC_HOST_CTRL_DATA_TX_WIDTH_Pos);
    }
    /* Switch  to High Speed Mode */
    Status = SDMMC004_lSwitchSpeed();
    /*<<<DD_SDMMC_nonAPI_13_3>>> */
    if( Status != (uint32_t)DAVEApp_SUCCESS )
    {
      /* Change Speed mode to default in the Host Controller */
      CLR_BIT( SDMMC->HOST_CTRL,SDMMC_HOST_CTRL_HIGH_SPEED_EN_Pos );
      Status = (uint32_t)DAVEApp_SUCCESS;
    }
#endif
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_14>>> */
/*
 * This function initializes the SD card.
 */
status_t SDMMC004_lInitializeCard()
{
  status_t Status;
  uint32_t LockStatus ;
  uint8_t Count= 0;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* <<<DD_SDMMC_nonAPI_14_1>>> */
    /* Repeat the below steps 2 times if bad response is received.    */
    do
    {
      /* Reset the card. i.e cmd0 */
      Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(0)), \
                                      SDMMC004_ARGUMENT0,SDMMC004_NO_RESPONSE, \
                                      NULL);
      /* <<<DD_SDMMC_nonAPI_14_2>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
      /* Query the Operation Condition Info from the card.*/
      /* <<<DD_SDMMC_nonAPI_14_3>>> */
      Status = SDMMC004_lQueryOperatingCond();
      Count++;
    } while(( Count < SDMMC004_NUM_CARD_RESET_RETRIES) && \
            ( Status == (uint32_t)SDMMC004_BAD_RESPONSE));
    /* <<<DD_SDMMC_nonAPI_14_4>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* Query & Set voltage window  */
    Status = SDMMC004_lQueryVoltage(SDMMC004_CardInfo.Rca);
    /* <<<DD_SDMMC_nonAPI_14_5>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* Read CID */
    Status = SDMMC004_lSendCommand(&(SDMMC004_COMMON_COMMAND(2)), \
                                   SDMMC004_ARGUMENT0,SDMMC004_RESPONSE_R2, \
                                   (void *)SDMMC004_CardInfo.CidArray);
    /* <<<DD_SDMMC_nonAPI_14_6>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* Read RCA */
    Status = SDMMC004_lReadRca();
    /* <<<DD_SDMMC_nonAPI_14_7>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    } 
    /* Check the card Lock/ Unlock Status */
    Status = SDMMC004_GetLockStatus(&LockStatus);
    /* <<<DD_SDMMC_nonAPI_14_8>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* <<<DD_SDMMC_nonAPI_14_9>> */
    if (LockStatus == (uint32_t)SDMMC004_CARD_IS_LOCKED)
    {
      SDMMC004_Handle.State |= SDMMC004_STATE_CARD_LOCKED ;
      Status = (uint32_t)SDMMC004_INITIALIZED_BUT_LOCKED;     
    }
    /* Update card initialization Status */
    SDMMC004_Handle.State |= SDMMC004_STATE_CARD_INITIALIZED;
    SDMMC004_Handle.State &=  ~(SDMMC004_STATE_NO_CARD);
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_15>>> */
/*
 * This function finds out the card Type information.
 */
void SDMMC004_lWriteCardType()
{
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /* If F8 =0 , Standard Capacity V1 Card */
  /* <<<DD_SDMMC_nonAPI_15_1>>> */
  if ( SDMMC004_Handle.f8 == 0)
  {
    SDMMC004_Handle.CardType |= SDMMC004_SD_STANDARD_CAPACITY_V1x;
  }
  /* If F8 =1 , Standard Capacity V2 or High Capacity Card */
  /* <<<DD_SDMMC_nonAPI_15_2>>> */
  else
  {
    /* Check CCS bit in the OCR register, CCS=1 means High Capacity  card*/
    /* <<<DD_SDMMC_nonAPI_15_3>>> */
    if ((SDMMC004_CardInfo.Ocr & SDMMC004_OCR_CCS_BITMASK ) != 0)
    {
      SDMMC004_Handle.CardType |= SDMMC004_SD_HIGH_CAPACITY | \
          SDMMC004_BLOCK_ADDRESSING;
    }
    /* <<<DD_SDMMC_nonAPI_15_4>>> */
    /* CCS=0 means Standard Capacity Version2*/
    else
    {
      SDMMC004_Handle.CardType |= SDMMC004_SD_STANDARD_CAPACITY_V2;
    }
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
}

/* <<<DD_SDMMC_nonAPI_16>>> */
/*
 * This function finds out the Write protection status of the card.
 */
status_t SDMMC004_lSetWriteProtect (void)
{
  uint32_t SdStatus[16] = {0};
  uint32_t WriteProtect;
  status_t Status = (uint32_t)SDMMC004_ERROR;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
#if SDMMC_SUPPORT_MMC_CARD
    SDMMC004_MMCCSDType *TmpMmcCsdPtr;
    /* <<<DD_SDMMC_nonAPI_16_1>>> */
    if ((SDMMC004_Handle.CardType & SDMMC004_MMC) != 0)
    {
      TmpMmcCsdPtr = (SDMMC004_MMCCSDType *)&SDMMC004_CardInfo.CsdArray;
      /* Read Write Protection bits from CSD Register i.e both Temp & Permanent */
      /* <<<DD_SDMMC_nonAPI_16_2>>> */
      if ( ((TmpMmcCsdPtr->TempWriteProtect) != 0) ||
          ((TmpMmcCsdPtr->PermWriteProtect) != 0))
      {
        SDMMC004_Handle.State |=(uint32_t)SDMMC004_STATE_CARD_WRITE_PROTECT;
      }
    }
    else
#endif
    {
      /* SD Card Write Protection.  */
      Status  = SDMMC004_GetSdStatus((void*)&(SdStatus[0]));
      /* <<<DD_SDMMC_nonAPI_16_3>>> */
      if (Status != DAVEApp_SUCCESS)
      {
        break;
      }
      /* <<<DD_SDMMC_nonAPI_16_4>>> */
      /* Bits 480:495 in the SD status gives the Write Protection Information */
      WriteProtect = ((SdStatus[0] & 0xFF000000) >> 24 ) | 
          (((SdStatus[0] & 0x00FF0000) >> 16 ) << 8) ;
      if ( (WriteProtect & SDMMC004_SD_CARD_TYPE_BITMASK) != 0 )
      {
        SDMMC004_Handle.State |=(uint32_t)SDMMC004_STATE_CARD_WRITE_PROTECT;
      }
    }
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_17>>> */
/*
 * This function reads the  Relative card address of the card.
 */
status_t SDMMC004_lReadRca()
{
  status_t Status ;
#if SDMMC_SUPPORT_MMC_CARD
  uint32_t CardStatus = 0;
#endif /* SDMMC_SUPPORT_MMC_CARD */
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /*  Read RCA for MMC card */
#if SDMMC_SUPPORT_MMC_CARD
  /* <<<DD_SDMMC_nonAPI_17_1>>> */
  if ((SDMMC004_Handle.CardType & SDMMC004_MMC) != 0)
  {
    Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(3)),\
            (uint32_t)SDMMC004_MMC_DEFAULT_RCA, SDMMC004_RESPONSE_R1,&CardStatus);
    SDMMC004_CardInfo.Rca = SDMMC004_MMC_DEFAULT_RCA;
  }
  /*  Read RCA for SD  */
  else
#endif
  {
    /* <<<DD_SDMMC_nonAPI_17_2>>> */
    Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(3)), \
                                      SDMMC004_ARGUMENT0, \
                                      SDMMC004_RESPONSE_R6, \
                                     &(SDMMC004_CardInfo.Rca));
                                  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_18>>> */
/*
 * This function initializes the MMC card.
 */
#if SDMMC_SUPPORT_MMC_CARD
/* SDMMC_MMC Initialize */
status_t SDMMC004_lInitializeMmcCard()
{
  status_t Status;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Reset the card. i.e cmd0 */
    Status = (uint32_t)SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(0)), \
                                              SDMMC004_ARGUMENT0,  \
                                              SDMMC004_NO_RESPONSE, NULL);
    /* <<<DD_SDMMC_nonAPI_18_1>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS )
    {
      break;
    }
    /*Command1 indicating support for high capacity cards & voltage 2.7 to 3.6v */
    do
    {
      Status = SDMMC004_lSendCommand(&(SDMMC004_MMC_COMMAND(1)), \
                                      MMC_CMD1_ARG ,SDMMC004_RESPONSE_R3,\
                                      &(SDMMC004_CardInfo.Ocr) );
      /* <<<DD_SDMMC_nonAPI_18_2>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS )
      {
        break;
      }/* End of "if(Status != DAVEApp_SUCCESS )" */
    } while(SDMMC004_CardInfo.Ocr & SDMMC004_OCR_POWER_STATUS_BITMASK );

    /* Check mode. 00b (byte mode) & 10b (sector mode)*/
    /* <<<DD_SDMMC_nonAPI_18_3>>> */
    if( ((SDMMC004_CardInfo.Ocr & SDMMC004_MMC_OCR_ACCESS_MODE_BITMASK) >> \
        (SDMMC004_MMC_OCR_ACCESS_MODE_BITPOS) != 0))
    {
      SDMMC004_Handle.CardType |= SDMMC004_BLOCK_ADDRESSING;
    }
    SDMMC004_Handle.CardType |= SDMMC004_MMC;
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}
#endif

/* <<<DD_SDMMC_nonAPI_19>>> */
/*
 * This function reads the CSD, SCR and Write protection status of the card.
 */
status_t SDMMC004_lReadCardRegisters (void)
{
  uint32_t Argument = 0;
  uint32_t CardStatus = 0;
  status_t Status;
  SDMMC004_SCRType ScrContent = {0};
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Read CSD Register  */
    Argument |= SDMMC004_CardInfo.Rca << SDMMC004_ARG_RCA_BITPOS;
    Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(9)),Argument, \
                                      SDMMC004_RESPONSE_R2, \
                                      (void *)SDMMC004_CardInfo.CsdArray);
    /* <<<DD_SDMMC_nonAPI_19_1>>> */
    if( Status != (uint32_t)DAVEApp_SUCCESS )
    {
      break;
    }
    /* Set Write protection flags */
    Status = SDMMC004_lSetWriteProtect();
    /* <<<DD_SDMMC_nonAPI_19_2>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* <<<DD_SDMMC_nonAPI_19_3>>> */
    /* Read SCR register for SD card */
    if ((SDMMC004_Handle.CardType & SDMMC004_MMC) == 0)
    {
      /* Switch to Transferring State. */
      Status = SDMMC004_lSwitchToTransferState();
      /* <<<DD_SDMMC_nonAPI_19_4>>> */
      if( Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
      /*Send the Application Specific Command i.e. Command 55.*/
      Argument |= SDMMC004_CardInfo.Rca << SDMMC004_ARG_RCA_BITPOS;
      Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(55)), \
                                        Argument, SDMMC004_RESPONSE_R1, \
                                        &CardStatus );
      /* <<<DD_SDMMC_nonAPI_19_5>>> */
      if( Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
      /* Set Direction Select bit in the Transfer Mode register */
      SET_BIT( SDMMC->TRANSFER_MODE,SDMMC_TRANSFER_MODE_TX_DIR_SELECT_Pos);
      /* Read the transferred SCR data*/
      Status = SDMMC004_lSingleBlockTransfer( &(SDMMC004_SD_COMMAND(64)), \
                                                SDMMC004_ARGUMENT0,8, \
                                                (uint32_t *)&ScrContent, \
                                                SDMMC004_READ_FROM_BUFF);
      SDMMC004_CardInfo.Scr = ScrContent;
      /* <<<DD_SDMMC_nonAPI_19_6>>> */
      if( Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
    } /* End of " if ((SDMMC004_Handle.CardType & SDMMC004_MMC) == 0)"*/
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_20>>> */
/*
 * This function configures the registers for Single Block Transfer.
 */
status_t SDMMC004_lConfigureForSingleTransfer
(
  const SDMMC004_CommandType *CommandPtr,
  uint32_t Argument,
  uint16_t BlockSize
)
{
  status_t Status = (uint32_t)SDMMC004_ERROR;
  uint32_t CardStatus = 0;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Set Block Size Register */
    WR_REG( SDMMC->BLOCK_SIZE,SDMMC_BLOCK_SIZE_TX_BLOCK_SIZE_Msk , \
            SDMMC_BLOCK_SIZE_TX_BLOCK_SIZE_Pos,BlockSize );
    /* Clear the Multi Block Select bit */
    CLR_BIT( SDMMC->TRANSFER_MODE,SDMMC_TRANSFER_MODE_MULTI_BLOCK_SELECT_Pos);
    /* Clear the ACMD Enable bit*/
    CLR_BIT( SDMMC->TRANSFER_MODE,SDMMC_TRANSFER_MODE_ACMD_EN_Pos);
    /* Clear the Block Count Enable bit*/
    CLR_BIT( SDMMC->TRANSFER_MODE,SDMMC_TRANSFER_MODE_BLOCK_COUNT_EN_Pos);

#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_TC13Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt =TRUE ;
    }
    if (Test_TriggerInterrupt.Trigger_TC20Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt =TRUE ;
    }

    if (Test_TriggerInterrupt.Trigger_Command42Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt =TRUE ;
    }
    if (Test_TriggerInterrupt.Trigger_CommandErrorInterrupt == TRUE)
    {
      /* Disable the Command Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk);
      /* Disable the Command Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM &= ~( SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk);

      /* Disable the Buffer Ready Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      /* Disable the Buffer Write  Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      /* Disable the Transfer Complete  Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_TX_COMPLETE_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_SIGNAL_NORM_TX_COMPLETE_EN_Msk);
    }
    if (Test_TriggerInterrupt.Trigger_DataErrorInterrupt == TRUE)
    {
      /* Disable the Buffer Ready Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      /* Disable the Buffer Ready Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
    }
#endif
    /* Send Single Block Transfer Command */
    Status = (uint32_t)SDMMC004_lSendCommand( CommandPtr, Argument, \
                                              SDMMC004_RESPONSE_R1,&CardStatus);
    /* <<<DD_SDMMC_nonAPI_20_1>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_21>>> */
/*
 * This function configures the registers for Multiple Block Transfer.
 */
status_t SDMMC004_lConfigureRegForMultiTransfer
(
  uint32_t *TmpAddrPtr,
  uint32_t NumberOfBlocks,
  const SDMMC004_CommandType *CommandPtr
)
{
  status_t Status;
  uint32_t CardStatus = 0;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Block Addressing */
    /* <<<DD_SDMMC_nonAPI_21_1>>> */
    if ((SDMMC004_Handle.CardType & SDMMC004_BLOCK_ADDRESSING) == 0UL)
    {
      *TmpAddrPtr *= 512UL;
    }
    /* Set Block Size Register */
    WR_REG( SDMMC->BLOCK_SIZE,SDMMC_BLOCK_SIZE_TX_BLOCK_SIZE_Msk ,  \
            SDMMC_BLOCK_SIZE_TX_BLOCK_SIZE_Pos,SDMMC004_TX_BLOCK_SIZE_VALUE);
    /* Set Transfer Mode Register */
    SET_BIT( SDMMC->TRANSFER_MODE,SDMMC_TRANSFER_MODE_MULTI_BLOCK_SELECT_Pos);
    SET_BIT( SDMMC->TRANSFER_MODE,SDMMC_TRANSFER_MODE_ACMD_EN_Pos);
    SET_BIT( SDMMC->TRANSFER_MODE,SDMMC_TRANSFER_MODE_BLOCK_COUNT_EN_Pos);

    /* Set Block Count Register */
    WR_REG( SDMMC->BLOCK_COUNT, SDMMC_BLOCK_COUNT_BLOCK_COUNT_Msk ,\
            SDMMC_BLOCK_COUNT_BLOCK_COUNT_Pos, NumberOfBlocks);

    /* Enable ACMD 12 Interrupt Signal  */
    SDMMC->EN_INT_SIGNAL_ERR &= ~SDMMC_EN_INT_SIGNAL_ERR_ACMD_ERR_EN_Msk;
    SDMMC->EN_INT_SIGNAL_ERR |= SDMMC_EN_INT_SIGNAL_ERR_ACMD_ERR_EN_Msk;

#if SDMMC_UVP_TEST 
    if ( Test_TriggerInterrupt.Trigger_TC8Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = TRUE;
    }
    if ( Test_TriggerInterrupt.Trigger_TC10Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = TRUE;
    }
    if ( Test_TriggerInterrupt.Trigger_TC17Error == TRUE)
    {
      Test_TriggerInterrupt.Trigger_CommandErrorInterrupt = TRUE;
    }
    if (Test_TriggerInterrupt.Trigger_CommandErrorInterrupt == TRUE)
    {
      /* Disable the Command Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk);
      /* Disable the Command Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM &= ~( SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk);
      /* Disable the Buffer Ready Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      /* Disable the Buffer Write Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      /* Disable the Transfer Complete Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_TX_COMPLETE_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_SIGNAL_NORM_TX_COMPLETE_EN_Msk);
    }
    if (Test_TriggerInterrupt.Trigger_DataErrorInterrupt == TRUE)
    {
      /* Disable the Buffer Ready Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk);

      /* Disable the Buffer Ready Status & Signal Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk);
    }
#endif
    /* Send Multiple Block  Transfer Command */
    Status = SDMMC004_lSendCommand( CommandPtr, *TmpAddrPtr, \
                                    SDMMC004_RESPONSE_R1, &CardStatus );
    /* <<<DD_SDMMC_nonAPI_21_2>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_22>>> */
/*
 * This function is used to transfer multiple blocks of data.
 */
status_t SDMMC004_lMultiBlockTransfer 
(
  uint32_t *AddrPtr, uint32_t NumberOfBlocks,\
  const SDMMC004_CommandType *CommandPtr, \
  uint32_t *BufferPtr, SDMMC004_DataTrasferType TransferMode
)
{
  status_t Status ;
  SDMMC004_Handle.TransferInterruptError = SDMMC004_ERROR;
  do
  {
    SDMMC004_BufferPtr = BufferPtr;
    SDMMC004_TransferQuadBytes = SDMMC004_NUM_QUADLETS_IN_BLOCK;
    SDMMC004_BlockCount = NumberOfBlocks;
    /* Configure Registers for Multi block transfer*/
    Status = SDMMC004_lConfigureRegForMultiTransfer( AddrPtr, NumberOfBlocks, \
                                                    CommandPtr );
    /* <<<DD_SDMMC_nonAPI_22_1>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_DataErrorInterrupt == TRUE)
    {
      /* Forcefully trigger the Data Crc Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0020 ;
    }
#endif
    /* Read/Write Transfer will be done in when buffer ready interrupt comes  */
    /* <<<DD_SDMMC_nonAPI_22_2>>> */
    Status = SDMMC004_lDataTransfer();
    /* <<<DD_SDMMC_nonAPI_22_3>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* Block on Transfer Complete Interrupt */
    /* <<<DD_SDMMC_nonAPI_22_4>>> */
    /* Timeout of 1ms.*/
    Status = SDMMC004_lTransferDelay(SDMMC004_DELAY_IN_TRANSFER);
    if(Status != (uint32_t) DAVEApp_SUCCESS)
    {
      ERROR(GID_SDMMC00x, Status, 0, NULL);
      break;
    }
    /* <<<DD_SDMMC_nonAPI_22_5>>> */
    /* Check ACMD status*/
    if (SDMMC004_Handle.AcmdInterruptError == SDMMC004_ACMD12_ERROR)
    {
      /* Call ACMD12 Error Recovery */
      SDMMC004_lAcmdErrorRecovery();
    }
  } while(0);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_23>>> */
/*
 * This function performs the  Single Block Transfer.
 */
status_t SDMMC004_lSingleBlockTransfer
(
  const SDMMC004_CommandType *CommandPtr,
  uint32_t Argument,
  uint16_t BlockSize,
  uint32_t *BufferPtr,
  SDMMC004_DataTrasferType TransferMode
)
{
  status_t Status;
  SDMMC004_BufferPtr = BufferPtr;
  SDMMC004_TransferQuadBytes = BlockSize/4;
  SDMMC004_BlockCount = 1;
  do
  {
    /* Configure Register  for Single Block Transfer */
    Status = SDMMC004_lConfigureForSingleTransfer(CommandPtr,Argument,BlockSize);
    /* <<<DD_SDMMC_nonAPI_23_1>>> */
    if ((uint32_t)DAVEApp_SUCCESS != Status)
    {
      break;
    }
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_DataErrorInterrupt == TRUE)
    {
      /* Forcefully trigger the Data Crc Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0020 ;
    }
#endif
    /* Data transfer will be done in Buffer ready interrupt routine*/
    Status = SDMMC004_lDataTransfer();
    /* <<<DD_SDMMC_nonAPI_23_2>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* Block on Transfer Complete Interrupt */
    SDMMC004_TransferSemaphoreIndex = osSemaphoreWait ( \
                                      SDMMC004_TransferSemaphoreId,\
                                      SDMMC004_DELAY_IN_TRANSFER);
    if(   SDMMC004_TransferSemaphoreIndex < 0)
    { 
      break;
    } 
    /* Check Transfer Complete Status */
    /* <<<DD_SDMMC_nonAPI_23_4>>> */
    if (SDMMC004_Handle.TransferInterruptError == SDMMC004_TRANSFER_COMPLETE )
    {
      Status = (uint32_t)DAVEApp_SUCCESS;
    }
    /* <<<DD_SDMMC_nonAPI_23_5>>> */
    else
    {
      SDMMC004_Handle.IssueAbort = 1;
      Status = SDMMC004_lErrorInterruptRecovery(\
                         SDMMC004_ISRContext.InterruptStatusShadow, \
                         SDMMC004_Handle.IssueAbort);
      break;
    }
  } while(0);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_24>>> */
/*
 * This function checks the Lock Status .
 */
status_t SDMMC004_lCheckLockStatus( SDMMC004_CardLockMode OperationMode )
{
  status_t Status ;
  uint32_t LockStatus = 0;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  Status =  SDMMC004_GetLockStatus(&LockStatus);
  /* For Lock, Card State must be locked */
  /* <<<DD_SDMMC_nonAPI_24_1>>> */
  if (Status == (uint32_t)DAVEApp_SUCCESS)
  {
    if( (LockStatus == (uint32_t)SDMMC004_CARD_IS_LOCKED) && \
        (OperationMode == SDMMC004_LOCK)
       )
    {
      Status = (uint32_t)DAVEApp_SUCCESS;
    }
    /* <<<DD_SDMMC_nonAPI_24_2>>> */
    /* For UnLock, Card State must be unlock */
    else if( (LockStatus == (uint32_t)SDMMC004_CARD_UNLOCKED) && \
        (OperationMode == SDMMC004_UNLOCK)
    )
    {
      Status = (uint32_t)DAVEApp_SUCCESS;
    }
    /* Some Error */
    else
    {
      Status = (uint32_t)SDMMC004_LOCK_UNLOCK_ERROR;
    }
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_25>>> */
/*
 * This function switches the bus width to 4-bit if is supported.
 */
status_t SDMMC004_lSwitchBusWidth(void)
{
  uint32_t Argument = 0;
  status_t Status = (uint32_t)SDMMC004_ERROR;
  uint32_t CardStatus = 0;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Switch to transfer state i.e. CMD7 */
    Status = SDMMC004_lSwitchToTransferState();
    /* <<<DD_SDMMC_nonAPI_25_1>>> */
    if( Status != (uint32_t)DAVEApp_SUCCESS )
    {
      break;
    }
    /* Disable Card Interrupt */
    CLR_BIT( SDMMC->EN_INT_SIGNAL_NORM, SDMMC_EN_INT_STATUS_NORM_CARD_INS_EN_Pos );
    /* MMC Card */
    /* <<<DD_SDMMC_nonAPI_25_2>>> */
#if SDMMC_SUPPORT_MMC_CARD
    if ((SDMMC004_Handle.CardType & SDMMC004_MMC) != 0)
    {
      Status = SDMMC004_lSendCommand(&(SDMMC004_MMC_COMMAND(6)),\
                                      MMC_4BUS_WIDTH_ARG,\
                                      SDMMC004_RESPONSE_R1, &CardStatus);
      /* <<<DD_SDMMC_nonAPI_25_3>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
    }
    /* SD card */
    else
#endif /* SDMMC_SUPPORT_MMC_CARD*/
    {
      /* <<<DD_SDMMC_nonAPI_25_4>>> */
      /* Check the Data Transfer width supported in SCR Register */
      if( !(SDMMC004_CardInfo.Scr.SdBusWidth & SDMMC004_SCR_BUS_WIDTH4_BITMASK))
      {
        break;
      }
      /* Set the Argument.*/
      Argument |= SDMMC004_CardInfo.Rca << SDMMC004_ARG_RCA_BITPOS;
      /* Send Application Specific Command */
      Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(55)), \
          Argument, \
          SDMMC004_RESPONSE_R1, \
          &CardStatus);
      /* <<<DD_SDMMC_nonAPI_25_5>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
      /* Send ACMD6 to switch the bus width. */
      Status = SDMMC004_lSendCommand( &(SDMMC004_SD_COMMAND(58)), \
          SDMMC004_SD_4BUS_WIDTH_ARG, \
          SDMMC004_RESPONSE_R1, \
          &CardStatus);
      /* <<<DD_SDMMC_nonAPI_25_6>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
    }
    /* Set Data Transfer Width  in Host Control Register. */
    SET_BIT( SDMMC->HOST_CTRL,SDMMC_HOST_CTRL_DATA_TX_WIDTH_Pos);
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_26>>> */
/*
 * This function switches the card speed to high speed  if is supported.
 */
status_t SDMMC004_lSwitchSpeed( void)
{
#if SDMMC_SUPPORT_MMC_CARD
  uint32_t CardStatus;
#endif
  uint32_t SwitchStatus[16] = {0 };
  status_t Status = (uint32_t)SDMMC004_ERROR;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
#if SDMMC_SUPPORT_MMC_CARD
    /* <<<DD_SDMMC_nonAPI_26_1>>> */
    if ((SDMMC004_Handle.CardType & SDMMC004_MMC) != 0)
    {
      /* Switch to transfer state i.e. CMD7 */
      Status = SDMMC004_lSwitchToTransferState();
      if( Status != DAVEApp_SUCCESS )
      {
        break;
      }
      Status = SDMMC004_lSendCommand(&(SDMMC004_MMC_COMMAND(6)),\
                                      MMC_HIGH_SPEED_ARG,\
                                      SDMMC004_RESPONSE_R1,&CardStatus);
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
    }
    /* SD card */
    else
#endif /* SDMMC_SUPPORT_MMC_CARD */
    {
      /* <<<DD_SDMMC_nonAPI_26_2>>> */
      /* Check CMD6 support in SCR register*/
      if ( SDMMC004_CardInfo.Scr.SdSpec == 0 )
      {
        break;
      }
      /* Switch to transfer state i.e. CMD7 */
      Status = SDMMC004_lSwitchToTransferState();
      /* <<<DD_SDMMC_nonAPI_26_3>>> */
      if( Status != (uint32_t)DAVEApp_SUCCESS )
      {
        break;
      }
      /* Send the Switch function  command and read the transferred block of
       * data from the card */
      Status = SDMMC004_lSingleBlockTransfer( &(SDMMC004_SD_COMMAND(6)), \
                                              SDMMC004_SD_HIGH_SPEED_ARG,64, \
                                              (uint32_t*)SwitchStatus, \
                                               SDMMC004_READ_FROM_BUFF
                                             );
      /* <<<DD_SDMMC_nonAPI_26_4>>> */
      if ( Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
      /* <<<DD_SDMMC_nonAPI_26_5>>> */
      if ( ((SwitchStatus[4] & SDMMC004_SWITCH_FUNC_GRP1_STATUS_BITMASK) >> \
          SDMMC004_SWITCH_FUNC_GRP1_STATUS_BITPOS) != 1UL )
      {
        Status = (uint32_t)SDMMC004_ERROR;
        break;
      }
      /* Change Speed mode in the Host Controller */
      SET_BIT( SDMMC->HOST_CTRL,SDMMC_HOST_CTRL_HIGH_SPEED_EN_Pos );
    }
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_27>>> */
/*
 * This function performs the recovery task if any error interrupt occurs.
 */
status_t SDMMC004_lErrorInterruptRecovery
(
  uint16_t InterruptStatus,
  uint8_t IssueAbort
)
{
  status_t Status =  (uint32_t)SDMMC004_NONRECOVERABLE_ERROR;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {
    /* Disable the Error Interrupt Signal  */
    SDMMC->EN_INT_SIGNAL_ERR = 0;
    /* Check Error Interrupt Status bits D0-D3 for CMD line errors */
    /* <<<DD_SDMMC_nonAPI_27_1>>> */
    if ( ((InterruptStatus & SDMMC004_ERROR_CMD_STATUS_BITMASK) != 0 ) || \
        ( SDMMC->PRESENT_STATE  & SDMMC_PRESENT_STATE_COMMAND_INHIBIT_CMD_Msk ))
    {
      /* Set Software Reset for CMD Line  */
      Status = SDMMC004_lReset(SDMMC_SW_RESET_SW_RST_CMD_LINE_Msk);
    }
    /* <<<DD_SDMMC_nonAPI_27_2>>> */
    /* Check Error Interrupt Status bits D4-D6 for Data line errors */
    if ( ((InterruptStatus & SDMMC004_ERROR_DATA_STATUS_BITMASK) != 0 ) ||  \
        ( SDMMC->PRESENT_STATE  & SDMMC_PRESENT_STATE_COMMAND_INHIBIT_DAT_Msk ))
    {
      /*  Set Software Reset for Data Line */
      /* <<<DD_SDMMC_nonAPI_27_3>>> */
      Status = SDMMC004_lReset( SDMMC_SW_RESET_SW_RST_DAT_LINE_Msk);
    }
    /*  Clear previous error status  */
    SDMMC->INT_STATUS_ERR = SDMMC004_ALL_ERROR_STATUS_BITMASK ;
    /* <<<DD_SDMMC_nonAPI_27_4>>>  */
    if (IssueAbort == 1)
    {   
      /*  Issue Abort Command.  */
      /*  Set argument register */
      SDMMC->ARGUMENT1 = SDMMC004_ARGUMENT0;
      /*  Set command register */
      SDMMC->COMMAND = (uint16_t)(*(uint16_t*)&(SDMMC004_COMMON_COMMAND(12)));  
      /* Take the semaphores  */
      SDMMC004_CmdSemaphoreIndex = osSemaphoreWait(SDMMC004_CmdSemaphoreId,\
                                                SDMMC004_DELAY_IN_COMMAND);
      /* <<< DD_SDMMC_nonAPI_27_5 >>> */
      if( SDMMC004_CmdSemaphoreIndex < 0)
      {
        break;
      }  
      /* If error status bit is set in the Status register */
      /* <<<DD_SDMMC_nonAPI_27_6>>> */
      if (SDMMC->INT_STATUS_ERR )
      {
        Status = (uint32_t)SDMMC004_NONRECOVERABLE_ERROR;
        SDMMC->INT_STATUS_ERR = SDMMC004_ALL_ERROR_STATUS_BITMASK ;
        SDMMC->INT_STATUS_NORM = SDMMC004_ALL_ERROR_STATUS_BITMASK ;
        /* Set Software Reset for CMD Line and Data Line  */
        SDMMC004_ReturnStatus = SDMMC004_lReset(SDMMC_SW_RESET_SW_RST_CMD_LINE_Msk | \
                                           SDMMC_SW_RESET_SW_RST_DAT_LINE_Msk );
        break;
      }
    }
    /* Check Data lines status in present status register  */
    /* <<<DD_SDMMC_nonAPI_27_7>>> */
    if (( (SDMMC->PRESENT_STATE  & SDMMC_PRESENT_STATE_DAT_3_0_PIN_LEVEL_Msk) >> \
        SDMMC_PRESENT_STATE_DAT_3_0_PIN_LEVEL_Pos) == SDMMC004_ALL_DATA_LINES_HIGH)
    {
      Status = (uint32_t)SDMMC004_RECOVERABLE_ERROR;
    }
    else
    {
      Status =  (uint32_t)SDMMC004_NONRECOVERABLE_ERROR;
    }
  } while(0);
  /* Enable the Error Interrupt signal */
  SDMMC->EN_INT_SIGNAL_ERR |= SDMMC004_ERROR_INT_SIGNAL_ENABLE;
  /* Global Error Recovery Variable */
  SDMMC004_Handle.ErrorRecoveryStatus = (SDMMC004_ErrorCodesType)Status;
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_28>>> */
/*
 * This function handles the Interrupt in Normal Interrupt Status Register.
 */
status_t SDMMC004_lNormalInterruptHandler( uint16_t IntStatus)
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  uint32_t Count;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
#if SDMMC_CARD_DETECTION_SUPPORT
  /* <<<DD_SDMMC_nonAPI_28_1>>> */
  /* CARD REMOVAL INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_NORM_CARD_REMOVAL_Msk) != 0)
  {
    /* Confirm that the Card Insertion bit is clear in Present State Status*/
    do
    {
    } while(( SDMMC->PRESENT_STATE &  SDMMC_PRESENT_STATE_CARD_INSERTED_Msk)!= 0);
    /* Clear the Interrupt Status bit */
    SDMMC->INT_STATUS_NORM = SDMMC_INT_STATUS_NORM_CARD_REMOVAL_Msk;
 
    /* Call back to upper layer function for card removal interrupt*/
    if (SDMMC004_Handle.CallBackPtr != NULL)
    {
      SDMMC004_Handle.CallBackPtr(SDMMC004_CARD_REMOVAL); 
    }
    else
    {
      Status = SDMMC004_NULL_POINTER;
      ERROR(GID_SDMMC00x, Status,0,0);
    }

  }
  /* <<<DD_SDMMC_nonAPI_28_2>>> */
  /* CARD INSERTION INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_NORM_CARD_INS_Msk) != 0)
  {
    /* Confirm that the Card Insertion bit is set in Present State Status*/
    do
    {
    } while((SDMMC->PRESENT_STATE & SDMMC_PRESENT_STATE_CARD_INSERTED_Msk) == 0);
    /* Clear the Interrupt Status */
    SDMMC->INT_STATUS_NORM = SDMMC_INT_STATUS_NORM_CARD_INS_Msk;

    /* Call back to upper layer function for card insertion interrupt*/
    if (SDMMC004_Handle.CallBackPtr != NULL)
    {
      SDMMC004_Handle.CallBackPtr(SDMMC004_CARD_INSERTION); 
    }
    else
    {
      Status = SDMMC004_NULL_POINTER;
      ERROR(GID_SDMMC00x, Status,0,0);
    }
  }
#endif
  /* <<<DD_SDMMC_nonAPI_28_3>>> */
  /* BUFFER READ READY INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_NORM_BUFF_READ_READY_Msk) != 0)
  {
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_NORM = SDMMC_INT_STATUS_NORM_BUFF_READ_READY_Msk;
    /* Update the Global Variable */
    SDMMC004_Handle.BufferReadyInterruptStatus = SDMMC004_BUFFER_READY;
    /* Check the global variable for any error in the block transfer */
    /* <<<DD_SDMMC_nonAPI_28_4>>> */
    if ( SDMMC004_Handle.DataInterruptError == SDMMC004_BUFFER_READY)
    {
      for (Count=0; Count<SDMMC004_TransferQuadBytes; Count++)
      {
        *SDMMC004_BufferPtr  = SDMMC->DATA_BUFFER;
        SDMMC004_BufferPtr++;
      }
      SDMMC004_BlockCount--;
    }
    /* <<<DD_SDMMC_nonAPI_28_5>>> */
    /* Check Block Count */
    if (SDMMC004_BlockCount == 0)
    {
      /* Release the Semaphore */
      Status = osSemaphoreRelease (SDMMC004_DataSemaphoreId);
    }
  }

  /* <<<DD_SDMMC_nonAPI_28_5>>> */
  /* BUFFER WRITE READY INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_NORM_BUFF_WRITE_READY_Msk) != 0)
  {

    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_NORM = SDMMC_INT_STATUS_NORM_BUFF_WRITE_READY_Msk;
    /* Update the Global Variable */
    SDMMC004_Handle.BufferReadyInterruptStatus  = SDMMC004_BUFFER_READY;
    /* Check the global variable for any error in the block transfer */
    if ( SDMMC004_Handle.DataInterruptError == SDMMC004_BUFFER_READY)
    {
      for (Count=0; Count<SDMMC004_TransferQuadBytes; Count++)
      {
        SDMMC->DATA_BUFFER = *SDMMC004_BufferPtr;
        SDMMC004_BufferPtr++;
      }
      SDMMC004_BlockCount--;
    }
    if (SDMMC004_BlockCount == 0)
    {
      /* Release the Semaphore */
      Status = osSemaphoreRelease (SDMMC004_DataSemaphoreId);
    }
  }
  
  /* <<<DD_SDMMC_nonAPI_28_6>>> */
  /* TRANSFER COMPLETE INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_NORM_TX_COMPLETE_Msk ) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.TransferInterruptError = SDMMC004_TRANSFER_COMPLETE;
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_NORM = SDMMC_INT_STATUS_NORM_TX_COMPLETE_Msk;
    /* Change the data line Status  to be free */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_DATA_ACTIVE;
    /* Release the Semaphore */
    Status = osSemaphoreRelease (SDMMC004_TransferSemaphoreId);
  }
  
  /* <<<DD_SDMMC_nonAPI_28_7>>> */
  /* COMMAND COMPLETE INTERRUPT */
  if ((IntStatus &  SDMMC_INT_STATUS_NORM_CMD_COMPLETE_Msk) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.CommandInterruptError = SDMMC004_COMMAND_COMPLETE;
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_NORM = SDMMC_INT_STATUS_NORM_CMD_COMPLETE_Msk;
    /* Change the Command Line Status to free */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_CMD_ACTIVE;
    /* Release the Semaphore */
    Status =osSemaphoreRelease (SDMMC004_CmdSemaphoreId);
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return (uint32_t)Status;
}

/* <<<DD_SDMMC_nonAPI_29>>> */
/*
 * This function handles the Interrupt in Error Interrupt Status Register.
 */

status_t SDMMC004_lErrorInterruptHandler(uint16_t IntStatus)
{
  status_t Status = (uint32_t)SDMMC004_ERROR;

  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  SDMMC004_ISRContext.InterruptStatusShadow = IntStatus;
  /* <<<DD_SDMMC_nonAPI_29_1>>> */
  /* COMMAND TIMEOUT ERROR INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_CMD_TIMEOUT_ERR_Msk)!= 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.CommandInterruptError = SDMMC004_COMMAND_TIMEOUT_ERROR;
    /* Change the Command Line Status to free */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_CMD_ACTIVE;
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_CommandErrorInterrupt == TRUE)
    {
      /* Forcefully disable the Command Timeout Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0000 ;
    }
    if (Test_TriggerInterrupt.Trigger_Cmd55Error == TRUE)
    {
      /* Forcefully disable the Command Timeout Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0000 ;
    }
    if (Test_TriggerInterrupt.Trigger_Command42Error == TRUE)
    {
      /* Forcefully disable the Command Timeout Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0000 ;
    }
#endif  /*SDMMC_UVP_TEST*/
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR =  SDMMC_INT_STATUS_ERR_CMD_TIMEOUT_ERR_Msk;
    /* Release the Semaphore */
    Status =osSemaphoreRelease (SDMMC004_CmdSemaphoreId);
  }
  /* <<<DD_SDMMC_nonAPI_29_2>>> */
  /* COMMAND CRC ERROR INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_CMD_CRC_ERR_Msk ) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.CommandInterruptError = SDMMC004_COMMAND_CRC_ERROR;
    /* Change the Command Line Status to free */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_CMD_ACTIVE;
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR = SDMMC_INT_STATUS_ERR_CMD_CRC_ERR_Msk;
    /* Release the Semaphore */
    Status = osSemaphoreRelease (SDMMC004_CmdSemaphoreId);
  }
  /* <<<DD_SDMMC_nonAPI_29_3>>> */
  /* COMMAND END BIT ERROR INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_CMD_END_BIT_ERR_Msk ) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.CommandInterruptError = SDMMC004_COMMAND_ENDBIT_ERROR;
    /* Change the Command Line Status to free */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_CMD_ACTIVE;
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR = SDMMC_INT_STATUS_ERR_CMD_END_BIT_ERR_Msk;
    /* Release the Semaphore */
    Status =osSemaphoreRelease (SDMMC004_CmdSemaphoreId);
  }
  /* <<<DD_SDMMC_nonAPI_29_4>>> */
  /* COMMAND INDEX ERROR INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_CMD_IND_ERR_Msk ) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.CommandInterruptError = SDMMC004_COMMAND_INDEX_ERROR;
    /* Change the Command Line Status to free */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_CMD_ACTIVE;
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_EraseEndError == TRUE)
    {
      /* Forcefully disable the Command Index Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0000 ;
    }
    if (Test_TriggerInterrupt.Trigger_EraseStartError == TRUE)
    {
      /* Forcefully disable the Command Index Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0000 ;
    }
#endif  /*SDMMC_UVP_TEST*/
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR = SDMMC_INT_STATUS_ERR_CMD_IND_ERR_Msk;
    /* Release the Semaphore */
    Status =osSemaphoreRelease (SDMMC004_CmdSemaphoreId);
  }
  
  /* <<<DD_SDMMC_nonAPI_29_5>>> */
  /* DATA TIMEOUT ERROR INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_DATA_TIMEOUT_ERR_Msk) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.DataInterruptError = SDMMC004_DATA_TIMEOUT_ERROR;
    /* Change the Data line to free  */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_DATA_ACTIVE;
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR = SDMMC_INT_STATUS_ERR_DATA_TIMEOUT_ERR_Msk;
    /* Release the Semaphore */
    Status = osSemaphoreRelease (SDMMC004_DataSemaphoreId);
  }
  
  /* <<<DD_SDMMC_nonAPI_29_6>>> */
  /* DATA CRC ERROR INTERRUPT  */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_DATA_CRC_ERR_Msk) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.DataInterruptError = SDMMC004_DATA_CRC_ERROR;
    /* Change the Data line to free  */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_DATA_ACTIVE;
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_DataErrorInterrupt == TRUE)
    {
      /* Forcefully trigger the Data Crc Error Interrupt */
      SDMMC->FORCE_EVENT_ERR_STATUS = 0x0000 ;
      /* Enable the Buffer Ready Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM |= SDMMC_EN_INT_STATUS_NORM_BUFF_READ_READY_EN_Msk;
      SDMMC->EN_INT_SIGNAL_NORM |= SDMMC_EN_INT_SIGNAL_NORM_BUFF_READ_READY_EN_Msk;

      /* Enable the Buffer Ready Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM |= SDMMC_EN_INT_STATUS_NORM_BUFF_WRITE_READY_EN_Msk;
      SDMMC->EN_INT_SIGNAL_NORM |= SDMMC_EN_INT_SIGNAL_NORM_BUFF_WRITE_READY_EN_Msk;
    }
#endif
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR = SDMMC_INT_STATUS_ERR_DATA_CRC_ERR_Msk;
    /* Release the Semaphore */
    Status = osSemaphoreRelease (SDMMC004_DataSemaphoreId);
  }
  /* <<<DD_SDMMC_nonAPI_29_7>>> */
  /*DATA END BIT ERROR INTERRUPT */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_DATA_END_BIT_ERR_Msk) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.DataInterruptError = SDMMC004_DATA_ENDBIT_ERROR;
    /* Change the Data line to free  */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_DATA_ACTIVE;
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR = SDMMC_INT_STATUS_ERR_DATA_END_BIT_ERR_Msk;
    /* Release the Semaphore */
    Status = osSemaphoreRelease (SDMMC004_DataSemaphoreId);
  }
  /* <<<DD_SDMMC_nonAPI_29_8>>> */
  /* ACMD12 ERROR INTERUPT */
  if ((IntStatus & SDMMC_INT_STATUS_ERR_ACMD_ERR_Msk) != 0)
  {
    /* Update the Global Variable */
    SDMMC004_Handle.AcmdInterruptError = SDMMC004_ACMD12_ERROR;
    /* Change the Cmd line to free  */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_CMD_ACTIVE;
    /* Change the Data line to free  */
    SDMMC004_Handle.State &= ~SDMMC004_STATE_DATA_ACTIVE;
    /* Clear the Interrupt Status Bit */
    SDMMC->INT_STATUS_ERR = SDMMC_INT_STATUS_ERR_ACMD_ERR_Msk;
    /* Release the Semaphore */
    Status = osSemaphoreRelease (SDMMC004_CmdSemaphoreId);
  }
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_30>>> */
/*
 * This function is use to switch the card state to transferring state if the
 * card is not in the transferring state.
 */

status_t SDMMC004_lSwitchToTransferState()
{
  status_t Status = (uint32_t)SDMMC004_ERROR;
  uint32_t Argument = 0;
  uint32_t CardStatus = 0UL;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  /* Check the current state of the card */
  do
  { 
    Argument |= SDMMC004_CardInfo.Rca << SDMMC004_ARG_RCA_BITPOS;
    /* Send Cmd13 to read card status  */
    Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(13)),Argument, \
        SDMMC004_RESPONSE_R1,&CardStatus);
    /* <<<DD_SDMMC_nonAPI_30_1>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* <<<DD_SDMMC_nonAPI_30_2>>> */
    /* Check if it is in transferring state */
    if( (( CardStatus & SDMMC004_CSR_CURRENT_STATE_BITMASK) >>\
           SDMMC004_CSR_CURRENT_STATE_BITPOS ) ==  \
           SDMMC004_CSR_CURRENT_STATE_TRANS_VALUE )
    {
#if SDMMC_UVP_TEST
      if ( Test_TriggerInterrupt.Trigger_TransferStateError == TRUE)
      {
        /* Toggle to the Standy state.*/
        Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(7)),Argument, \
            SDMMC004_RESPONSE_R1b, &CardStatus);
        break;
      }
#endif
      Status = (uint32_t)DAVEApp_SUCCESS;
      break;
    }
    /* Switch to transfer state i.e. CMD7 */
    /* <<<DD_SDMMC_nonAPI_30_3>>> */
    Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(7)),Argument, \
        SDMMC004_RESPONSE_R1b, &CardStatus);
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}

/* <<<DD_SDMMC_nonAPI_31>>> */
/*
 * This function performs the data transfer to/from the card .
 */
status_t SDMMC004_lDataTransfer()
{
  status_t Status = (uint32_t)DAVEApp_SUCCESS;
  FUNCTION_ENTRY(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_ENTRY);
  do
  {

    /* Block on Buffer Read/Write Ready Interrupt */
    /* <<<DD_SDMMC_nonAPI_31_1>>> */
    SDMMC004_DataSemaphoreIndex =osSemaphoreWait ( SDMMC004_DataSemaphoreId,\
                                                SDMMC004_RESET_In_DATA_TRANSFER);
    if( SDMMC004_DataSemaphoreIndex < 0)
    { 
      break;
    }
    /* Check Buffer is ready */
    /* <<<DD_SDMMC_nonAPI_31_2>>> */
    if (SDMMC004_Handle.DataInterruptError != SDMMC004_BUFFER_READY)
    {
      SDMMC004_Handle.IssueAbort = 1;
      Status = SDMMC004_lErrorInterruptRecovery( \
                                    SDMMC004_ISRContext.InterruptStatusShadow,\
                                    SDMMC004_Handle.IssueAbort);
                                    }
  } while(0);
  FUNCTION_EXIT(GID_SDMMC00x, (uint32_t)SDMMC004_FUNCTION_EXIT);
  return Status;
}
/* <<<DD_SDMMC_nonAPI_43>>> */
/*
 * This function checks the PCMD flag.
 */
void SDMMC004_CheckPCMDFlag(status_t PCMDFlag)
{
  SDMMC004_ReturnStatus  = 1UL;
  /* <<<DD_SDMMC_nonAPI_43_1>>> */
  if (PCMDFlag == 1)
  {
    ERROR(GID_SDMMC00x, SDMMC004_ACMD_BOTH_ERROR,0,0);
  }
  /* <<<DD_SDMMC_nonAPI_43_2>>> */
  else
  {
    ERROR(GID_SDMMC00x, SDMMC004_ACMD_SD_TRANSFER_ERROR,0,0);
  }
}

/* <<<DD_SDMMC_nonAPI_32>>> */
/*
 * This function performs the ACMD error Recovery.
 */
void SDMMC004_lAcmdErrorRecovery()
{
  status_t Status;
  status_t PCMDFlag = 0;
  uint32_t CardStatus = 0;
  do
  {
    /* <<<DD_SDMMC_nonAPI_32_1>>> */
    /** Check Auto CMD12 Not Executed Err in Auto CMd12 Error Status Register */
    if ( ((SDMMC->ACMD_ERR_STATUS & SDMMC_ACMD_ERR_STATUS_ACMD12_NOT_EXEC_ERR_Msk) >> \
           SDMMC_ACMD_ERR_STATUS_ACMD12_NOT_EXEC_ERR_Pos)  == 1 )
    {
      /* Set PCMDFlag to 1*/
      PCMDFlag = 1;
      /* Check Return Status of Recovery function of CMD_wo_DAT command */
      /* <<<DD_SDMMC_nonAPI_32_2>>> */
      if (SDMMC004_Handle.ErrorRecoveryStatus != SDMMC004_RECOVERABLE_ERROR)
      {
        ERROR(GID_SDMMC00x, SDMMC004_NONRECOVERABLE_ERROR,0,0);
        break;
      }
      /* For recoverable error, issue CMD12 */
      Status = SDMMC004_lSendCommand( &(SDMMC004_COMMON_COMMAND(12)), \
                                      SDMMC004_ARGUMENT0, SDMMC004_RESPONSE_R1,
                                      &CardStatus);
      /* No Error */
      /* <<<DD_SDMMC_nonAPI_32_3>>> */
      if (Status == (uint32_t)DAVEApp_SUCCESS)
      {
        ERROR(GID_SDMMC00x, SDMMC004_ACMD_CMD_wo_DAT_ERROR,0,0);
        break;
      }
      /* <<<DD_SDMMC_nonAPI_32_4>>> */
      /* Non Recoverable Error */
      if (Status == (uint32_t)SDMMC004_NONRECOVERABLE_ERROR)
      {
        ERROR(GID_SDMMC00x, Status,0,0);
        break;
      }
    }
    /* <<<DD_SDMMC_nonAPI_32_5>>> */
    else
    {
      /* Set software reset for CMD line */
      Status = SDMMC004_lReset(SDMMC_SW_RESET_SW_RST_CMD_LINE_Msk);
      if ( Status !=(uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
      /* Issue Cmd 12*/
      /* <<<DD_SDMMC_nonAPI_32_6>>> */
      Status = SDMMC004_lSendCommand(  &(SDMMC004_COMMON_COMMAND(12)), \
                                       SDMMC004_ARGUMENT0, SDMMC004_RESPONSE_R1, \
                                       &CardStatus);
      /* Non Recoverable Error */
      /* <<<DD_SDMMC_nonAPI_32_7>>> */
      if (Status == (uint32_t)SDMMC004_NONRECOVERABLE_ERROR)
      {
        ERROR(GID_SDMMC00x, Status,0,0);
        break;
      }
    }
    /*Set Software Reset for  Data line*/
    Status = SDMMC004_lReset(SDMMC_SW_RESET_SW_RST_DAT_LINE_Msk);
    if ( Status !=(uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* <<<DD_SDMMC_nonAPI_32_8>>> */
    /*Check Command Not issued by Auto CMD12 Error */
    if ( ((SDMMC->ACMD_ERR_STATUS & \
           SDMMC_ACMD_ERR_STATUS_CMD_NOT_ISSUED_BY_ACMD12_ERR_Msk) >> \
           SDMMC_ACMD_ERR_STATUS_CMD_NOT_ISSUED_BY_ACMD12_ERR_Pos) == 1)
    {
      ERROR(GID_SDMMC00x, SDMMC004_ACMD_CMD_wo_DAT_NOT_ISSUED,0,0);
    }
    /* <<<DD_SDMMC_nonAPI_32_9>>> */
    else
    {
      /* Check PCMD flag.If 1 means that An error occurred in CMD_wo_DAT,
       *  and also occurred in the SD memory transfer */
      SDMMC004_CheckPCMDFlag(PCMDFlag);
    }
  } while(0);
}

/* <<< DD_SDMMC_nonAPI_33 >>> */
/**
 * This function is used to some delay in RTOS or NON-RTOS environment.
 */
void SDMMC004_lDelay(uint32_t DelayTime)
{
  osDelay(DelayTime);
}

/* <<< DD_SDMMC_nonAPI_34 >>>
 *  SDMMC Interrupt Handler */
void SDMMC0_0_IRQHandler()
{
  uint32_t Status;
  NormalIntStatus = SDMMC->INT_STATUS_NORM;
  ErrorIntStatus  = SDMMC->INT_STATUS_ERR;
  /* <<< DD_SDMMC_nonAPI_34_1 >>> */
  if (NormalIntStatus & SDMMC_INT_STATUS_NORM_ERR_INT_Msk)
  {
    Status = SDMMC004_lErrorInterruptHandler( ErrorIntStatus );
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      ERROR(GID_SDMMC00x, Status,0,0);
    }
  }
  /* <<< DD_SDMMC_nonAPI_34_2 >>> */
  if(NormalIntStatus & SDMMC004_NORMAL_INT_STATUS_BITS)
  {
    Status = SDMMC004_lNormalInterruptHandler( NormalIntStatus);
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      ERROR(GID_SDMMC00x, Status,0,0);
    }
  }
}

/* <<< DD_SDMMC_nonAPI_35 >>> */
status_t SDMMC004_lCreateOSResources()
{
  status_t Status = (uint32_t) DAVEApp_SUCCESS;
  do
  {
    /* <<< DD_SDMMC_nonAPI_35_1 >>> */
    if(SDMMC004_Handle.OSResourcesCreated == 0)
    {
      /* Create Data & Command Mutex */
      SDMMC004_CmdMutexId = osMutexCreate (osMutex(CmdMutexHandle));
      if (/*!N_DBG*/(NULL ==  SDMMC004_CmdMutexId ))
      {
        Status =  (uint32_t)SDMMC004_INIT_FAIL;
        break;
      }
      SDMMC004_DataMutexId = osMutexCreate(osMutex(DataMutexHandle));
      if (/*!N_DBG*/(NULL ==  SDMMC004_DataMutexId ))
      { 
        Status =  (uint32_t)SDMMC004_INIT_FAIL;
        break;
      }
      /* Create Data & Command Semaphore */
      SDMMC004_CmdSemaphoreId = osSemaphoreCreate (osSemaphore(CmdSemaphore), 1); 
      if (/*!N_DBG*/(NULL ==  SDMMC004_CmdSemaphoreId))
      { 
        Status =  (uint32_t)SDMMC004_INIT_FAIL;
        break;
      }
      SDMMC004_DataSemaphoreId = osSemaphoreCreate (osSemaphore(DataSemaphore), 1);
      if (/*!N_DBG*/(NULL ==  SDMMC004_DataSemaphoreId))
      { 
        Status = (uint32_t) SDMMC004_INIT_FAIL;
        break;
      } 
      SDMMC004_TransferSemaphoreId= osSemaphoreCreate (osSemaphore(TransferSemaphore), 1);
      if (/*!N_DBG*/(NULL ==  SDMMC004_TransferSemaphoreId))
      {
        Status = (uint32_t) SDMMC004_INIT_FAIL;
        break;
      }
      /* Take the semaphores  */
      SDMMC004_CmdSemaphoreIndex = osSemaphoreWait(SDMMC004_CmdSemaphoreId,\
                                    SDMMC004_SEMAPHORE_BLK_TIME);
      if( SDMMC004_CmdSemaphoreIndex < 0)
      {
        Status =  (uint32_t)SDMMC004_INIT_FAIL; 
        break;
      } 
      SDMMC004_DataSemaphoreIndex =osSemaphoreWait (SDMMC004_DataSemaphoreId,\
                                                 SDMMC004_SEMAPHORE_BLK_TIME);
      if( SDMMC004_DataSemaphoreIndex < 0)
      {
        Status = (uint32_t) SDMMC004_INIT_FAIL;
        break;
      }
      SDMMC004_TransferSemaphoreIndex =osSemaphoreWait (\
                                                SDMMC004_TransferSemaphoreId,\
                                                osWaitForever );
      if( SDMMC004_TransferSemaphoreIndex < 0)
      {
        Status = (uint32_t) SDMMC004_INIT_FAIL;
        break;
      }
      SDMMC004_Handle.OSResourcesCreated = 1;
    }
  } while(0);
  return Status;
}

/* <<< DD_SDMMC_nonAPI_36 >>> */
/*
 * This function performs the card initialization and identification operation.
 */
status_t SDMMC004_lCardIdentificationProcess()
{
  status_t Status = (uint32_t)SDMMC004_ERROR;
  /* Silicon Testing Added */
  do
  {
    /* Confirm the Internal clock gets Stable before setting the SD clock. */
    /* <<< DD_SDMMC_nonAPI_36_1 >>> */
    if ( !(SDMMC->CLOCK_CTRL & SDMMC_CLOCK_CTRL_INTERNAL_CLOCK_STABLE_Msk))
    {
      break;
    }
    /* Enable the SD clock */
    SDMMC->CLOCK_CTRL |= SDMMC_CLOCK_CTRL_SDCLOCK_EN_Msk;
    /* Set Power Control Register */
    SET_BIT( SDMMC->POWER_CTRL, SDMMC_POWER_CTRL_SD_BUS_POWER_Pos);
    /* <<< DD_SDMMC_nonAPI_36_2 >>> */
    if(SDMMC004_Handle.InitializeFlag == 0)
    {
      Status  = SDMMC004_lInitializeCard();
      /* <<< DD_SDMMC_nonAPI_36_3 >>> */
      if( Status != (uint32_t)DAVEApp_SUCCESS )
      {
        ERROR(GID_SDMMC00x, Status, 0, NULL);
        break;
      }/* End of " if( Status != DAVEApp_SUCCESS )"*/
      Status = SDMMC004_lAfterCardInitialize();
      /* <<< DD_SDMMC_nonAPI_36_4 >>> */
      if( Status != (uint32_t)DAVEApp_SUCCESS )
      {
        ERROR(GID_SDMMC00x, Status, 0, NULL);
        break;
      }/* End of "if(Status != DAVEApp_SUCCESS )" */
    }/* End of "if((SDMMC004_Handle.State & SDMMC004_STATE_CARD_INITIALIZED)
                   == 0 )"*/
  } while(0);
  return Status;
}

/* <<< DD_SDMMC_nonAPI_39 >>> */
/**
 * This function is used to check the sector address is out of bound or not.
 */
status_t SDMMC004_lCheckSectorBound(uint32_t SectorNumberParam, \
                                    uint32_t SectorCountParam)
{
  status_t Status;
  uint32_t SectorCount = 0;
  do
  {
    /* Get Sector Count function   */
    /* <<< DD_SDMMC_nonAPI_39_1 >>> */
    Status = SDMMC004_GetSectorCount((void *)&SectorCount);
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }
    /* <<< DD_SDMMC_nonAPI_39_2 >>> */
    /* Check the Sector Count limit */
    if((SectorNumberParam + SectorCountParam) >= SectorCount)
    {
      Status = (uint32_t)SDMMC004_SECTOR_OUT_OF_BOUND;
    }
  } while(0);
  return Status;
}

/* <<< DD_SDMMC_nonAPI_40 >>> */
/*
 * The function performs the actual erase operation.
 */
status_t SDMMC004_lLocalErase
(
  uint32_t StartAddr,
  uint32_t EndAddr,
  uint32_t TimeoutVal
)
{
  /* Stores the response received  */
  uint32_t CardStatus = 0;
  status_t Status = (uint32_t)SDMMC004_ERROR;
  do
  {
    /* <<<DD_SDMMC_nonAPI_40_1>>> */
    if ((SDMMC004_Handle.CardType & SDMMC004_BLOCK_ADDRESSING) == 0UL)
    {
      StartAddr *= 512UL;
      EndAddr *=  512UL;
    }/*End of "if((SDMMC004_Handle.CardType & SDMMC004_BLOCK_ADDRESSING) == 0UL)" */
    /* MMC Card */
#if SDMMC_SUPPORT_MMC_CARD
    /* <<<DD_SDMMC_nonAPI_40_2>>> */
    if ((SDMMC004_Handle.CardType & SDMMC004_MMC) != 0 )
    {
      /* Erase Start Command */
#if SDMMC_UVP_TEST
      if (Test_TriggerInterrupt.Trigger_EraseStartError == TRUE)
      {
        /* Forcefully trigger the Command Index Error Interrupt */
        /* Disable the Command Complete Status Interrupt */
        SDMMC->EN_INT_STATUS_NORM &= ~( SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk);
        /* Disable the Command Complete Signal Interrupt */
        SDMMC->EN_INT_SIGNAL_NORM &= ~( SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk );
      }
#endif
      Status = SDMMC004_lSendCommand( &(SDMMC004_MMC_COMMAND(35)),\
                                      StartAddr, RESPONSE_R1, &CardStatus );
      /* <<<DD_SDMMC_nonAPI_40_3>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
      /* Erase End Command */
#if SDMMC_UVP_TEST
      if (Test_TriggerInterrupt.Trigger_EraseEndError == TRUE)
      {
        /* Disable the Command Complete Status Interrupt */
        SDMMC->EN_INT_STATUS_NORM &= ~( SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk);
        /* Disable the Command Complete Signal Interrupt */
        SDMMC->EN_INT_SIGNAL_NORM &= ~( SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk );
      }
#endif
      Status = SDMMC004_lSendCommand( &(SDMMC004_MMC_COMMAND(36)),EndAddr, \
          RESPONSE_R1,&CardStatus );
      /* <<<DD_SDMMC_nonAPI_40_4>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }
    }
    /* SD Card */
    else
#endif /* SDMMC_SUPPORT_MMC_CARD */
    {
#if SDMMC_UVP_TEST
      if (Test_TriggerInterrupt.Trigger_EraseStartError == TRUE)
      {
        /* Forcefully trigger the Command Index Error Interrupt */
        //  SDMMC->FORCE_EVENT_ERR_STATUS = 0x0004 ;
        /* Disable the Command Complete Status Interrupt */
        SDMMC->EN_INT_STATUS_NORM &= ~( SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk);
        /* Disable the Command Complete Signal Interrupt */
        SDMMC->EN_INT_SIGNAL_NORM &= ~( SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk );
      }
#endif
      /* <<<DD_SDMMC_nonAPI_40_5>>> */
      /* SD Erase Start Command */
      Status = SDMMC004_lSendCommand( &(SDMMC004_SD_COMMAND(32)), \
          StartAddr, SDMMC004_RESPONSE_R1, &CardStatus);
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      } /* if (Status != (uint32_t)DAVEApp_SUCCESS) */
      /* SD Erase End Command */
#if SDMMC_UVP_TEST
      if (Test_TriggerInterrupt.Trigger_EraseEndError == TRUE)
      {
        /* Forcefully trigger the Command Index Error Interrupt */
        //   SDMMC->FORCE_EVENT_ERR_STATUS = 0x0004 ;
        /* Disable the Command Complete Status Interrupt */
        SDMMC->EN_INT_STATUS_NORM &= ~( SDMMC_EN_INT_STATUS_NORM_CMD_COMPLETE_EN_Msk);
        /* Disable the Command Complete Signal Interrupt */
        SDMMC->EN_INT_SIGNAL_NORM &= ~( SDMMC_EN_INT_SIGNAL_NORM_CMD_COMPLETE_EN_Msk );
      }
#endif
      Status = SDMMC004_lSendCommand( &(SDMMC004_SD_COMMAND(33)),EndAddr, \
          SDMMC004_RESPONSE_R1, &CardStatus);
      /* <<<DD_SDMMC_nonAPI_40_6>>> */
      if (Status != (uint32_t)DAVEApp_SUCCESS)
      {
        break;
      }/* End of " if (Status != (uint32_t)DAVEApp_SUCCESS)"*/
    }/* End of "if SD card"*/
#if SDMMC_UVP_TEST
    if (Test_TriggerInterrupt.Trigger_DataErrorInterrupt == TRUE)
    {
      /* Disable the Transfer Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_TX_COMPLETE_EN_Msk);
      /* Disable the Transfer Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_SIGNAL_NORM_TX_COMPLETE_EN_Msk  );
    }

    if (Test_TriggerInterrupt.Trigger_TransferInterruptError == TRUE)
    {
      /* Disable the Transfer Complete Status Interrupt */
      SDMMC->EN_INT_STATUS_NORM &= ~(SDMMC_EN_INT_STATUS_NORM_TX_COMPLETE_EN_Msk);
      /* Disable the Transfer Complete Signal Interrupt */
      SDMMC->EN_INT_SIGNAL_NORM &= ~(SDMMC_EN_INT_SIGNAL_NORM_TX_COMPLETE_EN_Msk  );
    }
#endif
    Status = SDMMC004_lSendCommand( &(SDMMC004_SD_COMMAND(38)),\
                                    SDMMC004_ARGUMENT0, SDMMC004_RESPONSE_R1b,\
                                    &CardStatus);
    /* <<<DD_SDMMC_nonAPI_40_7>>> */
    if (Status != (uint32_t)DAVEApp_SUCCESS)
    {
      break;
    }/* End of " if (Status != (uint32_t)DAVEApp_SUCCESS)"*/
    SDMMC004_lDelay(TimeoutVal * 1000);
  } while(0);
  return Status;
}

/**
 * @endcond
 */
/*CODE_BLOCK_END*/






