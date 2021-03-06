
/* CODE_BLOCK_BEGIN[SDMMC002.h]*/
/******************************************************************************
 *
 * Copyright (C) 2011 Infineon Technologies AG. All rights reserved.
 *
 * Infineon Technologies AG (Infineon) is supplying this software for use with 
 * Infineon's microcontrollers. 
 * This file can be freely distributed within development
 * tools that are supporting such microcontrollers. 
 *
 * THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 * OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 * INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR
 * CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
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
** MODIFICATION DATE : Dec 16, 2011                                           **
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
 

#ifndef SDMMC002_H_
#define SDMMC002_H_


/**
 * @file  SDMMC002.h
 *
 * @brief This file contains all public data structures,enums and function
 *        prototypes for Sdmmc Block Layer App.
 *
 */
/*******************************************************************************
**                      INCLUDE FILES                                         **
*******************************************************************************/
#include <DAVE3.h>


/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/**
 * @ingroup SDMMC002_publicparam
 * @{
 */
 
/* IOCTL code for Sdmmc Module */

/* Command code for disk_ioctrl fucntion */

/* Generic command (defined for FatFs) */
/** Flush disk cache (for write functions) */
#define SDMMC002_CTRL_SYNC               0 

/** Get media size (for only f_mkfs()) */
#define SDMMC002_GET_SECTOR_COUNT        1 

/** Get sector size (for multiple sector size (_MAX_SS >= 1024)) */
#define SDMMC002_GET_SECTOR_SIZE         2 

/** Get erase block size (for only f_mkfs()) */
#define SDMMC002_GET_BLOCK_SIZE          3 

/** Force erased a block of sectors (for only _USE_ERASE) */
#define SDMMC002_CTRL_ERASE_SECTOR       4 

/* Generic command */
/** Get/Set power status */
#define SDMMC002_CTRL_POWER              5 

/** Lock/Unlock media removal */
#define SDMMC002_CTRL_LOCK               6 

/** Eject media */
#define SDMMC002_CTRL_EJECT              7 

/* MMC/SDC specific ioctl command */

/** Get card type */
#define SDMMC002_MMC_GET_TYPE            10 

/** Get CSD */
#define SDMMC002_MMC_GET_CSD             11 

/** Get CID */
#define SDMMC002_MMC_GET_CID             12 

/** Get OCR */
#define SDMMC002_MMC_GET_OCR             13  

/** Get SD status */
#define SDMMC002_MMC_GET_SDSTAT          14  

/* NAND specific ioctl command */
/** Create physical format */
#define SDMMC002_NAND_FORMAT             30  
/**
 * Lock the card. 
 */
#define  SDMMC002_MMC_LOCK_CARD    (SDMMC002_NAND_FORMAT + 1 )
/**
 * Unlock the card. 
 */
#define  SDMMC002_MMC_UNLOCK_CARD (SDMMC002_MMC_LOCK_CARD + 1)
/**
 * Set/Reset the password. Card gets locked in the next power cycle.
 */
#define  SDMMC002_MMC_SET_PASSWD (SDMMC002_MMC_UNLOCK_CARD + 1)
/**
 * Clear the password. To remove the Password from the card
 */
#define  SDMMC002_MMC_CLEAR_PASSWD (SDMMC002_MMC_SET_PASSWD + 1)
/**
 * Sets the password and Lock the card immediately.
 */
#define  SDMMC002_MMC_SET_LOCK    (SDMMC002_MMC_CLEAR_PASSWD + 1)
/**
 * Read  the current Lock Status of the card 
 */
#define  SDMMC002_MMC_READ_LOCK_STATUS  (SDMMC002_MMC_SET_LOCK + 1)
/**
 * Erase the Password forcefully. Useful when user forgets the password.
 */
#define  SDMMC002_MMC_FORCE_ERASE   (SDMMC002_MMC_READ_LOCK_STATUS + 1)


/**
 * Maximum Length of the password 
 */
#define SDMMC002_MAX_PASSWD_LEN                        16

/* SDMMC Block Layer Error Codes */
/** Successful */
#define SDMMC002_RES_OK                               0
/**  R/W Error */
#define SDMMC002_RES_ERROR                            1
/**  Write Protected  */
#define SDMMC002_RES_WRPRT                            2
/** Not Ready  */
#define SDMMC002_RES_NOTRDY                           3
/** Invalid Parameter */
#define SDMMC002_RES_PARERR                           4

/** Drive not initialized */
#define SDMMC002_STA_NOINIT                         0x01  
/** No medium in the drive */
#define SDMMC002_STA_NODISK                         0x02  
/** Write protected */
#define SDMMC002_STA_PROTECT                        0x04  

