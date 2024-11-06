module Binary_mul_8_1_uni (P, A, B, clk, rst_n, en);

   input unsigned [7:0] A; // 被乘数
   input unsigned [7:0] B; // 乘数    
   input clk, rst_n, en;         

   output reg unsigned [15:0] P; // 积
   // wire unsigned [15:0] product_comb;

//row b0
   wire  wa10,wa20,wa30,wa40,wa50,wa60,wa70,wa80,wa90,wa100,wa110,wa120,wa130,wa140,wa150,product_comb_0;
   reg    wa10_p1,wa20_p1,wa30_p1,wa40_p1,wa50_p1,wa60_p1,wa70_p1,wa80_p1,wa90_p1,wa100_p1,wa110_p1,wa120_p1,wa130_p1,wa140_p1,wa150_p1;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31,wmhc41,wmhc51,wmhc61,wmhc71,wmhc81,wmhc91,wmhc101,wmhc111,wmhc121,wmhc131,wmhc141;
   wire  wmhs11,wmhs21,wmhs31,wmhs41,wmhs51,wmhs61,wmhs71,wmhs81,wmhs91,wmhs101,wmhs111,wmhs121,wmhs131,wmhs141,product_comb_1;
   reg   wmhs11_p2,wmhs21_p2,wmhs31_p2,wmhs41_p2,wmhs51_p2,wmhs61_p2,wmhs71_p2,wmhs81_p2,wmhs91_p2,wmhs101_p2,wmhs111_p2,wmhs121_p2,wmhs131_p2,wmhs141_p2;
    reg   wmhc01_p2,wmhc11_p2,wmhc21_p2,wmhc31_p2,wmhc41_p2,wmhc51_p2,wmhc61_p2,wmhc71_p2,wmhc81_p2,wmhc91_p2,wmhc101_p2,wmhc111_p2,wmhc121_p2,wmhc131_p2,wmhc141_p2;

//row b2
   wire	wmfc02,wmfc12,wmfc22,wmfc32,wmfc42,wmfc52,wmfc62,wmfc72,wmfc82,wmfc92,wmfc102,wmfc112,wmfc122,wmfc132;
   wire	wmfs12,wmfs22,wmfs32,wmfs42,wmfs52,wmfs62,wmfs72,wmfs82,wmfs92,wmfs102,wmfs112,wmfs122,wmfs132,product_comb_2;
   reg   wmfs12_p3,wmfs22_p3,wmfs32_p3,wmfs42_p3,wmfs52_p3,wmfs62_p3,wmfs72_p3,wmfs82_p3,wmfs92_p3,wmfs102_p3,wmfs112_p3,wmfs122_p3,wmfs132_p3;
    reg   wmfc02_p3,wmfc12_p3,wmfc22_p3,wmfc32_p3,wmfc42_p3,wmfc52_p3,wmfc62_p3,wmfc72_p3,wmfc82_p3,wmfc92_p3,wmfc102_p3,wmfc112_p3,wmfc122_p3,wmfc132_p3;

//row b3
   wire	wmfc03,wmfc13,wmfc23,wmfc33,wmfc43,wmfc53,wmfc63,wmfc73,wmfc83,wmfc93,wmfc103,wmfc113,wmfc123;
   wire	wmfs13,wmfs23,wmfs33,wmfs43,wmfs53,wmfs63,wmfs73,wmfs83,wmfs93,wmfs103,wmfs113,wmfs123,product_comb_3;
   reg   wmfs13_p4,wmfs23_p4,wmfs33_p4,wmfs43_p4,wmfs53_p4,wmfs63_p4,wmfs73_p4,wmfs83_p4,wmfs93_p4,wmfs103_p4,wmfs113_p4,wmfs123_p4;
    reg   wmfc03_p4,wmfc13_p4,wmfc23_p4,wmfc33_p4,wmfc43_p4,wmfc53_p4,wmfc63_p4,wmfc73_p4,wmfc83_p4,wmfc93_p4,wmfc103_p4,wmfc113_p4,wmfc123_p4;

