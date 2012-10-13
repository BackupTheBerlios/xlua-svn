<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="LIBS" description="This is the PWM library for &#xA; single phase PWM generation &#xA; with dead time. It is &#xA; used by PWMSP002 app &#xA; and PWMMP001 app. &#xA; This app does not consume any HW reqources &#xA; so do not use it standalone. " descriptionURL="/doc/html/group___c_c_u8_p_w_m_l_i_b.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.2/app/libs/0">
  <provided xsi:type="ResourceModel:StringParameter" name="Message" URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_srdummy">
    <defaultValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <localValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <globalValue xsi:type="ResourceModel:StringValue" value="This App only provides APIs. &#xA; There are no UI configurations. &#xA; Refer User Documentation for details."/>
    <toolTipHelpDescription>This informs whether timer concatenation is required to achieve PWM waveform with given frequency and resolution.non-editable field</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is used to initialize the APP" URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_init" APIName="PWMLIB_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will reset the CCU8_CCy slice registers to default state." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_deinit" APIName="PWMLIB_Deinit">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will start the Single Phase PWM with Dead Time APP which will in turn start the CCU8_CCy slice." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_start" APIName="PWMLIB_Start">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will stop the Single Phase PWM with Dead Time APP which will in turn stop the CCU8_CCy slice." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_stop" APIName="PWMLIB_Stop">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will modify the duty cycle of the output waveform which will change the pulse width. Duty cycle is given in %" URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_setdutycycle" APIName="PWMLIB_SetDutyCycle">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will modify the PWM frequency.Period value is given in terms of the period register" URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_setperiod" APIName="PWMLIB_SetPwmFreq">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will modify the duty cycle of the output waveform which will change the pulse width.Duty cycle is given in terms of the compare register value" URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_setcompare" APIName="PWMLIB_SetDutyCycle">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will modify the PWM frequency which is given in Hertz" URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_setpwmfreq" APIName="PWMLIB_SetPwmFreq">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will update the timer register value when timer is stopped. This is used to set the starting value of the timer." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_settimerval" APIName="PWMLIB_SetTimerVal">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This will request the update of the period register, compare register values from the respective shadow transfers." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_swrequestshadowtransfer" APIName="PWMLIB_SWRequestShadowTransfer">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the period register value." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_getperiodreg" APIName="PWMLIB_GetPeriodReg">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will reset the trap flag by checking whether trap condition is reset." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_resettrapflag" APIName="PWMLIB_ResetTrapFlag">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the timer values of compare register and period register." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_gettimerregsval" APIName="PWMLIB_GetTimerRegsVal">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function will read the timer status whether timer is running or idle." URI="http://www.infineon.com/1.0.2/app/libs/0/pwmlib_gettimerstatus" APIName="PWMLIB_GetTimerStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <propertyConstants name="uridevice" value="device"/>
  <categoryDescription description="Peripheral related Apps" name="Peripheral Specific Apps">
    <subCategory description="Timer-Capture-Compare" name="Timer-Capture-Compare">
      <subCategory description="CAPCOM8" name="Capture/Compare Unit 8 (CAPCOM8)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Apps related to Capture/Compare" name="Time Processing">
      <subCategory description="PWM waveform generation" name="PWM Generation "/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.2">
    <keywords>CCU8 PWM Library</keywords>
    <keywords>LIBS</keywords>
    <keywords>PWM</keywords>
    <keywords>SHARABLE</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true" systemDefined="true"/>
  </manifestInfo>
  <datagenerate fileName="CCU8PWMLIB.c" templateFileName="CCU8PWMLib.cdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="CCU8PWMLIB.h" fileType="HFILE" templateFileName="CCU8PWMLib.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="LIBS.h" fileType="HFILE" templateFileName="LIBS.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="types.h" fileType="HFILE" templateFileName="types.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="x" fileType="HFILE" templateFileName="Dave/Generated/inc/LIBS" templateEngine="NONE" fileAction="INCLUDE"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>