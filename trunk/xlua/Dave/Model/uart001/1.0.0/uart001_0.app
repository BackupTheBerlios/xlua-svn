<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="UART001" description="Simple UART App &#xA;(non RTOS mode)." descriptionURL="/doc/html/group___u_s_i_c___u_a_r_t___u_a_r_t001_app.html" URI="http://www.infineon.com/1.0.0/app/uart001/0">
  <consumedReqResources>channel/ccr/pm</consumedReqResources>
  <consumedReqResources>channel/pcr/stpb</consumedReqResources>
  <consumedReqResources>channel/ccr/brgien</consumedReqResources>
  <consumedReqResources>channel/rbctr/limit</consumedReqResources>
  <consumedReqResources>channel/rbctr_size</consumedReqResources>
  <consumedReqResources>channel/tbctr/limit</consumedReqResources>
  <consumedReqResources>channel/tbctr_size</consumedReqResources>
  <consumedReqResources>channel/sctr/wle</consumedReqResources>
  <consumedReqResources>channel/brg/pdiv</consumedReqResources>
  <consumedReqResources>channel/fdr/step</consumedReqResources>
  <consumedReqResources>channel/standard_transmit_buffer_int</consumedReqResources>
  <consumedReqResources>channel/transmit_buffer_error_int</consumedReqResources>
  <consumedReqResources>channel/standard_receive_buffer_int</consumedReqResources>
  <consumedReqResources>channel/receive_buffer_error_int</consumedReqResources>
  <consumedReqResources>channel/transmit_shift_int</consumedReqResources>
  <consumedReqResources>channel/transmit_buffer_int</consumedReqResources>
  <consumedReqResources>channel/receive_start_int</consumedReqResources>
  <consumedReqResources>channel/standard_receive_int</consumedReqResources>
  <consumedReqResources>channel/alternate_receive_int</consumedReqResources>
  <consumedReqResources>channel/data_lost_int</consumedReqResources>
  <consumedReqResources>channel/baud_rate_int</consumedReqResources>
  <consumedReqResources>channel/protocol_specific_int</consumedReqResources>
  <consumedReqResources>channel/alternate_receive_buffer_int</consumedReqResources>
  <consumedReqResources>channel/dx0ins</consumedReqResources>
  <consumedReqResources>channel/dout0</consumedReqResources>
  <consumedReqResources>clockapp/clk001_iroActualFreqPB</consumedReqResources>
  <consumedReqResources>uart_txpin/pdr_pd</consumedReqResources>
  <consumedReqResources>uart_rxpin/iocr_pcr</consumedReqResources>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Transmit Shift Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_tsi_vs" requiredSignalResource="channel/transmit_shift_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Transmit Buffer Interrupt " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_tbi_vs" requiredSignalResource="channel/transmit_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Receive Start Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_rsi_vs" requiredSignalResource="channel/receive_start_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Standard Receive Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_sri_vs" requiredSignalResource="channel/standard_receive_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Alternative Receive Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_altri_vs" requiredSignalResource="channel/alternate_receive_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Data Lost Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_dli_vs" requiredSignalResource="channel/data_lost_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Protocol Specific Interrupt " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_prtsi_vs" requiredSignalResource="channel/protocol_specific_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Transmit Buffer Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_stbi_vs" requiredSignalResource="channel/standard_transmit_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Transmit Error Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_tberi_vs" requiredSignalResource="channel/transmit_buffer_error_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Receive Buffer Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_srbi_vs" requiredSignalResource="channel/standard_receive_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Receive Error Interrupt" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_rberi_vs" requiredSignalResource="channel/receive_buffer_error_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="FIFO Alternative Receive Buffer Interrupt " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_altrbi_vs" requiredSignalResource="channel/alternate_receive_buffer_int">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="UART Rx Pin" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_rx_vs" requiredSignalResource="channel/dx0ins" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="UART Tx Pin" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_tx_vs" requiredSignalResource="channel/dout0" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Receive Pin" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_rxpin_vs" requiredSignalResource="uart_rxpin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:VirtualSignal" name="Transmit Pin" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_txpin_vs" requiredSignalResource="uart_txpin/pad" canExpose="false">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:Parameter" name="Operation Mode" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_mode">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
    <toolTipHelpDescription>This is to select the Operation Mode</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Operation Mode" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);    &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwmode" downWardmappedList="//@consumed.1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Operation Mode for UART</toolTipHelpDescription>
    <item name="Full Duplex" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              }&#xD;&#xA;              var Res1 = SCM.getResource(&quot;dummy_ColDetectIntEn&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,0);  &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwmode/0" downWardmappedList="//@consumed.1 //@consumed.9" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Full duplex mode selected.
 Independent pins are allocated for each transfer direction</toolTipHelpDescription>
    </item>
    <item name="Half Duplex" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwmode/1" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Half Duplex mode selected.
 Single Pin for both transmission and reception.</toolTipHelpDescription>
    </item>
    <item name="Loop Back Mode" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;              var Res1 = SCM.getResource(&quot;dummy_ColDetectIntEn&quot;); &#xD;&#xA;              SCM.setIntValue(Res1,0);  &#xD;&#xA;&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;uart001_OprModeTemp&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 2 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwmode/2" downWardmappedList="//@consumed.1 //@consumed.9" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Loop Back mode selected.
 No Pins are allocated.
 Transmit pin of allocated USIC channel is connected to Receive pin of same channel internally</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Parity Selection" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/ccr/pm&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/ccr/pm&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwparity" downWardmappedList="//@consumed.27">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select the parity value</toolTipHelpDescription>
    <item name="No Parity" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/ccr/pm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/ccr/pm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwparity/0" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>The Parity generation is disabled</toolTipHelpDescription>
    </item>
    <item name="Odd Parity" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/ccr/pm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,3);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/ccr/pm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 3 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwparity/2" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Odd parity is selected
