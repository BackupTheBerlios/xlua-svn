<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="SDMMC004" description="This App is SDMMC Low Level Driver which &#xA;provides all the card functionalities&#xA; in RTOS environment." descriptionURL="/doc/html/group___s_d_m_m_c004_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0">
  <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../sdmmc002/1.0.0/sdmmc002_0.app#//@consumed.0"/>
  <consumedReqResources>sdmmc/block_size</consumedReqResources>
  <consumedReqResources>sdmmc/block_count</consumedReqResources>
  <consumedReqResources>sdmmc/argument1</consumedReqResources>
  <consumedReqResources>sdmmc/transfer_mode</consumedReqResources>
  <consumedReqResources>sdmmc/command</consumedReqResources>
  <consumedReqResources>sdmmc/response0</consumedReqResources>
  <consumedReqResources>sdmmc/response2</consumedReqResources>
  <consumedReqResources>sdmmc/response4</consumedReqResources>
  <consumedReqResources>sdmmc/response6</consumedReqResources>
  <consumedReqResources>sdmmc/data_buffer</consumedReqResources>
  <consumedReqResources>sdmmc/present_state</consumedReqResources>
  <consumedReqResources>sdmmc/host_ctrl</consumedReqResources>
  <consumedReqResources>sdmmc/power_ctrl</consumedReqResources>
  <consumedReqResources>sdmmc/block_gap_ctrl</consumedReqResources>
  <consumedReqResources>sdmmc/wakeup_ctrl</consumedReqResources>
  <consumedReqResources>sdmmc/clock_ctrl</consumedReqResources>
  <consumedReqResources>sdmmc/timeout_ctrl</consumedReqResources>
  <consumedReqResources>sdmmc/sw_reset</consumedReqResources>
  <consumedReqResources>sdmmc/int_status_norm</consumedReqResources>
  <consumedReqResources>sdmmc/int_status_err</consumedReqResources>
  <consumedReqResources>sdmmc/en_int_status_norm</consumedReqResources>
  <consumedReqResources>sdmmc/en_int_status_err</consumedReqResources>
  <consumedReqResources>sdmmc/en_int_signal_norm</consumedReqResources>
  <consumedReqResources>sdmmc/en_int_signal_err</consumedReqResources>
  <consumedReqResources>sdmmc/acmd_err_status</consumedReqResources>
  <consumedReqResources>sdmmc/force_event_acmd_err_status</consumedReqResources>
  <consumedReqResources>sdmmc/force_event_err_status</consumedReqResources>
  <consumedReqResources>sdmmc/debug_sel</consumedReqResources>
  <consumedReqResources>sdmmc/spi</consumedReqResources>
  <consumedReqResources>sdmmc/slot_int_status</consumedReqResources>
  <consumedReqResources>clkapp/clk001_erwMMCClkEnable</consumedReqResources>
  <consumedReqResources>nvic_node/signal_in</consumedReqResources>
  <consumedReqResources>nvic_node/ipr_pri</consumedReqResources>
  <consumedReqResources>sdcd_pin/pad</consumedReqResources>
  <consumedReqResources>sdwc_pin/pad</consumedReqResources>
  <consumedReqResources>clk_pin/pad</consumedReqResources>
  <consumedReqResources>cmd_pin/pad</consumedReqResources>
  <consumedReqResources>data0_pin/pad</consumedReqResources>
  <consumedReqResources>data1_pin/pad</consumedReqResources>
  <consumedReqResources>data2_pin/pad</consumedReqResources>
  <consumedReqResources>data3_pin/pad</consumedReqResources>
  <consumedReqResources>led_pin/pad</consumedReqResources>
  <consumedReqResources>bus_power_pin/pad</consumedReqResources>
  <consumedReqResources>reset_pin/pad</consumedReqResources>
  <provided xsi:type="ResourceModel:VirtualSignal" name="SDCD" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_sdcd_vs" requiredSignalResource="sdmmc/mmc_sdcd" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="SDWC" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_sdwc_vs" requiredSignalResource="sdmmc/mmc_sdwc" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Clock Out" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_clk_out_vs" requiredSignalResource="sdmmc/mmc_clk_out" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Clock In" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_clk_in_vs" requiredSignalResource="sdmmc/mmc_clk_in" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Cmd Out" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_cmd_out_vs" requiredSignalResource="sdmmc/mmc_cmd_out" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Cmd In" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_cmd_in_vs" requiredSignalResource="sdmmc/mmc_cmd_in" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out0" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_out0_vs" requiredSignalResource="sdmmc/mmc_data_out0" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out1" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_out1_vs" requiredSignalResource="sdmmc/mmc_data_out1" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out2" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_out2_vs" requiredSignalResource="sdmmc/mmc_data_out2" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out3" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_out3_vs" requiredSignalResource="sdmmc/mmc_data_out3" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line In0" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_in0_vs" requiredSignalResource="sdmmc/mmc_data_in0" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line In1" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_in1_vs" requiredSignalResource="sdmmc/mmc_data_in1" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line In2" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_in2_vs" requiredSignalResource="sdmmc/mmc_data_in2" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line In3" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data_in3_vs" requiredSignalResource="sdmmc/mmc_data_in3" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Led" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_led_vs" requiredSignalResource="sdmmc/mmc_led" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Reset" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_reset_vs" requiredSignalResource="sdmmc/mmc_reset" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Bus Power" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_bus_power_vs" requiredSignalResource="sdmmc/mmc_bus_power" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Interrupt" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/interrupt_vs" requiredSignalResource="sdmmc/interrupt" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="SDCD Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_sdcd_pin_vs" requiredSignalResource="sdcd_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="SDWC Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_sdwc_pin_vs" requiredSignalResource="sdwc_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Clock Out Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_clk_pin_vs" requiredSignalResource="clk_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Cmd Out Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_cmd_pin_vs" requiredSignalResource="cmd_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out0 Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data0_pin_vs" requiredSignalResource="data0_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out1 Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data1_pin_vs" requiredSignalResource="data1_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out2 Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data2_pin_vs" requiredSignalResource="data2_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Line Out3 Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_data3_pin_vs" requiredSignalResource="data3_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Led Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_led_pin_vs" requiredSignalResource="led_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Reset Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_reset_pin_vs" requiredSignalResource="reset_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Bus Power Pad" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_bus_power_pin_vs" requiredSignalResource="bus_power_pin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Nvic Interrupt Node" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/mmc_nvic_vs" requiredSignalResource="nvic_node/signal_in" canExpose="false">
    <defaultValue xsi:type="ResourceModel:Blocked" value="Blocked"/>
    <localValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="Blocked"/>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Card Detection Signal" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_card_detection" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows a user to choose the optional card detection(MMC_SDCD) signal.
