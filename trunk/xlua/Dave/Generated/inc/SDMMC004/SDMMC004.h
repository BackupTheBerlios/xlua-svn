
/*CODE_BLOCK_BEGIN[SDMMC004.h]*/

/* THIS FILE IS PROVIDED BY DAVE.
 * THIS FILE IS GENERATED.
 */
 
/*******************************************************************************
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





#ifndef SDMMC004_H_
#define SDMMC004_H_


/**
 * @file SDMMC004.h
 *
 * @brief  This file contains all public data structures,enums and function
 *          prototypes for Sdmmc LLD App.
 *
 */

/*******************************************************************************
 *                                INCLUDE FILES                               **
 *****************************************************************************/
#include <String.h>
#include <DAVE3.h>
#include "../../inc/SDMMC004/SDMMC004_Conf.h"


/*******************************************************************************
**                 Function like macro definitions                            **
*******************************************************************************/
#define SDMMC004_COMMON_COMMAND(CmdIndex)   SDMMC004_Command[SDMMC004_SDHashTable[CmdIndex]]
#define SDMMC004_SD_COMMAND(CmdIndex)       SDMMC004_Command[SDMMC004_SDHashTable[CmdIndex]]
#define SDMMC004_MMC_COMMAND(CmdIndex)      SDMMC004_Command[SDMMC004_MMCHashTable[CmdIndex]]


/**
 * @ingroup SDMMC004_publicparam
 * @{
 */
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
/* Command Indexes  */
#define SDMMC004_GO_IDLE_STATE                    0x00    /* CMD0     */
#define SDMMC004_MMC_SEND_OP_COND                 0x01    /*MMC CMD1  */
#define SDMMC004_ALL_SEND_CID                     0x02    /* CMD2     */
#define SDMMC004_SEND_RELATIVE_ADDR               0x03    /* CMD3     */
#define SDMMC004_SET_DSR                          0x04    /* CMD4     */
#define SDMMC004_MMC_SLEEP_AWAKE                  0x05    /*MMC CMD5  */
#define SDMMC004_SWITCH_FUNC                      0x06    /* CMD6     */
#define SDMMC004_SELECT_DESELECT_CARD             0x07    /* CMD7     */
#define SDMMC004_SD_SEND_IF_COND                  0x08    /*SD CMD8   */
#define SDMMC004_MMC_SEND_EXT_CSD                 0x08    /* MMC CMD8 */
#define SDMMC004_SEND_CSD                         0x09    /* CMD9     */
#define SDMMC004_SEND_CID                         0x0A    /* CMD10    */
#define SDMMC004_STOP_TRANSMISSION                0x0C    /* CMD12    */
#define SDMMC004_SEND_STATUS                      0x0D    /* CMD13    */
#define SDMMC004_GO_INACTIVE_STATE                0x0F    /* CMD15    */
#define SDMMC004_SET_BLOCKLEN                     0x10    /* CMD16    */
#define SDMMC004_READ_SINGLE_BLOCK                0x11    /* CMD17    */
#define SDMMC004_READ_MULTIPLE_BLOCK              0x12    /* CMD18    */
#define SDMMC004_WRITE_BLOCK                      0x18    /*CMD24     */
#define SDMMC004_WRITE_MULTIPLE_BLOCK             0x19    /* CMD25    */
#define SDMMC004_PROGRAM_CSD                      0x1B    /* CMD27    */
#define SDMMC004_SET_WRITE_PROT                   0x1C    /* CMD28    */
#define SDMMC004_CLR_WRITE_PROT                   0x1D    /* CMD29    */
#define SDMMC004_SEND_WRITE_PROT                  0x1E    /* CMD30    */
#define SDMMC004_ERASE_WR_BLK_START               0x20    /* CMD32    */
#define SDMMC004_ERASE_WR_BLK_END                 0x21    /* CMD33    */
#define SDMMC004_ERASE_GROUP_START                0x23    /* CMD35    */
#define SDMMC004_ERASE_GROUP_END                  0x24    /* CMD36    */
#define SDMMC004_ERASE                            0x26    /* CMD38    */
#define SDMMC004_LOCK_UNLOCK                      0x2A    /* CMD42    */
#define SDMMC004_APP_CMD                          0x37    /* CMD55    */
#define SDMMC004_GEN_CMD                          0x38    /* CMD56    */
#define SDMMC004_SET_BUS_WIDTH                    0x06    /* ACMD6    */
#define SDMMC004_SD_STATUS                        0x0D    /* ACMD13   */
#define SDMMC004_SEND_NUM_WR_BLOCKS               0x16    /* ACMD22   */
#define SDMMC004_SET_WR_BLK_ERASE_COUNT           0x17    /* ACMD23   */
#define SDMMC004_SD_SEND_OP_COND                  0x29    /* ACMD41   */
#define SDMMC004_SET_CLR_CARD_DETECT              0x2A    /* ACMD42   */
#define SDMMC004_SEND_SCR                         0x33    /* ACMD51   */
/* End of Command Indexes */


/* Card State definitions */
/**
 * Card is initialized
 */ 
#define SDMMC004_STATE_CARD_INITIALIZED                    (1)
/**
 * No Card Present
 */
#define SDMMC004_STATE_NO_CARD                            (2)
/**
 * Command Line is in Use.
 */
#define SDMMC004_STATE_CMD_ACTIVE                          (4)
/**
 * Data Line is in Use.
 */
#define SDMMC004_STATE_DATA_ACTIVE                         (8)
/**
 * Card is Write Protected. Cannot write on the card.
 */
#define SDMMC004_STATE_CARD_WRITE_PROTECT                  (16)
/**
 * Host Controller is Initialized
 */
#define SDMMC004_STATE_HC_INITIALIZED                      (32)
/**
 * Card is Locked. 
 */
#define SDMMC004_STATE_CARD_LOCKED                         (64)

/* Card Type Definitions */
/**
 * Standard Capacity Card of Version2 
 */
#define SDMMC004_SD_STANDARD_CAPACITY_V2                   (1)
/**
 * Standard Capacity Card of Version1x. 
 */
#define SDMMC004_SD_STANDARD_CAPACITY_V1x                  (2)
/**
 * High Capacity Card . 
 */
#define SDMMC004_SD_HIGH_CAPACITY                          (4)
/**
 * Card supports Block addressing. It means Address will be taken in terms of 
 * Sector Numbers 
 */
#define SDMMC004_BLOCK_ADDRESSING                          (8)
/**
 * MMC card
 */
#define SDMMC004_MMC                                       (16)


/**
 * Maximum Password Length for locking  
 */
#define SDMMC004_MAX_PASSWD_LENGTH                         (16)



/*******************************************************************************
 *                                ENUMERATIONS                                **
******************************************************************************/

/**
 * @brief Data Transfer Direction Enumeration.
 */
typedef enum SDMMC004_DataTrasferType
{
/**
 * Read from the card.
 */
  SDMMC004_READ_FROM_BUFF = 1,
/**
 * Write on the Card.
 */
  SDMMC004_WRITE_INTO_BUFF,
} SDMMC004_DataTrasferType;

/**
 * @brief Card Lock/Unlock Operation Enumeration.
 */
typedef enum SDMMC004_CardLockMode
{
/**
 * Lock the card.
 */
  SDMMC004_LOCK,
/**
 * Unlock the card.
 */
  SDMMC004_UNLOCK,
} SDMMC004_CardLockMode;

/**
 * @brief This enumerates SDMMC LLD Errors.
 */
