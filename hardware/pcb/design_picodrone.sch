<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="STM32F103C8T6">
<packages>
<package name="QFP50P900X900X160-48N">
<wire x1="-3.21" y1="3.6" x2="-3.6" y2="3.6" width="0.127" layer="21"/>
<wire x1="-3.6" y1="3.6" x2="-3.6" y2="3.21" width="0.127" layer="21"/>
<circle x="-6" y="2.95" radius="0.15" width="0.2" layer="21"/>
<wire x1="-3.6" y1="3.6" x2="3.6" y2="3.6" width="0.127" layer="51"/>
<wire x1="3.6" y1="3.6" x2="3.6" y2="-3.6" width="0.127" layer="51"/>
<wire x1="3.6" y1="-3.6" x2="-3.6" y2="-3.6" width="0.127" layer="51"/>
<wire x1="-3.6" y1="-3.6" x2="-3.6" y2="3.6" width="0.127" layer="51"/>
<wire x1="-3.6" y1="-3.21" x2="-3.6" y2="-3.6" width="0.127" layer="21"/>
<wire x1="-3.6" y1="-3.6" x2="-3.21" y2="-3.6" width="0.127" layer="21"/>
<wire x1="3.21" y1="-3.6" x2="3.6" y2="-3.6" width="0.127" layer="21"/>
<wire x1="3.6" y1="-3.6" x2="3.6" y2="-3.21" width="0.127" layer="21"/>
<wire x1="3.6" y1="3.21" x2="3.6" y2="3.6" width="0.127" layer="21"/>
<wire x1="3.6" y1="3.6" x2="3.21" y2="3.6" width="0.127" layer="21"/>
<wire x1="-5.21" y1="3.14" x2="-3.85" y2="3.14" width="0.05" layer="39"/>
<wire x1="-3.85" y1="3.14" x2="-3.85" y2="3.85" width="0.05" layer="39"/>
<wire x1="-3.85" y1="3.85" x2="-3.14" y2="3.85" width="0.05" layer="39"/>
<wire x1="-3.14" y1="3.85" x2="-3.14" y2="5.21" width="0.05" layer="39"/>
<wire x1="-3.14" y1="5.21" x2="3.14" y2="5.21" width="0.05" layer="39"/>
<wire x1="3.14" y1="5.21" x2="3.14" y2="3.85" width="0.05" layer="39"/>
<wire x1="3.14" y1="3.85" x2="3.85" y2="3.85" width="0.05" layer="39"/>
<wire x1="3.85" y1="3.85" x2="3.85" y2="3.14" width="0.05" layer="39"/>
<wire x1="3.85" y1="3.14" x2="5.21" y2="3.14" width="0.05" layer="39"/>
<wire x1="5.21" y1="3.14" x2="5.21" y2="-3.14" width="0.05" layer="39"/>
<wire x1="5.21" y1="-3.14" x2="3.85" y2="-3.14" width="0.05" layer="39"/>
<wire x1="3.85" y1="-3.14" x2="3.85" y2="-3.85" width="0.05" layer="39"/>
<wire x1="3.85" y1="-3.85" x2="3.14" y2="-3.85" width="0.05" layer="39"/>
<wire x1="3.14" y1="-3.85" x2="3.14" y2="-5.21" width="0.05" layer="39"/>
<wire x1="3.14" y1="-5.21" x2="-3.14" y2="-5.21" width="0.05" layer="39"/>
<wire x1="-3.14" y1="-5.21" x2="-3.14" y2="-3.85" width="0.05" layer="39"/>
<wire x1="-3.14" y1="-3.85" x2="-3.85" y2="-3.85" width="0.05" layer="39"/>
<wire x1="-3.85" y1="-3.85" x2="-3.85" y2="-3.14" width="0.05" layer="39"/>
<wire x1="-3.85" y1="-3.14" x2="-5.21" y2="-3.14" width="0.05" layer="39"/>
<wire x1="-5.21" y1="-3.14" x2="-5.21" y2="3.14" width="0.05" layer="39"/>
<text x="-5.5" y="5.5" size="1.27" layer="25">&gt;NAME</text>
<text x="-5" y="-7" size="1.27" layer="27">&gt;VALUE</text>
<circle x="-6" y="2.95" radius="0.15" width="0.2" layer="51"/>
<smd name="1" x="-4.18" y="2.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="2" x="-4.18" y="2.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="3" x="-4.18" y="1.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="4" x="-4.18" y="1.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="5" x="-4.18" y="0.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="6" x="-4.18" y="0.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="7" x="-4.18" y="-0.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="8" x="-4.18" y="-0.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="9" x="-4.18" y="-1.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="10" x="-4.18" y="-1.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="11" x="-4.18" y="-2.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="12" x="-4.18" y="-2.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="13" x="-2.75" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="14" x="-2.25" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="15" x="-1.75" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="16" x="-1.25" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="17" x="-0.75" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="18" x="-0.25" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="19" x="0.25" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="20" x="0.75" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="21" x="1.25" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="22" x="1.75" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="23" x="2.25" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="24" x="2.75" y="-4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="25" x="4.18" y="-2.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="26" x="4.18" y="-2.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="27" x="4.18" y="-1.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="28" x="4.18" y="-1.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="29" x="4.18" y="-0.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="30" x="4.18" y="-0.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="31" x="4.18" y="0.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="32" x="4.18" y="0.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="33" x="4.18" y="1.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="34" x="4.18" y="1.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="35" x="4.18" y="2.25" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="36" x="4.18" y="2.75" dx="0.28" dy="1.56" layer="1" roundness="50" rot="R90"/>
<smd name="37" x="2.75" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="38" x="2.25" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="39" x="1.75" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="40" x="1.25" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="41" x="0.75" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="42" x="0.25" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="43" x="-0.25" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="44" x="-0.75" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="45" x="-1.25" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="46" x="-1.75" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="47" x="-2.25" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
<smd name="48" x="-2.75" y="4.18" dx="0.28" dy="1.56" layer="1" roundness="50"/>
</package>
</packages>
<symbols>
<symbol name="STM32F103C8T6">
<wire x1="20.32" y1="40.64" x2="20.32" y2="-38.1" width="0.254" layer="94"/>
<wire x1="20.32" y1="-38.1" x2="-20.32" y2="-38.1" width="0.254" layer="94"/>
<wire x1="-20.32" y1="-38.1" x2="-20.32" y2="40.64" width="0.254" layer="94"/>
<wire x1="-20.32" y1="40.64" x2="20.32" y2="40.64" width="0.254" layer="94"/>
<text x="-20.32" y="41.275" size="1.778" layer="95">&gt;NAME</text>
<text x="-20.32" y="-40.64" size="1.778" layer="96">&gt;VALUE</text>
<pin name="VBAT" x="-25.4" y="30.48" length="middle"/>
<pin name="PC13-TAMPER-RTC" x="-25.4" y="-22.86" length="middle"/>
<pin name="PC14-OSC32_IN" x="-25.4" y="-25.4" length="middle"/>
<pin name="PC15-OSC32_OUT" x="-25.4" y="-27.94" length="middle"/>
<pin name="PD0_OSC_IN" x="25.4" y="-22.86" length="middle" rot="R180"/>
<pin name="PD1_OSC_OUT" x="25.4" y="-25.4" length="middle" rot="R180"/>
<pin name="NRST" x="-25.4" y="27.94" length="middle" direction="in"/>
<pin name="VSSA" x="25.4" y="-33.02" length="middle" direction="pwr" rot="R180"/>
<pin name="VDDA" x="25.4" y="38.1" length="middle" direction="pwr" rot="R180"/>
<pin name="PA0_WKUP" x="-25.4" y="20.32" length="middle"/>
<pin name="PA1" x="-25.4" y="17.78" length="middle"/>
<pin name="PA2" x="-25.4" y="15.24" length="middle"/>
<pin name="PA3" x="-25.4" y="12.7" length="middle"/>
<pin name="PA4" x="-25.4" y="10.16" length="middle"/>
<pin name="PA5" x="-25.4" y="7.62" length="middle"/>
<pin name="PA6" x="-25.4" y="5.08" length="middle"/>
<pin name="PA7" x="-25.4" y="2.54" length="middle"/>
<pin name="PB0" x="25.4" y="20.32" length="middle" rot="R180"/>
<pin name="PB1" x="25.4" y="17.78" length="middle" rot="R180"/>
<pin name="PB2" x="25.4" y="15.24" length="middle" rot="R180"/>
<pin name="PB10" x="25.4" y="-5.08" length="middle" rot="R180"/>
<pin name="PB11" x="25.4" y="-7.62" length="middle" rot="R180"/>
<pin name="VSS" x="25.4" y="-35.56" length="middle" direction="pwr" rot="R180"/>
<pin name="VDD" x="25.4" y="35.56" length="middle" direction="pwr" rot="R180"/>
<pin name="PB12" x="25.4" y="-10.16" length="middle" rot="R180"/>
<pin name="PB13" x="25.4" y="-12.7" length="middle" rot="R180"/>
<pin name="PB14" x="25.4" y="-15.24" length="middle" rot="R180"/>
<pin name="PB15" x="25.4" y="-17.78" length="middle" rot="R180"/>
<pin name="PA8" x="-25.4" y="0" length="middle"/>
<pin name="PA9" x="-25.4" y="-2.54" length="middle"/>
<pin name="PA10" x="-25.4" y="-5.08" length="middle"/>
<pin name="PA11" x="-25.4" y="-7.62" length="middle"/>
<pin name="PA12" x="-25.4" y="-10.16" length="middle"/>
<pin name="PA13" x="-25.4" y="-12.7" length="middle"/>
<pin name="PA14" x="-25.4" y="-15.24" length="middle"/>
<pin name="PA15" x="-25.4" y="-17.78" length="middle"/>
<pin name="PB3" x="25.4" y="12.7" length="middle" rot="R180"/>
<pin name="PB4" x="25.4" y="10.16" length="middle" rot="R180"/>
<pin name="PB5" x="25.4" y="7.62" length="middle" rot="R180"/>
<pin name="PB6" x="25.4" y="5.08" length="middle" rot="R180"/>
<pin name="PB7" x="25.4" y="2.54" length="middle" rot="R180"/>
<pin name="BOOT0" x="-25.4" y="25.4" length="middle" direction="in"/>
<pin name="PB8" x="25.4" y="0" length="middle" rot="R180"/>
<pin name="PB9" x="25.4" y="-2.54" length="middle" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="STM32F103C8T6" prefix="U">
<description>Mainstream Performance line, ARM Cortex-M3 MCU with 64 Kbytes Flash, 72 MHz CPU, motor control, USB and CAN &lt;a href="https://pricing.snapeda.com/parts/STM32F103C8T6/STMicroelectronics/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="STM32F103C8T6" x="0" y="0"/>
</gates>
<devices>
<device name="" package="QFP50P900X900X160-48N">
<connects>
<connect gate="G$1" pin="BOOT0" pad="44"/>
<connect gate="G$1" pin="NRST" pad="7"/>
<connect gate="G$1" pin="PA0_WKUP" pad="10"/>
<connect gate="G$1" pin="PA1" pad="11"/>
<connect gate="G$1" pin="PA10" pad="31"/>
<connect gate="G$1" pin="PA11" pad="32"/>
<connect gate="G$1" pin="PA12" pad="33"/>
<connect gate="G$1" pin="PA13" pad="34"/>
<connect gate="G$1" pin="PA14" pad="37"/>
<connect gate="G$1" pin="PA15" pad="38"/>
<connect gate="G$1" pin="PA2" pad="12"/>
<connect gate="G$1" pin="PA3" pad="13"/>
<connect gate="G$1" pin="PA4" pad="14"/>
<connect gate="G$1" pin="PA5" pad="15"/>
<connect gate="G$1" pin="PA6" pad="16"/>
<connect gate="G$1" pin="PA7" pad="17"/>
<connect gate="G$1" pin="PA8" pad="29"/>
<connect gate="G$1" pin="PA9" pad="30"/>
<connect gate="G$1" pin="PB0" pad="18"/>
<connect gate="G$1" pin="PB1" pad="19"/>
<connect gate="G$1" pin="PB10" pad="21"/>
<connect gate="G$1" pin="PB11" pad="22"/>
<connect gate="G$1" pin="PB12" pad="25"/>
<connect gate="G$1" pin="PB13" pad="26"/>
<connect gate="G$1" pin="PB14" pad="27"/>
<connect gate="G$1" pin="PB15" pad="28"/>
<connect gate="G$1" pin="PB2" pad="20"/>
<connect gate="G$1" pin="PB3" pad="39"/>
<connect gate="G$1" pin="PB4" pad="40"/>
<connect gate="G$1" pin="PB5" pad="41"/>
<connect gate="G$1" pin="PB6" pad="42"/>
<connect gate="G$1" pin="PB7" pad="43"/>
<connect gate="G$1" pin="PB8" pad="45"/>
<connect gate="G$1" pin="PB9" pad="46"/>
<connect gate="G$1" pin="PC13-TAMPER-RTC" pad="2"/>
<connect gate="G$1" pin="PC14-OSC32_IN" pad="3"/>
<connect gate="G$1" pin="PC15-OSC32_OUT" pad="4"/>
<connect gate="G$1" pin="PD0_OSC_IN" pad="5"/>
<connect gate="G$1" pin="PD1_OSC_OUT" pad="6"/>
<connect gate="G$1" pin="VBAT" pad="1"/>
<connect gate="G$1" pin="VDD" pad="24 36 48"/>
<connect gate="G$1" pin="VDDA" pad="9"/>
<connect gate="G$1" pin="VSS" pad="23 35 47"/>
<connect gate="G$1" pin="VSSA" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Warning"/>
<attribute name="DESCRIPTION" value=" ARM® Cortex®-M3 STM32F1 Microcontroller IC 32-Bit 72MHz 64KB (64K x 8) FLASH 48-LQFP (7x7) "/>
<attribute name="MF" value="STMicroelectronics"/>
<attribute name="MP" value="STM32F103C8T6"/>
<attribute name="PACKAGE" value="LQFP-48 STMicroelectronics"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/STM32F103C8T6/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="Sensor" urn="urn:adsk.eagle:library:11396555">
<description>&lt;h3&gt; PCBLayout.com - Frequently Used &lt;i&gt;Sensors&lt;/i&gt;&lt;/h3&gt;

