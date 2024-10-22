module Binary_mul_16_1_bi (P, A, B, clk, rst_n, en);

    input signed [15:0] A; // 被乘数
    input signed [15:0] B; // 乘数
    input clk, rst_n, en;
    output reg signed [30:0] P; // 积
    wire signed [15:0] A_c;
    assign A_c = ~A+1;
    wire signed [30:0] product_comb;
                                                                                                         
//row b0
    wire  wa10, wa20, wa30, wa40, wa50, wa60, wa70, wa80, wa90, wa100, wa110, wa120, wa130, wa140, wa150, wa160, wa170, wa180, wa190, wa200, wa210, wa220, wa230, wa240, wa250, wa260, wa270, wa280, wa290, wa300;

// row b1
    wire  wmhc001, wmhc101, wmhc201, wmhc301, wmhc401, wmhc501, wmhc601, wmhc701, wmhc801, wmhc901, wmhc1001, wmhc1101, wmhc1201, wmhc1301, wmhc1401, wmhc1501, wmhc1601, wmhc1701, wmhc1801, wmhc1901, wmhc2001, wmhc2101, wmhc2201, wmhc2301, wmhc2401, wmhc2501, wmhc2601, wmhc2701, wmhc2801, wmhc2901;
    wire  wmhs101, wmhs201, wmhs301, wmhs401, wmhs501, wmhs601, wmhs701, wmhs801, wmhs901, wmhs1001, wmhs1101, wmhs1201, wmhs1301, wmhs1401, wmhs1501, wmhs1601, wmhs1701, wmhs1801, wmhs1901, wmhs2001, wmhs2101, wmhs2201, wmhs2301, wmhs2401, wmhs2501, wmhs2601, wmhs2701, wmhs2801, wmhs2901;

// row b2
    wire  wmfc002, wmfc102, wmfc202, wmfc302, wmfc402, wmfc502, wmfc602, wmfc702, wmfc802, wmfc902, wmfc1002, wmfc1102, wmfc1202, wmfc1302, wmfc1402, wmfc1502, wmfc1602, wmfc1702, wmfc1802, wmfc1902, wmfc2002, wmfc2102, wmfc2202, wmfc2302, wmfc2402, wmfc2502, wmfc2602, wmfc2702, wmfc2802;
    wire  wmfs102, wmfs202, wmfs302, wmfs402, wmfs502, wmfs602, wmfs702, wmfs802, wmfs902, wmfs1002, wmfs1102, wmfs1202, wmfs1302, wmfs1402, wmfs1502, wmfs1602, wmfs1702, wmfs1802, wmfs1902, wmfs2002, wmfs2102, wmfs2202, wmfs2302, wmfs2402, wmfs2502, wmfs2602, wmfs2702, wmfs2802;

// row b3
    wire  wmfc003, wmfc103, wmfc203, wmfc303, wmfc403, wmfc503, wmfc603, wmfc703, wmfc803, wmfc903, wmfc1003, wmfc1103, wmfc1203, wmfc1303, wmfc1403, wmfc1503, wmfc1603, wmfc1703, wmfc1803, wmfc1903, wmfc2003, wmfc2103, wmfc2203, wmfc2303, wmfc2403, wmfc2503, wmfc2603, wmfc2703;
    wire  wmfs103, wmfs203, wmfs303, wmfs403, wmfs503, wmfs603, wmfs703, wmfs803, wmfs903, wmfs1003, wmfs1103, wmfs1203, wmfs1303, wmfs1403, wmfs1503, wmfs1603, wmfs1703, wmfs1803, wmfs1903, wmfs2003, wmfs2103, wmfs2203, wmfs2303, wmfs2403, wmfs2503, wmfs2603, wmfs2703;

// row b4
    wire  wmfc004, wmfc104, wmfc204, wmfc304, wmfc404, wmfc504, wmfc604, wmfc704, wmfc804, wmfc904, wmfc1004, wmfc1104, wmfc1204, wmfc1304, wmfc1404, wmfc1504, wmfc1604, wmfc1704, wmfc1804, wmfc1904, wmfc2004, wmfc2104, wmfc2204, wmfc2304, wmfc2404, wmfc2504, wmfc2604;
    wire  wmfs104, wmfs204, wmfs304, wmfs404, wmfs504, wmfs604, wmfs704, wmfs804, wmfs904, wmfs1004, wmfs1104, wmfs1204, wmfs1304, wmfs1404, wmfs1504, wmfs1604, wmfs1704, wmfs1804, wmfs1904, wmfs2004, wmfs2104, wmfs2204, wmfs2304, wmfs2404, wmfs2504, wmfs2604;

// row b5
    wire  wmfc005, wmfc105, wmfc205, wmfc305, wmfc405, wmfc505, wmfc605, wmfc705, wmfc805, wmfc905, wmfc1005, wmfc1105, wmfc1205, wmfc1305, wmfc1405, wmfc1505, wmfc1605, wmfc1705, wmfc1805, wmfc1905, wmfc2005, wmfc2105, wmfc2205, wmfc2305, wmfc2405, wmfc2505;
    wire  wmfs105, wmfs205, wmfs305, wmfs405, wmfs505, wmfs605, wmfs705, wmfs805, wmfs905, wmfs1005, wmfs1105, wmfs1205, wmfs1305, wmfs1405, wmfs1505, wmfs1605, wmfs1705, wmfs1805, wmfs1905, wmfs2005, wmfs2105, wmfs2205, wmfs2305, wmfs2405, wmfs2505;

// row b6
    wire  wmfc006, wmfc106, wmfc206, wmfc306, wmfc406, wmfc506, wmfc606, wmfc706, wmfc806, wmfc906, wmfc1006, wmfc1106, wmfc1206, wmfc1306, wmfc1406, wmfc1506, wmfc1606, wmfc1706, wmfc1806, wmfc1906, wmfc2006, wmfc2106, wmfc2206, wmfc2306, wmfc2406;
    wire  wmfs106, wmfs206, wmfs306, wmfs406, wmfs506, wmfs606, wmfs706, wmfs806, wmfs906, wmfs1006, wmfs1106, wmfs1206, wmfs1306, wmfs1406, wmfs1506, wmfs1606, wmfs1706, wmfs1806, wmfs1906, wmfs2006, wmfs2106, wmfs2206, wmfs2306, wmfs2406;

// row b7
    wire  wmfc007, wmfc107, wmfc207, wmfc307, wmfc407, wmfc507, wmfc607, wmfc707, wmfc807, wmfc907, wmfc1007, wmfc1107, wmfc1207, wmfc1307, wmfc1407, wmfc1507, wmfc1607, wmfc1707, wmfc1807, wmfc1907, wmfc2007, wmfc2107, wmfc2207, wmfc2307;
    wire  wmfs107, wmfs207, wmfs307, wmfs407, wmfs507, wmfs607, wmfs707, wmfs807, wmfs907, wmfs1007, wmfs1107, wmfs1207, wmfs1307, wmfs1407, wmfs1507, wmfs1607, wmfs1707, wmfs1807, wmfs1907, wmfs2007, wmfs2107, wmfs2207, wmfs2307;

// row b8
    wire  wmfc008, wmfc108, wmfc208, wmfc308, wmfc408, wmfc508, wmfc608, wmfc708, wmfc808, wmfc908, wmfc1008, wmfc1108, wmfc1208, wmfc1308, wmfc1408, wmfc1508, wmfc1608, wmfc1708, wmfc1808, wmfc1908, wmfc2008, wmfc2108, wmfc2208;
    wire  wmfs108, wmfs208, wmfs308, wmfs408, wmfs508, wmfs608, wmfs708, wmfs808, wmfs908, wmfs1008, wmfs1108, wmfs1208, wmfs1308, wmfs1408, wmfs1508, wmfs1608, wmfs1708, wmfs1808, wmfs1908, wmfs2008, wmfs2108, wmfs2208;

// row b9
    wire  wmfc009, wmfc109, wmfc209, wmfc309, wmfc409, wmfc509, wmfc609, wmfc709, wmfc809, wmfc909, wmfc1009, wmfc1109, wmfc1209, wmfc1309, wmfc1409, wmfc1509, wmfc1609, wmfc1709, wmfc1809, wmfc1909, wmfc2009, wmfc2109;
    wire  wmfs109, wmfs209, wmfs309, wmfs409, wmfs509, wmfs609, wmfs709, wmfs809, wmfs909, wmfs1009, wmfs1109, wmfs1209, wmfs1309, wmfs1409, wmfs1509, wmfs1609, wmfs1709, wmfs1809, wmfs1909, wmfs2009, wmfs2109;

//row b10
    wire  wmfc010, wmfc110, wmfc210, wmfc310, wmfc410, wmfc510, wmfc610, wmfc710, wmfc810, wmfc910, wmfc1010, wmfc1110, wmfc1210, wmfc1310, wmfc1410, wmfc1510, wmfc1610, wmfc1710, wmfc1810, wmfc1910, wmfc2010;
    wire  wmfs110, wmfs210, wmfs310, wmfs410, wmfs510, wmfs610, wmfs710, wmfs810, wmfs910, wmfs1010, wmfs1110, wmfs1210, wmfs1310, wmfs1410, wmfs1510, wmfs1610, wmfs1710, wmfs1810, wmfs1910, wmfs2010;

//row b11
    wire  wmfc011, wmfc111, wmfc211, wmfc311, wmfc411, wmfc511, wmfc611, wmfc711, wmfc811, wmfc911, wmfc1011, wmfc1111, wmfc1211, wmfc1311, wmfc1411, wmfc1511, wmfc1611, wmfc1711, wmfc1811, wmfc1911;
    wire  wmfs111, wmfs211, wmfs311, wmfs411, wmfs511, wmfs611, wmfs711, wmfs811, wmfs911, wmfs1011, wmfs1111, wmfs1211, wmfs1311, wmfs1411, wmfs1511, wmfs1611, wmfs1711, wmfs1811, wmfs1911;