This signal should be checked only when it is supported by the kit. </toolTipHelpDescription>
    <item name="SDCD" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_card_detection/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This allows a user to choose the optional card detection(MMC_SDCD) signal.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Card Write Protect Signal" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_write_protect" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows a user to choose the optional Write Protect(MMC_SDWC) signal.
This signal should be checked only when it is supported by the kit.</toolTipHelpDescription>
    <item name="SDWC" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_write_protect/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This allows a user to choose the optional Write Protect(MMC_SDWC) signal.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="LED Signal" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_led" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows a user to choose the option of selecting the LED signal.
This signal should be checked only when it is supported by the kit. </toolTipHelpDescription>
    <item name="LED " evalFunction=" " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_led/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This allows a user to choose the option of selecting the LED signal.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="SDMMC Bus Power Configuration" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_bus_power" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows a user to enable the MMC Bus Power Pin when and as required. By default in the kit, the power to SD card is always active.</toolTipHelpDescription>
    <item name="Enable SDMMC Bus Power " evalFunction=" " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_bus_power/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This allows a user enable the MMC Bus Power Pin. </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="SDMMC Reset Configuration" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_reset" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This allows a user to enable the MMC Reset Pin when and as required.</toolTipHelpDescription>
    <item name="Enable SDMMC Reset " evalFunction=" " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_reset/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This allows a user enable the MMC Reset Pin.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Data Lines Configuration" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,value0);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            SCM.setIntValue(currentResource,value0);                            &#xD;&#xA;                        }&#xD;&#xA;&#xD;&#xA;                " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_use_4_data_lines" downWardmappedList="//@consumed.17">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <upWardMappingList xsi:type="ResourceModel:ProxyResource" href="../../sdmmc002/1.0.0/sdmmc002_0.app#//@consumed.2"/>
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This provides option of selecting 1 or 4-data lines</toolTipHelpDescription>
    <item name="Use 1-Data Line" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            if (value0 == 1){&#xD;&#xA;                              SCM.setIntValue(Res0, 0);&#xD;&#xA;                            }&#xD;&#xA;                            else if (value === 0){&#xD;&#xA;                              SCM.setIntValue(Res0, 1);&#xD;&#xA;                            }&#xD;&#xA;                             &#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            if(value0 == 0) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                             &#xD;&#xA;                          &#xD;&#xA;                        } " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_use_4_data_lines/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This uses 1-Data Lines</toolTipHelpDescription>
    </item>
    <item name="Use 4-Data Lines" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);   &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            if (value0 == 1){&#xD;&#xA;                              SCM.setIntValue(Res0, 1);&#xD;&#xA;                            }&#xD;&#xA;                            else if (value === 0){&#xD;&#xA;                              SCM.setIntValue(Res0, 0);&#xD;&#xA;                            }&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);   &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            if(value0 == 1 || value == -1) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                            &#xD;&#xA;                        } " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_use_4_data_lines/0" downWardmappedList="//@consumed.17" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This uses 4-Data Lines</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Premption Priority" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;              var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;              var BitShift = 2; &#xD;&#xA;              var BitMask = 0x03; &#xD;&#xA;              var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;              Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 &lt;&lt; BitShift);&#xD;&#xA;              SCM.setIntValue(Res,Intvalue);&#xD;&#xA;              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;              var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;              var BitShift = 2; &#xD;&#xA;              var BitMask = 0xFC; &#xD;&#xA;              SCM.setIntValue(currentResource,(Intvalue &amp; BitMask)>>BitShift);&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_irwinterruptpriority" downWardmappedList="//@consumed.52" maxValue="3F" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="28"/>
    <localValue xsi:type="ResourceModel:StringValue" value="28"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="28"/>
    <toolTipHelpDescription>Set Interrupt Preemption Priority</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Sub Priority" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;              var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;              var BitShift = 0; &#xD;&#xA;              var BitMask = 0xFC; &#xD;&#xA;              var Intvalue1 = SCM.getIntValue(currentResource);&#xD;&#xA;              Intvalue = (Intvalue &amp; BitMask) | (Intvalue1 );&#xD;&#xA;              SCM.setIntValue(Res,Intvalue);&#xD;&#xA;              &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;nvic_node/ipr_pri&quot;); &#xD;&#xA;              var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;              var BitShift = 0; &#xD;&#xA;              var BitMask = 0x03; &#xD;&#xA;              SCM.setIntValue(currentResource,(Intvalue &amp; BitMask));&#xD;&#xA;            }&#xD;&#xA;          " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_irwinterruptsubpriority" downWardmappedList="//@consumed.52" maxValue="3" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Interrupt Sub Priority</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="RTOS Present " evalFunction="&#xD;&#xA;                    function ForwardMapping()&#xD;&#xA;                    {&#xD;&#xA;                        var Res0 = SCM.getResource(&quot;chkval&quot;);   &#xD;&#xA;                        SCM.setIntValue(Res0,1);&#xD;&#xA;    &#xD;&#xA;                        var Res1 = SCM.getResource(&quot;clkapp/clk001_erwMMCClkEnable&quot;);    &#xD;&#xA;                        SCM.setIntValue(Res1,1);&#xD;&#xA;&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping()&#xD;&#xA;                    {&#xD;&#xA;                        var Res1 = SCM.getResource(&quot;chkval&quot;);   &#xD;&#xA;                    }               &#xD;&#xA;                " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_rtos_present" downWardmappedList="//@consumed.16 //@consumed.50" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This allows a user to enable or disable RTOS</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Initializes the Host Controller registers." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_hostcontrollerinit" APIName="SDMMC004_HostControllerInit">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function de-initializes the host controller, resets it and clears all global card related data structures." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_hostcontrollerdeinit" APIName="SDMMC004_HostControllerDeInit">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function reads multiple blocks of data from the card. On the basis of block count i.e. if block count is greater than 1, this function will be called from the upper layer." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_cardreadmultipleblocks" APIName="SDMMC004_CardReadMultipleBlocks">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function reads single block of data from the card ." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_cardreadsingleblock" APIName="SDMMC004_CardReadSingleBlock">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function writes multiple blocks onto the card. On the basis of block count i.e. if block count is greater than 1, this function will be called from the upper layer." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_cardwritemultipleblocks" APIName="SDMMC004_CardWriteMultipleBlocks">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function writes single block of data onto the card. If block count is 1 then this function will be called by the SDMMC block layer." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_cardwritesingleblock" APIName="SDMMC004_CardWriteSingleBlock">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function erases blocks of data from the card. It will be called from the Ioctl function from the upper layer." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_eraseblock" APIName="SDMMC004_EraseBlock">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is used to perform lock operation on the card. It will be called from the Ioctl function from the upper layer." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_lockunlockcard" APIName="SDMMC004_LockUnlockCard">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is used to get the current state of the card i.e. whether it is initialized, uninitialized, inserted , removed etc. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getcurrentstate" APIName="SDMMC004_GetCurrentState">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="The function gets the SD Bus status from the card. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getsdstatus" APIName="SDMMC004_GetSdStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function fetches the card type information . Card Type includes High Capacity SD Card, Standard Capacity SD Card or MMC Card. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getcardtype" APIName="SDMMC004_GetCardType">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function fetches the card's CID register information." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getcid" APIName="SDMMC004_GetCid">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function fetches the card's OCR register information. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getocr" APIName="SDMMC004_GetOcr">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function fetches the card's CSD register information. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getcsd" APIName="SDMMC004_GetCsd">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function gets the number of available sectors on the drive. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getsectorcount" APIName="SDMMC004_GetSectorCount">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function gets the sector size of the drive." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getsectorsize" APIName="SDMMC004_GetSectorSize">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function gets the erase block size of the flash memory. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getblocksize" APIName="SDMMC004_GetBlockSize">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function flushes the dirty sector on the card's cache immediately. " URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_flushdiskwritecache" APIName="SDMMC004_FlushDiskWriteCache">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is used to get the lock status information from the card's CSR register.&#xD;&#xA;" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_getlockstatus" APIName="SDMMC004_GetLockStatus">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function is use to de-activate or inactivates the Card." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_ejectcard" APIName="SDMMC004_EjectCard">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function brings the SDMMC peripheral out of reset" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_init" APIName="SDMMC004_Init">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function performs the Host Controller Initialization." URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_start" APIName="SDMMC004_Start">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc004_carddetectionsupport" APIName="SDMMC004_CardDetectionSupport should be called in the infinite while loop &#xA;&#xD;&#xA;                        if the kit supports Card Detection Signal. It performs the card initialization and reading card registers post card initialization.">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../SDMMC/SDMMC_0.dd#//@provided.0"/>
    <requiredResource uriString="peripheral/sdmmc/0/host" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="SDCD" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;sdmmc004_card_detection/0&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    } &#xD;&#xA;                    return false;&#xD;&#xA;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdcd_pin">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Reset" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;sdmmc004_reset/0&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    }&#xD;&#xA;                    return false;       &#xD;&#xA;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/reset_pin">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="SDWC" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;sdmmc004_write_protect/0&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    } &#xD;&#xA;                    return false;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdwc_pin">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Data0" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data0_pin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P4/P4_4.dd#//@provided.2"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Data1" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;index&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    }&#xD;&#xA;                    return false;       &#xD;&#xA;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data1_pin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.2"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Data2" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;index&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    } &#xD;&#xA;                    return false;&#xD;&#xA;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data2_pin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.0"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Data3" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;index&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    } &#xD;&#xA;                    return false;&#xD;&#xA;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data3_pin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P4/P4_4.dd#//@provided.0"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Command" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/cmd_pin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P3/P3_3.dd#//@provided.7"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="LED" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;sdmmc004_led/0&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    } &#xD;&#xA;                    return false;&#xD;&#xA;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/led_pin">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Bus Power" evalFunction="function resourceCondition() {&#xD;&#xA;                    var Msgs = Solver.getResource(&quot;sdmmc004_bus_power/0&quot;);&#xD;&#xA;                    var No = Solver.getIntValue(Msgs);&#xD;&#xA;                    if (No == 1) {&#xD;&#xA;                        return true; &#xD;&#xA;                    } &#xD;&#xA;                    return false;&#xD;&#xA;&#xD;&#xA;                }" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/bus_power_pin">
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="Clock" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/clk_pin">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P3/P3_3.dd#//@provided.9"/>
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P3/P3_3.dd#//@provided.8"/>
    <requiredResource uriString="port/p/*/pad/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/clkapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../clk001/1.0.8/clk001_0.app#/"/>
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/nvic_node">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../CPU/CPU_0.dd#//@provided.9"/>
    <requiredResource uriString="peripheral/cpu/0/nvic/interrupt/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/resetapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../reset001/1.0.2/reset001_0.app#/"/>
    <requiredResource uriString="app/reset001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/debugapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../dbg001/1.0.0/dbg001_0.app#/"/>
    <requiredResource uriString="app/dbg001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/chkval" upWardMappingList="//@provided.38" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/index" upWardMappingList="//@provided.35 //@provided.35/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/rtosapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../rtos001/1.0.4/rtos001_0.app#/"/>
    <requiredResource uriString="app/rtos001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_sdcd" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.1"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/block_size" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.2"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/block_count" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.3"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/argument1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.4"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/transfer_mode" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.5"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.5"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/command" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.6"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/response0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.7"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.7"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/response2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.8"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/response4" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.9"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/response6" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.10"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.10"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/data_buffer" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.11"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/present_state" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.12"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.12"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/host_ctrl" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.13"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/power_ctrl" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.14"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/block_gap_ctrl" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.15"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/wakeup_ctrl" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/clock_ctrl" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.16"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.16"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/timeout_ctrl" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.17"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/sw_reset" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.18"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/int_status_norm" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.19"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/int_status_err" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.20"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.20"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/en_int_status_norm" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.21"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.21"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/en_int_status_err" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.22"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.22"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/en_int_signal_norm" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.23"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.23"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/en_int_signal_err" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.24"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.24"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/acmd_err_status" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.25"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.25"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/force_event_acmd_err_status" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.26"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.26"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/force_event_err_status" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.27"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.27"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/debug_sel" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.28"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.28"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/spi" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.29"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.29"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="00000000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/slot_int_status" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.30"/>
    <downWardmappedList xsi:type="ResourceModel:RegisterParameter" href="../../SDMMC/SDMMC_0.dd#//@provided.30"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0000"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/clkapp/clk001_erwmmcclkenable" upWardMappingList="//@provided.38" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:EnumerationParameter" href="../../clk001/1.0.8/clk001_0.app#//@provided.20"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/nvic_node/signal_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../CPU/CPU_0.dd#//@provided.10"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/nvic_node/ipr_pri" upWardMappingList="//@provided.36 //@provided.37" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="a0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../CPU/CPU_0.dd#//@provided.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="a0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdcd_pin/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdwc_pin/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/clk_pin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P3/P3_3.dd#//@provided.10"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P3/P3_3.dd#//@provided.9"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/cmd_pin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P3/P3_3.dd#//@provided.8"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data0_pin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P4/P4_4.dd#//@provided.3"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data1_pin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.3"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data2_pin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/data3_pin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P4/P4_4.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/led_pin/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/bus_power_pin/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/reset_pin/pad" isSystemDefined="true"/>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_sdwc" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.31"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.31"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_in1" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.32"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.32"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_out0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.33"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.33"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_clk_out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.34"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.34"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_out3" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.35"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.35"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_cmd_out" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.36"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.36"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_out2" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.37"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.37"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_in3" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.38"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.38"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_out1" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.39"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.39"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_bus_power" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.40"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.40"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_cmd_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.41"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.41"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/interrupt" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.42"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.42"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_in2" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.43"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.43"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_reset" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.44"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.44"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_led" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.45"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.45"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_data_in0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.46"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.46"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/sdmmc004/0/sdmmc/mmc_clk_in" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.47"/>
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../SDMMC/SDMMC_0.dd#//@provided.47"/>
  </consumed>
  <categoryDescription description="Peripheral related apps" name="Peripheral Specific Apps">
    <subCategory description="Apps related to memory devices" name="Memory">
      <subCategory description="SD/MMC device" name="SD/MMC Interface(SDMMC)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="LLD layer apps" name="Basic Applications">
    <subCategory description="Apps related to external memory devices" name="External Memory Connection"/>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>SdmmcLld</keywords>
    <keywords>SdmmcLld Rtos</keywords>
    <keywords>Sdmmc</keywords>
    <keywords>SDMMC004</keywords>
    <keywords>Block Layer</keywords>
    <keywords>Multi Media Card</keywords>
    <keywords>RTOS</keywords>
    <keywords>Sharable</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="SDMMC004.c" templateFileName="SDMMC004c.jet"/>
  <datagenerate fileName="SDMMC004_Private.h" fileType="HFILE" templateFileName="SDMMC004_Privateh.jet"/>
  <datagenerate fileName="SDMMC004_Private.c" templateFileName="SDMMC004_Privatec.jet"/>
  <datagenerate fileName="SDMMC004.h" fileType="HFILE" templateFileName="SDMMC004h.jet"/>
  <datagenerate fileName="SDMMC004_Conf.h" fileType="HFILE" templateFileName="SDMMC004_Confh.jet"/>
  <datagenerate fileName="SDMMC004_Conf.c" templateFileName="SDMMC004_Confc.jet"/>
  <connections sourceSignal="app/sdmmc004/0/mmc_sdcd_pin_vs" targetSignal="app/sdmmc004/0/mmc_sdcd_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_sdwc_pin_vs" targetSignal="app/sdmmc004/0/mmc_sdwc_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_clk_out_vs" targetSignal="app/sdmmc004/0/mmc_clk_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_clk_pin_vs" targetSignal="app/sdmmc004/0/mmc_clk_in_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_cmd_out_vs" targetSignal="app/sdmmc004/0/mmc_cmd_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_cmd_pin_vs" targetSignal="app/sdmmc004/0/mmc_cmd_in_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data_out0_vs" targetSignal="app/sdmmc004/0/mmc_data0_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data_out1_vs" targetSignal="app/sdmmc004/0/mmc_data1_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data_out2_vs" targetSignal="app/sdmmc004/0/mmc_data2_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data_out3_vs" targetSignal="app/sdmmc004/0/mmc_data3_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data0_pin_vs" targetSignal="app/sdmmc004/0/mmc_data_in0_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data1_pin_vs" targetSignal="app/sdmmc004/0/mmc_data_in1_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data2_pin_vs" targetSignal="app/sdmmc004/0/mmc_data_in2_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_data3_pin_vs" targetSignal="app/sdmmc004/0/mmc_data_in3_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_led_vs" targetSignal="app/sdmmc004/0/mmc_led_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_reset_vs" targetSignal="app/sdmmc004/0/mmc_reset_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/mmc_bus_power_vs" targetSignal="app/sdmmc004/0/mmc_bus_power_pin_vs" constraintFunction=""/>
  <connections sourceSignal="app/sdmmc004/0/interrupt_vs" targetSignal="app/sdmmc004/0/mmc_nvic_vs" constraintFunction=""/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
