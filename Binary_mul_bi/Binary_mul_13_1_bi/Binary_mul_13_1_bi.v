module Binary_mul_13_1_bi (P, A, B, clk, rst_n, en);

    input signed [12:0] A; // 被乘数
    input signed [12:0] B; // 乘数
    input clk, rst_n, en;
    output reg signed [24:0] P; // 积
    wire signed [12:0] A_c;
    assign A_c = ~A+1;
    // wire signed [24:0] product_comb;
                                                                                                         
//row b0
    wire  wa10, wa20, wa30, wa40, wa50, wa60, wa70, wa80, wa90, wa100, wa110, wa120, wa130, wa140, wa150, wa160, wa170, wa180, wa190, wa200, wa210, wa220, wa230, wa240, product_comb_0;
    reg    wa10_p1,wa20_p1,wa30_p1,wa40_p1,wa50_p1,wa60_p1,wa70_p1,wa80_p1,wa90_p1,wa100_p1,wa110_p1,wa120_p1,wa130_p1,wa140_p1,wa150_p1,wa160_p1,wa170_p1,wa180_p1,wa190_p1,wa200_p1,wa210_p1,wa220_p1,wa230_p1,wa240_p1;

// row b1
    wire  wmhc001, wmhc101, wmhc201, wmhc301, wmhc401, wmhc501, wmhc601, wmhc701, wmhc801, wmhc901, wmhc1001, wmhc1101, wmhc1201, wmhc1301, wmhc1401, wmhc1501, wmhc1601, wmhc1701, wmhc1801, wmhc1901, wmhc2001, wmhc2101, wmhc2201, wmhc2301;
    wire  wmhs101, wmhs201, wmhs301, wmhs401, wmhs501, wmhs601, wmhs701, wmhs801, wmhs901, wmhs1001, wmhs1101, wmhs1201, wmhs1301, wmhs1401, wmhs1501, wmhs1601, wmhs1701, wmhs1801, wmhs1901, wmhs2001, wmhs2101, wmhs2201, wmhs2301, product_comb_1;
    reg   wmhs101_p2,wmhs201_p2,wmhs301_p2,wmhs401_p2,wmhs501_p2,wmhs601_p2,wmhs701_p2,wmhs801_p2,wmhs901_p2,wmhs1001_p2,wmhs1101_p2,wmhs1201_p2,wmhs1301_p2,wmhs1401_p2,wmhs1501_p2,wmhs1601_p2,wmhs1701_p2,wmhs1801_p2,wmhs1901_p2,wmhs2001_p2,wmhs2101_p2,wmhs2201_p2,wmhs2301_p2;
    reg   wmhc001_p2,wmhc101_p2,wmhc201_p2,wmhc301_p2,wmhc401_p2,wmhc501_p2,wmhc601_p2,wmhc701_p2,wmhc801_p2,wmhc901_p2,wmhc1001_p2,wmhc1101_p2,wmhc1201_p2,wmhc1301_p2,wmhc1401_p2,wmhc1501_p2,wmhc1601_p2,wmhc1701_p2,wmhc1801_p2,wmhc1901_p2,wmhc2001_p2,wmhc2101_p2,wmhc2201_p2,wmhc2301_p2;

// row b2
    wire  wmfc002, wmfc102, wmfc202, wmfc302, wmfc402, wmfc502, wmfc602, wmfc702, wmfc802, wmfc902, wmfc1002, wmfc1102, wmfc1202, wmfc1302, wmfc1402, wmfc1502, wmfc1602, wmfc1702, wmfc1802, wmfc1902, wmfc2002, wmfc2102, wmfc2202;
    wire  wmfs102, wmfs202, wmfs302, wmfs402, wmfs502, wmfs602, wmfs702, wmfs802, wmfs902, wmfs1002, wmfs1102, wmfs1202, wmfs1302, wmfs1402, wmfs1502, wmfs1602, wmfs1702, wmfs1802, wmfs1902, wmfs2002, wmfs2102, wmfs2202, product_comb_2;
    reg   wmfs102_p3,wmfs202_p3,wmfs302_p3,wmfs402_p3,wmfs502_p3,wmfs602_p3,wmfs702_p3,wmfs802_p3,wmfs902_p3,wmfs1002_p3,wmfs1102_p3,wmfs1202_p3,wmfs1302_p3,wmfs1402_p3,wmfs1502_p3,wmfs1602_p3,wmfs1702_p3,wmfs1802_p3,wmfs1902_p3,wmfs2002_p3,wmfs2102_p3,wmfs2202_p3;
    reg   wmfc002_p3,wmfc102_p3,wmfc202_p3,wmfc302_p3,wmfc402_p3,wmfc502_p3,wmfc602_p3,wmfc702_p3,wmfc802_p3,wmfc902_p3,wmfc1002_p3,wmfc1102_p3,wmfc1202_p3,wmfc1302_p3,wmfc1402_p3,wmfc1502_p3,wmfc1602_p3,wmfc1702_p3,wmfc1802_p3,wmfc1902_p3,wmfc2002_p3,wmfc2102_p3,wmfc2202_p3;

// row b3
    wire  wmfc003, wmfc103, wmfc203, wmfc303, wmfc403, wmfc503, wmfc603, wmfc703, wmfc803, wmfc903, wmfc1003, wmfc1103, wmfc1203, wmfc1303, wmfc1403, wmfc1503, wmfc1603, wmfc1703, wmfc1803, wmfc1903, wmfc2003, wmfc2103;
    wire  wmfs103, wmfs203, wmfs303, wmfs403, wmfs503, wmfs603, wmfs703, wmfs803, wmfs903, wmfs1003, wmfs1103, wmfs1203, wmfs1303, wmfs1403, wmfs1503, wmfs1603, wmfs1703, wmfs1803, wmfs1903, wmfs2003, wmfs2103, product_comb_3;
    reg   wmfs103_p4,wmfs203_p4,wmfs303_p4,wmfs403_p4,wmfs503_p4,wmfs603_p4,wmfs703_p4,wmfs803_p4,wmfs903_p4,wmfs1003_p4,wmfs1103_p4,wmfs1203_p4,wmfs1303_p4,wmfs1403_p4,wmfs1503_p4,wmfs1603_p4,wmfs1703_p4,wmfs1803_p4,wmfs1903_p4,wmfs2003_p4,wmfs2103_p4;
    reg   wmfc003_p4,wmfc103_p4,wmfc203_p4,wmfc303_p4,wmfc403_p4,wmfc503_p4,wmfc603_p4,wmfc703_p4,wmfc803_p4,wmfc903_p4,wmfc1003_p4,wmfc1103_p4,wmfc1203_p4,wmfc1303_p4,wmfc1403_p4,wmfc1503_p4,wmfc1603_p4,wmfc1703_p4,wmfc1803_p4,wmfc1903_p4,wmfc2003_p4,wmfc2103_p4;

// row b4
    wire  wmfc004, wmfc104, wmfc204, wmfc304, wmfc404, wmfc504, wmfc604, wmfc704, wmfc804, wmfc904, wmfc1004, wmfc1104, wmfc1204, wmfc1304, wmfc1404, wmfc1504, wmfc1604, wmfc1704, wmfc1804, wmfc1904, wmfc2004;
    wire  wmfs104, wmfs204, wmfs304, wmfs404, wmfs504, wmfs604, wmfs704, wmfs804, wmfs904, wmfs1004, wmfs1104, wmfs1204, wmfs1304, wmfs1404, wmfs1504, wmfs1604, wmfs1704, wmfs1804, wmfs1904, wmfs2004, product_comb_4;
    reg   wmfs104_p5,wmfs204_p5,wmfs304_p5,wmfs404_p5,wmfs504_p5,wmfs604_p5,wmfs704_p5,wmfs804_p5,wmfs904_p5,wmfs1004_p5,wmfs1104_p5,wmfs1204_p5,wmfs1304_p5,wmfs1404_p5,wmfs1504_p5,wmfs1604_p5,wmfs1704_p5,wmfs1804_p5,wmfs1904_p5,wmfs2004_p5;
    reg   wmfc004_p5,wmfc104_p5,wmfc204_p5,wmfc304_p5,wmfc404_p5,wmfc504_p5,wmfc604_p5,wmfc704_p5,wmfc804_p5,wmfc904_p5,wmfc1004_p5,wmfc1104_p5,wmfc1204_p5,wmfc1304_p5,wmfc1404_p5,wmfc1504_p5,wmfc1604_p5,wmfc1704_p5,wmfc1804_p5,wmfc1904_p5,wmfc2004_p5;

// row b5
    wire  wmfc005, wmfc105, wmfc205, wmfc305, wmfc405, wmfc505, wmfc605, wmfc705, wmfc805, wmfc905, wmfc1005, wmfc1105, wmfc1205, wmfc1305, wmfc1405, wmfc1505, wmfc1605, wmfc1705, wmfc1805, wmfc1905;
    wire  wmfs105, wmfs205, wmfs305, wmfs405, wmfs505, wmfs605, wmfs705, wmfs805, wmfs905, wmfs1005, wmfs1105, wmfs1205, wmfs1305, wmfs1405, wmfs1505, wmfs1605, wmfs1705, wmfs1805, wmfs1905, product_comb_5;
    reg   wmfs105_p6,wmfs205_p6,wmfs305_p6,wmfs405_p6,wmfs505_p6,wmfs605_p6,wmfs705_p6,wmfs805_p6,wmfs905_p6,wmfs1005_p6,wmfs1105_p6,wmfs1205_p6,wmfs1305_p6,wmfs1405_p6,wmfs1505_p6,wmfs1605_p6,wmfs1705_p6,wmfs1805_p6,wmfs1905_p6;
    reg   wmfc005_p6,wmfc105_p6,wmfc205_p6,wmfc305_p6,wmfc405_p6,wmfc505_p6,wmfc605_p6,wmfc705_p6,wmfc805_p6,wmfc905_p6,wmfc1005_p6,wmfc1105_p6,wmfc1205_p6,wmfc1305_p6,wmfc1405_p6,wmfc1505_p6,wmfc1605_p6,wmfc1705_p6,wmfc1805_p6,wmfc1905_p6;

// row b6
    wire  wmfc006, wmfc106, wmfc206, wmfc306, wmfc406, wmfc506, wmfc606, wmfc706, wmfc806, wmfc906, wmfc1006, wmfc1106, wmfc1206, wmfc1306, wmfc1406, wmfc1506, wmfc1606, wmfc1706, wmfc1806;
    wire  wmfs106, wmfs206, wmfs306, wmfs406, wmfs506, wmfs606, wmfs706, wmfs806, wmfs906, wmfs1006, wmfs1106, wmfs1206, wmfs1306, wmfs1406, wmfs1506, wmfs1606, wmfs1706, wmfs1806, product_comb_6;
    reg   wmfs106_p7,wmfs206_p7,wmfs306_p7,wmfs406_p7,wmfs506_p7,wmfs606_p7,wmfs706_p7,wmfs806_p7,wmfs906_p7,wmfs1006_p7,wmfs1106_p7,wmfs1206_p7,wmfs1306_p7,wmfs1406_p7,wmfs1506_p7,wmfs1606_p7,wmfs1706_p7,wmfs1806_p7;
    reg   wmfc006_p7,wmfc106_p7,wmfc206_p7,wmfc306_p7,wmfc406_p7,wmfc506_p7,wmfc606_p7,wmfc706_p7,wmfc806_p7,wmfc906_p7,wmfc1006_p7,wmfc1106_p7,wmfc1206_p7,wmfc1306_p7,wmfc1406_p7,wmfc1506_p7,wmfc1606_p7,wmfc1706_p7,wmfc1806_p7;

// row b7
    wire  wmfc007, wmfc107, wmfc207, wmfc307, wmfc407, wmfc507, wmfc607, wmfc707, wmfc807, wmfc907, wmfc1007, wmfc1107, wmfc1207, wmfc1307, wmfc1407, wmfc1507, wmfc1607, wmfc1707;
    wire  wmfs107, wmfs207, wmfs307, wmfs407, wmfs507, wmfs607, wmfs707, wmfs807, wmfs907, wmfs1007, wmfs1107, wmfs1207, wmfs1307, wmfs1407, wmfs1507, wmfs1607, wmfs1707, product_comb_7;
    reg   wmfs107_p8,wmfs207_p8,wmfs307_p8,wmfs407_p8,wmfs507_p8,wmfs607_p8,wmfs707_p8,wmfs807_p8,wmfs907_p8,wmfs1007_p8,wmfs1107_p8,wmfs1207_p8,wmfs1307_p8,wmfs1407_p8,wmfs1507_p8,wmfs1607_p8,wmfs1707_p8;
    reg   wmfc007_p8,wmfc107_p8,wmfc207_p8,wmfc307_p8,wmfc407_p8,wmfc507_p8,wmfc607_p8,wmfc707_p8,wmfc807_p8,wmfc907_p8,wmfc1007_p8,wmfc1107_p8,wmfc1207_p8,wmfc1307_p8,wmfc1407_p8,wmfc1507_p8,wmfc1607_p8,wmfc1707_p8;

// row b8
    wire  wmfc008, wmfc108, wmfc208, wmfc308, wmfc408, wmfc508, wmfc608, wmfc708, wmfc808, wmfc908, wmfc1008, wmfc1108, wmfc1208, wmfc1308, wmfc1408, wmfc1508, wmfc1608;
    wire  wmfs108, wmfs208, wmfs308, wmfs408, wmfs508, wmfs608, wmfs708, wmfs808, wmfs908, wmfs1008, wmfs1108, wmfs1208, wmfs1308, wmfs1408, wmfs1508, wmfs1608, product_comb_8;
    reg   wmfs108_p9,wmfs208_p9,wmfs308_p9,wmfs408_p9,wmfs508_p9,wmfs608_p9,wmfs708_p9,wmfs808_p9,wmfs908_p9,wmfs1008_p9,wmfs1108_p9,wmfs1208_p9,wmfs1308_p9,wmfs1408_p9,wmfs1508_p9,wmfs1608_p9;
    reg   wmfc008_p9,wmfc108_p9,wmfc208_p9,wmfc308_p9,wmfc408_p9,wmfc508_p9,wmfc608_p9,wmfc708_p9,wmfc808_p9,wmfc908_p9,wmfc1008_p9,wmfc1108_p9,wmfc1208_p9,wmfc1308_p9,wmfc1408_p9,wmfc1508_p9,wmfc1608_p9;