//row b12
    wire  wmfc012, wmfc112, wmfc212, wmfc312, wmfc412, wmfc512, wmfc612, wmfc712, wmfc812, wmfc912, wmfc1012, wmfc1112, wmfc1212, wmfc1312, wmfc1412, wmfc1512, wmfc1612, wmfc1712, wmfc1812;
    wire  wmfs112, wmfs212, wmfs312, wmfs412, wmfs512, wmfs612, wmfs712, wmfs812, wmfs912, wmfs1012, wmfs1112, wmfs1212, wmfs1312, wmfs1412, wmfs1512, wmfs1612, wmfs1712, wmfs1812;

//row b13
    wire  wmfc013, wmfc113, wmfc213, wmfc313, wmfc413, wmfc513, wmfc613, wmfc713, wmfc813, wmfc913, wmfc1013, wmfc1113, wmfc1213, wmfc1313, wmfc1413, wmfc1513, wmfc1613, wmfc1713;
    wire  wmfs113, wmfs213, wmfs313, wmfs413, wmfs513, wmfs613, wmfs713, wmfs813, wmfs913, wmfs1013, wmfs1113, wmfs1213, wmfs1313, wmfs1413, wmfs1513, wmfs1613, wmfs1713;

//row b14
    wire  wmfc014, wmfc114, wmfc214, wmfc314, wmfc414, wmfc514, wmfc614, wmfc714, wmfc814, wmfc914, wmfc1014, wmfc1114, wmfc1214, wmfc1314, wmfc1414, wmfc1514, wmfc1614;
    wire  wmfs114, wmfs214, wmfs314, wmfs414, wmfs514, wmfs614, wmfs714, wmfs814, wmfs914, wmfs1014, wmfs1114, wmfs1214, wmfs1314, wmfs1414, wmfs1514, wmfs1614;

//row b15
    wire  wmfc015, wmfc115, wmfc215, wmfc315, wmfc415, wmfc515, wmfc615, wmfc715, wmfc815, wmfc915, wmfc1015, wmfc1115, wmfc1215, wmfc1315, wmfc1415, wmfc1515;
    wire  wmfs115, wmfs215, wmfs315, wmfs415, wmfs515, wmfs615, wmfs715, wmfs815, wmfs915, wmfs1015, wmfs1115, wmfs1215, wmfs1315, wmfs1415, wmfs1515;

//row b16
    wire  wfac016, wfac116, wfac216, wfac316, wfac416, wfac516, wfac616, wfac716, wfac816, wfac916, wfac1016, wfac1116, wfac1216, wfac1316, wfac1416;

//Row bo Implementation
    and a00(product_comb[0], A[0], B[0]);
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
    and a130(wa130, A[13], B[0]);
    and a140(wa140, A[14], B[0]);
    and a150(wa150, A[15], B[0]);

    assign wa160 = wa150;
    assign wa170 = wa150;
    assign wa180 = wa150;
    assign wa190 = wa150;
    assign wa200 = wa150;
    assign wa210 = wa150;
    assign wa220 = wa150;
    assign wa230 = wa150;
    assign wa240 = wa150;
    assign wa250 = wa150;
    assign wa260 = wa150;
    assign wa270 = wa150;
    assign wa280 = wa150;
    assign wa290 = wa150;
    assign wa300 = wa150;
    
//Row b1

    MHA     mha001(.Sum(product_comb[1]), .Cout(wmhc001), .A(A[0]), .B(B[1]), .Sin(wa10));
    MHA     mha101(.Sum(wmhs101), .Cout(wmhc101), .A(A[1]), .B(B[1]), .Sin(wa20));
    MHA     mha201(.Sum(wmhs201), .Cout(wmhc201), .A(A[2]), .B(B[1]), .Sin(wa30));
    MHA     mha301(.Sum(wmhs301), .Cout(wmhc301), .A(A[3]), .B(B[1]), .Sin(wa40));
    MHA     mha401(.Sum(wmhs401), .Cout(wmhc401), .A(A[4]), .B(B[1]), .Sin(wa50));
    MHA     mha501(.Sum(wmhs501), .Cout(wmhc501), .A(A[5]), .B(B[1]), .Sin(wa60));
    MHA     mha601(.Sum(wmhs601), .Cout(wmhc601), .A(A[6]), .B(B[1]), .Sin(wa70));
    MHA     mha701(.Sum(wmhs701), .Cout(wmhc701), .A(A[7]), .B(B[1]), .Sin(wa80));
    MHA     mha801(.Sum(wmhs801), .Cout(wmhc801), .A(A[8]), .B(B[1]), .Sin(wa90));
    MHA     mha901(.Sum(wmhs901), .Cout(wmhc901), .A(A[9]), .B(B[1]), .Sin(wa100));
    MHA     mha1001(.Sum(wmhs1001), .Cout(wmhc1001), .A(A[10]), .B(B[1]), .Sin(wa110));
    MHA     mha1101(.Sum(wmhs1101), .Cout(wmhc1101), .A(A[11]), .B(B[1]), .Sin(wa120));
    MHA     mha1201(.Sum(wmhs1201), .Cout(wmhc1201), .A(A[12]), .B(B[1]), .Sin(wa130));
    MHA     mha1301(.Sum(wmhs1301), .Cout(wmhc1301), .A(A[13]), .B(B[1]), .Sin(wa140));
    MHA     mha1401(.Sum(wmhs1401), .Cout(wmhc1401), .A(A[14]), .B(B[1]), .Sin(wa150));
    MHA     mha1501(.Sum(wmhs1501), .Cout(wmhc1501), .A(A[15]), .B(B[1]), .Sin(wa160));

    MHA     mha1601(.Sum(wmhs1601), .Cout(wmhc1601), .A(A[15]), .B(B[1]), .Sin(wa170));
    MHA     mha1701(.Sum(wmhs1701), .Cout(wmhc1701), .A(A[15]), .B(B[1]), .Sin(wa180));
    MHA     mha1801(.Sum(wmhs1801), .Cout(wmhc1801), .A(A[15]), .B(B[1]), .Sin(wa190));
    MHA     mha1901(.Sum(wmhs1901), .Cout(wmhc1901), .A(A[15]), .B(B[1]), .Sin(wa200));
    MHA     mha2001(.Sum(wmhs2001), .Cout(wmhc2001), .A(A[15]), .B(B[1]), .Sin(wa210));
    MHA     mha2101(.Sum(wmhs2101), .Cout(wmhc2101), .A(A[15]), .B(B[1]), .Sin(wa220));
    MHA     mha2201(.Sum(wmhs2201), .Cout(wmhc2201), .A(A[15]), .B(B[1]), .Sin(wa230));
    MHA     mha2301(.Sum(wmhs2301), .Cout(wmhc2301), .A(A[15]), .B(B[1]), .Sin(wa240));
    MHA     mha2401(.Sum(wmhs2401), .Cout(wmhc2401), .A(A[15]), .B(B[1]), .Sin(wa250));
    MHA     mha2501(.Sum(wmhs2501), .Cout(wmhc2501), .A(A[15]), .B(B[1]), .Sin(wa260));
    MHA     mha2601(.Sum(wmhs2601), .Cout(wmhc2601), .A(A[15]), .B(B[1]), .Sin(wa270));
    MHA     mha2701(.Sum(wmhs2701), .Cout(wmhc2701), .A(A[15]), .B(B[1]), .Sin(wa280));
    MHA     mha2801(.Sum(wmhs2801), .Cout(wmhc2801), .A(A[15]), .B(B[1]), .Sin(wa290));
    MHA     mha2901(.Sum(wmhs2901), .Cout(wmhc2901), .A(A[15]), .B(B[1]), .Sin(wa300));