/*******************************************************************************
**                       ENUMERATIONS                                         **
*******************************************************************************/
/**
 * This enumerates the error codes of this APP
 */
typedef enum SDMMC002_ErrorCodesType
{
  /**
   * SDMMC002 Module Error  (1)
   */
  /*
  GROUPID  #20
  MODULENAME = SDMMC Block Layer App
  */
  /*
  ERRCODESTRING = SDMMC002_ERROR
  STRCODESTRING = Error in SDMMC002 App.
  */
  SDMMC002_ERROR = 1,
  /**
   * SDMMC LLD Module Error  (2)
   */
  /*
  GROUPID  #20
  MODULENAME = SDMMC Block Layer App
  */
  /*
  ERRCODESTRING = SDMMC002_SDMMC00x_ERROR
  STRCODESTRING = Error in Sdmmc LLD App.
  */
  SDMMC002_SDMMC00x_ERROR,
  
   /**
   * SDMMC Device Is locked (3)
   */
  /*
  GROUPID  #20
  MODULENAME = SDMMC Block Layer App
  */
  /*
  ERRCODESTRING = SDMMC002_DISK_LOCKED
  STRCODESTRING = SDMMC Device is locked.
  */
  SDMMC002_DISK_LOCKED,
  /**
   * Debug log codes starts here  (0)
   */
  /**
   * DebugLog Message Id for Function Entry
   */
  /*
  ERRCODESTRING = SDMMC002_FUNCTION_ENTRY
  STRCODESTRING = Function Entered %s
  */
    SDMMC002_FUNCTION_ENTRY,
    /**
   * DebugLog Message Id for Function Exit (1)
   */
  /*
  ERRCODESTRING = SDMMC002_FUNCTION_EXIT
  STRCODESTRING = Function Exited %s
  */
    SDMMC002_FUNCTION_EXIT
} SDMMC002_ErrorCodesType;

/*******************************************************************************
**                      STRUCTURES                                            **
*******************************************************************************/
/**
 * This structure contains the Password details. User needs to provide the password information
 * in this structure inorder to use the card's security feature. 
 */
typedef struct SDMMC002_PasswdType
{
/**
 * Old Password. User needs to set this field if setting password for the first time or  
 * if locking/unlocking the card.
 *
 */
  uint8_t OldPassword[SDMMC002_MAX_PASSWD_LEN];
/**
 * New Password. User needs to set this field at the time of replacing the old
 * password with  the new one. Sets to 0 if not replacing the password. 
 */
  uint8_t NewPassword[SDMMC002_MAX_PASSWD_LEN];
/**
 * Old Password Lenth.
 */
  uint8_t OldPwdLength;
/**
 * New Password Length. Set to 0 if not setting the password.
 */
  uint8_t NewPwdLength;
} SDMMC002_PasswdType;

/**
 * This is the structure for  Erase Address details. 
 */
typedef struct SDMMC002_EraseAddrType
{
/**
 * Erase Block Start Address
 */
    uint32_t StartAddress;
/**
 * Erase Block Start Address
 */
    uint32_t EndAddress;
} SDMMC002_EraseAddrType ;

/**
 * @}
 */
 
 /**
 * @ingroup SDMMC002_apidoc
 * @{
 */

/*******************************************************************************
 **                           FUNCTION PROTOTYPES                             **
*******************************************************************************/
/**
 * @brief This function initializes the SD/MMC card and returns the 
 * initialization status of the card. A initialization flag is set to 1 if the 
 * card is initialized properly. It returns values in the combination of flags.
 * This function is called directly by FAT File System. 
 * @return uint8_t \n
 * SDMMC002_STA_NOINIT: Not Initialized\n
 * SDMMC002_STA_NODISK: No card\n
 * SDMMC002_STA_PROTECT: Card is write protected\n
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   uint8_t DStatus;
 *   // DAVE Initialization.
 *   DAVE_Init();
 *   DStatus =  SDMMC002_Initialize();
 *   if (DStatus == (SDMMC002_STA_NODISK | SDMMC002_STA_NOINIT))
 *   {
 *     //No card Present;
 *   }
 *   if (DStatus == SDMMC002_STA_NOINIT)
 *   {
 *      //Card Present but not initialized.
 *   }
 *   if (DStatus == SDMMC002_STA_PROTECT)
 *   {
 *      //Card is Write Protected .
 *   } 
 *   return 0;
 * }
 * @endcode
 */
uint8_t SDMMC002_Initialize(void);

