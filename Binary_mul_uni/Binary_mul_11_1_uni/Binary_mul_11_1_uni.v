module Binary_mul_11_1_uni (P, A, B, clk, rst_n, en);

   input unsigned [10:0] A; // 被乘数
   input unsigned [10:0] B; // 乘数    
   input clk, rst_n, en;         

   output reg unsigned [21:0] P; // 积
   // wire unsigned [21:0] product_comb;

//row b0
   wire  wa10,wa20,wa30,wa40,wa50,wa60,wa70,wa80,wa90,wa100,wa110,wa120,wa130,wa140,wa150,wa160,wa170,wa180,wa190,wa200,wa210,product_comb_0;
   reg    wa10_p1,wa20_p1,wa30_p1,wa40_p1,wa50_p1,wa60_p1,wa70_p1,wa80_p1,wa90_p1,wa100_p1,wa110_p1,wa120_p1,wa130_p1,wa140_p1,wa150_p1,wa160_p1,wa170_p1,wa180_p1,wa190_p1,wa200_p1,wa210_p1;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31,wmhc41,wmhc51,wmhc61,wmhc71,wmhc81,wmhc91,wmhc101,wmhc111,wmhc121,wmhc131,wmhc141,wmhc151,wmhc161,wmhc171,wmhc181,wmhc191,wmhc201;
   wire  wmhs11,wmhs21,wmhs31,wmhs41,wmhs51,wmhs61,wmhs71,wmhs81,wmhs91,wmhs101,wmhs111,wmhs121,wmhs131,wmhs141,wmhs151,wmhs161,wmhs171,wmhs181,wmhs191,wmhs201,product_comb_1;
   reg   wmhs11_p2,wmhs21_p2,wmhs31_p2,wmhs41_p2,wmhs51_p2,wmhs61_p2,wmhs71_p2,wmhs81_p2,wmhs91_p2,wmhs101_p2,wmhs111_p2,wmhs121_p2,wmhs131_p2,wmhs141_p2,wmhs151_p2,wmhs161_p2,wmhs171_p2,wmhs181_p2,wmhs191_p2,wmhs201_p2;
    reg   wmhc01_p2,wmhc11_p2,wmhc21_p2,wmhc31_p2,wmhc41_p2,wmhc51_p2,wmhc61_p2,wmhc71_p2,wmhc81_p2,wmhc91_p2,wmhc101_p2,wmhc111_p2,wmhc121_p2,wmhc131_p2,wmhc141_p2,wmhc151_p2,wmhc161_p2,wmhc171_p2,wmhc181_p2,wmhc191_p2,wmhc201_p2;

//row b2
   wire	 wmfc02,wmfc12,wmfc22,wmfc32,wmfc42,wmfc52,wmfc62,wmfc72,wmfc82,wmfc92,wmfc102,wmfc112,wmfc122,wmfc132,wmfc142,wmfc152,wmfc162,wmfc172,wmfc182,wmfc192;
   wire	 wmfs12,wmfs22,wmfs32,wmfs42,wmfs52,wmfs62,wmfs72,wmfs82,wmfs92,wmfs102,wmfs112,wmfs122,wmfs132,wmfs142,wmfs152,wmfs162,wmfs172,wmfs182,wmfs192,product_comb_2;
   reg   wmfs12_p3,wmfs22_p3,wmfs32_p3,wmfs42_p3,wmfs52_p3,wmfs62_p3,wmfs72_p3,wmfs82_p3,wmfs92_p3,wmfs102_p3,wmfs112_p3,wmfs122_p3,wmfs132_p3,wmfs142_p3,wmfs152_p3,wmfs162_p3,wmfs172_p3,wmfs182_p3,wmfs192_p3;
    reg   wmfc02_p3,wmfc12_p3,wmfc22_p3,wmfc32_p3,wmfc42_p3,wmfc52_p3,wmfc62_p3,wmfc72_p3,wmfc82_p3,wmfc92_p3,wmfc102_p3,wmfc112_p3,wmfc122_p3,wmfc132_p3,wmfc142_p3,wmfc152_p3,wmfc162_p3,wmfc172_p3,wmfc182_p3,wmfc192_p3;

//row b3
   wire	 wmfc03,wmfc13,wmfc23,wmfc33,wmfc43,wmfc53,wmfc63,wmfc73,wmfc83,wmfc93,wmfc103,wmfc113,wmfc123,wmfc133,wmfc143,wmfc153,wmfc163,wmfc173,wmfc183;
   wire	 wmfs13,wmfs23,wmfs33,wmfs43,wmfs53,wmfs63,wmfs73,wmfs83,wmfs93,wmfs103,wmfs113,wmfs123,wmfs133,wmfs143,wmfs153,wmfs163,wmfs173,wmfs183,product_comb_3;
   reg   wmfs13_p4,wmfs23_p4,wmfs33_p4,wmfs43_p4,wmfs53_p4,wmfs63_p4,wmfs73_p4,wmfs83_p4,wmfs93_p4,wmfs103_p4,wmfs113_p4,wmfs123_p4,wmfs133_p4,wmfs143_p4,wmfs153_p4,wmfs163_p4,wmfs173_p4,wmfs183_p4;
    reg   wmfc03_p4,wmfc13_p4,wmfc23_p4,wmfc33_p4,wmfc43_p4,wmfc53_p4,wmfc63_p4,wmfc73_p4,wmfc83_p4,wmfc93_p4,wmfc103_p4,wmfc113_p4,wmfc123_p4,wmfc133_p4,wmfc143_p4,wmfc153_p4,wmfc163_p4,wmfc173_p4,wmfc183_p4;

//row b4
   wire	wmfc04,wmfc14,wmfc24,wmfc34,wmfc44,wmfc54,wmfc64,wmfc74,wmfc84,wmfc94,wmfc104,wmfc114,wmfc124,wmfc134,wmfc144,wmfc154,wmfc164,wmfc174;
   wire  wmfs14,wmfs24,wmfs34,wmfs44,wmfs54,wmfs64,wmfs74,wmfs84,wmfs94,wmfs104,wmfs114,wmfs124,wmfs134,wmfs144,wmfs154,wmfs164,wmfs174,product_comb_4;
   reg   wmfs14_p5,wmfs24_p5,wmfs34_p5,wmfs44_p5,wmfs54_p5,wmfs64_p5,wmfs74_p5,wmfs84_p5,wmfs94_p5,wmfs104_p5,wmfs114_p5,wmfs124_p5,wmfs134_p5,wmfs144_p5,wmfs154_p5,wmfs164_p5,wmfs174_p5;
    reg   wmfc04_p5,wmfc14_p5,wmfc24_p5,wmfc34_p5,wmfc44_p5,wmfc54_p5,wmfc64_p5,wmfc74_p5,wmfc84_p5,wmfc94_p5,wmfc104_p5,wmfc114_p5,wmfc124_p5,wmfc134_p5,wmfc144_p5,wmfc154_p5,wmfc164_p5,wmfc174_p5;

//row b5
   wire  wmfc05,wmfc15,wmfc25,wmfc35,wmfc45,wmfc55,wmfc65,wmfc75,wmfc85,wmfc95,wmfc105,wmfc115,wmfc125,wmfc135,wmfc145,wmfc155,wmfc165;
   wire  wmfs15,wmfs25,wmfs35,wmfs45,wmfs55,wmfs65,wmfs75,wmfs85,wmfs95,wmfs105,wmfs115,wmfs125,wmfs135,wmfs145,wmfs155,wmfs165,product_comb_6;
   reg   wmfs15_p6,wmfs25_p6,wmfs35_p6,wmfs45_p6,wmfs55_p6,wmfs65_p6,wmfs75_p6,wmfs85_p6,wmfs95_p6,wmfs105_p6,wmfs115_p6,wmfs125_p6,wmfs135_p6,wmfs145_p6,wmfs155_p6,wmfs165_p6;
    reg   wmfc05_p6,wmfc15_p6,wmfc25_p6,wmfc35_p6,wmfc45_p6,wmfc55_p6,wmfc65_p6,wmfc75_p6,wmfc85_p6,wmfc95_p6,wmfc105_p6,wmfc115_p6,wmfc125_p6,wmfc135_p6,wmfc145_p6,wmfc155_p6,wmfc165_p6; 

//row b6
   wire  wmfc06,wmfc16,wmfc26,wmfc36,wmfc46,wmfc56,wmfc66,wmfc76,wmfc86,wmfc96,wmfc106,wmfc116,wmfc126,wmfc136,wmfc146,wmfc156;
   wire  wmfs16,wmfs26,wmfs36,wmfs46,wmfs56,wmfs66,wmfs76,wmfs86,wmfs96,wmfs106,wmfs116,wmfs126,wmfs136,wmfs146,wmfs156,product_comb_7;
   reg   wmfs16_p7,wmfs26_p7,wmfs36_p7,wmfs46_p7,wmfs56_p7,wmfs66_p7,wmfs76_p7,wmfs86_p7,wmfs96_p7,wmfs106_p7,wmfs116_p7,wmfs126_p7,wmfs136_p7,wmfs146_p7,wmfs156_p7;
    reg   wmfc06_p7,wmfc16_p7,wmfc26_p7,wmfc36_p7,wmfc46_p7,wmfc56_p7,wmfc66_p7,wmfc76_p7,wmfc86_p7,wmfc96_p7,wmfc106_p7,wmfc116_p7,wmfc126_p7,wmfc136_p7,wmfc146_p7,wmfc156_p7;