// Row b2
    MFA     mfa002(.Sum(product_comb[2]), .Cout(wmfc002), .A(A[0]), .B(B[2]), .Sin(wmhs101), .Cin(wmhc001));
    MFA     mfa102(.Sum(wmfs102), .Cout(wmfc102), .A(A[1]), .B(B[2]), .Sin(wmhs201), .Cin(wmhc101));
    MFA     mfa202(.Sum(wmfs202), .Cout(wmfc202), .A(A[2]), .B(B[2]), .Sin(wmhs301), .Cin(wmhc201));
    MFA     mfa302(.Sum(wmfs302), .Cout(wmfc302), .A(A[3]), .B(B[2]), .Sin(wmhs401), .Cin(wmhc301));
    MFA     mfa402(.Sum(wmfs402), .Cout(wmfc402), .A(A[4]), .B(B[2]), .Sin(wmhs501), .Cin(wmhc401));
    MFA     mfa502(.Sum(wmfs502), .Cout(wmfc502), .A(A[5]), .B(B[2]), .Sin(wmhs601), .Cin(wmhc501));
    MFA     mfa602(.Sum(wmfs602), .Cout(wmfc602), .A(A[6]), .B(B[2]), .Sin(wmhs701), .Cin(wmhc601));
    MFA     mfa702(.Sum(wmfs702), .Cout(wmfc702), .A(A[7]), .B(B[2]), .Sin(wmhs801), .Cin(wmhc701));
    MFA     mfa802(.Sum(wmfs802), .Cout(wmfc802), .A(A[8]), .B(B[2]), .Sin(wmhs901), .Cin(wmhc801));
    MFA     mfa902(.Sum(wmfs902), .Cout(wmfc902), .A(A[9]), .B(B[2]), .Sin(wmhs1001), .Cin(wmhc901));
    MFA     mfa1002(.Sum(wmfs1002), .Cout(wmfc1002), .A(A[10]), .B(B[2]), .Sin(wmhs1101), .Cin(wmhc1001));
    MFA     mfa1102(.Sum(wmfs1102), .Cout(wmfc1102), .A(A[11]), .B(B[2]), .Sin(wmhs1201), .Cin(wmhc1101));
    MFA     mfa1202(.Sum(wmfs1202), .Cout(wmfc1202), .A(A[12]), .B(B[2]), .Sin(wmhs1301), .Cin(wmhc1201));
    MFA     mfa1302(.Sum(wmfs1302), .Cout(wmfc1302), .A(A[13]), .B(B[2]), .Sin(wmhs1401), .Cin(wmhc1301));
    MFA     mfa1402(.Sum(wmfs1402), .Cout(wmfc1402), .A(A[14]), .B(B[2]), .Sin(wmhs1501), .Cin(wmhc1401));
    MFA     mfa1502(.Sum(wmfs1502), .Cout(wmfc1502), .A(A[15]), .B(B[2]), .Sin(wmhs1601), .Cin(wmhc1501));

    MFA     mfa1602(.Sum(wmfs1602), .Cout(wmfc1602), .A(A[15]), .B(B[2]), .Sin(wmhs1701), .Cin(wmhc1601));
    MFA     mfa1702(.Sum(wmfs1702), .Cout(wmfc1702), .A(A[15]), .B(B[2]), .Sin(wmhs1801), .Cin(wmhc1701));
    MFA     mfa1802(.Sum(wmfs1802), .Cout(wmfc1802), .A(A[15]), .B(B[2]), .Sin(wmhs1901), .Cin(wmhc1801));
    MFA     mfa1902(.Sum(wmfs1902), .Cout(wmfc1902), .A(A[15]), .B(B[2]), .Sin(wmhs2001), .Cin(wmhc1901));
    MFA     mfa2002(.Sum(wmfs2002), .Cout(wmfc2002), .A(A[15]), .B(B[2]), .Sin(wmhs2101), .Cin(wmhc2001));
    MFA     mfa2102(.Sum(wmfs2102), .Cout(wmfc2102), .A(A[15]), .B(B[2]), .Sin(wmhs2201), .Cin(wmhc2101));
    MFA     mfa2202(.Sum(wmfs2202), .Cout(wmfc2202), .A(A[15]), .B(B[2]), .Sin(wmhs2301), .Cin(wmhc2201));
    MFA     mfa2302(.Sum(wmfs2302), .Cout(wmfc2302), .A(A[15]), .B(B[2]), .Sin(wmhs2401), .Cin(wmhc2301));
    MFA     mfa2402(.Sum(wmfs2402), .Cout(wmfc2402), .A(A[15]), .B(B[2]), .Sin(wmhs2501), .Cin(wmhc2401));
    MFA     mfa2502(.Sum(wmfs2502), .Cout(wmfc2502), .A(A[15]), .B(B[2]), .Sin(wmhs2601), .Cin(wmhc2501));
    MFA     mfa2602(.Sum(wmfs2602), .Cout(wmfc2602), .A(A[15]), .B(B[2]), .Sin(wmhs2701), .Cin(wmhc2601));
    MFA     mfa2702(.Sum(wmfs2702), .Cout(wmfc2702), .A(A[15]), .B(B[2]), .Sin(wmhs2801), .Cin(wmhc2701));
    MFA     mfa2802(.Sum(wmfs2802), .Cout(wmfc2802), .A(A[15]), .B(B[2]), .Sin(wmhs2901), .Cin(wmhc2801));

// Row b3
    MFA     mfa003(.Sum(product_comb[3]), .Cout(wmfc003), .A(A[0]), .B(B[3]), .Sin(wmfs102), .Cin(wmfc002));
    MFA     mfa103(.Sum(wmfs103), .Cout(wmfc103), .A(A[1]), .B(B[3]), .Sin(wmfs202), .Cin(wmfc102));
    MFA     mfa203(.Sum(wmfs203), .Cout(wmfc203), .A(A[2]), .B(B[3]), .Sin(wmfs302), .Cin(wmfc202));
    MFA     mfa303(.Sum(wmfs303), .Cout(wmfc303), .A(A[3]), .B(B[3]), .Sin(wmfs402), .Cin(wmfc302));
    MFA     mfa403(.Sum(wmfs403), .Cout(wmfc403), .A(A[4]), .B(B[3]), .Sin(wmfs502), .Cin(wmfc402));
    MFA     mfa503(.Sum(wmfs503), .Cout(wmfc503), .A(A[5]), .B(B[3]), .Sin(wmfs602), .Cin(wmfc502));
    MFA     mfa603(.Sum(wmfs603), .Cout(wmfc603), .A(A[6]), .B(B[3]), .Sin(wmfs702), .Cin(wmfc602));
    MFA     mfa703(.Sum(wmfs703), .Cout(wmfc703), .A(A[7]), .B(B[3]), .Sin(wmfs802), .Cin(wmfc702));
    MFA     mfa803(.Sum(wmfs803), .Cout(wmfc803), .A(A[8]), .B(B[3]), .Sin(wmfs902), .Cin(wmfc802));
    MFA     mfa903(.Sum(wmfs903), .Cout(wmfc903), .A(A[9]), .B(B[3]), .Sin(wmfs1002), .Cin(wmfc902));
    MFA     mfa1003(.Sum(wmfs1003), .Cout(wmfc1003), .A(A[10]), .B(B[3]), .Sin(wmfs1102), .Cin(wmfc1002));
    MFA     mfa1103(.Sum(wmfs1103), .Cout(wmfc1103), .A(A[11]), .B(B[3]), .Sin(wmfs1202), .Cin(wmfc1102));
    MFA     mfa1203(.Sum(wmfs1203), .Cout(wmfc1203), .A(A[12]), .B(B[3]), .Sin(wmfs1302), .Cin(wmfc1202));
    MFA     mfa1303(.Sum(wmfs1303), .Cout(wmfc1303), .A(A[13]), .B(B[3]), .Sin(wmfs1402), .Cin(wmfc1302));
    MFA     mfa1403(.Sum(wmfs1403), .Cout(wmfc1403), .A(A[14]), .B(B[3]), .Sin(wmfs1502), .Cin(wmfc1402));
    MFA     mfa1503(.Sum(wmfs1503), .Cout(wmfc1503), .A(A[15]), .B(B[3]), .Sin(wmfs1602), .Cin(wmfc1502));

    MFA     mfa1603(.Sum(wmfs1603), .Cout(wmfc1603), .A(A[15]), .B(B[3]), .Sin(wmfs1702), .Cin(wmfc1602));
    MFA     mfa1703(.Sum(wmfs1703), .Cout(wmfc1703), .A(A[15]), .B(B[3]), .Sin(wmfs1802), .Cin(wmfc1702));
    MFA     mfa1803(.Sum(wmfs1803), .Cout(wmfc1803), .A(A[15]), .B(B[3]), .Sin(wmfs1902), .Cin(wmfc1802));
    MFA     mfa1903(.Sum(wmfs1903), .Cout(wmfc1903), .A(A[15]), .B(B[3]), .Sin(wmfs2002), .Cin(wmfc1902));
    MFA     mfa2003(.Sum(wmfs2003), .Cout(wmfc2003), .A(A[15]), .B(B[3]), .Sin(wmfs2102), .Cin(wmfc2002));
    MFA     mfa2103(.Sum(wmfs2103), .Cout(wmfc2103), .A(A[15]), .B(B[3]), .Sin(wmfs2202), .Cin(wmfc2102));
    MFA     mfa2203(.Sum(wmfs2203), .Cout(wmfc2203), .A(A[15]), .B(B[3]), .Sin(wmfs2302), .Cin(wmfc2202));
    MFA     mfa2303(.Sum(wmfs2303), .Cout(wmfc2303), .A(A[15]), .B(B[3]), .Sin(wmfs2402), .Cin(wmfc2302));
    MFA     mfa2403(.Sum(wmfs2403), .Cout(wmfc2403), .A(A[15]), .B(B[3]), .Sin(wmfs2502), .Cin(wmfc2402));
    MFA     mfa2503(.Sum(wmfs2503), .Cout(wmfc2503), .A(A[15]), .B(B[3]), .Sin(wmfs2602), .Cin(wmfc2502));
    MFA     mfa2603(.Sum(wmfs2603), .Cout(wmfc2603), .A(A[15]), .B(B[3]), .Sin(wmfs2702), .Cin(wmfc2602));
    MFA     mfa2703(.Sum(wmfs2703), .Cout(wmfc2703), .A(A[15]), .B(B[3]), .Sin(wmfs2802), .Cin(wmfc2702));