(parity bit = 0 on odd number of 1s in data, parity bit = 1 on even number of 1s in data).</toolTipHelpDescription>
    </item>
    <item name="Even Parity" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/ccr/pm&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,2);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/ccr/pm&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value == 2 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwparity/3" downWardmappedList="//@consumed.27" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Even Parity is selected.
(parity bit = 1 on odd number of 1s in data, parity bit = 0 on even number of 1s in data).</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Select the stop bit" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/pcr/stpb&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/pcr/stpb&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwstopbit" downWardmappedList="//@consumed.28">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select the number of stop bits required in ASC frame</toolTipHelpDescription>
    <item name="One stop bit" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/pcr/stpb&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,0);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/pcr/stpb&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 0 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwstopbit/0" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Selects one stop bit</toolTipHelpDescription>
    </item>
    <item name="Two stop bits" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            { &#xD;&#xA;              var value = SCM.getIntValue(currentResource);&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/pcr/stpb&quot;);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;                SCM.setIntValue(Res,1);       &#xD;&#xA;              } else if (value === 0) {&#xD;&#xA;                SCM.setIntValue(Res,0);&#xD;&#xA;              } &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res = SCM.getResource(&quot;channel/pcr/stpb&quot;); &#xD;&#xA;              var value = SCM.getIntValue(Res); &#xD;&#xA;              if (value === 1 ) { &#xD;&#xA;                SCM.setIntValue(currentResource,1);&#xD;&#xA;              } else if (value == -1 ){&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;              else {&#xD;&#xA;                SCM.setIntValue(currentResource,0);&#xD;&#xA;              }&#xD;&#xA;            }       &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwstopbit/1" downWardmappedList="//@consumed.28" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Selects two stop bits</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Select desired Baud Rate(baud)" evalFunction="&#xD;&#xA;    function ForwardMapping()&#xD;&#xA;      {         &#xD;&#xA;        var Res1 = SCM.getResource(&quot;clockapp/clk001_iroActualFreqPB&quot;);&#xD;&#xA;        var clock = SCM.getIntValue(Res1);&#xD;&#xA;        var pdiv = 0;&#xD;&#xA;        var Baud = SCM.getIntValue(currentResource);                          &#xD;&#xA;        var ratio= ((clock * 1000000)/(17*1024*Baud))*500;&#xD;&#xA;        if( ratio &lt;= 1)&#xD;&#xA;        {&#xD;&#xA;          pdiv = 0;&#xD;&#xA;        }&#xD;&#xA;        else {&#xD;&#xA;        pdiv =  (Math.floor(ratio) -1);&#xD;&#xA;        if( pdiv > 1023)&#xD;&#xA;        {&#xD;&#xA;           pdiv = 1023;&#xD;&#xA;        }&#xD;&#xA;        }&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/brg/pdiv&quot;);                     &#xD;&#xA;        SCM.setIntValue(Res,pdiv);&#xD;&#xA;        var step= Math.floor((Baud * 17 * 1024 * (1+ pdiv))/(clock * 1000000));&#xD;&#xA;        if(step > 1023)&#xD;&#xA;        {&#xD;&#xA;          step = 1023;&#xD;&#xA;        }&#xD;&#xA;        var Resstep = SCM.getResource(&quot;channel/fdr/step&quot;); &#xD;&#xA;        SCM.setIntValue(Resstep,step);&#xD;&#xA;        var tempRes = SCM.getResource(&quot;uart001_DesBaudrateTemp&quot;);&#xD;&#xA;        SCM.setIntValue(tempRes,Baud);&#xD;&#xA;&#xD;&#xA;      }&#xD;&#xA;      function BackwardMapping()&#xD;&#xA;      {&#xD;&#xA;        var tempRes = SCM.getResource(&quot;uart001_DesBaudrateTemp&quot;);&#xD;&#xA;        var value = SCM.getIntValue(tempRes);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;    }&#xD;&#xA;    " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwbaudrate" downWardmappedList="//@consumed.35 //@consumed.36 //@consumed.0" maxValue="1E8480" minValue="32">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="4B00"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1c200"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1c200"/>
    <toolTipHelpDescription>Select desired Baud Rate</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Data bits" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var value = SCM.getIntValue(currentResource);&#xD;&#xA;          value = value - 1;&#xD;&#xA;          var Res = SCM.getResource(&quot;channel/sctr/wle&quot;);&#xD;&#xA;          SCM.setIntValue(Res,value);       &#xD;&#xA;&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;    var Res1 = SCM.getResource(&quot;channel/sctr/wle&quot;);&#xD;&#xA;          var value = SCM.getIntValue(Res1);&#xD;&#xA;          value = value + 1;&#xD;&#xA;          SCM.setIntValue(currentResource,value);&#xD;&#xA;  &#xD;&#xA;        }&#xD;&#xA;        " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwdatabits" downWardmappedList="//@consumed.34" maxValue="8" minValue="5">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="8"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="8"/>
    <toolTipHelpDescription>This defines the data word length.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Peripheral Clock" evalFunction="&#xD;&#xA;            function ForwardMapping(){&#xD;&#xA;              &#xD;&#xA;              var Res0 = SCM.getResource(&quot;clockapp/clk001_iroActualFreqPB&quot;);   &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);                   &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping(){                       &#xD;&#xA;              var Res1 = SCM.getResource(&quot;clockapp/clk001_iroActualFreqPB&quot;); &#xD;&#xA;              var clock = SCM.getIntValue(Res1);     &#xD;&#xA;              SCM.setIntValue(currentResource, clock);&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_iroclock" maxValue="1C200" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <toolTipHelpDescription>Selected Resolution (non-editable)</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Real Baud rate (baud)" evalFunction="&#xD;&#xA;            function ForwardMapping(){&#xD;&#xA;              var Res1 = SCM.getResource(&quot;clockapp/clk001_iroActualFreqPB&quot;);&#xD;&#xA;              var value1 = SCM.getIntValue(Res1); &#xD;&#xA;              var Res0 = SCM.getResource(&quot;uart001_DesBaudrateTemp&quot;);   &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);     &#xD;&#xA;   &#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            function BackwardMapping(){&#xD;&#xA;            var Res1 = SCM.getResource(&quot;clockapp/clk001_iroActualFreqPB&quot;);                          &#xD;&#xA;            var clock = SCM.getIntValue(Res1);&#xD;&#xA;            var pdiv = 0;&#xD;&#xA;            var Res2 = SCM.getResource(&quot;uart001_DesBaudrateTemp&quot;);   &#xD;&#xA;            var Baud = SCM.getIntValue(Res2); &#xD;&#xA;            var ratio= ((clock * 1000000)/(17*1024*Baud))*500;&#xD;&#xA;            if( ratio &lt;= 1)&#xD;&#xA;            {&#xD;&#xA;              pdiv = 0;&#xD;&#xA;            }&#xD;&#xA;            else {&#xD;&#xA;            pdiv =  (Math.floor(ratio) -1);&#xD;&#xA;            if( pdiv > 1023)&#xD;&#xA;            {&#xD;&#xA;               pdiv = 1023;&#xD;&#xA;            }&#xD;&#xA;            }&#xD;&#xA;            var step= Math.floor((Baud * 17 * 1024 * (1+ pdiv))/(clock * 1000000));&#xD;&#xA;            if(step > 1023)&#xD;&#xA;            {&#xD;&#xA;              step = 1023;&#xD;&#xA;            }&#xD;&#xA;&#xD;&#xA;            var calBaud = (clock*1000000*step)/(17*1024*(1+pdiv));&#xD;&#xA;            SCM.setIntValue(currentResource, calBaud);&#xD;&#xA;            }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irocalbaudrate" maxValue="1E8480" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1c168"/>
    <toolTipHelpDescription>Actual Baudrate</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Transmit FIFO size (bytes)" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }&#xD;&#xA;      " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifosize" downWardmappedList="//@consumed.33">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This is to select the Transmit FIFO size.
This defines the number of FIFO entries assigned to the transmit buffer</toolTipHelpDescription>
    <item name="2" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifosize/0" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This is to select the Transmit FIFO size </toolTipHelpDescription>
    </item>
    <item name="4" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,2);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifosize/1" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Transmit FIFO size </toolTipHelpDescription>
    </item>
    <item name="8" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,3);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 3 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifosize/2" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Transmit FIFO size </toolTipHelpDescription>
    </item>
    <item name="16" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,4);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifosize/3" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Transmit FIFO size </toolTipHelpDescription>
    </item>
    <item name="32" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,5);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 5 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifosize/4" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Transmit FIFO size </toolTipHelpDescription>
    </item>
    <item name="64" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,6);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/tbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 6 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifosize/5" downWardmappedList="//@consumed.33" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Transmit FIFO size </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Receive FIFO size (bytes)" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var value = SCM.getIntValue(currentResource);&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;        SCM.setIntValue(Res,value);        &#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;        var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;        var value = SCM.getIntValue(Res);&#xD;&#xA;        SCM.setIntValue(currentResource,value);&#xD;&#xA;      }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifosize" downWardmappedList="//@consumed.31">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>This is to select the Receive FIFO size </toolTipHelpDescription>
    <item name="2" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,1);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 1 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifosize/0" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>This is to select the Receive FIFO size </toolTipHelpDescription>
    </item>
    <item name="4" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,2);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 2 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifosize/1" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Receive FIFO size </toolTipHelpDescription>
    </item>
    <item name="8" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,3);       &#xD;&#xA;                } else if (value === 1) {&#xD;&#xA;                  SCM.setIntValue(Res,0);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 3 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifosize/2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>This is to select the Receive FIFO size </toolTipHelpDescription>
    </item>
    <item name="16" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,4);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 4 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifosize/3" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Receive FIFO size </toolTipHelpDescription>
    </item>
    <item name="32" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,5);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 5 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifosize/4" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Receive FIFO size </toolTipHelpDescription>
    </item>
    <item name="64" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var value = SCM.getIntValue(currentResource);&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;);&#xD;&#xA;                if (value == 1 ) {&#xD;&#xA;                  SCM.setIntValue(Res,6);       &#xD;&#xA;                } else if (value === 0) {&#xD;&#xA;                  SCM.setIntValue(Res,1);&#xD;&#xA;                }             &#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {&#xD;&#xA;                var Res = SCM.getResource(&quot;channel/rbctr_size&quot;); &#xD;&#xA;                var value = SCM.getIntValue(Res); &#xD;&#xA;                if (value === 6 ) { &#xD;&#xA;                  SCM.setIntValue(currentResource,1);&#xD;&#xA;                } else if (value == -1 ){&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;                else {&#xD;&#xA;                  SCM.setIntValue(currentResource,0);&#xD;&#xA;                }&#xD;&#xA;              }&#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifosize/5" downWardmappedList="//@consumed.31" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>This is to select the Receive FIFO size </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Transmit FIFO trigger limit" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;channel/tbctr/limit&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;channel/tbctr/limit&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwtxfifotrigger" downWardmappedList="//@consumed.32" maxValue="40" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Selects Transmit FIFO trigger limit that is used for FIFO Standard transmit buffer event detection.