typedef enum SDMMC004_ErrorCodesType
{
  /**
   * SDMMC LLD App Error  (1)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMCLLD_ERROR
  STRCODESTRING = SDMMC LLD App ERROR
  */
  SDMMC004_ERROR =1,
  /**
   * Command Timeout Error. (2)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_COMMAND_TIMEOUT_ERROR
  STRCODESTRING = No response recieved for the command sent.
  */
  SDMMC004_COMMAND_TIMEOUT_ERROR,
  /**
   * Command CRC Error.  (3)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_COMMAND_CRC_ERROR
  STRCODESTRING = Command CRC error.
  */
  SDMMC004_COMMAND_CRC_ERROR,

  /**
   * Command End Bit Error. (4)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_COMMAND_ENDBIT_ERROR
  STRCODESTRING = End bit of a command response is 0.
  */
  SDMMC004_COMMAND_ENDBIT_ERROR,
  /**
   * Command Index Error.  (5)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_COMMAND_INDEX_ERROR
  STRCODESTRING = Command Index error occurs in the command response.
  */
  SDMMC004_COMMAND_INDEX_ERROR,
  /**
   * Data Timeout Error. (6)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_DATA_TIMEOUT_ERROR
  STRCODESTRING = Data timeout occurs.
  */
  SDMMC004_DATA_TIMEOUT_ERROR,
  /**
   * Data CRC Error.  (7)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_DATA_CRC_ERROR
  STRCODESTRING = CRC error when transferring data
  */
  SDMMC004_DATA_CRC_ERROR,
  /**
   * Data Endbit Error. (8)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_DATA_ENDBIT_ERROR
  STRCODESTRING = 0 Detected at the end bit position of data.
  */
  SDMMC004_DATA_ENDBIT_ERROR,
  /**
   * ACMD12 Error        (9)
   */
  /*
   GROUPID  #16
   MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_ACMD12_ERROR
  STRCODESTRING = Auto cmd12 Error.
  */
  SDMMC004_ACMD12_ERROR,
  /**
   * Argument Out of range error (10)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_OUT_OF_RANGE_ERROR
  STRCODESTRING = Command?s argument was out of the allowed range.
  */
  SDMMC004_OUT_OF_RANGE_ERROR,
  /**
   *  Misaligned address (11)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_ADDRESS_ERROR
  STRCODESTRING = A misaligned address was used in the command.
  */
  SDMMC004_ADDRESS_ERROR,
  /**
   *  Invalid Block Length (12)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_BLOCK_LEN_ERROR
  STRCODESTRING = Invalid Block Length.
  */
  SDMMC004_BLOCK_LEN_ERROR,
  /**
   *  Erase Command Sequence error.(13)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_ERASE_SEQ_ERROR
  STRCODESTRING = An error in the sequence of erase commands occurred.
  */
  SDMMC004_ERASE_SEQ_ERROR,
  /**
   *  Erase Command Parameter error.(14)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_ERASE_PARAM_ERROR
  STRCODESTRING = Invalid selection of write-blocks for erase occurred
  */
  SDMMC004_ERASE_PARAM_ERROR,
  /**
   *  Write Protection Vioalation Error (15)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_WP_VIOLATION_ERROR
  STRCODESTRING = Attempt to write a write protected block.
  */
  SDMMC004_WP_VIOLATION_ERROR,
  /**
   *  Lock/Unlock ERROR. (16)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_LOCK_UNLOCK_ERROR
  STRCODESTRING = Incorrect password/ Command Sequence
  */
  SDMMC004_LOCK_UNLOCK_ERROR,
  /**
   *  CRC Error (17)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_COM_CRC_ERROR
  STRCODESTRING = The CRC check of the previous command failed.
  */
  SDMMC004_COM_CRC_ERROR,
  /**
   *  Illegal Command  (18)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_ILLEGAL_COMMAND_ERROR
  STRCODESTRING = Command not legal for the card state
  */
  SDMMC004_ILLEGAL_COMMAND_ERROR,
  /**
   *  Card internal ECC Error  (19)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_CARD_ECC_ERROR
  STRCODESTRING = Card internal ECC failed to correct the data.
  */
  SDMMC004_CARD_ECC_ERROR,
  /**
   *  Internal card controller error  (20)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_CC_ERROR
  STRCODESTRING = Internal card controller error
  */
  SDMMC004_CC_ERROR,
  /**
   *  General or an unknown error (21)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING =  SDMMC004_UNKNOWN_ERROR
  STRCODESTRING =  A general or an unknown error
  */
  SDMMC004_UNKNOWN_ERROR,
  /**
   *  CSD Overwrite error  (22)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING =  SDMMC004_CSD_OVERWRITE
  STRCODESTRING =  Mismatch CSD content.
  */
  SDMMC004_CSD_OVERWRITE,
  /**
   *  Erase skipped on a write protection area.  (23)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING =  SDMMC004_WP_ERASE_SKIP_ERROR
  STRCODESTRING =  Erase skipped on a write protection area.
  */
  SDMMC004_WP_ERASE_SKIP_ERROR,
  /**
   *   Error in the sequence of the authentication process  (24)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING =  SDMMC004_ASK_SEQ_ERROR
  STRCODESTRING =  Error in the sequence of the authentication process
  */
  SDMMC004_ASK_SEQ_ERROR,
  /**
   *  Bad response recieved. (25)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING =  SDMMC004_BAD_RESPONSE
  STRCODESTRING =  Voltage Check pattern incorrect.
  */
  SDMMC004_BAD_RESPONSE,
  /**
   *  Command Line is busy  (26)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_CMD_LINE_BUSY
  STRCODESTRING =  Command Line is busy
  */
  SDMMC004_CMD_LINE_BUSY,
  /**
   *  Data Line is busy  (27)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_DATA_LINE_BUSY
  STRCODESTRING = Data Line is busy
  */
  SDMMC004_DATA_LINE_BUSY,
  /**
   *  Command Completed.  (28)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_COMMAND_COMPLETE
  STRCODESTRING = Command is successfully executed.
  */
  SDMMC004_COMMAND_COMPLETE,
  /**
   *  Command Failed. (29)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_SENDCOMMAND_ERROR
  STRCODESTRING = Command failed to executed.
  */
  SDMMC004_SENDCOMMAND_ERROR,
  /**
   *  Buffer read/write ready  (30)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_BUFFER_READY
  STRCODESTRING = Buffer is ready to read from or write into.
  */
  SDMMC004_BUFFER_READY,
  /**
   *  Data transfer is successful  (31)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_TRANSFER_COMPLETE
  STRCODESTRING = Data transfer is successful.
  */
  SDMMC004_TRANSFER_COMPLETE,
  /**
   *  Card is locked. (32)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_CARD_IS_LOCKED
  STRCODESTRING = Card is locked.
  */
  SDMMC004_CARD_IS_LOCKED,
  /**
   *  Card unlocked  (33)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_CARD_UNLOCKED
  STRCODESTRING = Card is unlocked.
  */
  SDMMC004_CARD_UNLOCKED,
  /**
   *  Read data from the card failed. (34)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_READ_ERROR
  STRCODESTRING = Read transaction failed.
  */
  SDMMC004_READ_ERROR,
  /**
   *  Write data into the card failed. (35)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_WRITE_ERROR
  STRCODESTRING = Write transaction failed.
  */
  SDMMC004_WRITE_ERROR,
  /**
   *  Recoverable Error (36)
   */
  /*
  GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_RECOVERABLE_ERROR
  STRCODESTRING = Recoverable Error while recovering error.
  */
  SDMMC004_RECOVERABLE_ERROR,
  /**
   * NOn-Recoverable Error (37)
   */
  /*GROUPID  #16
  MODULENAME = Sdmmc LLD App
  */
  /*
  ERRCODESTRING = SDMMC004_NONRECOVERABLE_ERROR
  STRCODESTRING = Non-Recoverable Error while recovering error.
  */
  SDMMC004_NONRECOVERABLE_ERROR,
  /**
   *  Error in the Command not using data line and not ACMD12 Command (38)
   */
  /*
  ERRCODESTRING = SDMMC004_ACMD_CMD_wo_DAT_ERROR
  STRCODESTRING = Error in the Command not using data line.
  */
  SDMMC004_ACMD_CMD_wo_DAT_ERROR,

  /**
   * Error has occured in CMD_wo_DAT and the SD memory Transfer (39)
   */
  /*
  ERRCODESTRING = SDMMC004_ACMD_BOTH_ERROR
  STRCODESTRING = Error has occured in CMD_wo_DAT and the SD memory Transfer
   */
    SDMMC004_ACMD_BOTH_ERROR,
  /**
   * Error has not occured in CMD_wo_DAT but in  SD memory Transfer (40)
   */
  /*
  ERRCODESTRING = SDMMC004_ACMD_SD_TRANSFER_ERROR
  STRCODESTRING = Error has not occured in CMD_wo_DAT but in  SD memory Transfer
  */
  SDMMC004_ACMD_SD_TRANSFER_ERROR,
  /**
   * Error has not occured in SD memory Transfer and ACMD12 is not issued.(41)
   */
  /*
  ERRCODESTRING = SDMMC004_ACMD_CMD_wo_DAT_NOT_ISSUED
  STRCODESTRING = Error has not occured in SD memory Transfer and ACMD12 is
    not issued.
  */
   SDMMC004_ACMD_CMD_wo_DAT_NOT_ISSUED,
  /**
   * Initialization failed(42)
   */
   /*
   ERRCODESTRING = SDMMC004_INIT_FAIL
   STRCODESTRING = Initialization failed.
   */
   SDMMC004_INIT_FAIL,
  /**
   * Initialization success but card is locked (43)
   */
   /*
   ERRCODESTRING =  SDMMC004_INITIALIZED_BUT_LOCKED
   STRCODESTRING = Initialization failed.
   */
    SDMMC004_INITIALIZED_BUT_LOCKED,
    
  /**
   * Host Controleller already initialized (44)
   */
   /*
   ERRCODESTRING =  SDMMC004_HOST_CONTROLLER_INITIALIZED
   STRCODESTRING = Host Controller already Initialization, so failed.
   */
   SDMMC004_HOST_CONTROLLER_INITIALIZED,  
  /**
   * NULL function pointer passed (45)
   */
   /*
   ERRCODESTRING =  SDMMC004_NULL_POINTER.
   STRCODESTRING = NULL function pointer passed .
   */
  SDMMC004_NULL_POINTER,
  
  /**
   * Delay Timeout Error (46)
   */
   /*
   ERRCODESTRING =  SDMMC004_TIMEOUT_OCCURED.
   STRCODESTRING = Timeout Occured while waiting for some event.
   */
  SDMMC004_TIMEOUT_OCCURED,
  /**
   * Start Timer Failed (47)
   */
  /*
   ERRCODESTRING =  SDMMC004_START_TIMER_FAILED.
   STRCODESTRING =  Start Timer failed.
   */
   SDMMC004_START_TIMER_FAILED,
   /**
   *  Sector Number out of bound (48)
   */
  /*
   ERRCODESTRING =  SDMMC004_SECTOR_OUT_OF_BOUND.
   STRCODESTRING =  Sector Number out of bound.
   */
   SDMMC004_SECTOR_OUT_OF_BOUND,
  /**
   * Debug log codes starts here  (49)
   */
  /**
   * DebugLog Message Id for Function Entry
   */
  /*
  ERRCODESTRING = SDMMC004_FUNCTION_ENTRY
  STRCODESTRING = Function Entered %s
  */
  SDMMC004_FUNCTION_ENTRY,

  /**
   * DebugLog Message Id for Function Exit (50)
   */
  /*
  ERRCODESTRING = SDMMC004_FUNCTION_EXIT
  STRCODESTRING = Function Exited %s
  */
  SDMMC004_FUNCTION_EXIT
} SDMMC004_ErrorCodesType;

