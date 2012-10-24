<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="RTOS001" description="The CMSIS-RTOS API is a generic&#xA;RTOS interface for Cortex-M &#xA;processor-based devices." descriptionURL="/doc/html/group___r_t_o_s001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.4/app/rtos001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../sdmmc004/1.0.0/sdmmc004_0.app#//@consumed.18"/>
  <consumedReqResources>clkapp/clk001_iroActualFreqCPU</consumedReqResources>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Dummy UI Param to avoid infinite loop" evalFunction="&#x9;&#x9;&#x9;    &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var PRIVCNT_RES = SCM.getResource(&quot;dummypricnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var PRIVCNT_VAL = SCM.getIntValue(PRIVCNT_RES);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var TASKCNT_RES = SCM.getResource(&quot;dummytaskcnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var PRIVCNT_VAL = SCM.getIntValue(TASKCNT_RES);&#xD;&#xA;             &#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var PRIVCNT_RES = SCM.getResource(&quot;dummypricnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var PRIVCNT_VAL = SCM.getIntValue(PRIVCNT_RES);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var TASKCNT_RES = SCM.getResource(&quot;dummytaskcnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var TASKCNT_VAL = SCM.getIntValue(TASKCNT_RES);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if(PRIVCNT_VAL > TASKCNT_VAL)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(PRIVCNT_RES, TASKCNT_VAL);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;                }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwnonrecursive" maxValue="FA" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <localValue xsi:type="ResourceModel:StringValue" value="6"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="6"/>
    <toolTipHelpDescription>This allows user to enter maximum number of threads that will run at the same time.
 It should be within the range of 0 to 250.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Maximum number of concurrent running threads" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytaskcnt&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytaskcnt&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwtaskcnt" downWardmappedList="//@consumed.15" maxValue="FA" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <localValue xsi:type="ResourceModel:StringValue" value="6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <toolTipHelpDescription>Maximum number of concurrent threads required, which is sum of the following:
1. One system thread that uses default stack size
2. Required number of threads with user defined stack size
3. Required number of threads with default stack size</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Number of threads with default stack size" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytaskcnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value0 = SCM.getIntValue(Res0);&#xD;&#xA;                    var Res1 = SCM.getResource(&quot;dummypricnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytaskcnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value0 = SCM.getIntValue(Res0);&#xD;&#xA;                    var Res1 = SCM.getResource(&quot;dummypricnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value1 = SCM.getIntValue(Res1);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,(Value0 - Value1));&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irdefaultcnt" maxValue="FA" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <localValue xsi:type="ResourceModel:StringValue" value="6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="5"/>
    <toolTipHelpDescription>This indicates number of threads with default stack size.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Number of threads with user-provided stack size" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummypricnt&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummypricnt&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwpricnt" downWardmappedList="//@consumed.14" maxValue="FA" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Number of threads that allow user defined stack size. Remaining threads use the default stack size</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Default stack size for threads in bytes" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummystksize&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummystksize&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwstksize" downWardmappedList="//@consumed.13" maxValue="1000" minValue="40">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="C8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="41a"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="41a"/>
    <toolTipHelpDescription>This allows user to enter default stack size for threads in bytes[64-4096].
