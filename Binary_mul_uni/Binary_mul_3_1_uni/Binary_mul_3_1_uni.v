module Binary_mul_3_1_uni (P, A, B, clk, rst_n, en);

   input unsigned [2:0] A; // 被乘数
   input unsigned [2:0] B; // 乘数    
   input clk, rst_n, en;         

   output reg unsigned [5:0] P; // 积
   // wire unsigned [5:0] product_comb;

//row b0
   wire  wa10, wa20, wa30, wa40, wa50, product_comb_0;
   reg   wa10_p1, wa20_p1, wa30_p1, wa40_p1, wa50_p1;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31,wmhc41;
   wire  wmhs11,wmhs21,wmhs31,wmhs41,product_comb_1;
   reg  wmhs11_p2, wmhs21_p2, wmhs31_p2, wmhs41_p2;
   reg  wmhc01_p2, wmhc11_p2, wmhc21_p2, wmhc31_p2, wmhc41_p2;

//row b2
   wire	wmfc02,wmfc12,wmfc22,wmfc32;
   wire	wmfs12,wmfs22,wmfs32, product_comb_2;
   reg  wmfs12_p3, wmfs22_p3, wmfs32_p3;
   reg  wmfc02_p3, wmfc12_p3, wmfc22_p3, wmfc32_p3;

//row b3
   wire	wfac03,wfac13,wfac23, product_comb_3, product_comb_4, product_comb_5;


//Row bo Implementation
   and a00(product_comb_0, A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   assign wa30 = 0;
   assign wa40 = 0;
   assign wa50 = 0;

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[0] <= 1'b0;
         wa10_p1 <= 1'b0;
         wa20_p1 <= 1'b0;
         wa30_p1 <= 1'b0;
         wa40_p1 <= 1'b0;
         wa50_p1 <= 1'b0;
      end else begin
         P[0] <= product_comb_0;
         wa10_p1 <= wa10;
         wa20_p1 <= wa20;
         wa30_p1 <= wa30;
         wa40_p1 <= wa40;
         wa50_p1 <= wa50;
      end
   end

//Row b1
   MHA     mha01(.Sum(product_comb_1), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10_p1));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20_p1));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30_p1));
   // assign
   MHA     mha41(.Sum(wmhs31), .Cout(wmhc31), .A(1'b0), .B(B[1]), .Sin(wa40_p1));
   MHA     mha51(.Sum(wmhs41), .Cout(wmhc41), .A(1'b0), .B(B[1]), .Sin(wa50_p1));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[1] <= 1'b0;
         wmhs11_p2 <= 1'b0;
         wmhs21_p2 <= 1'b0;
         wmhs31_p2 <= 1'b0;
         wmhs41_p2 <= 1'b0;
         wmhc01_p2 <= 1'b0;
         wmhc11_p2 <= 1'b0;
         wmhc21_p2 <= 1'b0;
         wmhc31_p2 <= 1'b0;
         wmhc41_p2 <= 1'b0;
      end else begin
         P[1] <= product_comb_1;
         wmhs11_p2 <= wmhs11;
         wmhs21_p2 <= wmhs21;
         wmhs31_p2 <= wmhs31;
         wmhs41_p2 <= wmhs41;
         wmhc01_p2 <= wmhc01;
         wmhc11_p2 <= wmhc11;
         wmhc21_p2 <= wmhc21;
         wmhc31_p2 <= wmhc31;
         wmhc41_p2 <= wmhc41;
      end
   end

//Row b2
   MFA 	  mfa02(.Sum(product_comb_2), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11_p2), .Cin(wmhc01_p2));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21_p2), .Cin(wmhc11_p2));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31_p2), .Cin(wmhc21_p2));
   MFA 	  mfa42(.Sum(wmfs32), .Cout(wmfc32), .A(1'b0), .B(B[2]), .Sin(wmhs41_p2), .Cin(wmhc31_p2));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[2] <= 1'b0;
         wmfs12_p3 <= 1'b0;
         wmfs22_p3 <= 1'b0;
         wmfs32_p3 <= 1'b0;
         wmfc02_p3 <= 1'b0;
         wmfc12_p3 <= 1'b0;
         wmfc22_p3 <= 1'b0;
         wmfc32_p3 <= 1'b0;
      end else begin
         P[2] <= product_comb_2;
         wmfs12_p3 <= wmfs12;
         wmfs22_p3 <= wmfs22;
         wmfs32_p3 <= wmfs32;
         wmfc02_p3 <= wmfc02;
         wmfc12_p3 <= wmfc12;
         wmfc22_p3 <= wmfc22;
         wmfc32_p3 <= wmfc32;
      end
   end

//Row b4
   FA 	  fa03(.Sum(product_comb_3), .Cout(wfac03), .A(wmfc02_p3), .B(wmfs12_p3), .Cin(1'b0));
   FA 	  fa13(.Sum(product_comb_4), .Cout(wfac13), .A(wmfc12_p3), .B(wmfs22_p3), .Cin(wfac03));
   FA 	  fa23(.Sum(product_comb_5), .Cout(wfac23), .A(wmfc22_p3), .B(wmfs32_p3), .Cin(wfac13));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n) begin
         P[3] <= 1'b0;
         P[4] <= 1'b0;
         P[5] <= 1'b0;
      end else begin
         P[3] <= product_comb_3;
         P[4] <= product_comb_4;
         P[5] <= product_comb_5;
      end
   end

endmodule