/**
 * @brief This enumerates some of the SDMMC Interrupts
 */
typedef enum SDMMC004_InterruptType
{
  /**
   * Card Removal Interrupt
   */
  SDMMC004_CARD_REMOVAL,
  /**
   * Card Insertion Interrupt
   */
 SDMMC004_CARD_INSERTION,
} SDMMC004_InterruptType;

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
#if SDMMC_CARD_DETECTION_SUPPORT
/**
 * Poinetr to the Call Back Function of Upper layer which will be invoked if 
 * Card is inserted or removed in a card detection circuit.
 */
typedef void (*SDMMC004_PtrToCallBackFunction)(SDMMC004_InterruptType); 
#endif

/*******************************************************************************
 *                                STRUCTURES                                  **
 ******************************************************************************/
#if SDMMC_UVP_TEST
/**
 * @brief This structure is used to Trigger differnt Error Interrupts used for
 * testing purpose.
 */
typedef struct Test_TriggerInterruptType
{
/**
 * Trigger Error Interrupt while issuing Command.
 */
  bool Trigger_CommandErrorInterrupt;
/**
 * Trigger Error Interrupt in Data Transfer.
 */
  bool Trigger_DataErrorInterrupt;
/**
 * Trigger Error Interrupt in command response received.
 */
  bool Trigger_CommandResponseError;
/**
 * Trigger Data and Command Line Busy error.
 */
  bool Trigger_DataCmdLineBusy;
/**
 * Trigger Erase Start Error Interrupt
 */
  bool Trigger_EraseStartError; 
/**
 * Trigger Erase End Error Interrupt
 */
  bool Trigger_EraseEndError; 
/**
 * Trigger Auto CMD Error Interrupt
 */
  bool Trigger_AcmdErrorInterrupt;
/**
 * Trigger Transfer  Error Interrupt
 */
  bool Trigger_TransferStateError;
/**
 * Trigger Lock Status Error Interrupt
 */
  bool Trigger_LockStatusError;

/**
 * Trigger CMD55 Error Interrupt
 */
  bool Trigger_Cmd55Error;
/**
 *  Trigger CMD55 Error Interrupt for test case 54
 */
  bool Trigger_Cmd55_TC54 ;
/**
 *  Trigger CMD42 Error Interrupt 
 */
  bool Trigger_Command42Error;
/**
 *  Trigger  Error Interrupt for test case 8
 */
  bool Trigger_TC8Error;
/**
 *  Trigger  Error Interrupt for test case 10
 */
  bool Trigger_TC10Error;
/**
 *  Trigger  Error Interrupt for test case 13
 */
 bool Trigger_TC13Error;
/**
 *  Trigger  Error Interrupt for test case 17
 */
 bool Trigger_TC17Error;
/**
 *  Trigger  Error Interrupt for test case 17
 */
 bool Trigger_TC20Error;
 /**
  *  Trigger  Error Interrupt for test case 23 part1
  */
  bool Trigger_TC23_1Error;
  /**
   *  Trigger  Error Interrupt for test case 23 part2
   */
  bool Trigger_TC23_2Error;
  /**
   *  Trigger  Transfer Interrupt Error
   */
  bool Trigger_TransferInterruptError;

} Test_TriggerInterruptType;
#endif /* SDMMC_UVP_TEST */

/**
 * @brief SDMMC Handle Struture stores the card states, card registers
 * and other Interrupt Information
 */
typedef struct SDMMC004_HandleType
{
  /**
    * Card States:
     SDMMC004_STATE_CARD_INITIALIZED                    (1)
     SDMMC004_STATE_NO_CARD                         (2)
     SDMMC004_STATE_CMD_ACTIVE                          (4)
     SDMMC004_STATE_DATA_ACTIVE                         (8)
     SDMMC004_STATE_CARD_WRITE_PROTECT                  (16)
     SDMMC004_STATE_HC_INITIALIZED                      (32)
     SDMMC004_STATE_CARD_LOCKED                         (64)
    */
  uint16_t State;
  /**
   * Card Type Information.
   * SDMMC004_SD_STANDARD_CAPACITY_V2                   (1)
   * SDMMC004_SD_STANDARD_CAPACITY_V1x                  (2)
   * SDMMC004_SD_HIGH_CAPACITY                          (4)
   * SDMMC004_BLOCK_ADDRESSING                          (8)
   * SDMMC004_MMC                                       (16)
   */
  uint8_t  CardType;
  /**
   *  Stores the Buffer read/write Interrupt ready status.
   */
   SDMMC004_ErrorCodesType BufferReadyInterruptStatus;
  /**
   * Interrupt Error in Data Transfer. Error Status like Data timeout, Data CRC,
   * Data Endbit, Current Limit Error info is stored here.
   */
  SDMMC004_ErrorCodesType DataInterruptError;
  /**
   * Interrupt Error in Command Issuance. Error Status like Command Timeout,
   * Command CRC, Command End bit, Command Index or COmmand Complete.
   */
  SDMMC004_ErrorCodesType CommandInterruptError;
  /**
   * Interrupt Status if Transfer Successful.
   */
  SDMMC004_ErrorCodesType TransferInterruptError;
  /**
   * Interrupt Status in Issuance of ACMD12 Command.
   */
  SDMMC004_ErrorCodesType AcmdInterruptError;
  /**
   * Error Recovery Status of a failed transaction
   */
  SDMMC004_ErrorCodesType ErrorRecoveryStatus;
  
  /**
   * Flag indicating the success initialization process
   */
   uint8_t InitializeFlag;
  /** F8 flag is used in card intialization procedure to identify card type */
  uint8_t f8 ;
  /**
   * Flag to set when semaphores and mutex are created successfully 
   */
  uint8_t OSResourcesCreated;

#if SDMMC_CARD_DETECTION_SUPPORT
  /**
   * Poinetr to the Call Back Function of Upper layer which will be invoked if 
   * Card is inserted or removed in a card detection circuit.
   */
 SDMMC004_PtrToCallBackFunction CallBackPtr; 
#endif
  uint8_t IssueAbort;
} SDMMC004_HandleType;