// Row b4
    MFA     mfa004(.Sum(product_comb[4]), .Cout(wmfc004), .A(A[0]), .B(B[4]), .Sin(wmfs103), .Cin(wmfc003));
    MFA     mfa104(.Sum(wmfs104), .Cout(wmfc104), .A(A[1]), .B(B[4]), .Sin(wmfs203), .Cin(wmfc103));
    MFA     mfa204(.Sum(wmfs204), .Cout(wmfc204), .A(A[2]), .B(B[4]), .Sin(wmfs303), .Cin(wmfc203));
    MFA     mfa304(.Sum(wmfs304), .Cout(wmfc304), .A(A[3]), .B(B[4]), .Sin(wmfs403), .Cin(wmfc303));
    MFA     mfa404(.Sum(wmfs404), .Cout(wmfc404), .A(A[4]), .B(B[4]), .Sin(wmfs503), .Cin(wmfc403));
    MFA     mfa504(.Sum(wmfs504), .Cout(wmfc504), .A(A[5]), .B(B[4]), .Sin(wmfs603), .Cin(wmfc503));
    MFA     mfa604(.Sum(wmfs604), .Cout(wmfc604), .A(A[6]), .B(B[4]), .Sin(wmfs703), .Cin(wmfc603));
    MFA     mfa704(.Sum(wmfs704), .Cout(wmfc704), .A(A[7]), .B(B[4]), .Sin(wmfs803), .Cin(wmfc703));
    MFA     mfa804(.Sum(wmfs804), .Cout(wmfc804), .A(A[8]), .B(B[4]), .Sin(wmfs903), .Cin(wmfc803));
    MFA     mfa904(.Sum(wmfs904), .Cout(wmfc904), .A(A[9]), .B(B[4]), .Sin(wmfs1003), .Cin(wmfc903));
    MFA     mfa1004(.Sum(wmfs1004), .Cout(wmfc1004), .A(A[10]), .B(B[4]), .Sin(wmfs1103), .Cin(wmfc1003));
    MFA     mfa1104(.Sum(wmfs1104), .Cout(wmfc1104), .A(A[11]), .B(B[4]), .Sin(wmfs1203), .Cin(wmfc1103));
    MFA     mfa1204(.Sum(wmfs1204), .Cout(wmfc1204), .A(A[12]), .B(B[4]), .Sin(wmfs1303), .Cin(wmfc1203));
    MFA     mfa1304(.Sum(wmfs1304), .Cout(wmfc1304), .A(A[13]), .B(B[4]), .Sin(wmfs1403), .Cin(wmfc1303));
    MFA     mfa1404(.Sum(wmfs1404), .Cout(wmfc1404), .A(A[14]), .B(B[4]), .Sin(wmfs1503), .Cin(wmfc1403));
    MFA     mfa1504(.Sum(wmfs1504), .Cout(wmfc1504), .A(A[15]), .B(B[4]), .Sin(wmfs1603), .Cin(wmfc1503));

    MFA     mfa1604(.Sum(wmfs1604), .Cout(wmfc1604), .A(A[15]), .B(B[4]), .Sin(wmfs1703), .Cin(wmfc1603));
    MFA     mfa1704(.Sum(wmfs1704), .Cout(wmfc1704), .A(A[15]), .B(B[4]), .Sin(wmfs1803), .Cin(wmfc1703));
    MFA     mfa1804(.Sum(wmfs1804), .Cout(wmfc1804), .A(A[15]), .B(B[4]), .Sin(wmfs1903), .Cin(wmfc1803));
    MFA     mfa1904(.Sum(wmfs1904), .Cout(wmfc1904), .A(A[15]), .B(B[4]), .Sin(wmfs2003), .Cin(wmfc1903));
    MFA     mfa2004(.Sum(wmfs2004), .Cout(wmfc2004), .A(A[15]), .B(B[4]), .Sin(wmfs2103), .Cin(wmfc2003));
    MFA     mfa2104(.Sum(wmfs2104), .Cout(wmfc2104), .A(A[15]), .B(B[4]), .Sin(wmfs2203), .Cin(wmfc2103));
    MFA     mfa2204(.Sum(wmfs2204), .Cout(wmfc2204), .A(A[15]), .B(B[4]), .Sin(wmfs2303), .Cin(wmfc2203));
    MFA     mfa2304(.Sum(wmfs2304), .Cout(wmfc2304), .A(A[15]), .B(B[4]), .Sin(wmfs2403), .Cin(wmfc2303));
    MFA     mfa2404(.Sum(wmfs2404), .Cout(wmfc2404), .A(A[15]), .B(B[4]), .Sin(wmfs2503), .Cin(wmfc2403));
    MFA     mfa2504(.Sum(wmfs2504), .Cout(wmfc2504), .A(A[15]), .B(B[4]), .Sin(wmfs2603), .Cin(wmfc2503));
    MFA     mfa2604(.Sum(wmfs2604), .Cout(wmfc2604), .A(A[15]), .B(B[4]), .Sin(wmfs2703), .Cin(wmfc2603));

// Row b5
    MFA     mfa005(.Sum(product_comb[5]), .Cout(wmfc005), .A(A[0]), .B(B[5]), .Sin(wmfs104), .Cin(wmfc004));
    MFA     mfa105(.Sum(wmfs105), .Cout(wmfc105), .A(A[1]), .B(B[5]), .Sin(wmfs204), .Cin(wmfc104));
    MFA     mfa205(.Sum(wmfs205), .Cout(wmfc205), .A(A[2]), .B(B[5]), .Sin(wmfs304), .Cin(wmfc204));
    MFA     mfa305(.Sum(wmfs305), .Cout(wmfc305), .A(A[3]), .B(B[5]), .Sin(wmfs404), .Cin(wmfc304));
    MFA     mfa405(.Sum(wmfs405), .Cout(wmfc405), .A(A[4]), .B(B[5]), .Sin(wmfs504), .Cin(wmfc404));
    MFA     mfa505(.Sum(wmfs505), .Cout(wmfc505), .A(A[5]), .B(B[5]), .Sin(wmfs604), .Cin(wmfc504));
    MFA     mfa605(.Sum(wmfs605), .Cout(wmfc605), .A(A[6]), .B(B[5]), .Sin(wmfs704), .Cin(wmfc604));
    MFA     mfa705(.Sum(wmfs705), .Cout(wmfc705), .A(A[7]), .B(B[5]), .Sin(wmfs804), .Cin(wmfc704));
    MFA     mfa805(.Sum(wmfs805), .Cout(wmfc805), .A(A[8]), .B(B[5]), .Sin(wmfs904), .Cin(wmfc804));
    MFA     mfa905(.Sum(wmfs905), .Cout(wmfc905), .A(A[9]), .B(B[5]), .Sin(wmfs1004), .Cin(wmfc904));
    MFA     mfa1005(.Sum(wmfs1005), .Cout(wmfc1005), .A(A[10]), .B(B[5]), .Sin(wmfs1104), .Cin(wmfc1004));
    MFA     mfa1105(.Sum(wmfs1105), .Cout(wmfc1105), .A(A[11]), .B(B[5]), .Sin(wmfs1204), .Cin(wmfc1104));
    MFA     mfa1205(.Sum(wmfs1205), .Cout(wmfc1205), .A(A[12]), .B(B[5]), .Sin(wmfs1304), .Cin(wmfc1204));
    MFA     mfa1305(.Sum(wmfs1305), .Cout(wmfc1305), .A(A[13]), .B(B[5]), .Sin(wmfs1404), .Cin(wmfc1304));
    MFA     mfa1405(.Sum(wmfs1405), .Cout(wmfc1405), .A(A[14]), .B(B[5]), .Sin(wmfs1504), .Cin(wmfc1404));
    MFA     mfa1505(.Sum(wmfs1505), .Cout(wmfc1505), .A(A[15]), .B(B[5]), .Sin(wmfs1604), .Cin(wmfc1504));

    MFA     mfa1605(.Sum(wmfs1605), .Cout(wmfc1605), .A(A[15]), .B(B[5]), .Sin(wmfs1704), .Cin(wmfc1604));
    MFA     mfa1705(.Sum(wmfs1705), .Cout(wmfc1705), .A(A[15]), .B(B[5]), .Sin(wmfs1804), .Cin(wmfc1704));
    MFA     mfa1805(.Sum(wmfs1805), .Cout(wmfc1805), .A(A[15]), .B(B[5]), .Sin(wmfs1904), .Cin(wmfc1804));
    MFA     mfa1905(.Sum(wmfs1905), .Cout(wmfc1905), .A(A[15]), .B(B[5]), .Sin(wmfs2004), .Cin(wmfc1904));
    MFA     mfa2005(.Sum(wmfs2005), .Cout(wmfc2005), .A(A[15]), .B(B[5]), .Sin(wmfs2104), .Cin(wmfc2004));
    MFA     mfa2105(.Sum(wmfs2105), .Cout(wmfc2105), .A(A[15]), .B(B[5]), .Sin(wmfs2204), .Cin(wmfc2104));
    MFA     mfa2205(.Sum(wmfs2205), .Cout(wmfc2205), .A(A[15]), .B(B[5]), .Sin(wmfs2304), .Cin(wmfc2204));
    MFA     mfa2305(.Sum(wmfs2305), .Cout(wmfc2305), .A(A[15]), .B(B[5]), .Sin(wmfs2404), .Cin(wmfc2304));
    MFA     mfa2405(.Sum(wmfs2405), .Cout(wmfc2405), .A(A[15]), .B(B[5]), .Sin(wmfs2504), .Cin(wmfc2404));
    MFA     mfa2505(.Sum(wmfs2505), .Cout(wmfc2505), .A(A[15]), .B(B[5]), .Sin(wmfs2604), .Cin(wmfc2504));