/**
 * @brief This function gets the current card's status like
 * whether device is initialized, whether device is inserted or is it write
 * protected etc. The disk status is returned in combination of flags.
 * @return uint8_t \n
 * SDMMC002_STA_NOINIT: Not Initialized\n
 * SDMMC002_STA_NODISK: No card\n
 * SDMMC002_STA_PROTECT: Card is write protected\n
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   uint8_t DStatus;
 *   // DAVE Initialization.
 *   DAVE_Init();
 *   DStatus =  SDMMC002_GetStatus();
 *   if (DStatus == (SDMMC002_STA_NODISK | SDMMC002_STA_NOINIT))
 *   {
 *     //No card Present;
 *   }
 *   if (DStatus == SDMMC002_STA_NOINIT)
 *   {
 *     //Card Present but not initialized.
 *   }
 *   if (DStatus == SDMMC002_STA_PROTECT)
 *   {
 *     //Card is Write Protected .
 *   } 
 *   return 0;
 * }
 * @endcode
 */
uint8_t  SDMMC002_GetStatus(void);

/**
 * @brief This function reads blocks of data from the card. Block read can be single
 * or multiple blocks. It is mandatory to pass aligned buffer to store the data read
 * from the card otherwise the read operation fails.
 * @param[out] ReadBuf Read Aligned Buffer pointer to store data read from the card.
 * @param[in] SectorNumber Card sector address in sector number form where to read.
 * @param[in] SectorCount Number of sectors to read. 1 sector = 512 bytes.
 * @return uint32_t\n
 * SDMMC002_RES_OK: If  read  operation is successfully completed.\n
 * SDMMC002_RES_NOTRDY: Card is not initialized.\n
 * SDMMC002_RES_ERROR: If  read operation fails.\n
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   uint32_t DResult;
 *   uint32_t Count = 0;
 *   uint32_t Counter = 0;
 *   uint8_t  WriteData[1536];
 *   uint8_t  ReadData[1536];
 *   // DAVE Initialization.
 *   DAVE_Init();
 *   for(Counter=0;Counter<384;Counter++)
 *   {
 *     WriteData[Counter] = Counter * 10;
 *   }
 *   // Write functionality 
 *   DResult =  SDMMC002_WriteBlock( WriteData, 200, 3);
 *   if(DResult == SDMMC002_RES_OK)
 *   {
 *     // Read functionality 
 *     DResult =  SDMMC002_ReadBlock( ReadData, 200, 3);
 *     for( Count=0; Count<1536; Count++)
 *     {
 *       if( ReadData[Count] != WriteData[Count])
 *       {
 *         // Read and Write Data doesn't match.
 *       }
 *     }
 *    }
 *   return 0;
 * }
 * @endcode
 */
uint32_t SDMMC002_ReadBlock
(
  uint8_t * ReadBuf,
  uint32_t SectorNumber,
  uint8_t SectorCount
);

/**
 * @brief This function writes the data blocks onto the card from the host
 * system. Write operation may be for single or multiple blocks. Based on block
 * count parameter, single or multiple write block api is called from LLD App.
 * @param[in] WriteBuf Write buffer pointer from where to store data on the card.
 * @param[in] SectorNumber Card Sector address in sector number on where to write.
 * @param[in] SectorCount Number of sectors to write. 1 sector = 512 bytes.
 * @return uint32_t \n
 * SDMMC002_RES_OK: If  write  operation is successfully completed.\n
 * SDMMC002_RES_NOTRDY: Card is not initialized.\n
 * SDMMC002_RES_ERROR: If card write operation fails.\n
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   uint32_t DResult;
 *   uint32_t Count = 0;
 *   uint32_t Counter = 0;
 *   uint8_t  WriteData[1536];
 *   uint8_t  ReadData[1536];
 *   status_t Status =(uint32_t)DAVEApp_SUCCESS;
 *   // DAVE Initialization.
 *   DAVE_Init();
 *   for(Counter=0;Counter<384;Counter++)
 *   {
 *     WriteData[Counter] = Counter * 10;
 *   }
 *   // Write functionality 
 *   DResult =  SDMMC002_WriteBlock( WriteData, 200, 3);
 *   if(DResult == SDMMC002_RES_OK)
 *   {
 *     // Read functionality 
 *     DResult =  SDMMC002_ReadBlock( ReadData, 200, 3);
 *     for( Count=0; Count<1536; Count++)
 *     {
 *       if( ReadData[Count] != WriteData[Count])
 *       {
 *         Status = SDMMC002_ERROR;
 *         // Read and Write Data doesn't match.
 *       }
 *     }
 *   }
 *   return Status;
 * }
 * @endcode
 */