/**
 * @brief This structure is used to store the SD Card's CID register content
 */
typedef struct SDMMC004_SDCIDType
{
  /**
   * This variable stores CID register's 12 bit Manufacturing date(MDT).
   */
  uint16_t ManufacturingDate;

  /**
   * This variable stores CID register's 32 bit Serial Numaber(PSN)
   */
  uint32_t ProductSerialNum;
  /**
   * This variable stores CID register's 32 bit Product revision (PRV)
   */
  uint8_t ProductRev;

  /**
   * This variable stores CID register's 40 bit product's name(PNM)
   */
  uint8_t ProductName[5];

  /**
   * This variable stores CID register's 16 bit OEM/Application ID (OID)
   */
  uint8_t AppOEMId[2];

  /**
   * This variable stores CID register's 8 bit Manufacturer ID (MID)
   */
  uint8_t ManufacturerId;
} SDMMC004_SDCIDType;

/**
 * @brief This structure is used to store the MMC  Card's CID register content.
 */
typedef struct SDMMC004_MMCCIDType
{
  /**
   * This variable stores CID register's 8 bit Manufacturing date(MDT)
   */
  uint8_t ManufacturingDate;
  /**
   * This variable stores CID register's 32 bit Serial Numaber(PSN)
   */
  uint32_t ProductSerialNum;
  /**
   * This variable stores CID register's 8bit Product revision (PRV)
   */
  uint8_t ProductRev;
  /**
   * This variable stores CID register's 48 bit product's name(PNM)
   */
  uint8_t ProductName[6];
  /**
   * This variable stores CID register's 16 bit OEM/Application ID (OID)
   */
  uint8_t AppOEMId;
  /**
   * CBX indicates the device type.
   * 00 Card (removable)
   * 01 BGA (Discrete embedded)
   * 10 POP
   * 11 Reserved
   */
  uint8_t CardBGA :2 ;
  /**
   * Reserved bits
   */
  uint8_t Resv2 :6 ;
  /**
   * This variable stores CID register's 8 bit Manufacturer ID (MID)
   */
  uint8_t ManufacturerId;
} SDMMC004_MMCCIDType;

/**
 * @brief This structure stores the MMC card's CSD register content.
 */
typedef struct SDMMC004_MMCCSDType
{
  /**
   * Fixed to 1 always
   */
  uint32_t Fixed : 1;
  /**
   * CRC bits
   */
  uint32_t Crc : 7;
  /**
   * Reserved bits.
   */
  uint32_t Resv1 : 2;
  /**
   * Indicates the file format on the card.
   */
  uint32_t FileFormat : 2;
  /**
   * Temporarily protects the entire card content from being overwritten or erased.
   */
  uint32_t TempWriteProtect :1;
  /**
   * Permanently protects the entire card content against overwriting or erasing.
   */
  uint32_t PermWriteProtect : 1;
  /**
   * Defines if the contents is original (=0) or has been copied (=1).
   */
  uint32_t Copy :1;
  /**
   * Indicates the selected group of file formats.
   */
  uint32_t FileFormatGroup : 1;
  /**
   * This field in the CSD indicates whether the content protection application
   * is supported.
   */
  uint32_t ContentProtApp : 1;
  /**
   * Reserved bits.
   */
  uint32_t Resv2 : 4;
  /**
   * Defines whether partial block sizes can be used in block write commands.
   */
  uint32_t WriteBlkPartial : 1;
  /**
   * The maximum write data block length is computed as 2WRITE_BL_LEN.
   */
  uint32_t WriteBlkLen : 4;
  /**
   * Defines the typical block program time as a multiple of the read access time.
   */
  uint32_t WriteSpeedFactor :3;
  /**
   * Reserved bits.
   */
  uint32_t Resv3 :2;
  /**
   * A value of 0 means no group write protection possible.
   */
  uint32_t WriteProtGrpEnable :1;
  /**
   * The size of a write protected group. The actual size is computed by increasing
   * this number by one. A value of zero means one erase sector, 127 means 128 erase
   * sectors.
   */
  uint32_t WriteProtGrpSize :5;
  /**
   * A 5 bit binary coded value used for calculating the size of the erasable
   * unit of the card
   */
  uint32_t EraseGrpMult : 5;
  /**
   * The size of an erasable sector.
   */
  uint32_t EraseGrpSize :5;
  /**
   * This parameter is used for coding a factor MULT for computing the total
   * device size
   */
  uint32_t DeviceSizeMult :3;
  /**
   * The maximum values for write currents at the maximal power supply VDD
   */
  uint32_t MaxWriteCurrent :3;
  /**
   * The maximum values for write currents at the minimal power supply VDD
   */
  uint32_t MinWriteCurrent :3;
  /**
   * The maximum values for read currents at the maximal power supply VDD
   */
  uint32_t MaxReadCurrent :3;
  /**
   * The maximum values for read currents at the minimal power supply VDD
   */
  uint32_t MinReadCurrent :3;
  /**
   * This parameter is used to compute the user?s data card capacity (not include
   * the security protected
   */
  uint32_t DeviceSizeHigh : 10;
  uint32_t DeviceSizeLower :2;
  /**
   * Reserved bits
   */
  uint32_t Resv4 : 2;
  /**
   * Defines if the configurable driver stage is integrated on the card.
   */
  uint32_t DsrImp :1;
  /**
   * Defines if the data block to be read by one command can be spread over more
   * than one physical block
   * of the memory device.
   */
  uint32_t ReadBlkMisalign :1;
  /**
   * Defines if the data block to be written by one command can be spread over more
   * than one physical
   * block of the memory device.
   */
  uint32_t WriteBlkMisalign :1;
  /**
   * Partial Block Read is always allowed in an SD Memory Card. It means that
   * smaller blocks can be used
   * as well.
   */
  uint32_t ReadBlkPartial :1;
  /**
   * The maximum read data block length is computed as 2READ_BL_LEN.
   */
  uint32_t ReadBlkLen :4;
  /**
   * The card command class register CCC defines which command classes are supported
   * by this card.A value of 1 in a CCC bit means that the corresponding command
   * class is supported.
   */
  uint32_t CCC :12;
  /**
   * Defines the maximum data transfer rate per one data line.
   */
  uint32_t  TranSpeed : 8;
  /**
   * Defines the worst case for the clock-dependant factor of the data access time.
   */
  uint32_t Nsac : 8 ;
  /**
   * Defines the asynchronous part of the data access time.
   */
  uint32_t Taac : 8;
  /**
   * Reserved bits
   */
  uint32_t Resv5 :2;
  /*
   * Defines the MultiMediaCard System Specification version supported by the card
   */
  uint32_t SpecVersion :4;
  /*
   * Describes the version of the CSD structure.
   */
  uint32_t CsdStruct :2;
} SDMMC004_MMCCSDType;

/**
 * @brief This structure stores the SD v1 card's Csd register content.
 */
