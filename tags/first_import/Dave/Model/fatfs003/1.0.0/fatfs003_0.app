<?xml version="1.0" encoding="ASCII"?>
<ResourceModel:App xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ResourceModel="http://www.infineon.com/Davex/Resource.ecore" name="FATFS003" description="This App provides the FAT File System functionalities &#xA;in RTOS environment." descriptionURL="/doc/html/group___f_a_t_f_s003_app.html" mode="SHARABLE" URI="http://www.infineon.com/1.0.0/app/fatfs003/0">
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Tiny FS Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_tiny_fs" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>When it is set to 1, FatFs uses the sector buffer in the file system object 
instead of the sector buffer in the individual file object for file data transfer.
This reduces memory consumption 512 bytes each file object. </toolTipHelpDescription>
    <item name="Enable Tiny FS" evalFunction="&#xD;&#xA;  &#xD;&#xA;          function ForwardMapping()&#xD;&#xA;           {&#xD;&#xA;            var Res = SCM.getResource(&quot;index3&quot;);&#xD;&#xA;                        var Intvalue = SCM.getIntValue(Res);&#xD;&#xA;              &#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;index3&quot;);&#xD;&#xA;                    var Intvalue = SCM.getIntValue(Res);&#xD;&#xA;            if (Intvalue == 1)&#xD;&#xA;                        {&#xD;&#xA;              SCM.setIntValue(currentResource,1);&#xD;&#xA;                        }&#xD;&#xA;                        else&#xD;&#xA;                        {&#xD;&#xA;                            SCM.setIntValue(currentResource,0);&#xD;&#xA;                        } &#xD;&#xA;          }  &#xD;&#xA;            " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_tiny_fs/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enable Tiny file system</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Multi Partition Configuration" evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {       &#xD;&#xA;                  var Res0 = SCM.getResource(&quot;index4&quot;);    &#xD;&#xA;                  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                  SCM.setIntValue(Res0,value0);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {   &#xD;&#xA;                  var Res0 = SCM.getResource(&quot;index4&quot;);    &#xD;&#xA;                  var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                  SCM.setIntValue(currentResource,value0);                            &#xD;&#xA;              } " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_multi_partition" downWardmappedList="//@consumed.5" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription> When disabled, each volume is bound to the same physical drive number and 
it can mount only first primaly partition. When enabled, each volume 
is tied to the partitions listed in VolToPart[].</toolTipHelpDescription>
    <item name="Enable Multi Partition " evalFunction="&#xD;&#xA;              function ForwardMapping()&#xD;&#xA;              {       &#xD;&#xA;                  var Res0 = SCM.getResource(&quot;index4&quot;);    &#xD;&#xA;                  var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                  SCM.setIntValue(Res0,value0);&#xD;&#xA;              }&#xD;&#xA;              function BackwardMapping()&#xD;&#xA;              {   &#xD;&#xA;                  var Res0 = SCM.getResource(&quot;index4&quot;);    &#xD;&#xA;                  var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                 SCM.setIntValue(currentResource,value0); &#xD;&#xA;              } " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_multi_partition/0" downWardmappedList="//@consumed.5" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>To enable/disable Multi Partition. If this is enabled, then use MKFS is also enabled</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Use MKFS Configuration" evalFunction="&#xD;&#xA;                function ForwardMapping()&#xD;&#xA;                {       &#xD;&#xA;                    var Res0 = SCM.getResource(&quot;index1&quot;);    &#xD;&#xA;                    var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                    SCM.setIntValue(Res0,value0);&#xD;&#xA;&#xD;&#xA;                    var Res1 = SCM.getResource(&quot;index4&quot;); &#xD;&#xA;                    var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                }&#xD;&#xA;                function BackwardMapping()&#xD;&#xA;                {   &#xD;&#xA;                    var Res0 = SCM.getResource(&quot;index1&quot;);    &#xD;&#xA;                    var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                    SCM.setIntValue(currentResource,value0);  &#xD;&#xA;&#xD;&#xA;                    var Res1 = SCM.getResource(&quot;index4&quot;); &#xD;&#xA;                    var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                } " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_mkfs" downWardmappedList="//@consumed.2" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <toolTipHelpDescription>To enable f_mkfs function, select this option and read only option needs to be disabled.
