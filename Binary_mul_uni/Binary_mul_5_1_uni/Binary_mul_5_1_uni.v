module Binary_mul_5_1_uni (P, A, B, clk, rst_n, en);

   input unsigned [4:0] A; // 被乘数
   input unsigned [4:0] B; // 乘数    
   input clk, rst_n, en;         

   output reg unsigned [9:0] P; // 积
   // wire unsigned [9:0] product_comb;

//row b0
   wire  wa10,wa20,wa30,wa40,wa50,wa60,wa70,wa80,wa90,product_comb_0;
   reg    wa10_p1, wa20_p1, wa30_p1, wa40_p1, wa50_p1, wa60_p1, wa70_p1, wa80_p1, wa90_p1;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31,wmhc41,wmhc51,wmhc61,wmhc71,wmhc81;
   wire  wmhs11,wmhs21,wmhs31,wmhs41,wmhs51,wmhs61,wmhs71,wmhs81,product_comb_1;
   reg   wmhs11_p2, wmhs21_p2, wmhs31_p2, wmhs41_p2, wmhs51_p2, wmhs61_p2, wmhs71_p2, wmhs81_p2;
   reg   wmhc01_p2, wmhc11_p2, wmhc21_p2, wmhc31_p2, wmhc41_p2, wmhc51_p2, wmhc61_p2, wmhc71_p2, wmhc81_p2;

//row b2
   wire	wmfc02,wmfc12,wmfc22,wmfc32,wmfc42,wmfc52,wmfc62,wmfc72;
   wire	wmfs12,wmfs22,wmfs32,wmfs42,wmfs52,wmfs62,wmfs72,product_comb_2;
   reg   wmfs12_p3, wmfs22_p3, wmfs32_p3, wmfs42_p3, wmfs52_p3, wmfs62_p3, wmfs72_p3;
   reg   wmfc02_p3, wmfc12_p3, wmfc22_p3, wmfc32_p3, wmfc42_p3, wmfc52_p3, wmfc62_p3, wmfc72_p3;  

//row b3
   wire	wmfc03,wmfc13,wmfc23,wmfc33,wmfc43,wmfc53,wmfc63;
   wire	wmfs13,wmfs23,wmfs33,wmfs43,wmfs53,wmfs63,product_comb_3;
   reg   wmfs13_p4, wmfs23_p4, wmfs33_p4, wmfs43_p4, wmfs53_p4, wmfs63_p4;
   reg   wmfc03_p4, wmfc13_p4, wmfc23_p4, wmfc33_p4, wmfc43_p4, wmfc53_p4, wmfc63_p4;

//row b4
   wire   wmfc04,wmfc14,wmfc24,wmfc34,wmfc44,wmfc54;
   wire   wmfs14,wmfs24,wmfs34,wmfs44,wmfs54,product_comb_4;
   reg   wmfs14_p5, wmfs24_p5, wmfs34_p5, wmfs44_p5, wmfs54_p5;
   reg   wmfc04_p5, wmfc14_p5, wmfc24_p5, wmfc34_p5, wmfc44_p5, wmfc54_p5;

//row b5
   wire	wfac05,wfac15,wfac25,wfac35,wfac45,product_comb_5,product_comb_6,product_comb_7,product_comb_8,product_comb_9;