typedef struct SDMMC004_CSDV1Type
{
  /**
   * Fixed to 1 always
   */
  uint32_t Fixed : 1;

  /**
   * CRC bits
   */
  uint32_t Crc : 7;
  /**
   * Reserved bits.
   */
  uint32_t Resv1 : 2;
  /**
   * Indicates the file format on the card.
   */
  uint32_t FileFormat : 2;
  /**
   * Temporarily protects the entire card content from being overwritten or erased.
   */
  uint32_t TempWriteProtect : 1;
  /**
   * Permanently protects the entire card content against overwriting or erasing.
   */
  uint32_t PermWriteProtect : 1;
  /**
   * Defines if the contents is original (=0) or has been copied (=1).
   */
  uint32_t Copy : 1;
  /**
   * Indicates the selected group of file formats.
   */
  uint32_t FileFormatGroup : 1;
  /**
   * Reserved bits.
   */
  uint32_t Resv2 : 5;
  /**
   * Defines whether partial block sizes can be used in block write commands.
   */
  uint32_t WriteBlkPartial : 1;
  /**
   * The maximum write data block length is computed as 2WRITE_BL_LEN.
   */
  uint32_t WriteBlkLen : 4;
  /**
   * Defines the typical block program time as a multiple of the read access time.
   */
  uint32_t WriteSpeedFactor : 3;
  uint32_t Resv3 : 2;
  /**
   * A value of 0 means no group write protection possible.
   */
  uint32_t WriteProtGrpEnable : 1;
  /**
   * The size of a write protected group. The actual size is computed by increasing
   * this number by one. A value of zero means one erase sector, 127 means 128 erase
   * sectors.
   */
  uint32_t WriteProtGrpSize : 7;
  /**
   * The size of an erasable sector.
   */
  uint32_t EraseSectorSize : 7;
  /**
   * The ERASE_BLK_EN defines the granularity of the unit size of the data to be
   * erased.
   */
  uint32_t EraseSingleBlkEnable : 1;
  /**
   * This parameter is used for coding a factor MULT for computing the total device
   * size (see ?C_SIZE?).
   */
  uint32_t DeviceSizeMult : 3;
  /**
   * The maximum values for write currents at the maximal power supply VDD
   */
  uint32_t MaxWriteCurrent : 3;
  /**
   * The maximum values for write currents at the minimal power supply VDD
   */
  uint32_t MinWriteCurrent : 3;
  /**
   * The maximum values for read currents at the maximal power supply VDD
   */
  uint32_t MaxReadCurrent : 3;
  /**
   * The maximum values for read currents at the minimal power supply VDD
   */
  uint32_t MinReadCurrent : 3;
  uint32_t DeviceSizeLower : 2 ;
  /**
   * This parameter is used to compute the user?s data card capacity (not include
   * the security protected
   */
  uint32_t DeviceSizeHigh : 10;
  /**
   * Reserved bits
   */
  uint32_t Resv4 :2;
  /**
   * Defines if the configurable driver stage is integrated on the card.
   */
  uint32_t DsrImp :1;
  /**
   * Defines if the data block to be read by one command can be spread over more
   * than one physical block
   * of the memory device.
   */
  uint32_t ReadBlkMisalign :1;
  /**
   * Defines if the data block to be written by one command can be spread over more
   * than one physical
   * block of the memory device.
   */
  uint32_t WriteBlkMisalign :1;
  /**
   * Partial Block Read is always allowed in an SD Memory Card. It means that
   * smaller blocks can be used
   * as well.
   */
  uint32_t ReadBlkPartial :1;
  /**
   * The maximum read data block length is computed as 2READ_BL_LEN.
   */
  uint32_t ReadBlkLen :4;
  /**
   * The card command class register CCC defines which command classes are supported
   * by this card.A value of 1 in a CCC bit means that the corresponding command
   * class is supported.
   */
  uint32_t CCC :12;
  /**
   * Defines the maximum data transfer rate per one data line.
   */
  uint32_t  TranSpeed : 8;
  /**
   * Defines the worst case for the clock-dependant factor of the data access time.
   */
  uint32_t Nsac : 8  ;
  /**
   * Defines the asynchronous part of the data access time.
   */
  uint32_t Taac : 8;
   /**
   * Reserved Bits
   */
  uint32_t Resv5 : 6;
  /**
   * The CSD_STRUCTURE field in the CSD register indicates its structure version.
   */
  uint32_t CsdStruct : 2;
} SDMMC004_CSDV1Type;

/**
 * @brief This structure stores the SD v2 card's Csd register content.
 */
typedef struct SDMMC004_CSDV2Type
{
  /**
   * Fixed to 1 always
   */
  uint32_t Fixed : 1;

  /**
   * CRC bits
   */
  uint32_t Crc : 7;

  uint32_t Resv1 : 2;
  /**
   * This field is set to 0. Host should not use this field.
   */
  uint32_t FileFormat : 2;
  /**
   * Definition of this field is same as in CSD Version1.0
   */
  uint32_t TempWriteProtect : 1;
  /**
   * Definition of this field is same as in CSD Version1.0
   */
  uint32_t PermWriteProtect : 1;
  /**
   * Definition of this field is same as in CSD Version1.0.
   */
  uint32_t Copy : 1;
  /**
   * This field is set to 0. Host should not use this field.
   */
  uint32_t FileFormatGroup : 1;
  uint32_t Resv2 : 5;
  /**
   * This field is fixed to 0, which indicates partial block read is inhibited
   * and only unit of block access is allowed.
   */
  uint32_t WriteBlkPartial : 1;
  /**
   * This field is fixed to 9h, which indicates WRITE_BL_LEN=512 Byte.
   */
  uint32_t WriteBlkLen : 4;
  /**
   * This field is fixed to 2h, which indicates 4 multiples. Write timeout can be
   * calculated by multiplying the
   * read access time and R2W_FACTOR.
   */
  uint32_t WriteSpeedFactor : 3;
  uint32_t Resv3 : 2;
  /**
   * This field is fixed to 0. The High Capacity SD Memory Card does not support
   * write protected groups.
   */
  uint32_t WriteProtGrpEnable : 1;
  /**
   * This field is fixed to 00h. The High Capacity SD Memory Card does not support
   * write protected groups.
   */
  uint32_t WriteProtGrpSize : 7;
  /**
   * This field is fixed to 7Fh, which indicates 64 KBytes. This value does not
   * relate to erase operation.
   */
  uint32_t EraseSectorSize : 7;
  /**
   * This field is fixed to 1, which means the host can erase one or multiple units
   * of 512 bytes.
   */
  uint32_t EraseSingleBlkEnable : 1;
  uint32_t Resv4 : 1;
  uint32_t DeviceSizeLower : 16;

  /**
   * This parameter is used to calculate the user data area capacity in the SD
   * memory card (not include the protected area).
   */
  uint32_t DeviceSizeHigh : 6;
  uint32_t  Resv5 : 6;
  /**
   * Definition of this field is same as in CSD Version1.0.
   */
  uint32_t  DsrImp : 1;
  /**
   * This field is fixed to 0, which indicates read access crossing physical block
   * boundaries is always disabled in High Capacity SD Memory Card.
   */
  uint32_t ReadBlkMisalign : 1;
  /**
   * This field is fixed to 0, which indicates write access crossing physical block
   * boundaries is always  disabled in High Capacity SD Memory Card.
   */
  uint32_t WriteBlkMisalign : 1;
  /**
   * This field is fixed to 0, which indicates partial block read is inhibited and
   * only unit of block access is  allowed.
   */
  uint32_t ReadBlkPartial : 1;
  /**
   * This field is fixed to 9h, which indicates READ_BL_LEN=512 Byte.
   */
  uint32_t ReadBlkLen : 4;
  /**
   * Definition of this field is same as in CSD Version1.0.
   */
  uint32_t CCC : 12;
  /**
   * Definition of this field is same as in CSD Version1.0.
   */
  uint32_t TranSpeed : 8;
  /**
   * This field is fixed to 00h.
   */
  uint32_t Nsac : 8;
  /**
   * This field is fixed to 0Eh, which indicates 1 ms.
   */
  uint32_t Taac : 8;
  uint32_t Resv6 : 6;
  /**
   * The CSD_STRUCTURE field in the CSD register indicates its structure version.
   */
  uint32_t CsdStruct : 2;
} SDMMC004_CSDV2Type;

/**
 * @brief This structure stores the SD Card's SCR register content.
 */
typedef struct SDMMC004_SCRType
{
  /**
   * Describes the Physical Layer Specification Version supported by the card.
   */
  uint32_t SdSpec : 4;

  /**
   * Defines the SCR version.
   */
  uint32_t ScrStructure : 4;

  /**
   * Describes all the DAT bus widths that are supported by this card.
   */
  uint32_t SdBusWidth : 4;

  /**
   * This field indicates CPRM Security Specification Version for each
   * capacity card.
   */
  uint32_t SdSecurity : 3;

  /**
   * Defines the data status after erase, whether it is 0 or 1
   * (the status is card vendor dependent).
   */
  uint32_t DataStatAftrErase : 1;

  uint32_t Reserved_9_1: 3;

  /**
   * This field indicates Extended Security which will be defined by a later
   *  version of the Part 3 Security Specification Version 3.00.
   */
  uint32_t ExSecurity : 4;

  /**
   * SD specs version.
   */
  uint32_t SdSpec3 : 1;

/**
 * Support bit of new commands are defined to Bit 33-32 of SCR.
 */
  uint32_t CmdSupport : 2;

  uint32_t Reserved_9_2  : 6;

  /**
   * Rserved for Manufactures's Usage.
   */
  uint32_t ManufResvd : 32;
} SDMMC004_SCRType;