//row b7
   wire  wmfc07,wmfc17,wmfc27,wmfc37,wmfc47,wmfc57,wmfc67,wmfc77,wmfc87,wmfc97,wmfc107,wmfc117,wmfc127,wmfc137,wmfc147;
   wire  wmfs17,wmfs27,wmfs37,wmfs47,wmfs57,wmfs67,wmfs77,wmfs87,wmfs97,wmfs107,wmfs117,wmfs127,wmfs137,wmfs147,product_comb_8;
   reg   wmfs17_p8,wmfs27_p8,wmfs37_p8,wmfs47_p8,wmfs57_p8,wmfs67_p8,wmfs77_p8,wmfs87_p8,wmfs97_p8,wmfs107_p8,wmfs117_p8,wmfs127_p8,wmfs137_p8,wmfs147_p8;
    reg   wmfc07_p8,wmfc17_p8,wmfc27_p8,wmfc37_p8,wmfc47_p8,wmfc57_p8,wmfc67_p8,wmfc77_p8,wmfc87_p8,wmfc97_p8,wmfc107_p8,wmfc117_p8,wmfc127_p8,wmfc137_p8,wmfc147_p8;

//row b8
   wire  wmfc08,wmfc18,wmfc28,wmfc38,wmfc48,wmfc58,wmfc68,wmfc78,wmfc88,wmfc98,wmfc108,wmfc118,wmfc128,wmfc138;
   wire  wmfs18,wmfs28,wmfs38,wmfs48,wmfs58,wmfs68,wmfs78,wmfs88,wmfs98,wmfs108,wmfs118,wmfs128,wmfs138,product_comb_9;
   reg   wmfs18_p9,wmfs28_p9,wmfs38_p9,wmfs48_p9,wmfs58_p9,wmfs68_p9,wmfs78_p9,wmfs88_p9,wmfs98_p9,wmfs108_p9,wmfs118_p9,wmfs128_p9,wmfs138_p9;
    reg   wmfc08_p9,wmfc18_p9,wmfc28_p9,wmfc38_p9,wmfc48_p9,wmfc58_p9,wmfc68_p9,wmfc78_p9,wmfc88_p9,wmfc98_p9,wmfc108_p9,wmfc118_p9,wmfc128_p9,wmfc138_p9;

//row b9
   wire  wmfc09,wmfc19,wmfc29,wmfc39,wmfc49,wmfc59,wmfc69,wmfc79,wmfc89,wmfc99,wmfc109,wmfc119,wmfc129;
   wire  wmfs19,wmfs29,wmfs39,wmfs49,wmfs59,wmfs69,wmfs79,wmfs89,wmfs99,wmfs109,wmfs119,wmfs129,product_comb_10;
   reg   wmfs19_p10,wmfs29_p10,wmfs39_p10,wmfs49_p10,wmfs59_p10,wmfs69_p10,wmfs79_p10,wmfs89_p10,wmfs99_p10,wmfs109_p10,wmfs119_p10,wmfs129_p10;
    reg   wmfc09_p10,wmfc19_p10,wmfc29_p10,wmfc39_p10,wmfc49_p10,wmfc59_p10,wmfc69_p10,wmfc79_p10,wmfc89_p10,wmfc99_p10,wmfc109_p10,wmfc119_p10,wmfc129_p10;

//row b10
   wire  wmfc010,wmfc110,wmfc210,wmfc310,wmfc410,wmfc510,wmfc610,wmfc710,wmfc810,wmfc910,wmfc1010,wmfc1110;
   wire  wmfs110,wmfs210,wmfs310,wmfs410,wmfs510,wmfs610,wmfs710,wmfs810,wmfs910,wmfs1010,wmfs1110,product_comb_11;
   reg   wmfs110_p11,wmfs210_p11,wmfs310_p11,wmfs410_p11,wmfs510_p11,wmfs610_p11,wmfs710_p11,wmfs810_p11,wmfs910_p11,wmfs1010_p11,wmfs1110_p11;
    reg   wmfc010_p11,wmfc110_p11,wmfc210_p11,wmfc310_p11,wmfc410_p11,wmfc510_p11,wmfc610_p11,wmfc710_p11,wmfc810_p11,wmfc910_p11,wmfc1010_p11,wmfc1110_p11;

//row b11
   wire  wfac011,wfac111,wfac211,wfac311,wfac411,wfac511,wfac611,wfac711,wfac811,wfac911,wfac1011,product_comb_12,product_comb_13,product_comb_14,product_comb_15,product_comb_16,product_comb_17,product_comb_18,product_comb_19,product_comb_20,product_comb_21;