//row b4
   wire	wmfc04,wmfc14,wmfc24,wmfc34,wmfc44,wmfc54,wmfc64,wmfc74,wmfc84,wmfc94,wmfc104,wmfc114;
   wire  wmfs14,wmfs24,wmfs34,wmfs44,wmfs54,wmfs64,wmfs74,wmfs84,wmfs94,wmfs104,wmfs114,product_comb_4;
   reg   wmfs14_p5,wmfs24_p5,wmfs34_p5,wmfs44_p5,wmfs54_p5,wmfs64_p5,wmfs74_p5,wmfs84_p5,wmfs94_p5,wmfs104_p5,wmfs114_p5;
   reg   wmfc04_p5,wmfc14_p5,wmfc24_p5,wmfc34_p5,wmfc44_p5,wmfc54_p5,wmfc64_p5,wmfc74_p5,wmfc84_p5,wmfc94_p5,wmfc104_p5,wmfc114_p5;

//row b5
   wire  wmfc05,wmfc15,wmfc25,wmfc35,wmfc45,wmfc55,wmfc65,wmfc75,wmfc85,wmfc95,wmfc105;
   wire  wmfs15,wmfs25,wmfs35,wmfs45,wmfs55,wmfs65,wmfs75,wmfs85,wmfs95,wmfs105,product_comb_5;
   reg   wmfs15_p6,wmfs25_p6,wmfs35_p6,wmfs45_p6,wmfs55_p6,wmfs65_p6,wmfs75_p6,wmfs85_p6,wmfs95_p6,wmfs105_p6;
    reg   wmfc05_p6,wmfc15_p6,wmfc25_p6,wmfc35_p6,wmfc45_p6,wmfc55_p6,wmfc65_p6,wmfc75_p6,wmfc85_p6,wmfc95_p6,wmfc105_p6;

//row b6
   wire  wmfc06,wmfc16,wmfc26,wmfc36,wmfc46,wmfc56,wmfc66,wmfc76,wmfc86,wmfc96;
   wire  wmfs16,wmfs26,wmfs36,wmfs46,wmfs56,wmfs66,wmfs76,wmfs86,wmfs96,product_comb_6;
   reg   wmfs16_p7,wmfs26_p7,wmfs36_p7,wmfs46_p7,wmfs56_p7,wmfs66_p7,wmfs76_p7,wmfs86_p7,wmfs96_p7;
    reg   wmfc06_p7,wmfc16_p7,wmfc26_p7,wmfc36_p7,wmfc46_p7,wmfc56_p7,wmfc66_p7,wmfc76_p7,wmfc86_p7,wmfc96_p7;

//row b7
   wire  wmfc07,wmfc17,wmfc27,wmfc37,wmfc47,wmfc57,wmfc67,wmfc77,wmfc87;
   wire  wmfs17,wmfs27,wmfs37,wmfs47,wmfs57,wmfs67,wmfs77,wmfs87,product_comb_7;
   reg   wmfs17_p8,wmfs27_p8,wmfs37_p8,wmfs47_p8,wmfs57_p8,wmfs67_p8,wmfs77_p8,wmfs87_p8;
    reg   wmfc07_p8,wmfc17_p8,wmfc27_p8,wmfc37_p8,wmfc47_p8,wmfc57_p8,wmfc67_p8,wmfc77_p8,wmfc87_p8;
//row b8
   wire  wfac08,wfac18,wfac28,wfac38,wfac48,wfac58,wfac68,wfac78,product_comb_8,product_comb_9,product_comb_10,product_comb_11,product_comb_12,product_comb_13,product_comb_14,product_comb_15;



