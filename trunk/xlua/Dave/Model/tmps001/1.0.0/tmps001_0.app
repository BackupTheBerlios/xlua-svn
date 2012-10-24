<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="TMPS001" description="App to measure Die Temperature." descriptionURL="/doc/html/group___die___temperature___sensor___t_m_p_s001_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/tmps001/0">
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/tmps001/0/dts">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SCU/SCU_0.dd#//@provided.59"/>
    <requiredResource uriString="peripheral/scu/0/gcu/dts" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uri_gcu" value="peripheral/scu/0/gcu/"/>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="CPU-System" name="CPU-System">
      <subCategory description="System control Unit (SCU)" name="System control Unit (SCU)"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>Temperature Sensor</keywords>
    <keywords>DTS</keywords>
    <keywords>TMPS001</keywords>
    <keywords>sensor</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="TMPS001.h" fileType="HFILE" templateFileName="TMPS001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="TMPS001.c" templateFileName="TMPS001c.cdt" templateEngine="NONE" fileAction="COPY"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
