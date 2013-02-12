<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="FATFS005" description="This app is Device Abstarction Layer App.&#xA; It is a thin generic upper layer which then interfaces &#xA;with all other block devices'(USB/SDMMC) block interfaces.&#xA;It is used in RTOS environment." descriptionURL="/doc/html/group___f_a_t_f_s005_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/fatfs005/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../fatfs003/1.0.0/fatfs003_0.app#//@consumed.0"/>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Select SDMMC Block Device" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/fatfs005_devices_available" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows to select the SDMMC block device.</toolTipHelpDescription>
    <item name="SDMMC (Drive# 0)" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/fatfs005_devices_available/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>SDMMC device is always present and is always at drive# 0. </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Select USB Block Device" evalFunction="&#xD;&#xA;           function ForwardMapping()&#xD;&#xA;           {       &#xD;&#xA;                var Res0 = SCM.getResource(&quot;fatfs005_tempusb&quot;);    &#xD;&#xA;                var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                SCM.setIntValue(Res0,value0);&#xD;&#xA;                var Res2 = SCM.getResource(&quot;usbldapp/usbld001_irwrtos_mode&quot;);&#xD;&#xA;           }&#xD;&#xA;           function BackwardMapping()&#xD;&#xA;           {   &#xD;&#xA;              var Res0 = SCM.getResource(&quot;fatfs005_tempusb&quot;);    &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);   &#xD;&#xA;           }&#xD;&#xA;         " URI="http://www.infineon.com/1.0.0/app/fatfs005/0/fatfs005_usbdevice_available" downWardmappedList="//@consumed.0" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>This allows to select the USB block device.</toolTipHelpDescription>
    <item name="USB (Drive# 1)" evalFunction="&#xD;&#xA;            function ForwardMapping(){&#xD;&#xA;              var dep = &quot;DependentApp&quot;;&#xD;&#xA;                    var usbapp = SCM.getResource(&quot;usbblocklayer_nortos&quot;); &#xD;&#xA;                    SCM.setStringValue(usbapp,dep);&#xD;&#xA; &#x9;&#x9;&#x9;  var appname1 = SCM.getResource(&quot;usbldapp&quot;);&#xD;&#xA;              SCM.setStringValue(appname1,dep); &#xD;&#xA;              var res = SCM.getResource(&quot;fatfs005_tempusb&quot;);&#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              SCM.setIntValue(res, value);&#xD;&#xA;    &#x9;&#x9;  var Res2 = SCM.getResource(&quot;usbldapp/usbld001_irwrtos_mode&quot;);&#xD;&#xA;              SCM.setIntValue(Res2,1); &#xD;&#xA;&#x9;&#x9;  }&#xD;&#xA;&#x9;            function BackwardMapping(){&#xD;&#xA;              var res = SCM.getResource(&quot;fatfs005_tempusb&quot;);&#xD;&#xA;              var value = SCM.getIntValue(res);&#xD;&#xA;              SCM.setIntValue(currentResource, value);&#xD;&#xA;}&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/fatfs005/0/fatfs005_usbdevice_available/0" downWardmappedList="//@consumed.3 //@consumed.2 //@consumed.0 //@consumed.6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>USB device is at drive# 1 if it is selected.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="RTOS Present " URI="http://www.infineon.com/1.0.0/app/fatfs005/0/fatfs005_rtos_present" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows a user to enable or disable RTOS</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function checks and returns the initialization status of the card ." URI="http://www.infineon.com/1.0.0/app/fatfs005/0/disk_initialize" APIName="disk_initialize">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function gets the status of the card whether the card is initialized, inserted or write protected." URI="http://www.infineon.com/1.0.0/app/fatfs005/0/disk_status" APIName="disk_status">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function reads the data from the card." URI="http://www.infineon.com/1.0.0/app/fatfs005/0/disk_read" APIName="disk_read">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function writes the data on the card." URI="http://www.infineon.com/1.0.0/app/fatfs005/0/disk_write" APIName="disk_write">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function performs the various IOCTL operation." URI="http://www.infineon.com/1.0.0/app/fatfs005/0/disk_ioctl" APIName="disk_ioctl">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/fatfs005_tempusb" upWardMappingList="//@provided.1 //@provided.1/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/sdmmcblocklayer_rtos">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../sdmmc002/1.0.0/sdmmc002_0.app#/"/>
    <requiredResource uriString="app/sdmmc002/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;                var Res0 = Solver.getResource(&quot;fatfs005_usbdevice_available/0&quot;);&#xD;&#xA;                var usbval = Solver.getIntValue(Res0);&#xD;&#xA;                if (usbval == 1 ) {&#xD;&#xA;                  return true; &#xD;&#xA;                } &#xD;&#xA;                return false;&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/usbldapp" upWardMappingList="//@provided.1/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/usbld001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;              var Res0 = Solver.getResource(&quot;fatfs005_usbdevice_available/0&quot;);&#xD;&#xA;              var usbval = Solver.getIntValue(Res0);&#xD;&#xA;              if (usbval == 1 ) {&#xD;&#xA;                return true; &#xD;&#xA;              } &#xD;&#xA;              return false;&#xD;&#xA;          }" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/usbblocklayer_nortos" upWardMappingList="//@provided.1/@item.0">
    <localValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="DependentApp"/>
    <requiredResource uriString="app/usbbl001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/rtcapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../rtc001/1.0.16/rtc001_0.app#/"/>
    <requiredResource uriString="app/rtc001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/usbldapp/usbld001_erwrtos_mode/0" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs005/0/usbldapp/usbld001_irwrtos_mode" upWardMappingList="//@provided.1/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <propertyConstants name="uriDevice" value="Device/0.1.28"/>
  <categoryDescription description="Middleware layer apps" name="Middleware Apps">
    <subCategory description="Apps related to standard libraries" name="File System"/>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>Device Abstraction Layer</keywords>
    <keywords>FATFS005</keywords>
    <keywords>Abstraction</keywords>
    <keywords>RTOS</keywords>
    <keywords>File system</keywords>
    <keywords>Sharable</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="FATFS005.c" templateFileName="FATFS005c.jet"/>
  <datagenerate fileName="FATFS005.h" fileType="HFILE" templateFileName="FATFS005h.jet"/>
  <datagenerate fileName="FATFS005_Conf.c" templateFileName="FATFS005_Confc.jet"/>
  <datagenerate fileName="integer.h" fileType="HFILE" templateFileName="integer.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="diskio.h" fileType="HFILE" templateFileName="diskio.hdt" templateEngine="NONE" fileAction="COPY"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