The FIFO Standard transmit buffer event occurs if the filling level of FIFO equals the limit value and 
gets lowered due to transmission of data word.
Note: Trigger limit should be less than FIFO size. Otherwise there can be an unpredictable behavior.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Receive FIFO trigger limit" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;channel/rbctr/limit&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(currentResource); &#xD;&#xA;          SCM.setIntValue(Res,Intvalue);&#xD;&#xA;        }&#xD;&#xA;        function BackwardMapping()&#xD;&#xA;        {&#xD;&#xA;          var Res = SCM.getResource(&quot;channel/rbctr/limit&quot;); &#xD;&#xA;          var Intvalue = SCM.getIntValue(Res); &#xD;&#xA;          SCM.setIntValue(currentResource,Intvalue);&#xD;&#xA;        }       " URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_irwrxfifotrigger" downWardmappedList="//@consumed.30" maxValue="40" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>Select receive FIFO trigger limit that is used for FIFO Standard receive buffer event detection.
The FIFO Standard receive buffer event occurs if the filling level of FIFO equals the limit value and 
gets bigger due to reception of data word.
Note: Trigger limit should be less than FIFO size. Otherwise there can be an unpredictable behavior.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable synchronization break interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_SyncBreakIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_SyncBreakIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwsyncbreakint" downWardmappedList="//@consumed.8" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable synchronization break interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_SyncBreakIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_SyncBreakIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwsyncbreakint/0" downWardmappedList="//@consumed.8" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>enables the generation of a protocol
 interrupt if a synchronization
 break is detected.