// row b9
    wire  wmfc009, wmfc109, wmfc209, wmfc309, wmfc409, wmfc509, wmfc609, wmfc709, wmfc809, wmfc909, wmfc1009, wmfc1109, wmfc1209, wmfc1309, wmfc1409, wmfc1509;
    wire  wmfs109, wmfs209, wmfs309, wmfs409, wmfs509, wmfs609, wmfs709, wmfs809, wmfs909, wmfs1009, wmfs1109, wmfs1209, wmfs1309, wmfs1409, wmfs1509, product_comb_9;
    reg   wmfs109_p10,wmfs209_p10,wmfs309_p10,wmfs409_p10,wmfs509_p10,wmfs609_p10,wmfs709_p10,wmfs809_p10,wmfs909_p10,wmfs1009_p10,wmfs1109_p10,wmfs1209_p10,wmfs1309_p10,wmfs1409_p10,wmfs1509_p10;
    reg   wmfc009_p10,wmfc109_p10,wmfc209_p10,wmfc309_p10,wmfc409_p10,wmfc509_p10,wmfc609_p10,wmfc709_p10,wmfc809_p10,wmfc909_p10,wmfc1009_p10,wmfc1109_p10,wmfc1209_p10,wmfc1309_p10,wmfc1409_p10,wmfc1509_p10;

//row b10
    wire  wmfc010, wmfc110, wmfc210, wmfc310, wmfc410, wmfc510, wmfc610, wmfc710, wmfc810, wmfc910, wmfc1010, wmfc1110, wmfc1210, wmfc1310, wmfc1410;
    wire  wmfs110, wmfs210, wmfs310, wmfs410, wmfs510, wmfs610, wmfs710, wmfs810, wmfs910, wmfs1010, wmfs1110, wmfs1210, wmfs1310, wmfs1410, product_comb_10;
    reg   wmfs110_p11,wmfs210_p11,wmfs310_p11,wmfs410_p11,wmfs510_p11,wmfs610_p11,wmfs710_p11,wmfs810_p11,wmfs910_p11,wmfs1010_p11,wmfs1110_p11,wmfs1210_p11,wmfs1310_p11,wmfs1410_p11;
    reg   wmfc010_p11,wmfc110_p11,wmfc210_p11,wmfc310_p11,wmfc410_p11,wmfc510_p11,wmfc610_p11,wmfc710_p11,wmfc810_p11,wmfc910_p11,wmfc1010_p11,wmfc1110_p11,wmfc1210_p11,wmfc1310_p11,wmfc1410_p11;

//row b11
    wire  wmfc011, wmfc111, wmfc211, wmfc311, wmfc411, wmfc511, wmfc611, wmfc711, wmfc811, wmfc911, wmfc1011, wmfc1111, wmfc1211, wmfc1311;
    wire  wmfs111, wmfs211, wmfs311, wmfs411, wmfs511, wmfs611, wmfs711, wmfs811, wmfs911, wmfs1011, wmfs1111, wmfs1211, wmfs1311, product_comb_11;
    reg   wmfs111_p12,wmfs211_p12,wmfs311_p12,wmfs411_p12,wmfs511_p12,wmfs611_p12,wmfs711_p12,wmfs811_p12,wmfs911_p12,wmfs1011_p12,wmfs1111_p12,wmfs1211_p12,wmfs1311_p12;
    reg   wmfc011_p12,wmfc111_p12,wmfc211_p12,wmfc311_p12,wmfc411_p12,wmfc511_p12,wmfc611_p12,wmfc711_p12,wmfc811_p12,wmfc911_p12,wmfc1011_p12,wmfc1111_p12,wmfc1211_p12,wmfc1311_p12;

//row b12
    wire  wmfc012, wmfc112, wmfc212, wmfc312, wmfc412, wmfc512, wmfc612, wmfc712, wmfc812, wmfc912, wmfc1012, wmfc1112, wmfc1212;
    wire  wmfs112, wmfs212, wmfs312, wmfs412, wmfs512, wmfs612, wmfs712, wmfs812, wmfs912, wmfs1012, wmfs1112, wmfs1212, product_comb_12;
    reg   wmfs112_p13,wmfs212_p13,wmfs312_p13,wmfs412_p13,wmfs512_p13,wmfs612_p13,wmfs712_p13,wmfs812_p13,wmfs912_p13,wmfs1012_p13,wmfs1112_p13,wmfs1212_p13;
    reg   wmfc012_p13,wmfc112_p13,wmfc212_p13,wmfc312_p13,wmfc412_p13,wmfc512_p13,wmfc612_p13,wmfc712_p13,wmfc812_p13,wmfc912_p13,wmfc1012_p13,wmfc1112_p13,wmfc1212_p13;

//row b13
    wire  wfac013, wfac113, wfac213, wfac313, wfac413, wfac513, wfac613, wfac713, wfac813, wfac913, wfac1013, wfac1113, product_comb_13, product_comb_14, product_comb_15, product_comb_16, product_comb_17, product_comb_18, product_comb_19, product_comb_20, product_comb_21, product_comb_22, product_comb_23, product_comb_24;

//Row bo Implementation
    and a00(product_comb_0, A[0], B[0]);
    and a10(wa10 ,A[1], B[0]);
    and a20(wa20 ,A[2], B[0]);
    and a30(wa30, A[3], B[0]);
    and a40(wa40, A[4], B[0]);
    and a50(wa50 ,A[5], B[0]);
    and a60(wa60, A[6], B[0]);
    and a70(wa70, A[7], B[0]);
    and a80(wa80, A[8], B[0]);
    and a90(wa90, A[9], B[0]);
    and a100(wa100, A[10], B[0]);
    and a110(wa110, A[11], B[0]);
    and a120(wa120, A[12], B[0]);

    assign wa130 = wa120;
    assign wa140 = wa120;
    assign wa150 = wa120;
    assign wa160 = wa120;
    assign wa170 = wa120;
    assign wa180 = wa120;
    assign wa190 = wa120;
    assign wa200 = wa120;
    assign wa210 = wa120;
    assign wa220 = wa120;
    assign wa230 = wa120;
    assign wa240 = wa120;

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[0] <= 1'b0;
         wa10_p1 <= 1'b0;
         wa20_p1 <= 1'b0;
         wa30_p1 <= 1'b0;
         wa40_p1 <= 1'b0;
         wa50_p1 <= 1'b0;
         wa60_p1 <= 1'b0;
         wa70_p1 <= 1'b0;
         wa80_p1 <= 1'b0;
         wa90_p1 <= 1'b0;
         wa100_p1 <= 1'b0;
         wa110_p1 <= 1'b0;
         wa120_p1 <= 1'b0;
         wa130_p1 <= 1'b0;
         wa140_p1 <= 1'b0;
         wa150_p1 <= 1'b0;
         wa160_p1 <= 1'b0;
         wa170_p1 <= 1'b0;
         wa180_p1 <= 1'b0;
         wa190_p1 <= 1'b0;
         wa200_p1 <= 1'b0;
         wa210_p1 <= 1'b0;
         wa220_p1 <= 1'b0;
         wa230_p1 <= 1'b0;
         wa240_p1 <= 1'b0;
      end else begin
         P[0] <= product_comb_0;
         wa10_p1 <= wa10;
         wa20_p1 <= wa20;
         wa30_p1 <= wa30;
         wa40_p1 <= wa40;
         wa50_p1 <= wa50;
         wa60_p1 <= wa60;
         wa70_p1 <= wa70;
         wa80_p1 <= wa80;
         wa90_p1 <= wa90;
         wa100_p1 <= wa100;
         wa110_p1 <= wa110;
         wa120_p1 <= wa120;
         wa130_p1 <= wa130;
         wa140_p1 <= wa140;
         wa150_p1 <= wa150;
         wa160_p1 <= wa160;
         wa170_p1 <= wa170;
         wa180_p1 <= wa180;
         wa190_p1 <= wa190;
         wa200_p1 <= wa200;
         wa210_p1 <= wa210;
         wa220_p1 <= wa220;
         wa230_p1 <= wa230;
         wa240_p1 <= wa240;
      end
   end

//Row b1

    MHA     mha001(.Sum(product_comb_1), .Cout(wmhc001), .A(A[0]), .B(B[1]), .Sin(wa10_p1));
    MHA     mha101(.Sum(wmhs101), .Cout(wmhc101), .A(A[1]), .B(B[1]), .Sin(wa20_p1));
    MHA     mha201(.Sum(wmhs201), .Cout(wmhc201), .A(A[2]), .B(B[1]), .Sin(wa30_p1));
    MHA     mha301(.Sum(wmhs301), .Cout(wmhc301), .A(A[3]), .B(B[1]), .Sin(wa40_p1));
    MHA     mha401(.Sum(wmhs401), .Cout(wmhc401), .A(A[4]), .B(B[1]), .Sin(wa50_p1));
    MHA     mha501(.Sum(wmhs501), .Cout(wmhc501), .A(A[5]), .B(B[1]), .Sin(wa60_p1));
    MHA     mha601(.Sum(wmhs601), .Cout(wmhc601), .A(A[6]), .B(B[1]), .Sin(wa70_p1));
    MHA     mha701(.Sum(wmhs701), .Cout(wmhc701), .A(A[7]), .B(B[1]), .Sin(wa80_p1));
    MHA     mha801(.Sum(wmhs801), .Cout(wmhc801), .A(A[8]), .B(B[1]), .Sin(wa90_p1));
    MHA     mha901(.Sum(wmhs901), .Cout(wmhc901), .A(A[9]), .B(B[1]), .Sin(wa100_p1));
    MHA     mha1001(.Sum(wmhs1001), .Cout(wmhc1001), .A(A[10]), .B(B[1]), .Sin(wa110_p1));
    MHA     mha1101(.Sum(wmhs1101), .Cout(wmhc1101), .A(A[11]), .B(B[1]), .Sin(wa120_p1));
    MHA     mha1201(.Sum(wmhs1201), .Cout(wmhc1201), .A(A[12]), .B(B[1]), .Sin(wa130_p1));

    MHA     mha1301(.Sum(wmhs1301), .Cout(wmhc1301), .A(A[12]), .B(B[1]), .Sin(wa140_p1));
    MHA     mha1401(.Sum(wmhs1401), .Cout(wmhc1401), .A(A[12]), .B(B[1]), .Sin(wa150_p1));
    MHA     mha1501(.Sum(wmhs1501), .Cout(wmhc1501), .A(A[12]), .B(B[1]), .Sin(wa160_p1));
    MHA     mha1601(.Sum(wmhs1601), .Cout(wmhc1601), .A(A[12]), .B(B[1]), .Sin(wa170_p1));
    MHA     mha1701(.Sum(wmhs1701), .Cout(wmhc1701), .A(A[12]), .B(B[1]), .Sin(wa180_p1));
    MHA     mha1801(.Sum(wmhs1801), .Cout(wmhc1801), .A(A[12]), .B(B[1]), .Sin(wa190_p1));
    MHA     mha1901(.Sum(wmhs1901), .Cout(wmhc1901), .A(A[12]), .B(B[1]), .Sin(wa200_p1));
    MHA     mha2001(.Sum(wmhs2001), .Cout(wmhc2001), .A(A[12]), .B(B[1]), .Sin(wa210_p1));
    MHA     mha2101(.Sum(wmhs2101), .Cout(wmhc2101), .A(A[12]), .B(B[1]), .Sin(wa220_p1));
    MHA     mha2201(.Sum(wmhs2201), .Cout(wmhc2201), .A(A[12]), .B(B[1]), .Sin(wa230_p1));
    MHA     mha2301(.Sum(wmhs2301), .Cout(wmhc2301), .A(A[12]), .B(B[1]), .Sin(wa240_p1));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[1] <= 1'b0;
         wmhs101_p2 <= 1'b0;
         wmhs201_p2 <= 1'b0;
         wmhs301_p2 <= 1'b0;
         wmhs401_p2 <= 1'b0;
         wmhs501_p2 <= 1'b0;
         wmhs601_p2 <= 1'b0;
         wmhs701_p2 <= 1'b0;
         wmhs801_p2 <= 1'b0;
         wmhs901_p2 <= 1'b0;
         wmhs1001_p2 <= 1'b0;
         wmhs1101_p2 <= 1'b0;
         wmhs1201_p2 <= 1'b0;
         wmhs1301_p2 <= 1'b0;
         wmhs1401_p2 <= 1'b0;
         wmhs1501_p2 <= 1'b0;
         wmhs1601_p2 <= 1'b0;
         wmhs1701_p2 <= 1'b0;
         wmhs1801_p2 <= 1'b0;
         wmhs1901_p2 <= 1'b0;
         wmhs2001_p2 <= 1'b0;
         wmhs2101_p2 <= 1'b0;
         wmhs2201_p2 <= 1'b0;
         wmhs2301_p2 <= 1'b0;
         wmhc001_p2 <= 1'b0;
         wmhc101_p2 <= 1'b0;
         wmhc201_p2 <= 1'b0;
         wmhc301_p2 <= 1'b0;
         wmhc401_p2 <= 1'b0;
         wmhc501_p2 <= 1'b0;
         wmhc601_p2 <= 1'b0;
         wmhc701_p2 <= 1'b0;
         wmhc801_p2 <= 1'b0;
         wmhc901_p2 <= 1'b0;
         wmhc1001_p2 <= 1'b0;
         wmhc1101_p2 <= 1'b0;
         wmhc1201_p2 <= 1'b0;
         wmhc1301_p2 <= 1'b0;
         wmhc1401_p2 <= 1'b0;
         wmhc1501_p2 <= 1'b0;
         wmhc1601_p2 <= 1'b0;
         wmhc1701_p2 <= 1'b0;
         wmhc1801_p2 <= 1'b0;
         wmhc1901_p2 <= 1'b0;
         wmhc2001_p2 <= 1'b0;
         wmhc2101_p2 <= 1'b0;
         wmhc2201_p2 <= 1'b0;
         wmhc2301_p2 <= 1'b0;
      end else begin
         P[1] <= product_comb_1;
         wmhs101_p2 <= wmhs101;
         wmhs201_p2 <= wmhs201;
         wmhs301_p2 <= wmhs301;
         wmhs401_p2 <= wmhs401;
         wmhs501_p2 <= wmhs501;
         wmhs601_p2 <= wmhs601;
         wmhs701_p2 <= wmhs701;
         wmhs801_p2 <= wmhs801;
         wmhs901_p2 <= wmhs901;
         wmhs1001_p2 <= wmhs1001;
         wmhs1101_p2 <= wmhs1101;
         wmhs1201_p2 <= wmhs1201;
         wmhs1301_p2 <= wmhs1301;
         wmhs1401_p2 <= wmhs1401;
         wmhs1501_p2 <= wmhs1501;
         wmhs1601_p2 <= wmhs1601;
         wmhs1701_p2 <= wmhs1701;
         wmhs1801_p2 <= wmhs1801;
         wmhs1901_p2 <= wmhs1901;
         wmhs2001_p2 <= wmhs2001;
         wmhs2101_p2 <= wmhs2101;
         wmhs2201_p2 <= wmhs2201;
         wmhs2301_p2 <= wmhs2301;
         wmhc001_p2 <= wmhc001;
         wmhc101_p2 <= wmhc101;
         wmhc201_p2 <= wmhc201;
         wmhc301_p2 <= wmhc301;
         wmhc401_p2 <= wmhc401;
         wmhc501_p2 <= wmhc501;
         wmhc601_p2 <= wmhc601;
         wmhc701_p2 <= wmhc701;
         wmhc801_p2 <= wmhc801;
         wmhc901_p2 <= wmhc901;
         wmhc1001_p2 <= wmhc1001;
         wmhc1101_p2 <= wmhc1101;
         wmhc1201_p2 <= wmhc1201;
         wmhc1301_p2 <= wmhc1301;
         wmhc1401_p2 <= wmhc1401;
         wmhc1501_p2 <= wmhc1501;
         wmhc1601_p2 <= wmhc1601;
         wmhc1701_p2 <= wmhc1701;
         wmhc1801_p2 <= wmhc1801;
         wmhc1901_p2 <= wmhc1901;
         wmhc2001_p2 <= wmhc2001;
         wmhc2101_p2 <= wmhc2101;
         wmhc2201_p2 <= wmhc2201;
         wmhc2301_p2 <= wmhc2301;
      end
   end

