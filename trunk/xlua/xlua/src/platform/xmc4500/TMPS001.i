%module TMPS001
%include "cpointer.i"
%include "typemaps.i"
%{
#include <DAVE3.h>
static void Enable(void)    { ((SCU_GENERAL->DTSCON) &= ~(1U)); };
static void Disable(void)   { (SCU_GENERAL->DTSCON |= 0x01);};

%}


%rename ("StartMeasurement") TMPS001_StartMeasurement(void);
%rename ("ReadTemp") TMPS001_ReadTemp(void);
%rename ("GetStatus") TMPS001_GetStatus(void);
%rename ("DISABLE") TMPS001_DISABLE;
%rename ("ENABLE") TMPS001_ENABLE;
%rename ("FAIL") TMPS001_FAIL;
%rename ("READY") TMPS001_READY;
%rename ("BUSY") TMPS001_BUSY;

typedef uint32_t status_t;

enum TMPS001_SensorStateType{
  TMPS001_DISABLE,
  TMPS001_ENABLE ,
  TMPS001_FAIL,
  TMPS001_BUSY ,
  TMPS001_READY
};

unsigned int  TMPS001_StartMeasurement(void);
unsigned int  TMPS001_ReadTemp(void) ;
unsigned int  TMPS001_GetStatus(void);
void Enable(void);
void Disable(void);