//Row bo Implementation
   and a00(product_comb_0, A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   and a30(wa30, A[3], B[0]);
   and a40(wa40, A[4], B[0]);
   and a50(wa50, A[5], B[0]);
   and a60(wa60, A[6], B[0]);
   and a70(wa70, A[7], B[0]);
   and a80(wa80, A[8], B[0]);
   and a90(wa90, A[9], B[0]);
   and a100(wa100, A[10], B[0]);

   assign wa110 = 0;
   assign wa120 = 0;
   assign wa130 = 0;
   assign wa140 = 0;
   assign wa150 = 0;
   assign wa160 = 0;
   assign wa170 = 0;
   assign wa180 = 0;
   assign wa190 = 0;
   assign wa200 = 0;
   assign wa210 = 0;

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
      end
   end


//Row b1
   MHA     mha01(.Sum(product_comb_1), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10_p1));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20_p1));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30_p1));
   MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[3]), .B(B[1]), .Sin(wa40_p1));
   MHA     mha41(.Sum(wmhs41), .Cout(wmhc41), .A(A[4]), .B(B[1]), .Sin(wa50_p1));
   MHA     mha51(.Sum(wmhs51), .Cout(wmhc51), .A(A[5]), .B(B[1]), .Sin(wa60_p1));
   MHA     mha61(.Sum(wmhs61), .Cout(wmhc61), .A(A[6]), .B(B[1]), .Sin(wa70_p1));
   MHA     mha71(.Sum(wmhs71), .Cout(wmhc71), .A(A[7]), .B(B[1]), .Sin(wa80_p1));
   MHA     mha81(.Sum(wmhs81), .Cout(wmhc81), .A(A[8]), .B(B[1]), .Sin(wa90_p1));
   MHA     mha91(.Sum(wmhs91), .Cout(wmhc91), .A(A[9]), .B(B[1]), .Sin(wa100_p1));
   MHA     mha101(.Sum(wmhs101), .Cout(wmhc101), .A(A[10]), .B(B[1]), .Sin(wa110_p1));

   MHA     mha111(.Sum(wmhs111), .Cout(wmhc111), .A(1'b0), .B(B[1]), .Sin(wa120_p1));
   MHA     mha121(.Sum(wmhs121), .Cout(wmhc121), .A(1'b0), .B(B[1]), .Sin(wa130_p1));
   MHA     mha131(.Sum(wmhs131), .Cout(wmhc131), .A(1'b0), .B(B[1]), .Sin(wa140_p1));
   MHA     mha141(.Sum(wmhs141), .Cout(wmhc141), .A(1'b0), .B(B[1]), .Sin(wa150_p1));
   MHA     mha151(.Sum(wmhs151), .Cout(wmhc151), .A(1'b0), .B(B[1]), .Sin(wa160_p1));
   MHA     mha161(.Sum(wmhs161), .Cout(wmhc161), .A(1'b0), .B(B[1]), .Sin(wa170_p1));
   MHA     mha171(.Sum(wmhs171), .Cout(wmhc171), .A(1'b0), .B(B[1]), .Sin(wa180_p1));
   MHA     mha181(.Sum(wmhs181), .Cout(wmhc181), .A(1'b0), .B(B[1]), .Sin(wa190_p1));
   MHA     mha191(.Sum(wmhs191), .Cout(wmhc191), .A(1'b0), .B(B[1]), .Sin(wa200_p1));
   MHA     mha201(.Sum(wmhs201), .Cout(wmhc201), .A(1'b0), .B(B[1]), .Sin(wa210_p1));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[1] <= 1'b0;
         wmhs11_p2 <= 1'b0;
         wmhs21_p2 <= 1'b0;
         wmhs31_p2 <= 1'b0;
         wmhs41_p2 <= 1'b0;
         wmhs51_p2 <= 1'b0;
         wmhs61_p2 <= 1'b0;
         wmhs71_p2 <= 1'b0;
         wmhs81_p2 <= 1'b0;
         wmhs91_p2 <= 1'b0;
         wmhs101_p2 <= 1'b0;
         wmhs111_p2 <= 1'b0;
         wmhs121_p2 <= 1'b0;
         wmhs131_p2 <= 1'b0;
         wmhs141_p2 <= 1'b0;
         wmhs151_p2 <= 1'b0;
         wmhs161_p2 <= 1'b0;
         wmhs171_p2 <= 1'b0;
         wmhs181_p2 <= 1'b0;
         wmhs191_p2 <= 1'b0;
         wmhs201_p2 <= 1'b0;
         wmhc01_p2 <= 1'b0;
         wmhc11_p2 <= 1'b0;
         wmhc21_p2 <= 1'b0;
         wmhc31_p2 <= 1'b0;
         wmhc41_p2 <= 1'b0;
         wmhc51_p2 <= 1'b0;
         wmhc61_p2 <= 1'b0;
         wmhc71_p2 <= 1'b0;
         wmhc81_p2 <= 1'b0;
         wmhc91_p2 <= 1'b0;
         wmhc101_p2 <= 1'b0;
         wmhc111_p2 <= 1'b0;
         wmhc121_p2 <= 1'b0;
         wmhc131_p2 <= 1'b0;
         wmhc141_p2 <= 1'b0;
         wmhc151_p2 <= 1'b0;
         wmhc161_p2 <= 1'b0;
         wmhc171_p2 <= 1'b0;
         wmhc181_p2 <= 1'b0;
         wmhc191_p2 <= 1'b0;
         wmhc201_p2 <= 1'b0;
      end else begin
         P[1] <= product_comb_1;
         wmhs11_p2 <= wmhs11;
         wmhs21_p2 <= wmhs21;
         wmhs31_p2 <= wmhs31;
         wmhs41_p2 <= wmhs41;
         wmhs51_p2 <= wmhs51;
         wmhs61_p2 <= wmhs61;
         wmhs71_p2 <= wmhs71;
         wmhs81_p2 <= wmhs81;
         wmhs91_p2 <= wmhs91;
         wmhs101_p2 <= wmhs101;
         wmhs111_p2 <= wmhs111;
         wmhs121_p2 <= wmhs121;
         wmhs131_p2 <= wmhs131;
         wmhs141_p2 <= wmhs141;
         wmhs151_p2 <= wmhs151;
         wmhs161_p2 <= wmhs161;
         wmhs171_p2 <= wmhs171;
         wmhs181_p2 <= wmhs181;
         wmhs191_p2 <= wmhs191;
         wmhs201_p2 <= wmhs201;
         wmhc01_p2 <= wmhc01;
         wmhc11_p2 <= wmhc11;
         wmhc21_p2 <= wmhc21;
         wmhc31_p2 <= wmhc31;
         wmhc41_p2 <= wmhc41;
         wmhc51_p2 <= wmhc51;
         wmhc61_p2 <= wmhc61;
         wmhc71_p2 <= wmhc71;
         wmhc81_p2 <= wmhc81;
         wmhc91_p2 <= wmhc91;
         wmhc101_p2 <= wmhc101;
         wmhc111_p2 <= wmhc111;
         wmhc121_p2 <= wmhc121;
         wmhc131_p2 <= wmhc131;
         wmhc141_p2 <= wmhc141;
         wmhc151_p2 <= wmhc151;
         wmhc161_p2 <= wmhc161;
         wmhc171_p2 <= wmhc171;
         wmhc181_p2 <= wmhc181;
         wmhc191_p2 <= wmhc191;
         wmhc201_p2 <= wmhc201;
      end
   end

//Row b2
   MFA 	  mfa02(.Sum(product_comb_2), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11_p2), .Cin(wmhc01_p2));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21_p2), .Cin(wmhc11_p2));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31_p2), .Cin(wmhc21_p2));
   MFA 	  mfa32(.Sum(wmfs32), .Cout(wmfc32), .A(A[3]), .B(B[2]), .Sin(wmhs41_p2), .Cin(wmhc31_p2));
   MFA 	  mfa42(.Sum(wmfs42), .Cout(wmfc42), .A(A[4]), .B(B[2]), .Sin(wmhs51_p2), .Cin(wmhc41_p2));
   MFA 	  mfa52(.Sum(wmfs52), .Cout(wmfc52), .A(A[5]), .B(B[2]), .Sin(wmhs61_p2), .Cin(wmhc51_p2)); 
   MFA 	  mfa62(.Sum(wmfs62), .Cout(wmfc62), .A(A[6]), .B(B[2]), .Sin(wmhs71_p2), .Cin(wmhc61_p2));
   MFA 	  mfa72(.Sum(wmfs72), .Cout(wmfc72), .A(A[7]), .B(B[2]), .Sin(wmhs81_p2), .Cin(wmhc71_p2));
   MFA 	  mfa82(.Sum(wmfs82), .Cout(wmfc82), .A(A[8]), .B(B[2]), .Sin(wmhs91_p2), .Cin(wmhc81_p2));
   MFA 	  mfa92(.Sum(wmfs92), .Cout(wmfc92), .A(A[9]), .B(B[2]), .Sin(wmhs101_p2), .Cin(wmhc91_p2));
   MFA 	  mfa102(.Sum(wmfs102), .Cout(wmfc102), .A(A[10]), .B(B[2]), .Sin(wmhs111_p2), .Cin(wmhc101_p2));

   MFA 	  mfa112(.Sum(wmfs112), .Cout(wmfc112), .A(1'b0), .B(B[2]), .Sin(wmhs121_p2), .Cin(wmhc111_p2));
   MFA 	  mfa122(.Sum(wmfs122), .Cout(wmfc122), .A(1'b0), .B(B[2]), .Sin(wmhs131_p2), .Cin(wmhc121_p2));
   MFA 	  mfa132(.Sum(wmfs132), .Cout(wmfc132), .A(1'b0), .B(B[2]), .Sin(wmhs141_p2), .Cin(wmhc131_p2));
   MFA 	  mfa142(.Sum(wmfs142), .Cout(wmfc142), .A(1'b0), .B(B[2]), .Sin(wmhs151_p2), .Cin(wmhc141_p2));
   MFA 	  mfa152(.Sum(wmfs152), .Cout(wmfc152), .A(1'b0), .B(B[2]), .Sin(wmhs161_p2), .Cin(wmhc151_p2));
   MFA 	  mfa162(.Sum(wmfs162), .Cout(wmfc162), .A(1'b0), .B(B[2]), .Sin(wmhs171_p2), .Cin(wmhc161_p2));
   MFA 	  mfa172(.Sum(wmfs172), .Cout(wmfc172), .A(1'b0), .B(B[2]), .Sin(wmhs181_p2), .Cin(wmhc171_p2));
   MFA 	  mfa182(.Sum(wmfs182), .Cout(wmfc182), .A(1'b0), .B(B[2]), .Sin(wmhs191_p2), .Cin(wmhc181_p2));
   MFA 	  mfa192(.Sum(wmfs192), .Cout(wmfc192), .A(1'b0), .B(B[2]), .Sin(wmhs201_p2), .Cin(wmhc191_p2));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[2] <= 1'b0;
         wmfs12_p3 <= 1'b0;
         wmfs22_p3 <= 1'b0;
         wmfs32_p3 <= 1'b0;
         wmfs42_p3 <= 1'b0;
         wmfs52_p3 <= 1'b0;
         wmfs62_p3 <= 1'b0;
         wmfs72_p3 <= 1'b0;
         wmfs82_p3 <= 1'b0;
         wmfs92_p3 <= 1'b0;
         wmfs102_p3 <= 1'b0;
         wmfs112_p3 <= 1'b0;
         wmfs122_p3 <= 1'b0;
         wmfs132_p3 <= 1'b0;
         wmfs142_p3 <= 1'b0;
         wmfs152_p3 <= 1'b0;
         wmfs162_p3 <= 1'b0;
         wmfs172_p3 <= 1'b0;
         wmfs182_p3 <= 1'b0;
         wmfs192_p3 <= 1'b0;
         wmfc02_p3 <= 1'b0;
         wmfc12_p3 <= 1'b0;
         wmfc22_p3 <= 1'b0;
         wmfc32_p3 <= 1'b0;
         wmfc42_p3 <= 1'b0;
         wmfc52_p3 <= 1'b0;
         wmfc62_p3 <= 1'b0;
         wmfc72_p3 <= 1'b0;
         wmfc82_p3 <= 1'b0;
         wmfc92_p3 <= 1'b0;
         wmfc102_p3 <= 1'b0;
         wmfc112_p3 <= 1'b0;
         wmfc122_p3 <= 1'b0;
         wmfc132_p3 <= 1'b0;
         wmfc142_p3 <= 1'b0;
         wmfc152_p3 <= 1'b0;
         wmfc162_p3 <= 1'b0;
         wmfc172_p3 <= 1'b0;
         wmfc182_p3 <= 1'b0;
         wmfc192_p3 <= 1'b0;
      end else begin
         P[2] <= product_comb_2;
         wmfs12_p3 <= wmfs12;
         wmfs22_p3 <= wmfs22;
         wmfs32_p3 <= wmfs32;
         wmfs42_p3 <= wmfs42;
         wmfs52_p3 <= wmfs52;
         wmfs62_p3 <= wmfs62;
         wmfs72_p3 <= wmfs72;
         wmfs82_p3 <= wmfs82;
         wmfs92_p3 <= wmfs92;
         wmfs102_p3 <= wmfs102;
         wmfs112_p3 <= wmfs112;
         wmfs122_p3 <= wmfs122;
         wmfs132_p3 <= wmfs132;
         wmfs142_p3 <= wmfs142;
         wmfs152_p3 <= wmfs152;
         wmfs162_p3 <= wmfs162;
         wmfs172_p3 <= wmfs172;
         wmfs182_p3 <= wmfs182;
         wmfs192_p3 <= wmfs192;
         wmfc02_p3 <= wmfc02;
         wmfc12_p3 <= wmfc12;
         wmfc22_p3 <= wmfc22;
         wmfc32_p3 <= wmfc32;
         wmfc42_p3 <= wmfc42;
         wmfc52_p3 <= wmfc52;
         wmfc62_p3 <= wmfc62;
         wmfc72_p3 <= wmfc72;
         wmfc82_p3 <= wmfc82;
         wmfc92_p3 <= wmfc92;
         wmfc102_p3 <= wmfc102;
         wmfc112_p3 <= wmfc112;
         wmfc122_p3 <= wmfc122;
         wmfc132_p3 <= wmfc132;
         wmfc142_p3 <= wmfc142;
         wmfc152_p3 <= wmfc152;
         wmfc162_p3 <= wmfc162;
         wmfc172_p3 <= wmfc172;
         wmfc182_p3 <= wmfc182;
         wmfc192_p3 <= wmfc192;
      end
   end

//Row b3
   MFA 	  mfa03(.Sum(product_comb_3), .Cout(wmfc03), .A(A[0]), .B(B[3]), .Sin(wmfs12_p3), .Cin(wmfc02_p3));
   MFA 	  mfa13(.Sum(wmfs13), .Cout(wmfc13), .A(A[1]), .B(B[3]), .Sin(wmfs22_p3), .Cin(wmfc12_p3));
   MFA 	  mfa23(.Sum(wmfs23), .Cout(wmfc23), .A(A[2]), .B(B[3]), .Sin(wmfs32_p3), .Cin(wmfc22_p3));
   MFA 	  mfa33(.Sum(wmfs33), .Cout(wmfc33), .A(A[3]), .B(B[3]), .Sin(wmfs42_p3), .Cin(wmfc32_p3));
   MFA 	  mfa43(.Sum(wmfs43), .Cout(wmfc43), .A(A[4]), .B(B[3]), .Sin(wmfs52_p3), .Cin(wmfc42_p3));
   MFA 	  mfa53(.Sum(wmfs53), .Cout(wmfc53), .A(A[5]), .B(B[3]), .Sin(wmfs62_p3), .Cin(wmfc52_p3));
   MFA 	  mfa63(.Sum(wmfs63), .Cout(wmfc63), .A(A[6]), .B(B[3]), .Sin(wmfs72_p3), .Cin(wmfc62_p3));
   MFA 	  mfa73(.Sum(wmfs73), .Cout(wmfc73), .A(A[7]), .B(B[3]), .Sin(wmfs82_p3), .Cin(wmfc72_p3));
   MFA 	  mfa83(.Sum(wmfs83), .Cout(wmfc83), .A(A[8]), .B(B[3]), .Sin(wmfs92_p3), .Cin(wmfc82_p3));
   MFA 	  mfa93(.Sum(wmfs93), .Cout(wmfc93), .A(A[9]), .B(B[3]), .Sin(wmfs102_p3), .Cin(wmfc92_p3));
   MFA 	  mfa103(.Sum(wmfs103), .Cout(wmfc103), .A(A[10]), .B(B[3]), .Sin(wmfs112_p3), .Cin(wmfc102_p3));

   MFA 	  mfa113(.Sum(wmfs113), .Cout(wmfc113), .A(1'b0), .B(B[3]), .Sin(wmfs122_p3), .Cin(wmfc112_p3));
   MFA 	  mfa123(.Sum(wmfs123), .Cout(wmfc123), .A(1'b0), .B(B[3]), .Sin(wmfs132_p3), .Cin(wmfc122_p3));
   MFA 	  mfa133(.Sum(wmfs133), .Cout(wmfc133), .A(1'b0), .B(B[3]), .Sin(wmfs142_p3), .Cin(wmfc132_p3));
   MFA 	  mfa143(.Sum(wmfs143), .Cout(wmfc143), .A(1'b0), .B(B[3]), .Sin(wmfs152_p3), .Cin(wmfc142_p3));
   MFA 	  mfa153(.Sum(wmfs153), .Cout(wmfc153), .A(1'b0), .B(B[3]), .Sin(wmfs162_p3), .Cin(wmfc152_p3));
   MFA 	  mfa163(.Sum(wmfs163), .Cout(wmfc163), .A(1'b0), .B(B[3]), .Sin(wmfs172_p3), .Cin(wmfc162_p3));
   MFA 	  mfa173(.Sum(wmfs173), .Cout(wmfc173), .A(1'b0), .B(B[3]), .Sin(wmfs182_p3), .Cin(wmfc172_p3));
   MFA 	  mfa183(.Sum(wmfs183), .Cout(wmfc183), .A(1'b0), .B(B[3]), .Sin(wmfs192_p3), .Cin(wmfc182_p3));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[3] <= 1'b0;
         wmfs13_p4 <= 1'b0;
         wmfs23_p4 <= 1'b0;
         wmfs33_p4 <= 1'b0;
         wmfs43_p4 <= 1'b0;
         wmfs53_p4 <= 1'b0;
         wmfs63_p4 <= 1'b0;
         wmfs73_p4 <= 1'b0;
         wmfs83_p4 <= 1'b0;
         wmfs93_p4 <= 1'b0;
         wmfs103_p4 <= 1'b0;
         wmfs113_p4 <= 1'b0;
         wmfs123_p4 <= 1'b0;
         wmfs133_p4 <= 1'b0;
         wmfs143_p4 <= 1'b0;
         wmfs153_p4 <= 1'b0;
         wmfs163_p4 <= 1'b0;
         wmfs173_p4 <= 1'b0;
         wmfs183_p4 <= 1'b0;
         wmfc03_p4 <= 1'b0;
         wmfc13_p4 <= 1'b0;
         wmfc23_p4 <= 1'b0;
         wmfc33_p4 <= 1'b0;
         wmfc43_p4 <= 1'b0;
         wmfc53_p4 <= 1'b0;
         wmfc63_p4 <= 1'b0;
         wmfc73_p4 <= 1'b0;
         wmfc83_p4 <= 1'b0;
         wmfc93_p4 <= 1'b0;
         wmfc103_p4 <= 1'b0;
         wmfc113_p4 <= 1'b0;
         wmfc123_p4 <= 1'b0;
         wmfc133_p4 <= 1'b0;
         wmfc143_p4 <= 1'b0;
         wmfc153_p4 <= 1'b0;
         wmfc163_p4 <= 1'b0;
         wmfc173_p4 <= 1'b0;
         wmfc183_p4 <= 1'b0;
      end else begin
         P[3] <= product_comb_3;
         wmfs13_p4 <= wmfs13;
         wmfs23_p4 <= wmfs23;
         wmfs33_p4 <= wmfs33;
         wmfs43_p4 <= wmfs43;
         wmfs53_p4 <= wmfs53;
         wmfs63_p4 <= wmfs63;
         wmfs73_p4 <= wmfs73;
         wmfs83_p4 <= wmfs83;
         wmfs93_p4 <= wmfs93;
         wmfs103_p4 <= wmfs103;
         wmfs113_p4 <= wmfs113;
         wmfs123_p4 <= wmfs123;
         wmfs133_p4 <= wmfs133;
         wmfs143_p4 <= wmfs143;
         wmfs153_p4 <= wmfs153;
         wmfs163_p4 <= wmfs163;
         wmfs173_p4 <= wmfs173;
         wmfs183_p4 <= wmfs183;
         wmfc03_p4 <= wmfc03;
         wmfc13_p4 <= wmfc13;
         wmfc23_p4 <= wmfc23;
         wmfc33_p4 <= wmfc33;
         wmfc43_p4 <= wmfc43;
         wmfc53_p4 <= wmfc53;
         wmfc63_p4 <= wmfc63;
         wmfc73_p4 <= wmfc73;
         wmfc83_p4 <= wmfc83;
         wmfc93_p4 <= wmfc93;
         wmfc103_p4 <= wmfc103;
         wmfc113_p4 <= wmfc113;
         wmfc123_p4 <= wmfc123;
         wmfc133_p4 <= wmfc133;
         wmfc143_p4 <= wmfc143;
         wmfc153_p4 <= wmfc153;
         wmfc163_p4 <= wmfc163;
         wmfc173_p4 <= wmfc173;
         wmfc183_p4 <= wmfc183;
      end
   end
   
//Row b4
   MFA 	  mfa04(.Sum(product_comb_4), .Cout(wmfc04), .A(A[0]), .B(B[4]), .Sin(wmfs13_p4), .Cin(wmfc03_p4));
   MFA 	  mfa14(.Sum(wmfs14), .Cout(wmfc14), .A(A[1]), .B(B[4]), .Sin(wmfs23_p4), .Cin(wmfc13_p4));
   MFA 	  mfa24(.Sum(wmfs24), .Cout(wmfc24), .A(A[2]), .B(B[4]), .Sin(wmfs33_p4), .Cin(wmfc23_p4));
   MFA 	  mfa34(.Sum(wmfs34), .Cout(wmfc34), .A(A[3]), .B(B[4]), .Sin(wmfs43_p4), .Cin(wmfc33_p4));
   MFA 	  mfa44(.Sum(wmfs44), .Cout(wmfc44), .A(A[4]), .B(B[4]), .Sin(wmfs53_p4), .Cin(wmfc43_p4));
   MFA     mfa54(.Sum(wmfs54), .Cout(wmfc54), .A(A[5]), .B(B[4]), .Sin(wmfs63_p4), .Cin(wmfc53_p4));
   MFA 	  mfa64(.Sum(wmfs64), .Cout(wmfc64), .A(A[6]), .B(B[4]), .Sin(wmfs73_p4), .Cin(wmfc63_p4));
   MFA     mfa74(.Sum(wmfs74), .Cout(wmfc74), .A(A[7]), .B(B[4]), .Sin(wmfs83_p4), .Cin(wmfc73_p4));
   MFA     mfa84(.Sum(wmfs84), .Cout(wmfc84), .A(A[8]), .B(B[4]), .Sin(wmfs93_p4), .Cin(wmfc83_p4));
   MFA     mfa94(.Sum(wmfs94), .Cout(wmfc94), .A(A[9]), .B(B[4]), .Sin(wmfs103_p4), .Cin(wmfc93_p4));
   MFA     mfa104(.Sum(wmfs104), .Cout(wmfc104), .A(A[10]), .B(B[4]), .Sin(wmfs113_p4), .Cin(wmfc103_p4));

   MFA     mfa114(.Sum(wmfs114), .Cout(wmfc114), .A(1'b0), .B(B[4]), .Sin(wmfs123_p4), .Cin(wmfc113_p4));
   MFA     mfa124(.Sum(wmfs124), .Cout(wmfc124), .A(1'b0), .B(B[4]), .Sin(wmfs133_p4), .Cin(wmfc123_p4));
   MFA     mfa134(.Sum(wmfs134), .Cout(wmfc134), .A(1'b0), .B(B[4]), .Sin(wmfs143_p4), .Cin(wmfc133_p4));
   MFA     mfa144(.Sum(wmfs144), .Cout(wmfc144), .A(1'b0), .B(B[4]), .Sin(wmfs153_p4), .Cin(wmfc143_p4));
   MFA     mfa154(.Sum(wmfs154), .Cout(wmfc154), .A(1'b0), .B(B[4]), .Sin(wmfs163_p4), .Cin(wmfc153_p4));
   MFA     mfa164(.Sum(wmfs164), .Cout(wmfc164), .A(1'b0), .B(B[4]), .Sin(wmfs173_p4), .Cin(wmfc163_p4));
   MFA     mfa174(.Sum(wmfs174), .Cout(wmfc174), .A(1'b0), .B(B[4]), .Sin(wmfs183_p4), .Cin(wmfc173_p4));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[4] <= 1'b0;
         wmfs14_p5 <= 1'b0;
         wmfs24_p5 <= 1'b0;
         wmfs34_p5 <= 1'b0;
         wmfs44_p5 <= 1'b0;
         wmfs54_p5 <= 1'b0;
         wmfs64_p5 <= 1'b0;
         wmfs74_p5 <= 1'b0;
         wmfs84_p5 <= 1'b0;
         wmfs94_p5 <= 1'b0;
         wmfs104_p5 <= 1'b0;
         wmfs114_p5 <= 1'b0;
         wmfs124_p5 <= 1'b0;
         wmfs134_p5 <= 1'b0;
         wmfs144_p5 <= 1'b0;
         wmfs154_p5 <= 1'b0;
         wmfs164_p5 <= 1'b0;
         wmfs174_p5 <= 1'b0;
         wmfc04_p5 <= 1'b0;
         wmfc14_p5 <= 1'b0;
         wmfc24_p5 <= 1'b0;
         wmfc34_p5 <= 1'b0;
         wmfc44_p5 <= 1'b0;
         wmfc54_p5 <= 1'b0;
         wmfc64_p5 <= 1'b0;
         wmfc74_p5 <= 1'b0;
         wmfc84_p5 <= 1'b0;
         wmfc94_p5 <= 1'b0;
         wmfc104_p5 <= 1'b0;
         wmfc114_p5 <= 1'b0;
         wmfc124_p5 <= 1'b0;
         wmfc134_p5 <= 1'b0;
         wmfc144_p5 <= 1'b0;
         wmfc154_p5 <= 1'b0;
         wmfc164_p5 <= 1'b0;
         wmfc174_p5 <= 1'b0;
      end else begin
         P[4] <= product_comb_4;
         wmfs14_p5 <= wmfs14;
         wmfs24_p5 <= wmfs24;
         wmfs34_p5 <= wmfs34;
         wmfs44_p5 <= wmfs44;
         wmfs54_p5 <= wmfs54;
         wmfs64_p5 <= wmfs64;
         wmfs74_p5 <= wmfs74;
         wmfs84_p5 <= wmfs84;
         wmfs94_p5 <= wmfs94;
         wmfs104_p5 <= wmfs104;
         wmfs114_p5 <= wmfs114;
         wmfs124_p5 <= wmfs124;
         wmfs134_p5 <= wmfs134;
         wmfs144_p5 <= wmfs144;
         wmfs154_p5 <= wmfs154;
         wmfs164_p5 <= wmfs164;
         wmfs174_p5 <= wmfs174;
         wmfc04_p5 <= wmfc04;
         wmfc14_p5 <= wmfc14;
         wmfc24_p5 <= wmfc24;
         wmfc34_p5 <= wmfc34;
         wmfc44_p5 <= wmfc44;
         wmfc54_p5 <= wmfc54;
         wmfc64_p5 <= wmfc64;
         wmfc74_p5 <= wmfc74;
         wmfc84_p5 <= wmfc84;
         wmfc94_p5 <= wmfc94;
         wmfc104_p5 <= wmfc104;
         wmfc114_p5 <= wmfc114;
         wmfc124_p5 <= wmfc124;
         wmfc134_p5 <= wmfc134;
         wmfc144_p5 <= wmfc144;
         wmfc154_p5 <= wmfc154;
         wmfc164_p5 <= wmfc164;
         wmfc174_p5 <= wmfc174;
      end
   end
 
//Row b5
   MFA 	  mfa05(.Sum(product_comb_5), .Cout(wmfc05), .A(A[0]), .B(B[5]), .Sin(wmfs14_p5), .Cin(wmfc04_p5));
   MFA 	  mfa15(.Sum(wmfs15), .Cout(wmfc15), .A(A[1]), .B(B[5]), .Sin(wmfs24_p5), .Cin(wmfc14_p5));
   MFA 	  mfa25(.Sum(wmfs25), .Cout(wmfc25), .A(A[2]), .B(B[5]), .Sin(wmfs34_p5), .Cin(wmfc24_p5));
   MFA 	  mfa35(.Sum(wmfs35), .Cout(wmfc35), .A(A[3]), .B(B[5]), .Sin(wmfs44_p5), .Cin(wmfc34_p5));
   MFA 	  mfa45(.Sum(wmfs45), .Cout(wmfc45), .A(A[4]), .B(B[5]), .Sin(wmfs54_p5), .Cin(wmfc44_p5));
   MFA     mfa55(.Sum(wmfs55), .Cout(wmfc55), .A(A[5]), .B(B[5]), .Sin(wmfs64_p5), .Cin(wmfc54_p5));
   MFA 	  mfa65(.Sum(wmfs65), .Cout(wmfc65), .A(A[6]), .B(B[5]), .Sin(wmfs74_p5), .Cin(wmfc64_p5));
   MFA 	  mfa75(.Sum(wmfs75), .Cout(wmfc75), .A(A[7]), .B(B[5]), .Sin(wmfs84_p5), .Cin(wmfc74_p5));
   MFA 	  mfa85(.Sum(wmfs85), .Cout(wmfc85), .A(A[8]), .B(B[5]), .Sin(wmfs94_p5), .Cin(wmfc84_p5));
   MFA 	  mfa95(.Sum(wmfs95), .Cout(wmfc95), .A(A[9]), .B(B[5]), .Sin(wmfs104_p5), .Cin(wmfc94_p5));
   MFA 	  mfa105(.Sum(wmfs105), .Cout(wmfc105), .A(A[10]), .B(B[5]), .Sin(wmfs114_p5), .Cin(wmfc104_p5));

   MFA 	  mfa115(.Sum(wmfs115), .Cout(wmfc115), .A(1'b0), .B(B[5]), .Sin(wmfs124_p5), .Cin(wmfc114_p5));
   MFA 	  mfa125(.Sum(wmfs125), .Cout(wmfc125), .A(1'b0), .B(B[5]), .Sin(wmfs134_p5), .Cin(wmfc124_p5));
   MFA 	  mfa135(.Sum(wmfs135), .Cout(wmfc135), .A(1'b0), .B(B[5]), .Sin(wmfs144_p5), .Cin(wmfc134_p5));
   MFA 	  mfa145(.Sum(wmfs145), .Cout(wmfc145), .A(1'b0), .B(B[5]), .Sin(wmfs154_p5), .Cin(wmfc144_p5));
   MFA 	  mfa155(.Sum(wmfs155), .Cout(wmfc155), .A(1'b0), .B(B[5]), .Sin(wmfs164_p5), .Cin(wmfc154_p5));
   MFA 	  mfa165(.Sum(wmfs165), .Cout(wmfc165), .A(1'b0), .B(B[5]), .Sin(wmfs174_p5), .Cin(wmfc164_p5));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[5] <= 1'b0;
         wmfs15_p6 <= 1'b0;
         wmfs25_p6 <= 1'b0;
         wmfs35_p6 <= 1'b0;
         wmfs45_p6 <= 1'b0;
         wmfs55_p6 <= 1'b0;
         wmfs65_p6 <= 1'b0;
         wmfs75_p6 <= 1'b0;
         wmfs85_p6 <= 1'b0;
         wmfs95_p6 <= 1'b0;
         wmfs105_p6 <= 1'b0;
         wmfs115_p6 <= 1'b0;
         wmfs125_p6 <= 1'b0;
         wmfs135_p6 <= 1'b0;
         wmfs145_p6 <= 1'b0;
         wmfs155_p6 <= 1'b0;
         wmfs165_p6 <= 1'b0;
         wmfc05_p6 <= 1'b0;
         wmfc15_p6 <= 1'b0;
         wmfc25_p6 <= 1'b0;
         wmfc35_p6 <= 1'b0;
         wmfc45_p6 <= 1'b0;
         wmfc55_p6 <= 1'b0;
         wmfc65_p6 <= 1'b0;
         wmfc75_p6 <= 1'b0;
         wmfc85_p6 <= 1'b0;
         wmfc95_p6 <= 1'b0;
         wmfc105_p6 <= 1'b0;
         wmfc115_p6 <= 1'b0;
         wmfc125_p6 <= 1'b0;
         wmfc135_p6 <= 1'b0;
         wmfc145_p6 <= 1'b0;
         wmfc155_p6 <= 1'b0;
         wmfc165_p6 <= 1'b0;
      end else begin
         P[5] <= product_comb_5;
         wmfs15_p6 <= wmfs15;
         wmfs25_p6 <= wmfs25;
         wmfs35_p6 <= wmfs35;
         wmfs45_p6 <= wmfs45;
         wmfs55_p6 <= wmfs55;
         wmfs65_p6 <= wmfs65;
         wmfs75_p6 <= wmfs75;
         wmfs85_p6 <= wmfs85;
         wmfs95_p6 <= wmfs95;
         wmfs105_p6 <= wmfs105;
         wmfs115_p6 <= wmfs115;
         wmfs125_p6 <= wmfs125;
         wmfs135_p6 <= wmfs135;
         wmfs145_p6 <= wmfs145;
         wmfs155_p6 <= wmfs155;
         wmfs165_p6 <= wmfs165;
         wmfc05_p6 <= wmfc05;
         wmfc15_p6 <= wmfc15;
         wmfc25_p6 <= wmfc25;
         wmfc35_p6 <= wmfc35;
         wmfc45_p6 <= wmfc45;
         wmfc55_p6 <= wmfc55;
         wmfc65_p6 <= wmfc65;
         wmfc75_p6 <= wmfc75;
         wmfc85_p6 <= wmfc85;
         wmfc95_p6 <= wmfc95;
         wmfc105_p6 <= wmfc105;
         wmfc115_p6 <= wmfc115;
         wmfc125_p6 <= wmfc125;
         wmfc135_p6 <= wmfc135;
         wmfc145_p6 <= wmfc145;
         wmfc155_p6 <= wmfc155;
         wmfc165_p6 <= wmfc165;
      end
   end

//Row b6
   MFA 	  mfa06(.Sum(product_comb_6), .Cout(wmfc06), .A(A[0]), .B(B[6]), .Sin(wmfs15_p6), .Cin(wmfc05_p6));
   MFA 	  mfa16(.Sum(wmfs16), .Cout(wmfc16), .A(A[1]), .B(B[6]), .Sin(wmfs25_p6), .Cin(wmfc15_p6));
   MFA 	  mfa26(.Sum(wmfs26), .Cout(wmfc26), .A(A[2]), .B(B[6]), .Sin(wmfs35_p6), .Cin(wmfc25_p6));
   MFA 	  mfa36(.Sum(wmfs36), .Cout(wmfc36), .A(A[3]), .B(B[6]), .Sin(wmfs45_p6), .Cin(wmfc35_p6));
   MFA 	  mfa46(.Sum(wmfs46), .Cout(wmfc46), .A(A[4]), .B(B[6]), .Sin(wmfs55_p6), .Cin(wmfc45_p6));
   MFA     mfa56(.Sum(wmfs56), .Cout(wmfc56), .A(A[5]), .B(B[6]), .Sin(wmfs65_p6), .Cin(wmfc55_p6));
   MFA     mfa66(.Sum(wmfs66), .Cout(wmfc66), .A(A[6]), .B(B[6]), .Sin(wmfs75_p6), .Cin(wmfc65_p6));
   MFA 	  mfa76(.Sum(wmfs76), .Cout(wmfc76), .A(A[7]), .B(B[6]), .Sin(wmfs85_p6), .Cin(wmfc75_p6));
   MFA 	  mfa86(.Sum(wmfs86), .Cout(wmfc86), .A(A[8]), .B(B[6]), .Sin(wmfs95_p6), .Cin(wmfc85_p6));
   MFA 	  mfa96(.Sum(wmfs96), .Cout(wmfc96), .A(A[9]), .B(B[6]), .Sin(wmfs105_p6), .Cin(wmfc95_p6));
   MFA 	  mfa106(.Sum(wmfs106), .Cout(wmfc106), .A(A[10]), .B(B[6]), .Sin(wmfs115_p6), .Cin(wmfc105_p6));

   MFA 	  mfa116(.Sum(wmfs116), .Cout(wmfc116), .A(1'b0), .B(B[6]), .Sin(wmfs125_p6), .Cin(wmfc115_p6));
   MFA 	  mfa126(.Sum(wmfs126), .Cout(wmfc126), .A(1'b0), .B(B[6]), .Sin(wmfs135_p6), .Cin(wmfc125_p6));
   MFA 	  mfa136(.Sum(wmfs136), .Cout(wmfc136), .A(1'b0), .B(B[6]), .Sin(wmfs145_p6), .Cin(wmfc135_p6));
   MFA 	  mfa146(.Sum(wmfs146), .Cout(wmfc146), .A(1'b0), .B(B[6]), .Sin(wmfs155_p6), .Cin(wmfc145_p6));
   MFA 	  mfa156(.Sum(wmfs156), .Cout(wmfc156), .A(1'b0), .B(B[6]), .Sin(wmfs165_p6), .Cin(wmfc155_p6));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[6] <= 1'b0;
         wmfs16_p7 <= 1'b0;
         wmfs26_p7 <= 1'b0;
         wmfs36_p7 <= 1'b0;
         wmfs46_p7 <= 1'b0;
         wmfs56_p7 <= 1'b0;
         wmfs66_p7 <= 1'b0;
         wmfs76_p7 <= 1'b0;
         wmfs86_p7 <= 1'b0;
         wmfs96_p7 <= 1'b0;
         wmfs106_p7 <= 1'b0;
         wmfs116_p7 <= 1'b0;
         wmfs126_p7 <= 1'b0;
         wmfs136_p7 <= 1'b0;
         wmfs146_p7 <= 1'b0;
         wmfs156_p7 <= 1'b0;
         wmfc06_p7 <= 1'b0;
         wmfc16_p7 <= 1'b0;
         wmfc26_p7 <= 1'b0;
         wmfc36_p7 <= 1'b0;
         wmfc46_p7 <= 1'b0;
         wmfc56_p7 <= 1'b0;
         wmfc66_p7 <= 1'b0;
         wmfc76_p7 <= 1'b0;
         wmfc86_p7 <= 1'b0;
         wmfc96_p7 <= 1'b0;
         wmfc106_p7 <= 1'b0;
         wmfc116_p7 <= 1'b0;
         wmfc126_p7 <= 1'b0;
         wmfc136_p7 <= 1'b0;
         wmfc146_p7 <= 1'b0;
         wmfc156_p7 <= 1'b0;
      end else begin
         P[6] <= product_comb_6;
         wmfs16_p7 <= wmfs16;
         wmfs26_p7 <= wmfs26;
         wmfs36_p7 <= wmfs36;
         wmfs46_p7 <= wmfs46;
         wmfs56_p7 <= wmfs56;
         wmfs66_p7 <= wmfs66;
         wmfs76_p7 <= wmfs76;
         wmfs86_p7 <= wmfs86;
         wmfs96_p7 <= wmfs96;
         wmfs106_p7 <= wmfs106;
         wmfs116_p7 <= wmfs116;
         wmfs126_p7 <= wmfs126;
         wmfs136_p7 <= wmfs136;
         wmfs146_p7 <= wmfs146;
         wmfs156_p7 <= wmfs156;
         wmfc06_p7 <= wmfc06;
         wmfc16_p7 <= wmfc16;
         wmfc26_p7 <= wmfc26;
         wmfc36_p7 <= wmfc36;
         wmfc46_p7 <= wmfc46;
         wmfc56_p7 <= wmfc56;
         wmfc66_p7 <= wmfc66;
         wmfc76_p7 <= wmfc76;
         wmfc86_p7 <= wmfc86;
         wmfc96_p7 <= wmfc96;
         wmfc106_p7 <= wmfc106;
         wmfc116_p7 <= wmfc116;
         wmfc126_p7 <= wmfc126;
         wmfc136_p7 <= wmfc136;
         wmfc146_p7 <= wmfc146;
         wmfc156_p7 <= wmfc156;
      end
   end

//Row b7
   MFA 	  mfa07(.Sum(product_comb_7), .Cout(wmfc07), .A(A[0]), .B(B[7]), .Sin(wmfs16_p7), .Cin(wmfc06_p7));
   MFA 	  mfa17(.Sum(wmfs17), .Cout(wmfc17), .A(A[1]), .B(B[7]), .Sin(wmfs26_p7), .Cin(wmfc16_p7));
   MFA 	  mfa27(.Sum(wmfs27), .Cout(wmfc27), .A(A[2]), .B(B[7]), .Sin(wmfs36_p7), .Cin(wmfc26_p7));
   MFA 	  mfa37(.Sum(wmfs37), .Cout(wmfc37), .A(A[3]), .B(B[7]), .Sin(wmfs46_p7), .Cin(wmfc36_p7));
   MFA 	  mfa47(.Sum(wmfs47), .Cout(wmfc47), .A(A[4]), .B(B[7]), .Sin(wmfs56_p7), .Cin(wmfc46_p7));
   MFA     mfa57(.Sum(wmfs57), .Cout(wmfc57), .A(A[5]), .B(B[7]), .Sin(wmfs66_p7), .Cin(wmfc56_p7));
   MFA     mfa67(.Sum(wmfs67), .Cout(wmfc67), .A(A[6]), .B(B[7]), .Sin(wmfs76_p7), .Cin(wmfc66_p7));
   MFA 	  mfa77(.Sum(wmfs77), .Cout(wmfc77), .A(A[7]), .B(B[7]), .Sin(wmfs86_p7), .Cin(wmfc76_p7));
   MFA 	  mfa87(.Sum(wmfs87), .Cout(wmfc87), .A(A[8]), .B(B[7]), .Sin(wmfs96_p7), .Cin(wmfc86_p7));
   MFA 	  mfa97(.Sum(wmfs97), .Cout(wmfc97), .A(A[9]), .B(B[7]), .Sin(wmfs106_p7), .Cin(wmfc96_p7));
   MFA 	  mfa107(.Sum(wmfs107), .Cout(wmfc107), .A(A[10]), .B(B[7]), .Sin(wmfs116_p7), .Cin(wmfc106_p7));

   MFA 	  mfa117(.Sum(wmfs117), .Cout(wmfc117), .A(1'b0), .B(B[7]), .Sin(wmfs126_p7), .Cin(wmfc116_p7));
   MFA 	  mfa127(.Sum(wmfs127), .Cout(wmfc127), .A(1'b0), .B(B[7]), .Sin(wmfs136_p7), .Cin(wmfc126_p7));
   MFA 	  mfa137(.Sum(wmfs137), .Cout(wmfc137), .A(1'b0), .B(B[7]), .Sin(wmfs146_p7), .Cin(wmfc136_p7));
   MFA 	  mfa147(.Sum(wmfs147), .Cout(wmfc147), .A(1'b0), .B(B[7]), .Sin(wmfs156_p7), .Cin(wmfc146_p7));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[7] <= 1'b0;
         wmfs17_p8 <= 1'b0;
         wmfs27_p8 <= 1'b0;
         wmfs37_p8 <= 1'b0;
         wmfs47_p8 <= 1'b0;
         wmfs57_p8 <= 1'b0;
         wmfs67_p8 <= 1'b0;
         wmfs77_p8 <= 1'b0;
         wmfs87_p8 <= 1'b0;
         wmfs97_p8 <= 1'b0;
         wmfs107_p8 <= 1'b0;
         wmfs117_p8 <= 1'b0;
         wmfs127_p8 <= 1'b0;
         wmfs137_p8 <= 1'b0;
         wmfs147_p8 <= 1'b0;
         wmfc07_p8 <= 1'b0;
         wmfc17_p8 <= 1'b0;
         wmfc27_p8 <= 1'b0;
         wmfc37_p8 <= 1'b0;
         wmfc47_p8 <= 1'b0;
         wmfc57_p8 <= 1'b0;
         wmfc67_p8 <= 1'b0;
         wmfc77_p8 <= 1'b0;
         wmfc87_p8 <= 1'b0;
         wmfc97_p8 <= 1'b0;
         wmfc107_p8 <= 1'b0;
         wmfc117_p8 <= 1'b0;
         wmfc127_p8 <= 1'b0;
         wmfc137_p8 <= 1'b0;
         wmfc147_p8 <= 1'b0;
      end else begin
         P[7] <= product_comb_7;
         wmfs17_p8 <= wmfs17;
         wmfs27_p8 <= wmfs27;
         wmfs37_p8 <= wmfs37;
         wmfs47_p8 <= wmfs47;
         wmfs57_p8 <= wmfs57;
         wmfs67_p8 <= wmfs67;
         wmfs77_p8 <= wmfs77;
         wmfs87_p8 <= wmfs87;
         wmfs97_p8 <= wmfs97;
         wmfs107_p8 <= wmfs107;
         wmfs117_p8 <= wmfs117;
         wmfs127_p8 <= wmfs127;
         wmfs137_p8 <= wmfs137;
         wmfs147_p8 <= wmfs147;
         wmfc07_p8 <= wmfc07;
         wmfc17_p8 <= wmfc17;
         wmfc27_p8 <= wmfc27;
         wmfc37_p8 <= wmfc37;
         wmfc47_p8 <= wmfc47;
         wmfc57_p8 <= wmfc57;
         wmfc67_p8 <= wmfc67;
         wmfc77_p8 <= wmfc77;
         wmfc87_p8 <= wmfc87;
         wmfc97_p8 <= wmfc97;
         wmfc107_p8 <= wmfc107;
         wmfc117_p8 <= wmfc117;
         wmfc127_p8 <= wmfc127;
         wmfc137_p8 <= wmfc137;
         wmfc147_p8 <= wmfc147;
      end
   end

//Row b8
   MFA 	  mfa08(.Sum(product_comb_8), .Cout(wmfc08), .A(A[0]), .B(B[8]), .Sin(wmfs17_p8), .Cin(wmfc07_p8));
   MFA 	  mfa18(.Sum(wmfs18), .Cout(wmfc18), .A(A[1]), .B(B[8]), .Sin(wmfs27_p8), .Cin(wmfc17_p8));
   MFA 	  mfa28(.Sum(wmfs28), .Cout(wmfc28), .A(A[2]), .B(B[8]), .Sin(wmfs37_p8), .Cin(wmfc27_p8));
   MFA 	  mfa38(.Sum(wmfs38), .Cout(wmfc38), .A(A[3]), .B(B[8]), .Sin(wmfs47_p8), .Cin(wmfc37_p8));
   MFA 	  mfa48(.Sum(wmfs48), .Cout(wmfc48), .A(A[4]), .B(B[8]), .Sin(wmfs57_p8), .Cin(wmfc47_p8));
   MFA     mfa58(.Sum(wmfs58), .Cout(wmfc58), .A(A[5]), .B(B[8]), .Sin(wmfs67_p8), .Cin(wmfc57_p8));
   MFA     mfa68(.Sum(wmfs68), .Cout(wmfc68), .A(A[6]), .B(B[8]), .Sin(wmfs77_p8), .Cin(wmfc67_p8));
   MFA 	  mfa78(.Sum(wmfs78), .Cout(wmfc78), .A(A[7]), .B(B[8]), .Sin(wmfs87_p8), .Cin(wmfc77_p8));
   MFA 	  mfa88(.Sum(wmfs88), .Cout(wmfc88), .A(A[8]), .B(B[8]), .Sin(wmfs97_p8), .Cin(wmfc87_p8));
   MFA 	  mfa98(.Sum(wmfs98), .Cout(wmfc98), .A(A[9]), .B(B[8]), .Sin(wmfs107_p8), .Cin(wmfc97_p8));
   MFA 	  mfa108(.Sum(wmfs108), .Cout(wmfc108), .A(A[10]), .B(B[8]), .Sin(wmfs117_p8), .Cin(wmfc107_p8));

   MFA 	  mfa118(.Sum(wmfs118), .Cout(wmfc118), .A(1'b0), .B(B[8]), .Sin(wmfs127_p8), .Cin(wmfc117_p8));
   MFA 	  mfa128(.Sum(wmfs128), .Cout(wmfc128), .A(1'b0), .B(B[8]), .Sin(wmfs137_p8), .Cin(wmfc127_p8));
   MFA 	  mfa138(.Sum(wmfs138), .Cout(wmfc138), .A(1'b0), .B(B[8]), .Sin(wmfs147_p8), .Cin(wmfc137_p8));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[8] <= 1'b0;
         wmfs18_p9 <= 1'b0;
         wmfs28_p9 <= 1'b0;
         wmfs38_p9 <= 1'b0;
         wmfs48_p9 <= 1'b0;
         wmfs58_p9 <= 1'b0;
         wmfs68_p9 <= 1'b0;
         wmfs78_p9 <= 1'b0;
         wmfs88_p9 <= 1'b0;
         wmfs98_p9 <= 1'b0;
         wmfs108_p9 <= 1'b0;
         wmfs118_p9 <= 1'b0;
         wmfs128_p9 <= 1'b0;
         wmfs138_p9 <= 1'b0;
         wmfc08_p9 <= 1'b0;
         wmfc18_p9 <= 1'b0;
         wmfc28_p9 <= 1'b0;
         wmfc38_p9 <= 1'b0;
         wmfc48_p9 <= 1'b0;
         wmfc58_p9 <= 1'b0;
         wmfc68_p9 <= 1'b0;
         wmfc78_p9 <= 1'b0;
         wmfc88_p9 <= 1'b0;
         wmfc98_p9 <= 1'b0;
         wmfc108_p9 <= 1'b0;
         wmfc118_p9 <= 1'b0;
         wmfc128_p9 <= 1'b0;
         wmfc138_p9 <= 1'b0;
      end else begin
         P[8] <= product_comb_8;
         wmfs18_p9 <= wmfs18;
         wmfs28_p9 <= wmfs28;
         wmfs38_p9 <= wmfs38;
         wmfs48_p9 <= wmfs48;
         wmfs58_p9 <= wmfs58;
         wmfs68_p9 <= wmfs68;
         wmfs78_p9 <= wmfs78;
         wmfs88_p9 <= wmfs88;
         wmfs98_p9 <= wmfs98;
         wmfs108_p9 <= wmfs108;
         wmfs118_p9 <= wmfs118;
         wmfs128_p9 <= wmfs128;
         wmfs138_p9 <= wmfs138;
         wmfc08_p9 <= wmfc08;
         wmfc18_p9 <= wmfc18;
         wmfc28_p9 <= wmfc28;
         wmfc38_p9 <= wmfc38;
         wmfc48_p9 <= wmfc48;
         wmfc58_p9 <= wmfc58;
         wmfc68_p9 <= wmfc68;
         wmfc78_p9 <= wmfc78;
         wmfc88_p9 <= wmfc88;
         wmfc98_p9 <= wmfc98;
         wmfc108_p9 <= wmfc108;
         wmfc118_p9 <= wmfc118;
         wmfc128_p9 <= wmfc128;
         wmfc138_p9 <= wmfc138;
      end
   end

//Row b9    
   MFA 	  mfa09(.Sum(product_comb_9), .Cout(wmfc09), .A(A[0]), .B(B[9]), .Sin(wmfs18_p9), .Cin(wmfc08_p9));
   MFA 	  mfa19(.Sum(wmfs19), .Cout(wmfc19), .A(A[1]), .B(B[9]), .Sin(wmfs28_p9), .Cin(wmfc18_p9));
   MFA 	  mfa29(.Sum(wmfs29), .Cout(wmfc29), .A(A[2]), .B(B[9]), .Sin(wmfs38_p9), .Cin(wmfc28_p9));
   MFA 	  mfa39(.Sum(wmfs39), .Cout(wmfc39), .A(A[3]), .B(B[9]), .Sin(wmfs48_p9), .Cin(wmfc38_p9));
   MFA 	  mfa49(.Sum(wmfs49), .Cout(wmfc49), .A(A[4]), .B(B[9]), .Sin(wmfs58_p9), .Cin(wmfc48_p9));
   MFA     mfa59(.Sum(wmfs59), .Cout(wmfc59), .A(A[5]), .B(B[9]), .Sin(wmfs68_p9), .Cin(wmfc58_p9));
   MFA     mfa69(.Sum(wmfs69), .Cout(wmfc69), .A(A[6]), .B(B[9]), .Sin(wmfs78_p9), .Cin(wmfc68_p9));
   MFA 	  mfa79(.Sum(wmfs79), .Cout(wmfc79), .A(A[7]), .B(B[9]), .Sin(wmfs88_p9), .Cin(wmfc78_p9));
   MFA 	  mfa89(.Sum(wmfs89), .Cout(wmfc89), .A(A[8]), .B(B[9]), .Sin(wmfs98_p9), .Cin(wmfc88_p9));
   MFA 	  mfa99(.Sum(wmfs99), .Cout(wmfc99), .A(A[9]), .B(B[9]), .Sin(wmfs108_p9), .Cin(wmfc98_p9));
   MFA 	  mfa109(.Sum(wmfs109), .Cout(wmfc109), .A(A[10]), .B(B[9]), .Sin(wmfs118_p9), .Cin(wmfc108_p9));
   
   MFA 	  mfa119(.Sum(wmfs119), .Cout(wmfc119), .A(1'b0), .B(B[9]), .Sin(wmfs128_p9), .Cin(wmfc118_p9));
   MFA 	  mfa129(.Sum(wmfs129), .Cout(wmfc129), .A(1'b0), .B(B[9]), .Sin(wmfs138_p9), .Cin(wmfc128_p9));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[9] <= 1'b0;
         wmfs19_p10 <= 1'b0;
         wmfs29_p10 <= 1'b0;
         wmfs39_p10 <= 1'b0;
         wmfs49_p10 <= 1'b0;
         wmfs59_p10 <= 1'b0;
         wmfs69_p10 <= 1'b0;
         wmfs79_p10 <= 1'b0;
         wmfs89_p10 <= 1'b0;
         wmfs99_p10 <= 1'b0;
         wmfs109_p10 <= 1'b0;
         wmfs119_p10 <= 1'b0;
         wmfs129_p10 <= 1'b0;
         wmfc09_p10 <= 1'b0;
         wmfc19_p10 <= 1'b0;
         wmfc29_p10 <= 1'b0;
         wmfc39_p10 <= 1'b0;
         wmfc49_p10 <= 1'b0;
         wmfc59_p10 <= 1'b0;
         wmfc69_p10 <= 1'b0;
         wmfc79_p10 <= 1'b0;
         wmfc89_p10 <= 1'b0;
         wmfc99_p10 <= 1'b0;
         wmfc109_p10 <= 1'b0;
         wmfc119_p10 <= 1'b0;
         wmfc129_p10 <= 1'b0;
      end else begin
         P[9] <= product_comb_9;
         wmfs19_p10 <= wmfs19;
         wmfs29_p10 <= wmfs29;
         wmfs39_p10 <= wmfs39;
         wmfs49_p10 <= wmfs49;
         wmfs59_p10 <= wmfs59;
         wmfs69_p10 <= wmfs69;
         wmfs79_p10 <= wmfs79;
         wmfs89_p10 <= wmfs89;
         wmfs99_p10 <= wmfs99;
         wmfs109_p10 <= wmfs109;
         wmfs119_p10 <= wmfs119;
         wmfs129_p10 <= wmfs129;
         wmfc09_p10 <= wmfc09;
         wmfc19_p10 <= wmfc19;
         wmfc29_p10 <= wmfc29;
         wmfc39_p10 <= wmfc39;
         wmfc49_p10 <= wmfc49;
         wmfc59_p10 <= wmfc59;
         wmfc69_p10 <= wmfc69;
         wmfc79_p10 <= wmfc79;
         wmfc89_p10 <= wmfc89;
         wmfc99_p10 <= wmfc99;
         wmfc109_p10 <= wmfc109;
         wmfc119_p10 <= wmfc119;
         wmfc129_p10 <= wmfc129;
      end
   end

//Row b9    
   MFA 	  mfa010(.Sum(product_comb_10), .Cout(wmfc010), .A(A[0]), .B(B[10]), .Sin(wmfs19_p10), .Cin(wmfc09_p10));
   MFA 	  mfa110(.Sum(wmfs110), .Cout(wmfc110), .A(A[1]), .B(B[10]), .Sin(wmfs29_p10), .Cin(wmfc19_p10));
   MFA 	  mfa210(.Sum(wmfs210), .Cout(wmfc210), .A(A[2]), .B(B[10]), .Sin(wmfs39_p10), .Cin(wmfc29_p10));
   MFA 	  mfa310(.Sum(wmfs310), .Cout(wmfc310), .A(A[3]), .B(B[10]), .Sin(wmfs49_p10), .Cin(wmfc39_p10));
   MFA 	  mfa410(.Sum(wmfs410), .Cout(wmfc410), .A(A[4]), .B(B[10]), .Sin(wmfs59_p10), .Cin(wmfc49_p10));
   MFA     mfa510(.Sum(wmfs510), .Cout(wmfc510), .A(A[5]), .B(B[10]), .Sin(wmfs69_p10), .Cin(wmfc59_p10));
   MFA     mfa610(.Sum(wmfs610), .Cout(wmfc610), .A(A[6]), .B(B[10]), .Sin(wmfs79_p10), .Cin(wmfc69_p10));
   MFA 	  mfa710(.Sum(wmfs710), .Cout(wmfc710), .A(A[7]), .B(B[10]), .Sin(wmfs89_p10), .Cin(wmfc79_p10));
   MFA 	  mfa810(.Sum(wmfs810), .Cout(wmfc810), .A(A[8]), .B(B[10]), .Sin(wmfs99_p10), .Cin(wmfc89_p10));
   MFA 	  mfa910(.Sum(wmfs910), .Cout(wmfc910), .A(A[9]), .B(B[10]), .Sin(wmfs109_p10), .Cin(wmfc99_p10));
   MFA 	  mfa1010(.Sum(wmfs1010), .Cout(wmfc1010), .A(A[10]), .B(B[10]), .Sin(wmfs119_p10), .Cin(wmfc109_p10));
   
   MFA 	  mfa1110(.Sum(wmfs1110), .Cout(wmfc1110), .A(1'b0), .B(B[10]), .Sin(wmfs129_p10), .Cin(wmfc119_p10));

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
         wmfs1010_p11 <= wmfs1010;
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
         wmfc1010_p11 <= wmfc1010;
      end
   end

//Row b11
   FA 	  fa011(.Sum(product_comb_11), .Cout(wfac011), .A(wmfc010_p11), .B(wmfs110_p11), .Cin(1'b0));
   FA 	  fa111(.Sum(product_comb_12), .Cout(wfac111), .A(wmfc110_p11), .B(wmfs210_p11), .Cin(wfac011));
   FA 	  fa211(.Sum(product_comb_13), .Cout(wfac211), .A(wmfc210_p11), .B(wmfs310_p11), .Cin(wfac111));
   FA 	  fa311(.Sum(product_comb_14), .Cout(wfac311), .A(wmfc310_p11), .B(wmfs410_p11), .Cin(wfac211));
   FA 	  fa411(.Sum(product_comb_15), .Cout(wfac411), .A(wmfc410_p11), .B(wmfs510_p11), .Cin(wfac311));
   FA 	  fa511(.Sum(product_comb_16), .Cout(wfac511), .A(wmfc510_p11), .B(wmfs610_p11), .Cin(wfac411));
   FA 	  fa611(.Sum(product_comb_17), .Cout(wfac611), .A(wmfc610_p11), .B(wmfs710_p11), .Cin(wfac511));
   FA 	  fa711(.Sum(product_comb_18), .Cout(wfac711), .A(wmfc710_p11), .B(wmfs810_p11), .Cin(wfac611));
   FA 	  fa811(.Sum(product_comb_19), .Cout(wfac811), .A(wmfc810_p11), .B(wmfs910_p11), .Cin(wfac711));
   FA 	  fa911(.Sum(product_comb_20), .Cout(wfac911), .A(wmfc910_p11), .B(wmfs1010_p11), .Cin(wfac811));
   FA 	  fa1011(.Sum(product_comb_21), .Cout(wfac1011), .A(wmfc1010_p11), .B(wmfs1110_p11), .Cin(wfac911));


   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[11] <= 1'b0;
         P[12] <= 1'b0;
         P[13] <= 1'b0;
         P[14] <= 1'b0;
         P[15] <= 1'b0;
         P[16] <= 1'b0;
         P[17] <= 1'b0;
         P[18] <= 1'b0;
         P[19] <= 1'b0;
         P[20] <= 1'b0;
         P[21] <= 1'b0;
      end else begin
         P[11] <= product_comb_11;
         P[12] <= product_comb_12;
         P[13] <= product_comb_13;
         P[14] <= product_comb_14;
         P[15] <= product_comb_15;
         P[16] <= product_comb_16;
         P[17] <= product_comb_17;
         P[18] <= product_comb_18;
         P[19] <= product_comb_19;
         P[20] <= product_comb_20;
         P[21] <= product_comb_21;
      end
   end

endmodule


