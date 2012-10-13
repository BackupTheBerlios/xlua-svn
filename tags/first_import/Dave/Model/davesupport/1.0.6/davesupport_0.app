<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="DAVESupport" description="DAVESupport App" mode="SHARABLE" URI="http://www.infineon.com/1.0.6/app/davesupport/0">
  <propertyConstants name="DAVESupport" value="/app/davesupport/0/"/>
  <categoryDescription description="DAVESupport App" name="DAVESupport App"/>
  <manifestInfo version="1.0.6">
    <keywords>DAVESupport</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" mainProvider="true" singleton="true" systemDefined="true"/>
  </manifestInfo>
  <datagenerate fileName="DAVE3.c" templateFileName="DAVE3_C.jet"/>
  <datagenerate fileName="DAVE3.h" fileType="HFILE" templateFileName="DAVE3_H.jet"/>
  <datagenerate fileName="MULTIPLEXER.c" templateFileName="MUX_C.jet"/>
  <datagenerate fileName="MULTIPLEXER.h" fileType="HFILE" templateFileName="MUX_H.jet"/>
  <datagenerate fileName="x" fileType="HFILE" templateFileName="Dave/Generated/inc/DAVESupport" templateEngine="NONE" fileAction="INCLUDE"/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