If user configures stack size as zero while defining the thread, stack size of the thread will be set to default stack size.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Total stack size for threads with user-provided stack size in bytes" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;         &#x9;&#x9;  var Res3 = SCM.getResource(&quot;dummyprivstksize&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var value3 = SCM.getIntValue(currentResource);&#xD;&#xA;                  var Res4 = SCM.getResource(&quot;dummypricnt&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var value4 = SCM.getIntValue(Res4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(Res3,value3);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var Res0 = SCM.getResource(&quot;dummyprivstksize&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                  var Res4 = SCM.getResource(&quot;dummypricnt&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;  var value4 = SCM.getIntValue(Res4);&#xD;&#xA;                  SCM.setIntValue(currentResource,value0);&#xD;&#xA;                  if (value4 == 0)&#xD;&#xA;                  {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#x9;&#xD;&#xA;                  }       &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwprivstksize" downWardmappedList="//@consumed.11" maxValue="1000" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <toolTipHelpDescription>This allows user to enter total stack size required by threads with user-provided stack size in bytes. 
 = (Summation of the stack sizes of threads with user-provided stack size)
 It should be within the range of 0 to 4096</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Total Stack Requirement" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;    function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytaskcnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value0 = SCM.getIntValue(Res0);&#xD;&#xA;                    var Res1 = SCM.getResource(&quot;dummypricnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value1 = SCM.getIntValue(Res1);&#xD;&#xA;                    var Res2 = SCM.getResource(&quot;dummystksize&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res4 = SCM.getResource(&quot;dummyprivstksize&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value4 = SCM.getIntValue(Res4);&#xD;&#xA;                    var Res5 = SCM.getResource(&quot;dummytimerstksize&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value5 = SCM.getIntValue(Res5);&#xD;&#xA;                    var Res6 = SCM.getResource(&quot;chkval&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value6 = SCM.getIntValue(Res6);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytaskcnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value0 = SCM.getIntValue(Res0);&#xD;&#xA;                    var Res1 = SCM.getResource(&quot;dummypricnt&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value1 = SCM.getIntValue(Res1);&#xD;&#xA;                    var Res2 = SCM.getResource(&quot;dummystksize&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value2 = SCM.getIntValue(Res2);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res4 = SCM.getResource(&quot;rtos001_irwprivstksize&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value4 = SCM.getIntValue(Res4);&#xD;&#xA;                    var Res5 = SCM.getResource(&quot;dummytimerstksize&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value5 = SCM.getIntValue(Res5);&#xD;&#xA;                    var Res6 = SCM.getResource(&quot;chkval&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value6 = SCM.getIntValue(Res6);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;if (Value6 == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;                      var Value = ((Value0 - Value1) * Value2 + Value4 + Value5);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource, Value);&#xD;&#xA;                    }else{&#xD;&#xA;                     var Value7 = ((Value0 - Value1) * Value2 + Value4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; SCM.setIntValue(currentResource, Value7);&#xD;&#xA;                    }&#xD;&#xA;&#x9;&#x9;&#x9;    }&#xD;&#xA; &#x9;&#x9;&#x9;   " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irtotalstksize" maxValue="FD000" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="578"/>
    <localValue xsi:type="ResourceModel:StringValue" value="578"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1612"/>
    <toolTipHelpDescription>Total stack requirement = ((number of concurrent threads &#x2013; number of threads with user provided stack size) * default stack size + total stack size of thread with user provided stack)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Stack checking code" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwstkcheck" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows user to include the stack checking code for stack overflow</toolTipHelpDescription>
    <item name="Enable" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwstkcheck/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>This allows to include the stack checking code for stack overflow</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="RTOS Selection" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwrtosselection" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows user to select RTOS</toolTipHelpDescription>
    <item name="RTX" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwrtosselection/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>RTX</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User defined function for Idle demon" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_idledemon">
    <defaultValue xsi:type="ResourceModel:StringValue" value=""/>
    <localValue xsi:type="ResourceModel:StringValue" value=""/>
    <globalValue xsi:type="ResourceModel:StringValue" value=""/>
    <toolTipHelpDescription>1. This allows user to enter 
the name of the function that 
is to be executed when no thread runs.
2.This function should not exit
 and do the idle task.
3.Prototype for this function will be
 void func_name (void);</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:StringParameter" name="User defined function for os error" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_oserror">
    <defaultValue xsi:type="ResourceModel:StringValue" value=""/>
    <localValue xsi:type="ResourceModel:StringValue" value=""/>
    <globalValue xsi:type="ResourceModel:StringValue" value=""/>
    <toolTipHelpDescription>1.This allows user to enter 
the name of the function that 
is to be executed on os error.
2.Prototype for this function will be
 void func_name (uint32_t err_code);
'err_code' holds the runtime error code.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Privileged Mode" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwrunpriv" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows user to run all the threads in privileged mode</toolTipHelpDescription>
    <item name="Enable" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwrunpriv/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>This allows user to run all the threads in privileged mode</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Timer clock value in Hz" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;    function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;clkapp/clk001_iroActualFreqCPU&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;clkapp/clk001_iroActualFreqCPU&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;                var Value1 = Value * 1000000;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource, Value1);&#xD;&#xA;&#x9;&#x9;&#x9;    }&#xD;&#xA; &#x9;&#x9;&#x9;  " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwclock" maxValue="3B9ACA00" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="6000000"/>
    <localValue xsi:type="ResourceModel:StringValue" value="6000000"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="7270e00"/>
    <toolTipHelpDescription>This allows user to enter timer clock value in Hz</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Timer Tick value in us" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwtick" maxValue="F4240" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1000"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1000"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1000"/>
    <toolTipHelpDescription>This allows user to enter the timer tick value in us</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Round Robin Thread Switching" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwrndrobin" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows user to enable round robin thread switching</toolTipHelpDescription>
    <item name="Enable" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwrndrobin/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>This allows user to enable round robin thread switching</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Round-Robin Timeout in Ticks" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwrobintout" maxValue="3E8" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="5"/>
    <localValue xsi:type="ResourceModel:StringValue" value="5"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="5"/>
    <toolTipHelpDescription>This allows user to enter how long a thread will execute before a thread switch</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable user timers" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimers" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows user to enable user timers</toolTipHelpDescription>
    <item name="Enable" evalFunction="&#xD;&#xA;                           function ForwardMapping()&#xD;&#xA;                            {&#xD;&#xA;                                var value = SCM.getIntValue(currentResource);&#xD;&#xA;  &#x9;&#x9;&#x9;&#x9;&#x9;            var Res1 = SCM.getResource(&quot;chkval&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            SCM.setIntValue(Res1,value);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;                            function BackwardMapping()&#xD;&#xA;                            {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9; var Res1 = SCM.getResource(&quot;chkval&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;             var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;             if(value1 == 1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;                SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;             } else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;             SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;            }                                 &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;        }&#xD;&#xA;                           " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimers/0" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This allows user to enable user timers</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Timer Thread Priority" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimerprio" downWardmappedList="//@consumed.7">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="5"/>
    <toolTipHelpDescription>This allows user to select priority for the timer thread.</toolTipHelpDescription>
    <item name="Low" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,1);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 1 || value1 == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimerprio/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Low Priority</toolTipHelpDescription>
    </item>
    <item name="Below Normal" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                       var Res0 = SCM.getResource(&quot;index&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,2);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 2) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimerprio/2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Below Normal Priority</toolTipHelpDescription>
    </item>
    <item name="Normal" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                       var Res0 = SCM.getResource(&quot;index&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if (value0 == 1)&#xD;&#xA;                       {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,3);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;   }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 3) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimerprio/3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Normal Priority</toolTipHelpDescription>
    </item>
    <item name="Above Normal" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,4);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 4) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimerprio/4" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Low Priority</toolTipHelpDescription>
    </item>
    <item name="High" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,5);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 5) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimerprio/5" downWardmappedList="//@consumed.7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>High Priority</toolTipHelpDescription>
    </item>
    <item name="Realtime" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,6);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 6) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwtimerprio/6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Realtime Priority</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="User Timer Thread stack size in bytes" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytimerstksize&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;dummytimerstksize&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwtimerstksize" downWardmappedList="//@consumed.12" maxValue="1000" minValue="40">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="C8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="C8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <toolTipHelpDescription>This allows user to enter stack size for timer thread in bytes [64 - 4096].</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Maximum Number of concurrent callbacks" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwtimercbqsize" maxValue="20" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <localValue xsi:type="ResourceModel:StringValue" value="4"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="4"/>
    <toolTipHelpDescription>This allows user to enter maximum number of concurrent callbacks that can be queued.
 It should be within the range of 1 to 32.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Maximum Number of entries in ISR FIFO Queue" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res0,value0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var Res0 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;var value0 = SCM.getIntValue(Res0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value0);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz" downWardmappedList="//@consumed.8">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <toolTipHelpDescription>This allows user to select maximum number of ISR requests that can be buffered in FIFO Queue.</toolTipHelpDescription>
    <item name="4" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9; var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                     var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,1);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 1 || value1 == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/4" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>4 Entries</toolTipHelpDescription>
    </item>
    <item name="8" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,2);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 2) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/8" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>8 Entries</toolTipHelpDescription>
    </item>
    <item name="12" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,3);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 3) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>12 Entries</toolTipHelpDescription>
    </item>
    <item name="16" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,4);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 4) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/16" downWardmappedList="//@consumed.8" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>16 Entries</toolTipHelpDescription>
    </item>
    <item name="24" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,5);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 5) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/24" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>24 Entries</toolTipHelpDescription>
    </item>
    <item name="32" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,6);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 6) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/32" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>32 Entries</toolTipHelpDescription>
    </item>
    <item name="48" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,7);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 7) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/48" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>48 Entries</toolTipHelpDescription>
    </item>
    <item name="64" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,8);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 8) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/64" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>64 Entries</toolTipHelpDescription>
    </item>
    <item name="96" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                      var Res0 = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value0 == 1)&#xD;&#xA;                      {&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;    SCM.setIntValue(Res0,9);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;  }&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var Res1 = SCM.getResource(&quot;index1&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;   if(value1 == 9) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwfifosz/96" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>96 Entries</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Maximum Number of system mutexes" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwmutxes" maxValue="80" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <toolTipHelpDescription>This allows user to enter maximum number system mutexes that are used to protect the arm standard runtime library</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Memory Pools" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwmempool" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>1. CMSIS RTOS implementation may support fixed size Memory Pools
