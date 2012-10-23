
/* CODE_BLOCK_BEGIN[FATFS003.h]*/
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
** MODIFICATION DATE : Aug 28, 2012                                           **
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
 


#ifndef FATFS003_H_
#define FATFS003_H_

/**
 * @file  FATFS003.h
 *
 * @brief This file contains public data structures,enums and function
 *        prototypes for Fat file system App.
 *
 */
/*******************************************************************************
**                      INCLUDE FILES                                         **
*******************************************************************************/

#include "../../src/FATFS003/Src/ff.h"
#include "../../Inc/FATFS005/integer.h"
#include "../../Inc/FATFS005/diskio.h"
#include "ffconf.h"


/**
 * @ingroup FATFS003_publicparam
 * @{
 */
/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/ 
 /**
  * Maximum Logical partitions created using the Multi-partition feature
  */
 #define FATFS003_MAX_LOGICAL_DRIVES                                 4


/*******************************************************************************
**                      ENUMERATIONS                                          **
*******************************************************************************/

/**
 * This enumerates the FAT file system error codes
 */
typedef enum FATFS003_ErrorCodeType
{
/**
 * Mutex creation failed
 */
  FATFS003_MUTEX_CREATE_FAILED = 1,
/**
 * Mutex release failed
 */  
  FATFS003_MUTEX_RELEASE_FAILED
} FATFS003_ErrorCodeType;


#if _FS_REENTRANT
/**
 * This enumerates the Mutex Availability Status. 
 */
typedef enum FATFS003_MutexStatusType
{
  /**
   * Mutex is available to use.
   */
  FATFS003_FREE = 0,
 /**
  * Mutex is busy.
  */
  FATFS003_BUSY 
} FATFS003_MutexStatusType;



/*******************************************************************************
**                      STRUCTURES                                          **
*******************************************************************************/
/**
 * This structure contains the Mutex Information like Mutex Id and the status of
 * corresponding Mutrex whether it is free or busy.
 */
typedef struct FATFS003_MutexInfoType
{
  /** Stores Mutex ID **/
  osMutexId MutexId;
  /** Status of the Mutex whether it is free or acquired. **/
  FATFS003_MutexStatusType MutexStatus;
} FATFS003_MutexInfoType;

#endif
/**
 * @}
 */
/**
 * @ingroup FATFS003_apidoc
 * @{
 */
/*******************************************************************************
**                       FUNCTION PROTOTYPES                                  **
*******************************************************************************/
/**
 * @brief This function initializes the FAT File System App.
 * @return void <BR>
 * <b>Reentrant: Yes </b><BR>
 * <b>Sync/Async: Synchronous</b>
 */
void FATFS003_Init(void);
/**
 * @}
 */
#endif /* FATFS003_H_ */