Note: User shall connect also the protocol 
specific interrupt signal otherwise there
 can be an unpredictable behavior.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable collision detection interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_ColDetectIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_ColDetectIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwcoldetectint" downWardmappedList="//@consumed.9" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable collision detection interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_ColDetectIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;uart001_OprModeTemp&quot;);  &#xD;&#xA;              var value1 = SCM.getIntValue(Res1); &#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_ColDetectIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwcoldetectint/0" downWardmappedList="//@consumed.9" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>enables the generation of a protocol 
 interrupt if a collision is detected.
Note: User shall connect also the protocol 
specific interrupt signal otherwise there
 can be an unpredictable behavior.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable receiver noise detection interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_RecvNoiseDetectIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_RecvNoiseDetectIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwrecvnoisedetectint" downWardmappedList="//@consumed.10" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable receiver noise detection interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_RecvNoiseDetectIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_RecvNoiseDetectIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwrecvnoisedetectint/0" downWardmappedList="//@consumed.10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>enables the generation of a protocol 
 interrupt if receiver noise is detected.
Note: User shall connect also the protocol 
specific interrupt signal otherwise there
 can be an unpredictable behavior.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable format error interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FmtErrorIntEn&quot;);  &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FmtErrorIntEn&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwfmterrorint" downWardmappedList="//@consumed.11" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable format error interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FmtErrorIntEn&quot;);  &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FmtErrorIntEn&quot;);  &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwfmterrorint/0" downWardmappedList="//@consumed.11" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>enables the generation of a protocol 
 interrupt if format error is detected.