The f_mkfs function creates an FAT volume on the logical drive.
 Creating FAT volume may take some time depending on the card capacity</toolTipHelpDescription>
    <item name="Enable MKFS" evalFunction="&#xD;&#xA;                    function ForwardMapping()&#xD;&#xA;                    {       &#xD;&#xA;                        var Res0 = SCM.getResource(&quot;index1&quot;);    &#xD;&#xA;                        var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                        SCM.setIntValue(Res0,value0);&#xD;&#xA;                        var Res1 = SCM.getResource(&quot;index4&quot;); &#xD;&#xA;                        var value1 = SCM.getIntValue(Res1); &#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping()&#xD;&#xA;                    {   &#xD;&#xA;                        var Res0 = SCM.getResource(&quot;index1&quot;);    &#xD;&#xA;                        var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                        var Res1 = SCM.getResource(&quot;index4&quot;); &#xD;&#xA;                        var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                        if(value1 == 1 ) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                        } &#xD;&#xA;                        else if(value0 == 1 ) {&#xD;&#xA;                           SCM.setIntValue(currentResource,1);&#xD;&#xA;                        }&#xD;&#xA;                        else {&#xD;&#xA;                          SCM.setIntValue(currentResource,0);&#xD;&#xA;                        } &#xD;&#xA;                    }" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_mkfs/0" downWardmappedList="//@consumed.2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>To enable f_mkfs function, select this option and read only option needs to be disabled.
The f_mkfs function creates an FAT volume on the logical drive.
 Creating FAT volume may take some time depending on the card capacity</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="FS ReadOnly Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_readonly" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>Setting  to 1 defines read only configuration. This removes writing functions,
 f_write, f_sync, f_unlink, f_mkdir, f_chmod, f_rename, f_truncate and useless f_getfree. </toolTipHelpDescription>
    <item name="Enable ReadOnly FS" evalFunction=" function ForwardMapping()&#xD;&#xA;           {&#xD;&#xA;              var Res = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;                            var Intvalue = SCM.getIntValue(Res);&#xD;&#xA;              var Res1 = SCM.getResource(&quot;index4&quot;);&#xD;&#xA;                            var Intvalue = SCM.getIntValue(Res1);&#xD;&#xA;          }&#xD;&#xA;          function BackwardMapping()&#xD;&#xA;          {&#xD;&#xA;            var Res = SCM.getResource(&quot;index1&quot;);&#xD;&#xA;            var Intvalue = SCM.getIntValue(Res);&#xD;&#xA;            if (Intvalue == 1 ) &#xD;&#xA;            {&#xD;&#xA;              SCM.setIntValue(currentResource,0);&#xD;&#xA;            }&#xD;&#xA;                    }  &#xD;&#xA;          " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_readonly/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>Enabling this option defines read only configuration. This removes writing functions,
 f_write, f_sync, f_unlink, f_mkdir, f_chmod, f_rename, f_truncate and useless f_getfree. </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="FS Minimize Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_minimize">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription> This option defines minimization level to remove some functions.