2. The Memory Pool Management function group is used to define and manage fixed-sized memory pools.</toolTipHelpDescription>
    <item name="Enable" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwmempool/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>This allows user to enable Memory Pools.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Mail Queues" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwmailq" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>1. A mail is a memory block that is send to a thread or interrupt service routine
2.The Mail Queue Management function group allow to control, send, receive, or wait for mail.</toolTipHelpDescription>
    <item name="Enable" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwmailq/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>This allows user to enable Mail Queues.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Message Queues" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwmsgq" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>1. A message can be a integer or pointer value that is send to a thread or interrupt service routine
2. The Message Queue Management function group allow to control, send, receive, or wait for messages.</toolTipHelpDescription>
    <item name="Enable" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwmsgq/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>This allows user to enable Message Queues.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Maximum Signal Flags" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwsignals" maxValue="1F" minValue="8">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="10"/>
    <localValue xsi:type="ResourceModel:StringValue" value="10"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="10"/>
    <toolTipHelpDescription>1. Each thread has assigned signal flags
2. This allows user to specifiy the number of signal flags available per thread.
3. The CMSIS-RTOS API may support a variable number of signal flags.
4. The maximum value is 31 signal flags per thread.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Maximum Semaphore Resources" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwsemaphores" maxValue="FFFF" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="8"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="8"/>
    <toolTipHelpDescription>This allows user to specifiy the maximum index(resorce)
 count for a semaphore.