Note: User shall connect also the protocol 
specific interrupt signal otherwise there
 can be an unpredictable behavior.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Enable frame finished interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FrameFinishIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FrameFinishIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwframefinishint" downWardmappedList="//@consumed.12" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <item name="Enable frame finished interrupt" evalFunction="&#xD;&#xA;            function ForwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FrameFinishIntEn&quot;); &#xD;&#xA;              var value = SCM.getIntValue(currentResource); &#xD;&#xA;              SCM.setIntValue(Res0,value);&#xD;&#xA;            }&#xD;&#xA;            function BackwardMapping()&#xD;&#xA;            {&#xD;&#xA;              var Res0 = SCM.getResource(&quot;dummy_FrameFinishIntEn&quot;); &#xD;&#xA;              var value0 = SCM.getIntValue(Res0);&#xD;&#xA;              SCM.setIntValue(currentResource,value0);&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwframefinishint/0" downWardmappedList="//@consumed.12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>enables the generation of a protocol 
 interrupt if receiver or the transmitter 
reaches the end of a frame.
Note: User shall connect also the protocol 
specific interrupt signal otherwise there
 can be an unpredictable behavior.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Input characteristics" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar" downWardmappedList="//@consumed.14">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Input Characteristic for Rx Pin</toolTipHelpDescription>
    <item name="Tristate" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/0" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>No input pull device selected</toolTipHelpDescription>
    </item>
    <item name="Pull down device" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/1" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-down device selected</toolTipHelpDescription>
    </item>
    <item name="Pull up device" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 2 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/2" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
    <item name="Continuous polling mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 3 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/3" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
    <item name="InvertedTristate" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,4);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 4 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/4" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>No input pull device selected</toolTipHelpDescription>
    </item>
    <item name="Inverted Pull down device" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,5);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 5 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/5" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-down device selected</toolTipHelpDescription>
    </item>
    <item name="Inverted Pull up device" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,6);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 6 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/6" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
    <item name="Inverted Continuous polling mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,7);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_inputchardummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 7 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwinputchar/7" downWardmappedList="//@consumed.14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Input pull-up device selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Pad Class" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwtxpadclass" downWardmappedList="//@consumed.13">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <toolTipHelpDescription>Select Pad class for Tx Pin</toolTipHelpDescription>
    <item name="A1 (Speed Grade 6 MHz)" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwtxpadclass/0" downWardmappedList="//@consumed.43 //@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad Class A1</toolTipHelpDescription>
    </item>
    <item name="A1+ (Speed Grade 25 MHz)" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwtxpadclass/1" downWardmappedList="//@consumed.43 //@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A1+</toolTipHelpDescription>
    </item>
    <item name="A2 (Speed Grade 40/80 MHz)" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res1,4);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 2) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwtxpadclass/2" downWardmappedList="//@consumed.43 //@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Pad class A2</toolTipHelpDescription>
    </item>
    <item name="Dont Care" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart001_txpadclassdummy&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 3) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwtxpadclass/3" downWardmappedList="//@consumed.13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>User is not concerned about Pad Driver strength</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Tx Driver Mode" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);  &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,value);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,value);&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwpaddrivermodetx" downWardmappedList="//@consumed.43">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>Select Pad driver mode for Tx Pin</toolTipHelpDescription>
    <item name="Medium driver" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,4);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value1 >= 0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 4 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value == -1) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setValue(currentResource,reserved);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwpaddrivermodetx/0" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Medium driver is selected</toolTipHelpDescription>
    </item>
    <item name="Weak driver" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,7);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res); &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value1 >= 0)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 7 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setValue(currentResource,reserved);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwpaddrivermodetx/1" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Weak driver is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Soft Edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;);&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,2);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value1 >= 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value === 2 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  } else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setValue(currentResource,reserved);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwpaddrivermodetx/2" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Strong driver Soft Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Slow Edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,1);&#x9;&#x9;&#x9;&#x9;//0x02&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value === 1 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  } else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setValue(currentResource,reserved);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwpaddrivermodetx/3" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Slow Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Sharp Edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#x9;&#x9;&#x9;&#x9;//0x00&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if(value1 >= 2)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value === 0 ) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  } else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setValue(currentResource,reserved);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwpaddrivermodetx/4" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>Strong driver Sharp Edge is selected</toolTipHelpDescription>
    </item>
    <item name="Strong Driver,Medium Edge" evalFunction="&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function ForwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(currentResource);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;if (value == 1 ) {&#xD;&#xA; &#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,3);&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;} else if (value === 0) {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setIntValue(Res,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;function BackwardMapping()&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var Res = SCM.getResource(&quot;uart_txpin/pdr_pd&quot;); &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value = SCM.getIntValue(Res);&#xD;&#xA;                            var Res1 = SCM.getResource(&quot;uart001_txpadclassdummy&quot;);&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 2)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  if (value === 3) { &#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,1);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  } else {&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  SCM.setIntValue(currentResource,0);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;  }&#xD;&#xA;                            }else{&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;var reserved = SCM.getReserverd();&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;SCM.setValue(currentResource,reserved);&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#x9;&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;}&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;&#x9;&#x9;" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_erwpaddrivermodetx/5" downWardmappedList="//@consumed.43" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:Reserved" value="Reserved"/>
      <toolTipHelpDescription>Strong driver Medium Edge is selected</toolTipHelpDescription>
    </item>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_desbaudratetemp" upWardMappingList="//@provided.20 //@provided.23" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1c200"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1c200"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_oprmodetemp" upWardMappingList="//@provided.17 //@provided.17/@item.0 //@provided.17/@item.1 //@provided.17/@item.2 //@provided.29/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;&#x9;&#x9;  var value = Solver.getSoftwareId();&#xD;&#xA;&#x9;&#x9;&#x9;  if (value == &quot;45.0.2&quot;) {&#xD;&#xA;&#x9;&#x9;var constr = &quot;reserved([peripheral,usic,UU,channel,_],chres1) \n uri_element_range(UU,[0,1]) \n register_value(chres1,rbctr_size,-1) \n register_value(chres1,tbctr_size,-1)&quot;;&#xD;&#xA;&#x9;&#x9;Solver.setConstraintString(constr);&#xD;&#xA;&#x9;&#x9;} else {&#xD;&#xA;&#x9;&#x9;var constr = &quot;reserved([peripheral,usic,UU,channel,_],chres1) \n uri_element_range(UU,[0,1,2]) \n register_value(chres1,rbctr_size,-1) \n register_value(chres1,tbctr_size,-1)&quot;;&#xD;&#xA;&#x9;&#x9;Solver.setConstraintString(constr);&#xD;&#xA;&#x9;&#x9;} &#xD;&#xA;&#x9;&#x9;&#x9;  return true;&#xD;&#xA;&#x9;&#x9;&#x9;}" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel" constraintFunction="reserved([peripheral,usic,_,channel,_],chres1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;register_value(chres1,rbctr_size,-1)&#xD;&#xA;&#x9;&#x9;&#x9;&#x9;register_value(chres1,tbctr_size,-1)">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../USIC0/USIC0_0.dd#//@provided.0"/>
    <requiredResource uriString="alias_channel"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/clockapp">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../clk001/1.0.8/clk001_0.app#/"/>
    <requiredResource uriString="app/clk001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="UART Receive" evalFunction="function resourceCondition() {&#xD;&#xA;              var Res = Solver.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 0) {&#xD;&#xA;                return true; &#xD;&#xA;              } &#xD;&#xA;              return false;&#xD;&#xA;            }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart_rxpin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.4"/>
    <requiredResource uriString="port/p/1/pad/4" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" name="UART Transmit" evalFunction="function resourceCondition() {&#xD;&#xA;&#x9;              var Res = Solver.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;&#x9;              var value = Solver.getIntValue(Res);&#xD;&#xA;&#x9;              if (value &lt;= 1) {&#xD;&#xA;&#x9;                return true; &#xD;&#xA;&#x9;              } &#xD;&#xA;&#x9;              return false;&#xD;&#xA;&#x9;        }" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart_txpin">
    <downWardmappedList xsi:type="ResourceModel:ResourceGroup" href="../../P1/P1_1.dd#//@provided.7"/>
    <requiredResource uriString="port/p/1/pad/5" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/resetapp1">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../reset001/1.0.2/reset001_0.app#/"/>
    <requiredResource uriString="app/reset001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/dbgapp1">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../dbg001/1.0.0/dbg001_0.app#/"/>
    <requiredResource uriString="app/dbg001/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/dummy_syncbreakinten" upWardMappingList="//@provided.28 //@provided.28/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/dummy_coldetectinten" upWardMappingList="//@provided.17/@item.0 //@provided.17/@item.2 //@provided.29 //@provided.29/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/dummy_recvnoisedetectinten" upWardMappingList="//@provided.30 //@provided.30/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/dummy_fmterrorinten" upWardMappingList="//@provided.31 //@provided.31/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/dummy_framefinishinten" upWardMappingList="//@provided.32 //@provided.32/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_txpadclassdummy" upWardMappingList="//@provided.34 //@provided.34/@item.0 //@provided.34/@item.1 //@provided.34/@item.2 //@provided.34/@item.3 //@provided.35/@item.0 //@provided.35/@item.1 //@provided.35/@item.2 //@provided.35/@item.3 //@provided.35/@item.4 //@provided.35/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="3"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart001_inputchardummy" upWardMappingList="//@provided.33 //@provided.33/@item.0 //@provided.33/@item.1 //@provided.33/@item.2 //@provided.33/@item.3 //@provided.33/@item.4 //@provided.33/@item.5 //@provided.33/@item.6 //@provided.33/@item.7" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/dout0" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/receive_start_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.2"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/receive_buffer_error_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.3"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart_txpin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.8"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/standard_receive_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.4"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/transmit_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.5"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/transmit_shift_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.6"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/data_lost_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.7"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/dx0ins" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.8"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/standard_transmit_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.9"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/transmit_buffer_error_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.10"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart_rxpin/pad" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../P1/P1_1.dd#//@provided.5"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/ccr/pm" upWardMappingList="//@provided.18 //@provided.18/@item.0 //@provided.18/@item.1 //@provided.18/@item.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.11"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/pcr/stpb" upWardMappingList="//@provided.19 //@provided.19/@item.0 //@provided.19/@item.1" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/ccr/brgien" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.12"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/rbctr/limit" upWardMappingList="//@provided.27" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.13"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/rbctr_size" upWardMappingList="//@provided.25 //@provided.25/@item.0 //@provided.25/@item.1 //@provided.25/@item.3 //@provided.25/@item.4 //@provided.25/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.14"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/tbctr/limit" upWardMappingList="//@provided.26" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.15"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/tbctr_size" upWardMappingList="//@provided.24 //@provided.24/@item.0 //@provided.24/@item.1 //@provided.24/@item.2 //@provided.24/@item.3 //@provided.24/@item.4 //@provided.24/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.16"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/sctr/wle" upWardMappingList="//@provided.21" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="7"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.17"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="7"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/brg/pdiv" upWardMappingList="//@provided.20" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1c"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.18"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1c"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/fdr/step" upWardMappingList="//@provided.20" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1e4"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../USIC0/USIC0_0.dd#//@provided.19"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1e4"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/standard_receive_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.20"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/alternate_receive_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.21"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/baud_rate_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.22"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/protocol_specific_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.23"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/channel/alternate_receive_buffer_int" isSystemDefined="true">
    <downWardmappedList xsi:type="ResourceModel:SignalDeclaration" href="../../USIC0/USIC0_0.dd#//@provided.24"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/clockapp/clk001_iroactualfreqpb" upWardMappingList="//@provided.20 //@provided.22 //@provided.23" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="78"/>
    <downWardmappedList xsi:type="ResourceModel:IntegerParameter" href="../../clk001/1.0.8/clk001_0.app#//@provided.32"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="78"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart_txpin/pdr_pd" upWardMappingList="//@provided.34/@item.0 //@provided.34/@item.1 //@provided.34/@item.2 //@provided.35 //@provided.35/@item.0 //@provided.35/@item.1 //@provided.35/@item.2 //@provided.35/@item.3 //@provided.35/@item.4 //@provided.35/@item.5" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P1/P1_1.dd#//@provided.9"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/uart001/0/uart_rxpin/iocr_pcr" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <downWardmappedList xsi:type="ResourceModel:BitField" href="../../P1/P1_1.dd#//@provided.6"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
  </consumed>
  <alias name="alias_channel" URI="alias_channel" fromURI="peripheral/usic/*/channel/*"/>
  <propertyConstants name="uridevice" value="device/">
    <propertyConstants name="uriperi_uart001" value="peripheral/usic/">
      <propertyConstants name="uri_clockapp" value="app/clk001/">
        <propertyConstants name="uri_resetapp" value="app/reset001/">
          <propertyConstants name="uri_dbgapp" value="app/dbg001/"/>
        </propertyConstants>
      </propertyConstants>
    </propertyConstants>
  </propertyConstants>
  <categoryDescription description="Peripheral Specific Apps" name="Peripheral Specific Apps">
    <subCategory description="Communication" name="Communication">
      <subCategory description="Universal Serial Interface Channel (USIC)" name="Universal Serial Interface Channel (USIC)"/>
    </subCategory>
  </categoryDescription>
  <categoryDescription description="Basic Applications" name="Basic Applications">
    <subCategory description="Communication" name="Communication">
      <subCategory description="UART" name="UART"/>
    </subCategory>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>Simple Uart</keywords>
    <keywords>Communication</keywords>
    <keywords>Serial</keywords>
    <keywords>USIC</keywords>
    <keywords>UART</keywords>
    <keywords>UART001</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" isIOApp="true"/>
  </manifestInfo>
  <datagenerate fileName="UART001.h" fileType="HFILE" templateFileName="UART001.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="Usic.h" fileType="HFILE" templateFileName="Usic.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="UART001.c" templateFileName="UART001c.jet"/>
  <datagenerate fileName="UART001_Conf.c" templateFileName="UART001_Confc.jet"/>
  <datagenerate fileName="UART001_Conf.h" fileType="HFILE" templateFileName="UART001_Confh.jet"/>
  <connections sourceSignal="app/uart001/0/uart001_rxpin_vs" targetSignal="app/uart001/0/uart001_rx_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 0 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/uart001/0/uart001_tx_vs" targetSignal="app/uart001/0/uart001_txpin_vs"/>
  <connections sourceSignal="app/uart001/0/uart_txpin_vs" targetSignal="app/uart001/0/uart001_rx_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 1 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <connections sourceSignal="app/uart001/0/uart001_tx_vs" targetSignal="app/uart001/0/uart001_rx_vs" constraintFunction="&#xD;&#xA;          function resourceCondition(){&#xD;&#xA;              var Res = Solver.getResource(&quot;uart001_OprModeTemp&quot;);&#xD;&#xA;              var value = Solver.getIntValue(Res);&#xD;&#xA;              if (value == 2 ) {&#xD;&#xA;              return true;&#xD;&#xA;              }&#xD;&#xA;              return false;&#xD;&#xA;          }&#xD;&#xA;        "/>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