//Row bo Implementation
   and a00(product_comb_0, A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   and a30(wa30, A[3], B[0]);
   and a40(wa40, A[4], B[0]);
   and a50(wa50, A[5], B[0]);
   and a60(wa60, A[6], B[0]);
   and a70(wa70, A[7], B[0]);

   assign wa80 = 0;
   assign wa90 = 0;
   assign wa100 = 0;
   assign wa110 = 0;
   assign wa120 = 0;
   assign wa130 = 0;
   assign wa140 = 0;
   assign wa150 = 0;

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
   
   MHA     mha81(.Sum(wmhs81), .Cout(wmhc81), .A(1'b0), .B(B[1]), .Sin(wa90_p1));
   MHA     mha91(.Sum(wmhs91), .Cout(wmhc91), .A(1'b0), .B(B[1]), .Sin(wa100_p1));
   MHA     mha101(.Sum(wmhs101), .Cout(wmhc101), .A(1'b0), .B(B[1]), .Sin(wa110_p1));
   MHA     mha111(.Sum(wmhs111), .Cout(wmhc111), .A(1'b0), .B(B[1]), .Sin(wa120_p1));
   MHA     mha121(.Sum(wmhs121), .Cout(wmhc121), .A(1'b0), .B(B[1]), .Sin(wa130_p1));
   MHA     mha131(.Sum(wmhs131), .Cout(wmhc131), .A(1'b0), .B(B[1]), .Sin(wa140_p1));
   MHA     mha141(.Sum(wmhs141), .Cout(wmhc141), .A(1'b0), .B(B[1]), .Sin(wa150_p1));

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
   
   MFA 	  mfa82(.Sum(wmfs82), .Cout(wmfc82), .A(1'b0), .B(B[2]), .Sin(wmhs91_p2), .Cin(wmhc81_p2));
   MFA 	  mfa92(.Sum(wmfs92), .Cout(wmfc92), .A(1'b0), .B(B[2]), .Sin(wmhs101_p2), .Cin(wmhc91_p2));
   MFA 	  mfa102(.Sum(wmfs102), .Cout(wmfc102), .A(1'b0), .B(B[2]), .Sin(wmhs111_p2), .Cin(wmhc101_p2));
   MFA 	  mfa112(.Sum(wmfs112), .Cout(wmfc112), .A(1'b0), .B(B[2]), .Sin(wmhs121_p2), .Cin(wmhc111_p2));
   MFA 	  mfa122(.Sum(wmfs122), .Cout(wmfc122), .A(1'b0), .B(B[2]), .Sin(wmhs131_p2), .Cin(wmhc121_p2));
   MFA 	  mfa132(.Sum(wmfs132), .Cout(wmfc132), .A(1'b0), .B(B[2]), .Sin(wmhs141_p2), .Cin(wmhc131_p2));

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
   
   MFA 	  mfa83(.Sum(wmfs83), .Cout(wmfc83), .A(1'b0), .B(B[3]), .Sin(wmfs92_p3), .Cin(wmfc82_p3));
   MFA 	  mfa93(.Sum(wmfs93), .Cout(wmfc93), .A(1'b0), .B(B[3]), .Sin(wmfs102_p3), .Cin(wmfc92_p3));
   MFA 	  mfa103(.Sum(wmfs103), .Cout(wmfc103), .A(1'b0), .B(B[3]), .Sin(wmfs112_p3), .Cin(wmfc102_p3));
   MFA 	  mfa113(.Sum(wmfs113), .Cout(wmfc113), .A(1'b0), .B(B[3]), .Sin(wmfs122_p3), .Cin(wmfc112_p3));
   MFA 	  mfa123(.Sum(wmfs123), .Cout(wmfc123), .A(1'b0), .B(B[3]), .Sin(wmfs132_p3), .Cin(wmfc122_p3));

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
   
   MFA     mfa84(.Sum(wmfs84), .Cout(wmfc84), .A(1'b0), .B(B[4]), .Sin(wmfs93_p4), .Cin(wmfc83_p4));
   MFA     mfa94(.Sum(wmfs94), .Cout(wmfc94), .A(1'b0), .B(B[4]), .Sin(wmfs103_p4), .Cin(wmfc93_p4));
   MFA     mfa104(.Sum(wmfs104), .Cout(wmfc104), .A(1'b0), .B(B[4]), .Sin(wmfs113_p4), .Cin(wmfc103_p4));
   MFA     mfa114(.Sum(wmfs114), .Cout(wmfc114), .A(1'b0), .B(B[4]), .Sin(wmfs123_p4), .Cin(wmfc113_p4));

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
   
   MFA 	  mfa85(.Sum(wmfs85), .Cout(wmfc85), .A(1'b0), .B(B[5]), .Sin(wmfs94_p5), .Cin(wmfc84_p5));
   MFA 	  mfa95(.Sum(wmfs95), .Cout(wmfc95), .A(1'b0), .B(B[5]), .Sin(wmfs104_p5), .Cin(wmfc94_p5));
   MFA 	  mfa105(.Sum(wmfs105), .Cout(wmfc105), .A(1'b0), .B(B[5]), .Sin(wmfs114_p5), .Cin(wmfc104_p5));

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
   
   MFA 	  mfa86(.Sum(wmfs86), .Cout(wmfc86), .A(1'b0), .B(B[6]), .Sin(wmfs95_p6), .Cin(wmfc85_p6));
   MFA 	  mfa96(.Sum(wmfs96), .Cout(wmfc96), .A(1'b0), .B(B[6]), .Sin(wmfs105_p6), .Cin(wmfc95_p6));

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
   
   MFA 	  mfa87(.Sum(wmfs87), .Cout(wmfc87), .A(1'b0), .B(B[7]), .Sin(wmfs96_p7), .Cin(wmfc86_p7));

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
         wmfc07_p8 <= 1'b0;
         wmfc17_p8 <= 1'b0;
         wmfc27_p8 <= 1'b0;
         wmfc37_p8 <= 1'b0;
         wmfc47_p8 <= 1'b0;
         wmfc57_p8 <= 1'b0;
         wmfc67_p8 <= 1'b0;
         wmfc77_p8 <= 1'b0;
         wmfc87_p8 <= 1'b0;
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
         wmfc07_p8 <= wmfc07;
         wmfc17_p8 <= wmfc17;
         wmfc27_p8 <= wmfc27;
         wmfc37_p8 <= wmfc37;
         wmfc47_p8 <= wmfc47;
         wmfc57_p8 <= wmfc57;
         wmfc67_p8 <= wmfc67;
         wmfc77_p8 <= wmfc77;
         wmfc87_p8 <= wmfc87;
      end
   end

//Row b8
   FA 	  fa08(.Sum(product_comb_8), .Cout(wfac08), .A(wmfc07_p8), .B(wmfs17_p8), .Cin(1'b0));
   FA 	  fa18(.Sum(product_comb_9), .Cout(wfac18), .A(wmfc17_p8), .B(wmfs27_p8), .Cin(wfac08));
   FA 	  fa28(.Sum(product_comb_10), .Cout(wfac28), .A(wmfc27_p8), .B(wmfs37_p8), .Cin(wfac18));
   FA 	  fa38(.Sum(product_comb_11), .Cout(wfac38), .A(wmfc37_p8), .B(wmfs47_p8), .Cin(wfac28));
   FA 	  fa48(.Sum(product_comb_12), .Cout(wfac48), .A(wmfc47_p8), .B(wmfs57_p8), .Cin(wfac38));
   FA 	  fa58(.Sum(product_comb_13), .Cout(wfac58), .A(wmfc57_p8), .B(wmfs67_p8), .Cin(wfac48));
   FA 	  fa68(.Sum(product_comb_14), .Cout(wfac68), .A(wmfc67_p8), .B(wmfs77_p8), .Cin(wfac58));
   FA 	  fa78(.Sum(product_comb_15), .Cout(wfac78), .A(wmfc77_p8), .B(wmfs87_p8), .Cin(wfac68));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[8] <= 1'b0;
         P[9] <= 1'b0;
         P[10] <= 1'b0;
         P[11] <= 1'b0;
         P[12] <= 1'b0;
         P[13] <= 1'b0;
         P[14] <= 1'b0;
         P[15] <= 1'b0;
      end else begin
         P[8] <= product_comb_8;
         P[9] <= product_comb_9;
         P[10] <= product_comb_10;
         P[11] <= product_comb_11;
         P[12] <= product_comb_12;
         P[13] <= product_comb_13;
         P[14] <= product_comb_14;
         P[15] <= product_comb_15;
      end
   end

endmodule