Visit us at &lt;a href="http://www.PCBLayout.com"&gt;PCBLayout.com&lt;/a&gt; for quick and hassle-free PCB Layout/Manufacturing ordering experience.
&lt;BR&gt;
&lt;BR&gt;
This library has been generated by our experienced pcb layout engineers using current IPC and/or industry standards. We &lt;b&gt;believe&lt;/b&gt; the content to be accurate, complete and current. But, this content is provided as a courtesy and &lt;u&gt;user assumes all risk and responsiblity of it's usage&lt;/u&gt;.
&lt;BR&gt;
&lt;BR&gt;
Feel free to contact us at &lt;a href="mailto:Support@PCBLayout.com"&gt;Support@PCBLayout.com&lt;/a&gt; if you have any questions/concerns regarding any of our content or services.</description>
<packages>
<package name="24-VFQFN" urn="urn:adsk.eagle:footprint:10907317/1" library_version="1">
<description>Quad Flat No-Lead (QFN with Tab), 0.50 mm pitch; square, 6 pin X 6 pin, 4.00 mm L X 4.00 mm W X 0.95 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<smd name="1" x="-1.25" y="-1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R270" stop="no" cream="no"/>
<smd name="2" x="-0.75" y="-1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R270" stop="no" cream="no"/>
<smd name="3" x="-0.25" y="-1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R270" stop="no" cream="no"/>
<smd name="4" x="0.25" y="-1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R270" stop="no" cream="no"/>
<smd name="5" x="0.75" y="-1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R270" stop="no" cream="no"/>
<smd name="6" x="1.25" y="-1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R270" stop="no" cream="no"/>
<smd name="7" x="1.92" y="-1.25" dx="0.69" dy="0.26" layer="1" roundness="54" stop="no" cream="no"/>
<smd name="8" x="1.92" y="-0.75" dx="0.69" dy="0.26" layer="1" roundness="54" stop="no" cream="no"/>
<smd name="9" x="1.92" y="-0.25" dx="0.69" dy="0.26" layer="1" roundness="54" stop="no" cream="no"/>
<smd name="10" x="1.92" y="0.25" dx="0.69" dy="0.26" layer="1" roundness="54" stop="no" cream="no"/>
<smd name="11" x="1.92" y="0.75" dx="0.69" dy="0.26" layer="1" roundness="54" stop="no" cream="no"/>
<smd name="12" x="1.92" y="1.25" dx="0.69" dy="0.26" layer="1" roundness="54" stop="no" cream="no"/>
<smd name="13" x="1.25" y="1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R90" stop="no" cream="no"/>
<smd name="14" x="0.75" y="1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R90" stop="no" cream="no"/>
<smd name="15" x="0.25" y="1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R90" stop="no" cream="no"/>
<smd name="16" x="-0.25" y="1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R90" stop="no" cream="no"/>
<smd name="17" x="-0.75" y="1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R90" stop="no" cream="no"/>
<smd name="18" x="-1.25" y="1.92" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R90" stop="no" cream="no"/>
<smd name="19" x="-1.92" y="1.25" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R180" stop="no" cream="no"/>
<smd name="20" x="-1.92" y="0.75" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R180" stop="no" cream="no"/>
<smd name="21" x="-1.92" y="0.25" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R180" stop="no" cream="no"/>
<smd name="22" x="-1.92" y="-0.25" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R180" stop="no" cream="no"/>
<smd name="23" x="-1.92" y="-0.75" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R180" stop="no" cream="no"/>
<smd name="24" x="-1.92" y="-1.25" dx="0.69" dy="0.26" layer="1" roundness="54" rot="R180" stop="no" cream="no"/>
<smd name="25" x="0" y="0" dx="2.6" dy="2.7" layer="1" rot="R90" stop="no" cream="no"/>
<polygon width="0.01" layer="29">
<vertex x="-1.38" y="-1.92"/>
<vertex x="-1.38" y="-1.645"/>
<vertex x="-1.3791" y="-1.634"/>
<vertex x="-1.3766" y="-1.6234"/>
<vertex x="-1.3724" y="-1.6132"/>
<vertex x="-1.3666" y="-1.6039"/>
<vertex x="-1.3595" y="-1.5955"/>
<vertex x="-1.3511" y="-1.5884"/>
<vertex x="-1.3418" y="-1.5826"/>
<vertex x="-1.3316" y="-1.5784"/>
<vertex x="-1.321" y="-1.5759"/>
<vertex x="-1.19" y="-1.575"/>
<vertex x="-1.179" y="-1.5759"/>
<vertex x="-1.1684" y="-1.5784"/>
<vertex x="-1.1582" y="-1.5826"/>
<vertex x="-1.1489" y="-1.5884"/>
<vertex x="-1.1405" y="-1.5955"/>
<vertex x="-1.1334" y="-1.6039"/>
<vertex x="-1.1276" y="-1.6132"/>
<vertex x="-1.1234" y="-1.6234"/>
<vertex x="-1.1209" y="-1.634"/>
<vertex x="-1.12" y="-1.645"/>
<vertex x="-1.12" y="-2.195"/>
<vertex x="-1.1209" y="-2.206"/>
<vertex x="-1.1234" y="-2.2166"/>
<vertex x="-1.1276" y="-2.2268"/>
<vertex x="-1.1334" y="-2.2361"/>
<vertex x="-1.1405" y="-2.2445"/>
<vertex x="-1.1489" y="-2.2516"/>
<vertex x="-1.1582" y="-2.2574"/>
<vertex x="-1.1684" y="-2.2616"/>
<vertex x="-1.179" y="-2.2641"/>
<vertex x="-1.31" y="-2.265"/>
<vertex x="-1.321" y="-2.2641"/>
<vertex x="-1.3316" y="-2.2616"/>
<vertex x="-1.3418" y="-2.2574"/>
<vertex x="-1.3511" y="-2.2516"/>
<vertex x="-1.3595" y="-2.2445"/>
<vertex x="-1.3666" y="-2.2361"/>
<vertex x="-1.3724" y="-2.2268"/>
<vertex x="-1.3766" y="-2.2166"/>
<vertex x="-1.3791" y="-2.206"/>
<vertex x="-1.38" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.38" y="-1.92"/>
<vertex x="-1.38" y="-1.645"/>
<vertex x="-1.3791" y="-1.634"/>
<vertex x="-1.3766" y="-1.6234"/>
<vertex x="-1.3724" y="-1.6132"/>
<vertex x="-1.3666" y="-1.6039"/>
<vertex x="-1.3595" y="-1.5955"/>
<vertex x="-1.3511" y="-1.5884"/>
<vertex x="-1.3418" y="-1.5826"/>
<vertex x="-1.3316" y="-1.5784"/>
<vertex x="-1.321" y="-1.5759"/>
<vertex x="-1.19" y="-1.575"/>
<vertex x="-1.179" y="-1.5759"/>
<vertex x="-1.1684" y="-1.5784"/>
<vertex x="-1.1582" y="-1.5826"/>
<vertex x="-1.1489" y="-1.5884"/>
<vertex x="-1.1405" y="-1.5955"/>
<vertex x="-1.1334" y="-1.6039"/>
<vertex x="-1.1276" y="-1.6132"/>
<vertex x="-1.1234" y="-1.6234"/>
<vertex x="-1.1209" y="-1.634"/>
<vertex x="-1.12" y="-1.645"/>
<vertex x="-1.12" y="-2.195"/>
<vertex x="-1.1209" y="-2.206"/>
<vertex x="-1.1234" y="-2.2166"/>
<vertex x="-1.1276" y="-2.2268"/>
<vertex x="-1.1334" y="-2.2361"/>
<vertex x="-1.1405" y="-2.2445"/>
<vertex x="-1.1489" y="-2.2516"/>
<vertex x="-1.1582" y="-2.2574"/>
<vertex x="-1.1684" y="-2.2616"/>
<vertex x="-1.179" y="-2.2641"/>
<vertex x="-1.31" y="-2.265"/>
<vertex x="-1.321" y="-2.2641"/>
<vertex x="-1.3316" y="-2.2616"/>
<vertex x="-1.3418" y="-2.2574"/>
<vertex x="-1.3511" y="-2.2516"/>
<vertex x="-1.3595" y="-2.2445"/>
<vertex x="-1.3666" y="-2.2361"/>
<vertex x="-1.3724" y="-2.2268"/>
<vertex x="-1.3766" y="-2.2166"/>
<vertex x="-1.3791" y="-2.206"/>
<vertex x="-1.38" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-0.88" y="-1.92"/>
<vertex x="-0.88" y="-1.645"/>
<vertex x="-0.8791" y="-1.634"/>
<vertex x="-0.8766" y="-1.6234"/>
<vertex x="-0.8724" y="-1.6132"/>
<vertex x="-0.8666" y="-1.6039"/>
<vertex x="-0.8595" y="-1.5955"/>
<vertex x="-0.8511" y="-1.5884"/>
<vertex x="-0.8418" y="-1.5826"/>
<vertex x="-0.8316" y="-1.5784"/>
<vertex x="-0.821" y="-1.5759"/>
<vertex x="-0.69" y="-1.575"/>
<vertex x="-0.679" y="-1.5759"/>
<vertex x="-0.6684" y="-1.5784"/>
<vertex x="-0.6582" y="-1.5826"/>
<vertex x="-0.6489" y="-1.5884"/>
<vertex x="-0.6405" y="-1.5955"/>
<vertex x="-0.6334" y="-1.6039"/>
<vertex x="-0.6276" y="-1.6132"/>
<vertex x="-0.6234" y="-1.6234"/>
<vertex x="-0.6209" y="-1.634"/>
<vertex x="-0.62" y="-1.645"/>
<vertex x="-0.62" y="-2.195"/>
<vertex x="-0.6209" y="-2.206"/>
<vertex x="-0.6234" y="-2.2166"/>
<vertex x="-0.6276" y="-2.2268"/>
<vertex x="-0.6334" y="-2.2361"/>
<vertex x="-0.6405" y="-2.2445"/>
<vertex x="-0.6489" y="-2.2516"/>
<vertex x="-0.6582" y="-2.2574"/>
<vertex x="-0.6684" y="-2.2616"/>
<vertex x="-0.679" y="-2.2641"/>
<vertex x="-0.81" y="-2.265"/>
<vertex x="-0.821" y="-2.2641"/>
<vertex x="-0.8316" y="-2.2616"/>
<vertex x="-0.8418" y="-2.2574"/>
<vertex x="-0.8511" y="-2.2516"/>
<vertex x="-0.8595" y="-2.2445"/>
<vertex x="-0.8666" y="-2.2361"/>
<vertex x="-0.8724" y="-2.2268"/>
<vertex x="-0.8766" y="-2.2166"/>
<vertex x="-0.8791" y="-2.206"/>
<vertex x="-0.88" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.88" y="-1.92"/>
<vertex x="-0.88" y="-1.645"/>
<vertex x="-0.8791" y="-1.634"/>
<vertex x="-0.8766" y="-1.6234"/>
<vertex x="-0.8724" y="-1.6132"/>
<vertex x="-0.8666" y="-1.6039"/>
<vertex x="-0.8595" y="-1.5955"/>
<vertex x="-0.8511" y="-1.5884"/>
<vertex x="-0.8418" y="-1.5826"/>
<vertex x="-0.8316" y="-1.5784"/>
<vertex x="-0.821" y="-1.5759"/>
<vertex x="-0.69" y="-1.575"/>
<vertex x="-0.679" y="-1.5759"/>
<vertex x="-0.6684" y="-1.5784"/>
<vertex x="-0.6582" y="-1.5826"/>
<vertex x="-0.6489" y="-1.5884"/>
<vertex x="-0.6405" y="-1.5955"/>
<vertex x="-0.6334" y="-1.6039"/>
<vertex x="-0.6276" y="-1.6132"/>
<vertex x="-0.6234" y="-1.6234"/>
<vertex x="-0.6209" y="-1.634"/>
<vertex x="-0.62" y="-1.645"/>
<vertex x="-0.62" y="-2.195"/>
<vertex x="-0.6209" y="-2.206"/>
<vertex x="-0.6234" y="-2.2166"/>
<vertex x="-0.6276" y="-2.2268"/>
<vertex x="-0.6334" y="-2.2361"/>
<vertex x="-0.6405" y="-2.2445"/>
<vertex x="-0.6489" y="-2.2516"/>
<vertex x="-0.6582" y="-2.2574"/>
<vertex x="-0.6684" y="-2.2616"/>
<vertex x="-0.679" y="-2.2641"/>
<vertex x="-0.81" y="-2.265"/>
<vertex x="-0.821" y="-2.2641"/>
<vertex x="-0.8316" y="-2.2616"/>
<vertex x="-0.8418" y="-2.2574"/>
<vertex x="-0.8511" y="-2.2516"/>
<vertex x="-0.8595" y="-2.2445"/>
<vertex x="-0.8666" y="-2.2361"/>
<vertex x="-0.8724" y="-2.2268"/>
<vertex x="-0.8766" y="-2.2166"/>
<vertex x="-0.8791" y="-2.206"/>
<vertex x="-0.88" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-0.38" y="-1.92"/>
<vertex x="-0.38" y="-1.645"/>
<vertex x="-0.3791" y="-1.634"/>
<vertex x="-0.3766" y="-1.6234"/>
<vertex x="-0.3724" y="-1.6132"/>
<vertex x="-0.3666" y="-1.6039"/>
<vertex x="-0.3595" y="-1.5955"/>
<vertex x="-0.3511" y="-1.5884"/>
<vertex x="-0.3418" y="-1.5826"/>
<vertex x="-0.3316" y="-1.5784"/>
<vertex x="-0.321" y="-1.5759"/>
<vertex x="-0.19" y="-1.575"/>
<vertex x="-0.179" y="-1.5759"/>
<vertex x="-0.1684" y="-1.5784"/>
<vertex x="-0.1582" y="-1.5826"/>
<vertex x="-0.1489" y="-1.5884"/>
<vertex x="-0.1405" y="-1.5955"/>
<vertex x="-0.1334" y="-1.6039"/>
<vertex x="-0.1276" y="-1.6132"/>
<vertex x="-0.1234" y="-1.6234"/>
<vertex x="-0.1209" y="-1.634"/>
<vertex x="-0.12" y="-1.645"/>
<vertex x="-0.12" y="-2.195"/>
<vertex x="-0.1209" y="-2.206"/>
<vertex x="-0.1234" y="-2.2166"/>
<vertex x="-0.1276" y="-2.2268"/>
<vertex x="-0.1334" y="-2.2361"/>
<vertex x="-0.1405" y="-2.2445"/>
<vertex x="-0.1489" y="-2.2516"/>
<vertex x="-0.1582" y="-2.2574"/>
<vertex x="-0.1684" y="-2.2616"/>
<vertex x="-0.179" y="-2.2641"/>
<vertex x="-0.31" y="-2.265"/>
<vertex x="-0.321" y="-2.2641"/>
<vertex x="-0.3316" y="-2.2616"/>
<vertex x="-0.3418" y="-2.2574"/>
<vertex x="-0.3511" y="-2.2516"/>
<vertex x="-0.3595" y="-2.2445"/>
<vertex x="-0.3666" y="-2.2361"/>
<vertex x="-0.3724" y="-2.2268"/>
<vertex x="-0.3766" y="-2.2166"/>
<vertex x="-0.3791" y="-2.206"/>
<vertex x="-0.38" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.38" y="-1.92"/>
<vertex x="-0.38" y="-1.645"/>
<vertex x="-0.3791" y="-1.634"/>
<vertex x="-0.3766" y="-1.6234"/>
<vertex x="-0.3724" y="-1.6132"/>
<vertex x="-0.3666" y="-1.6039"/>
<vertex x="-0.3595" y="-1.5955"/>
<vertex x="-0.3511" y="-1.5884"/>
<vertex x="-0.3418" y="-1.5826"/>
<vertex x="-0.3316" y="-1.5784"/>
<vertex x="-0.321" y="-1.5759"/>
<vertex x="-0.19" y="-1.575"/>
<vertex x="-0.179" y="-1.5759"/>
<vertex x="-0.1684" y="-1.5784"/>
<vertex x="-0.1582" y="-1.5826"/>
<vertex x="-0.1489" y="-1.5884"/>
<vertex x="-0.1405" y="-1.5955"/>
<vertex x="-0.1334" y="-1.6039"/>
<vertex x="-0.1276" y="-1.6132"/>
<vertex x="-0.1234" y="-1.6234"/>
<vertex x="-0.1209" y="-1.634"/>
<vertex x="-0.12" y="-1.645"/>
<vertex x="-0.12" y="-2.195"/>
<vertex x="-0.1209" y="-2.206"/>
<vertex x="-0.1234" y="-2.2166"/>
<vertex x="-0.1276" y="-2.2268"/>
<vertex x="-0.1334" y="-2.2361"/>
<vertex x="-0.1405" y="-2.2445"/>
<vertex x="-0.1489" y="-2.2516"/>
<vertex x="-0.1582" y="-2.2574"/>
<vertex x="-0.1684" y="-2.2616"/>
<vertex x="-0.179" y="-2.2641"/>
<vertex x="-0.31" y="-2.265"/>
<vertex x="-0.321" y="-2.2641"/>
<vertex x="-0.3316" y="-2.2616"/>
<vertex x="-0.3418" y="-2.2574"/>
<vertex x="-0.3511" y="-2.2516"/>
<vertex x="-0.3595" y="-2.2445"/>
<vertex x="-0.3666" y="-2.2361"/>
<vertex x="-0.3724" y="-2.2268"/>
<vertex x="-0.3766" y="-2.2166"/>
<vertex x="-0.3791" y="-2.206"/>
<vertex x="-0.38" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="0.12" y="-1.92"/>
<vertex x="0.12" y="-1.645"/>
<vertex x="0.1209" y="-1.634"/>
<vertex x="0.1234" y="-1.6234"/>
<vertex x="0.1276" y="-1.6132"/>
<vertex x="0.1334" y="-1.6039"/>
<vertex x="0.1405" y="-1.5955"/>
<vertex x="0.1489" y="-1.5884"/>
<vertex x="0.1582" y="-1.5826"/>
<vertex x="0.1684" y="-1.5784"/>
<vertex x="0.179" y="-1.5759"/>
<vertex x="0.31" y="-1.575"/>
<vertex x="0.321" y="-1.5759"/>
<vertex x="0.3316" y="-1.5784"/>
<vertex x="0.3418" y="-1.5826"/>
<vertex x="0.3511" y="-1.5884"/>
<vertex x="0.3595" y="-1.5955"/>
<vertex x="0.3666" y="-1.6039"/>
<vertex x="0.3724" y="-1.6132"/>
<vertex x="0.3766" y="-1.6234"/>
<vertex x="0.3791" y="-1.634"/>
<vertex x="0.38" y="-1.645"/>
<vertex x="0.38" y="-2.195"/>
<vertex x="0.3791" y="-2.206"/>
<vertex x="0.3766" y="-2.2166"/>
<vertex x="0.3724" y="-2.2268"/>
<vertex x="0.3666" y="-2.2361"/>
<vertex x="0.3595" y="-2.2445"/>
<vertex x="0.3511" y="-2.2516"/>
<vertex x="0.3418" y="-2.2574"/>
<vertex x="0.3316" y="-2.2616"/>
<vertex x="0.321" y="-2.2641"/>
<vertex x="0.19" y="-2.265"/>
<vertex x="0.179" y="-2.2641"/>
<vertex x="0.1684" y="-2.2616"/>
<vertex x="0.1582" y="-2.2574"/>
<vertex x="0.1489" y="-2.2516"/>
<vertex x="0.1405" y="-2.2445"/>
<vertex x="0.1334" y="-2.2361"/>
<vertex x="0.1276" y="-2.2268"/>
<vertex x="0.1234" y="-2.2166"/>
<vertex x="0.1209" y="-2.206"/>
<vertex x="0.12" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="0.12" y="-1.92"/>
<vertex x="0.12" y="-1.645"/>
<vertex x="0.1209" y="-1.634"/>
<vertex x="0.1234" y="-1.6234"/>
<vertex x="0.1276" y="-1.6132"/>
<vertex x="0.1334" y="-1.6039"/>
<vertex x="0.1405" y="-1.5955"/>
<vertex x="0.1489" y="-1.5884"/>
<vertex x="0.1582" y="-1.5826"/>
<vertex x="0.1684" y="-1.5784"/>
<vertex x="0.179" y="-1.5759"/>
<vertex x="0.31" y="-1.575"/>
<vertex x="0.321" y="-1.5759"/>
<vertex x="0.3316" y="-1.5784"/>
<vertex x="0.3418" y="-1.5826"/>
<vertex x="0.3511" y="-1.5884"/>
<vertex x="0.3595" y="-1.5955"/>
<vertex x="0.3666" y="-1.6039"/>
<vertex x="0.3724" y="-1.6132"/>
<vertex x="0.3766" y="-1.6234"/>
<vertex x="0.3791" y="-1.634"/>
<vertex x="0.38" y="-1.645"/>
<vertex x="0.38" y="-2.195"/>
<vertex x="0.3791" y="-2.206"/>
<vertex x="0.3766" y="-2.2166"/>
<vertex x="0.3724" y="-2.2268"/>
<vertex x="0.3666" y="-2.2361"/>
<vertex x="0.3595" y="-2.2445"/>
<vertex x="0.3511" y="-2.2516"/>
<vertex x="0.3418" y="-2.2574"/>
<vertex x="0.3316" y="-2.2616"/>
<vertex x="0.321" y="-2.2641"/>
<vertex x="0.19" y="-2.265"/>
<vertex x="0.179" y="-2.2641"/>
<vertex x="0.1684" y="-2.2616"/>
<vertex x="0.1582" y="-2.2574"/>
<vertex x="0.1489" y="-2.2516"/>
<vertex x="0.1405" y="-2.2445"/>
<vertex x="0.1334" y="-2.2361"/>
<vertex x="0.1276" y="-2.2268"/>
<vertex x="0.1234" y="-2.2166"/>
<vertex x="0.1209" y="-2.206"/>
<vertex x="0.12" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="0.62" y="-1.92"/>
<vertex x="0.62" y="-1.645"/>
<vertex x="0.6209" y="-1.634"/>
<vertex x="0.6234" y="-1.6234"/>
<vertex x="0.6276" y="-1.6132"/>
<vertex x="0.6334" y="-1.6039"/>
<vertex x="0.6405" y="-1.5955"/>
<vertex x="0.6489" y="-1.5884"/>
<vertex x="0.6582" y="-1.5826"/>
<vertex x="0.6684" y="-1.5784"/>
<vertex x="0.679" y="-1.5759"/>
<vertex x="0.81" y="-1.575"/>
<vertex x="0.821" y="-1.5759"/>
<vertex x="0.8316" y="-1.5784"/>
<vertex x="0.8418" y="-1.5826"/>
<vertex x="0.8511" y="-1.5884"/>
<vertex x="0.8595" y="-1.5955"/>
<vertex x="0.8666" y="-1.6039"/>
<vertex x="0.8724" y="-1.6132"/>
<vertex x="0.8766" y="-1.6234"/>
<vertex x="0.8791" y="-1.634"/>
<vertex x="0.88" y="-1.645"/>
<vertex x="0.88" y="-2.195"/>
<vertex x="0.8791" y="-2.206"/>
<vertex x="0.8766" y="-2.2166"/>
<vertex x="0.8724" y="-2.2268"/>
<vertex x="0.8666" y="-2.2361"/>
<vertex x="0.8595" y="-2.2445"/>
<vertex x="0.8511" y="-2.2516"/>
<vertex x="0.8418" y="-2.2574"/>
<vertex x="0.8316" y="-2.2616"/>
<vertex x="0.821" y="-2.2641"/>
<vertex x="0.69" y="-2.265"/>
<vertex x="0.679" y="-2.2641"/>
<vertex x="0.6684" y="-2.2616"/>
<vertex x="0.6582" y="-2.2574"/>
<vertex x="0.6489" y="-2.2516"/>
<vertex x="0.6405" y="-2.2445"/>
<vertex x="0.6334" y="-2.2361"/>
<vertex x="0.6276" y="-2.2268"/>
<vertex x="0.6234" y="-2.2166"/>
<vertex x="0.6209" y="-2.206"/>
<vertex x="0.62" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="0.62" y="-1.92"/>
<vertex x="0.62" y="-1.645"/>
<vertex x="0.6209" y="-1.634"/>
<vertex x="0.6234" y="-1.6234"/>
<vertex x="0.6276" y="-1.6132"/>
<vertex x="0.6334" y="-1.6039"/>
<vertex x="0.6405" y="-1.5955"/>
<vertex x="0.6489" y="-1.5884"/>
<vertex x="0.6582" y="-1.5826"/>
<vertex x="0.6684" y="-1.5784"/>
<vertex x="0.679" y="-1.5759"/>
<vertex x="0.81" y="-1.575"/>
<vertex x="0.821" y="-1.5759"/>
<vertex x="0.8316" y="-1.5784"/>
<vertex x="0.8418" y="-1.5826"/>
<vertex x="0.8511" y="-1.5884"/>
<vertex x="0.8595" y="-1.5955"/>
<vertex x="0.8666" y="-1.6039"/>
<vertex x="0.8724" y="-1.6132"/>
<vertex x="0.8766" y="-1.6234"/>
<vertex x="0.8791" y="-1.634"/>
<vertex x="0.88" y="-1.645"/>
<vertex x="0.88" y="-2.195"/>
<vertex x="0.8791" y="-2.206"/>
<vertex x="0.8766" y="-2.2166"/>
<vertex x="0.8724" y="-2.2268"/>
<vertex x="0.8666" y="-2.2361"/>
<vertex x="0.8595" y="-2.2445"/>
<vertex x="0.8511" y="-2.2516"/>
<vertex x="0.8418" y="-2.2574"/>
<vertex x="0.8316" y="-2.2616"/>
<vertex x="0.821" y="-2.2641"/>
<vertex x="0.69" y="-2.265"/>
<vertex x="0.679" y="-2.2641"/>
<vertex x="0.6684" y="-2.2616"/>
<vertex x="0.6582" y="-2.2574"/>
<vertex x="0.6489" y="-2.2516"/>
<vertex x="0.6405" y="-2.2445"/>
<vertex x="0.6334" y="-2.2361"/>
<vertex x="0.6276" y="-2.2268"/>
<vertex x="0.6234" y="-2.2166"/>
<vertex x="0.6209" y="-2.206"/>
<vertex x="0.62" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.12" y="-1.92"/>
<vertex x="1.12" y="-1.645"/>
<vertex x="1.1209" y="-1.634"/>
<vertex x="1.1234" y="-1.6234"/>
<vertex x="1.1276" y="-1.6132"/>
<vertex x="1.1334" y="-1.6039"/>
<vertex x="1.1405" y="-1.5955"/>
<vertex x="1.1489" y="-1.5884"/>
<vertex x="1.1582" y="-1.5826"/>
<vertex x="1.1684" y="-1.5784"/>
<vertex x="1.179" y="-1.5759"/>
<vertex x="1.31" y="-1.575"/>
<vertex x="1.321" y="-1.5759"/>
<vertex x="1.3316" y="-1.5784"/>
<vertex x="1.3418" y="-1.5826"/>
<vertex x="1.3511" y="-1.5884"/>
<vertex x="1.3595" y="-1.5955"/>
<vertex x="1.3666" y="-1.6039"/>
<vertex x="1.3724" y="-1.6132"/>
<vertex x="1.3766" y="-1.6234"/>
<vertex x="1.3791" y="-1.634"/>
<vertex x="1.38" y="-1.645"/>
<vertex x="1.38" y="-2.195"/>
<vertex x="1.3791" y="-2.206"/>
<vertex x="1.3766" y="-2.2166"/>
<vertex x="1.3724" y="-2.2268"/>
<vertex x="1.3666" y="-2.2361"/>
<vertex x="1.3595" y="-2.2445"/>
<vertex x="1.3511" y="-2.2516"/>
<vertex x="1.3418" y="-2.2574"/>
<vertex x="1.3316" y="-2.2616"/>
<vertex x="1.321" y="-2.2641"/>
<vertex x="1.19" y="-2.265"/>
<vertex x="1.179" y="-2.2641"/>
<vertex x="1.1684" y="-2.2616"/>
<vertex x="1.1582" y="-2.2574"/>
<vertex x="1.1489" y="-2.2516"/>
<vertex x="1.1405" y="-2.2445"/>
<vertex x="1.1334" y="-2.2361"/>
<vertex x="1.1276" y="-2.2268"/>
<vertex x="1.1234" y="-2.2166"/>
<vertex x="1.1209" y="-2.206"/>
<vertex x="1.12" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.12" y="-1.92"/>
<vertex x="1.12" y="-1.645"/>
<vertex x="1.1209" y="-1.634"/>
<vertex x="1.1234" y="-1.6234"/>
<vertex x="1.1276" y="-1.6132"/>
<vertex x="1.1334" y="-1.6039"/>
<vertex x="1.1405" y="-1.5955"/>
<vertex x="1.1489" y="-1.5884"/>
<vertex x="1.1582" y="-1.5826"/>
<vertex x="1.1684" y="-1.5784"/>
<vertex x="1.179" y="-1.5759"/>
<vertex x="1.31" y="-1.575"/>
<vertex x="1.321" y="-1.5759"/>
<vertex x="1.3316" y="-1.5784"/>
<vertex x="1.3418" y="-1.5826"/>
<vertex x="1.3511" y="-1.5884"/>
<vertex x="1.3595" y="-1.5955"/>
<vertex x="1.3666" y="-1.6039"/>
<vertex x="1.3724" y="-1.6132"/>
<vertex x="1.3766" y="-1.6234"/>
<vertex x="1.3791" y="-1.634"/>
<vertex x="1.38" y="-1.645"/>
<vertex x="1.38" y="-2.195"/>
<vertex x="1.3791" y="-2.206"/>
<vertex x="1.3766" y="-2.2166"/>
<vertex x="1.3724" y="-2.2268"/>
<vertex x="1.3666" y="-2.2361"/>
<vertex x="1.3595" y="-2.2445"/>
<vertex x="1.3511" y="-2.2516"/>
<vertex x="1.3418" y="-2.2574"/>
<vertex x="1.3316" y="-2.2616"/>
<vertex x="1.321" y="-2.2641"/>
<vertex x="1.19" y="-2.265"/>
<vertex x="1.179" y="-2.2641"/>
<vertex x="1.1684" y="-2.2616"/>
<vertex x="1.1582" y="-2.2574"/>
<vertex x="1.1489" y="-2.2516"/>
<vertex x="1.1405" y="-2.2445"/>
<vertex x="1.1334" y="-2.2361"/>
<vertex x="1.1276" y="-2.2268"/>
<vertex x="1.1234" y="-2.2166"/>
<vertex x="1.1209" y="-2.206"/>
<vertex x="1.12" y="-2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.92" y="-1.38"/>
<vertex x="1.645" y="-1.38"/>
<vertex x="1.634" y="-1.3791"/>
<vertex x="1.6234" y="-1.3766"/>
<vertex x="1.6132" y="-1.3724"/>
<vertex x="1.6039" y="-1.3666"/>
<vertex x="1.5955" y="-1.3595"/>
<vertex x="1.5884" y="-1.3511"/>
<vertex x="1.5826" y="-1.3418"/>
<vertex x="1.5784" y="-1.3316"/>
<vertex x="1.5759" y="-1.321"/>
<vertex x="1.575" y="-1.19"/>
<vertex x="1.5759" y="-1.179"/>
<vertex x="1.5784" y="-1.1684"/>
<vertex x="1.5826" y="-1.1582"/>
<vertex x="1.5884" y="-1.1489"/>
<vertex x="1.5955" y="-1.1405"/>
<vertex x="1.6039" y="-1.1334"/>
<vertex x="1.6132" y="-1.1276"/>
<vertex x="1.6234" y="-1.1234"/>
<vertex x="1.634" y="-1.1209"/>
<vertex x="1.645" y="-1.12"/>
<vertex x="2.195" y="-1.12"/>
<vertex x="2.206" y="-1.1209"/>
<vertex x="2.2166" y="-1.1234"/>
<vertex x="2.2268" y="-1.1276"/>
<vertex x="2.2361" y="-1.1334"/>
<vertex x="2.2445" y="-1.1405"/>
<vertex x="2.2516" y="-1.1489"/>
<vertex x="2.2574" y="-1.1582"/>
<vertex x="2.2616" y="-1.1684"/>
<vertex x="2.2641" y="-1.179"/>
<vertex x="2.265" y="-1.31"/>
<vertex x="2.2641" y="-1.321"/>
<vertex x="2.2616" y="-1.3316"/>
<vertex x="2.2574" y="-1.3418"/>
<vertex x="2.2516" y="-1.3511"/>
<vertex x="2.2445" y="-1.3595"/>
<vertex x="2.2361" y="-1.3666"/>
<vertex x="2.2268" y="-1.3724"/>
<vertex x="2.2166" y="-1.3766"/>
<vertex x="2.206" y="-1.3791"/>
<vertex x="2.195" y="-1.38"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.92" y="-1.38"/>
<vertex x="1.645" y="-1.38"/>
<vertex x="1.634" y="-1.3791"/>
<vertex x="1.6234" y="-1.3766"/>
<vertex x="1.6132" y="-1.3724"/>
<vertex x="1.6039" y="-1.3666"/>
<vertex x="1.5955" y="-1.3595"/>
<vertex x="1.5884" y="-1.3511"/>
<vertex x="1.5826" y="-1.3418"/>
<vertex x="1.5784" y="-1.3316"/>
<vertex x="1.5759" y="-1.321"/>
<vertex x="1.575" y="-1.19"/>
<vertex x="1.5759" y="-1.179"/>
<vertex x="1.5784" y="-1.1684"/>
<vertex x="1.5826" y="-1.1582"/>
<vertex x="1.5884" y="-1.1489"/>
<vertex x="1.5955" y="-1.1405"/>
<vertex x="1.6039" y="-1.1334"/>
<vertex x="1.6132" y="-1.1276"/>
<vertex x="1.6234" y="-1.1234"/>
<vertex x="1.634" y="-1.1209"/>
<vertex x="1.645" y="-1.12"/>
<vertex x="2.195" y="-1.12"/>
<vertex x="2.206" y="-1.1209"/>
<vertex x="2.2166" y="-1.1234"/>
<vertex x="2.2268" y="-1.1276"/>
<vertex x="2.2361" y="-1.1334"/>
<vertex x="2.2445" y="-1.1405"/>
<vertex x="2.2516" y="-1.1489"/>
<vertex x="2.2574" y="-1.1582"/>
<vertex x="2.2616" y="-1.1684"/>
<vertex x="2.2641" y="-1.179"/>
<vertex x="2.265" y="-1.31"/>
<vertex x="2.2641" y="-1.321"/>
<vertex x="2.2616" y="-1.3316"/>
<vertex x="2.2574" y="-1.3418"/>
<vertex x="2.2516" y="-1.3511"/>
<vertex x="2.2445" y="-1.3595"/>
<vertex x="2.2361" y="-1.3666"/>
<vertex x="2.2268" y="-1.3724"/>
<vertex x="2.2166" y="-1.3766"/>
<vertex x="2.206" y="-1.3791"/>
<vertex x="2.195" y="-1.38"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.92" y="-0.88"/>
<vertex x="1.645" y="-0.88"/>
<vertex x="1.634" y="-0.8791"/>
<vertex x="1.6234" y="-0.8766"/>
<vertex x="1.6132" y="-0.8724"/>
<vertex x="1.6039" y="-0.8666"/>
<vertex x="1.5955" y="-0.8595"/>
<vertex x="1.5884" y="-0.8511"/>
<vertex x="1.5826" y="-0.8418"/>
<vertex x="1.5784" y="-0.8316"/>
<vertex x="1.5759" y="-0.821"/>
<vertex x="1.575" y="-0.69"/>
<vertex x="1.5759" y="-0.679"/>
<vertex x="1.5784" y="-0.6684"/>
<vertex x="1.5826" y="-0.6582"/>
<vertex x="1.5884" y="-0.6489"/>
<vertex x="1.5955" y="-0.6405"/>
<vertex x="1.6039" y="-0.6334"/>
<vertex x="1.6132" y="-0.6276"/>
<vertex x="1.6234" y="-0.6234"/>
<vertex x="1.634" y="-0.6209"/>
<vertex x="1.645" y="-0.62"/>
<vertex x="2.195" y="-0.62"/>
<vertex x="2.206" y="-0.6209"/>
<vertex x="2.2166" y="-0.6234"/>
<vertex x="2.2268" y="-0.6276"/>
<vertex x="2.2361" y="-0.6334"/>
<vertex x="2.2445" y="-0.6405"/>
<vertex x="2.2516" y="-0.6489"/>
<vertex x="2.2574" y="-0.6582"/>
<vertex x="2.2616" y="-0.6684"/>
<vertex x="2.2641" y="-0.679"/>
<vertex x="2.265" y="-0.81"/>
<vertex x="2.2641" y="-0.821"/>
<vertex x="2.2616" y="-0.8316"/>
<vertex x="2.2574" y="-0.8418"/>
<vertex x="2.2516" y="-0.8511"/>
<vertex x="2.2445" y="-0.8595"/>
<vertex x="2.2361" y="-0.8666"/>
<vertex x="2.2268" y="-0.8724"/>
<vertex x="2.2166" y="-0.8766"/>
<vertex x="2.206" y="-0.8791"/>
<vertex x="2.195" y="-0.88"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.92" y="-0.88"/>
<vertex x="1.645" y="-0.88"/>
<vertex x="1.634" y="-0.8791"/>
<vertex x="1.6234" y="-0.8766"/>
<vertex x="1.6132" y="-0.8724"/>
<vertex x="1.6039" y="-0.8666"/>
<vertex x="1.5955" y="-0.8595"/>
<vertex x="1.5884" y="-0.8511"/>
<vertex x="1.5826" y="-0.8418"/>
<vertex x="1.5784" y="-0.8316"/>
<vertex x="1.5759" y="-0.821"/>
<vertex x="1.575" y="-0.69"/>
<vertex x="1.5759" y="-0.679"/>
<vertex x="1.5784" y="-0.6684"/>
<vertex x="1.5826" y="-0.6582"/>
<vertex x="1.5884" y="-0.6489"/>
<vertex x="1.5955" y="-0.6405"/>
<vertex x="1.6039" y="-0.6334"/>
<vertex x="1.6132" y="-0.6276"/>
<vertex x="1.6234" y="-0.6234"/>
<vertex x="1.634" y="-0.6209"/>
<vertex x="1.645" y="-0.62"/>
<vertex x="2.195" y="-0.62"/>
<vertex x="2.206" y="-0.6209"/>
<vertex x="2.2166" y="-0.6234"/>
<vertex x="2.2268" y="-0.6276"/>
<vertex x="2.2361" y="-0.6334"/>
<vertex x="2.2445" y="-0.6405"/>
<vertex x="2.2516" y="-0.6489"/>
<vertex x="2.2574" y="-0.6582"/>
<vertex x="2.2616" y="-0.6684"/>
<vertex x="2.2641" y="-0.679"/>
<vertex x="2.265" y="-0.81"/>
<vertex x="2.2641" y="-0.821"/>
<vertex x="2.2616" y="-0.8316"/>
<vertex x="2.2574" y="-0.8418"/>
<vertex x="2.2516" y="-0.8511"/>
<vertex x="2.2445" y="-0.8595"/>
<vertex x="2.2361" y="-0.8666"/>
<vertex x="2.2268" y="-0.8724"/>
<vertex x="2.2166" y="-0.8766"/>
<vertex x="2.206" y="-0.8791"/>
<vertex x="2.195" y="-0.88"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.92" y="-0.38"/>
<vertex x="1.645" y="-0.38"/>
<vertex x="1.634" y="-0.3791"/>
<vertex x="1.6234" y="-0.3766"/>
<vertex x="1.6132" y="-0.3724"/>
<vertex x="1.6039" y="-0.3666"/>
<vertex x="1.5955" y="-0.3595"/>
<vertex x="1.5884" y="-0.3511"/>
<vertex x="1.5826" y="-0.3418"/>
<vertex x="1.5784" y="-0.3316"/>
<vertex x="1.5759" y="-0.321"/>
<vertex x="1.575" y="-0.19"/>
<vertex x="1.5759" y="-0.179"/>
<vertex x="1.5784" y="-0.1684"/>
<vertex x="1.5826" y="-0.1582"/>
<vertex x="1.5884" y="-0.1489"/>
<vertex x="1.5955" y="-0.1405"/>
<vertex x="1.6039" y="-0.1334"/>
<vertex x="1.6132" y="-0.1276"/>
<vertex x="1.6234" y="-0.1234"/>
<vertex x="1.634" y="-0.1209"/>
<vertex x="1.645" y="-0.12"/>
<vertex x="2.195" y="-0.12"/>
<vertex x="2.206" y="-0.1209"/>
<vertex x="2.2166" y="-0.1234"/>
<vertex x="2.2268" y="-0.1276"/>
<vertex x="2.2361" y="-0.1334"/>
<vertex x="2.2445" y="-0.1405"/>
<vertex x="2.2516" y="-0.1489"/>
<vertex x="2.2574" y="-0.1582"/>
<vertex x="2.2616" y="-0.1684"/>
<vertex x="2.2641" y="-0.179"/>
<vertex x="2.265" y="-0.31"/>
<vertex x="2.2641" y="-0.321"/>
<vertex x="2.2616" y="-0.3316"/>
<vertex x="2.2574" y="-0.3418"/>
<vertex x="2.2516" y="-0.3511"/>
<vertex x="2.2445" y="-0.3595"/>
<vertex x="2.2361" y="-0.3666"/>
<vertex x="2.2268" y="-0.3724"/>
<vertex x="2.2166" y="-0.3766"/>
<vertex x="2.206" y="-0.3791"/>
<vertex x="2.195" y="-0.38"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.92" y="-0.38"/>
<vertex x="1.645" y="-0.38"/>
<vertex x="1.634" y="-0.3791"/>
<vertex x="1.6234" y="-0.3766"/>
<vertex x="1.6132" y="-0.3724"/>
<vertex x="1.6039" y="-0.3666"/>
<vertex x="1.5955" y="-0.3595"/>
<vertex x="1.5884" y="-0.3511"/>
<vertex x="1.5826" y="-0.3418"/>
<vertex x="1.5784" y="-0.3316"/>
<vertex x="1.5759" y="-0.321"/>
<vertex x="1.575" y="-0.19"/>
<vertex x="1.5759" y="-0.179"/>
<vertex x="1.5784" y="-0.1684"/>
<vertex x="1.5826" y="-0.1582"/>
<vertex x="1.5884" y="-0.1489"/>
<vertex x="1.5955" y="-0.1405"/>
<vertex x="1.6039" y="-0.1334"/>
<vertex x="1.6132" y="-0.1276"/>
<vertex x="1.6234" y="-0.1234"/>
<vertex x="1.634" y="-0.1209"/>
<vertex x="1.645" y="-0.12"/>
<vertex x="2.195" y="-0.12"/>
<vertex x="2.206" y="-0.1209"/>
<vertex x="2.2166" y="-0.1234"/>
<vertex x="2.2268" y="-0.1276"/>
<vertex x="2.2361" y="-0.1334"/>
<vertex x="2.2445" y="-0.1405"/>
<vertex x="2.2516" y="-0.1489"/>
<vertex x="2.2574" y="-0.1582"/>
<vertex x="2.2616" y="-0.1684"/>
<vertex x="2.2641" y="-0.179"/>
<vertex x="2.265" y="-0.31"/>
<vertex x="2.2641" y="-0.321"/>
<vertex x="2.2616" y="-0.3316"/>
<vertex x="2.2574" y="-0.3418"/>
<vertex x="2.2516" y="-0.3511"/>
<vertex x="2.2445" y="-0.3595"/>
<vertex x="2.2361" y="-0.3666"/>
<vertex x="2.2268" y="-0.3724"/>
<vertex x="2.2166" y="-0.3766"/>
<vertex x="2.206" y="-0.3791"/>
<vertex x="2.195" y="-0.38"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.92" y="0.12"/>
<vertex x="1.645" y="0.12"/>
<vertex x="1.634" y="0.1209"/>
<vertex x="1.6234" y="0.1234"/>
<vertex x="1.6132" y="0.1276"/>
<vertex x="1.6039" y="0.1334"/>
<vertex x="1.5955" y="0.1405"/>
<vertex x="1.5884" y="0.1489"/>
<vertex x="1.5826" y="0.1582"/>
<vertex x="1.5784" y="0.1684"/>
<vertex x="1.5759" y="0.179"/>
<vertex x="1.575" y="0.31"/>
<vertex x="1.5759" y="0.321"/>
<vertex x="1.5784" y="0.3316"/>
<vertex x="1.5826" y="0.3418"/>
<vertex x="1.5884" y="0.3511"/>
<vertex x="1.5955" y="0.3595"/>
<vertex x="1.6039" y="0.3666"/>
<vertex x="1.6132" y="0.3724"/>
<vertex x="1.6234" y="0.3766"/>
<vertex x="1.634" y="0.3791"/>
<vertex x="1.645" y="0.38"/>
<vertex x="2.195" y="0.38"/>
<vertex x="2.206" y="0.3791"/>
<vertex x="2.2166" y="0.3766"/>
<vertex x="2.2268" y="0.3724"/>
<vertex x="2.2361" y="0.3666"/>
<vertex x="2.2445" y="0.3595"/>
<vertex x="2.2516" y="0.3511"/>
<vertex x="2.2574" y="0.3418"/>
<vertex x="2.2616" y="0.3316"/>
<vertex x="2.2641" y="0.321"/>
<vertex x="2.265" y="0.19"/>
<vertex x="2.2641" y="0.179"/>
<vertex x="2.2616" y="0.1684"/>
<vertex x="2.2574" y="0.1582"/>
<vertex x="2.2516" y="0.1489"/>
<vertex x="2.2445" y="0.1405"/>
<vertex x="2.2361" y="0.1334"/>
<vertex x="2.2268" y="0.1276"/>
<vertex x="2.2166" y="0.1234"/>
<vertex x="2.206" y="0.1209"/>
<vertex x="2.195" y="0.12"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.92" y="0.12"/>
<vertex x="1.645" y="0.12"/>
<vertex x="1.634" y="0.1209"/>
<vertex x="1.6234" y="0.1234"/>
<vertex x="1.6132" y="0.1276"/>
<vertex x="1.6039" y="0.1334"/>
<vertex x="1.5955" y="0.1405"/>
<vertex x="1.5884" y="0.1489"/>
<vertex x="1.5826" y="0.1582"/>
<vertex x="1.5784" y="0.1684"/>
<vertex x="1.5759" y="0.179"/>
<vertex x="1.575" y="0.31"/>
<vertex x="1.5759" y="0.321"/>
<vertex x="1.5784" y="0.3316"/>
<vertex x="1.5826" y="0.3418"/>
<vertex x="1.5884" y="0.3511"/>
<vertex x="1.5955" y="0.3595"/>
<vertex x="1.6039" y="0.3666"/>
<vertex x="1.6132" y="0.3724"/>
<vertex x="1.6234" y="0.3766"/>
<vertex x="1.634" y="0.3791"/>
<vertex x="1.645" y="0.38"/>
<vertex x="2.195" y="0.38"/>
<vertex x="2.206" y="0.3791"/>
<vertex x="2.2166" y="0.3766"/>
<vertex x="2.2268" y="0.3724"/>
<vertex x="2.2361" y="0.3666"/>
<vertex x="2.2445" y="0.3595"/>
<vertex x="2.2516" y="0.3511"/>
<vertex x="2.2574" y="0.3418"/>
<vertex x="2.2616" y="0.3316"/>
<vertex x="2.2641" y="0.321"/>
<vertex x="2.265" y="0.19"/>
<vertex x="2.2641" y="0.179"/>
<vertex x="2.2616" y="0.1684"/>
<vertex x="2.2574" y="0.1582"/>
<vertex x="2.2516" y="0.1489"/>
<vertex x="2.2445" y="0.1405"/>
<vertex x="2.2361" y="0.1334"/>
<vertex x="2.2268" y="0.1276"/>
<vertex x="2.2166" y="0.1234"/>
<vertex x="2.206" y="0.1209"/>
<vertex x="2.195" y="0.12"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.92" y="0.62"/>
<vertex x="1.645" y="0.62"/>
<vertex x="1.634" y="0.6209"/>
<vertex x="1.6234" y="0.6234"/>
<vertex x="1.6132" y="0.6276"/>
<vertex x="1.6039" y="0.6334"/>
<vertex x="1.5955" y="0.6405"/>
<vertex x="1.5884" y="0.6489"/>
<vertex x="1.5826" y="0.6582"/>
<vertex x="1.5784" y="0.6684"/>
<vertex x="1.5759" y="0.679"/>
<vertex x="1.575" y="0.81"/>
<vertex x="1.5759" y="0.821"/>
<vertex x="1.5784" y="0.8316"/>
<vertex x="1.5826" y="0.8418"/>
<vertex x="1.5884" y="0.8511"/>
<vertex x="1.5955" y="0.8595"/>
<vertex x="1.6039" y="0.8666"/>
<vertex x="1.6132" y="0.8724"/>
<vertex x="1.6234" y="0.8766"/>
<vertex x="1.634" y="0.8791"/>
<vertex x="1.645" y="0.88"/>
<vertex x="2.195" y="0.88"/>
<vertex x="2.206" y="0.8791"/>
<vertex x="2.2166" y="0.8766"/>
<vertex x="2.2268" y="0.8724"/>
<vertex x="2.2361" y="0.8666"/>
<vertex x="2.2445" y="0.8595"/>
<vertex x="2.2516" y="0.8511"/>
<vertex x="2.2574" y="0.8418"/>
<vertex x="2.2616" y="0.8316"/>
<vertex x="2.2641" y="0.821"/>
<vertex x="2.265" y="0.69"/>
<vertex x="2.2641" y="0.679"/>
<vertex x="2.2616" y="0.6684"/>
<vertex x="2.2574" y="0.6582"/>
<vertex x="2.2516" y="0.6489"/>
<vertex x="2.2445" y="0.6405"/>
<vertex x="2.2361" y="0.6334"/>
<vertex x="2.2268" y="0.6276"/>
<vertex x="2.2166" y="0.6234"/>
<vertex x="2.206" y="0.6209"/>
<vertex x="2.195" y="0.62"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.92" y="0.62"/>
<vertex x="1.645" y="0.62"/>
<vertex x="1.634" y="0.6209"/>
<vertex x="1.6234" y="0.6234"/>
<vertex x="1.6132" y="0.6276"/>
<vertex x="1.6039" y="0.6334"/>
<vertex x="1.5955" y="0.6405"/>
<vertex x="1.5884" y="0.6489"/>
<vertex x="1.5826" y="0.6582"/>
<vertex x="1.5784" y="0.6684"/>
<vertex x="1.5759" y="0.679"/>
<vertex x="1.575" y="0.81"/>
<vertex x="1.5759" y="0.821"/>
<vertex x="1.5784" y="0.8316"/>
<vertex x="1.5826" y="0.8418"/>
<vertex x="1.5884" y="0.8511"/>
<vertex x="1.5955" y="0.8595"/>
<vertex x="1.6039" y="0.8666"/>
<vertex x="1.6132" y="0.8724"/>
<vertex x="1.6234" y="0.8766"/>
<vertex x="1.634" y="0.8791"/>
<vertex x="1.645" y="0.88"/>
<vertex x="2.195" y="0.88"/>
<vertex x="2.206" y="0.8791"/>
<vertex x="2.2166" y="0.8766"/>
<vertex x="2.2268" y="0.8724"/>
<vertex x="2.2361" y="0.8666"/>
<vertex x="2.2445" y="0.8595"/>
<vertex x="2.2516" y="0.8511"/>
<vertex x="2.2574" y="0.8418"/>
<vertex x="2.2616" y="0.8316"/>
<vertex x="2.2641" y="0.821"/>
<vertex x="2.265" y="0.69"/>
<vertex x="2.2641" y="0.679"/>
<vertex x="2.2616" y="0.6684"/>
<vertex x="2.2574" y="0.6582"/>
<vertex x="2.2516" y="0.6489"/>
<vertex x="2.2445" y="0.6405"/>
<vertex x="2.2361" y="0.6334"/>
<vertex x="2.2268" y="0.6276"/>
<vertex x="2.2166" y="0.6234"/>
<vertex x="2.206" y="0.6209"/>
<vertex x="2.195" y="0.62"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.92" y="1.12"/>
<vertex x="1.645" y="1.12"/>
<vertex x="1.634" y="1.1209"/>
<vertex x="1.6234" y="1.1234"/>
<vertex x="1.6132" y="1.1276"/>
<vertex x="1.6039" y="1.1334"/>
<vertex x="1.5955" y="1.1405"/>
<vertex x="1.5884" y="1.1489"/>
<vertex x="1.5826" y="1.1582"/>
<vertex x="1.5784" y="1.1684"/>
<vertex x="1.5759" y="1.179"/>
<vertex x="1.575" y="1.31"/>
<vertex x="1.5759" y="1.321"/>
<vertex x="1.5784" y="1.3316"/>
<vertex x="1.5826" y="1.3418"/>
<vertex x="1.5884" y="1.3511"/>
<vertex x="1.5955" y="1.3595"/>
<vertex x="1.6039" y="1.3666"/>
<vertex x="1.6132" y="1.3724"/>
<vertex x="1.6234" y="1.3766"/>
<vertex x="1.634" y="1.3791"/>
<vertex x="1.645" y="1.38"/>
<vertex x="2.195" y="1.38"/>
<vertex x="2.206" y="1.3791"/>
<vertex x="2.2166" y="1.3766"/>
<vertex x="2.2268" y="1.3724"/>
<vertex x="2.2361" y="1.3666"/>
<vertex x="2.2445" y="1.3595"/>
<vertex x="2.2516" y="1.3511"/>
<vertex x="2.2574" y="1.3418"/>
<vertex x="2.2616" y="1.3316"/>
<vertex x="2.2641" y="1.321"/>
<vertex x="2.265" y="1.19"/>
<vertex x="2.2641" y="1.179"/>
<vertex x="2.2616" y="1.1684"/>
<vertex x="2.2574" y="1.1582"/>
<vertex x="2.2516" y="1.1489"/>
<vertex x="2.2445" y="1.1405"/>
<vertex x="2.2361" y="1.1334"/>
<vertex x="2.2268" y="1.1276"/>
<vertex x="2.2166" y="1.1234"/>
<vertex x="2.206" y="1.1209"/>
<vertex x="2.195" y="1.12"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.92" y="1.12"/>
<vertex x="1.645" y="1.12"/>
<vertex x="1.634" y="1.1209"/>
<vertex x="1.6234" y="1.1234"/>
<vertex x="1.6132" y="1.1276"/>
<vertex x="1.6039" y="1.1334"/>
<vertex x="1.5955" y="1.1405"/>
<vertex x="1.5884" y="1.1489"/>
<vertex x="1.5826" y="1.1582"/>
<vertex x="1.5784" y="1.1684"/>
<vertex x="1.5759" y="1.179"/>
<vertex x="1.575" y="1.31"/>
<vertex x="1.5759" y="1.321"/>
<vertex x="1.5784" y="1.3316"/>
<vertex x="1.5826" y="1.3418"/>
<vertex x="1.5884" y="1.3511"/>
<vertex x="1.5955" y="1.3595"/>
<vertex x="1.6039" y="1.3666"/>
<vertex x="1.6132" y="1.3724"/>
<vertex x="1.6234" y="1.3766"/>
<vertex x="1.634" y="1.3791"/>
<vertex x="1.645" y="1.38"/>
<vertex x="2.195" y="1.38"/>
<vertex x="2.206" y="1.3791"/>
<vertex x="2.2166" y="1.3766"/>
<vertex x="2.2268" y="1.3724"/>
<vertex x="2.2361" y="1.3666"/>
<vertex x="2.2445" y="1.3595"/>
<vertex x="2.2516" y="1.3511"/>
<vertex x="2.2574" y="1.3418"/>
<vertex x="2.2616" y="1.3316"/>
<vertex x="2.2641" y="1.321"/>
<vertex x="2.265" y="1.19"/>
<vertex x="2.2641" y="1.179"/>
<vertex x="2.2616" y="1.1684"/>
<vertex x="2.2574" y="1.1582"/>
<vertex x="2.2516" y="1.1489"/>
<vertex x="2.2445" y="1.1405"/>
<vertex x="2.2361" y="1.1334"/>
<vertex x="2.2268" y="1.1276"/>
<vertex x="2.2166" y="1.1234"/>
<vertex x="2.206" y="1.1209"/>
<vertex x="2.195" y="1.12"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.38" y="1.92"/>
<vertex x="1.38" y="1.645"/>
<vertex x="1.3791" y="1.634"/>
<vertex x="1.3766" y="1.6234"/>
<vertex x="1.3724" y="1.6132"/>
<vertex x="1.3666" y="1.6039"/>
<vertex x="1.3595" y="1.5955"/>
<vertex x="1.3511" y="1.5884"/>
<vertex x="1.3418" y="1.5826"/>
<vertex x="1.3316" y="1.5784"/>
<vertex x="1.321" y="1.5759"/>
<vertex x="1.19" y="1.575"/>
<vertex x="1.179" y="1.5759"/>
<vertex x="1.1684" y="1.5784"/>
<vertex x="1.1582" y="1.5826"/>
<vertex x="1.1489" y="1.5884"/>
<vertex x="1.1405" y="1.5955"/>
<vertex x="1.1334" y="1.6039"/>
<vertex x="1.1276" y="1.6132"/>
<vertex x="1.1234" y="1.6234"/>
<vertex x="1.1209" y="1.634"/>
<vertex x="1.12" y="1.645"/>
<vertex x="1.12" y="2.195"/>
<vertex x="1.1209" y="2.206"/>
<vertex x="1.1234" y="2.2166"/>
<vertex x="1.1276" y="2.2268"/>
<vertex x="1.1334" y="2.2361"/>
<vertex x="1.1405" y="2.2445"/>
<vertex x="1.1489" y="2.2516"/>
<vertex x="1.1582" y="2.2574"/>
<vertex x="1.1684" y="2.2616"/>
<vertex x="1.179" y="2.2641"/>
<vertex x="1.31" y="2.265"/>
<vertex x="1.321" y="2.2641"/>
<vertex x="1.3316" y="2.2616"/>
<vertex x="1.3418" y="2.2574"/>
<vertex x="1.3511" y="2.2516"/>
<vertex x="1.3595" y="2.2445"/>
<vertex x="1.3666" y="2.2361"/>
<vertex x="1.3724" y="2.2268"/>
<vertex x="1.3766" y="2.2166"/>
<vertex x="1.3791" y="2.206"/>
<vertex x="1.38" y="2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.38" y="1.92"/>
<vertex x="1.38" y="1.645"/>
<vertex x="1.3791" y="1.634"/>
<vertex x="1.3766" y="1.6234"/>
<vertex x="1.3724" y="1.6132"/>
<vertex x="1.3666" y="1.6039"/>
<vertex x="1.3595" y="1.5955"/>
<vertex x="1.3511" y="1.5884"/>
<vertex x="1.3418" y="1.5826"/>
<vertex x="1.3316" y="1.5784"/>
<vertex x="1.321" y="1.5759"/>
<vertex x="1.19" y="1.575"/>
<vertex x="1.179" y="1.5759"/>
<vertex x="1.1684" y="1.5784"/>
<vertex x="1.1582" y="1.5826"/>
<vertex x="1.1489" y="1.5884"/>
<vertex x="1.1405" y="1.5955"/>
<vertex x="1.1334" y="1.6039"/>
<vertex x="1.1276" y="1.6132"/>
<vertex x="1.1234" y="1.6234"/>
<vertex x="1.1209" y="1.634"/>
<vertex x="1.12" y="1.645"/>
<vertex x="1.12" y="2.195"/>
<vertex x="1.1209" y="2.206"/>
<vertex x="1.1234" y="2.2166"/>
<vertex x="1.1276" y="2.2268"/>
<vertex x="1.1334" y="2.2361"/>
<vertex x="1.1405" y="2.2445"/>
<vertex x="1.1489" y="2.2516"/>
<vertex x="1.1582" y="2.2574"/>
<vertex x="1.1684" y="2.2616"/>
<vertex x="1.179" y="2.2641"/>
<vertex x="1.31" y="2.265"/>
<vertex x="1.321" y="2.2641"/>
<vertex x="1.3316" y="2.2616"/>
<vertex x="1.3418" y="2.2574"/>
<vertex x="1.3511" y="2.2516"/>
<vertex x="1.3595" y="2.2445"/>
<vertex x="1.3666" y="2.2361"/>
<vertex x="1.3724" y="2.2268"/>
<vertex x="1.3766" y="2.2166"/>
<vertex x="1.3791" y="2.206"/>
<vertex x="1.38" y="2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="0.88" y="1.92"/>
<vertex x="0.88" y="1.645"/>
<vertex x="0.8791" y="1.634"/>
<vertex x="0.8766" y="1.6234"/>
<vertex x="0.8724" y="1.6132"/>
<vertex x="0.8666" y="1.6039"/>
<vertex x="0.8595" y="1.5955"/>
<vertex x="0.8511" y="1.5884"/>
<vertex x="0.8418" y="1.5826"/>
<vertex x="0.8316" y="1.5784"/>
<vertex x="0.821" y="1.5759"/>
<vertex x="0.69" y="1.575"/>
<vertex x="0.679" y="1.5759"/>
<vertex x="0.6684" y="1.5784"/>
<vertex x="0.6582" y="1.5826"/>
<vertex x="0.6489" y="1.5884"/>
<vertex x="0.6405" y="1.5955"/>
<vertex x="0.6334" y="1.6039"/>
<vertex x="0.6276" y="1.6132"/>
<vertex x="0.6234" y="1.6234"/>
<vertex x="0.6209" y="1.634"/>
<vertex x="0.62" y="1.645"/>
<vertex x="0.62" y="2.195"/>
<vertex x="0.6209" y="2.206"/>
<vertex x="0.6234" y="2.2166"/>
<vertex x="0.6276" y="2.2268"/>
<vertex x="0.6334" y="2.2361"/>
<vertex x="0.6405" y="2.2445"/>
<vertex x="0.6489" y="2.2516"/>
<vertex x="0.6582" y="2.2574"/>
<vertex x="0.6684" y="2.2616"/>
<vertex x="0.679" y="2.2641"/>
<vertex x="0.81" y="2.265"/>
<vertex x="0.821" y="2.2641"/>
<vertex x="0.8316" y="2.2616"/>
<vertex x="0.8418" y="2.2574"/>
<vertex x="0.8511" y="2.2516"/>
<vertex x="0.8595" y="2.2445"/>
<vertex x="0.8666" y="2.2361"/>
<vertex x="0.8724" y="2.2268"/>
<vertex x="0.8766" y="2.2166"/>
<vertex x="0.8791" y="2.206"/>
<vertex x="0.88" y="2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="0.88" y="1.92"/>
<vertex x="0.88" y="1.645"/>
<vertex x="0.8791" y="1.634"/>
<vertex x="0.8766" y="1.6234"/>
<vertex x="0.8724" y="1.6132"/>
<vertex x="0.8666" y="1.6039"/>
<vertex x="0.8595" y="1.5955"/>
<vertex x="0.8511" y="1.5884"/>
<vertex x="0.8418" y="1.5826"/>
<vertex x="0.8316" y="1.5784"/>
<vertex x="0.821" y="1.5759"/>
<vertex x="0.69" y="1.575"/>
<vertex x="0.679" y="1.5759"/>
<vertex x="0.6684" y="1.5784"/>
<vertex x="0.6582" y="1.5826"/>
<vertex x="0.6489" y="1.5884"/>
<vertex x="0.6405" y="1.5955"/>
<vertex x="0.6334" y="1.6039"/>
<vertex x="0.6276" y="1.6132"/>
<vertex x="0.6234" y="1.6234"/>
<vertex x="0.6209" y="1.634"/>
<vertex x="0.62" y="1.645"/>
<vertex x="0.62" y="2.195"/>
<vertex x="0.6209" y="2.206"/>
<vertex x="0.6234" y="2.2166"/>
<vertex x="0.6276" y="2.2268"/>
<vertex x="0.6334" y="2.2361"/>
<vertex x="0.6405" y="2.2445"/>
<vertex x="0.6489" y="2.2516"/>
<vertex x="0.6582" y="2.2574"/>
<vertex x="0.6684" y="2.2616"/>
<vertex x="0.679" y="2.2641"/>
<vertex x="0.81" y="2.265"/>
<vertex x="0.821" y="2.2641"/>
<vertex x="0.8316" y="2.2616"/>
<vertex x="0.8418" y="2.2574"/>
<vertex x="0.8511" y="2.2516"/>
<vertex x="0.8595" y="2.2445"/>
<vertex x="0.8666" y="2.2361"/>
<vertex x="0.8724" y="2.2268"/>
<vertex x="0.8766" y="2.2166"/>
<vertex x="0.8791" y="2.206"/>
<vertex x="0.88" y="2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="0.38" y="1.92"/>
<vertex x="0.38" y="1.645"/>
<vertex x="0.3791" y="1.634"/>
<vertex x="0.3766" y="1.6234"/>
<vertex x="0.3724" y="1.6132"/>
<vertex x="0.3666" y="1.6039"/>
<vertex x="0.3595" y="1.5955"/>
<vertex x="0.3511" y="1.5884"/>
<vertex x="0.3418" y="1.5826"/>
<vertex x="0.3316" y="1.5784"/>
<vertex x="0.321" y="1.5759"/>
<vertex x="0.19" y="1.575"/>
<vertex x="0.179" y="1.5759"/>
<vertex x="0.1684" y="1.5784"/>
<vertex x="0.1582" y="1.5826"/>
<vertex x="0.1489" y="1.5884"/>
<vertex x="0.1405" y="1.5955"/>
<vertex x="0.1334" y="1.6039"/>
<vertex x="0.1276" y="1.6132"/>
<vertex x="0.1234" y="1.6234"/>
<vertex x="0.1209" y="1.634"/>
<vertex x="0.12" y="1.645"/>
<vertex x="0.12" y="2.195"/>
<vertex x="0.1209" y="2.206"/>
<vertex x="0.1234" y="2.2166"/>
<vertex x="0.1276" y="2.2268"/>
<vertex x="0.1334" y="2.2361"/>
<vertex x="0.1405" y="2.2445"/>
<vertex x="0.1489" y="2.2516"/>
<vertex x="0.1582" y="2.2574"/>
<vertex x="0.1684" y="2.2616"/>
<vertex x="0.179" y="2.2641"/>
<vertex x="0.31" y="2.265"/>
<vertex x="0.321" y="2.2641"/>
<vertex x="0.3316" y="2.2616"/>
<vertex x="0.3418" y="2.2574"/>
<vertex x="0.3511" y="2.2516"/>
<vertex x="0.3595" y="2.2445"/>
<vertex x="0.3666" y="2.2361"/>
<vertex x="0.3724" y="2.2268"/>
<vertex x="0.3766" y="2.2166"/>
<vertex x="0.3791" y="2.206"/>
<vertex x="0.38" y="2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="0.38" y="1.92"/>
<vertex x="0.38" y="1.645"/>
<vertex x="0.3791" y="1.634"/>
<vertex x="0.3766" y="1.6234"/>
<vertex x="0.3724" y="1.6132"/>
<vertex x="0.3666" y="1.6039"/>
<vertex x="0.3595" y="1.5955"/>
<vertex x="0.3511" y="1.5884"/>
<vertex x="0.3418" y="1.5826"/>
<vertex x="0.3316" y="1.5784"/>
<vertex x="0.321" y="1.5759"/>
<vertex x="0.19" y="1.575"/>
<vertex x="0.179" y="1.5759"/>
<vertex x="0.1684" y="1.5784"/>
<vertex x="0.1582" y="1.5826"/>
<vertex x="0.1489" y="1.5884"/>
<vertex x="0.1405" y="1.5955"/>
<vertex x="0.1334" y="1.6039"/>
<vertex x="0.1276" y="1.6132"/>
<vertex x="0.1234" y="1.6234"/>
<vertex x="0.1209" y="1.634"/>
<vertex x="0.12" y="1.645"/>
<vertex x="0.12" y="2.195"/>
<vertex x="0.1209" y="2.206"/>
<vertex x="0.1234" y="2.2166"/>
<vertex x="0.1276" y="2.2268"/>
<vertex x="0.1334" y="2.2361"/>
<vertex x="0.1405" y="2.2445"/>
<vertex x="0.1489" y="2.2516"/>
<vertex x="0.1582" y="2.2574"/>
<vertex x="0.1684" y="2.2616"/>
<vertex x="0.179" y="2.2641"/>
<vertex x="0.31" y="2.265"/>
<vertex x="0.321" y="2.2641"/>
<vertex x="0.3316" y="2.2616"/>
<vertex x="0.3418" y="2.2574"/>
<vertex x="0.3511" y="2.2516"/>
<vertex x="0.3595" y="2.2445"/>
<vertex x="0.3666" y="2.2361"/>
<vertex x="0.3724" y="2.2268"/>
<vertex x="0.3766" y="2.2166"/>
<vertex x="0.3791" y="2.206"/>
<vertex x="0.38" y="2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-0.12" y="1.92"/>
<vertex x="-0.12" y="1.645"/>
<vertex x="-0.1209" y="1.634"/>
<vertex x="-0.1234" y="1.6234"/>
<vertex x="-0.1276" y="1.6132"/>
<vertex x="-0.1334" y="1.6039"/>
<vertex x="-0.1405" y="1.5955"/>
<vertex x="-0.1489" y="1.5884"/>
<vertex x="-0.1582" y="1.5826"/>
<vertex x="-0.1684" y="1.5784"/>
<vertex x="-0.179" y="1.5759"/>
<vertex x="-0.31" y="1.575"/>
<vertex x="-0.321" y="1.5759"/>
<vertex x="-0.3316" y="1.5784"/>
<vertex x="-0.3418" y="1.5826"/>
<vertex x="-0.3511" y="1.5884"/>
<vertex x="-0.3595" y="1.5955"/>
<vertex x="-0.3666" y="1.6039"/>
<vertex x="-0.3724" y="1.6132"/>
<vertex x="-0.3766" y="1.6234"/>
<vertex x="-0.3791" y="1.634"/>
<vertex x="-0.38" y="1.645"/>
<vertex x="-0.38" y="2.195"/>
<vertex x="-0.3791" y="2.206"/>
<vertex x="-0.3766" y="2.2166"/>
<vertex x="-0.3724" y="2.2268"/>
<vertex x="-0.3666" y="2.2361"/>
<vertex x="-0.3595" y="2.2445"/>
<vertex x="-0.3511" y="2.2516"/>
<vertex x="-0.3418" y="2.2574"/>
<vertex x="-0.3316" y="2.2616"/>
<vertex x="-0.321" y="2.2641"/>
<vertex x="-0.19" y="2.265"/>
<vertex x="-0.179" y="2.2641"/>
<vertex x="-0.1684" y="2.2616"/>
<vertex x="-0.1582" y="2.2574"/>
<vertex x="-0.1489" y="2.2516"/>
<vertex x="-0.1405" y="2.2445"/>
<vertex x="-0.1334" y="2.2361"/>
<vertex x="-0.1276" y="2.2268"/>
<vertex x="-0.1234" y="2.2166"/>
<vertex x="-0.1209" y="2.206"/>
<vertex x="-0.12" y="2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.12" y="1.92"/>
<vertex x="-0.12" y="1.645"/>
<vertex x="-0.1209" y="1.634"/>
<vertex x="-0.1234" y="1.6234"/>
<vertex x="-0.1276" y="1.6132"/>
<vertex x="-0.1334" y="1.6039"/>
<vertex x="-0.1405" y="1.5955"/>
<vertex x="-0.1489" y="1.5884"/>
<vertex x="-0.1582" y="1.5826"/>
<vertex x="-0.1684" y="1.5784"/>
<vertex x="-0.179" y="1.5759"/>
<vertex x="-0.31" y="1.575"/>
<vertex x="-0.321" y="1.5759"/>
<vertex x="-0.3316" y="1.5784"/>
<vertex x="-0.3418" y="1.5826"/>
<vertex x="-0.3511" y="1.5884"/>
<vertex x="-0.3595" y="1.5955"/>
<vertex x="-0.3666" y="1.6039"/>
<vertex x="-0.3724" y="1.6132"/>
<vertex x="-0.3766" y="1.6234"/>
<vertex x="-0.3791" y="1.634"/>
<vertex x="-0.38" y="1.645"/>
<vertex x="-0.38" y="2.195"/>
<vertex x="-0.3791" y="2.206"/>
<vertex x="-0.3766" y="2.2166"/>
<vertex x="-0.3724" y="2.2268"/>
<vertex x="-0.3666" y="2.2361"/>
<vertex x="-0.3595" y="2.2445"/>
<vertex x="-0.3511" y="2.2516"/>
<vertex x="-0.3418" y="2.2574"/>
<vertex x="-0.3316" y="2.2616"/>
<vertex x="-0.321" y="2.2641"/>
<vertex x="-0.19" y="2.265"/>
<vertex x="-0.179" y="2.2641"/>
<vertex x="-0.1684" y="2.2616"/>
<vertex x="-0.1582" y="2.2574"/>
<vertex x="-0.1489" y="2.2516"/>
<vertex x="-0.1405" y="2.2445"/>
<vertex x="-0.1334" y="2.2361"/>
<vertex x="-0.1276" y="2.2268"/>
<vertex x="-0.1234" y="2.2166"/>
<vertex x="-0.1209" y="2.206"/>
<vertex x="-0.12" y="2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-0.62" y="1.92"/>
<vertex x="-0.62" y="1.645"/>
<vertex x="-0.6209" y="1.634"/>
<vertex x="-0.6234" y="1.6234"/>
<vertex x="-0.6276" y="1.6132"/>
<vertex x="-0.6334" y="1.6039"/>
<vertex x="-0.6405" y="1.5955"/>
<vertex x="-0.6489" y="1.5884"/>
<vertex x="-0.6582" y="1.5826"/>
<vertex x="-0.6684" y="1.5784"/>
<vertex x="-0.679" y="1.5759"/>
<vertex x="-0.81" y="1.575"/>
<vertex x="-0.821" y="1.5759"/>
<vertex x="-0.8316" y="1.5784"/>
<vertex x="-0.8418" y="1.5826"/>
<vertex x="-0.8511" y="1.5884"/>
<vertex x="-0.8595" y="1.5955"/>
<vertex x="-0.8666" y="1.6039"/>
<vertex x="-0.8724" y="1.6132"/>
<vertex x="-0.8766" y="1.6234"/>
<vertex x="-0.8791" y="1.634"/>
<vertex x="-0.88" y="1.645"/>
<vertex x="-0.88" y="2.195"/>
<vertex x="-0.8791" y="2.206"/>
<vertex x="-0.8766" y="2.2166"/>
<vertex x="-0.8724" y="2.2268"/>
<vertex x="-0.8666" y="2.2361"/>
<vertex x="-0.8595" y="2.2445"/>
<vertex x="-0.8511" y="2.2516"/>
<vertex x="-0.8418" y="2.2574"/>
<vertex x="-0.8316" y="2.2616"/>
<vertex x="-0.821" y="2.2641"/>
<vertex x="-0.69" y="2.265"/>
<vertex x="-0.679" y="2.2641"/>
<vertex x="-0.6684" y="2.2616"/>
<vertex x="-0.6582" y="2.2574"/>
<vertex x="-0.6489" y="2.2516"/>
<vertex x="-0.6405" y="2.2445"/>
<vertex x="-0.6334" y="2.2361"/>
<vertex x="-0.6276" y="2.2268"/>
<vertex x="-0.6234" y="2.2166"/>
<vertex x="-0.6209" y="2.206"/>
<vertex x="-0.62" y="2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.62" y="1.92"/>
<vertex x="-0.62" y="1.645"/>
<vertex x="-0.6209" y="1.634"/>
<vertex x="-0.6234" y="1.6234"/>
<vertex x="-0.6276" y="1.6132"/>
<vertex x="-0.6334" y="1.6039"/>
<vertex x="-0.6405" y="1.5955"/>
<vertex x="-0.6489" y="1.5884"/>
<vertex x="-0.6582" y="1.5826"/>
<vertex x="-0.6684" y="1.5784"/>
<vertex x="-0.679" y="1.5759"/>
<vertex x="-0.81" y="1.575"/>
<vertex x="-0.821" y="1.5759"/>
<vertex x="-0.8316" y="1.5784"/>
<vertex x="-0.8418" y="1.5826"/>
<vertex x="-0.8511" y="1.5884"/>
<vertex x="-0.8595" y="1.5955"/>
<vertex x="-0.8666" y="1.6039"/>
<vertex x="-0.8724" y="1.6132"/>
<vertex x="-0.8766" y="1.6234"/>
<vertex x="-0.8791" y="1.634"/>
<vertex x="-0.88" y="1.645"/>
<vertex x="-0.88" y="2.195"/>
<vertex x="-0.8791" y="2.206"/>
<vertex x="-0.8766" y="2.2166"/>
<vertex x="-0.8724" y="2.2268"/>
<vertex x="-0.8666" y="2.2361"/>
<vertex x="-0.8595" y="2.2445"/>
<vertex x="-0.8511" y="2.2516"/>
<vertex x="-0.8418" y="2.2574"/>
<vertex x="-0.8316" y="2.2616"/>
<vertex x="-0.821" y="2.2641"/>
<vertex x="-0.69" y="2.265"/>
<vertex x="-0.679" y="2.2641"/>
<vertex x="-0.6684" y="2.2616"/>
<vertex x="-0.6582" y="2.2574"/>
<vertex x="-0.6489" y="2.2516"/>
<vertex x="-0.6405" y="2.2445"/>
<vertex x="-0.6334" y="2.2361"/>
<vertex x="-0.6276" y="2.2268"/>
<vertex x="-0.6234" y="2.2166"/>
<vertex x="-0.6209" y="2.206"/>
<vertex x="-0.62" y="2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-1.12" y="1.92"/>
<vertex x="-1.12" y="1.645"/>
<vertex x="-1.1209" y="1.634"/>
<vertex x="-1.1234" y="1.6234"/>
<vertex x="-1.1276" y="1.6132"/>
<vertex x="-1.1334" y="1.6039"/>
<vertex x="-1.1405" y="1.5955"/>
<vertex x="-1.1489" y="1.5884"/>
<vertex x="-1.1582" y="1.5826"/>
<vertex x="-1.1684" y="1.5784"/>
<vertex x="-1.179" y="1.5759"/>
<vertex x="-1.31" y="1.575"/>
<vertex x="-1.321" y="1.5759"/>
<vertex x="-1.3316" y="1.5784"/>
<vertex x="-1.3418" y="1.5826"/>
<vertex x="-1.3511" y="1.5884"/>
<vertex x="-1.3595" y="1.5955"/>
<vertex x="-1.3666" y="1.6039"/>
<vertex x="-1.3724" y="1.6132"/>
<vertex x="-1.3766" y="1.6234"/>
<vertex x="-1.3791" y="1.634"/>
<vertex x="-1.38" y="1.645"/>
<vertex x="-1.38" y="2.195"/>
<vertex x="-1.3791" y="2.206"/>
<vertex x="-1.3766" y="2.2166"/>
<vertex x="-1.3724" y="2.2268"/>
<vertex x="-1.3666" y="2.2361"/>
<vertex x="-1.3595" y="2.2445"/>
<vertex x="-1.3511" y="2.2516"/>
<vertex x="-1.3418" y="2.2574"/>
<vertex x="-1.3316" y="2.2616"/>
<vertex x="-1.321" y="2.2641"/>
<vertex x="-1.19" y="2.265"/>
<vertex x="-1.179" y="2.2641"/>
<vertex x="-1.1684" y="2.2616"/>
<vertex x="-1.1582" y="2.2574"/>
<vertex x="-1.1489" y="2.2516"/>
<vertex x="-1.1405" y="2.2445"/>
<vertex x="-1.1334" y="2.2361"/>
<vertex x="-1.1276" y="2.2268"/>
<vertex x="-1.1234" y="2.2166"/>
<vertex x="-1.1209" y="2.206"/>
<vertex x="-1.12" y="2.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.12" y="1.92"/>
<vertex x="-1.12" y="1.645"/>
<vertex x="-1.1209" y="1.634"/>
<vertex x="-1.1234" y="1.6234"/>
<vertex x="-1.1276" y="1.6132"/>
<vertex x="-1.1334" y="1.6039"/>
<vertex x="-1.1405" y="1.5955"/>
<vertex x="-1.1489" y="1.5884"/>
<vertex x="-1.1582" y="1.5826"/>
<vertex x="-1.1684" y="1.5784"/>
<vertex x="-1.179" y="1.5759"/>
<vertex x="-1.31" y="1.575"/>
<vertex x="-1.321" y="1.5759"/>
<vertex x="-1.3316" y="1.5784"/>
<vertex x="-1.3418" y="1.5826"/>
<vertex x="-1.3511" y="1.5884"/>
<vertex x="-1.3595" y="1.5955"/>
<vertex x="-1.3666" y="1.6039"/>
<vertex x="-1.3724" y="1.6132"/>
<vertex x="-1.3766" y="1.6234"/>
<vertex x="-1.3791" y="1.634"/>
<vertex x="-1.38" y="1.645"/>
<vertex x="-1.38" y="2.195"/>
<vertex x="-1.3791" y="2.206"/>
<vertex x="-1.3766" y="2.2166"/>
<vertex x="-1.3724" y="2.2268"/>
<vertex x="-1.3666" y="2.2361"/>
<vertex x="-1.3595" y="2.2445"/>
<vertex x="-1.3511" y="2.2516"/>
<vertex x="-1.3418" y="2.2574"/>
<vertex x="-1.3316" y="2.2616"/>
<vertex x="-1.321" y="2.2641"/>
<vertex x="-1.19" y="2.265"/>
<vertex x="-1.179" y="2.2641"/>
<vertex x="-1.1684" y="2.2616"/>
<vertex x="-1.1582" y="2.2574"/>
<vertex x="-1.1489" y="2.2516"/>
<vertex x="-1.1405" y="2.2445"/>
<vertex x="-1.1334" y="2.2361"/>
<vertex x="-1.1276" y="2.2268"/>
<vertex x="-1.1234" y="2.2166"/>
<vertex x="-1.1209" y="2.206"/>
<vertex x="-1.12" y="2.195"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-1.92" y="1.38"/>
<vertex x="-1.645" y="1.38"/>
<vertex x="-1.634" y="1.3791"/>
<vertex x="-1.6234" y="1.3766"/>
<vertex x="-1.6132" y="1.3724"/>
<vertex x="-1.6039" y="1.3666"/>
<vertex x="-1.5955" y="1.3595"/>
<vertex x="-1.5884" y="1.3511"/>
<vertex x="-1.5826" y="1.3418"/>
<vertex x="-1.5784" y="1.3316"/>
<vertex x="-1.5759" y="1.321"/>
<vertex x="-1.575" y="1.19"/>
<vertex x="-1.5759" y="1.179"/>
<vertex x="-1.5784" y="1.1684"/>
<vertex x="-1.5826" y="1.1582"/>
<vertex x="-1.5884" y="1.1489"/>
<vertex x="-1.5955" y="1.1405"/>
<vertex x="-1.6039" y="1.1334"/>
<vertex x="-1.6132" y="1.1276"/>
<vertex x="-1.6234" y="1.1234"/>
<vertex x="-1.634" y="1.1209"/>
<vertex x="-1.645" y="1.12"/>
<vertex x="-2.195" y="1.12"/>
<vertex x="-2.206" y="1.1209"/>
<vertex x="-2.2166" y="1.1234"/>
<vertex x="-2.2268" y="1.1276"/>
<vertex x="-2.2361" y="1.1334"/>
<vertex x="-2.2445" y="1.1405"/>
<vertex x="-2.2516" y="1.1489"/>
<vertex x="-2.2574" y="1.1582"/>
<vertex x="-2.2616" y="1.1684"/>
<vertex x="-2.2641" y="1.179"/>
<vertex x="-2.265" y="1.31"/>
<vertex x="-2.2641" y="1.321"/>
<vertex x="-2.2616" y="1.3316"/>
<vertex x="-2.2574" y="1.3418"/>
<vertex x="-2.2516" y="1.3511"/>
<vertex x="-2.2445" y="1.3595"/>
<vertex x="-2.2361" y="1.3666"/>
<vertex x="-2.2268" y="1.3724"/>
<vertex x="-2.2166" y="1.3766"/>
<vertex x="-2.206" y="1.3791"/>
<vertex x="-2.195" y="1.38"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.92" y="1.38"/>
<vertex x="-1.645" y="1.38"/>
<vertex x="-1.634" y="1.3791"/>
<vertex x="-1.6234" y="1.3766"/>
<vertex x="-1.6132" y="1.3724"/>
<vertex x="-1.6039" y="1.3666"/>
<vertex x="-1.5955" y="1.3595"/>
<vertex x="-1.5884" y="1.3511"/>
<vertex x="-1.5826" y="1.3418"/>
<vertex x="-1.5784" y="1.3316"/>
<vertex x="-1.5759" y="1.321"/>
<vertex x="-1.575" y="1.19"/>
<vertex x="-1.5759" y="1.179"/>
<vertex x="-1.5784" y="1.1684"/>
<vertex x="-1.5826" y="1.1582"/>
<vertex x="-1.5884" y="1.1489"/>
<vertex x="-1.5955" y="1.1405"/>
<vertex x="-1.6039" y="1.1334"/>
<vertex x="-1.6132" y="1.1276"/>
<vertex x="-1.6234" y="1.1234"/>
<vertex x="-1.634" y="1.1209"/>
<vertex x="-1.645" y="1.12"/>
<vertex x="-2.195" y="1.12"/>
<vertex x="-2.206" y="1.1209"/>
<vertex x="-2.2166" y="1.1234"/>
<vertex x="-2.2268" y="1.1276"/>
<vertex x="-2.2361" y="1.1334"/>
<vertex x="-2.2445" y="1.1405"/>
<vertex x="-2.2516" y="1.1489"/>
<vertex x="-2.2574" y="1.1582"/>
<vertex x="-2.2616" y="1.1684"/>
<vertex x="-2.2641" y="1.179"/>
<vertex x="-2.265" y="1.31"/>
<vertex x="-2.2641" y="1.321"/>
<vertex x="-2.2616" y="1.3316"/>
<vertex x="-2.2574" y="1.3418"/>
<vertex x="-2.2516" y="1.3511"/>
<vertex x="-2.2445" y="1.3595"/>
<vertex x="-2.2361" y="1.3666"/>
<vertex x="-2.2268" y="1.3724"/>
<vertex x="-2.2166" y="1.3766"/>
<vertex x="-2.206" y="1.3791"/>
<vertex x="-2.195" y="1.38"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-1.92" y="0.88"/>
<vertex x="-1.645" y="0.88"/>
<vertex x="-1.634" y="0.8791"/>
<vertex x="-1.6234" y="0.8766"/>
<vertex x="-1.6132" y="0.8724"/>
<vertex x="-1.6039" y="0.8666"/>
<vertex x="-1.5955" y="0.8595"/>
<vertex x="-1.5884" y="0.8511"/>
<vertex x="-1.5826" y="0.8418"/>
<vertex x="-1.5784" y="0.8316"/>
<vertex x="-1.5759" y="0.821"/>
<vertex x="-1.575" y="0.69"/>
<vertex x="-1.5759" y="0.679"/>
<vertex x="-1.5784" y="0.6684"/>
<vertex x="-1.5826" y="0.6582"/>
<vertex x="-1.5884" y="0.6489"/>
<vertex x="-1.5955" y="0.6405"/>
<vertex x="-1.6039" y="0.6334"/>
<vertex x="-1.6132" y="0.6276"/>
<vertex x="-1.6234" y="0.6234"/>
<vertex x="-1.634" y="0.6209"/>
<vertex x="-1.645" y="0.62"/>
<vertex x="-2.195" y="0.62"/>
<vertex x="-2.206" y="0.6209"/>
<vertex x="-2.2166" y="0.6234"/>
<vertex x="-2.2268" y="0.6276"/>
<vertex x="-2.2361" y="0.6334"/>
<vertex x="-2.2445" y="0.6405"/>
<vertex x="-2.2516" y="0.6489"/>
<vertex x="-2.2574" y="0.6582"/>
<vertex x="-2.2616" y="0.6684"/>
<vertex x="-2.2641" y="0.679"/>
<vertex x="-2.265" y="0.81"/>
<vertex x="-2.2641" y="0.821"/>
<vertex x="-2.2616" y="0.8316"/>
<vertex x="-2.2574" y="0.8418"/>
<vertex x="-2.2516" y="0.8511"/>
<vertex x="-2.2445" y="0.8595"/>
<vertex x="-2.2361" y="0.8666"/>
<vertex x="-2.2268" y="0.8724"/>
<vertex x="-2.2166" y="0.8766"/>
<vertex x="-2.206" y="0.8791"/>
<vertex x="-2.195" y="0.88"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.92" y="0.88"/>
<vertex x="-1.645" y="0.88"/>
<vertex x="-1.634" y="0.8791"/>
<vertex x="-1.6234" y="0.8766"/>
<vertex x="-1.6132" y="0.8724"/>
<vertex x="-1.6039" y="0.8666"/>
<vertex x="-1.5955" y="0.8595"/>
<vertex x="-1.5884" y="0.8511"/>
<vertex x="-1.5826" y="0.8418"/>
<vertex x="-1.5784" y="0.8316"/>
<vertex x="-1.5759" y="0.821"/>
<vertex x="-1.575" y="0.69"/>
<vertex x="-1.5759" y="0.679"/>
<vertex x="-1.5784" y="0.6684"/>
<vertex x="-1.5826" y="0.6582"/>
<vertex x="-1.5884" y="0.6489"/>
<vertex x="-1.5955" y="0.6405"/>
<vertex x="-1.6039" y="0.6334"/>
<vertex x="-1.6132" y="0.6276"/>
<vertex x="-1.6234" y="0.6234"/>
<vertex x="-1.634" y="0.6209"/>
<vertex x="-1.645" y="0.62"/>
<vertex x="-2.195" y="0.62"/>
<vertex x="-2.206" y="0.6209"/>
<vertex x="-2.2166" y="0.6234"/>
<vertex x="-2.2268" y="0.6276"/>
<vertex x="-2.2361" y="0.6334"/>
<vertex x="-2.2445" y="0.6405"/>
<vertex x="-2.2516" y="0.6489"/>
<vertex x="-2.2574" y="0.6582"/>
<vertex x="-2.2616" y="0.6684"/>
<vertex x="-2.2641" y="0.679"/>
<vertex x="-2.265" y="0.81"/>
<vertex x="-2.2641" y="0.821"/>
<vertex x="-2.2616" y="0.8316"/>
<vertex x="-2.2574" y="0.8418"/>
<vertex x="-2.2516" y="0.8511"/>
<vertex x="-2.2445" y="0.8595"/>
<vertex x="-2.2361" y="0.8666"/>
<vertex x="-2.2268" y="0.8724"/>
<vertex x="-2.2166" y="0.8766"/>
<vertex x="-2.206" y="0.8791"/>
<vertex x="-2.195" y="0.88"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-1.92" y="0.38"/>
<vertex x="-1.645" y="0.38"/>
<vertex x="-1.634" y="0.3791"/>
<vertex x="-1.6234" y="0.3766"/>
<vertex x="-1.6132" y="0.3724"/>
<vertex x="-1.6039" y="0.3666"/>
<vertex x="-1.5955" y="0.3595"/>
<vertex x="-1.5884" y="0.3511"/>
<vertex x="-1.5826" y="0.3418"/>
<vertex x="-1.5784" y="0.3316"/>
<vertex x="-1.5759" y="0.321"/>
<vertex x="-1.575" y="0.19"/>
<vertex x="-1.5759" y="0.179"/>
<vertex x="-1.5784" y="0.1684"/>
<vertex x="-1.5826" y="0.1582"/>
<vertex x="-1.5884" y="0.1489"/>
<vertex x="-1.5955" y="0.1405"/>
<vertex x="-1.6039" y="0.1334"/>
<vertex x="-1.6132" y="0.1276"/>
<vertex x="-1.6234" y="0.1234"/>
<vertex x="-1.634" y="0.1209"/>
<vertex x="-1.645" y="0.12"/>
<vertex x="-2.195" y="0.12"/>
<vertex x="-2.206" y="0.1209"/>
<vertex x="-2.2166" y="0.1234"/>
<vertex x="-2.2268" y="0.1276"/>
<vertex x="-2.2361" y="0.1334"/>
<vertex x="-2.2445" y="0.1405"/>
<vertex x="-2.2516" y="0.1489"/>
<vertex x="-2.2574" y="0.1582"/>
<vertex x="-2.2616" y="0.1684"/>
<vertex x="-2.2641" y="0.179"/>
<vertex x="-2.265" y="0.31"/>
<vertex x="-2.2641" y="0.321"/>
<vertex x="-2.2616" y="0.3316"/>
<vertex x="-2.2574" y="0.3418"/>
<vertex x="-2.2516" y="0.3511"/>
<vertex x="-2.2445" y="0.3595"/>
<vertex x="-2.2361" y="0.3666"/>
<vertex x="-2.2268" y="0.3724"/>
<vertex x="-2.2166" y="0.3766"/>
<vertex x="-2.206" y="0.3791"/>
<vertex x="-2.195" y="0.38"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.92" y="0.38"/>
<vertex x="-1.645" y="0.38"/>
<vertex x="-1.634" y="0.3791"/>
<vertex x="-1.6234" y="0.3766"/>
<vertex x="-1.6132" y="0.3724"/>
<vertex x="-1.6039" y="0.3666"/>
<vertex x="-1.5955" y="0.3595"/>
<vertex x="-1.5884" y="0.3511"/>
<vertex x="-1.5826" y="0.3418"/>
<vertex x="-1.5784" y="0.3316"/>
<vertex x="-1.5759" y="0.321"/>
<vertex x="-1.575" y="0.19"/>
<vertex x="-1.5759" y="0.179"/>
<vertex x="-1.5784" y="0.1684"/>
<vertex x="-1.5826" y="0.1582"/>
<vertex x="-1.5884" y="0.1489"/>
<vertex x="-1.5955" y="0.1405"/>
<vertex x="-1.6039" y="0.1334"/>
<vertex x="-1.6132" y="0.1276"/>
<vertex x="-1.6234" y="0.1234"/>
<vertex x="-1.634" y="0.1209"/>
<vertex x="-1.645" y="0.12"/>
<vertex x="-2.195" y="0.12"/>
<vertex x="-2.206" y="0.1209"/>
<vertex x="-2.2166" y="0.1234"/>
<vertex x="-2.2268" y="0.1276"/>
<vertex x="-2.2361" y="0.1334"/>
<vertex x="-2.2445" y="0.1405"/>
<vertex x="-2.2516" y="0.1489"/>
<vertex x="-2.2574" y="0.1582"/>
<vertex x="-2.2616" y="0.1684"/>
<vertex x="-2.2641" y="0.179"/>
<vertex x="-2.265" y="0.31"/>
<vertex x="-2.2641" y="0.321"/>
<vertex x="-2.2616" y="0.3316"/>
<vertex x="-2.2574" y="0.3418"/>
<vertex x="-2.2516" y="0.3511"/>
<vertex x="-2.2445" y="0.3595"/>
<vertex x="-2.2361" y="0.3666"/>
<vertex x="-2.2268" y="0.3724"/>
<vertex x="-2.2166" y="0.3766"/>
<vertex x="-2.206" y="0.3791"/>
<vertex x="-2.195" y="0.38"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-1.92" y="-0.12"/>
<vertex x="-1.645" y="-0.12"/>
<vertex x="-1.634" y="-0.1209"/>
<vertex x="-1.6234" y="-0.1234"/>
<vertex x="-1.6132" y="-0.1276"/>
<vertex x="-1.6039" y="-0.1334"/>
<vertex x="-1.5955" y="-0.1405"/>
<vertex x="-1.5884" y="-0.1489"/>
<vertex x="-1.5826" y="-0.1582"/>
<vertex x="-1.5784" y="-0.1684"/>
<vertex x="-1.5759" y="-0.179"/>
<vertex x="-1.575" y="-0.31"/>
<vertex x="-1.5759" y="-0.321"/>
<vertex x="-1.5784" y="-0.3316"/>
<vertex x="-1.5826" y="-0.3418"/>
<vertex x="-1.5884" y="-0.3511"/>
<vertex x="-1.5955" y="-0.3595"/>
<vertex x="-1.6039" y="-0.3666"/>
<vertex x="-1.6132" y="-0.3724"/>
<vertex x="-1.6234" y="-0.3766"/>
<vertex x="-1.634" y="-0.3791"/>
<vertex x="-1.645" y="-0.38"/>
<vertex x="-2.195" y="-0.38"/>
<vertex x="-2.206" y="-0.3791"/>
<vertex x="-2.2166" y="-0.3766"/>
<vertex x="-2.2268" y="-0.3724"/>
<vertex x="-2.2361" y="-0.3666"/>
<vertex x="-2.2445" y="-0.3595"/>
<vertex x="-2.2516" y="-0.3511"/>
<vertex x="-2.2574" y="-0.3418"/>
<vertex x="-2.2616" y="-0.3316"/>
<vertex x="-2.2641" y="-0.321"/>
<vertex x="-2.265" y="-0.19"/>
<vertex x="-2.2641" y="-0.179"/>
<vertex x="-2.2616" y="-0.1684"/>
<vertex x="-2.2574" y="-0.1582"/>
<vertex x="-2.2516" y="-0.1489"/>
<vertex x="-2.2445" y="-0.1405"/>
<vertex x="-2.2361" y="-0.1334"/>
<vertex x="-2.2268" y="-0.1276"/>
<vertex x="-2.2166" y="-0.1234"/>
<vertex x="-2.206" y="-0.1209"/>
<vertex x="-2.195" y="-0.12"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.92" y="-0.12"/>
<vertex x="-1.645" y="-0.12"/>
<vertex x="-1.634" y="-0.1209"/>
<vertex x="-1.6234" y="-0.1234"/>
<vertex x="-1.6132" y="-0.1276"/>
<vertex x="-1.6039" y="-0.1334"/>
<vertex x="-1.5955" y="-0.1405"/>
<vertex x="-1.5884" y="-0.1489"/>
<vertex x="-1.5826" y="-0.1582"/>
<vertex x="-1.5784" y="-0.1684"/>
<vertex x="-1.5759" y="-0.179"/>
<vertex x="-1.575" y="-0.31"/>
<vertex x="-1.5759" y="-0.321"/>
<vertex x="-1.5784" y="-0.3316"/>
<vertex x="-1.5826" y="-0.3418"/>
<vertex x="-1.5884" y="-0.3511"/>
<vertex x="-1.5955" y="-0.3595"/>
<vertex x="-1.6039" y="-0.3666"/>
<vertex x="-1.6132" y="-0.3724"/>
<vertex x="-1.6234" y="-0.3766"/>
<vertex x="-1.634" y="-0.3791"/>
<vertex x="-1.645" y="-0.38"/>
<vertex x="-2.195" y="-0.38"/>
<vertex x="-2.206" y="-0.3791"/>
<vertex x="-2.2166" y="-0.3766"/>
<vertex x="-2.2268" y="-0.3724"/>
<vertex x="-2.2361" y="-0.3666"/>
<vertex x="-2.2445" y="-0.3595"/>
<vertex x="-2.2516" y="-0.3511"/>
<vertex x="-2.2574" y="-0.3418"/>
<vertex x="-2.2616" y="-0.3316"/>
<vertex x="-2.2641" y="-0.321"/>
<vertex x="-2.265" y="-0.19"/>
<vertex x="-2.2641" y="-0.179"/>
<vertex x="-2.2616" y="-0.1684"/>
<vertex x="-2.2574" y="-0.1582"/>
<vertex x="-2.2516" y="-0.1489"/>
<vertex x="-2.2445" y="-0.1405"/>
<vertex x="-2.2361" y="-0.1334"/>
<vertex x="-2.2268" y="-0.1276"/>
<vertex x="-2.2166" y="-0.1234"/>
<vertex x="-2.206" y="-0.1209"/>
<vertex x="-2.195" y="-0.12"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-1.92" y="-0.62"/>
<vertex x="-1.645" y="-0.62"/>
<vertex x="-1.634" y="-0.6209"/>
<vertex x="-1.6234" y="-0.6234"/>
<vertex x="-1.6132" y="-0.6276"/>
<vertex x="-1.6039" y="-0.6334"/>
<vertex x="-1.5955" y="-0.6405"/>
<vertex x="-1.5884" y="-0.6489"/>
<vertex x="-1.5826" y="-0.6582"/>
<vertex x="-1.5784" y="-0.6684"/>
<vertex x="-1.5759" y="-0.679"/>
<vertex x="-1.575" y="-0.81"/>
<vertex x="-1.5759" y="-0.821"/>
<vertex x="-1.5784" y="-0.8316"/>
<vertex x="-1.5826" y="-0.8418"/>
<vertex x="-1.5884" y="-0.8511"/>
<vertex x="-1.5955" y="-0.8595"/>
<vertex x="-1.6039" y="-0.8666"/>
<vertex x="-1.6132" y="-0.8724"/>
<vertex x="-1.6234" y="-0.8766"/>
<vertex x="-1.634" y="-0.8791"/>
<vertex x="-1.645" y="-0.88"/>
<vertex x="-2.195" y="-0.88"/>
<vertex x="-2.206" y="-0.8791"/>
<vertex x="-2.2166" y="-0.8766"/>
<vertex x="-2.2268" y="-0.8724"/>
<vertex x="-2.2361" y="-0.8666"/>
<vertex x="-2.2445" y="-0.8595"/>
<vertex x="-2.2516" y="-0.8511"/>
<vertex x="-2.2574" y="-0.8418"/>
<vertex x="-2.2616" y="-0.8316"/>
<vertex x="-2.2641" y="-0.821"/>
<vertex x="-2.265" y="-0.69"/>
<vertex x="-2.2641" y="-0.679"/>
<vertex x="-2.2616" y="-0.6684"/>
<vertex x="-2.2574" y="-0.6582"/>
<vertex x="-2.2516" y="-0.6489"/>
<vertex x="-2.2445" y="-0.6405"/>
<vertex x="-2.2361" y="-0.6334"/>
<vertex x="-2.2268" y="-0.6276"/>
<vertex x="-2.2166" y="-0.6234"/>
<vertex x="-2.206" y="-0.6209"/>
<vertex x="-2.195" y="-0.62"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.92" y="-0.62"/>
<vertex x="-1.645" y="-0.62"/>
<vertex x="-1.634" y="-0.6209"/>
<vertex x="-1.6234" y="-0.6234"/>
<vertex x="-1.6132" y="-0.6276"/>
<vertex x="-1.6039" y="-0.6334"/>
<vertex x="-1.5955" y="-0.6405"/>
<vertex x="-1.5884" y="-0.6489"/>
<vertex x="-1.5826" y="-0.6582"/>
<vertex x="-1.5784" y="-0.6684"/>
<vertex x="-1.5759" y="-0.679"/>
<vertex x="-1.575" y="-0.81"/>
<vertex x="-1.5759" y="-0.821"/>
<vertex x="-1.5784" y="-0.8316"/>
<vertex x="-1.5826" y="-0.8418"/>
<vertex x="-1.5884" y="-0.8511"/>
<vertex x="-1.5955" y="-0.8595"/>
<vertex x="-1.6039" y="-0.8666"/>
<vertex x="-1.6132" y="-0.8724"/>
<vertex x="-1.6234" y="-0.8766"/>
<vertex x="-1.634" y="-0.8791"/>
<vertex x="-1.645" y="-0.88"/>
<vertex x="-2.195" y="-0.88"/>
<vertex x="-2.206" y="-0.8791"/>
<vertex x="-2.2166" y="-0.8766"/>
<vertex x="-2.2268" y="-0.8724"/>
<vertex x="-2.2361" y="-0.8666"/>
<vertex x="-2.2445" y="-0.8595"/>
<vertex x="-2.2516" y="-0.8511"/>
<vertex x="-2.2574" y="-0.8418"/>
<vertex x="-2.2616" y="-0.8316"/>
<vertex x="-2.2641" y="-0.821"/>
<vertex x="-2.265" y="-0.69"/>
<vertex x="-2.2641" y="-0.679"/>
<vertex x="-2.2616" y="-0.6684"/>
<vertex x="-2.2574" y="-0.6582"/>
<vertex x="-2.2516" y="-0.6489"/>
<vertex x="-2.2445" y="-0.6405"/>
<vertex x="-2.2361" y="-0.6334"/>
<vertex x="-2.2268" y="-0.6276"/>
<vertex x="-2.2166" y="-0.6234"/>
<vertex x="-2.206" y="-0.6209"/>
<vertex x="-2.195" y="-0.62"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="-1.92" y="-1.12"/>
<vertex x="-1.645" y="-1.12"/>
<vertex x="-1.634" y="-1.1209"/>
<vertex x="-1.6234" y="-1.1234"/>
<vertex x="-1.6132" y="-1.1276"/>
<vertex x="-1.6039" y="-1.1334"/>
<vertex x="-1.5955" y="-1.1405"/>
<vertex x="-1.5884" y="-1.1489"/>
<vertex x="-1.5826" y="-1.1582"/>
<vertex x="-1.5784" y="-1.1684"/>
<vertex x="-1.5759" y="-1.179"/>
<vertex x="-1.575" y="-1.31"/>
<vertex x="-1.5759" y="-1.321"/>
<vertex x="-1.5784" y="-1.3316"/>
<vertex x="-1.5826" y="-1.3418"/>
<vertex x="-1.5884" y="-1.3511"/>
<vertex x="-1.5955" y="-1.3595"/>
<vertex x="-1.6039" y="-1.3666"/>
<vertex x="-1.6132" y="-1.3724"/>
<vertex x="-1.6234" y="-1.3766"/>
<vertex x="-1.634" y="-1.3791"/>
<vertex x="-1.645" y="-1.38"/>
<vertex x="-2.195" y="-1.38"/>
<vertex x="-2.206" y="-1.3791"/>
<vertex x="-2.2166" y="-1.3766"/>
<vertex x="-2.2268" y="-1.3724"/>
<vertex x="-2.2361" y="-1.3666"/>
<vertex x="-2.2445" y="-1.3595"/>
<vertex x="-2.2516" y="-1.3511"/>
<vertex x="-2.2574" y="-1.3418"/>
<vertex x="-2.2616" y="-1.3316"/>
<vertex x="-2.2641" y="-1.321"/>
<vertex x="-2.265" y="-1.19"/>
<vertex x="-2.2641" y="-1.179"/>
<vertex x="-2.2616" y="-1.1684"/>
<vertex x="-2.2574" y="-1.1582"/>
<vertex x="-2.2516" y="-1.1489"/>
<vertex x="-2.2445" y="-1.1405"/>
<vertex x="-2.2361" y="-1.1334"/>
<vertex x="-2.2268" y="-1.1276"/>
<vertex x="-2.2166" y="-1.1234"/>
<vertex x="-2.206" y="-1.1209"/>
<vertex x="-2.195" y="-1.12"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-1.92" y="-1.12"/>
<vertex x="-1.645" y="-1.12"/>
<vertex x="-1.634" y="-1.1209"/>
<vertex x="-1.6234" y="-1.1234"/>
<vertex x="-1.6132" y="-1.1276"/>
<vertex x="-1.6039" y="-1.1334"/>
<vertex x="-1.5955" y="-1.1405"/>
<vertex x="-1.5884" y="-1.1489"/>
<vertex x="-1.5826" y="-1.1582"/>
<vertex x="-1.5784" y="-1.1684"/>
<vertex x="-1.5759" y="-1.179"/>
<vertex x="-1.575" y="-1.31"/>
<vertex x="-1.5759" y="-1.321"/>
<vertex x="-1.5784" y="-1.3316"/>
<vertex x="-1.5826" y="-1.3418"/>
<vertex x="-1.5884" y="-1.3511"/>
<vertex x="-1.5955" y="-1.3595"/>
<vertex x="-1.6039" y="-1.3666"/>
<vertex x="-1.6132" y="-1.3724"/>
<vertex x="-1.6234" y="-1.3766"/>
<vertex x="-1.634" y="-1.3791"/>
<vertex x="-1.645" y="-1.38"/>
<vertex x="-2.195" y="-1.38"/>
<vertex x="-2.206" y="-1.3791"/>
<vertex x="-2.2166" y="-1.3766"/>
<vertex x="-2.2268" y="-1.3724"/>
<vertex x="-2.2361" y="-1.3666"/>
<vertex x="-2.2445" y="-1.3595"/>
<vertex x="-2.2516" y="-1.3511"/>
<vertex x="-2.2574" y="-1.3418"/>
<vertex x="-2.2616" y="-1.3316"/>
<vertex x="-2.2641" y="-1.321"/>
<vertex x="-2.265" y="-1.19"/>
<vertex x="-2.2641" y="-1.179"/>
<vertex x="-2.2616" y="-1.1684"/>
<vertex x="-2.2574" y="-1.1582"/>
<vertex x="-2.2516" y="-1.1489"/>
<vertex x="-2.2445" y="-1.1405"/>
<vertex x="-2.2361" y="-1.1334"/>
<vertex x="-2.2268" y="-1.1276"/>
<vertex x="-2.2166" y="-1.1234"/>
<vertex x="-2.206" y="-1.1209"/>
<vertex x="-2.195" y="-1.12"/>
</polygon>
<polygon width="0.01" layer="29">
<vertex x="1.35" y="-1.3"/>
<vertex x="-1.35" y="-1.3"/>
<vertex x="-1.35" y="1.3"/>
<vertex x="1.35" y="1.3"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.155" y="-1.105"/>
<vertex x="0.195" y="-1.105"/>
<vertex x="0.195" y="-0.195"/>
<vertex x="1.155" y="-0.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="1.155" y="0.195"/>
<vertex x="0.195" y="0.195"/>
<vertex x="0.195" y="1.105"/>
<vertex x="1.155" y="1.105"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.195" y="-1.105"/>
<vertex x="-1.155" y="-1.105"/>
<vertex x="-1.155" y="-0.195"/>
<vertex x="-0.195" y="-0.195"/>
</polygon>
<polygon width="0.01" layer="31">
<vertex x="-0.195" y="0.195"/>
<vertex x="-1.155" y="0.195"/>
<vertex x="-1.155" y="1.105"/>
<vertex x="-0.195" y="1.105"/>
</polygon>
<wire x1="-1.37" y1="-1.65" x2="-1.13" y2="-1.65" width="0.025" layer="51"/>
<wire x1="-1.13" y1="-1.65" x2="-1.13" y2="-2" width="0.025" layer="51"/>
<wire x1="-1.13" y1="-2" x2="-1.37" y2="-2" width="0.025" layer="51"/>
<wire x1="-1.37" y1="-2" x2="-1.37" y2="-1.65" width="0.025" layer="51"/>
<wire x1="-0.87" y1="-1.65" x2="-0.63" y2="-1.65" width="0.025" layer="51"/>
<wire x1="-0.63" y1="-1.65" x2="-0.63" y2="-2" width="0.025" layer="51"/>
<wire x1="-0.63" y1="-2" x2="-0.87" y2="-2" width="0.025" layer="51"/>
<wire x1="-0.87" y1="-2" x2="-0.87" y2="-1.65" width="0.025" layer="51"/>
<wire x1="-0.37" y1="-1.65" x2="-0.13" y2="-1.65" width="0.025" layer="51"/>
<wire x1="-0.13" y1="-1.65" x2="-0.13" y2="-2" width="0.025" layer="51"/>
<wire x1="-0.13" y1="-2" x2="-0.37" y2="-2" width="0.025" layer="51"/>
<wire x1="-0.37" y1="-2" x2="-0.37" y2="-1.65" width="0.025" layer="51"/>
<wire x1="0.13" y1="-1.65" x2="0.37" y2="-1.65" width="0.025" layer="51"/>
<wire x1="0.37" y1="-1.65" x2="0.37" y2="-2" width="0.025" layer="51"/>
<wire x1="0.37" y1="-2" x2="0.13" y2="-2" width="0.025" layer="51"/>
<wire x1="0.13" y1="-2" x2="0.13" y2="-1.65" width="0.025" layer="51"/>
<wire x1="0.63" y1="-1.65" x2="0.87" y2="-1.65" width="0.025" layer="51"/>
<wire x1="0.87" y1="-1.65" x2="0.87" y2="-2" width="0.025" layer="51"/>
<wire x1="0.87" y1="-2" x2="0.63" y2="-2" width="0.025" layer="51"/>
<wire x1="0.63" y1="-2" x2="0.63" y2="-1.65" width="0.025" layer="51"/>
<wire x1="1.13" y1="-1.65" x2="1.37" y2="-1.65" width="0.025" layer="51"/>
<wire x1="1.37" y1="-1.65" x2="1.37" y2="-2" width="0.025" layer="51"/>
<wire x1="1.37" y1="-2" x2="1.13" y2="-2" width="0.025" layer="51"/>
<wire x1="1.13" y1="-2" x2="1.13" y2="-1.65" width="0.025" layer="51"/>
<wire x1="1.65" y1="-1.37" x2="1.65" y2="-1.13" width="0.025" layer="51"/>
<wire x1="1.65" y1="-1.13" x2="2" y2="-1.13" width="0.025" layer="51"/>
<wire x1="2" y1="-1.13" x2="2" y2="-1.37" width="0.025" layer="51"/>
<wire x1="2" y1="-1.37" x2="1.65" y2="-1.37" width="0.025" layer="51"/>
<wire x1="1.65" y1="-0.87" x2="1.65" y2="-0.63" width="0.025" layer="51"/>
<wire x1="1.65" y1="-0.63" x2="2" y2="-0.63" width="0.025" layer="51"/>
<wire x1="2" y1="-0.63" x2="2" y2="-0.87" width="0.025" layer="51"/>
<wire x1="2" y1="-0.87" x2="1.65" y2="-0.87" width="0.025" layer="51"/>
<wire x1="1.65" y1="-0.37" x2="1.65" y2="-0.13" width="0.025" layer="51"/>
<wire x1="1.65" y1="-0.13" x2="2" y2="-0.13" width="0.025" layer="51"/>
<wire x1="2" y1="-0.13" x2="2" y2="-0.37" width="0.025" layer="51"/>
<wire x1="2" y1="-0.37" x2="1.65" y2="-0.37" width="0.025" layer="51"/>
<wire x1="1.65" y1="0.13" x2="1.65" y2="0.37" width="0.025" layer="51"/>
<wire x1="1.65" y1="0.37" x2="2" y2="0.37" width="0.025" layer="51"/>
<wire x1="2" y1="0.37" x2="2" y2="0.13" width="0.025" layer="51"/>
<wire x1="2" y1="0.13" x2="1.65" y2="0.13" width="0.025" layer="51"/>
<wire x1="1.65" y1="0.63" x2="1.65" y2="0.87" width="0.025" layer="51"/>
<wire x1="1.65" y1="0.87" x2="2" y2="0.87" width="0.025" layer="51"/>
<wire x1="2" y1="0.87" x2="2" y2="0.63" width="0.025" layer="51"/>
<wire x1="2" y1="0.63" x2="1.65" y2="0.63" width="0.025" layer="51"/>
<wire x1="1.65" y1="1.13" x2="1.65" y2="1.37" width="0.025" layer="51"/>
<wire x1="1.65" y1="1.37" x2="2" y2="1.37" width="0.025" layer="51"/>
<wire x1="2" y1="1.37" x2="2" y2="1.13" width="0.025" layer="51"/>
<wire x1="2" y1="1.13" x2="1.65" y2="1.13" width="0.025" layer="51"/>
<wire x1="1.37" y1="1.65" x2="1.13" y2="1.65" width="0.025" layer="51"/>
<wire x1="1.13" y1="1.65" x2="1.13" y2="2" width="0.025" layer="51"/>
<wire x1="1.13" y1="2" x2="1.37" y2="2" width="0.025" layer="51"/>
<wire x1="1.37" y1="2" x2="1.37" y2="1.65" width="0.025" layer="51"/>
<wire x1="0.87" y1="1.65" x2="0.63" y2="1.65" width="0.025" layer="51"/>
<wire x1="0.63" y1="1.65" x2="0.63" y2="2" width="0.025" layer="51"/>
<wire x1="0.63" y1="2" x2="0.87" y2="2" width="0.025" layer="51"/>
<wire x1="0.87" y1="2" x2="0.87" y2="1.65" width="0.025" layer="51"/>
<wire x1="0.37" y1="1.65" x2="0.13" y2="1.65" width="0.025" layer="51"/>
<wire x1="0.13" y1="1.65" x2="0.13" y2="2" width="0.025" layer="51"/>
<wire x1="0.13" y1="2" x2="0.37" y2="2" width="0.025" layer="51"/>
<wire x1="0.37" y1="2" x2="0.37" y2="1.65" width="0.025" layer="51"/>
<wire x1="-0.13" y1="1.65" x2="-0.37" y2="1.65" width="0.025" layer="51"/>
<wire x1="-0.37" y1="1.65" x2="-0.37" y2="2" width="0.025" layer="51"/>
<wire x1="-0.37" y1="2" x2="-0.13" y2="2" width="0.025" layer="51"/>
<wire x1="-0.13" y1="2" x2="-0.13" y2="1.65" width="0.025" layer="51"/>
<wire x1="-0.63" y1="1.65" x2="-0.87" y2="1.65" width="0.025" layer="51"/>
<wire x1="-0.87" y1="1.65" x2="-0.87" y2="2" width="0.025" layer="51"/>
<wire x1="-0.87" y1="2" x2="-0.63" y2="2" width="0.025" layer="51"/>
<wire x1="-0.63" y1="2" x2="-0.63" y2="1.65" width="0.025" layer="51"/>
<wire x1="-1.13" y1="1.65" x2="-1.37" y2="1.65" width="0.025" layer="51"/>
<wire x1="-1.37" y1="1.65" x2="-1.37" y2="2" width="0.025" layer="51"/>
<wire x1="-1.37" y1="2" x2="-1.13" y2="2" width="0.025" layer="51"/>
<wire x1="-1.13" y1="2" x2="-1.13" y2="1.65" width="0.025" layer="51"/>
<wire x1="-1.65" y1="1.37" x2="-1.65" y2="1.13" width="0.025" layer="51"/>
<wire x1="-1.65" y1="1.13" x2="-2" y2="1.13" width="0.025" layer="51"/>
<wire x1="-2" y1="1.13" x2="-2" y2="1.37" width="0.025" layer="51"/>
<wire x1="-2" y1="1.37" x2="-1.65" y2="1.37" width="0.025" layer="51"/>
<wire x1="-1.65" y1="0.87" x2="-1.65" y2="0.63" width="0.025" layer="51"/>
<wire x1="-1.65" y1="0.63" x2="-2" y2="0.63" width="0.025" layer="51"/>
<wire x1="-2" y1="0.63" x2="-2" y2="0.87" width="0.025" layer="51"/>
<wire x1="-2" y1="0.87" x2="-1.65" y2="0.87" width="0.025" layer="51"/>
<wire x1="-1.65" y1="0.37" x2="-1.65" y2="0.13" width="0.025" layer="51"/>
<wire x1="-1.65" y1="0.13" x2="-2" y2="0.13" width="0.025" layer="51"/>
<wire x1="-2" y1="0.13" x2="-2" y2="0.37" width="0.025" layer="51"/>
<wire x1="-2" y1="0.37" x2="-1.65" y2="0.37" width="0.025" layer="51"/>
<wire x1="-1.65" y1="-0.13" x2="-1.65" y2="-0.37" width="0.025" layer="51"/>
<wire x1="-1.65" y1="-0.37" x2="-2" y2="-0.37" width="0.025" layer="51"/>
<wire x1="-2" y1="-0.37" x2="-2" y2="-0.13" width="0.025" layer="51"/>
<wire x1="-2" y1="-0.13" x2="-1.65" y2="-0.13" width="0.025" layer="51"/>
<wire x1="-1.65" y1="-0.63" x2="-1.65" y2="-0.87" width="0.025" layer="51"/>
<wire x1="-1.65" y1="-0.87" x2="-2" y2="-0.87" width="0.025" layer="51"/>
<wire x1="-2" y1="-0.87" x2="-2" y2="-0.63" width="0.025" layer="51"/>
<wire x1="-2" y1="-0.63" x2="-1.65" y2="-0.63" width="0.025" layer="51"/>
<wire x1="-1.65" y1="-1.13" x2="-1.65" y2="-1.37" width="0.025" layer="51"/>
<wire x1="-1.65" y1="-1.37" x2="-2" y2="-1.37" width="0.025" layer="51"/>
<wire x1="-2" y1="-1.37" x2="-2" y2="-1.13" width="0.025" layer="51"/>
<wire x1="-2" y1="-1.13" x2="-1.65" y2="-1.13" width="0.025" layer="51"/>
<wire x1="1.35" y1="-1.3" x2="-1.35" y2="-1.3" width="0.025" layer="51"/>
<wire x1="-1.35" y1="-1.3" x2="-1.35" y2="1.3" width="0.025" layer="51"/>
<wire x1="-1.35" y1="1.3" x2="1.35" y2="1.3" width="0.025" layer="51"/>
<wire x1="1.35" y1="1.3" x2="1.35" y2="-1.3" width="0.025" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.025" layer="51"/>
<wire x1="-2" y1="2" x2="2" y2="2" width="0.025" layer="51"/>
<wire x1="2" y1="2" x2="2" y2="-2" width="0.025" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.025" layer="51"/>
<wire x1="-2.05" y1="-2.05" x2="-2.05" y2="2.05" width="0.12" layer="51"/>
<wire x1="-2.05" y1="2.05" x2="2.05" y2="2.05" width="0.12" layer="51"/>
<wire x1="2.05" y1="2.05" x2="2.05" y2="-2.05" width="0.12" layer="51"/>
<wire x1="2.05" y1="-2.05" x2="-2.05" y2="-2.05" width="0.12" layer="51"/>
<wire x1="0" y1="0.35" x2="0" y2="-0.35" width="0.05" layer="39"/>
<wire x1="-0.35" y1="0" x2="0.35" y2="0" width="0.05" layer="39"/>
<wire x1="-1.56" y1="-2.05" x2="-2.05" y2="-2.05" width="0.12" layer="21"/>
<wire x1="-2.05" y1="-2.05" x2="-2.05" y2="-1.56" width="0.12" layer="21"/>
<wire x1="1.56" y1="-2.05" x2="2.05" y2="-2.05" width="0.12" layer="21"/>
<wire x1="2.05" y1="-2.05" x2="2.05" y2="-1.56" width="0.12" layer="21"/>
<wire x1="1.56" y1="2.05" x2="2.05" y2="2.05" width="0.12" layer="21"/>
<wire x1="2.05" y1="2.05" x2="2.05" y2="1.56" width="0.12" layer="21"/>
<wire x1="-1.56" y1="2.05" x2="-2.05" y2="2.05" width="0.12" layer="21"/>
<wire x1="-2.05" y1="2.05" x2="-2.05" y2="1.56" width="0.12" layer="21"/>
<wire x1="2.25" y1="-2.25" x2="2.25" y2="-1.58" width="0.05" layer="39"/>
<wire x1="2.25" y1="-1.58" x2="2.465" y2="-1.58" width="0.05" layer="39"/>
<wire x1="2.465" y1="-1.58" x2="2.465" y2="1.58" width="0.05" layer="39"/>
<wire x1="2.465" y1="1.58" x2="2.25" y2="1.58" width="0.05" layer="39"/>
<wire x1="2.25" y1="1.58" x2="2.25" y2="2.25" width="0.05" layer="39"/>
<wire x1="2.25" y1="2.25" x2="1.58" y2="2.25" width="0.05" layer="39"/>
<wire x1="1.58" y1="2.25" x2="1.58" y2="2.465" width="0.05" layer="39"/>
<wire x1="1.58" y1="2.465" x2="-1.58" y2="2.465" width="0.05" layer="39"/>
<wire x1="-1.58" y1="2.465" x2="-1.58" y2="2.25" width="0.05" layer="39"/>
<wire x1="-1.58" y1="2.25" x2="-2.25" y2="2.25" width="0.05" layer="39"/>
<wire x1="-2.25" y1="2.25" x2="-2.25" y2="1.58" width="0.05" layer="39"/>
<wire x1="-2.25" y1="1.58" x2="-2.465" y2="1.58" width="0.05" layer="39"/>
<wire x1="-2.465" y1="1.58" x2="-2.465" y2="-1.58" width="0.05" layer="39"/>
<wire x1="-2.465" y1="-1.58" x2="-2.25" y2="-1.58" width="0.05" layer="39"/>
<wire x1="-2.25" y1="-1.58" x2="-2.25" y2="-2.25" width="0.05" layer="39"/>
<wire x1="-2.25" y1="-2.25" x2="-1.58" y2="-2.25" width="0.05" layer="39"/>
<wire x1="-1.58" y1="-2.25" x2="-1.58" y2="-2.465" width="0.05" layer="39"/>
<wire x1="-1.58" y1="-2.465" x2="1.58" y2="-2.465" width="0.05" layer="39"/>
<wire x1="1.58" y1="-2.465" x2="1.58" y2="-2.25" width="0.05" layer="39"/>
<wire x1="1.58" y1="-2.25" x2="2.25" y2="-2.25" width="0.05" layer="39"/>
<circle x="0" y="0" radius="0.25" width="0.05" layer="39"/>
<circle x="-1.26" y="-2.7" radius="0.1" width="0.2" layer="21"/>
<text x="-3.54" y="-4.08" size="1.2" layer="27" ratio="10">&gt;VALUE</text>
<text x="-3.54" y="2.54" size="1.2" layer="25" ratio="10">&gt;NAME</text>
</package>
</packages>
<packages3d>
<package3d name="24-VFQFN" urn="urn:adsk.eagle:package:10907357/2" type="model" library_version="1">
<description>Quad Flat No-Lead (QFN with Tab), 0.50 mm pitch; square, 6 pin X 6 pin, 4.00 mm L X 4.00 mm W X 0.95 mm H body&lt;p&gt;&lt;i&gt;PCB Libraries Packages&lt;/i&gt;</description>
<packageinstances>
<packageinstance name="24-VFQFN"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="MPU-6050" urn="urn:adsk.eagle:symbol:11396559/1" library_version="1">
<pin name="CLKIN" x="-22.86" y="5.08" length="middle" direction="in" function="clk"/>
<pin name="NC_2" x="-22.86" y="2.54" length="middle" direction="pas"/>
<pin name="NC_3" x="-22.86" y="0" length="middle" direction="pas"/>
<pin name="NC_4" x="-22.86" y="-2.54" length="middle" direction="pas"/>
<pin name="NC_5" x="-22.86" y="-5.08" length="middle" direction="pas"/>
<pin name="AUX_DA" x="-22.86" y="-7.62" length="middle"/>
<pin name="AUX_CL" x="-5.08" y="-20.32" length="middle" function="clk" rot="R90"/>
<pin name="VLOGIC" x="-2.54" y="-20.32" length="middle" direction="pwr" rot="R90"/>
<pin name="AD0" x="0" y="-20.32" length="middle" rot="R90"/>
<pin name="REGOUT" x="2.54" y="-20.32" length="middle" direction="pas" rot="R90"/>
<pin name="FSYNC" x="5.08" y="-20.32" length="middle" direction="in" rot="R90"/>
<pin name="INT" x="7.62" y="-20.32" length="middle" direction="out" rot="R90"/>
<pin name="VDD" x="25.4" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="NC_14" x="25.4" y="-5.08" length="middle" direction="pas" rot="R180"/>
<pin name="NC_15" x="25.4" y="-2.54" length="middle" direction="pas" rot="R180"/>
<pin name="NC_16" x="25.4" y="0" length="middle" direction="pas" rot="R180"/>
<pin name="NC_17" x="25.4" y="2.54" length="middle" direction="pas" rot="R180"/>
<pin name="GND" x="25.4" y="5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="RESV_19" x="7.62" y="17.78" length="middle" direction="pas" rot="R270"/>
<pin name="CPOUT" x="5.08" y="17.78" length="middle" direction="out" rot="R270"/>
<pin name="RESV_21" x="2.54" y="17.78" length="middle" direction="pas" rot="R270"/>
<pin name="RESV_22" x="0" y="17.78" length="middle" direction="pas" rot="R270"/>
<pin name="SCL" x="-2.54" y="17.78" length="middle" function="clk" rot="R270"/>
<pin name="SDA" x="-5.08" y="17.78" length="middle" rot="R270"/>
<pin name="EP" x="-10.16" y="17.78" length="middle" direction="pwr" rot="R270"/>
<wire x1="-17.78" y1="12.7" x2="-17.78" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-15.24" x2="20.32" y2="-15.24" width="0.254" layer="94"/>
<wire x1="20.32" y1="-15.24" x2="20.32" y2="12.7" width="0.254" layer="94"/>
<wire x1="20.32" y1="12.7" x2="-17.78" y2="12.7" width="0.254" layer="94"/>
<text x="-25.4" y="17.78" size="2" layer="95" ratio="10">&gt;NAME</text>
<text x="-25.4" y="-22.86" size="2" layer="96" ratio="10">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="MPU-6050" urn="urn:adsk.eagle:component:11396574/1" prefix="U" library_version="1">
<description>&lt;h3&gt; IMU ACCEL/GYRO 3-AXIS I2C 24QFN&lt;/h3&gt;
&lt;BR&gt;
&lt;a href="https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf"&gt; Manufacturer's datasheet&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="MPU-6050" x="0" y="0"/>
</gates>
<devices>
<device name="" package="24-VFQFN">
<connects>
<connect gate="G$1" pin="AD0" pad="9"/>
<connect gate="G$1" pin="AUX_CL" pad="7"/>
<connect gate="G$1" pin="AUX_DA" pad="6"/>
<connect gate="G$1" pin="CLKIN" pad="1"/>
<connect gate="G$1" pin="CPOUT" pad="20"/>
<connect gate="G$1" pin="EP" pad="25"/>
<connect gate="G$1" pin="FSYNC" pad="11"/>
<connect gate="G$1" pin="GND" pad="18"/>
<connect gate="G$1" pin="INT" pad="12"/>
<connect gate="G$1" pin="NC_14" pad="14"/>
<connect gate="G$1" pin="NC_15" pad="15"/>
<connect gate="G$1" pin="NC_16" pad="16"/>
<connect gate="G$1" pin="NC_17" pad="17"/>
<connect gate="G$1" pin="NC_2" pad="2"/>
<connect gate="G$1" pin="NC_3" pad="3"/>
<connect gate="G$1" pin="NC_4" pad="4"/>
<connect gate="G$1" pin="NC_5" pad="5"/>
<connect gate="G$1" pin="REGOUT" pad="10"/>
<connect gate="G$1" pin="RESV_19" pad="19"/>
<connect gate="G$1" pin="RESV_21" pad="21"/>
<connect gate="G$1" pin="RESV_22" pad="22"/>
<connect gate="G$1" pin="SCL" pad="23"/>
<connect gate="G$1" pin="SDA" pad="24"/>
<connect gate="G$1" pin="VDD" pad="13"/>
<connect gate="G$1" pin="VLOGIC" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:10907357/2"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="CREATED_BY" value="PCBLayout.com" constant="no"/>
<attribute name="DIGIKEY_PART_NUMBER" value="1428-1007-1-ND" constant="no"/>
<attribute name="MANUFACTURER" value="TDK InvenSense" constant="no"/>
<attribute name="MPN" value="MPU-6050" constant="no"/>
<attribute name="PACKAGE" value="24-VFQFN" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="U1" library="STM32F103C8T6" deviceset="STM32F103C8T6" device=""/>
<part name="U2" library="Sensor" library_urn="urn:adsk.eagle:library:11396555" deviceset="MPU-6050" device="" package3d_urn="urn:adsk.eagle:package:10907357/2"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="86.36" y="60.96" smashed="yes">
<attribute name="NAME" x="66.04" y="102.235" size="1.778" layer="95"/>
<attribute name="VALUE" x="66.04" y="20.32" size="1.778" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="83.82" y="134.62" smashed="yes">
<attribute name="NAME" x="58.42" y="152.4" size="2" layer="95" ratio="10"/>
<attribute name="VALUE" x="58.42" y="111.76" size="2" layer="96" ratio="10"/>
</instance>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