// Row b2
    MFA     mfa002(.Sum(product_comb_2), .Cout(wmfc002), .A(A[0]), .B(B[2]), .Sin(wmhs101_p2), .Cin(wmhc001_p2));
    MFA     mfa102(.Sum(wmfs102), .Cout(wmfc102), .A(A[1]), .B(B[2]), .Sin(wmhs201_p2), .Cin(wmhc101_p2));
    MFA     mfa202(.Sum(wmfs202), .Cout(wmfc202), .A(A[2]), .B(B[2]), .Sin(wmhs301_p2), .Cin(wmhc201_p2));
    MFA     mfa302(.Sum(wmfs302), .Cout(wmfc302), .A(A[3]), .B(B[2]), .Sin(wmhs401_p2), .Cin(wmhc301_p2));
    MFA     mfa402(.Sum(wmfs402), .Cout(wmfc402), .A(A[4]), .B(B[2]), .Sin(wmhs501_p2), .Cin(wmhc401_p2));
    MFA     mfa502(.Sum(wmfs502), .Cout(wmfc502), .A(A[5]), .B(B[2]), .Sin(wmhs601_p2), .Cin(wmhc501_p2));
    MFA     mfa602(.Sum(wmfs602), .Cout(wmfc602), .A(A[6]), .B(B[2]), .Sin(wmhs701_p2), .Cin(wmhc601_p2));
    MFA     mfa702(.Sum(wmfs702), .Cout(wmfc702), .A(A[7]), .B(B[2]), .Sin(wmhs801_p2), .Cin(wmhc701_p2));
    MFA     mfa802(.Sum(wmfs802), .Cout(wmfc802), .A(A[8]), .B(B[2]), .Sin(wmhs901_p2), .Cin(wmhc801_p2));
    MFA     mfa902(.Sum(wmfs902), .Cout(wmfc902), .A(A[9]), .B(B[2]), .Sin(wmhs1001_p2), .Cin(wmhc901_p2));
    MFA     mfa1002(.Sum(wmfs1002), .Cout(wmfc1002), .A(A[10]), .B(B[2]), .Sin(wmhs1101_p2), .Cin(wmhc1001_p2));
    MFA     mfa1102(.Sum(wmfs1102), .Cout(wmfc1102), .A(A[11]), .B(B[2]), .Sin(wmhs1201_p2), .Cin(wmhc1101_p2));
    MFA     mfa1202(.Sum(wmfs1202), .Cout(wmfc1202), .A(A[12]), .B(B[2]), .Sin(wmhs1301_p2), .Cin(wmhc1201_p2));

    MFA     mfa1302(.Sum(wmfs1302), .Cout(wmfc1302), .A(A[12]), .B(B[2]), .Sin(wmhs1401_p2), .Cin(wmhc1301_p2));
    MFA     mfa1402(.Sum(wmfs1402), .Cout(wmfc1402), .A(A[12]), .B(B[2]), .Sin(wmhs1501_p2), .Cin(wmhc1401_p2));
    MFA     mfa1502(.Sum(wmfs1502), .Cout(wmfc1502), .A(A[12]), .B(B[2]), .Sin(wmhs1601_p2), .Cin(wmhc1501_p2));
    MFA     mfa1602(.Sum(wmfs1602), .Cout(wmfc1602), .A(A[12]), .B(B[2]), .Sin(wmhs1701_p2), .Cin(wmhc1601_p2));
    MFA     mfa1702(.Sum(wmfs1702), .Cout(wmfc1702), .A(A[12]), .B(B[2]), .Sin(wmhs1801_p2), .Cin(wmhc1701_p2));
    MFA     mfa1802(.Sum(wmfs1802), .Cout(wmfc1802), .A(A[12]), .B(B[2]), .Sin(wmhs1901_p2), .Cin(wmhc1801_p2));
    MFA     mfa1902(.Sum(wmfs1902), .Cout(wmfc1902), .A(A[12]), .B(B[2]), .Sin(wmhs2001_p2), .Cin(wmhc1901_p2));
    MFA     mfa2002(.Sum(wmfs2002), .Cout(wmfc2002), .A(A[12]), .B(B[2]), .Sin(wmhs2101_p2), .Cin(wmhc2001_p2));
    MFA     mfa2102(.Sum(wmfs2102), .Cout(wmfc2102), .A(A[12]), .B(B[2]), .Sin(wmhs2201_p2), .Cin(wmhc2101_p2));
    MFA     mfa2202(.Sum(wmfs2202), .Cout(wmfc2202), .A(A[12]), .B(B[2]), .Sin(wmhs2301_p2), .Cin(wmhc2201_p2));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[2] <= 1'b0;
         wmfs102_p3 <= 1'b0;
         wmfs202_p3 <= 1'b0;
         wmfs302_p3 <= 1'b0;
         wmfs402_p3 <= 1'b0;
         wmfs502_p3 <= 1'b0;
         wmfs602_p3 <= 1'b0;
         wmfs702_p3 <= 1'b0;
         wmfs802_p3 <= 1'b0;
         wmfs902_p3 <= 1'b0;
         wmfs1002_p3 <= 1'b0;
         wmfs1102_p3 <= 1'b0;
         wmfs1202_p3 <= 1'b0;
         wmfs1302_p3 <= 1'b0;
         wmfs1402_p3 <= 1'b0;
         wmfs1502_p3 <= 1'b0;
         wmfs1602_p3 <= 1'b0;
         wmfs1702_p3 <= 1'b0;
         wmfs1802_p3 <= 1'b0;
         wmfs1902_p3 <= 1'b0;
         wmfs2002_p3 <= 1'b0;
         wmfs2102_p3 <= 1'b0;
         wmfs2202_p3 <= 1'b0;
         wmfc002_p3 <= 1'b0;
         wmfc102_p3 <= 1'b0;
         wmfc202_p3 <= 1'b0;
         wmfc302_p3 <= 1'b0;
         wmfc402_p3 <= 1'b0;
         wmfc502_p3 <= 1'b0;
         wmfc602_p3 <= 1'b0;
         wmfc702_p3 <= 1'b0;
         wmfc802_p3 <= 1'b0;
         wmfc902_p3 <= 1'b0;
         wmfc1002_p3 <= 1'b0;
         wmfc1102_p3 <= 1'b0;
         wmfc1202_p3 <= 1'b0;
         wmfc1302_p3 <= 1'b0;
         wmfc1402_p3 <= 1'b0;
         wmfc1502_p3 <= 1'b0;
         wmfc1602_p3 <= 1'b0;
         wmfc1702_p3 <= 1'b0;
         wmfc1802_p3 <= 1'b0;
         wmfc1902_p3 <= 1'b0;
         wmfc2002_p3 <= 1'b0;
         wmfc2102_p3 <= 1'b0;
         wmfc2202_p3 <= 1'b0;
      end else begin
         P[2] <= product_comb_2;
         wmfs102_p3 <= wmfs102;
         wmfs202_p3 <= wmfs202;
         wmfs302_p3 <= wmfs302;
         wmfs402_p3 <= wmfs402;
         wmfs502_p3 <= wmfs502;
         wmfs602_p3 <= wmfs602;
         wmfs702_p3 <= wmfs702;
         wmfs802_p3 <= wmfs802;
         wmfs902_p3 <= wmfs902;
         wmfs1002_p3 <= wmfs1002;
         wmfs1102_p3 <= wmfs1102;
         wmfs1202_p3 <= wmfs1202;
         wmfs1302_p3 <= wmfs1302;
         wmfs1402_p3 <= wmfs1402;
         wmfs1502_p3 <= wmfs1502;
         wmfs1602_p3 <= wmfs1602;
         wmfs1702_p3 <= wmfs1702;
         wmfs1802_p3 <= wmfs1802;
         wmfs1902_p3 <= wmfs1902;
         wmfs2002_p3 <= wmfs2002;
         wmfs2102_p3 <= wmfs2102;
         wmfs2202_p3 <= wmfs2202;
         wmfc002_p3 <= wmfc002;
         wmfc102_p3 <= wmfc102;
         wmfc202_p3 <= wmfc202;
         wmfc302_p3 <= wmfc302;
         wmfc402_p3 <= wmfc402;
         wmfc502_p3 <= wmfc502;
         wmfc602_p3 <= wmfc602;
         wmfc702_p3 <= wmfc702;
         wmfc802_p3 <= wmfc802;
         wmfc902_p3 <= wmfc902;
         wmfc1002_p3 <= wmfc1002;
         wmfc1102_p3 <= wmfc1102;
         wmfc1202_p3 <= wmfc1202;
         wmfc1302_p3 <= wmfc1302;
         wmfc1402_p3 <= wmfc1402;
         wmfc1502_p3 <= wmfc1502;
         wmfc1602_p3 <= wmfc1602;
         wmfc1702_p3 <= wmfc1702;
         wmfc1802_p3 <= wmfc1802;
         wmfc1902_p3 <= wmfc1902;
         wmfc2002_p3 <= wmfc2002;
         wmfc2102_p3 <= wmfc2102;
         wmfc2202_p3 <= wmfc2202;
      end
   end


