
/* CODE_BLOCK_BEGIN[LUA001_Conf.h]*/
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
 


#ifndef LUA001_CONF_H_
#define LUA001_CONF_H_


/**
 * @file  LUA001_Conf.h
 *
 * @brief This file contains all GUI configurations of LUA001 App
 *
 */
/*******************************************************************************
**                      INCLUDE FILES                                         **
*******************************************************************************/

#include <DAVE3.h>
#include "legc.h"
#include "LUA001.h"


/** Serial Communication Mode i.e. UART */
#define LUA001_USE_UART                                                       1
/** Macro representing LTR feature is enabled or disabled */
#define LUA001_USE_LTR                                                        1
/** Macro representing Emergency Garbage Collector (EGC) feature is enabled or disabled */
#define LUA001_USE_EGC                                                        1  
 /** EGC on allocation failure mode */
#define EGC_INITIAL_MODE1                             EGC_ON_ALLOC_FAILURE
 /** EGC when an upper memory limit is hit */
#define EGC_INITIAL_MODE2                             EGC_ON_MEM_LIMIT 
  /** The upper memory limit used by the EGC_ON_MEM_LIMIT mode */
#define EGC_INITIAL_MEMLIMIT         65536
 /** EGC always before an allocation mode */
#define EGC_INITIAL_MODE3                               EGC_ALWAYS 
  /** Macro showing the EGC modes selected */
#define EGC_INITIAL_MODE         (EGC_INITIAL_MODE1 +  EGC_INITIAL_MODE2 + EGC_INITIAL_MODE3) 


#endif /* LUA001_CONF_H_ */

/*CODE_BLOCK_END*/