0: Full function.
1:  f_stat, f_getfree, f_unlink, f_mkdir, f_chmod, f_truncate and f_rename are removed. 
2: f_opendir and f_readdir are removed in addition to 1.
 3: f_lseek is removed in addition to 2.  </toolTipHelpDescription>
    <item name=" 0" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_minimize/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Full functions will be provided.</toolTipHelpDescription>
    </item>
    <item name="1" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_minimize/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>f_stat, f_getfree, f_unlink, f_mkdir, f_chmod, f_truncate and f_rename are removed.</toolTipHelpDescription>
    </item>
    <item name="2" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_minimize/2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>f_opendir and f_readdir are removed in addition to 1.</toolTipHelpDescription>
    </item>
    <item name="3" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_minimize/3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>f_lseek is removed in addition to 2.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="String Func Configuration" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,value0);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            SCM.setIntValue(currentResource,value0);                            &#xD;&#xA;                        }&#xD;&#xA;                " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_strfunc" downWardmappedList="//@consumed.1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <toolTipHelpDescription>To enable string functions, set it to 1 or 2. </toolTipHelpDescription>
    <item name="0" evalFunction=" &#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,0);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            if(value0 == 0) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                               &#xD;&#xA;                        }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_strfunc/0" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>String functions disabled</toolTipHelpDescription>
    </item>
    <item name="1" evalFunction=" &#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value1 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res1,1);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res1 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value1 = SCM.getIntValue(Res1);&#xD;&#xA;                            if(value1 == 1) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                               &#xD;&#xA;                        }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_strfunc/1" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>String functions enabled</toolTipHelpDescription>
    </item>
    <item name="2" evalFunction=" &#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res2 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value2 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res2,2);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res2 = SCM.getResource(&quot;index&quot;);    &#xD;&#xA;                            var value2 = SCM.getIntValue(Res2);&#xD;&#xA;                            if(value2 == 2) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                               &#xD;&#xA;                        }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_strfunc/2" downWardmappedList="//@consumed.1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>String functions enabled</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Use Forward Configuration" evalFunction="&#xD;&#xA;        function ForwardMapping()&#xD;&#xA;                {       &#xD;&#xA;                    var Res0 = SCM.getResource(&quot;index3&quot;);    &#xD;&#xA;                    var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                    SCM.setIntValue(Res0,value0);&#xD;&#xA;                }&#xD;&#xA;                function BackwardMapping()&#xD;&#xA;                {   &#xD;&#xA;                    var Res0 = SCM.getResource(&quot;index3&quot;);    &#xD;&#xA;                    var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                    SCM.setIntValue(currentResource,value0);                            &#xD;&#xA;                } " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_forward" downWardmappedList="//@consumed.4" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <toolTipHelpDescription>To use f_forward function, enable this option and also Enable Tiny FS.
The f_forward function reads the data from the file and forward it to the 
outgoing stream without data buffer. This is suitable for small memory system 
because it does not require any data buffer at application module.</toolTipHelpDescription>
    <item name="Enable Forward " evalFunction="&#xD;&#xA;                    function ForwardMapping()&#xD;&#xA;                    {       &#xD;&#xA;                        var Res0 = SCM.getResource(&quot;index3&quot;);    &#xD;&#xA;                        var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                        SCM.setIntValue(Res0,value0);&#xD;&#xA;                    }&#xD;&#xA;                    function BackwardMapping()&#xD;&#xA;                    {   &#xD;&#xA;                        var Res0 = SCM.getResource(&quot;index3&quot;);    &#xD;&#xA;                        var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                        SCM.setIntValue(currentResource,value0);                            &#xD;&#xA;                    }" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_use_forward/0" downWardmappedList="//@consumed.4" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>To use f_forward function, enable this option and also Enable Tiny FS.
The f_forward function reads the data from the file and forward it to the 
outgoing stream without data buffer. This is suitable for small memory system 
because it does not require any data buffer at application module.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Fast Seek Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fast_seek" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>To enable/disable fast seek feature.This feature enables fast backward/long seek 
operations without FAT access by cluster link information stored on the user defined table.
The cluster link information must be created prior to do the fast seek.
The file size cannot be expanded when the fast seek feature is enabled.</toolTipHelpDescription>
    <item name="Enable Fast Seek feature." evalFunction="" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fast_seek/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>To enable/disable fast seek feature.This feature enables fast backward/long seek 