// Row b3
    MFA     mfa003(.Sum(product_comb_3), .Cout(wmfc003), .A(A[0]), .B(B[3]), .Sin(wmfs102_p3), .Cin(wmfc002_p3));
    MFA     mfa103(.Sum(wmfs103), .Cout(wmfc103), .A(A[1]), .B(B[3]), .Sin(wmfs202_p3), .Cin(wmfc102_p3));
    MFA     mfa203(.Sum(wmfs203), .Cout(wmfc203), .A(A[2]), .B(B[3]), .Sin(wmfs302_p3), .Cin(wmfc202_p3));
    MFA     mfa303(.Sum(wmfs303), .Cout(wmfc303), .A(A[3]), .B(B[3]), .Sin(wmfs402_p3), .Cin(wmfc302_p3));
    MFA     mfa403(.Sum(wmfs403), .Cout(wmfc403), .A(A[4]), .B(B[3]), .Sin(wmfs502_p3), .Cin(wmfc402_p3));
    MFA     mfa503(.Sum(wmfs503), .Cout(wmfc503), .A(A[5]), .B(B[3]), .Sin(wmfs602_p3), .Cin(wmfc502_p3));
    MFA     mfa603(.Sum(wmfs603), .Cout(wmfc603), .A(A[6]), .B(B[3]), .Sin(wmfs702_p3), .Cin(wmfc602_p3));
    MFA     mfa703(.Sum(wmfs703), .Cout(wmfc703), .A(A[7]), .B(B[3]), .Sin(wmfs802_p3), .Cin(wmfc702_p3));
    MFA     mfa803(.Sum(wmfs803), .Cout(wmfc803), .A(A[8]), .B(B[3]), .Sin(wmfs902_p3), .Cin(wmfc802_p3));
    MFA     mfa903(.Sum(wmfs903), .Cout(wmfc903), .A(A[9]), .B(B[3]), .Sin(wmfs1002_p3), .Cin(wmfc902_p3));
    MFA     mfa1003(.Sum(wmfs1003), .Cout(wmfc1003), .A(A[10]), .B(B[3]), .Sin(wmfs1102_p3), .Cin(wmfc1002_p3));
    MFA     mfa1103(.Sum(wmfs1103), .Cout(wmfc1103), .A(A[11]), .B(B[3]), .Sin(wmfs1202_p3), .Cin(wmfc1102_p3));
    MFA     mfa1203(.Sum(wmfs1203), .Cout(wmfc1203), .A(A[12]), .B(B[3]), .Sin(wmfs1302_p3), .Cin(wmfc1202_p3));

    MFA     mfa1303(.Sum(wmfs1303), .Cout(wmfc1303), .A(A[12]), .B(B[3]), .Sin(wmfs1402_p3), .Cin(wmfc1302_p3));
    MFA     mfa1403(.Sum(wmfs1403), .Cout(wmfc1403), .A(A[12]), .B(B[3]), .Sin(wmfs1502_p3), .Cin(wmfc1402_p3));
    MFA     mfa1503(.Sum(wmfs1503), .Cout(wmfc1503), .A(A[12]), .B(B[3]), .Sin(wmfs1602_p3), .Cin(wmfc1502_p3));
    MFA     mfa1603(.Sum(wmfs1603), .Cout(wmfc1603), .A(A[12]), .B(B[3]), .Sin(wmfs1702_p3), .Cin(wmfc1602_p3));
    MFA     mfa1703(.Sum(wmfs1703), .Cout(wmfc1703), .A(A[12]), .B(B[3]), .Sin(wmfs1802_p3), .Cin(wmfc1702_p3));
    MFA     mfa1803(.Sum(wmfs1803), .Cout(wmfc1803), .A(A[12]), .B(B[3]), .Sin(wmfs1902_p3), .Cin(wmfc1802_p3));
    MFA     mfa1903(.Sum(wmfs1903), .Cout(wmfc1903), .A(A[12]), .B(B[3]), .Sin(wmfs2002_p3), .Cin(wmfc1902_p3));
    MFA     mfa2003(.Sum(wmfs2003), .Cout(wmfc2003), .A(A[12]), .B(B[3]), .Sin(wmfs2102_p3), .Cin(wmfc2002_p3));
    MFA     mfa2103(.Sum(wmfs2103), .Cout(wmfc2103), .A(A[12]), .B(B[3]), .Sin(wmfs2202_p3), .Cin(wmfc2102_p3));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[3] <= 1'b0;
         wmfs103_p4 <= 1'b0;
         wmfs203_p4 <= 1'b0;
         wmfs303_p4 <= 1'b0;
         wmfs403_p4 <= 1'b0;
         wmfs503_p4 <= 1'b0;
         wmfs603_p4 <= 1'b0;
         wmfs703_p4 <= 1'b0;
         wmfs803_p4 <= 1'b0;
         wmfs903_p4 <= 1'b0;
         wmfs1003_p4 <= 1'b0;
         wmfs1103_p4 <= 1'b0;
         wmfs1203_p4 <= 1'b0;
         wmfs1303_p4 <= 1'b0;
         wmfs1403_p4 <= 1'b0;
         wmfs1503_p4 <= 1'b0;
         wmfs1603_p4 <= 1'b0;
         wmfs1703_p4 <= 1'b0;
         wmfs1803_p4 <= 1'b0;
         wmfs1903_p4 <= 1'b0;
         wmfs2003_p4 <= 1'b0;
         wmfs2103_p4 <= 1'b0;
         wmfc003_p4 <= 1'b0;
         wmfc103_p4 <= 1'b0;
         wmfc203_p4 <= 1'b0;
         wmfc303_p4 <= 1'b0;
         wmfc403_p4 <= 1'b0;
         wmfc503_p4 <= 1'b0;
         wmfc603_p4 <= 1'b0;
         wmfc703_p4 <= 1'b0;
         wmfc803_p4 <= 1'b0;
         wmfc903_p4 <= 1'b0;
         wmfc1003_p4 <= 1'b0;
         wmfc1103_p4 <= 1'b0;
         wmfc1203_p4 <= 1'b0;
         wmfc1303_p4 <= 1'b0;
         wmfc1403_p4 <= 1'b0;
         wmfc1503_p4 <= 1'b0;
         wmfc1603_p4 <= 1'b0;
         wmfc1703_p4 <= 1'b0;
         wmfc1803_p4 <= 1'b0;
         wmfc1903_p4 <= 1'b0;
         wmfc2003_p4 <= 1'b0;
         wmfc2103_p4 <= 1'b0;
      end else begin
         P[3] <= product_comb_3;
         wmfs103_p4 <= wmfs103;
         wmfs203_p4 <= wmfs203;
         wmfs303_p4 <= wmfs303;
         wmfs403_p4 <= wmfs403;
         wmfs503_p4 <= wmfs503;
         wmfs603_p4 <= wmfs603;
         wmfs703_p4 <= wmfs703;
         wmfs803_p4 <= wmfs803;
         wmfs903_p4 <= wmfs903;
         wmfs1003_p4 <= wmfs1003;
         wmfs1103_p4 <= wmfs1103;
         wmfs1203_p4 <= wmfs1203;
         wmfs1303_p4 <= wmfs1303;
         wmfs1403_p4 <= wmfs1403;
         wmfs1503_p4 <= wmfs1503;
         wmfs1603_p4 <= wmfs1603;
         wmfs1703_p4 <= wmfs1703;
         wmfs1803_p4 <= wmfs1803;
         wmfs1903_p4 <= wmfs1903;
         wmfs2003_p4 <= wmfs2003;
         wmfs2103_p4 <= wmfs2103;
         wmfc003_p4 <= wmfc003;
         wmfc103_p4 <= wmfc103;
         wmfc203_p4 <= wmfc203;
         wmfc303_p4 <= wmfc303;
         wmfc403_p4 <= wmfc403;
         wmfc503_p4 <= wmfc503;
         wmfc603_p4 <= wmfc603;
         wmfc703_p4 <= wmfc703;
         wmfc803_p4 <= wmfc803;
         wmfc903_p4 <= wmfc903;
         wmfc1003_p4 <= wmfc1003;
         wmfc1103_p4 <= wmfc1103;
         wmfc1203_p4 <= wmfc1203;
         wmfc1303_p4 <= wmfc1303;
         wmfc1403_p4 <= wmfc1403;
         wmfc1503_p4 <= wmfc1503;
         wmfc1603_p4 <= wmfc1603;
         wmfc1703_p4 <= wmfc1703;
         wmfc1803_p4 <= wmfc1803;
         wmfc1903_p4 <= wmfc1903;
         wmfc2003_p4 <= wmfc2003;
         wmfc2103_p4 <= wmfc2103;
      end
end

// Row b4
    MFA     mfa004(.Sum(product_comb_4), .Cout(wmfc004), .A(A[0]), .B(B[4]), .Sin(wmfs103_p4), .Cin(wmfc003_p4));
    MFA     mfa104(.Sum(wmfs104), .Cout(wmfc104), .A(A[1]), .B(B[4]), .Sin(wmfs203_p4), .Cin(wmfc103_p4));
    MFA     mfa204(.Sum(wmfs204), .Cout(wmfc204), .A(A[2]), .B(B[4]), .Sin(wmfs303_p4), .Cin(wmfc203_p4));
    MFA     mfa304(.Sum(wmfs304), .Cout(wmfc304), .A(A[3]), .B(B[4]), .Sin(wmfs403_p4), .Cin(wmfc303_p4));
    MFA     mfa404(.Sum(wmfs404), .Cout(wmfc404), .A(A[4]), .B(B[4]), .Sin(wmfs503_p4), .Cin(wmfc403_p4));
    MFA     mfa504(.Sum(wmfs504), .Cout(wmfc504), .A(A[5]), .B(B[4]), .Sin(wmfs603_p4), .Cin(wmfc503_p4));
    MFA     mfa604(.Sum(wmfs604), .Cout(wmfc604), .A(A[6]), .B(B[4]), .Sin(wmfs703_p4), .Cin(wmfc603_p4));
    MFA     mfa704(.Sum(wmfs704), .Cout(wmfc704), .A(A[7]), .B(B[4]), .Sin(wmfs803_p4), .Cin(wmfc703_p4));
    MFA     mfa804(.Sum(wmfs804), .Cout(wmfc804), .A(A[8]), .B(B[4]), .Sin(wmfs903_p4), .Cin(wmfc803_p4));
    MFA     mfa904(.Sum(wmfs904), .Cout(wmfc904), .A(A[9]), .B(B[4]), .Sin(wmfs1003_p4), .Cin(wmfc903_p4));
    MFA     mfa1004(.Sum(wmfs1004), .Cout(wmfc1004), .A(A[10]), .B(B[4]), .Sin(wmfs1103_p4), .Cin(wmfc1003_p4));
    MFA     mfa1104(.Sum(wmfs1104), .Cout(wmfc1104), .A(A[11]), .B(B[4]), .Sin(wmfs1203_p4), .Cin(wmfc1103_p4));
    MFA     mfa1204(.Sum(wmfs1204), .Cout(wmfc1204), .A(A[12]), .B(B[4]), .Sin(wmfs1303_p4), .Cin(wmfc1203_p4));

    MFA     mfa1304(.Sum(wmfs1304), .Cout(wmfc1304), .A(A[12]), .B(B[4]), .Sin(wmfs1403_p4), .Cin(wmfc1303_p4));
    MFA     mfa1404(.Sum(wmfs1404), .Cout(wmfc1404), .A(A[12]), .B(B[4]), .Sin(wmfs1503_p4), .Cin(wmfc1403_p4));
    MFA     mfa1504(.Sum(wmfs1504), .Cout(wmfc1504), .A(A[12]), .B(B[4]), .Sin(wmfs1603_p4), .Cin(wmfc1503_p4));
    MFA     mfa1604(.Sum(wmfs1604), .Cout(wmfc1604), .A(A[12]), .B(B[4]), .Sin(wmfs1703_p4), .Cin(wmfc1603_p4));
    MFA     mfa1704(.Sum(wmfs1704), .Cout(wmfc1704), .A(A[12]), .B(B[4]), .Sin(wmfs1803_p4), .Cin(wmfc1703_p4));
    MFA     mfa1804(.Sum(wmfs1804), .Cout(wmfc1804), .A(A[12]), .B(B[4]), .Sin(wmfs1903_p4), .Cin(wmfc1803_p4));
    MFA     mfa1904(.Sum(wmfs1904), .Cout(wmfc1904), .A(A[12]), .B(B[4]), .Sin(wmfs2003_p4), .Cin(wmfc1903_p4));
    MFA     mfa2004(.Sum(wmfs2004), .Cout(wmfc2004), .A(A[12]), .B(B[4]), .Sin(wmfs2103_p4), .Cin(wmfc2003_p4));

    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        P[4] <= 1'b0;
        wmfs104_p5 <= 1'b0;
        wmfs204_p5 <= 1'b0;
        wmfs304_p5 <= 1'b0;
        wmfs404_p5 <= 1'b0;
        wmfs504_p5 <= 1'b0;
        wmfs604_p5 <= 1'b0;
        wmfs704_p5 <= 1'b0;
        wmfs804_p5 <= 1'b0;
        wmfs904_p5 <= 1'b0;
        wmfs1004_p5 <= 1'b0;
        wmfs1104_p5 <= 1'b0;
        wmfs1204_p5 <= 1'b0;
        wmfs1304_p5 <= 1'b0;
        wmfs1404_p5 <= 1'b0;
        wmfs1504_p5 <= 1'b0;
        wmfs1604_p5 <= 1'b0;
        wmfs1704_p5 <= 1'b0;
        wmfs1804_p5 <= 1'b0;
        wmfs1904_p5 <= 1'b0;
        wmfs2004_p5 <= 1'b0;
        wmfc004_p5 <= 1'b0;
        wmfc104_p5 <= 1'b0;
        wmfc204_p5 <= 1'b0;
        wmfc304_p5 <= 1'b0;
        wmfc404_p5 <= 1'b0;
        wmfc504_p5 <= 1'b0;
        wmfc604_p5 <= 1'b0;
        wmfc704_p5 <= 1'b0;
        wmfc804_p5 <= 1'b0;
        wmfc904_p5 <= 1'b0;
        wmfc1004_p5 <= 1'b0;
        wmfc1104_p5 <= 1'b0;
        wmfc1204_p5 <= 1'b0;
        wmfc1304_p5 <= 1'b0;
        wmfc1404_p5 <= 1'b0;
        wmfc1504_p5 <= 1'b0;
        wmfc1604_p5 <= 1'b0;
        wmfc1704_p5 <= 1'b0;
        wmfc1804_p5 <= 1'b0;
        wmfc1904_p5 <= 1'b0;
        wmfc2004_p5 <= 1'b0;
    end else begin
        P[4] <= product_comb_4;
        wmfs104_p5 <= wmfs104;
        wmfs204_p5 <= wmfs204;
        wmfs304_p5 <= wmfs304;
        wmfs404_p5 <= wmfs404;
        wmfs504_p5 <= wmfs504;
        wmfs604_p5 <= wmfs604;
        wmfs704_p5 <= wmfs704;
        wmfs804_p5 <= wmfs804;
        wmfs904_p5 <= wmfs904;
        wmfs1004_p5 <= wmfs1004;
        wmfs1104_p5 <= wmfs1104;
        wmfs1204_p5 <= wmfs1204;
        wmfs1304_p5 <= wmfs1304;
        wmfs1404_p5 <= wmfs1404;
        wmfs1504_p5 <= wmfs1504;
        wmfs1604_p5 <= wmfs1604;
        wmfs1704_p5 <= wmfs1704;
        wmfs1804_p5 <= wmfs1804;
        wmfs1904_p5 <= wmfs1904;
        wmfs2004_p5 <= wmfs2004;
        wmfc004_p5 <= wmfc004;
        wmfc104_p5 <= wmfc104;
        wmfc204_p5 <= wmfc204;
        wmfc304_p5 <= wmfc304;
        wmfc404_p5 <= wmfc404;
        wmfc504_p5 <= wmfc504;
        wmfc604_p5 <= wmfc604;
        wmfc704_p5 <= wmfc704;
        wmfc804_p5 <= wmfc804;
        wmfc904_p5 <= wmfc904;
        wmfc1004_p5 <= wmfc1004;
        wmfc1104_p5 <= wmfc1104;
        wmfc1204_p5 <= wmfc1204;
        wmfc1304_p5 <= wmfc1304;
        wmfc1404_p5 <= wmfc1404;
        wmfc1504_p5 <= wmfc1504;
        wmfc1604_p5 <= wmfc1604;
        wmfc1704_p5 <= wmfc1704;
        wmfc1804_p5 <= wmfc1804;
        wmfc1904_p5 <= wmfc1904;
        wmfc2004_p5 <= wmfc2004;
    end