// Row b6
    MFA     mfa006(.Sum(product_comb[6]), .Cout(wmfc006), .A(A[0]), .B(B[6]), .Sin(wmfs105), .Cin(wmfc005));
    MFA     mfa106(.Sum(wmfs106), .Cout(wmfc106), .A(A[1]), .B(B[6]), .Sin(wmfs205), .Cin(wmfc105));
    MFA     mfa206(.Sum(wmfs206), .Cout(wmfc206), .A(A[2]), .B(B[6]), .Sin(wmfs305), .Cin(wmfc205));
    MFA     mfa306(.Sum(wmfs306), .Cout(wmfc306), .A(A[3]), .B(B[6]), .Sin(wmfs405), .Cin(wmfc305));
    MFA     mfa406(.Sum(wmfs406), .Cout(wmfc406), .A(A[4]), .B(B[6]), .Sin(wmfs505), .Cin(wmfc405));
    MFA     mfa506(.Sum(wmfs506), .Cout(wmfc506), .A(A[5]), .B(B[6]), .Sin(wmfs605), .Cin(wmfc505));
    MFA     mfa606(.Sum(wmfs606), .Cout(wmfc606), .A(A[6]), .B(B[6]), .Sin(wmfs705), .Cin(wmfc605));
    MFA     mfa706(.Sum(wmfs706), .Cout(wmfc706), .A(A[7]), .B(B[6]), .Sin(wmfs805), .Cin(wmfc705));
    MFA     mfa806(.Sum(wmfs806), .Cout(wmfc806), .A(A[8]), .B(B[6]), .Sin(wmfs905), .Cin(wmfc805));
    MFA     mfa906(.Sum(wmfs906), .Cout(wmfc906), .A(A[9]), .B(B[6]), .Sin(wmfs1005), .Cin(wmfc905));
    MFA     mfa1006(.Sum(wmfs1006), .Cout(wmfc1006), .A(A[10]), .B(B[6]), .Sin(wmfs1105), .Cin(wmfc1005));
    MFA     mfa1106(.Sum(wmfs1106), .Cout(wmfc1106), .A(A[11]), .B(B[6]), .Sin(wmfs1205), .Cin(wmfc1105));
    MFA     mfa1206(.Sum(wmfs1206), .Cout(wmfc1206), .A(A[12]), .B(B[6]), .Sin(wmfs1305), .Cin(wmfc1205));
    MFA     mfa1306(.Sum(wmfs1306), .Cout(wmfc1306), .A(A[13]), .B(B[6]), .Sin(wmfs1405), .Cin(wmfc1305));
    MFA     mfa1406(.Sum(wmfs1406), .Cout(wmfc1406), .A(A[14]), .B(B[6]), .Sin(wmfs1505), .Cin(wmfc1405));
    MFA     mfa1506(.Sum(wmfs1506), .Cout(wmfc1506), .A(A[15]), .B(B[6]), .Sin(wmfs1605), .Cin(wmfc1505));

    MFA     mfa1606(.Sum(wmfs1606), .Cout(wmfc1606), .A(A[15]), .B(B[6]), .Sin(wmfs1705), .Cin(wmfc1605));
    MFA     mfa1706(.Sum(wmfs1706), .Cout(wmfc1706), .A(A[15]), .B(B[6]), .Sin(wmfs1805), .Cin(wmfc1705));
    MFA     mfa1806(.Sum(wmfs1806), .Cout(wmfc1806), .A(A[15]), .B(B[6]), .Sin(wmfs1905), .Cin(wmfc1805));
    MFA     mfa1906(.Sum(wmfs1906), .Cout(wmfc1906), .A(A[15]), .B(B[6]), .Sin(wmfs2005), .Cin(wmfc1905));
    MFA     mfa2006(.Sum(wmfs2006), .Cout(wmfc2006), .A(A[15]), .B(B[6]), .Sin(wmfs2105), .Cin(wmfc2005));
    MFA     mfa2106(.Sum(wmfs2106), .Cout(wmfc2106), .A(A[15]), .B(B[6]), .Sin(wmfs2205), .Cin(wmfc2105));
    MFA     mfa2206(.Sum(wmfs2206), .Cout(wmfc2206), .A(A[15]), .B(B[6]), .Sin(wmfs2305), .Cin(wmfc2205));
    MFA     mfa2306(.Sum(wmfs2306), .Cout(wmfc2306), .A(A[15]), .B(B[6]), .Sin(wmfs2405), .Cin(wmfc2305));
    MFA     mfa2406(.Sum(wmfs2406), .Cout(wmfc2406), .A(A[15]), .B(B[6]), .Sin(wmfs2505), .Cin(wmfc2405));

    
// Row b7
    MFA     mfa007(.Sum(product_comb[7]), .Cout(wmfc007), .A(A[0]), .B(B[7]), .Sin(wmfs106), .Cin(wmfc006));
    MFA     mfa107(.Sum(wmfs107), .Cout(wmfc107), .A(A[1]), .B(B[7]), .Sin(wmfs206), .Cin(wmfc106));
    MFA     mfa207(.Sum(wmfs207), .Cout(wmfc207), .A(A[2]), .B(B[7]), .Sin(wmfs306), .Cin(wmfc206));
    MFA     mfa307(.Sum(wmfs307), .Cout(wmfc307), .A(A[3]), .B(B[7]), .Sin(wmfs406), .Cin(wmfc306));
    MFA     mfa407(.Sum(wmfs407), .Cout(wmfc407), .A(A[4]), .B(B[7]), .Sin(wmfs506), .Cin(wmfc406));
    MFA     mfa507(.Sum(wmfs507), .Cout(wmfc507), .A(A[5]), .B(B[7]), .Sin(wmfs606), .Cin(wmfc506));
    MFA     mfa607(.Sum(wmfs607), .Cout(wmfc607), .A(A[6]), .B(B[7]), .Sin(wmfs706), .Cin(wmfc606));
    MFA     mfa707(.Sum(wmfs707), .Cout(wmfc707), .A(A[7]), .B(B[7]), .Sin(wmfs806), .Cin(wmfc706));
    MFA     mfa807(.Sum(wmfs807), .Cout(wmfc807), .A(A[8]), .B(B[7]), .Sin(wmfs906), .Cin(wmfc806));
    MFA     mfa907(.Sum(wmfs907), .Cout(wmfc907), .A(A[9]), .B(B[7]), .Sin(wmfs1006), .Cin(wmfc906));
    MFA     mfa1007(.Sum(wmfs1007), .Cout(wmfc1007), .A(A[10]), .B(B[7]), .Sin(wmfs1106), .Cin(wmfc1006));
    MFA     mfa1107(.Sum(wmfs1107), .Cout(wmfc1107), .A(A[11]), .B(B[7]), .Sin(wmfs1206), .Cin(wmfc1106));
    MFA     mfa1207(.Sum(wmfs1207), .Cout(wmfc1207), .A(A[12]), .B(B[7]), .Sin(wmfs1306), .Cin(wmfc1206));
    MFA     mfa1307(.Sum(wmfs1307), .Cout(wmfc1307), .A(A[13]), .B(B[7]), .Sin(wmfs1406), .Cin(wmfc1306));
    MFA     mfa1407(.Sum(wmfs1407), .Cout(wmfc1407), .A(A[14]), .B(B[7]), .Sin(wmfs1506), .Cin(wmfc1406));
    MFA     mfa1507(.Sum(wmfs1507), .Cout(wmfc1507), .A(A[15]), .B(B[7]), .Sin(wmfs1606), .Cin(wmfc1506));

    MFA     mfa1607(.Sum(wmfs1607), .Cout(wmfc1607), .A(A[15]), .B(B[7]), .Sin(wmfs1706), .Cin(wmfc1606));
    MFA     mfa1707(.Sum(wmfs1707), .Cout(wmfc1707), .A(A[15]), .B(B[7]), .Sin(wmfs1806), .Cin(wmfc1706));
    MFA     mfa1807(.Sum(wmfs1807), .Cout(wmfc1807), .A(A[15]), .B(B[7]), .Sin(wmfs1906), .Cin(wmfc1806));
    MFA     mfa1907(.Sum(wmfs1907), .Cout(wmfc1907), .A(A[15]), .B(B[7]), .Sin(wmfs2006), .Cin(wmfc1906));
    MFA     mfa2007(.Sum(wmfs2007), .Cout(wmfc2007), .A(A[15]), .B(B[7]), .Sin(wmfs2106), .Cin(wmfc2006));
    MFA     mfa2107(.Sum(wmfs2107), .Cout(wmfc2107), .A(A[15]), .B(B[7]), .Sin(wmfs2206), .Cin(wmfc2106));
    MFA     mfa2207(.Sum(wmfs2207), .Cout(wmfc2207), .A(A[15]), .B(B[7]), .Sin(wmfs2306), .Cin(wmfc2206));
    MFA     mfa2307(.Sum(wmfs2307), .Cout(wmfc2307), .A(A[15]), .B(B[7]), .Sin(wmfs2406), .Cin(wmfc2306));

// Row b8
    MFA     mfa008(.Sum(product_comb[8]), .Cout(wmfc008), .A(A[0]), .B(B[8]), .Sin(wmfs107), .Cin(wmfc007));
    MFA     mfa108(.Sum(wmfs108), .Cout(wmfc108), .A(A[1]), .B(B[8]), .Sin(wmfs207), .Cin(wmfc107));
    MFA     mfa208(.Sum(wmfs208), .Cout(wmfc208), .A(A[2]), .B(B[8]), .Sin(wmfs307), .Cin(wmfc207));
    MFA     mfa308(.Sum(wmfs308), .Cout(wmfc308), .A(A[3]), .B(B[8]), .Sin(wmfs407), .Cin(wmfc307));
    MFA     mfa408(.Sum(wmfs408), .Cout(wmfc408), .A(A[4]), .B(B[8]), .Sin(wmfs507), .Cin(wmfc407));
    MFA     mfa508(.Sum(wmfs508), .Cout(wmfc508), .A(A[5]), .B(B[8]), .Sin(wmfs607), .Cin(wmfc507));
    MFA     mfa608(.Sum(wmfs608), .Cout(wmfc608), .A(A[6]), .B(B[8]), .Sin(wmfs707), .Cin(wmfc607));
    MFA     mfa708(.Sum(wmfs708), .Cout(wmfc708), .A(A[7]), .B(B[8]), .Sin(wmfs807), .Cin(wmfc707));
    MFA     mfa808(.Sum(wmfs808), .Cout(wmfc808), .A(A[8]), .B(B[8]), .Sin(wmfs907), .Cin(wmfc807));
    MFA     mfa908(.Sum(wmfs908), .Cout(wmfc908), .A(A[9]), .B(B[8]), .Sin(wmfs1007), .Cin(wmfc907));
    MFA     mfa1008(.Sum(wmfs1008), .Cout(wmfc1008), .A(A[10]), .B(B[8]), .Sin(wmfs1107), .Cin(wmfc1007));
    MFA     mfa1108(.Sum(wmfs1108), .Cout(wmfc1108), .A(A[11]), .B(B[8]), .Sin(wmfs1207), .Cin(wmfc1107));
    MFA     mfa1208(.Sum(wmfs1208), .Cout(wmfc1208), .A(A[12]), .B(B[8]), .Sin(wmfs1307), .Cin(wmfc1207));
    MFA     mfa1308(.Sum(wmfs1308), .Cout(wmfc1308), .A(A[13]), .B(B[8]), .Sin(wmfs1407), .Cin(wmfc1307));
    MFA     mfa1408(.Sum(wmfs1408), .Cout(wmfc1408), .A(A[14]), .B(B[8]), .Sin(wmfs1507), .Cin(wmfc1407));
    MFA     mfa1508(.Sum(wmfs1508), .Cout(wmfc1508), .A(A[15]), .B(B[8]), .Sin(wmfs1607), .Cin(wmfc1507));

    MFA     mfa1608(.Sum(wmfs1608), .Cout(wmfc1608), .A(A[15]), .B(B[8]), .Sin(wmfs1707), .Cin(wmfc1607));
    MFA     mfa1708(.Sum(wmfs1708), .Cout(wmfc1708), .A(A[15]), .B(B[8]), .Sin(wmfs1807), .Cin(wmfc1707));
    MFA     mfa1808(.Sum(wmfs1808), .Cout(wmfc1808), .A(A[15]), .B(B[8]), .Sin(wmfs1907), .Cin(wmfc1807));
    MFA     mfa1908(.Sum(wmfs1908), .Cout(wmfc1908), .A(A[15]), .B(B[8]), .Sin(wmfs2007), .Cin(wmfc1907));
    MFA     mfa2008(.Sum(wmfs2008), .Cout(wmfc2008), .A(A[15]), .B(B[8]), .Sin(wmfs2107), .Cin(wmfc2007));
    MFA     mfa2108(.Sum(wmfs2108), .Cout(wmfc2108), .A(A[15]), .B(B[8]), .Sin(wmfs2207), .Cin(wmfc2107));
    MFA     mfa2208(.Sum(wmfs2208), .Cout(wmfc2208), .A(A[15]), .B(B[8]), .Sin(wmfs2307), .Cin(wmfc2207));

