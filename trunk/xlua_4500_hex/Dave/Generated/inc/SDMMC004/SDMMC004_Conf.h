 

/* CODE_BLOCK_BEGIN[SDMMC004_Conf.h] */
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
** MAY BE CHANGED BY USER [yes/Yes]: Yes                                      **
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
 

#ifndef SDMMC004_CONF_H_
#define SDMMC004_CONF_H_


/**
 * @file   SDMMC004_Conf.h
 *
 * @App Version SDMMC004 <1.0.2>
 *
 * @brief  This file has the App instance configurations.
 *
 * Revision History
 * 23 Aug 2012  v1.0.0    Initial version
 */

/* RTOS or Non-RTOS environment */
#define SDMMC_RTOS_PRESENT                                                    1

/* Card Detection signal supported/not supported  by the kit/board  	*/
#define SDMMC_CARD_DETECTION_SUPPORT                             			  0   
/* 4-data lines option enabled or disabled */
#define SDMMC_SUPPORT_4_BUS_WIDTH											  1

/* MMC card support */
#define SDMMC_SUPPORT_MMC_CARD                                                0

#define SDMMC_PREEMPTION_PRIORITY                                 40
#define SDMMC_SUB_PRIORITY                                     0

#endif
/*CODE_BLOCK_END*/


