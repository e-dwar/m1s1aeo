<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan6" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="s(1:0)" />
        <signal name="clk" />
        <signal name="s(0)" />
        <signal name="s(1)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_13" />
        <signal name="XLXN_15" />
        <signal name="XLXN_16" />
        <port polarity="Output" name="s(1:0)" />
        <port polarity="Input" name="clk" />
        <blockdef name="fd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="fd" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="C" />
            <blockpin signalname="XLXN_16" name="D" />
            <blockpin signalname="s(1)" name="Q" />
        </block>
        <block symbolname="fd" name="XLXI_1">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_6" name="D" />
            <blockpin signalname="s(0)" name="Q" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="976" y="1168" name="XLXI_2" orien="R0" />
        <branch name="s(1:0)">
            <attrtext style="alignment:SOFT-RIGHT" attrname="Name" x="416" y="1232" type="branch" />
            <wire x2="880" y1="1232" y2="1232" x1="416" />
            <wire x2="1360" y1="1232" y2="1232" x1="880" />
            <wire x2="1584" y1="1232" y2="1232" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1584" y="1232" name="s(1:0)" orien="R0" />
        <branch name="clk">
            <wire x2="400" y1="1040" y2="1040" x1="384" />
            <wire x2="416" y1="1040" y2="1040" x1="400" />
        </branch>
        <iomarker fontsize="28" x="384" y="1040" name="clk" orien="R180" />
        <bustap x2="880" y1="1232" y2="1136" x1="880" />
        <branch name="s(0)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="880" y="1024" type="branch" />
            <wire x2="816" y1="720" y2="720" x1="688" />
            <wire x2="816" y1="720" y2="992" x1="816" />
            <wire x2="880" y1="992" y2="992" x1="816" />
            <wire x2="880" y1="992" y2="1024" x1="880" />
            <wire x2="880" y1="1024" y2="1136" x1="880" />
            <wire x2="880" y1="912" y2="912" x1="800" />
            <wire x2="880" y1="912" y2="992" x1="880" />
        </branch>
        <bustap x2="1360" y1="1232" y2="1136" x1="1360" />
        <branch name="s(1)">
            <attrtext style="alignment:SOFT-TVCENTER" attrname="Name" x="1360" y="1024" type="branch" />
            <wire x2="1376" y1="640" y2="640" x1="1312" />
            <wire x2="1376" y1="640" y2="976" x1="1376" />
            <wire x2="1360" y1="912" y2="976" x1="1360" />
            <wire x2="1360" y1="976" y2="1024" x1="1360" />
            <wire x2="1360" y1="1024" y2="1136" x1="1360" />
            <wire x2="1376" y1="976" y2="976" x1="1360" />
        </branch>
        <instance x="1312" y="608" name="XLXI_8" orien="R180" />
        <instance x="688" y="688" name="XLXI_7" orien="R180" />
        <branch name="XLXN_6">
            <wire x2="400" y1="592" y2="720" x1="400" />
            <wire x2="464" y1="720" y2="720" x1="400" />
            <wire x2="400" y1="720" y2="912" x1="400" />
            <wire x2="416" y1="912" y2="912" x1="400" />
            <wire x2="928" y1="592" y2="592" x1="400" />
            <wire x2="928" y1="592" y2="1040" x1="928" />
            <wire x2="976" y1="1040" y2="1040" x1="928" />
        </branch>
        <instance x="416" y="1168" name="XLXI_1" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="960" y1="640" y2="912" x1="960" />
            <wire x2="976" y1="912" y2="912" x1="960" />
            <wire x2="1088" y1="640" y2="640" x1="960" />
        </branch>
    </sheet>
</drawing>