// Row b9
    MFA     mfa009(.Sum(product_comb[9]), .Cout(wmfc009), .A(A[0]), .B(B[9]), .Sin(wmfs108), .Cin(wmfc008));
    MFA     mfa109(.Sum(wmfs109), .Cout(wmfc109), .A(A[1]), .B(B[9]), .Sin(wmfs208), .Cin(wmfc108));
    MFA     mfa209(.Sum(wmfs209), .Cout(wmfc209), .A(A[2]), .B(B[9]), .Sin(wmfs308), .Cin(wmfc208));
    MFA     mfa309(.Sum(wmfs309), .Cout(wmfc309), .A(A[3]), .B(B[9]), .Sin(wmfs408), .Cin(wmfc308));
    MFA     mfa409(.Sum(wmfs409), .Cout(wmfc409), .A(A[4]), .B(B[9]), .Sin(wmfs508), .Cin(wmfc408));
    MFA     mfa509(.Sum(wmfs509), .Cout(wmfc509), .A(A[5]), .B(B[9]), .Sin(wmfs608), .Cin(wmfc508));
    MFA     mfa609(.Sum(wmfs609), .Cout(wmfc609), .A(A[6]), .B(B[9]), .Sin(wmfs708), .Cin(wmfc608));
    MFA     mfa709(.Sum(wmfs709), .Cout(wmfc709), .A(A[7]), .B(B[9]), .Sin(wmfs808), .Cin(wmfc708));
    MFA     mfa809(.Sum(wmfs809), .Cout(wmfc809), .A(A[8]), .B(B[9]), .Sin(wmfs908), .Cin(wmfc808));
    MFA     mfa909(.Sum(wmfs909), .Cout(wmfc909), .A(A[9]), .B(B[9]), .Sin(wmfs1008), .Cin(wmfc908));
    MFA     mfa1009(.Sum(wmfs1009), .Cout(wmfc1009), .A(A[10]), .B(B[9]), .Sin(wmfs1108), .Cin(wmfc1008));
    MFA     mfa1109(.Sum(wmfs1109), .Cout(wmfc1109), .A(A[11]), .B(B[9]), .Sin(wmfs1208), .Cin(wmfc1108));
    MFA     mfa1209(.Sum(wmfs1209), .Cout(wmfc1209), .A(A[12]), .B(B[9]), .Sin(wmfs1308), .Cin(wmfc1208));
    MFA     mfa1309(.Sum(wmfs1309), .Cout(wmfc1309), .A(A[13]), .B(B[9]), .Sin(wmfs1408), .Cin(wmfc1308));
    MFA     mfa1409(.Sum(wmfs1409), .Cout(wmfc1409), .A(A[14]), .B(B[9]), .Sin(wmfs1508), .Cin(wmfc1408));
    MFA     mfa1509(.Sum(wmfs1509), .Cout(wmfc1509), .A(A[15]), .B(B[9]), .Sin(wmfs1608), .Cin(wmfc1508));

    MFA     mfa1609(.Sum(wmfs1609), .Cout(wmfc1609), .A(A[15]), .B(B[9]), .Sin(wmfs1708), .Cin(wmfc1608));
    MFA     mfa1709(.Sum(wmfs1709), .Cout(wmfc1709), .A(A[15]), .B(B[9]), .Sin(wmfs1808), .Cin(wmfc1708));
    MFA     mfa1809(.Sum(wmfs1809), .Cout(wmfc1809), .A(A[15]), .B(B[9]), .Sin(wmfs1908), .Cin(wmfc1808));
    MFA     mfa1909(.Sum(wmfs1909), .Cout(wmfc1909), .A(A[15]), .B(B[9]), .Sin(wmfs2008), .Cin(wmfc1908));
    MFA     mfa2009(.Sum(wmfs2009), .Cout(wmfc2009), .A(A[15]), .B(B[9]), .Sin(wmfs2108), .Cin(wmfc2008));
    MFA     mfa2109(.Sum(wmfs2109), .Cout(wmfc2109), .A(A[15]), .B(B[9]), .Sin(wmfs2208), .Cin(wmfc2108));

// Row b10
    MFA     mfa010(.Sum(product_comb[10]), .Cout(wmfc010), .A(A[0]), .B(B[10]), .Sin(wmfs109), .Cin(wmfc009));
    MFA     mfa110(.Sum(wmfs110), .Cout(wmfc110), .A(A[1]), .B(B[10]), .Sin(wmfs209), .Cin(wmfc109));
    MFA     mfa210(.Sum(wmfs210), .Cout(wmfc210), .A(A[2]), .B(B[10]), .Sin(wmfs309), .Cin(wmfc209));
    MFA     mfa310(.Sum(wmfs310), .Cout(wmfc310), .A(A[3]), .B(B[10]), .Sin(wmfs409), .Cin(wmfc309));
    MFA     mfa410(.Sum(wmfs410), .Cout(wmfc410), .A(A[4]), .B(B[10]), .Sin(wmfs509), .Cin(wmfc409));
    MFA     mfa510(.Sum(wmfs510), .Cout(wmfc510), .A(A[5]), .B(B[10]), .Sin(wmfs609), .Cin(wmfc509));
    MFA     mfa610(.Sum(wmfs610), .Cout(wmfc610), .A(A[6]), .B(B[10]), .Sin(wmfs709), .Cin(wmfc609));
    MFA     mfa710(.Sum(wmfs710), .Cout(wmfc710), .A(A[7]), .B(B[10]), .Sin(wmfs809), .Cin(wmfc709));
    MFA     mfa810(.Sum(wmfs810), .Cout(wmfc810), .A(A[8]), .B(B[10]), .Sin(wmfs909), .Cin(wmfc809));
    MFA     mfa910(.Sum(wmfs910), .Cout(wmfc910), .A(A[9]), .B(B[10]), .Sin(wmfs1009), .Cin(wmfc909));
    MFA     mfa1010(.Sum(wmfs1010), .Cout(wmfc1010), .A(A[10]), .B(B[10]), .Sin(wmfs1109), .Cin(wmfc1009));
    MFA     mfa1110(.Sum(wmfs1110), .Cout(wmfc1110), .A(A[11]), .B(B[10]), .Sin(wmfs1209), .Cin(wmfc1109));
    MFA     mfa1210(.Sum(wmfs1210), .Cout(wmfc1210), .A(A[12]), .B(B[10]), .Sin(wmfs1309), .Cin(wmfc1209));
    MFA     mfa1310(.Sum(wmfs1310), .Cout(wmfc1310), .A(A[13]), .B(B[10]), .Sin(wmfs1409), .Cin(wmfc1309));
    MFA     mfa1410(.Sum(wmfs1410), .Cout(wmfc1410), .A(A[14]), .B(B[10]), .Sin(wmfs1509), .Cin(wmfc1409));
    MFA     mfa1510(.Sum(wmfs1510), .Cout(wmfc1510), .A(A[15]), .B(B[10]), .Sin(wmfs1609), .Cin(wmfc1509));

    MFA     mfa1610(.Sum(wmfs1610), .Cout(wmfc1610), .A(A[15]), .B(B[10]), .Sin(wmfs1709), .Cin(wmfc1609));
    MFA     mfa1710(.Sum(wmfs1710), .Cout(wmfc1710), .A(A[15]), .B(B[10]), .Sin(wmfs1809), .Cin(wmfc1709));
    MFA     mfa1810(.Sum(wmfs1810), .Cout(wmfc1810), .A(A[15]), .B(B[10]), .Sin(wmfs1909), .Cin(wmfc1809));
    MFA     mfa1910(.Sum(wmfs1910), .Cout(wmfc1910), .A(A[15]), .B(B[10]), .Sin(wmfs2009), .Cin(wmfc1909));
    MFA     mfa2010(.Sum(wmfs2010), .Cout(wmfc2010), .A(A[15]), .B(B[10]), .Sin(wmfs2109), .Cin(wmfc2009));

