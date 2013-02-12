
/* CODE_BLOCK_BEGIN[FATFS003_Conf.c] */

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

/**
 * @file   FATFS003_Conf.c
 *
 * @App Version FATFS003 <1.0.0>
 *
 * @brief  Configuration file generated based on UI settings 
 *         of FATFS003 App
 *
 */



 

/*******************************************************************************
**                      INCLUDE FILES                                         **
*******************************************************************************/
#include "../../inc/FATFS003/ffconf.h"
#include <DAVE3.h>


/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/

#if _FS_REENTRANT
/** Create 4 Mutex instances for each volume/logical drives. Only four 
 * primary-partitions can be mounted. Extended partition is not supported.
 */
FATFS003_MutexInfoType FATFS003_MutexInfo[FATFS003_MAX_LOGICAL_DRIVES];


/* Mutex definations */
osMutexDef(Drive0Mutex1);
osMutexDef(Drive1Mutex2);
osMutexDef(Drive2Mutex3);
osMutexDef(Drive3Mutex4);

osMutexDef(MutexToProtect);
volatile osMutexId FATFS003_MutexProtectId;
#endif

/*******************************************************************************
**                     Public Function Definitions                            **
*******************************************************************************/
/* This functions creates mutex for the file system. Since Fatfs doesn't supports 
 * extended partition feature, only 4 logical partitions can be created.
 */
void FATFS003_Init()
{
#if _FS_REENTRANT
 /* Drive0 Mutex 1 */
  FATFS003_MutexInfo[0].MutexId = osMutexCreate (osMutex(Drive0Mutex1));
  if (/* !N_DBG*/(NULL ==  FATFS003_MutexInfo[0].MutexId ))
  {
    ERROR(GID_FATFS003, FATFS003_MUTEX_CREATE_FAILED, 0, 0);
  }
  
  FATFS003_MutexInfo[1].MutexId = osMutexCreate (osMutex(Drive1Mutex2));
  if (/* !N_DBG*/(NULL ==  FATFS003_MutexInfo[1].MutexId ))
  {
    ERROR(GID_FATFS003, FATFS003_MUTEX_CREATE_FAILED, 0, 0);
  }
  
  FATFS003_MutexInfo[2].MutexId = osMutexCreate (osMutex(Drive2Mutex3));
  if (/* !N_DBG*/(NULL == FATFS003_MutexInfo[2].MutexId ))
  {
    ERROR(GID_FATFS003, FATFS003_MUTEX_CREATE_FAILED, 0, 0);
  }
  FATFS003_MutexInfo[3].MutexId = osMutexCreate (osMutex(Drive3Mutex4));
  if (/* !N_DBG*/(NULL ==  FATFS003_MutexInfo[3].MutexId ))
  {
    ERROR(GID_FATFS003, FATFS003_MUTEX_CREATE_FAILED, 0, 0);
  }
  
  FATFS003_MutexProtectId = osMutexCreate (osMutex(MutexToProtect));
  if (/* !N_DBG*/(NULL ==  FATFS003_MutexProtectId ))
  {
    ERROR(GID_FATFS003, FATFS003_MUTEX_CREATE_FAILED, 0, 0);
  }
#endif
}