operations without FAT access by cluster link information stored on the user defined table.
The cluster link information must be created prior to do the fast seek.
The file size cannot be expanded when the fast seek feature is enabled.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Code Page Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription> To select the OEM code page to be used on the Target system </toolTipHelpDescription>
    <item name="Japanese Shift-JIS (DBCS, OEM, Windows)" evalFunction="" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 932  - Japanese Shift-JIS</toolTipHelpDescription>
    </item>
    <item name="Simplified Chinese GBK (DBCS, OEM, Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 936  - Simplified Chinese GBK </toolTipHelpDescription>
    </item>
    <item name="Korean (DBCS, OEM, Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 949  - Korean  </toolTipHelpDescription>
    </item>
    <item name="Traditional Chinese Big5" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 950  - Traditional Chinese Big5  </toolTipHelpDescription>
    </item>
    <item name="Central Europe (Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/4" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>1250 - Central Europe (Windows)  </toolTipHelpDescription>
    </item>
    <item name="Cyrillic (Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/5" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 1251 - Cyrillic (Windows)  </toolTipHelpDescription>
    </item>
    <item name="Latin 1 (Windows) " evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/6" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>1252 - Latin 1  </toolTipHelpDescription>
    </item>
    <item name="Greek (Windows)  " evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/7" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 1253 - Greek </toolTipHelpDescription>
    </item>
    <item name="Turkish (Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/8" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>  1254 - Turkish </toolTipHelpDescription>
    </item>
    <item name="Hebrew (Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/9" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 1255 - Hebrew </toolTipHelpDescription>
    </item>
    <item name="Arabic (Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/10" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 1256 - Arabic</toolTipHelpDescription>
    </item>
    <item name="Baltic (Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/11" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 1257 - Baltic</toolTipHelpDescription>
    </item>
    <item name="Vietnam (OEM, Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/12" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 1258 - Vietnam</toolTipHelpDescription>
    </item>
    <item name="U.S. (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/13" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>437  - U.S.</toolTipHelpDescription>
    </item>
    <item name="Arabic (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/14" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>720  - Arabic</toolTipHelpDescription>
    </item>
    <item name="Greek (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/15" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>737  - Greek</toolTipHelpDescription>
    </item>
    <item name="Baltic (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/16" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>775  - Baltic</toolTipHelpDescription>
    </item>
    <item name="Multilingual Latin 1 (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/17" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 850  - Multilingual Latin 1</toolTipHelpDescription>
    </item>
    <item name="Multilingual Latin 1 + Euro (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/18" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 858  - Multilingual Latin 1 + Euro</toolTipHelpDescription>
    </item>
    <item name="Latin 2 (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/19" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 852  - Latin 2 </toolTipHelpDescription>
    </item>
    <item name="Cyrillic (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/20" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>  855  - Cyrillic </toolTipHelpDescription>
    </item>
    <item name="Russian (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/21" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>866  - Russian </toolTipHelpDescription>
    </item>
    <item name="Turkish (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/22" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>857  - Turkish </toolTipHelpDescription>
    </item>
    <item name="Hebrew (OEM)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/23" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription> 862  - Hebrew </toolTipHelpDescription>
    </item>
    <item name="874  - Thai (OEM, Windows)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/24" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>874  - Thai  </toolTipHelpDescription>
    </item>
    <item name="ASCII only (Valid for non LFN cfg.)" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_code_page/25" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>ASCII only  </toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="LFN Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>When _FS_TINY is set to 1, FatFs uses the sector buffer in the file system object
instead of the sector buffer in the individual file object for file data transfer.
This reduces memory consumption 512 bytes each file object. </toolTipHelpDescription>
    <item name="Disable LFN feature" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Disable LFN feature</toolTipHelpDescription>
    </item>
    <item name="Enable LFN with static buffer on the BSS." evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Enable LFN with static working buffer on the BSS. Always NOT reentrant.</toolTipHelpDescription>
    </item>
    <item name="Enable LFN with dynamic buffer on the STACK." evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn/2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Enable LFN with dynamic working buffer on the STACK.</toolTipHelpDescription>
    </item>
    <item name="Enable LFN with dynamic  buffer on the HEAP." evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn/3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Enable LFN with dynamic working buffer on the HEAP.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="LFN Unicode Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn_unicode">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription> Set LFN code </toolTipHelpDescription>
    <item name="ANSI/OEM" evalFunction="" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn_unicode/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>ANSI/OEM Selected</toolTipHelpDescription>
    </item>
    <item name="Unicode" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_lfn_unicode/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Unicode Selected</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Relative Path Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_relative_path">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This option configures relative path feature.</toolTipHelpDescription>
    <item name="Disable Relative Path" evalFunction="" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_relative_path/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Disable Relative Path feature and remove related functions.</toolTipHelpDescription>
    </item>
    <item name="Enable Relative Path without CWD" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_relative_path/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Enable relative path. f_chdrive() and f_chdir() are available.</toolTipHelpDescription>
    </item>
    <item name="Enable Relative Path with CWD" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_relative_path/2" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>f_getcwd() is available in addition to 1.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Maximum Sector Size" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,value0);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            SCM.setIntValue(currentResource,value0);                            &#xD;&#xA;                        }&#xD;&#xA;                " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_max_ss" downWardmappedList="//@consumed.3">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <toolTipHelpDescription> Maximum sector size to be handled. Always set 512 for memory card and hard disk but a 
