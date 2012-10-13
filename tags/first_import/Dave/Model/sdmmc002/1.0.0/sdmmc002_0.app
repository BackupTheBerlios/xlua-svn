<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="SDMMC002" description="This app is SDMMC Block Layer App which &#xA;interfaces directly with SDMMC &#xA;low level driver.All the security &#xA;related features will be called directly from this layer. &#xA;It is used in RTOS environment." descriptionURL="/doc/html/group___s_d_m_m_c002_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/sdmmc002/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../fatfs005/1.0.0/fatfs005_0.app#//@consumed.1"/>
  <consumedReqResources>sdmmclld_with_rtos/sdmmc004_use_4_data_lines</consumedReqResources>
  <provided xsi:type="ResourceModel:IntegerParameter" name="RTOS Present " evalFunction="&#xD;&#xA;                    function ForwardMapping()&#xD;&#xA;                    {&#xD;&#xA;                        var Res0 = SCM.getResource(&quot;topindex&quot;);   &#xD;&#xA;                        SCM.setIntValue(Res0,1);&#xD;&#xA;    &#xD;&#xA;                        var Res1 = SCM.getResource(&quot;sdmmclld_with_rtos/sdmmc004_use_4_data_lines&quot;);    &#xD;&#xA;                         SCM.setIntValue(Res1,1);&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping()&#xD;&#xA;                    {&#xD;&#xA;                        var Res1 = SCM.getResource(&quot;topindex&quot;);   &#xD;&#xA;                    }               &#xD;&#xA;                " URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmc002_rtos_present" downWardmappedList="//@consumed.1 //@consumed.2" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This allows a user to enable or disable RTOS</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function checks and returns the initialization status of the card ." URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmc002_initialize" APIName="SDMMC002_Initialize">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function gets the status of the card whether the card is initialized, inserted or write protected." URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmc002_getstatus" APIName="SDMMC002_GetStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function reads the data from the card." URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmc002_readblock" APIName="SDMMC002_ReadBlock">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function writes the data on the card." URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmc002_writeblock" APIName="SDMMC002_WriteBlock">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function performs the various IOCTL operation." URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmc002_ioctl" APIName="SDMMC002_Ioctl">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmclld_with_rtos">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../sdmmc004/1.0.0/sdmmc004_0.app#/"/>
    <requiredResource uriString="app/sdmmc004/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/topindex" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc002/0/sdmmclld_with_rtos/sdmmc004_use_4_data_lines" upWardMappingList="//@provided.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../sdmmc004/1.0.0/sdmmc004_0.app#//@provided.35"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <propertyConstants name="uriDevice" value="device/"/>
  <categoryDescription description="Peripheral related apps" name="Peripheral Specific Apps">
    <subCategory description="Apps related to memory devices" name="Memory">
      <subCategory description="SD/MMC device" name="SD/MMC Interface(SDMMC)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="LLD layer apps" name="Basic Applications">
    <subCategory description="Apps related to external memory devices" name="External Memory Connection"/>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>Sdmmc Block Layer</keywords>
    <keywords>SDMMC002</keywords>
    <keywords>RTOS</keywords>
    <keywords>Block Layer</keywords>
    <keywords>Multi Media Card</keywords>
    <keywords>File system</keywords>
    <keywords>Sharable</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="SDMMC002.c" templateFileName="SDMMC002c.jet"/>
  <datagenerate fileName="SDMMC002.h" fileType="HFILE" templateFileName="SDMMC002h.jet"/>
  <datagenerate fileName="SDMMC002_Conf.c" templateFileName="SDMMC002_Confc.jet"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
