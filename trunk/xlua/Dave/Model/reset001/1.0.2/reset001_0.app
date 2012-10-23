<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="RESET001" description="App which provides APIs to &#xA;assert/deassert peripheral&#xA; modules." descriptionURL="/doc/html/group___r_e_s_e_t001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.2/app/reset001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../uart001/1.0.0/uart001_0.app#//@consumed.6"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../sdmmc004/1.0.0/sdmmc004_0.app#//@consumed.14"/>
  <provided xsi:type="ResourceModel:API" description="Function to enable reset of peripheral by software." URI="http://www.infineon.com/1.0.2/app/reset001/0/reset001_assertreset" APIName="RESET001_AssertReset">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="function  to clear the  Reset of the desired peripheral." URI="http://www.infineon.com/1.0.2/app/reset001/0/reset001_deassertreset" APIName="RESET001_DeassertReset">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="Function to get the  reason of last reset." URI="http://www.infineon.com/1.0.2/app/reset001/0/reset001_getresetinfo" APIName="RESET001_GetResetInfo">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="Function to get the reset status of the peripheral" URI="http://www.infineon.com/1.0.2/app/reset001/0/reset001_getstatus" APIName="RESET001_GetStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/rcurst">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.31"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.33"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/rcurst" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/vadcreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.32"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.41"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/vadcreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/dsdreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.46"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.36"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dsdreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ccu4reset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.45"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.37"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ccu4reset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.38"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.35"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ccu4reset2">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.51"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.39"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/2" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ccu4reset3">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.50"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.34"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu4reset/3" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ccu8reset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.34"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.30"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu8reset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ccu8reset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.42"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.38"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ccu8reset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/posifreset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.40"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.47"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/posifreset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/posifreset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.27"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.48"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/posifreset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/usicreset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.47"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.43"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usicreset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/usicreset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.30"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.27"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usicreset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/usicreset2">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.49"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.45"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usicreset/2" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/eru1reset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.52"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.50"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/eru1reset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/mmcreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.35"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.28"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/mmcreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/fcereset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.48"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.52"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/fcereset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ledtsreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.29"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.31"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ledtsreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/pportreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.43"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.29"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/pportreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/usbreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.37"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.42"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/usbreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/mcanreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.36"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.32"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/mcanreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/wdtreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.39"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.44"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/wdtreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/dacreset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.28"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.46"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dacreset" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/dmareset0">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.44"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dmareset/0" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/dmareset1">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.33"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.49"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/dmareset/1" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.2/app/reset001/0/ebureset">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.41"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.51"/>
    <requiredResource uriString="peripheral/scu/0/rstctrl/0/ebureset" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uri_rstctrl" value="peripheral/scu/0/rstctrl/0/"/>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="CPU-System" name="CPU-System">
      <subCategory description="System control Unit (SCU)" name="System control Unit (SCU)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.2">
    <keywords>Reset</keywords>
    <keywords>RESET001</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="RESET001.h" fileType="HFILE" templateFileName="RESET001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="RESET001.c" templateFileName="RESET001c.jet"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
