<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="DBG001" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/dbg001/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../uart001/1.0.0/uart001_0.app#//@consumed.7"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../sdmmc004/1.0.0/sdmmc004_0.app#//@consumed.15"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../rtc001/1.0.6/rtc001_0.app#//@consumed.3"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../nvic_scu001/1.0.2/nvic_scu001_0.app#//@consumed.1"/>
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../io002/1.0.2/io002_0.app#//@consumed.1"/>
  <propertyConstants name="uridevice" value="device">
    <propertyConstants name="uriDBG001App" value="app/dbg001/"/>
  </propertyConstants>
  <categoryDescription description="Supporting system apps" name="Service Apps">
    <subCategory description="Apps related to debugging" name="Debugging"/>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>Debug</keywords>
    <keywords>PBC</keywords>
    <keywords>XSPY</keywords>
    <keywords>Logging</keywords>
    <keywords>Command from Host</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" singleton="true" systemDefined="true"/>
  </manifestInfo>
  <datagenerate fileName="DBG001.h" fileType="HFILE" templateFileName="DBG001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
</ResourceModel:App>