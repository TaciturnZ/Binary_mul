module Binary_mul_4_1_uni (P, A, B, clk, rst_n, en);

   input unsigned [3:0] A; // 被乘数
   input unsigned [3:0] B; // 乘数    
   input clk, rst_n, en;         

   output reg unsigned [7:0] P; // 积
   wire unsigned [7:0] product_comb;

//row b0
   wire  wa10, wa20, wa30, wa40, wa50, wa60, wa70;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31,wmhc41,wmhc51,wmhc61;
   wire  wmhs11,wmhs21,wmhs31,wmhs41,wmhs51,wmhs61;

//row b2
   wire	wmfc02,wmfc12,wmfc22,wmfc32,wmfc42,wmfc52;
   wire	wmfs12,wmfs22,wmfs32,wmfs42,wmfs52;

//row b3
   wire	wmfc03,wmfc13,wmfc23,wmfc33,wmfc43;
   wire	wmfs13,wmfs23,wmfs33,wmfs43;

//row b4
   wire	wfac04,wfac14,wfac24,wfac34;


//Row bo Implementation
   and a00(product_comb[0], A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   and a30(wa30, A[3], B[0]);
   assign wa40 = 0;
   assign wa50 = 0;
   assign wa60 = 0;
   assign wa70 = 0;

//Row b1
   MHA     mha01(.Sum(product_comb[1]), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30));
   MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[3]), .B(B[1]), .Sin(wa40));
   // assign
   MHA     mha41(.Sum(wmhs41), .Cout(wmhc41), .A(1'b0), .B(B[1]), .Sin(wa50));
   MHA     mha51(.Sum(wmhs51), .Cout(wmhc51), .A(1'b0), .B(B[1]), .Sin(wa60));
   MHA     mha61(.Sum(wmhs61), .Cout(wmhc61), .A(1'b0), .B(B[1]), .Sin(wa70));

//Row b2
   MFA 	  mfa02(.Sum(product_comb[2]), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11), .Cin(wmhc01));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21), .Cin(wmhc11));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31), .Cin(wmhc21));
   MFA 	  mfa32(.Sum(wmfs32), .Cout(wmfc32), .A(A[3]), .B(B[2]), .Sin(wmhs41), .Cin(wmhc31));
   MFA 	  mfa42(.Sum(wmfs42), .Cout(wmfc42), .A(1'b0), .B(B[2]), .Sin(wmhs51), .Cin(wmhc41));
   MFA 	  mfa52(.Sum(wmfs52), .Cout(wmfc52), .A(1'b0), .B(B[2]), .Sin(wmhs61), .Cin(wmhc51));

//Row b3
   MFA 	  mfa03(.Sum(product_comb[3]), .Cout(wmfc03), .A(A[0]), .B(B[3]), .Sin(wmfs12), .Cin(wmfc02));
   MFA 	  mfa13(.Sum(wmfs13), .Cout(wmfc13), .A(A[1]), .B(B[3]), .Sin(wmfs22), .Cin(wmfc12));
   MFA 	  mfa23(.Sum(wmfs23), .Cout(wmfc23), .A(A[2]), .B(B[3]), .Sin(wmfs32), .Cin(wmfc22));
   MFA 	  mfa33(.Sum(wmfs33), .Cout(wmfc33), .A(A[3]), .B(B[3]), .Sin(wmfs42), .Cin(wmfc32));
   MFA 	  mfa43(.Sum(wmfs43), .Cout(wmfc43), .A(1'b0), .B(B[3]), .Sin(wmfs52), .Cin(wmfc42));

//Row b4
   FA 	  fa03(.Sum(product_comb[4]), .Cout(wfac04), .A(wmfc03), .B(wmfs13), .Cin(1'b0));
   FA 	  fa13(.Sum(product_comb[5]), .Cout(wfac14), .A(wmfc13), .B(wmfs23), .Cin(wfac04));
   FA 	  fa23(.Sum(product_comb[6]), .Cout(wfac24), .A(wmfc23), .B(wmfs33), .Cin(wfac14));
   FA 	  fa33(.Sum(product_comb[7]), .Cout(wfac34), .A(wmfc33), .B(wmfs43), .Cin(wfac24));

   always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
         P <= 8'd0;
      else if (en)
         P <= product_comb;
   end

endmodule