end

// Row b5
    MFA     mfa005(.Sum(product_comb_5), .Cout(wmfc005), .A(A[0]), .B(B[5]), .Sin(wmfs104_p5), .Cin(wmfc004_p5));
    MFA     mfa105(.Sum(wmfs105), .Cout(wmfc105), .A(A[1]), .B(B[5]), .Sin(wmfs204_p5), .Cin(wmfc104_p5));
    MFA     mfa205(.Sum(wmfs205), .Cout(wmfc205), .A(A[2]), .B(B[5]), .Sin(wmfs304_p5), .Cin(wmfc204_p5));
    MFA     mfa305(.Sum(wmfs305), .Cout(wmfc305), .A(A[3]), .B(B[5]), .Sin(wmfs404_p5), .Cin(wmfc304_p5));
    MFA     mfa405(.Sum(wmfs405), .Cout(wmfc405), .A(A[4]), .B(B[5]), .Sin(wmfs504_p5), .Cin(wmfc404_p5));
    MFA     mfa505(.Sum(wmfs505), .Cout(wmfc505), .A(A[5]), .B(B[5]), .Sin(wmfs604_p5), .Cin(wmfc504_p5));
    MFA     mfa605(.Sum(wmfs605), .Cout(wmfc605), .A(A[6]), .B(B[5]), .Sin(wmfs704_p5), .Cin(wmfc604_p5));
    MFA     mfa705(.Sum(wmfs705), .Cout(wmfc705), .A(A[7]), .B(B[5]), .Sin(wmfs804_p5), .Cin(wmfc704_p5));
    MFA     mfa805(.Sum(wmfs805), .Cout(wmfc805), .A(A[8]), .B(B[5]), .Sin(wmfs904_p5), .Cin(wmfc804_p5));
    MFA     mfa905(.Sum(wmfs905), .Cout(wmfc905), .A(A[9]), .B(B[5]), .Sin(wmfs1004_p5), .Cin(wmfc904_p5));
    MFA     mfa1005(.Sum(wmfs1005), .Cout(wmfc1005), .A(A[10]), .B(B[5]), .Sin(wmfs1104_p5), .Cin(wmfc1004_p5));
    MFA     mfa1105(.Sum(wmfs1105), .Cout(wmfc1105), .A(A[11]), .B(B[5]), .Sin(wmfs1204_p5), .Cin(wmfc1104_p5));
    MFA     mfa1205(.Sum(wmfs1205), .Cout(wmfc1205), .A(A[12]), .B(B[5]), .Sin(wmfs1304_p5), .Cin(wmfc1204_p5));

    MFA     mfa1305(.Sum(wmfs1305), .Cout(wmfc1305), .A(A[12]), .B(B[5]), .Sin(wmfs1404_p5), .Cin(wmfc1304_p5));
    MFA     mfa1405(.Sum(wmfs1405), .Cout(wmfc1405), .A(A[12]), .B(B[5]), .Sin(wmfs1504_p5), .Cin(wmfc1404_p5));
    MFA     mfa1505(.Sum(wmfs1505), .Cout(wmfc1505), .A(A[12]), .B(B[5]), .Sin(wmfs1604_p5), .Cin(wmfc1504_p5));
    MFA     mfa1605(.Sum(wmfs1605), .Cout(wmfc1605), .A(A[12]), .B(B[5]), .Sin(wmfs1704_p5), .Cin(wmfc1604_p5));
    MFA     mfa1705(.Sum(wmfs1705), .Cout(wmfc1705), .A(A[12]), .B(B[5]), .Sin(wmfs1804_p5), .Cin(wmfc1704_p5));
    MFA     mfa1805(.Sum(wmfs1805), .Cout(wmfc1805), .A(A[12]), .B(B[5]), .Sin(wmfs1904_p5), .Cin(wmfc1804_p5));
    MFA     mfa1905(.Sum(wmfs1905), .Cout(wmfc1905), .A(A[12]), .B(B[5]), .Sin(wmfs2004_p5), .Cin(wmfc1904_p5));

    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        P[5] <= 1'b0;
        wmfs105_p6 <= 1'b0;
        wmfs205_p6 <= 1'b0;
        wmfs305_p6 <= 1'b0;
        wmfs405_p6 <= 1'b0;
        wmfs505_p6 <= 1'b0;
        wmfs605_p6 <= 1'b0;
        wmfs705_p6 <= 1'b0;
        wmfs805_p6 <= 1'b0;
        wmfs905_p6 <= 1'b0;
        wmfs1005_p6 <= 1'b0;
        wmfs1105_p6 <= 1'b0;
        wmfs1205_p6 <= 1'b0;
        wmfs1305_p6 <= 1'b0;
        wmfs1405_p6 <= 1'b0;
        wmfs1505_p6 <= 1'b0;
        wmfs1605_p6 <= 1'b0;
        wmfs1705_p6 <= 1'b0;
        wmfs1805_p6 <= 1'b0;
        wmfs1905_p6 <= 1'b0;
        wmfc005_p6 <= 1'b0;
        wmfc105_p6 <= 1'b0;
        wmfc205_p6 <= 1'b0;
        wmfc305_p6 <= 1'b0;
        wmfc405_p6 <= 1'b0;
        wmfc505_p6 <= 1'b0;
        wmfc605_p6 <= 1'b0;
        wmfc705_p6 <= 1'b0;
        wmfc805_p6 <= 1'b0;
        wmfc905_p6 <= 1'b0;
        wmfc1005_p6 <= 1'b0;
        wmfc1105_p6 <= 1'b0;
        wmfc1205_p6 <= 1'b0;
        wmfc1305_p6 <= 1'b0;
        wmfc1405_p6 <= 1'b0;
        wmfc1505_p6 <= 1'b0;
        wmfc1605_p6 <= 1'b0;
        wmfc1705_p6 <= 1'b0;
        wmfc1805_p6 <= 1'b0;
        wmfc1905_p6 <= 1'b0;
    end else begin
        P[5] <= product_comb_5;
        wmfs105_p6 <= wmfs105;
        wmfs205_p6 <= wmfs205;
        wmfs305_p6 <= wmfs305;
        wmfs405_p6 <= wmfs405;
        wmfs505_p6 <= wmfs505;
        wmfs605_p6 <= wmfs605;
        wmfs705_p6 <= wmfs705;
        wmfs805_p6 <= wmfs805;
        wmfs905_p6 <= wmfs905;
        wmfs1005_p6 <= wmfs1005;
        wmfs1105_p6 <= wmfs1105;
        wmfs1205_p6 <= wmfs1205;
        wmfs1305_p6 <= wmfs1305;
        wmfs1405_p6 <= wmfs1405;
        wmfs1505_p6 <= wmfs1505;
        wmfs1605_p6 <= wmfs1605;
        wmfs1705_p6 <= wmfs1705;
        wmfs1805_p6 <= wmfs1805;
        wmfs1905_p6 <= wmfs1905;
        wmfc005_p6 <= wmfc005;
        wmfc105_p6 <= wmfc105;
        wmfc205_p6 <= wmfc205;
        wmfc305_p6 <= wmfc305;
        wmfc405_p6 <= wmfc405;
        wmfc505_p6 <= wmfc505;
        wmfc605_p6 <= wmfc605;
        wmfc705_p6 <= wmfc705;
        wmfc805_p6 <= wmfc805;
        wmfc905_p6 <= wmfc905;
        wmfc1005_p6 <= wmfc1005;
        wmfc1105_p6 <= wmfc1105;
        wmfc1205_p6 <= wmfc1205;
        wmfc1305_p6 <= wmfc1305;
        wmfc1405_p6 <= wmfc1405;
        wmfc1505_p6 <= wmfc1505;
        wmfc1605_p6 <= wmfc1605;
        wmfc1705_p6 <= wmfc1705;
        wmfc1805_p6 <= wmfc1805;
        wmfc1905_p6 <= wmfc1905;
    end
end

// Row b6
    MFA     mfa006(.Sum(product_comb_6), .Cout(wmfc006), .A(A[0]), .B(B[6]), .Sin(wmfs105_p6), .Cin(wmfc005_p6));
    MFA     mfa106(.Sum(wmfs106), .Cout(wmfc106), .A(A[1]), .B(B[6]), .Sin(wmfs205_p6), .Cin(wmfc105_p6));
    MFA     mfa206(.Sum(wmfs206), .Cout(wmfc206), .A(A[2]), .B(B[6]), .Sin(wmfs305_p6), .Cin(wmfc205_p6));
    MFA     mfa306(.Sum(wmfs306), .Cout(wmfc306), .A(A[3]), .B(B[6]), .Sin(wmfs405_p6), .Cin(wmfc305_p6));
    MFA     mfa406(.Sum(wmfs406), .Cout(wmfc406), .A(A[4]), .B(B[6]), .Sin(wmfs505_p6), .Cin(wmfc405_p6));
    MFA     mfa506(.Sum(wmfs506), .Cout(wmfc506), .A(A[5]), .B(B[6]), .Sin(wmfs605_p6), .Cin(wmfc505_p6));
    MFA     mfa606(.Sum(wmfs606), .Cout(wmfc606), .A(A[6]), .B(B[6]), .Sin(wmfs705_p6), .Cin(wmfc605_p6));
    MFA     mfa706(.Sum(wmfs706), .Cout(wmfc706), .A(A[7]), .B(B[6]), .Sin(wmfs805_p6), .Cin(wmfc705_p6));
    MFA     mfa806(.Sum(wmfs806), .Cout(wmfc806), .A(A[8]), .B(B[6]), .Sin(wmfs905_p6), .Cin(wmfc805_p6));
    MFA     mfa906(.Sum(wmfs906), .Cout(wmfc906), .A(A[9]), .B(B[6]), .Sin(wmfs1005_p6), .Cin(wmfc905_p6));
    MFA     mfa1006(.Sum(wmfs1006), .Cout(wmfc1006), .A(A[10]), .B(B[6]), .Sin(wmfs1105_p6), .Cin(wmfc1005_p6));
    MFA     mfa1106(.Sum(wmfs1106), .Cout(wmfc1106), .A(A[11]), .B(B[6]), .Sin(wmfs1205_p6), .Cin(wmfc1105_p6));
    MFA     mfa1206(.Sum(wmfs1206), .Cout(wmfc1206), .A(A[12]), .B(B[6]), .Sin(wmfs1305_p6), .Cin(wmfc1205_p6));

    MFA     mfa1306(.Sum(wmfs1306), .Cout(wmfc1306), .A(A[12]), .B(B[6]), .Sin(wmfs1405_p6), .Cin(wmfc1305_p6));
    MFA     mfa1406(.Sum(wmfs1406), .Cout(wmfc1406), .A(A[12]), .B(B[6]), .Sin(wmfs1505_p6), .Cin(wmfc1405_p6));
    MFA     mfa1506(.Sum(wmfs1506), .Cout(wmfc1506), .A(A[12]), .B(B[6]), .Sin(wmfs1605_p6), .Cin(wmfc1505_p6));
    MFA     mfa1606(.Sum(wmfs1606), .Cout(wmfc1606), .A(A[12]), .B(B[6]), .Sin(wmfs1705_p6), .Cin(wmfc1605_p6));
    MFA     mfa1706(.Sum(wmfs1706), .Cout(wmfc1706), .A(A[12]), .B(B[6]), .Sin(wmfs1805_p6), .Cin(wmfc1705_p6));
    MFA     mfa1806(.Sum(wmfs1806), .Cout(wmfc1806), .A(A[12]), .B(B[6]), .Sin(wmfs1905_p6), .Cin(wmfc1805_p6));

    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        P[6] <= 1'b0;
        wmfs106_p7 <= 1'b0;
        wmfs206_p7 <= 1'b0;
        wmfs306_p7 <= 1'b0;
        wmfs406_p7 <= 1'b0;
        wmfs506_p7 <= 1'b0;
        wmfs606_p7 <= 1'b0;
        wmfs706_p7 <= 1'b0;
        wmfs806_p7 <= 1'b0;
        wmfs906_p7 <= 1'b0;
        wmfs1006_p7 <= 1'b0;
        wmfs1106_p7 <= 1'b0;
        wmfs1206_p7 <= 1'b0;
        wmfs1306_p7 <= 1'b0;
        wmfs1406_p7 <= 1'b0;
        wmfs1506_p7 <= 1'b0;
        wmfs1606_p7 <= 1'b0;
        wmfs1706_p7 <= 1'b0;
        wmfs1806_p7 <= 1'b0;
        wmfc006_p7 <= 1'b0;
        wmfc106_p7 <= 1'b0;
        wmfc206_p7 <= 1'b0;
        wmfc306_p7 <= 1'b0;
        wmfc406_p7 <= 1'b0;
        wmfc506_p7 <= 1'b0;
        wmfc606_p7 <= 1'b0;
        wmfc706_p7 <= 1'b0;
        wmfc806_p7 <= 1'b0;
        wmfc906_p7 <= 1'b0;
        wmfc1006_p7 <= 1'b0;
        wmfc1106_p7 <= 1'b0;
        wmfc1206_p7 <= 1'b0;
        wmfc1306_p7 <= 1'b0;
        wmfc1406_p7 <= 1'b0;
        wmfc1506_p7 <= 1'b0;
        wmfc1606_p7 <= 1'b0;
        wmfc1706_p7 <= 1'b0;
        wmfc1806_p7 <= 1'b0;
    end else begin
        P[6] <= product_comb_6;
        wmfs106_p7 <= wmfs106;
        wmfs206_p7 <= wmfs206;
        wmfs306_p7 <= wmfs306;
        wmfs406_p7 <= wmfs406;
        wmfs506_p7 <= wmfs506;
        wmfs606_p7 <= wmfs606;
        wmfs706_p7 <= wmfs706;
        wmfs806_p7 <= wmfs806;
        wmfs906_p7 <= wmfs906;
        wmfs1006_p7 <= wmfs1006;
        wmfs1106_p7 <= wmfs1106;
        wmfs1206_p7 <= wmfs1206;
        wmfs1306_p7 <= wmfs1306;
        wmfs1406_p7 <= wmfs1406;
        wmfs1506_p7 <= wmfs1506;
        wmfs1606_p7 <= wmfs1606;
        wmfs1706_p7 <= wmfs1706;
        wmfs1806_p7 <= wmfs1806;
        wmfc006_p7 <= wmfc006;
        wmfc106_p7 <= wmfc106;
        wmfc206_p7 <= wmfc206;
        wmfc306_p7 <= wmfc306;
        wmfc406_p7 <= wmfc406;
        wmfc506_p7 <= wmfc506;
        wmfc606_p7 <= wmfc606;
        wmfc706_p7 <= wmfc706;
        wmfc806_p7 <= wmfc806;
        wmfc906_p7 <= wmfc906;
        wmfc1006_p7 <= wmfc1006;
        wmfc1106_p7 <= wmfc1106;
        wmfc1206_p7 <= wmfc1206;
        wmfc1306_p7 <= wmfc1306;
        wmfc1406_p7 <= wmfc1406;
        wmfc1506_p7 <= wmfc1506;
        wmfc1606_p7 <= wmfc1606;
        wmfc1706_p7 <= wmfc1706;
        wmfc1806_p7 <= wmfc1806;
    end