larger value may be required for floppy disk (512/1024) and optical disk (512/2048).</toolTipHelpDescription>
    <item name="512 Bytes" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,1);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            if(value0 == 1) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                              &#xD;&#xA;                        }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_max_ss/0" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>512 bytes</toolTipHelpDescription>
    </item>
    <item name="1024 Bytes" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,2);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            if(value0 == 2) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                              &#xD;&#xA;                        }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_max_ss/1" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>1024 bytes</toolTipHelpDescription>
    </item>
    <item name="2048 Bytes" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,3);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            if(value0 == 3) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                              &#xD;&#xA;                        }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_max_ss/2" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <toolTipHelpDescription>2048 bytes</toolTipHelpDescription>
    </item>
    <item name="4096 Bytes" evalFunction="&#xD;&#xA;                        function ForwardMapping()&#xD;&#xA;                        {       &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(currentResource);&#xD;&#xA;                            SCM.setIntValue(Res0,4);&#xD;&#xA;                        }&#xD;&#xA;                        function BackwardMapping()&#xD;&#xA;                        {   &#xD;&#xA;                            var Res0 = SCM.getResource(&quot;index2&quot;);    &#xD;&#xA;                            var value0 = SCM.getIntValue(Res0);&#xD;&#xA;                            if(value0 == 4) {&#xD;&#xA;                                SCM.setIntValue(currentResource,1);&#xD;&#xA;                            } &#xD;&#xA;                            else {&#xD;&#xA;                                SCM.setIntValue(currentResource,0);&#xD;&#xA;                            }                              &#xD;&#xA;                        }&#xD;&#xA;                    " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_max_ss/3" downWardmappedList="//@consumed.3" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <toolTipHelpDescription>4096 bytes</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Erase Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_erase" multipleSelections="true">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription> To enable/disable erase feature</toolTipHelpDescription>
    <item name="Enable Erase Feature" evalFunction="" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_erase/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Erase Feature enabled</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:EnumerationParameter" name="Word Access Configuration" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_word_access">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription> Defines access method to use to the word data on the FAT volume.</toolTipHelpDescription>
    <item name="Byte-by-Byte Access." evalFunction="" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_word_access/0" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
      <localValue xsi:type="ResourceModel:StringValue" value="1"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
      <toolTipHelpDescription>Byte-by-byte access.</toolTipHelpDescription>
    </item>
    <item name="Word access" evalFunction=" " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_word_access/1" maxValue="1" minValue="0">
      <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
      <localValue xsi:type="ResourceModel:StringValue" value="0"/>
      <globalValue xsi:type="ResourceModel:StringValue" value="0"/>
      <toolTipHelpDescription>Word access.</toolTipHelpDescription>
    </item>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Max LFN Configuration " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_max_lfn" maxValue="FF" minValue="C">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="FF"/>
    <localValue xsi:type="ResourceModel:StringValue" value="FF"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="FF"/>
    <toolTipHelpDescription>Maximum LFN length to handle. It lies in the range of 12-255</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Volumes Configuration " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_volumes" maxValue="4" minValue="1">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <localValue xsi:type="ResourceModel:StringValue" value="2"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="2"/>
    <toolTipHelpDescription>This allows a user to set number of volumes(logical drives).Only four pri-partitions 
can be mounted. Extended partition is not supported.</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Timeout Configuration " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_timeout" maxValue="2710" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="3E8"/>
    <localValue xsi:type="ResourceModel:StringValue" value="3E8"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="3E8"/>
    <toolTipHelpDescription>This allows a user to set Timeout period in unit of time ticks.