/**
 * @brief This structure stores the Local Lock Struture information.
 */
typedef struct SDMMC004_LocalLockStructType
{
  /**
   * 8-bit card lock/unlock mode
   */
  uint8_t Mode;
  /**
   * Defines the following password(s) length (in bytes). In case of a password
   *  change, this field includes the total password lengths of old and new
   *  passwords.
   */
  uint8_t PwdLen;
  /**
   * In case of setting a new password, it contains the new password. In case of
   * a password change, it contains the old password followed by the new password.
   */
  uint8_t PwdData[SDMMC004_MAX_PASSWD_LENGTH * 2];
  /* Padding added to make this structure one block of data */
  uint32_t Dummy[120];
} SDMMC004_LocalLockStructType;

/**
 * @}
 */
/*******************************************************************************
 **                       FUNCTION PROTOTYPES                                  **
 *******************************************************************************/
/**
 * @ingroup SDMMC004_apidoc
 * @{
 */
/**
 * @brief This function initializes the Host Controller with the reset values
 * and configured values in the Host Controller registers.Host Contoller acts as
 * an intermediary between card and Host. This function is called from 
 * SDMMC004_Start() function.
 * @return status_t<BR>
 * DAVEApp_SUCCESS: If the initialization is successful<BR>
 * SDMMC004_ERROR: If the initialization fails .<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before 
 *   //Host Controller Init 
 *   DAVE_Init();
 *   // Host Controller Initialize 
 *   Status = SDMMC004_HostControllerInit();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *     //Call functions as per requirement only after this 
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t  SDMMC004_HostControllerInit(void);

/**
 * @brief This function de-initializes the Host Controller to the reset values.
 * @return status_t<BR>
 * DAVEApp_SUCCESS: If the de-initialization is successful<BR>
 * SDMMC004_ERROR: If the de-initialization fails. <BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   // Host Controller De-Init. Host Controller should be initialized before this.
 *   Status = SDMMC004_HostControllerDeInit();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *     //Call functions as per requirement only after this 
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t  SDMMC004_HostControllerDeInit( void );

/**
 * @brief The function gets the current SD Bus status from the card. The SD Status 
 * contains status bits that are related to the SD Memory Card proprietary 
 * features and may be used for future application-specific usage. SD Status is of
 * 512 bits so buffer of 64bytes needs to be passed to this function.
 * @param[out] Buffer Buffer to read SD status into.
 * @return status_t<BR>
 * DAVEApp_SUCCESS: If reading SD status is successful.<BR>
 * SDMMC004_ERROR: If reading SD status fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   uint32_t SdStatus[16]; 
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *       // get sd ststatus .
 *        Status  = SDMMC004_GetSdStatus((void*)&SdStatus);
 *        if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *        {
 *          //Call functions as per requirement only after this 
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t  SDMMC004_GetSdStatus(void *Buffer);

/**
 * @brief The function Erase the blocks of data from the card. It erases the 
 * block of data from address specified in  StartAddr to end address passed
 * in EndAddr Argument. The erased sectors can be written with '0' or '1' depending 
 * on the erasing technique used by the card. When a large area is erased, 
 * it is divided into small areas at the Allocation Unit boundary and
 * continuously erases the small areas using a small area erase timeout.
 * @param[in] StartAddr Start Erase Sector Address 
 * @param[in] EndAddr End  Erase Sector Address
 * @return status_t<BR>
 * DAVEApp_SUCCESS:  If erase is successful.<BR>
 * SDMMC004_ERROR: If erase fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t EraseStart = 121;
 *   uint32_t EraseEnd = 124;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *       //Erase Sector number 121-124
 *        Status  =  SDMMC004_EraseBlock(EraseStart,EraseEnd) ;
 *        if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *        {
 *          //Call functions as per requirement only after this 
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_EraseBlock
(
  uint32_t StartAddr,
  uint32_t EndAddr
);

/**
 * @brief The function performs the lock/unlock related operations like
 * Locking a card, Unlocking a card, Setting a password, Clearing a password,
 * Replacing a password, Force Erasing a password and Get the current lock status
 * of the card.  
 * @param[in] LockPtr Lock Structure of type SDMMC004_LocalLockStructType
 * containing the password info to be sent to the card.
 * @param[in] OperationMode Lock or Unlock mode.
 * @return status_t<BR>
 * DAVEApp_SUCCESS:  If locking/unlocking is successful.<BR>
 * SDMMC004_ERROR:   If locking/unlocking fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   SDMMC004_LocalLockStructType LockStruct = {0};
 *   uint8_t Passwd[3] = {'I','F','X'};
 *   uint8_t NewPasswd[5] = {'W','I','P','R','O'};
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *      //  If card detection support available call the below function in while loop.
 *      //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         // Setting the Password to IFX for the first time.
 *        LockStruct.Mode  = 0x01UL;
 *        LockStruct.PwdLen = 3UL;
 *        memcpy(LockStruct.PwdData,Passwd,LockStruct.PwdLen );
 *        Status = SDMMC004_LockUnlockCard(&LockStruct, SDMMC004_UNLOCK);
 *        if (Status == (uint32_t)DAVEApp_SUCCESS)
 *        {  
 *         // Re-Setting the Password from "IFX" to "WIPRO" and Lock it. 
 *          LockStruct.Mode  = 0x05UL;
 *          LockStruct.PwdLen = 8UL; // Includes length of old passwd + new passwd.
 *          memcpy(LockStruct.PwdData,Passwd,3 );
 *          memcpy(LockStruct.PwdData + 3,NewPasswd,5 );
 *          Status = SDMMC004_LockUnlockCard(&LockStruct,SDMMC004_LOCK);
 *          if (Status == (uint32_t)DAVEApp_SUCCESS)
 *          {
 *            // Unlock the card with password WIPRO.
 *            LockStruct.Mode = 0x00UL;
 *            LockStruct.PwdLen = 5UL;
 *            memcpy(LockStruct.PwdData,NewPasswd,LockStruct.PwdLen );
 *            Status = SDMMC004_LockUnlockCard(&LockStruct,SDMMC004_UNLOCK);
 *          }
 *        }
 *      }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t  SDMMC004_LockUnlockCard
(
  SDMMC004_LocalLockStructType  *LockPtr,
  SDMMC004_CardLockMode  OperationMode
);

/**
 * @brief The function gets the cuurent lock status from the card. The upper layer
 * may use this api to know the lock status information.
 * @param[out] LockStatusPtr Pointer to store card lock status information.
 * SDMMC004_CARD_IS_LOCKED: If card is locked <BR>
 * SDMMC004_CARD_UNLOCKED: If card is unlocked.<BR>
 * @return  status_t <BR>
 * DAVEApp_SUCCESS:  If get lock status is successful.<BR>
 * SDMMC004_ERROR:   If get lock status fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   SDMMC004_LocalLockStructType LockStruct = {0};
 *   uint32_t LockStatus;
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *      //  If card detection support available call the below function in while loop.
 *      //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *        // Get Lock Status 
 *        Status = SDMMC004_GetLockStatus(&LockStatus) ;
 *        if (LockStatus & SDMMC004_CARD_IS_LOCKED)
 *        {
 *          // Card is Locked. 
 *        }
 *        else
 *        {
 *          // Card is unlocked.
 *        } 
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetLockStatus(uint32_t *LockStatusPtr);

/**
 * @brief  This function is use to get card's current state whether the card is
 * present, initialized,write protected and Host controller is 
 * Initialized or not. It returns state in a combination of flags.
 * @return  status_t <BR>
 * SDMMC004_STATE_NO_CARD:  If no card is inserted. <BR>
 * SDMMC004_STATE_CARD_INITIALIZED: If card is initialized.<BR>
 * SDMMC004_STATE_CARD_WRITE_PROTECT: If card is write protected.<BR>
 * SDMMC004_STATE_HC_INITIALIZED: If Host Controller is initialized.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async:  Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *        // Get Current State. 
 *         Status  =  SDMMC004_GetCurrentState();
 *        if ( Status & (uint32_t)SDMMC004_STATE_NO_CARD )
 *        {
 *          //NO Card Present
 *        }
 *        if ( Status & (uint32_t)SDMMC004_STATE_CARD_INITIALIZED )
 *        {
 *          //Card is initialized Successfully.
 *        }
 *        if ( Status & (uint32_t)SDMMC004_STATE_HC_INITIALIZED )
 *        {
 *          //Host Controller is initialized Successfully.
 *        }
 *        if ( Status & (uint32_t)SDMMC004_STATE_CARD_WRITE_PROTECT  )
 *        {
 *          //Card is write protected.
 *        }
 *        if ( Status & (uint32_t)SDMMC004_STATE_CARD_LOCKED )
 *        {
 *          //Card is Locked. Unlock it first to use it
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetCurrentState(void);

/**
 * @brief  This function is use to get card type information.
 * @param[in] CardTypePtr Pointer to store card type information.Card Type can be:<BR>
 * <b>SDMMC004_SD_STANDARD_CAPACITY_V2:</b> Standard Capacity Card of Version2. <BR>
 * <b>SDMMC004_SD_STANDARD_CAPACITY_V1x:</b> Standard Capacity Card of Version1x.<BR>
 * <b>SDMMC004_SD_HIGH_CAPACITY :</b> High Capacity Card .<BR>
 * <b>SDMMC004_MMC  </b>: MMC card. <BR>
 * If the card takes address in terms of sectors then Card Type will be in 
 * combination of <b> SDMMC004_BLOCK_ADDRESSING </b> flag .
 * @return  status_t <BR>
 * DAVEApp_SUCCESS:  If get card type api is success.<BR>
 * SDMMC004_ERROR: If get card type api  fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b><Sync/Async:  Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t CardType = 0;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         Status = SDMMC004_GetCardType(&CardType)  ;
 *         if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *         {
 *           if( CardType & SDMMC004_SD_STANDARD_CAPACITY_V2)
 *           {
 *             // Standard Capacity Card version2
 *           }
 *           if( CardType & SDMMC004_SD_STANDARD_CAPACITY_V1x)
 *           {
 *             // Standard Capacity Card version1.
 *           } 
 *           if( CardType & SDMMC004_SD_HIGH_CAPACITY)
 *           {
 *             // High Capacity Card.
 *           }
 *         }
 *       }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetCardType(uint32_t* CardTypePtr);

/**
 * @brief  This function is use to Get CID( Card identification Number) register
 * information of card. The CID register is of 128 bits. The upper layer needs to
 * pass buffer of type SDMMC004_SDCIDType to get the Card's CID data.
 * @param[in] Buffer Pointer of type SDMMC004_SDCIDType to store CID register information.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS:  If Get CID is success.<BR>
 * SDMMC004_ERROR:   If Get CID fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   //Define a CID STructure .
 *   SDMMC004_SDCIDType SDCid;
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         Status = SDMMC004_GetCid( (void *)&SDCid); 
 *         if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *         {
 *          //CID read successfully.
 *         }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetCid(void *Buffer);

/**
 * @brief  This function is use to Get OCR(Operation conditions register) information from the card.
 * OCR is of 32-bits thus the upper Layer needs to pass 32-bit buffer to get the OCR. 
 * @param[in] Buffer Pointer to store OCR register information.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If Get OCR is success.<BR>
 * SDMMC004_ERROR: If Get OCR fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   //Define a 32-bit OCR variable
 *   uint32_t Ocr = 0;
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         //Read OCR
 *        Status = SDMMC004_GetOcr( (void *)&Ocr); 
 *        if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *        {
 *          //OCR read successfully.
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetOcr(void *Buffer);

/**
 * @brief  This function is use to Get CSD( Card Specific Data ) information from the card.
 * CSD is of 128 bits. The upper layer needs to pass structure of type SDMMC004_CSDV1Type
 * (For Standard Capacity V1/2 card type ) and SDMMC004_CSDV2Type(For High Capacity card type)
 * @param[in] Buffer Pointer to store CSD register information.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If Get CSD is success.<BR>
 * SDMMC004_ERROR: If Get CSD fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   SDMMC004_CSDV2Type SDCsd;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         // Read CSD
 *        // first call cardtype function to check which card type is it. csd v1 or csdv2 .
 *        // for high capacity & Standard capcity v2, use V2 csd structure else
 *        // Use Csd V1 structure.
 *        Status = SDMMC004_GetCsd((void *)&SDCsd);
 *        if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *        {
 *          //CSD Read successfully.
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetCsd (void *Buffer);
/**
 * @brief  This function is use to get number of sectors (not include the security protected
 * area). on the card. The upper layer needs to pass 32-bit buffer to store the
 * sector count.
 * @param[in] Buffer Pointer to store Sector Count.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If Get Sector count is success.<BR>
 * SDMMC004_ERROR: If Get Sector count fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t SectorInfo;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         //Get sector Count
 *        Status = SDMMC004_GetSectorCount((void *)&SectorInfo);
 *        if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *        {
 *          //Get sector Count Read successfully.
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetSectorCount( void *Buffer );
/**
 * @brief  This function is use to get size of each sector on the card which is
 * fixed to 512bytes. The upper layer needs to pass 32-bit buffer to store the
 * sector size.
 * @param[in] Buffer Pointer to store Sector Size
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If Get Sector Size is success.<BR>
 * SDMMC004_ERROR: If Get Sector Size fails.<BR>
 * <b>Reentrant: Yes  </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t SectorInfo;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         //Get sector size
 *        Status = SDMMC004_GetSectorSize((void *)&SectorInfo);
 *        if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *        {
 *          //Get sector size Read successfully.
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetSectorSize  ( void *Buffer );

/**
 * @brief  This function returns erase block size,value, defining the
 * number of write blocks of the flash memory in unit of sector into the 
 * 32-bit variable pointed by buffer. 
 * @param[in] Buffer Pointer to store Block Size
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If Get Block Size is success.<BR>
 * SDMMC004_ERROR: If Get Block Size fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t SectorInfo;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *         //Get Block Size
 *        Status = SDMMC004_GetBlockSize((void *)&SectorInfo);
 *        if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *        {
 *          //Get Block size Read successfully.
 *        }
 *     }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_GetBlockSize(void *Buffer);
/**
 * @brief  This function is used inorder to make sure that the disk drive has
 * finished pending write process. When the disk I/O module has a write
 * back cache, flush the dirty sector immediately.
 * Currently this function doesn't do anything.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If Flush Disk Cache is success.<BR>
 * SDMMC004_ERROR: If Flush Disk Cache fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
status_t SDMMC004_FlushDiskWriteCache( void);
/**
 * @brief  The function is used to read multiple blocks of data from the card.
 * @param[out] ReadBufPtr Read buffer pointer to store data.
 * @param[in] ReadAddr Card address form where to read.
 * @param[in] NumberOfBlocks Number of blocks to read.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If multi read is success.<BR>
 * SDMMC004_READ_ERROR: If read fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t  WriteData[384];
 *    uint32_t  ReadData[384];
 *   uint32_t Count;
 *   uint32_t Counter;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *        for(Counter=0;Counter<384;Counter++)
 *        {
 *          WriteData[Counter] = Counter * 1;
 *        }
 *        //Write 3 blocks of data on sector 125-127
 *        Status = SDMMC004_CardWriteMultipleBlocks( WriteData,125,3 );
 *        if( Status == DAVEApp_SUCCESS)
 *        {
 *         //Read 3 blocks of data from sector 125-128
 *          Status = SDMMC004_CardReadMultipleBlocks(ReadData,125,3);   
 *          if( Status == DAVEApp_SUCCESS)
 *          {
 *            for( Count=0; Count<384; Count++)
 *            {
 *              if( ReadData[Count] != WriteData[Count])
 *              {
 *                Status = SDMMC004_ERROR;
 *                break;
 *              }           
 *            }
 *          }                   
 *        }
 *      }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_CardReadMultipleBlocks
(
  uint32_t *ReadBufPtr ,
  uint32_t ReadAddr,
  uint32_t NumberOfBlocks
);

/**
 * @brief  The function is used to write multiple blocks of data on the card.
 * @param[in] WriteBufPtr Data to write on the card.
 * @param[in] WriteAddr Card address on where to write.
 * @param[in] NumberOfBlocks Number of blocks to write
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If multi write is success.<BR>
 * SDMMC004_WRITE_ERROR: If write fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t  WriteData[384];
 *   uint32_t  ReadData[384];
 *   uint32_t Count;
 *   uint32_t Counter;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *        for(Counter=0;Counter<384;Counter++)
 *        {
 *          WriteData[Counter] = Counter * 1;
 *        }
 *        //Write 3 blocks of data on sector 125-127
 *        Status = SDMMC004_CardWriteMultipleBlocks( WriteData,125,3 );
 *        if( Status == DAVEApp_SUCCESS)
 *        {
 *         //Read 3 blocks of data from sector 125-128
 *          Status = SDMMC004_CardReadMultipleBlocks(ReadData,125,3);   
 *          if( Status == DAVEApp_SUCCESS)
 *          {
 *            for( Count=0; Count<384; Count++)
 *            {
 *              if( ReadData[Count] != WriteData[Count])
 *              {
 *                Status = SDMMC004_ERROR;
 *                break;
 *              }           
 *            }
 *          }                   
 *        }
 *      }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_CardWriteMultipleBlocks
(
  const uint32_t *WriteBufPtr,
  uint32_t WriteAddr,
  uint32_t NumberOfBlocks
);

/**
 * @brief  The function is used to read single block of data from the card.
 * @param[in] ReadBufPtr Read buffer pointer to store data read from the card.
 * @param[in] ReadAddr Card address form where to read.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If  read is success.<BR>
 * SDMMC004_READ_ERROR: If read fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t  WriteData[128];
 *    uint32_t  ReadData[128];
 *   uint32_t Count;
 *   uint32_t Counter;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *        for(Counter=0;Counter<128;Counter++)
 *        {
 *          WriteData[Counter] = Counter * 1;
 *        }
 *        //Write 1 block of data on sector 200
 *        Status = SDMMC004_CardWriteSingleBlock( WriteData, 200);
 *        if( Status == DAVEApp_SUCCESS)
 *        {
 *         //Read 1 block of data from sector 200
 *          Status = SDMMC004_CardReadSingleBlock(ReadData,200);   
 *          if( Status == DAVEApp_SUCCESS)
 *          {
 *            for( Count=0; Count<128; Count++)
 *            {
 *              if( ReadData[Count] != WriteData[Count])
 *              {
 *                Status = SDMMC004_ERROR;
 *                break;
 *              }           
 *            }
 *          }                   
 *        }
 *      }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_CardReadSingleBlock
(
  uint32_t *ReadBufPtr,
  uint32_t ReadAddr
);

/**
 * @brief  The function is used to write single block of data on the card.
 * @param[in] WriteBufPtr Data to write on the card.
 * @param[in] WriteAddr Card address on where to write
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If write is success.<BR>
 * SDMMC004_WRITE_ERROR: If write fails.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   uint32_t  WriteData[128];
 *   uint32_t  ReadData[128];
 *   uint32_t Count;
 *   uint32_t Counter;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *        for(Counter=0;Counter<128;Counter++)
 *        {
 *          WriteData[Counter] = Counter * 1;
 *        }
 *        //Write 1 block of data on sector 200
 *        Status = SDMMC004_CardWriteSingleBlock( WriteData, 200);
 *        if( Status == DAVEApp_SUCCESS)
 *        {
 *         //Read 1 block of data from sector 200
 *          Status = SDMMC004_CardReadSingleBlock(ReadData,200);   
 *          if( Status == DAVEApp_SUCCESS)
 *          {
 *            for( Count=0; Count<128; Count++)
 *            {
 *              if( ReadData[Count] != WriteData[Count])
 *              {
 *                Status = SDMMC004_ERROR;
 *                break;
 *              }           
 *            }
 *          }                   
 *        }
 *      }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_CardWriteSingleBlock
(
  const uint32_t *WriteBufPtr,
  uint32_t WriteAddr
);

/**
 * @brief  This function is use to de-activate or inactivates the card. The card
 * needs to be initalized again after deactivating it.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If card ejection is success.<BR>
 * SDMMC004_ERROR: If error occurs.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   // DAVE Initialization. SDMMC004_Init() is mandatory to be called before hand.
 *   DAVE_Init();
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *    //  If card detection support available call the below function in while loop.
 *    //while(1) {
 *      Status = SDMMC004_CardDetectionSupport();
 *      if (Status == (uint32_t)DAVEApp_SUCCESS)
 *      {
 *        Status = SDMMC004_EjectCard();
 *        if( Status == DAVEApp_SUCCESS)
 *        {
 *          // Card Ejected Successfully. You need to initialize the card
 *          // again inorder to access the card.
 *        }
 *      }
 *   // } End of while loop. uncomment  it if SDCD signal supported
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_EjectCard(void);


/**
 * @brief  This function will bring the SDMMC peripheral out of reset.
 * @return  void <BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
void SDMMC004_Init(void);


/**
 * @brief  This function performs the Host Controller Initialization and enables
 * the SDMMC Interrupt. Host Controller needs to be compulsarily initialized 
 * before establishing any communication with the card.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If Start api is success.<BR>
 * SDMMC004_ERROR: If error occurs.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   Status = SDMMC004_Start();
     return 0;
 * }
 * @endcode
 */