//Row bo Implementation
   and a00(product_comb_0, A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   and a30(wa30, A[3], B[0]);
   and a40(wa40, A[4], B[0]);
   assign wa50 = 0;
   assign wa60 = 0;
   assign wa70 = 0;
   assign wa80 = 0;
   assign wa90 = 0;

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
      end
   end

//Row b1
   MHA     mha01(.Sum(product_comb_1), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10_p1));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20_p1));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30_p1));
   MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[3]), .B(B[1]), .Sin(wa40_p1));
   MHA     mha41(.Sum(wmhs41), .Cout(wmhc41), .A(A[4]), .B(B[1]), .Sin(wa50_p1));
   // assign
   MHA     mha51(.Sum(wmhs51), .Cout(wmhc51), .A(1'b0), .B(B[1]), .Sin(wa60_p1));
   MHA     mha61(.Sum(wmhs61), .Cout(wmhc61), .A(1'b0), .B(B[1]), .Sin(wa70_p1));
   MHA     mha71(.Sum(wmhs71), .Cout(wmhc71), .A(1'b0), .B(B[1]), .Sin(wa80_p1));
   MHA     mha81(.Sum(wmhs81), .Cout(wmhc81), .A(1'b0), .B(B[1]), .Sin(wa90_p1));

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
         wmhc01_p2 <= 1'b0;
         wmhc11_p2 <= 1'b0;
         wmhc21_p2 <= 1'b0;
         wmhc31_p2 <= 1'b0;
         wmhc41_p2 <= 1'b0;
         wmhc51_p2 <= 1'b0;
         wmhc61_p2 <= 1'b0;
         wmhc71_p2 <= 1'b0;
         wmhc81_p2 <= 1'b0;
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
         wmhc01_p2 <= wmhc01;
         wmhc11_p2 <= wmhc11;
         wmhc21_p2 <= wmhc21;
         wmhc31_p2 <= wmhc31;
         wmhc41_p2 <= wmhc41;
         wmhc51_p2 <= wmhc51;
         wmhc61_p2 <= wmhc61;
         wmhc71_p2 <= wmhc71;
         wmhc81_p2 <= wmhc81;
      end
   end

//Row b2
   MFA 	  mfa02(.Sum(product_comb_2), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11_p2), .Cin(wmhc01_p2));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21_p2), .Cin(wmhc11_p2));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31_p2), .Cin(wmhc21_p2));
   MFA 	  mfa32(.Sum(wmfs32), .Cout(wmfc32), .A(A[3]), .B(B[2]), .Sin(wmhs41_p2), .Cin(wmhc31_p2));
   MFA 	  mfa42(.Sum(wmfs42), .Cout(wmfc42), .A(A[4]), .B(B[2]), .Sin(wmhs51_p2), .Cin(wmhc41_p2));

   MFA 	  mfa52(.Sum(wmfs52), .Cout(wmfc52), .A(1'b0), .B(B[2]), .Sin(wmhs61_p2), .Cin(wmhc51_p2));
   MFA 	  mfa62(.Sum(wmfs62), .Cout(wmfc62), .A(1'b0), .B(B[2]), .Sin(wmhs71_p2), .Cin(wmhc61_p2));
   MFA 	  mfa72(.Sum(wmfs72), .Cout(wmfc72), .A(1'b0), .B(B[2]), .Sin(wmhs81_p2), .Cin(wmhc71_p2));

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
         wmfc02_p3 <= 1'b0;
         wmfc12_p3 <= 1'b0;
         wmfc22_p3 <= 1'b0;
         wmfc32_p3 <= 1'b0;
         wmfc42_p3 <= 1'b0;
         wmfc52_p3 <= 1'b0;
         wmfc62_p3 <= 1'b0;
         wmfc72_p3 <= 1'b0;
      end else begin
         P[2] <= product_comb_2;
         wmfs12_p3 <= wmfs12;
         wmfs22_p3 <= wmfs22;
         wmfs32_p3 <= wmfs32;
         wmfs42_p3 <= wmfs42;
         wmfs52_p3 <= wmfs52;
         wmfs62_p3 <= wmfs62;
         wmfs72_p3 <= wmfs72;
         wmfc02_p3 <= wmfc02;
         wmfc12_p3 <= wmfc12;
         wmfc22_p3 <= wmfc22;
         wmfc32_p3 <= wmfc32;
         wmfc42_p3 <= wmfc42;
         wmfc52_p3 <= wmfc52;
         wmfc62_p3 <= wmfc62;
         wmfc72_p3 <= wmfc72;
      end
   end

//Row b3
   MFA 	  mfa03(.Sum(product_comb_3), .Cout(wmfc03), .A(A[0]), .B(B[3]), .Sin(wmfs12_p3), .Cin(wmfc02_p3));
   MFA 	  mfa13(.Sum(wmfs13), .Cout(wmfc13), .A(A[1]), .B(B[3]), .Sin(wmfs22_p3), .Cin(wmfc12_p3));
   MFA 	  mfa23(.Sum(wmfs23), .Cout(wmfc23), .A(A[2]), .B(B[3]), .Sin(wmfs32_p3), .Cin(wmfc22_p3));
   MFA 	  mfa33(.Sum(wmfs33), .Cout(wmfc33), .A(A[3]), .B(B[3]), .Sin(wmfs42_p3), .Cin(wmfc32_p3));
   MFA 	  mfa43(.Sum(wmfs43), .Cout(wmfc43), .A(A[4]), .B(B[3]), .Sin(wmfs52_p3), .Cin(wmfc42_p3));

   MFA 	  mfa53(.Sum(wmfs53), .Cout(wmfc53), .A(1'b0), .B(B[3]), .Sin(wmfs62_p3), .Cin(wmfc52_p3));
   MFA 	  mfa63(.Sum(wmfs63), .Cout(wmfc63), .A(1'b0), .B(B[3]), .Sin(wmfs72_p3), .Cin(wmfc62_p3));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[3] <= 1'b0;
         wmfs13_p4 <= 1'b0;
         wmfs23_p4 <= 1'b0;
         wmfs33_p4 <= 1'b0;
         wmfs43_p4 <= 1'b0;
         wmfs53_p4 <= 1'b0;
         wmfs63_p4 <= 1'b0;
         wmfc03_p4 <= 1'b0;
         wmfc13_p4 <= 1'b0;
         wmfc23_p4 <= 1'b0;
         wmfc33_p4 <= 1'b0;
         wmfc43_p4 <= 1'b0;
         wmfc53_p4 <= 1'b0;
         wmfc63_p4 <= 1'b0;
      end else begin
         P[3] <= product_comb_3;
         wmfs13_p4 <= wmfs13;
         wmfs23_p4 <= wmfs23;
         wmfs33_p4 <= wmfs33;
         wmfs43_p4 <= wmfs43;
         wmfs53_p4 <= wmfs53;
         wmfs63_p4 <= wmfs63;
         wmfc03_p4 <= wmfc03;
         wmfc13_p4 <= wmfc13;
         wmfc23_p4 <= wmfc23;
         wmfc33_p4 <= wmfc33;
         wmfc43_p4 <= wmfc43;
         wmfc53_p4 <= wmfc53;
         wmfc63_p4 <= wmfc63;
      end
   end
   
//Row b4
   MFA 	  mfa04(.Sum(product_comb_4), .Cout(wmfc04), .A(A[0]), .B(B[4]), .Sin(wmfs13_p4), .Cin(wmfc03_p4));
   MFA 	  mfa14(.Sum(wmfs14), .Cout(wmfc14), .A(A[1]), .B(B[4]), .Sin(wmfs23_p4), .Cin(wmfc13_p4));
   MFA 	  mfa24(.Sum(wmfs24), .Cout(wmfc24), .A(A[2]), .B(B[4]), .Sin(wmfs33_p4), .Cin(wmfc23_p4));
   MFA 	  mfa34(.Sum(wmfs34), .Cout(wmfc34), .A(A[3]), .B(B[4]), .Sin(wmfs43_p4), .Cin(wmfc33_p4));
   MFA 	  mfa44(.Sum(wmfs44), .Cout(wmfc44), .A(A[4]), .B(B[4]), .Sin(wmfs53_p4), .Cin(wmfc43_p4));

   MFA     mfa54(.Sum(wmfs54), .Cout(wmfc54), .A(1'b0), .B(B[4]), .Sin(wmfs63_p4), .Cin(wmfc53_p4));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[4] <= 1'b0;
         wmfs14_p5 <= 1'b0;
         wmfs24_p5 <= 1'b0;
         wmfs34_p5 <= 1'b0;
         wmfs44_p5 <= 1'b0;
         wmfs54_p5 <= 1'b0;
         wmfc04_p5 <= 1'b0;
         wmfc14_p5 <= 1'b0;
         wmfc24_p5 <= 1'b0;
         wmfc34_p5 <= 1'b0;
         wmfc44_p5 <= 1'b0;
         wmfc54_p5 <= 1'b0;
      end else begin
         P[4] <= product_comb_4;
         wmfs14_p5 <= wmfs14;
         wmfs24_p5 <= wmfs24;
         wmfs34_p5 <= wmfs34;
         wmfs44_p5 <= wmfs44;
         wmfs54_p5 <= wmfs54;
         wmfc04_p5 <= wmfc04;
         wmfc14_p5 <= wmfc14;
         wmfc24_p5 <= wmfc24;
         wmfc34_p5 <= wmfc34;
         wmfc44_p5 <= wmfc44;
         wmfc54_p5 <= wmfc54;
      end
   end

//Row b5
   FA 	  fa05(.Sum(product_comb_5), .Cout(wfac05), .A(wmfc04_p5), .B(wmfs14_p5), .Cin(1'b0));
   FA 	  fa15(.Sum(product_comb_6), .Cout(wfac15), .A(wmfc14_p5), .B(wmfs24_p5), .Cin(wfac05));
   FA 	  fa25(.Sum(product_comb_7), .Cout(wfac25), .A(wmfc24_p5), .B(wmfs34_p5), .Cin(wfac15));
   FA 	  fa35(.Sum(product_comb_8), .Cout(wfac35), .A(wmfc34_p5), .B(wmfs44_p5), .Cin(wfac25));
   FA 	  fa45(.Sum(product_comb_9), .Cout(wfac45), .A(wmfc44_p5), .B(wmfs54_p5), .Cin(wfac35));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[5] <= 1'b0;
         P[6] <= 1'b0;
         P[7] <= 1'b0;
         P[8] <= 1'b0;
         P[9] <= 1'b0;
      end else begin
         P[5] <= product_comb_5;
         P[6] <= product_comb_6;
         P[7] <= product_comb_7;
         P[8] <= product_comb_8;
         P[9] <= product_comb_9;
      end
   end

endmodule