//Row b11
    MFA 	  mfa011(.Sum(product_comb[11]), .Cout(wmfc011), .A(A[0]), .B(B[11]), .Sin(wmfs110), .Cin(wmfc010));
	MFA 	  mfa111(.Sum(wmfs111), .Cout(wmfc111), .A(A[1]), .B(B[11]), .Sin(wmfs210), .Cin(wmfc110));
	MFA 	  mfa211(.Sum(wmfs211), .Cout(wmfc211), .A(A[2]), .B(B[11]), .Sin(wmfs310), .Cin(wmfc210));
    MFA 	  mfa311(.Sum(wmfs311), .Cout(wmfc311), .A(A[3]), .B(B[11]), .Sin(wmfs410), .Cin(wmfc310));
	MFA 	  mfa411(.Sum(wmfs411), .Cout(wmfc411), .A(A[4]), .B(B[11]), .Sin(wmfs510), .Cin(wmfc410));
    MFA 	  mfa511(.Sum(wmfs511), .Cout(wmfc511), .A(A[5]), .B(B[11]), .Sin(wmfs610), .Cin(wmfc510));
    MFA 	  mfa611(.Sum(wmfs611), .Cout(wmfc611), .A(A[6]), .B(B[11]), .Sin(wmfs710), .Cin(wmfc610));
    MFA 	  mfa711(.Sum(wmfs711), .Cout(wmfc711), .A(A[7]), .B(B[11]), .Sin(wmfs810), .Cin(wmfc710));
    MFA 	  mfa811(.Sum(wmfs811), .Cout(wmfc811), .A(A[8]), .B(B[11]), .Sin(wmfs910), .Cin(wmfc810));
    MFA 	  mfa911(.Sum(wmfs911), .Cout(wmfc911), .A(A[9]), .B(B[11]), .Sin(wmfs1010), .Cin(wmfc910));
    MFA 	  mfa1011(.Sum(wmfs1011), .Cout(wmfc1011), .A(A[10]), .B(B[11]), .Sin(wmfs1110), .Cin(wmfc1010));
    MFA 	  mfa1111(.Sum(wmfs1111), .Cout(wmfc1111), .A(A[11]), .B(B[11]), .Sin(wmfs1210), .Cin(wmfc1110));
    MFA 	  mfa1211(.Sum(wmfs1211), .Cout(wmfc1211), .A(A[12]), .B(B[11]), .Sin(wmfs1310), .Cin(wmfc1210));
    MFA 	  mfa1311(.Sum(wmfs1311), .Cout(wmfc1311), .A(A[13]), .B(B[11]), .Sin(wmfs1410), .Cin(wmfc1310));
    MFA 	  mfa1411(.Sum(wmfs1411), .Cout(wmfc1411), .A(A[14]), .B(B[11]), .Sin(wmfs1510), .Cin(wmfc1410));
    MFA 	  mfa1511(.Sum(wmfs1511), .Cout(wmfc1511), .A(A[15]), .B(B[11]), .Sin(wmfs1610), .Cin(wmfc1510));

    MFA 	  mfa1611(.Sum(wmfs1611), .Cout(wmfc1611), .A(A[15]), .B(B[11]), .Sin(wmfs1710), .Cin(wmfc1610));
    MFA 	  mfa1711(.Sum(wmfs1711), .Cout(wmfc1711), .A(A[15]), .B(B[11]), .Sin(wmfs1810), .Cin(wmfc1710));
    MFA 	  mfa1811(.Sum(wmfs1811), .Cout(wmfc1811), .A(A[15]), .B(B[11]), .Sin(wmfs1910), .Cin(wmfc1810));
    MFA 	  mfa1911(.Sum(wmfs1911), .Cout(wmfc1911), .A(A[15]), .B(B[11]), .Sin(wmfs2010), .Cin(wmfc1910));

//Row b12
    MFA 	  mfa012(.Sum(product_comb[12]), .Cout(wmfc012), .A(A[0]), .B(B[12]), .Sin(wmfs111), .Cin(wmfc011));
	MFA 	  mfa112(.Sum(wmfs112), .Cout(wmfc112), .A(A[1]), .B(B[12]), .Sin(wmfs211), .Cin(wmfc111));
	MFA 	  mfa212(.Sum(wmfs212), .Cout(wmfc212), .A(A[2]), .B(B[12]), .Sin(wmfs311), .Cin(wmfc211));
    MFA 	  mfa312(.Sum(wmfs312), .Cout(wmfc312), .A(A[3]), .B(B[12]), .Sin(wmfs411), .Cin(wmfc311));
	MFA 	  mfa412(.Sum(wmfs412), .Cout(wmfc412), .A(A[4]), .B(B[12]), .Sin(wmfs511), .Cin(wmfc411));
    MFA 	  mfa512(.Sum(wmfs512), .Cout(wmfc512), .A(A[5]), .B(B[12]), .Sin(wmfs611), .Cin(wmfc511));
    MFA 	  mfa612(.Sum(wmfs612), .Cout(wmfc612), .A(A[6]), .B(B[12]), .Sin(wmfs711), .Cin(wmfc611));
    MFA 	  mfa712(.Sum(wmfs712), .Cout(wmfc712), .A(A[7]), .B(B[12]), .Sin(wmfs811), .Cin(wmfc711));
    MFA 	  mfa812(.Sum(wmfs812), .Cout(wmfc812), .A(A[8]), .B(B[12]), .Sin(wmfs911), .Cin(wmfc811));
    MFA 	  mfa912(.Sum(wmfs912), .Cout(wmfc912), .A(A[9]), .B(B[12]), .Sin(wmfs1011), .Cin(wmfc911));
    MFA 	  mfa1012(.Sum(wmfs1012), .Cout(wmfc1012), .A(A[10]), .B(B[12]), .Sin(wmfs1111), .Cin(wmfc1011));
    MFA 	  mfa1112(.Sum(wmfs1112), .Cout(wmfc1112), .A(A[11]), .B(B[12]), .Sin(wmfs1211), .Cin(wmfc1111));
    MFA 	  mfa1212(.Sum(wmfs1212), .Cout(wmfc1212), .A(A[12]), .B(B[12]), .Sin(wmfs1311), .Cin(wmfc1211));
    MFA 	  mfa1312(.Sum(wmfs1312), .Cout(wmfc1312), .A(A[13]), .B(B[12]), .Sin(wmfs1411), .Cin(wmfc1311));
    MFA 	  mfa1412(.Sum(wmfs1412), .Cout(wmfc1412), .A(A[14]), .B(B[12]), .Sin(wmfs1511), .Cin(wmfc1411));
    MFA 	  mfa1512(.Sum(wmfs1512), .Cout(wmfc1512), .A(A[15]), .B(B[12]), .Sin(wmfs1611), .Cin(wmfc1511));

    MFA 	  mfa1612(.Sum(wmfs1612), .Cout(wmfc1612), .A(A[15]), .B(B[12]), .Sin(wmfs1711), .Cin(wmfc1611));
    MFA 	  mfa1712(.Sum(wmfs1712), .Cout(wmfc1712), .A(A[15]), .B(B[12]), .Sin(wmfs1811), .Cin(wmfc1711));
    MFA 	  mfa1812(.Sum(wmfs1812), .Cout(wmfc1812), .A(A[15]), .B(B[12]), .Sin(wmfs1911), .Cin(wmfc1811));

//Row b13
    MFA 	  mfa013(.Sum(product_comb[13]), .Cout(wmfc013), .A(A[0]), .B(B[13]), .Sin(wmfs112), .Cin(wmfc012));
	MFA 	  mfa113(.Sum(wmfs113), .Cout(wmfc113), .A(A[1]), .B(B[13]), .Sin(wmfs212), .Cin(wmfc112));
	MFA 	  mfa213(.Sum(wmfs213), .Cout(wmfc213), .A(A[2]), .B(B[13]), .Sin(wmfs312), .Cin(wmfc212));
    MFA 	  mfa313(.Sum(wmfs313), .Cout(wmfc313), .A(A[3]), .B(B[13]), .Sin(wmfs412), .Cin(wmfc312));
	MFA 	  mfa413(.Sum(wmfs413), .Cout(wmfc413), .A(A[4]), .B(B[13]), .Sin(wmfs512), .Cin(wmfc412));
    MFA 	  mfa513(.Sum(wmfs513), .Cout(wmfc513), .A(A[5]), .B(B[13]), .Sin(wmfs612), .Cin(wmfc512));
    MFA 	  mfa613(.Sum(wmfs613), .Cout(wmfc613), .A(A[6]), .B(B[13]), .Sin(wmfs712), .Cin(wmfc612));
    MFA 	  mfa713(.Sum(wmfs713), .Cout(wmfc713), .A(A[7]), .B(B[13]), .Sin(wmfs812), .Cin(wmfc712));
    MFA 	  mfa813(.Sum(wmfs813), .Cout(wmfc813), .A(A[8]), .B(B[13]), .Sin(wmfs912), .Cin(wmfc812));
    MFA 	  mfa913(.Sum(wmfs913), .Cout(wmfc913), .A(A[9]), .B(B[13]), .Sin(wmfs1012), .Cin(wmfc912));
    MFA 	  mfa1013(.Sum(wmfs1013), .Cout(wmfc1013), .A(A[10]), .B(B[13]), .Sin(wmfs1112), .Cin(wmfc1012));
    MFA 	  mfa1113(.Sum(wmfs1113), .Cout(wmfc1113), .A(A[11]), .B(B[13]), .Sin(wmfs1212), .Cin(wmfc1112));
    MFA 	  mfa1213(.Sum(wmfs1213), .Cout(wmfc1213), .A(A[12]), .B(B[13]), .Sin(wmfs1312), .Cin(wmfc1212));
    MFA 	  mfa1313(.Sum(wmfs1313), .Cout(wmfc1313), .A(A[13]), .B(B[13]), .Sin(wmfs1412), .Cin(wmfc1312));
    MFA 	  mfa1413(.Sum(wmfs1413), .Cout(wmfc1413), .A(A[14]), .B(B[13]), .Sin(wmfs1512), .Cin(wmfc1412));
    MFA 	  mfa1513(.Sum(wmfs1513), .Cout(wmfc1513), .A(A[15]), .B(B[13]), .Sin(wmfs1612), .Cin(wmfc1512));

    MFA 	  mfa1613(.Sum(wmfs1613), .Cout(wmfc1613), .A(A[15]), .B(B[13]), .Sin(wmfs1712), .Cin(wmfc1612));
    MFA 	  mfa1713(.Sum(wmfs1713), .Cout(wmfc1713), .A(A[15]), .B(B[13]), .Sin(wmfs1812), .Cin(wmfc1712));