end

// Row b7
    MFA     mfa007(.Sum(product_comb_7), .Cout(wmfc007), .A(A[0]), .B(B[7]), .Sin(wmfs106_p7), .Cin(wmfc006_p7));
    MFA     mfa107(.Sum(wmfs107), .Cout(wmfc107), .A(A[1]), .B(B[7]), .Sin(wmfs206_p7), .Cin(wmfc106_p7));
    MFA     mfa207(.Sum(wmfs207), .Cout(wmfc207), .A(A[2]), .B(B[7]), .Sin(wmfs306_p7), .Cin(wmfc206_p7));
    MFA     mfa307(.Sum(wmfs307), .Cout(wmfc307), .A(A[3]), .B(B[7]), .Sin(wmfs406_p7), .Cin(wmfc306_p7));
    MFA     mfa407(.Sum(wmfs407), .Cout(wmfc407), .A(A[4]), .B(B[7]), .Sin(wmfs506_p7), .Cin(wmfc406_p7));
    MFA     mfa507(.Sum(wmfs507), .Cout(wmfc507), .A(A[5]), .B(B[7]), .Sin(wmfs606_p7), .Cin(wmfc506_p7));
    MFA     mfa607(.Sum(wmfs607), .Cout(wmfc607), .A(A[6]), .B(B[7]), .Sin(wmfs706_p7), .Cin(wmfc606_p7));
    MFA     mfa707(.Sum(wmfs707), .Cout(wmfc707), .A(A[7]), .B(B[7]), .Sin(wmfs806_p7), .Cin(wmfc706_p7));
    MFA     mfa807(.Sum(wmfs807), .Cout(wmfc807), .A(A[8]), .B(B[7]), .Sin(wmfs906_p7), .Cin(wmfc806_p7));
    MFA     mfa907(.Sum(wmfs907), .Cout(wmfc907), .A(A[9]), .B(B[7]), .Sin(wmfs1006_p7), .Cin(wmfc906_p7));
    MFA     mfa1007(.Sum(wmfs1007), .Cout(wmfc1007), .A(A[10]), .B(B[7]), .Sin(wmfs1106_p7), .Cin(wmfc1006_p7));
    MFA     mfa1107(.Sum(wmfs1107), .Cout(wmfc1107), .A(A[11]), .B(B[7]), .Sin(wmfs1206_p7), .Cin(wmfc1106_p7));
    MFA     mfa1207(.Sum(wmfs1207), .Cout(wmfc1207), .A(A[12]), .B(B[7]), .Sin(wmfs1306_p7), .Cin(wmfc1206_p7));

    MFA     mfa1307(.Sum(wmfs1307), .Cout(wmfc1307), .A(A[12]), .B(B[7]), .Sin(wmfs1406_p7), .Cin(wmfc1306_p7));
    MFA     mfa1407(.Sum(wmfs1407), .Cout(wmfc1407), .A(A[12]), .B(B[7]), .Sin(wmfs1506_p7), .Cin(wmfc1406_p7));
    MFA     mfa1507(.Sum(wmfs1507), .Cout(wmfc1507), .A(A[12]), .B(B[7]), .Sin(wmfs1606_p7), .Cin(wmfc1506_p7));
    MFA     mfa1607(.Sum(wmfs1607), .Cout(wmfc1607), .A(A[12]), .B(B[7]), .Sin(wmfs1706_p7), .Cin(wmfc1606_p7));
    MFA     mfa1707(.Sum(wmfs1707), .Cout(wmfc1707), .A(A[12]), .B(B[7]), .Sin(wmfs1806_p7), .Cin(wmfc1706_p7));

    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        P[7] <= 1'b0;
        wmfs107_p8 <= 1'b0;
        wmfs207_p8 <= 1'b0;
        wmfs307_p8 <= 1'b0;
        wmfs407_p8 <= 1'b0;
        wmfs507_p8 <= 1'b0;
        wmfs607_p8 <= 1'b0;
        wmfs707_p8 <= 1'b0;
        wmfs807_p8 <= 1'b0;
        wmfs907_p8 <= 1'b0;
        wmfs1007_p8 <= 1'b0;
        wmfs1107_p8 <= 1'b0;
        wmfs1207_p8 <= 1'b0;
        wmfs1307_p8 <= 1'b0;
        wmfs1407_p8 <= 1'b0;
        wmfs1507_p8 <= 1'b0;
        wmfs1607_p8 <= 1'b0;
        wmfs1707_p8 <= 1'b0;
        wmfc007_p8 <= 1'b0;
        wmfc107_p8 <= 1'b0;
        wmfc207_p8 <= 1'b0;
        wmfc307_p8 <= 1'b0;
        wmfc407_p8 <= 1'b0;
        wmfc507_p8 <= 1'b0;
        wmfc607_p8 <= 1'b0;
        wmfc707_p8 <= 1'b0;
        wmfc807_p8 <= 1'b0;
        wmfc907_p8 <= 1'b0;
        wmfc1007_p8 <= 1'b0;
        wmfc1107_p8 <= 1'b0;
        wmfc1207_p8 <= 1'b0;
        wmfc1307_p8 <= 1'b0;
        wmfc1407_p8 <= 1'b0;
        wmfc1507_p8 <= 1'b0;
        wmfc1607_p8 <= 1'b0;
        wmfc1707_p8 <= 1'b0;
    end else begin
        P[7] <= product_comb_7;
        wmfs107_p8 <= wmfs107;
        wmfs207_p8 <= wmfs207;
        wmfs307_p8 <= wmfs307;
        wmfs407_p8 <= wmfs407;
        wmfs507_p8 <= wmfs507;
        wmfs607_p8 <= wmfs607;
        wmfs707_p8 <= wmfs707;
        wmfs807_p8 <= wmfs807;
        wmfs907_p8 <= wmfs907;
        wmfs1007_p8 <= wmfs1007;
        wmfs1107_p8 <= wmfs1107;
        wmfs1207_p8 <= wmfs1207;
        wmfs1307_p8 <= wmfs1307;
        wmfs1407_p8 <= wmfs1407;
        wmfs1507_p8 <= wmfs1507;
        wmfs1607_p8 <= wmfs1607;
        wmfs1707_p8 <= wmfs1707;
        wmfc007_p8 <= wmfc007;
        wmfc107_p8 <= wmfc107;
        wmfc207_p8 <= wmfc207;
        wmfc307_p8 <= wmfc307;
        wmfc407_p8 <= wmfc407;
        wmfc507_p8 <= wmfc507;
        wmfc607_p8 <= wmfc607;
        wmfc707_p8 <= wmfc707;
        wmfc807_p8 <= wmfc807;
        wmfc907_p8 <= wmfc907;
        wmfc1007_p8 <= wmfc1007;
        wmfc1107_p8 <= wmfc1107;
        wmfc1207_p8 <= wmfc1207;
        wmfc1307_p8 <= wmfc1307;
        wmfc1407_p8 <= wmfc1407;
        wmfc1507_p8 <= wmfc1507;
        wmfc1607_p8 <= wmfc1607;
        wmfc1707_p8 <= wmfc1707;
    end
end

// Row b8
    MFA     mfa008(.Sum(product_comb_8), .Cout(wmfc008), .A(A[0]), .B(B[8]), .Sin(wmfs107_p8), .Cin(wmfc007_p8));
    MFA     mfa108(.Sum(wmfs108), .Cout(wmfc108), .A(A[1]), .B(B[8]), .Sin(wmfs207_p8), .Cin(wmfc107_p8));
    MFA     mfa208(.Sum(wmfs208), .Cout(wmfc208), .A(A[2]), .B(B[8]), .Sin(wmfs307_p8), .Cin(wmfc207_p8));
    MFA     mfa308(.Sum(wmfs308), .Cout(wmfc308), .A(A[3]), .B(B[8]), .Sin(wmfs407_p8), .Cin(wmfc307_p8));
    MFA     mfa408(.Sum(wmfs408), .Cout(wmfc408), .A(A[4]), .B(B[8]), .Sin(wmfs507_p8), .Cin(wmfc407_p8));
    MFA     mfa508(.Sum(wmfs508), .Cout(wmfc508), .A(A[5]), .B(B[8]), .Sin(wmfs607_p8), .Cin(wmfc507_p8));
    MFA     mfa608(.Sum(wmfs608), .Cout(wmfc608), .A(A[6]), .B(B[8]), .Sin(wmfs707_p8), .Cin(wmfc607_p8));
    MFA     mfa708(.Sum(wmfs708), .Cout(wmfc708), .A(A[7]), .B(B[8]), .Sin(wmfs807_p8), .Cin(wmfc707_p8));
    MFA     mfa808(.Sum(wmfs808), .Cout(wmfc808), .A(A[8]), .B(B[8]), .Sin(wmfs907_p8), .Cin(wmfc807_p8));
    MFA     mfa908(.Sum(wmfs908), .Cout(wmfc908), .A(A[9]), .B(B[8]), .Sin(wmfs1007_p8), .Cin(wmfc907_p8));
    MFA     mfa1008(.Sum(wmfs1008), .Cout(wmfc1008), .A(A[10]), .B(B[8]), .Sin(wmfs1107_p8), .Cin(wmfc1007_p8));
    MFA     mfa1108(.Sum(wmfs1108), .Cout(wmfc1108), .A(A[11]), .B(B[8]), .Sin(wmfs1207_p8), .Cin(wmfc1107_p8));
    MFA     mfa1208(.Sum(wmfs1208), .Cout(wmfc1208), .A(A[12]), .B(B[8]), .Sin(wmfs1307_p8), .Cin(wmfc1207_p8));

    MFA     mfa1308(.Sum(wmfs1308), .Cout(wmfc1308), .A(A[12]), .B(B[8]), .Sin(wmfs1407_p8), .Cin(wmfc1307_p8));
    MFA     mfa1408(.Sum(wmfs1408), .Cout(wmfc1408), .A(A[12]), .B(B[8]), .Sin(wmfs1507_p8), .Cin(wmfc1407_p8));
    MFA     mfa1508(.Sum(wmfs1508), .Cout(wmfc1508), .A(A[12]), .B(B[8]), .Sin(wmfs1607_p8), .Cin(wmfc1507_p8));
    MFA     mfa1608(.Sum(wmfs1608), .Cout(wmfc1608), .A(A[12]), .B(B[8]), .Sin(wmfs1707_p8), .Cin(wmfc1607_p8));

    always @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
        P[8] <= 1'b0;
        wmfs108_p9 <= 1'b0;
        wmfs208_p9 <= 1'b0;
        wmfs308_p9 <= 1'b0;
        wmfs408_p9 <= 1'b0;
        wmfs508_p9 <= 1'b0;
        wmfs608_p9 <= 1'b0;
        wmfs708_p9 <= 1'b0;
        wmfs808_p9 <= 1'b0;
        wmfs908_p9 <= 1'b0;
        wmfs1008_p9 <= 1'b0;
        wmfs1108_p9 <= 1'b0;
        wmfs1208_p9 <= 1'b0;
        wmfs1308_p9 <= 1'b0;
        wmfs1408_p9 <= 1'b0;
        wmfs1508_p9 <= 1'b0;
        wmfs1608_p9 <= 1'b0;
        wmfc008_p9 <= 1'b0;
        wmfc108_p9 <= 1'b0;
        wmfc208_p9 <= 1'b0;
        wmfc308_p9 <= 1'b0;
        wmfc408_p9 <= 1'b0;
        wmfc508_p9 <= 1'b0;
        wmfc608_p9 <= 1'b0;
        wmfc708_p9 <= 1'b0;
        wmfc808_p9 <= 1'b0;
        wmfc908_p9 <= 1'b0;
        wmfc1008_p9 <= 1'b0;
        wmfc1108_p9 <= 1'b0;
        wmfc1208_p9 <= 1'b0;
        wmfc1308_p9 <= 1'b0;
        wmfc1408_p9 <= 1'b0;
        wmfc1508_p9 <= 1'b0;
        wmfc1608_p9 <= 1'b0;
    end else begin
        P[8] <= product_comb_8;
        wmfs108_p9 <= wmfs108;
        wmfs208_p9 <= wmfs208;
        wmfs308_p9 <= wmfs308;
        wmfs408_p9 <= wmfs408;
        wmfs508_p9 <= wmfs508;
        wmfs608_p9 <= wmfs608;
        wmfs708_p9 <= wmfs708;
        wmfs808_p9 <= wmfs808;
        wmfs908_p9 <= wmfs908;
        wmfs1008_p9 <= wmfs1008;
        wmfs1108_p9 <= wmfs1108;
        wmfs1208_p9 <= wmfs1208;
        wmfs1308_p9 <= wmfs1308;
        wmfs1408_p9 <= wmfs1408;
        wmfs1508_p9 <= wmfs1508;
        wmfs1608_p9 <= wmfs1608;
        wmfc008_p9 <= wmfc008;
        wmfc108_p9 <= wmfc108;
        wmfc208_p9 <= wmfc208;
        wmfc308_p9 <= wmfc308;
        wmfc408_p9 <= wmfc408;
        wmfc508_p9 <= wmfc508;
        wmfc608_p9 <= wmfc608;
        wmfc708_p9 <= wmfc708;
        wmfc808_p9 <= wmfc808;
        wmfc908_p9 <= wmfc908;
        wmfc1008_p9 <= wmfc1008;
        wmfc1108_p9 <= wmfc1108;
        wmfc1208_p9 <= wmfc1208;
        wmfc1308_p9 <= wmfc1308;
        wmfc1408_p9 <= wmfc1408;
        wmfc1508_p9 <= wmfc1508;
        wmfc1608_p9 <= wmfc1608;
    end
