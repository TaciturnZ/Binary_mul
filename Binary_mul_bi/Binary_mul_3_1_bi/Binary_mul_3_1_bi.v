module Binary_mul_3_1_bi (P, A, B, clk, rst_n, en);

   input signed [2:0] A; // 被乘数
   input signed [2:0] B; // 乘数
   input clk, rst_n, en;

   output reg signed [4:0] P; // 积
   wire signed [4:0] product_comb;

//new
   wire signed [2:0] A_c;
   assign A_c = ~A+1;
//row b0
   wire  wa10, wa20, wa30, wa40;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31;
   wire  wmhs11,wmhs21,wmhs31;

//row b2
   wire	 wmfc02,wmfc12,wmfc22;
   wire	 wmfs12,wmfs22;

//row b3
   wire  wfac03,wfac13;

//Row bo Implementation
   and a00(product_comb[0], A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   assign wa30 = wa20;
   assign wa40 = wa20;

//Row b1
   MHA     mha01(.Sum(product_comb[1]), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30));
   MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[2]), .B(B[1]), .Sin(wa40));

//Row b2
   MFA 	  mfa02(.Sum(product_comb[2]), .Cout(wmfc02), .A(A_c[0]), .B(B[2]), .Sin(wmhs11), .Cin(wmhc01));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A_c[1]), .B(B[2]), .Sin(wmhs21), .Cin(wmhc11));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A_c[2]), .B(B[2]), .Sin(wmhs31), .Cin(wmhc21));


//Row b3
   FA 	  fa03(.Sum(product_comb[3]), .Cout(wfac03), .A(wmfc02), .B(wmfs12), .Cin(1'b0));
   FA 	  fa13(.Sum(product_comb[4]), .Cout(wfac13), .A(wmfc12), .B(wmfs22), .Cin(wfac03));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
         P <= 5'd0;
      else if (en)
         P <= product_comb;
      else 
         P <= P;
   end

endmodule


