
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
** PLATFORM : Infineon <Microcontroller name, step>                           **
**                                                                            **
** COMPILER : Compiler Independent                                            **
**                                                                            **
** MODIFICATION DATE : January 08, 2013                                       **
**                                                                            **
*******************************************************************************/
/**
 * @file  MULTIPLEXER.c
 *
 * @brief This file contains implementation of DAVE Support function which 
 * uses to configure multiplexer register values.
 *
 */

/*******************************************************************************
**                      Include Files                                         **
*******************************************************************************/
#include "../../inc/DAVESupport/DAVE3.h"

/*******************************************************************************
**                 Function declarations                                     **
*******************************************************************************/
/*******************************************************************************
** Syntax           : void DAVE_MUX_Init(void)                                **
**                                                                            **
** Reentrancy       : None                                                    **
**                                                                            **
** Parameters (in)  : void                                                    **
**                                                                            **
** Parameters (out) : none                                                    **
**                                                                            **
** Return value     : none                                                    **
**                                                                            **
** Description      : This is the Mux configuration                           **
**                                                                            **
*******************************************************************************/
           
void DAVE_MUX_Init(void)
{              	         
                                     
       /*        SCU Macro definitions     */                              
//********* MODULE USIC CONFIGURATIONS *************************	         						
   /*USIC 0 Channel 0 Mux Related SFR/Bitfields Configurations*/ 						         
 WR_REG(USIC0_CH0->DX0CR, USIC_CH_DX0CR_DSEL_Msk, USIC_CH_DX0CR_DSEL_Pos,1); 
  			  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
                 
   // Data Pointer & Buffer Size for Transmitter Buffer Control  
 WR_REG(USIC0_CH0->TBCTR, USIC_CH_TBCTR_DPTRSIZE_Msk, USIC_CH_TBCTR_DPTRSIZE_Pos,0x01000002);		/*    DPTR = 2,  SIZE = 1 */ 
         
  // Data Pointer & Buffer Size for Receiver Buffer Control  
 WR_REG(USIC0_CH0->RBCTR, USIC_CH_RBCTR_DPTRSIZE_Msk, USIC_CH_RBCTR_DPTRSIZE_Pos,0x01000000);		/*    DPTR = 0,  SIZE = 1 */ 
 						
   /*USIC 0 Channel 1 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
         						
   /*USIC 1 Channel 0 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
       						
   /*USIC 1 Channel 1 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
         						
   /*USIC 2 Channel 0 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
       						
   /*USIC 2 Channel 1 Mux Related SFR/Bitfields Configurations*/ 									  					 				 				 		       				              				  					    					 					   				  					 				 				       				  										 									 					 					  									      					              					  						    					      
         	        					        	         
                                                          	         
                                                          	         
                                                          	         
                                                          	         
                                          

/*        PORT Macro definitions for IOCR_OE, IOCR_PCR & HWSEL_HW     */               
           
  WR_REG(PORT1->IOCR4, PORT_IOCR_PC1_PCR_Msk, PORT_IOCR_PC1_PCR_Pos, PORT_IOCR_PCR2);            /*    P1.5 : PORT1_IOCR4_PC5_PCR */

  WR_REG(PORT1->IOCR4, PORT_IOCR_PC1_OE_Msk, PORT_IOCR_PC1_OE_Pos, PORT_IOCR_OE1);                /*    P1.5 : PORT1_IOCR4_PC5_OE */					   
           
  WR_REG(PORT1->HWSEL, PORT1_HWSEL_HW6_Msk, PORT1_HWSEL_HW6_Pos, PORT_HWSEL_HW0);                    /*    P1.6 : PORT1_HWSEL_HW6 */  

  WR_REG(PORT1->IOCR4, PORT_IOCR_PC2_OE_Msk, PORT_IOCR_PC2_OE_Pos, PORT_IOCR_OE1);                /*    P1.6 : PORT1_IOCR4_PC6_OE */					   
           
  WR_REG(PORT1->HWSEL, PORT1_HWSEL_HW7_Msk, PORT1_HWSEL_HW7_Pos, PORT_HWSEL_HW0);                    /*    P1.7 : PORT1_HWSEL_HW7 */  

  WR_REG(PORT1->IOCR4, PORT_IOCR_PC3_OE_Msk, PORT_IOCR_PC3_OE_Pos, PORT_IOCR_OE1);                /*    P1.7 : PORT1_IOCR4_PC7_OE */					   
           
  WR_REG(PORT3->HWSEL, PORT3_HWSEL_HW5_Msk, PORT3_HWSEL_HW5_Pos, PORT_HWSEL_HW0);                    /*    P3.5 : PORT3_HWSEL_HW5 */  

  WR_REG(PORT3->IOCR4, PORT_IOCR_PC1_OE_Msk, PORT_IOCR_PC1_OE_Pos, PORT_IOCR_OE1);                /*    P3.5 : PORT3_IOCR4_PC5_OE */					   
           
  WR_REG(PORT3->HWSEL, PORT3_HWSEL_HW6_Msk, PORT3_HWSEL_HW6_Pos, PORT_HWSEL_HW0);                    /*    P3.6 : PORT3_HWSEL_HW6 */  

  WR_REG(PORT3->IOCR4, PORT_IOCR_PC2_OE_Msk, PORT_IOCR_PC2_OE_Pos, PORT_IOCR_OE1);                /*    P3.6 : PORT3_IOCR4_PC6_OE */					   
           
  WR_REG(PORT4->HWSEL, PORT4_HWSEL_HW0_Msk, PORT4_HWSEL_HW0_Pos, PORT_HWSEL_HW0);                    /*    P4.0 : PORT4_HWSEL_HW0 */  

  WR_REG(PORT4->IOCR0, PORT_IOCR_PC0_OE_Msk, PORT_IOCR_PC0_OE_Pos, PORT_IOCR_OE1);                /*    P4.0 : PORT4_IOCR0_PC0_OE */					   
           
  WR_REG(PORT4->HWSEL, PORT4_HWSEL_HW1_Msk, PORT4_HWSEL_HW1_Pos, PORT_HWSEL_HW0);                    /*    P4.1 : PORT4_HWSEL_HW1 */  

  WR_REG(PORT4->IOCR0, PORT_IOCR_PC1_OE_Msk, PORT_IOCR_PC1_OE_Pos, PORT_IOCR_OE1);                /*    P4.1 : PORT4_IOCR0_PC1_OE */					       
}


/*******************************************************************************
** Syntax           : void DAVE_MUX_PreInit(void)                             **
**                                                                            **
** Reentrancy       : None                                                    **
**                                                                            **
** Parameters (in)  : void                                                    **
**                                                                            **
** Parameters (out) : none                                                    **
**                                                                            **
** Return value     : none                                                    **
**                                                                            **
** Description      : This is the Mux configuration                           **
**                                                                            **
*******************************************************************************/
 
void DAVE_MUX_PreInit(void)
{                    

/*        PORT Macro definitions for IOCR_OE, IOCR_PCR & HWSEL_HW     */                   
}