//Row b14
    MFA 	  mfa014(.Sum(product_comb[14]), .Cout(wmfc014), .A(A[0]), .B(B[14]), .Sin(wmfs113), .Cin(wmfc013));
	MFA 	  mfa114(.Sum(wmfs114), .Cout(wmfc114), .A(A[1]), .B(B[14]), .Sin(wmfs213), .Cin(wmfc113));
	MFA 	  mfa214(.Sum(wmfs214), .Cout(wmfc214), .A(A[2]), .B(B[14]), .Sin(wmfs313), .Cin(wmfc213));
    MFA 	  mfa314(.Sum(wmfs314), .Cout(wmfc314), .A(A[3]), .B(B[14]), .Sin(wmfs413), .Cin(wmfc313));
	MFA 	  mfa414(.Sum(wmfs414), .Cout(wmfc414), .A(A[4]), .B(B[14]), .Sin(wmfs513), .Cin(wmfc413));
    MFA 	  mfa514(.Sum(wmfs514), .Cout(wmfc514), .A(A[5]), .B(B[14]), .Sin(wmfs613), .Cin(wmfc513));
    MFA 	  mfa614(.Sum(wmfs614), .Cout(wmfc614), .A(A[6]), .B(B[14]), .Sin(wmfs713), .Cin(wmfc613));
    MFA 	  mfa714(.Sum(wmfs714), .Cout(wmfc714), .A(A[7]), .B(B[14]), .Sin(wmfs813), .Cin(wmfc713));
    MFA 	  mfa814(.Sum(wmfs814), .Cout(wmfc814), .A(A[8]), .B(B[14]), .Sin(wmfs913), .Cin(wmfc813));
    MFA 	  mfa914(.Sum(wmfs914), .Cout(wmfc914), .A(A[9]), .B(B[14]), .Sin(wmfs1013), .Cin(wmfc913));
    MFA 	  mfa1014(.Sum(wmfs1014), .Cout(wmfc1014), .A(A[10]), .B(B[14]), .Sin(wmfs1113), .Cin(wmfc1013));
    MFA 	  mfa1114(.Sum(wmfs1114), .Cout(wmfc1114), .A(A[11]), .B(B[14]), .Sin(wmfs1213), .Cin(wmfc1113));
    MFA 	  mfa1214(.Sum(wmfs1214), .Cout(wmfc1214), .A(A[12]), .B(B[14]), .Sin(wmfs1313), .Cin(wmfc1213));
    MFA 	  mfa1314(.Sum(wmfs1314), .Cout(wmfc1314), .A(A[13]), .B(B[14]), .Sin(wmfs1413), .Cin(wmfc1313));
    MFA 	  mfa1414(.Sum(wmfs1414), .Cout(wmfc1414), .A(A[14]), .B(B[14]), .Sin(wmfs1513), .Cin(wmfc1413));
    MFA 	  mfa1514(.Sum(wmfs1514), .Cout(wmfc1514), .A(A[15]), .B(B[14]), .Sin(wmfs1613), .Cin(wmfc1513));

    MFA 	  mfa1614(.Sum(wmfs1614), .Cout(wmfc1614), .A(A[15]), .B(B[14]), .Sin(wmfs1713), .Cin(wmfc1613));;

//Row b15
    MFA 	  mfa015(.Sum(product_comb[15]), .Cout(wmfc015), .A(A_c[0]), .B(B[15]), .Sin(wmfs114), .Cin(wmfc014));
	MFA 	  mfa115(.Sum(wmfs115), .Cout(wmfc115), .A(A_c[1]), .B(B[15]), .Sin(wmfs214), .Cin(wmfc114));
	MFA 	  mfa215(.Sum(wmfs215), .Cout(wmfc215), .A(A_c[2]), .B(B[15]), .Sin(wmfs314), .Cin(wmfc214));
    MFA 	  mfa315(.Sum(wmfs315), .Cout(wmfc315), .A(A_c[3]), .B(B[15]), .Sin(wmfs414), .Cin(wmfc314));
	MFA 	  mfa415(.Sum(wmfs415), .Cout(wmfc415), .A(A_c[4]), .B(B[15]), .Sin(wmfs514), .Cin(wmfc414));
    MFA 	  mfa515(.Sum(wmfs515), .Cout(wmfc515), .A(A_c[5]), .B(B[15]), .Sin(wmfs614), .Cin(wmfc514));
    MFA 	  mfa615(.Sum(wmfs615), .Cout(wmfc615), .A(A_c[6]), .B(B[15]), .Sin(wmfs714), .Cin(wmfc614));
    MFA 	  mfa715(.Sum(wmfs715), .Cout(wmfc715), .A(A_c[7]), .B(B[15]), .Sin(wmfs814), .Cin(wmfc714));
    MFA 	  mfa815(.Sum(wmfs815), .Cout(wmfc815), .A(A_c[8]), .B(B[15]), .Sin(wmfs914), .Cin(wmfc814));
    MFA 	  mfa915(.Sum(wmfs915), .Cout(wmfc915), .A(A_c[9]), .B(B[15]), .Sin(wmfs1014), .Cin(wmfc914));
    MFA 	  mfa1015(.Sum(wmfs1015), .Cout(wmfc1015), .A(A_c[10]), .B(B[15]), .Sin(wmfs1114), .Cin(wmfc1014));
    MFA 	  mfa1115(.Sum(wmfs1115), .Cout(wmfc1115), .A(A_c[11]), .B(B[15]), .Sin(wmfs1214), .Cin(wmfc1114));
    MFA 	  mfa1215(.Sum(wmfs1215), .Cout(wmfc1215), .A(A_c[12]), .B(B[15]), .Sin(wmfs1314), .Cin(wmfc1214));
    MFA 	  mfa1315(.Sum(wmfs1315), .Cout(wmfc1315), .A(A_c[13]), .B(B[15]), .Sin(wmfs1414), .Cin(wmfc1314));
    MFA 	  mfa1415(.Sum(wmfs1415), .Cout(wmfc1415), .A(A_c[14]), .B(B[15]), .Sin(wmfs1514), .Cin(wmfc1414));
    MFA 	  mfa1515(.Sum(wmfs1515), .Cout(wmfc1515), .A(A_c[15]), .B(B[15]), .Sin(wmfs1614), .Cin(wmfc1514));

//Row b16
    FA 	  fa016(.Sum(product_comb[16]), .Cout(wfac016), .A(wmfc015), .B(wmfs115), .Cin(1'b0));
    FA 	  fa116(.Sum(product_comb[17]), .Cout(wfac116), .A(wmfc115), .B(wmfs215), .Cin(wfac016));
    FA 	  fa216(.Sum(product_comb[18]), .Cout(wfac216), .A(wmfc215), .B(wmfs315), .Cin(wfac116));
    FA 	  fa316(.Sum(product_comb[19]), .Cout(wfac316), .A(wmfc315), .B(wmfs415), .Cin(wfac216));
    FA 	  fa416(.Sum(product_comb[20]), .Cout(wfac416), .A(wmfc415), .B(wmfs515), .Cin(wfac316));
    FA 	  fa516(.Sum(product_comb[21]), .Cout(wfac516), .A(wmfc515), .B(wmfs615), .Cin(wfac416));
    FA 	  fa616(.Sum(product_comb[22]), .Cout(wfac616), .A(wmfc615), .B(wmfs715), .Cin(wfac516));
    FA 	  fa716(.Sum(product_comb[23]), .Cout(wfac716), .A(wmfc715), .B(wmfs815), .Cin(wfac616));
    FA 	  fa816(.Sum(product_comb[24]), .Cout(wfac816), .A(wmfc815), .B(wmfs915), .Cin(wfac716));
    FA 	  fa916(.Sum(product_comb[25]), .Cout(wfac916), .A(wmfc915), .B(wmfs1015), .Cin(wfac816));
    FA 	  fa1016(.Sum(product_comb[26]), .Cout(wfac1016), .A(wmfc1015), .B(wmfs1115), .Cin(wfac916));
    FA 	  fa1116(.Sum(product_comb[27]), .Cout(wfac1116), .A(wmfc1115), .B(wmfs1215), .Cin(wfac1016));
    FA 	  fa1216(.Sum(product_comb[28]), .Cout(wfac1216), .A(wmfc1215), .B(wmfs1315), .Cin(wfac1116));
    FA 	  fa1316(.Sum(product_comb[29]), .Cout(wfac1316), .A(wmfc1315), .B(wmfs1415), .Cin(wfac1216));
    FA 	  fa1416(.Sum(product_comb[30]), .Cout(wfac1416), .A(wmfc1415), .B(wmfs1515), .Cin(wfac1316));

    always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
         P <= 31'd0;
      else if (en)
         P <= product_comb;
      else 
         P <= P;
   end

endmodule


