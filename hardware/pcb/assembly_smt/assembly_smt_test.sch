<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
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
<library name="BMP280">
<packages>
<package name="XDCR_BMP280">
<circle x="1.695" y="1.15" radius="0.1" width="0.2" layer="21"/>
<text x="-1.250059375" y="1.902290625" size="0.8128375" layer="25" ratio="14">&gt;NAME</text>
<text x="-1.434040625" y="-2.874109375" size="0.813984375" layer="27" ratio="14">&gt;VALUE</text>
<wire x1="-1" y1="1.25" x2="-1" y2="-1.25" width="0.127" layer="51"/>
<wire x1="-1" y1="-1.25" x2="1" y2="-1.25" width="0.127" layer="51"/>
<wire x1="1" y1="-1.25" x2="1" y2="1.25" width="0.127" layer="51"/>
<wire x1="1" y1="1.25" x2="-1" y2="1.25" width="0.127" layer="51"/>
<wire x1="-1" y1="1.35" x2="1" y2="1.35" width="0.127" layer="21"/>
<wire x1="-1" y1="-1.35" x2="1" y2="-1.35" width="0.127" layer="21"/>
<wire x1="-1.3" y1="1.5" x2="1.3" y2="1.5" width="0.05" layer="39"/>
<wire x1="1.3" y1="1.5" x2="1.3" y2="-1.5" width="0.05" layer="39"/>
<wire x1="1.3" y1="-1.5" x2="-1.3" y2="-1.5" width="0.05" layer="39"/>
<wire x1="-1.3" y1="-1.5" x2="-1.3" y2="1.5" width="0.05" layer="39"/>
<smd name="2" x="0.8" y="0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="7" x="-0.8" y="0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="3" x="0.8" y="-0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="6" x="-0.8" y="-0.325" dx="0.5" dy="0.35" layer="1"/>
<smd name="8" x="-0.8" y="0.975" dx="0.5" dy="0.35" layer="1"/>
<smd name="1" x="0.8" y="0.975" dx="0.5" dy="0.35" layer="1"/>
<smd name="4" x="0.8" y="-0.975" dx="0.5" dy="0.35" layer="1"/>
<smd name="5" x="-0.8" y="-0.975" dx="0.5" dy="0.35" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="BMP280">
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-7.62" x2="10.16" y2="-7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="-7.62" x2="10.16" y2="7.62" width="0.254" layer="94"/>
<wire x1="10.16" y1="7.62" x2="-10.16" y2="7.62" width="0.254" layer="94"/>
<text x="-10.1796" y="7.63466875" size="1.78141875" layer="95">&gt;NAME</text>
<text x="-10.1693" y="-10.1693" size="1.77963125" layer="96">&gt;VALUE</text>
<pin name="VDD" x="12.7" y="5.08" length="short" direction="pwr" rot="R180"/>
<pin name="GND" x="12.7" y="-5.08" length="short" direction="pwr" rot="R180"/>
<pin name="SDO" x="-12.7" y="0" length="short"/>
<pin name="SDI" x="-12.7" y="2.54" length="short"/>
<pin name="SCK" x="-12.7" y="-2.54" length="short" direction="in" function="clk"/>
<pin name="CSB" x="-12.7" y="5.08" length="short" direction="in"/>
<pin name="VDDIO" x="12.7" y="2.54" length="short" direction="pwr" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="BMP280" prefix="U">
<description>BMP280 Absolute Barometric Pressure Sensor for Battery Powered Devices 2 x 2.5mm &lt;a href="https://pricing.snapeda.com/parts/BMP280/Bosch/view-part?ref=eda"&gt;Check prices&lt;/a&gt;</description>
<gates>
<gate name="G$1" symbol="BMP280" x="0" y="0"/>
</gates>
<devices>
<device name="" package="XDCR_BMP280">
<connects>
<connect gate="G$1" pin="CSB" pad="2"/>
<connect gate="G$1" pin="GND" pad="1 7"/>
<connect gate="G$1" pin="SCK" pad="4"/>
<connect gate="G$1" pin="SDI" pad="3"/>
<connect gate="G$1" pin="SDO" pad="5"/>
<connect gate="G$1" pin="VDD" pad="8"/>
<connect gate="G$1" pin="VDDIO" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Good"/>
<attribute name="DESCRIPTION" value=" Pressure Sensor 4.35PSI ~ 15.95PSI (30kPa ~ 110kPa) Absolute 16b 8-SMD "/>
<attribute name="MF" value="Bosch"/>
<attribute name="MP" value="BMP280"/>
<attribute name="PACKAGE" value="SMD-8 Bosch Sensortec"/>
<attribute name="PRICE" value="None"/>
<attribute name="PURCHASE-URL" value="https://pricing.snapeda.com/search/part/BMP280/?ref=eda"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="MPU6050">
<packages>
<package name="IC_MPU6050">
<text x="-2.5" y="-3" size="1.27" layer="27" align="top-left">&gt;VALUE</text>
<text x="-2.5" y="3" size="1.27" layer="25">&gt;NAME</text>
<circle x="-3" y="1.75" radius="0.1" width="0.2" layer="21"/>
<circle x="-3" y="1.75" radius="0.1" width="0.2" layer="51"/>
<wire x1="2" y1="-2" x2="-2" y2="-2" width="0.127" layer="51"/>
<wire x1="2" y1="2" x2="-2" y2="2" width="0.127" layer="51"/>
<wire x1="2" y1="-2" x2="2" y2="2" width="0.127" layer="51"/>
<wire x1="-2" y1="-2" x2="-2" y2="2" width="0.127" layer="51"/>
<wire x1="-2.65" y1="-2.65" x2="2.65" y2="-2.65" width="0.05" layer="39"/>
<wire x1="-2.65" y1="2.65" x2="2.65" y2="2.65" width="0.05" layer="39"/>
<wire x1="-2.65" y1="-2.65" x2="-2.65" y2="2.65" width="0.05" layer="39"/>
<wire x1="2.65" y1="-2.65" x2="2.65" y2="2.65" width="0.05" layer="39"/>
<wire x1="-2" y1="1.7385" x2="-2" y2="2" width="0.127" layer="21"/>
<wire x1="-2" y1="2" x2="-1.7385" y2="2" width="0.127" layer="21"/>
<rectangle x1="-0.854" y1="-0.822" x2="0.854" y2="0.822" layer="31"/>
<wire x1="-1.7385" y1="-2" x2="-2" y2="-2" width="0.127" layer="21"/>
<wire x1="-2" y1="-2" x2="-2" y2="-1.7385" width="0.127" layer="21"/>
<wire x1="2" y1="-1.7385" x2="2" y2="-2" width="0.127" layer="21"/>
<wire x1="2" y1="-2" x2="1.7385" y2="-2" width="0.127" layer="21"/>
<wire x1="1.7385" y1="2" x2="2" y2="2" width="0.127" layer="21"/>
<wire x1="2" y1="2" x2="2" y2="1.7385" width="0.127" layer="21"/>
<smd name="1" x="-2" y="1.25" dx="0.8" dy="0.35" layer="1" roundness="25"/>
<smd name="25" x="0" y="0" dx="2.7" dy="2.6" layer="1" cream="no"/>
<smd name="2" x="-2" y="0.75" dx="0.8" dy="0.35" layer="1" roundness="25"/>
<smd name="3" x="-2" y="0.25" dx="0.8" dy="0.35" layer="1" roundness="25"/>
<smd name="4" x="-2" y="-0.25" dx="0.8" dy="0.35" layer="1" roundness="25"/>
<smd name="5" x="-2" y="-0.75" dx="0.8" dy="0.35" layer="1" roundness="25"/>
<smd name="6" x="-2" y="-1.25" dx="0.8" dy="0.35" layer="1" roundness="25"/>
<smd name="7" x="-1.25" y="-1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R90"/>
<smd name="8" x="-0.75" y="-1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R90"/>
<smd name="9" x="-0.25" y="-1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R90"/>
<smd name="10" x="0.25" y="-1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R90"/>
<smd name="11" x="0.75" y="-1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R90"/>
<smd name="12" x="1.25" y="-1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R90"/>
<smd name="13" x="2" y="-1.25" dx="0.8" dy="0.35" layer="1" roundness="25" rot="R180"/>
<smd name="14" x="2" y="-0.75" dx="0.8" dy="0.35" layer="1" roundness="25" rot="R180"/>
<smd name="15" x="2" y="-0.25" dx="0.8" dy="0.35" layer="1" roundness="25" rot="R180"/>
<smd name="16" x="2" y="0.25" dx="0.8" dy="0.35" layer="1" roundness="25" rot="R180"/>
<smd name="17" x="2" y="0.75" dx="0.8" dy="0.35" layer="1" roundness="25" rot="R180"/>
<smd name="18" x="2" y="1.25" dx="0.8" dy="0.35" layer="1" roundness="25" rot="R180"/>
<smd name="19" x="1.25" y="1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R270"/>
<smd name="20" x="0.75" y="1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R270"/>
<smd name="21" x="0.25" y="1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R270"/>
<smd name="22" x="-0.25" y="1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R270"/>
<smd name="23" x="-0.75" y="1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R270"/>
<smd name="24" x="-1.25" y="1.975" dx="0.85" dy="0.35" layer="1" roundness="25" rot="R270"/>
</package>
</packages>
<symbols>
<symbol name="MPU6050">
<wire x1="17.78" y1="-30.48" x2="17.78" y2="27.94" width="0.254" layer="94"/>
<wire x1="17.78" y1="27.94" x2="-17.78" y2="27.94" width="0.254" layer="94"/>
<wire x1="-17.78" y1="27.94" x2="-17.78" y2="-30.48" width="0.254" layer="94"/>
<wire x1="-17.78" y1="-30.48" x2="17.78" y2="-30.48" width="0.254" layer="94"/>
<text x="-17.78" y="29.21" size="1.778" layer="95">&gt;NAME</text>
<text x="-17.78" y="-31.75" size="1.778" layer="96" rot="MR180">&gt;VALUE</text>
<pin name="GND" x="22.86" y="-27.94" length="middle" direction="pwr" rot="R180"/>
<pin name="REGOUT" x="22.86" y="12.7" length="middle" direction="out" rot="R180"/>
<pin name="AD0" x="-22.86" y="10.16" length="middle" direction="in"/>
<pin name="VLOGIC" x="22.86" y="22.86" length="middle" direction="pwr" rot="R180"/>
<pin name="RESV" x="22.86" y="-2.54" length="middle" rot="R180"/>
<pin name="AUX_DA" x="22.86" y="2.54" length="middle" rot="R180"/>
<pin name="CLKIN" x="-22.86" y="17.78" length="middle" direction="in" function="clk"/>
<pin name="SDA" x="-22.86" y="2.54" length="middle"/>
<pin name="SCL" x="-22.86" y="5.08" length="middle" direction="in" function="clk"/>
<pin name="FYSNC" x="-22.86" y="15.24" length="middle" direction="in"/>
<pin name="VDD" x="22.86" y="25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="CPOUT" x="22.86" y="10.16" length="middle" direction="out" rot="R180"/>
<pin name="AUX_CL" x="22.86" y="5.08" length="middle" direction="out" function="clk" rot="R180"/>
<pin name="INT" x="22.86" y="17.78" length="middle" direction="out" rot="R180"/>
<pin name="EXP" x="22.86" y="-25.4" length="middle" direction="pwr" rot="R180"/>
<pin name="NC2" x="-22.86" y="-2.54" length="middle" direction="nc"/>
<pin name="NC5" x="-22.86" y="-10.16" length="middle" direction="nc"/>
<pin name="NC3" x="-22.86" y="-5.08" length="middle" direction="nc"/>
<pin name="NC4" x="-22.86" y="-7.62" length="middle" direction="nc"/>
<pin name="NC14" x="-22.86" y="-12.7" length="middle" direction="nc"/>
<pin name="NC17" x="-22.86" y="-20.32" length="middle" direction="nc"/>
<pin name="NC15" x="-22.86" y="-15.24" length="middle" direction="nc"/>
<pin name="NC16" x="-22.86" y="-17.78" length="middle" direction="nc"/>
<pin name="CLKOUT" x="22.86" y="-7.62" length="middle" direction="out" function="clk" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MPU6050" prefix="U">
<description>Is the world’s first integrated 6-axis MotionTracking device that combines a 3-axis gyroscope, 3-axis accelerometer, and a Digital Motion Processor™ (DMP) all in a small 4x4x0.9mm Package. </description>
<gates>
<gate name="G$1" symbol="MPU6050" x="0" y="0"/>
</gates>
<devices>
<device name="" package="IC_MPU6050">
<connects>
<connect gate="G$1" pin="AD0" pad="9"/>
<connect gate="G$1" pin="AUX_CL" pad="7"/>
<connect gate="G$1" pin="AUX_DA" pad="6"/>
<connect gate="G$1" pin="CLKIN" pad="1"/>
<connect gate="G$1" pin="CLKOUT" pad="22"/>
<connect gate="G$1" pin="CPOUT" pad="20"/>
<connect gate="G$1" pin="EXP" pad="25"/>
<connect gate="G$1" pin="FYSNC" pad="11"/>
<connect gate="G$1" pin="GND" pad="18"/>
<connect gate="G$1" pin="INT" pad="12"/>
<connect gate="G$1" pin="NC14" pad="14"/>
<connect gate="G$1" pin="NC15" pad="15"/>
<connect gate="G$1" pin="NC16" pad="16"/>
<connect gate="G$1" pin="NC17" pad="17"/>
<connect gate="G$1" pin="NC2" pad="2"/>
<connect gate="G$1" pin="NC3" pad="3"/>
<connect gate="G$1" pin="NC4" pad="4"/>
<connect gate="G$1" pin="NC5" pad="5"/>
<connect gate="G$1" pin="REGOUT" pad="10"/>
<connect gate="G$1" pin="RESV" pad="19 21"/>
<connect gate="G$1" pin="SCL" pad="23"/>
<connect gate="G$1" pin="SDA" pad="24"/>
<connect gate="G$1" pin="VDD" pad="13"/>
<connect gate="G$1" pin="VLOGIC" pad="8"/>
</connects>
<technologies>
<technology name="">
<attribute name="AVAILABILITY" value="Unavailable"/>
<attribute name="DESCRIPTION" value=" MPU-6050 - Accelerometer, Gyroscope, 3 Axis Sensor Evaluation Board "/>
<attribute name="MF" value="TDK InvenSense"/>
<attribute name="MP" value="MPU6050"/>
<attribute name="PACKAGE" value="VFQFN-24 TDK InvenSense"/>
<attribute name="PRICE" value="None"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
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
<part name="U1" library="BMP280" deviceset="BMP280" device=""/>
<part name="U2" library="MPU6050" deviceset="MPU6050" device=""/>
<part name="U3" library="STM32F103C8T6" deviceset="STM32F103C8T6" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="G$1" x="20.32" y="5.08" smashed="yes">
<attribute name="NAME" x="10.1404" y="12.71466875" size="1.78141875" layer="95"/>
<attribute name="VALUE" x="10.1507" y="-5.0893" size="1.77963125" layer="96"/>
</instance>
<instance part="U2" gate="G$1" x="27.94" y="55.88" smashed="yes">
<attribute name="NAME" x="10.16" y="85.09" size="1.778" layer="95"/>
<attribute name="VALUE" x="10.16" y="24.13" size="1.778" layer="96" rot="MR180"/>
</instance>
<instance part="U3" gate="G$1" x="111.76" y="43.18" smashed="yes">
<attribute name="NAME" x="91.44" y="84.455" size="1.778" layer="95"/>
<attribute name="VALUE" x="91.44" y="2.54" size="1.778" layer="96"/>
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
</eagle>