end

// Row b9
    MFA     mfa009(.Sum(product_comb_9), .Cout(wmfc009), .A(A[0]), .B(B[9]), .Sin(wmfs108_p9), .Cin(wmfc008_p9));
    MFA     mfa109(.Sum(wmfs109), .Cout(wmfc109), .A(A[1]), .B(B[9]), .Sin(wmfs208_p9), .Cin(wmfc108_p9));
    MFA     mfa209(.Sum(wmfs209), .Cout(wmfc209), .A(A[2]), .B(B[9]), .Sin(wmfs308_p9), .Cin(wmfc208_p9));
    MFA     mfa309(.Sum(wmfs309), .Cout(wmfc309), .A(A[3]), .B(B[9]), .Sin(wmfs408_p9), .Cin(wmfc308_p9));
    MFA     mfa409(.Sum(wmfs409), .Cout(wmfc409), .A(A[4]), .B(B[9]), .Sin(wmfs508_p9), .Cin(wmfc408_p9));
    MFA     mfa509(.Sum(wmfs509), .Cout(wmfc509), .A(A[5]), .B(B[9]), .Sin(wmfs608_p9), .Cin(wmfc508_p9));
    MFA     mfa609(.Sum(wmfs609), .Cout(wmfc609), .A(A[6]), .B(B[9]), .Sin(wmfs708_p9), .Cin(wmfc608_p9));
    MFA     mfa709(.Sum(wmfs709), .Cout(wmfc709), .A(A[7]), .B(B[9]), .Sin(wmfs808_p9), .Cin(wmfc708_p9));
    MFA     mfa809(.Sum(wmfs809), .Cout(wmfc809), .A(A[8]), .B(B[9]), .Sin(wmfs908_p9), .Cin(wmfc808_p9));
    MFA     mfa909(.Sum(wmfs909), .Cout(wmfc909), .A(A[9]), .B(B[9]), .Sin(wmfs1008_p9), .Cin(wmfc908_p9));
    MFA     mfa1009(.Sum(wmfs1009), .Cout(wmfc1009), .A(A[10]), .B(B[9]), .Sin(wmfs1108_p9), .Cin(wmfc1008_p9));
    MFA     mfa1109(.Sum(wmfs1109), .Cout(wmfc1109), .A(A[11]), .B(B[9]), .Sin(wmfs1208_p9), .Cin(wmfc1108_p9));
    MFA     mfa1209(.Sum(wmfs1209), .Cout(wmfc1209), .A(A[12]), .B(B[9]), .Sin(wmfs1308_p9), .Cin(wmfc1208_p9));

    MFA     mfa1309(.Sum(wmfs1309), .Cout(wmfc1309), .A(A[12]), .B(B[9]), .Sin(wmfs1408_p9), .Cin(wmfc1308_p9));
    MFA     mfa1409(.Sum(wmfs1409), .Cout(wmfc1409), .A(A[12]), .B(B[9]), .Sin(wmfs1508_p9), .Cin(wmfc1408_p9));
    MFA     mfa1509(.Sum(wmfs1509), .Cout(wmfc1509), .A(A[12]), .B(B[9]), .Sin(wmfs1608_p9), .Cin(wmfc1508_p9));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[9] <= 1'b0;
         wmfs109_p10 <= 1'b0;
         wmfs209_p10 <= 1'b0;
         wmfs309_p10 <= 1'b0;
         wmfs409_p10 <= 1'b0;
         wmfs509_p10 <= 1'b0;
         wmfs609_p10 <= 1'b0;
         wmfs709_p10 <= 1'b0;
         wmfs809_p10 <= 1'b0;
         wmfs909_p10 <= 1'b0;
         wmfs1009_p10 <= 1'b0;
         wmfs1109_p10 <= 1'b0;
         wmfs1209_p10 <= 1'b0;
         wmfs1309_p10 <= 1'b0;
         wmfs1409_p10 <= 1'b0;
         wmfs1509_p10 <= 1'b0;
         wmfc009_p10 <= 1'b0;
         wmfc109_p10 <= 1'b0;
         wmfc209_p10 <= 1'b0;
         wmfc309_p10 <= 1'b0;
         wmfc409_p10 <= 1'b0;
         wmfc509_p10 <= 1'b0;
         wmfc609_p10 <= 1'b0;
         wmfc709_p10 <= 1'b0;
         wmfc809_p10 <= 1'b0;
         wmfc909_p10 <= 1'b0;
         wmfc1009_p10 <= 1'b0;
         wmfc1109_p10 <= 1'b0;
         wmfc1209_p10 <= 1'b0;
         wmfc1309_p10 <= 1'b0;
         wmfc1409_p10 <= 1'b0;
         wmfc1509_p10 <= 1'b0;
      end else begin
         P[9] <= product_comb_9;
         wmfs109_p10 <= wmfs109;
         wmfs209_p10 <= wmfs209;
         wmfs309_p10 <= wmfs309;
         wmfs409_p10 <= wmfs409;
         wmfs509_p10 <= wmfs509;
         wmfs609_p10 <= wmfs609;
         wmfs709_p10 <= wmfs709;
         wmfs809_p10 <= wmfs809;
         wmfs909_p10 <= wmfs909;
         wmfs1009_p10 <= wmfs1009;
         wmfs1109_p10 <= wmfs1109;
         wmfs1209_p10 <= wmfs1209;
         wmfs1309_p10 <= wmfs1309;
         wmfs1409_p10 <= wmfs1409;
         wmfs1509_p10 <= wmfs1509;
         wmfc009_p10 <= wmfc009;
         wmfc109_p10 <= wmfc109;
         wmfc209_p10 <= wmfc209;
         wmfc309_p10 <= wmfc309;
         wmfc409_p10 <= wmfc409;
         wmfc509_p10 <= wmfc509;
         wmfc609_p10 <= wmfc609;
         wmfc709_p10 <= wmfc709;
         wmfc809_p10 <= wmfc809;
         wmfc909_p10 <= wmfc909;
         wmfc1009_p10 <= wmfc1009;
         wmfc1109_p10 <= wmfc1109;
         wmfc1209_p10 <= wmfc1209;
         wmfc1309_p10 <= wmfc1309;
         wmfc1409_p10 <= wmfc1409;
         wmfc1509_p10 <= wmfc1509;
      end
   end

// Row b10
    MFA     mfa010(.Sum(product_comb_10), .Cout(wmfc010), .A(A[0]), .B(B[10]), .Sin(wmfs109_p10), .Cin(wmfc009_p10));
    MFA     mfa110(.Sum(wmfs110), .Cout(wmfc110), .A(A[1]), .B(B[10]), .Sin(wmfs209_p10), .Cin(wmfc109_p10));
    MFA     mfa210(.Sum(wmfs210), .Cout(wmfc210), .A(A[2]), .B(B[10]), .Sin(wmfs309_p10), .Cin(wmfc209_p10));
    MFA     mfa310(.Sum(wmfs310), .Cout(wmfc310), .A(A[3]), .B(B[10]), .Sin(wmfs409_p10), .Cin(wmfc309_p10));
    MFA     mfa410(.Sum(wmfs410), .Cout(wmfc410), .A(A[4]), .B(B[10]), .Sin(wmfs509_p10), .Cin(wmfc409_p10));
    MFA     mfa510(.Sum(wmfs510), .Cout(wmfc510), .A(A[5]), .B(B[10]), .Sin(wmfs609_p10), .Cin(wmfc509_p10));
    MFA     mfa610(.Sum(wmfs610), .Cout(wmfc610), .A(A[6]), .B(B[10]), .Sin(wmfs709_p10), .Cin(wmfc609_p10));
    MFA     mfa710(.Sum(wmfs710), .Cout(wmfc710), .A(A[7]), .B(B[10]), .Sin(wmfs809_p10), .Cin(wmfc709_p10));
    MFA     mfa810(.Sum(wmfs810), .Cout(wmfc810), .A(A[8]), .B(B[10]), .Sin(wmfs909_p10), .Cin(wmfc809_p10));
    MFA     mfa910(.Sum(wmfs910), .Cout(wmfc910), .A(A[9]), .B(B[10]), .Sin(wmfs1009_p10), .Cin(wmfc909_p10));
    MFA     mfa1010(.Sum(wmfs1010), .Cout(wmfc1010), .A(A[10]), .B(B[10]), .Sin(wmfs1109_p10), .Cin(wmfc1009_p10));
    MFA     mfa1110(.Sum(wmfs1110), .Cout(wmfc1110), .A(A[11]), .B(B[10]), .Sin(wmfs1209_p10), .Cin(wmfc1109_p10));
    MFA     mfa1210(.Sum(wmfs1210), .Cout(wmfc1210), .A(A[12]), .B(B[10]), .Sin(wmfs1309_p10), .Cin(wmfc1209_p10));

    MFA     mfa1310(.Sum(wmfs1310), .Cout(wmfc1310), .A(A[12]), .B(B[10]), .Sin(wmfs1409_p10), .Cin(wmfc1309_p10));
    MFA     mfa1410(.Sum(wmfs1410), .Cout(wmfc1410), .A(A[12]), .B(B[10]), .Sin(wmfs1509_p10), .Cin(wmfc1409_p10));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[10] <= 1'b0;
         wmfs110_p11 <= 1'b0;
         wmfs210_p11 <= 1'b0;
         wmfs310_p11 <= 1'b0;
         wmfs410_p11 <= 1'b0;
         wmfs510_p11 <= 1'b0;
         wmfs610_p11 <= 1'b0;
         wmfs710_p11 <= 1'b0;
         wmfs810_p11 <= 1'b0;
         wmfs910_p11 <= 1'b0;
         wmfs1010_p11 <= 1'b0;
         wmfs1110_p11 <= 1'b0;
         wmfs1210_p11 <= 1'b0;
         wmfs1310_p11 <= 1'b0;
         wmfs1410_p11 <= 1'b0;
         wmfc010_p11 <= 1'b0;
         wmfc110_p11 <= 1'b0;
         wmfc210_p11 <= 1'b0;
         wmfc310_p11 <= 1'b0;
         wmfc410_p11 <= 1'b0;
         wmfc510_p11 <= 1'b0;
         wmfc610_p11 <= 1'b0;
         wmfc710_p11 <= 1'b0;
         wmfc810_p11 <= 1'b0;
         wmfc910_p11 <= 1'b0;
         wmfc1010_p11 <= 1'b0;
         wmfc1110_p11 <= 1'b0;
         wmfc1210_p11 <= 1'b0;
         wmfc1310_p11 <= 1'b0;
         wmfc1410_p11 <= 1'b0;
      end else begin
         P[10] <= product_comb_10;
         wmfs110_p11 <= wmfs110;
         wmfs210_p11 <= wmfs210;
         wmfs310_p11 <= wmfs310;
         wmfs410_p11 <= wmfs410;
         wmfs510_p11 <= wmfs510;
         wmfs610_p11 <= wmfs610;
         wmfs710_p11 <= wmfs710;
         wmfs810_p11 <= wmfs810;
         wmfs910_p11 <= wmfs910;
         wmfs1010_p11 <= wmfs1010;
         wmfs1110_p11 <= wmfs1110;
         wmfs1210_p11 <= wmfs1210;
         wmfs1310_p11 <= wmfs1310;
         wmfs1410_p11 <= wmfs1410;
         wmfc010_p11 <= wmfc010;
         wmfc110_p11 <= wmfc110;
         wmfc210_p11 <= wmfc210;
         wmfc310_p11 <= wmfc310;
         wmfc410_p11 <= wmfc410;
         wmfc510_p11 <= wmfc510;
         wmfc610_p11 <= wmfc610;
         wmfc710_p11 <= wmfc710;
         wmfc810_p11 <= wmfc810;
         wmfc910_p11 <= wmfc910;
         wmfc1010_p11 <= wmfc1010;
         wmfc1110_p11 <= wmfc1110;
         wmfc1210_p11 <= wmfc1210;
         wmfc1310_p11 <= wmfc1310;
         wmfc1410_p11 <= wmfc1410;
      end
   end