It should be within the range of 1 to 65535.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Generic Wait Function" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwoswait" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>1. If this feature is enabled generic wait function 'osWait' is available else no generic wait function is available.</toolTipHelpDescription>
    <item name="Enable" evalFunction=" " URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_erwoswait/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This allows user to enable support for generic wait function 'osWait'.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Maximum Number of system mutexes" evalFunction="" URI="http://www.infineon.com/1.0.4/app/rtos001/0/rtos001_irwmutxes" maxValue="80" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="8"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="8"/>
    <toolTipHelpDescription>This allows user to enter maximum number system mutexes that are used to protect the arm standard runtime library</toolTipHelpDescription>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/systick">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.4"/>
    <requiredResource uriString="peripheral/cpu/0/systick" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/fpu">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.7"/>
    <requiredResource uriString="peripheral/cpu/0/fpu" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/memory_protection">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.6"/>
    <requiredResource uriString="peripheral/cpu/0/memory_protection" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/exceptionsystick">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.5"/>
    <requiredResource uriString="peripheral/cpu/0/exception/systick" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/pendsv">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.8"/>
    <requiredResource uriString="peripheral/cpu/0/exception/pendsv" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/svcall">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.3"/>
    <requiredResource uriString="peripheral/cpu/0/exception/svcall" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/clkapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../clk001/1.0.8/clk001_0.app#/"/>
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/index" upWardMappingList="//@provided.17 //@provided.17/@item.4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="5"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="5"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/index1" upWardMappingList="//@provided.20 //@provided.20/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/index2" isSystemDefined="true">
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/chkval" upWardMappingList="//@provided.6 //@provided.16/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/dummyprivstksize" upWardMappingList="//@provided.5 //@provided.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/dummytimerstksize" upWardMappingList="//@provided.6 //@provided.18" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="c8"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/dummystksize" upWardMappingList="//@provided.4 //@provided.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="41a"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="41a"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/dummypricnt" upWardMappingList="//@provided.0 //@provided.2 //@provided.3 //@provided.5 //@provided.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/dummytaskcnt" upWardMappingList="//@provided.0 //@provided.1 //@provided.2 //@provided.6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="6"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.4/app/rtos001/0/clkapp/clk001_iroactualfreqcpu" upWardMappingList="//@provided.12" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:StringValue" value="78"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../clk001/1.0.8/clk001_0.app#//@provided.34"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
  </consumed>
  <propertyConstants name="uridevice" value="device/xmc4500/"/>
  <categoryDescription description="Service Apps" name="Service Apps">
    <subCategory description="RTOS" name="RTOS"/>
  </categoryDescription>
  <manifestInfo version="1.0.4">
    <keywords>RTOS</keywords>
    <keywords>CMSIS</keywords>
    <keywords>OS</keywords>
    <keywords>RTX</keywords>
    <keywords>RTOS001</keywords>
    <keywords>Sharable</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="INC/RTX_CM_lib.h" templateFileName="INC/RTX_CM_lib.h" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="INC/cmsis_os.h" templateFileName="INC/cmsis_osh.jet"/>
  <datagenerate fileName="SRC" fileType="CDIR" templateFileName="SRC" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="SRC/GCC" fileType="CDIR" templateFileName="SRC/GCC" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="LICENSE" fileType="CDIR" templateFileName="LICENSE" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="RTX_Conf_CM.c" templateFileName="RTX_Conf_CMc.jet"/>
  <datagenerate fileName="RTOS001.h" fileType="HFILE" templateFileName="rtos001h.hdt" templateEngine="NONE" fileAction="COPY"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
