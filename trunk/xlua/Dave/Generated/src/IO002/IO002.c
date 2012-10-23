
/*CODE_BLOCK_BEGIN[IO002.c]*/
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
** AUTHOR   : App Developer                                                   **
**                                                                            **
** MAY BE CHANGED BY USER [yes/no]: Yes                                       **
**                                                                            **
** MODIFICATION DATE : Dec 29, 2011                                           **
**                                                                            **
*******************************************************************************/
/*******************************************************************************
**                      Author(s) Identity                                    **
********************************************************************************
**                                                                            **
** Initials     Name                                                          **
** ---------------------------------------------------------------------------**
** PAE        App Developer                                                   **
*******************************************************************************/
/**
 * @file   IO002.c
 *
 * @brief  IO_Digital _IO002 App
 *
 */
/*******************************************************************************
 ** INCLUDE FILES                                                             **
 ******************************************************************************/

/** Inclusion of header file */
#include <DAVE3.h>

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                 Private Function Declarations:
*******************************************************************************/

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

/*******************************************************************************
**                      Public Function Definitions                           **
*******************************************************************************/


/** @ingroup IO002_Func
 * @{
 */

void IO002_Init(void)
{
   /** <<<DD_IO002_API_1>>> */

  /* Configuration of 3 Port 9 based on User configuration */
  /* DEBUG INFO */ 
  //PDR_PD = 4 OMR_PS = 0
  //IOCR_PCR = 0 IOCR_PO = 0 IOCR_OE = 0
  //IOCR = 0
  IO002_Handle0.PortRegs->OMR |= (0<< 9);  
  IO002_Handle0.PortRegs->PDR1  &= (~(PORT3_PDR1_PD9_Msk));
  IO002_Handle0.PortRegs->PDR1  |= ((4 << PORT3_PDR1_PD9_Pos) & \
                                     PORT3_PDR1_PD9_Msk);
 
  IO002_Handle0.PortRegs->IOCR8 |= (0 << 11);
}

void IO002_DisableOutputDriver(const IO002_HandleType* Handle,IO002_InputModeType Mode)
{
  uint8_t Pin = Handle->PortPin;
     /** <<<DD_IO002_API_7>>> */
  if(Pin < 4)
  {
    Handle->PortRegs->IOCR0  =  (Handle->PortRegs->IOCR0 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR0 |= ((Mode & 0x1F) << (3+(Pin*8)));
  } else if (Pin >= 4 && Pin <= 7)
  {
    Pin = Pin - 4;
    Handle->PortRegs->IOCR4  =  (Handle->PortRegs->IOCR4 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR4 |=  ((Mode & 0x1F) << (3+(Pin*8)));
  } else if (Pin >= 8 && Pin <= 11)
  {
    Pin = Pin - 8;
    Handle->PortRegs->IOCR8  =  (Handle->PortRegs->IOCR8 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR8 |=  ((Mode & 0x1F) << (3+(Pin*8)));
  } else if (Pin >= 12 && Pin <= 15)
  {
    Pin = Pin - 12;
    Handle->PortRegs->IOCR12  =  (Handle->PortRegs->IOCR12 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR12 |=  ((Mode & 0x1F) << (3+(Pin*8)));
  }

}

void IO002_EnableOutputDriver(const IO002_HandleType* Handle,IO002_OutputModeType Mode)
{

  uint8_t Pin = Handle->PortPin;
	   /** <<<DD_IO002_API_8>>> */
  if(Pin < 4)
  {
    Handle->PortRegs->IOCR0  =  (Handle->PortRegs->IOCR0 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR0 |=  ((Mode & 0x1F) << (3+(Pin*8)));
  } else if (Pin >= 4 && Pin <= 7)
  {
    Pin = Pin - 4;
    Handle->PortRegs->IOCR4  =  (Handle->PortRegs->IOCR4 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR4 |=  ((Mode & 0x1F) << (3+(Pin*8)));
  } else if (Pin >= 8 && Pin <= 11)
  {
    Pin = Pin - 8;
    Handle->PortRegs->IOCR8  =  (Handle->PortRegs->IOCR8 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR8 |=  ((Mode & 0x1F) << (3+(Pin*8)));
  } else if (Pin >= 12 && Pin <= 15)
  {
    Pin = Pin - 12;
    Handle->PortRegs->IOCR12  =  (Handle->PortRegs->IOCR12 & ~(0x0000001F << (3+(Pin*8))));
    Handle->PortRegs->IOCR12 |=  ((Mode & 0x1F) << (3+(Pin*8)));
  }
}

/**
*@}
*/	

/*CODE_BLOCK_END*/