Value should not exceed more than 10000 </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="File Sharing Configuration " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_share" maxValue="14" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <localValue xsi:type="ResourceModel:StringValue" value="4"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="4"/>
    <toolTipHelpDescription>The value defines how many files can be opened simultaneously.
 Maximum 20 files can be opened at a time </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="File Reentrancy Configuration " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_fs_reentrant" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This option switches the reentrancy of the FatFs module. </toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:IntegerParameter" name="Enable GUI " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/fatfs003_enable_gui" maxValue="1" minValue="0">
    <defaultValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <localValue xsi:type="ResourceModel:StringValue" value="1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="1"/>
    <toolTipHelpDescription>This allows a user to set fat file system GUI controls</toolTipHelpDescription>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Mount/Unmount a logical drive" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_mount" APIName="f_mount">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Open or create a file " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_open" APIName="f_open">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Read data from a file " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_read" APIName="f_read">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Move file pointer of a file object." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_lseek" APIName="f_lseek">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Close an open file object." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_close" APIName="f_close">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description=" This function Open an existing directory." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_opendir" APIName="f_opendir">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description=" This function Read a directory item." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_readdir" APIName="f_readdir">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Get file status." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_stat" APIName="f_stat">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Write data to a file. " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_write" APIName="f_write">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="Get number of free clusters on the drive. " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_getfree" APIName="f_getfree">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Truncate file " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_truncate" APIName="f_truncate">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Flush cached data of a writing file." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_sync" APIName="f_sync">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Delete an existing file or directory. " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_unlink" APIName="f_unlink">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Create a new directory. " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_mkdir" APIName="f_mkdir">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function change attriburte of the file/dir. " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_chmod" APIName="f_chmod">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Change timestamp of the file/dir." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_utime" APIName="f_utime">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Rename/Move a file or directory " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_rename" APIName="f_rename">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Create a file system on the drive. " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_mkfs" APIName="f_mkfs">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description="This function Forward data to the stream " URI="http://www.infineon.com/1.0.0/app/fatfs003/0/f_forward" APIName="f_forward">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <provided xsi:type="ResourceModel:API" description=" RTC function ." URI="http://www.infineon.com/1.0.0/app/fatfs003/0/get_fattime" APIName="get_fattime">
    <localValue xsi:type="ResourceModel:StringValue" value="-1"/>
    <globalValue xsi:type="ResourceModel:StringValue" value="-1"/>
  </provided>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/device_abstraction_rtos">
    <downWardmappedList xsi:type="ResourceModel:App" href="../../fatfs005/1.0.0/fatfs005_0.app#/"/>
    <requiredResource uriString="app/fatfs005/*" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/index" upWardMappingList="//@provided.5 //@provided.5/@item.0 //@provided.5/@item.1 //@provided.5/@item.2" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="2"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/index1" upWardMappingList="//@provided.2 //@provided.2/@item.0 //@provided.3/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="1"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/index2" upWardMappingList="//@provided.12 //@provided.12/@item.0 //@provided.12/@item.1 //@provided.12/@item.2 //@provided.12/@item.3" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="4"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/index3" upWardMappingList="//@provided.0/@item.0 //@provided.6 //@provided.6/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <consumed xsi:type="ResourceModel:ProxyResource" URI="http://www.infineon.com/1.0.0/app/fatfs003/0/index4" upWardMappingList="//@provided.1 //@provided.1/@item.0 //@provided.2 //@provided.2/@item.0 //@provided.3/@item.0" isSystemDefined="true">
    <localValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <globalValue xsi:type="ResourceModel:IntegerValue" value="0"/>
    <requiredResource uriString="" uriType="LOCALTYPE"/>
  </consumed>
  <propertyConstants name="uriDevice" value="Device/0.1.28"/>
  <categoryDescription description="Middleware layer apps" name="Middleware Apps">
    <subCategory description="Apps related to standard libraries" name="File System"/>
  </categoryDescription>
  <manifestInfo version="1.0.0">
    <keywords>File System</keywords>
    <keywords>FATFS</keywords>
    <keywords>FATFS003</keywords>
    <keywords>RTOS</keywords>
    <keywords>Sharable</keywords>
    <properties xsi:type="ResourceModel:AppProperties_1_0" initProvider="true" singleton="true"/>
  </manifestInfo>
  <datagenerate fileName="Src" fileType="CDIR" templateFileName="Src" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="ffconf.h" fileType="HFILE" templateFileName="ffconfh.jet"/>
  <datagenerate fileName="FATFS003.h" fileType="HFILE" templateFileName="FATFS003h.jet"/>
  <datagenerate fileName="FATFS003_Conf.h" fileType="HFILE" templateFileName="FATFS003_Conf.hdt" templateEngine="NONE" fileAction="COPY"/>
  <datagenerate fileName="FATFS003_Conf.c" templateFileName="FATFS003_Confc.jet"/>
  <datagenerate fileName="syscall.c" templateFileName="syscallc.jet"/>
  <softwareIdList>45.0.2</softwareIdList>
  <softwareIdList>45.0.1</softwareIdList>
  <softwareIdList>45.0.3</softwareIdList>
  <softwareIdList>45.2.3</softwareIdList>
  <softwareIdList>45.4.3</softwareIdList>
</ResourceModel:App>
