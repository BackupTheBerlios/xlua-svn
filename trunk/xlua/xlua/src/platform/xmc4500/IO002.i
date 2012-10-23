
%module IO002
%include "cpointer.i"
%include "typemaps.i"
%{
#include <DAVE3.h>
void IO002_Init(void);
void IO002_DisableOutputDriver(const IO002_HandleType* Handle,IO002_InputModeType Mode);
void IO002_EnableOutputDriver(const IO002_HandleType* Handle,IO002_OutputModeType Mode);
%}

%rename ("pin_high") IO002_DisableOutputDriver(const IO002_HandleType* Handle,IO002_InputModeType Mode);
%rename ("pin_low") IO002_EnableOutputDriver(const IO002_HandleType* Handle,IO002_OutputModeType Mode);
%rename ("Handle0") IO002_Handle0;

extern const IO002_HandleType IO002_Handle0 = {
  .PortNr   = 3 , /* Mapped Port */
  .PortPin  = 9,   /* Mapped Pin */
  .PortRegs = (PORTS_TypeDef*)PORT3_BASE /* Port Base Address*/		
};

/**
 *This data type describes the App Handle
 */
struct IO002_HandleType
{
  /** Port Number */
  uint8_t PortNr;
  /** Port pins */
  uint8_t PortPin;
  /** Port Regs */
  PORTS_TypeDef* PortRegs;
};

typedef struct IO002_HandleType IO002_HandleType;

/**
 * This data type describes the Input Mode type
 */ 

enum IO002_InputModeType
{
  /** Tri-state */
  IO002_TRISTATE,
  /** Input pull-down device connected */
  IO002_PULL_DOWN_DEVICE,
  /** Input pull-up device connected */
  IO002_PULL_UP_DEVICE,
  /** Pn_OUTx continuously polls the input value */
  IO002_CONT_POLLING,
  /** Inverted tri-state */
  IO002_INV_TRISTATE,
  /** Inverted Input pull-down device connected */
  IO002_INV_PULL_DOWN_DEVICE,
  /** Inverted Input pull-up device connected */
  IO002_INV_PULL_UP_DEVICE,
  /** Inverted Pn_OUTx continuously polls the input value */
  IO002_INV_CONT_POLLING,
};

/**
 * This data type describes the Output Mode type
 */
enum IO002_OutputModeType
{
  /** Push pull output */
  IO002_PUSHPULL =0x10,
  /** Open drain output */
  IO002_OPENDRAIN =0x18
};

extern void IO002_Init(void);
extern void IO002_DisableOutputDriver(const IO002_HandleType* INPUT, IO002_InputModeType);
extern void IO002_EnableOutputDriver(const IO002_HandleType* INPUT,IO002_OutputModeType);