uint32_t  SDMMC002_WriteBlock
(
  const uint8_t *WriteBuf,
  uint32_t SectorNumber,
  uint8_t SectorCount
);

/**
 * @brief This function controls SDMMC device specified features and the device
 * independent miscellaneous functions other than disk read/write.
 * For Locking features user must provide the password information in the
 * Passwd structure provided to the user.
 * @param[in] Command specifies the command code. 
 * @param[in] Buffer Pointer to the parameter buffer depends on the command code.\n
 * When it is not used, specify a NULL pointer.
 * @return uint32_t\n
 * SDMMC002_RES_OK: If device specific functionality is done successfully.\n
 * SDMMC002_RES_NOTRDY: Card is not initialized.\n
 * SDMMC002_RES_WRPRT  : Card is read only.\n
 * SDMMC002_RES_ERROR: If device specific functionality fails.\n
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 * <BR><P>
 * <b>Ioctl Command's used are : </b>\n
 * Generic commands (defined for FatFs) \n
 * SDMMC002_CTRL_SYNC: Flush disk cache (for write functions) \n
 * SDMMC002_GET_SECTOR_COUNT: Get media size (for only f_mkfs()) \n 
 * SDMMC002_GET_SECTOR_SIZE: Get sector size (for multiple sector size (_MAX_SS >= 1024)) \n
 * SDMMC002_GET_BLOCK_SIZE: Get erase block size (for only f_mkfs()) \n
 * SDMMC002_CTRL_ERASE_SECTOR:  Force erased a block of sectors (for only _USE_ERASE) \n
 * SDMMC002_CTRL_EJECT: Eject media \n
 * MMC/SDC specific ioctl commands \n
 * SDMMC002_MMC_GET_TYPE: Get card type ie. Standard Capacity v2/v1x or High Capacity card. \n
 * SDMMC002_MMC_GET_CSD: Get Card's Specific Data register \n
 * SDMMC002_MMC_GET_CID: Get Card's Identification Number \n
 * SDMMC002_MMC_GET_OCR: Get Card's Operating Condition Register  \n
 * SDMMC002_MMC_GET_SDSTAT:  Get 512-bit SD bus status information.  \n
 * The following Ioctl command's needs to be called directly from this layer as
 * Fat File system doesn't support these security Ioctl's. \n
 *  SDMMC002_MMC_LOCK_CARD: Locks the card. \n
 *  SDMMC002_MMC_UNLOCK_CARD: Unlocks the card. \n
 *  SDMMC002_MMC_SET_PASSWD: Set/replace the password. \n
 *  SDMMC002_MMC_CLEAR_PASSWD: Clear the password. \n
 *  SDMMC002_MMC_SET_LOCK: Sets the password and locks the card in the same power cycle. \n
 *  SDMMC002_MMC_READ_LOCK_STATUS: Reads the current lock status of the card. \n
 *  SDMMC002_MMC_FORCE_ERASE: Force erase the password. It is useful when user forgets the password. \n
 </p>
 
 * @code
 * #include <DAVE3.h>
 * int main(void)
 * {
 *   SDMMC002_PasswdType PasswdInfo  ;
 *   uint32_t Result;
 *   uint32_t Buffer;
 *   // The same api will be called for all lock related api's. 
 *   //Just take care of the parameters passed.
 *   // SET PASSWORD & LOCK the CARD //
 *   strcpy(PasswdInfo.OldPassword, "IFX");
 *   PasswdInfo.OldPwdLength = 3;
 *   Result = SDMMC002_Ioctl( SDMMC002_MMC_SET_LOCK,(void *)&PasswdInfo);
 *   if (Result == SDMMC002_RES_OK)
 *   {
 *     // READ LOCK STATUS. Status returned should be card is locked  
 *     Result = SDMMC002_Ioctl(SDMMC002_MMC_READ_LOCK_STATUS,(void *)&Buffer);
 *     if (Result == SDMMC002_RES_OK )
 *     {
 *       if (Buffer == SDMMC003_CARD_IS_LOCKED)
 *       {
 *         // Force Erase the Password. 
 *          Result = SDMMC002_Ioctl( SDMMC002_MMC_FORCE_ERASE,NULL);
 *       }
 *     }
 *     // Eject card //
 *     Result = SDMMC002_Ioctl(SDMMC002_CTRL_EJECT,NULL);
 *   }
 *   return 0;
 * }
 * @endcode
 */
 uint32_t  SDMMC002_Ioctl
(
    uint8_t Command,
    void * Buffer
);
/**
 * @}
 */
#endif /* SDMMC002_H_ */

/*CODE_BLOCK_END*/