//Row b11
    MFA 	  mfa011(.Sum(product_comb_11), .Cout(wmfc011), .A(A[0]), .B(B[11]), .Sin(wmfs110_p11), .Cin(wmfc010_p11));
	MFA 	  mfa111(.Sum(wmfs111), .Cout(wmfc111), .A(A[1]), .B(B[11]), .Sin(wmfs210_p11), .Cin(wmfc110_p11));
	MFA 	  mfa211(.Sum(wmfs211), .Cout(wmfc211), .A(A[2]), .B(B[11]), .Sin(wmfs310_p11), .Cin(wmfc210_p11));
    MFA 	  mfa311(.Sum(wmfs311), .Cout(wmfc311), .A(A[3]), .B(B[11]), .Sin(wmfs410_p11), .Cin(wmfc310_p11));
	MFA 	  mfa411(.Sum(wmfs411), .Cout(wmfc411), .A(A[4]), .B(B[11]), .Sin(wmfs510_p11), .Cin(wmfc410_p11));
    MFA 	  mfa511(.Sum(wmfs511), .Cout(wmfc511), .A(A[5]), .B(B[11]), .Sin(wmfs610_p11), .Cin(wmfc510_p11));
    MFA 	  mfa611(.Sum(wmfs611), .Cout(wmfc611), .A(A[6]), .B(B[11]), .Sin(wmfs710_p11), .Cin(wmfc610_p11));
    MFA 	  mfa711(.Sum(wmfs711), .Cout(wmfc711), .A(A[7]), .B(B[11]), .Sin(wmfs810_p11), .Cin(wmfc710_p11));
    MFA 	  mfa811(.Sum(wmfs811), .Cout(wmfc811), .A(A[8]), .B(B[11]), .Sin(wmfs910_p11), .Cin(wmfc810_p11));
    MFA 	  mfa911(.Sum(wmfs911), .Cout(wmfc911), .A(A[9]), .B(B[11]), .Sin(wmfs1010_p11), .Cin(wmfc910_p11));
    MFA 	  mfa1011(.Sum(wmfs1011), .Cout(wmfc1011), .A(A[10]), .B(B[11]), .Sin(wmfs1110_p11), .Cin(wmfc1010_p11));
    MFA 	  mfa1111(.Sum(wmfs1111), .Cout(wmfc1111), .A(A[11]), .B(B[11]), .Sin(wmfs1210_p11), .Cin(wmfc1110_p11));
    MFA 	  mfa1211(.Sum(wmfs1211), .Cout(wmfc1211), .A(A[12]), .B(B[11]), .Sin(wmfs1310_p11), .Cin(wmfc1210_p11));

    MFA 	  mfa1311(.Sum(wmfs1311), .Cout(wmfc1311), .A(A[12]), .B(B[11]), .Sin(wmfs1410_p11), .Cin(wmfc1310_p11));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[11] <= 1'b0;
         wmfs111_p12 <= 1'b0;
         wmfs211_p12 <= 1'b0;
         wmfs311_p12 <= 1'b0;
         wmfs411_p12 <= 1'b0;
         wmfs511_p12 <= 1'b0;
         wmfs611_p12 <= 1'b0;
         wmfs711_p12 <= 1'b0;
         wmfs811_p12 <= 1'b0;
         wmfs911_p12 <= 1'b0;
         wmfs1011_p12 <= 1'b0;
         wmfs1111_p12 <= 1'b0;
         wmfs1211_p12 <= 1'b0;
         wmfs1311_p12 <= 1'b0;
         wmfc011_p12 <= 1'b0;
         wmfc111_p12 <= 1'b0;
         wmfc211_p12 <= 1'b0;
         wmfc311_p12 <= 1'b0;
         wmfc411_p12 <= 1'b0;
         wmfc511_p12 <= 1'b0;
         wmfc611_p12 <= 1'b0;
         wmfc711_p12 <= 1'b0;
         wmfc811_p12 <= 1'b0;
         wmfc911_p12 <= 1'b0;
         wmfc1011_p12 <= 1'b0;
         wmfc1111_p12 <= 1'b0;
         wmfc1211_p12 <= 1'b0;
         wmfc1311_p12 <= 1'b0;
      end else begin
         P[11] <= product_comb_11;
         wmfs111_p12 <= wmfs111;
         wmfs211_p12 <= wmfs211;
         wmfs311_p12 <= wmfs311;
         wmfs411_p12 <= wmfs411;
         wmfs511_p12 <= wmfs511;
         wmfs611_p12 <= wmfs611;
         wmfs711_p12 <= wmfs711;
         wmfs811_p12 <= wmfs811;
         wmfs911_p12 <= wmfs911;
         wmfs1011_p12 <= wmfs1011;
         wmfs1111_p12 <= wmfs1111;
         wmfs1211_p12 <= wmfs1211;
         wmfs1311_p12 <= wmfs1311;
         wmfc011_p12 <= wmfc011;
         wmfc111_p12 <= wmfc111;
         wmfc211_p12 <= wmfc211;
         wmfc311_p12 <= wmfc311;
         wmfc411_p12 <= wmfc411;
         wmfc511_p12 <= wmfc511;
         wmfc611_p12 <= wmfc611;
         wmfc711_p12 <= wmfc711;
         wmfc811_p12 <= wmfc811;
         wmfc911_p12 <= wmfc911;
         wmfc1011_p12 <= wmfc1011;
         wmfc1111_p12 <= wmfc1111;
         wmfc1211_p12 <= wmfc1211;
         wmfc1311_p12 <= wmfc1311;
      end
   end

//Row b12
    MFA 	  mfa012(.Sum(product_comb_12), .Cout(wmfc012), .A(A_c[0]), .B(B[12]), .Sin(wmfs111_p12), .Cin(wmfc011_p12));
	MFA 	  mfa112(.Sum(wmfs112), .Cout(wmfc112), .A(A_c[1]), .B(B[12]), .Sin(wmfs211_p12), .Cin(wmfc111_p12));
	MFA 	  mfa212(.Sum(wmfs212), .Cout(wmfc212), .A(A_c[2]), .B(B[12]), .Sin(wmfs311_p12), .Cin(wmfc211_p12));
    MFA 	  mfa312(.Sum(wmfs312), .Cout(wmfc312), .A(A_c[3]), .B(B[12]), .Sin(wmfs411_p12), .Cin(wmfc311_p12));
	MFA 	  mfa412(.Sum(wmfs412), .Cout(wmfc412), .A(A_c[4]), .B(B[12]), .Sin(wmfs511_p12), .Cin(wmfc411_p12));
    MFA 	  mfa512(.Sum(wmfs512), .Cout(wmfc512), .A(A_c[5]), .B(B[12]), .Sin(wmfs611_p12), .Cin(wmfc511_p12));
    MFA 	  mfa612(.Sum(wmfs612), .Cout(wmfc612), .A(A_c[6]), .B(B[12]), .Sin(wmfs711_p12), .Cin(wmfc611_p12));
    MFA 	  mfa712(.Sum(wmfs712), .Cout(wmfc712), .A(A_c[7]), .B(B[12]), .Sin(wmfs811_p12), .Cin(wmfc711_p12));
    MFA 	  mfa812(.Sum(wmfs812), .Cout(wmfc812), .A(A_c[8]), .B(B[12]), .Sin(wmfs911_p12), .Cin(wmfc811_p12));
    MFA 	  mfa912(.Sum(wmfs912), .Cout(wmfc912), .A(A_c[9]), .B(B[12]), .Sin(wmfs1011_p12), .Cin(wmfc911_p12));
    MFA 	  mfa1012(.Sum(wmfs1012), .Cout(wmfc1012), .A(A_c[10]), .B(B[12]), .Sin(wmfs1111_p12), .Cin(wmfc1011_p12));
    MFA 	  mfa1112(.Sum(wmfs1112), .Cout(wmfc1112), .A(A_c[11]), .B(B[12]), .Sin(wmfs1211_p12), .Cin(wmfc1111_p12));
    MFA 	  mfa1212(.Sum(wmfs1212), .Cout(wmfc1212), .A(A_c[12]), .B(B[12]), .Sin(wmfs1311_p12), .Cin(wmfc1211_p12));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[12] <= 1'b0;
         wmfs112_p13 <= 1'b0;
         wmfs212_p13 <= 1'b0;
         wmfs312_p13 <= 1'b0;
         wmfs412_p13 <= 1'b0;
         wmfs512_p13 <= 1'b0;
         wmfs612_p13 <= 1'b0;
         wmfs712_p13 <= 1'b0;
         wmfs812_p13 <= 1'b0;
         wmfs912_p13 <= 1'b0;
         wmfs1012_p13 <= 1'b0;
         wmfs1112_p13 <= 1'b0;
         wmfs1212_p13 <= 1'b0;
         wmfc012_p13 <= 1'b0;
         wmfc112_p13 <= 1'b0;
         wmfc212_p13 <= 1'b0;
         wmfc312_p13 <= 1'b0;
         wmfc412_p13 <= 1'b0;
         wmfc512_p13 <= 1'b0;
         wmfc612_p13 <= 1'b0;
         wmfc712_p13 <= 1'b0;
         wmfc812_p13 <= 1'b0;
         wmfc912_p13 <= 1'b0;
         wmfc1012_p13 <= 1'b0;
         wmfc1112_p13 <= 1'b0;
         wmfc1212_p13 <= 1'b0;
      end else begin
         P[12] <= product_comb_12;
         wmfs112_p13 <= wmfs112;
         wmfs212_p13 <= wmfs212;
         wmfs312_p13 <= wmfs312;
         wmfs412_p13 <= wmfs412;
         wmfs512_p13 <= wmfs512;
         wmfs612_p13 <= wmfs612;
         wmfs712_p13 <= wmfs712;
         wmfs812_p13 <= wmfs812;
         wmfs912_p13 <= wmfs912;
         wmfs1012_p13 <= wmfs1012;
         wmfs1112_p13 <= wmfs1112;
         wmfs1212_p13 <= wmfs1212;
         wmfc012_p13 <= wmfc012;
         wmfc112_p13 <= wmfc112;
         wmfc212_p13 <= wmfc212;
         wmfc312_p13 <= wmfc312;
         wmfc412_p13 <= wmfc412;
         wmfc512_p13 <= wmfc512;
         wmfc612_p13 <= wmfc612;
         wmfc712_p13 <= wmfc712;
         wmfc812_p13 <= wmfc812;
         wmfc912_p13 <= wmfc912;
         wmfc1012_p13 <= wmfc1012;
         wmfc1112_p13 <= wmfc1112;
         wmfc1212_p13 <= wmfc1212;
      end
   end

//Row b12
    FA 	  fa013(.Sum(product_comb_13), .Cout(wfac013), .A(wmfc012_p13), .B(wmfs112_p13), .Cin(1'b0));
    FA 	  fa113(.Sum(product_comb_14), .Cout(wfac113), .A(wmfc112_p13), .B(wmfs212_p13), .Cin(wfac013));
    FA 	  fa213(.Sum(product_comb_15), .Cout(wfac213), .A(wmfc212_p13), .B(wmfs312_p13), .Cin(wfac113));
    FA 	  fa313(.Sum(product_comb_16), .Cout(wfac313), .A(wmfc312_p13), .B(wmfs412_p13), .Cin(wfac213));
    FA 	  fa413(.Sum(product_comb_17), .Cout(wfac413), .A(wmfc412_p13), .B(wmfs512_p13), .Cin(wfac313));
    FA 	  fa513(.Sum(product_comb_18), .Cout(wfac513), .A(wmfc512_p13), .B(wmfs612_p13), .Cin(wfac413));
    FA 	  fa613(.Sum(product_comb_19), .Cout(wfac613), .A(wmfc612_p13), .B(wmfs712_p13), .Cin(wfac513));
    FA 	  fa713(.Sum(product_comb_20), .Cout(wfac713), .A(wmfc712_p13), .B(wmfs812_p13), .Cin(wfac613));
    FA 	  fa813(.Sum(product_comb_21), .Cout(wfac813), .A(wmfc812_p13), .B(wmfs912_p13), .Cin(wfac713));
    FA 	  fa913(.Sum(product_comb_22), .Cout(wfac913), .A(wmfc912_p13), .B(wmfs1012_p13), .Cin(wfac813));
    FA 	  fa1013(.Sum(product_comb_23), .Cout(wfac1013), .A(wmfc1012_p13), .B(wmfs1112_p13), .Cin(wfac913));
    FA 	  fa1113(.Sum(product_comb_24), .Cout(wfac1113), .A(wmfc1112_p13), .B(wmfs1212_p13), .Cin(wfac1013));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[13] <= 1'b0;
         P[14] <= 1'b0;
         P[15] <= 1'b0;
         P[16] <= 1'b0;
         P[17] <= 1'b0;
         P[18] <= 1'b0;
         P[19] <= 1'b0;
         P[20] <= 1'b0;
         P[21] <= 1'b0;
         P[22] <= 1'b0;
         P[23] <= 1'b0;
         P[24] <= 1'b0;
      end else begin
         P[13] <= product_comb_13;
         P[14] <= product_comb_14;
         P[15] <= product_comb_15;
         P[16] <= product_comb_16;
         P[17] <= product_comb_17;
         P[18] <= product_comb_18;
         P[19] <= product_comb_19;
         P[20] <= product_comb_20;
         P[21] <= product_comb_21;
         P[22] <= product_comb_22;
         P[23] <= product_comb_23;
         P[24] <= product_comb_24;
      end
   end

endmodule