status_t SDMMC004_Start(void);

/**
 * @brief This function performs the card initialization and reading card registers
 * post card initialization.If card detection Support fails due to  "SDMMC004_INITIALIZED_BUT_LOCKED",
 * then you need to call card unlock api and then again call card detection support 
 * function else you cannot proceed further as Card Registers can be read only
 * if card is in unlocked state. In case of Non-Card Detection circuit, it will be called 
 * in the upper layer disk_init function. In Card Detection circuit it must be 
 * called in the infinite loop.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If function is success.<BR>
 * SDMMC004_ERROR: If error occurs.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   Status = SDMMC004_Start();
 *   if ( Status == (uint32_t)DAVEApp_SUCCESS)
 *   {
 *     Status = SDMMC004_CardDetectionSupport();
 *     if (Status == (uint32_t)DAVEApp_SUCCESS)
 *     {
 *       //Call functions as per requirement only after this 
 *     }
 *   }
 *   return Status;
 * }
 * @endcode
 */
status_t SDMMC004_CardDetectionSupport(void);

#if SDMMC_CARD_DETECTION_SUPPORT
/**
 * @brief This function registers the call back function of upper layer which will be 
 * invoked from low-level driver if card is inserted or removed in the kit
 * supporting Card detection mechanism.
 * WARNING!!! "Don't Call SDMMC004_CardDetectionSupport() here as this function is
 * invoked in interrupt context." SDMMC004_CardDetectionSupport() may trigger some
 * other interrupts which may thus lead to nested interrupts in interrupt context.
 * @return  status_t <BR>
 * DAVEApp_SUCCESS: If function is success.<BR>
 * SDMMC004_ERROR: If null call back function pointer is passed.<BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   status_t Status = SDMMC004_ERROR;
 *   // Call back function defined in the upper layer 
 *   void SDMMC_CallBackFuntion(SDMMC004_InterruptType CardState)
 *   {
 *     if (CardState == SDMMC004_CARD_INSERTION )
 *     {
 *       //NOTE: Set a flag here and in the main process context call card detection
 *       // support function in while loop switched on to the flag set over here.
 *       //If Card Detection Support Function is success then also set the 
 *       //Sdmmc Block Layers SDMMC001_InitializeFlag to 1 indicating that
 *       // Card is initialized. 
 *     }
 *     if (CardState == SDMMC004_CARD_REMOVAL)
 *     {
 *       // Card Cleanup 
 *       SDMMC004_lCardCleanUp();
 *       // Change the State machine  to De-initialized 
 *       SDMMC004_Handle.State &= ~(  SDMMC004_STATE_CARD_INITIALIZED | \
 *                                SDMMC004_STATE_CARD_WRITE_PROTECT | \
 *                                SDMMC004_STATE_CMD_ACTIVE | \
 *                                SDMMC004_STATE_DATA_ACTIVE | \
 *                                SDMMC004_STATE_CARD_LOCKED) | \
 *                                (SDMMC004_STATE_NO_CARD);
 *       // Reset the Registers.
 *       SDMMC004_lReset(SDMMC_SW_RESET_SW_RST_ALL_Msk);
 *     }
 *   }
 *   Status = SDMMC004_RegisterCallBack(&SDMMC_CallBackFuntion); 
 *   if (Status != (uint32_t) DAVEApp_SUCCESS)
 *   {
 *     //  Call Back Function is Null 
 *   }
 *   return 0;
 * }
 * @endcode
 */
status_t SDMMC004_RegisterCallBack(SDMMC004_PtrToCallBackFunction \
                                             CallbackFunction);
#endif
/**
 * @}
 */

#endif /* SDMMC004_H_ */

/*CODE_BLOCK_END*/



