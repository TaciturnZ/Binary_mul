module Binary_mul_6_1_bi (P, A, B, clk, rst_n, en);

   input signed [5:0] A; // 被乘数
   input signed [5:0] B; // 乘数
   input clk, rst_n, en;

   output reg signed [10:0] P; // 积
   wire signed [10:0] product_comb;

//new
   wire signed [5:0] A_c;
   assign A_c = ~A+1;
//row b0
   wire   wa10,wa20,wa30,wa40,wa50,wa60,wa70,wa80,wa90,wa100;

//row b1
   wire   wmhc01,wmhc11,wmhc21,wmhc31,wmhc41,wmhc51,wmhc61,wmhc71,wmhc81,wmhc91;
   wire   wmhs11,wmhs21,wmhs31,wmhs41,wmhs51,wmhs61,wmhs71,wmhs81,wmhs91; 

//row b2
   wire	 wmfc02,wmfc12,wmfc22,wmfc32,wmfc42,wmfc52,wmfc62,wmfc72,wmfc82;
   wire	 wmfs12,wmfs22,wmfs32,wmfs42,wmfs52,wmfs62,wmfs72,wmfs82;

//row b3
   wire	 wmfc03,wmfc13,wmfc23,wmfc33,wmfc43,wmfc53,wmfc63,wmfc73;
   wire   wmfs13,wmfs23,wmfs33,wmfs43,wmfs53,wmfs63,wmfs73;

//row b4
   wire   wmfc04,wmfc14,wmfc24,wmfc34,wmfc44,wmfc54,wmfc64;
   wire   wmfs14,wmfs24,wmfs34,wmfs44,wmfs54,wmfs64;

//row b5
   wire   wmfc05,wmfc15,wmfc25,wmfc35,wmfc45,wmfc55;
   wire   wmfs15,wmfs25,wmfs35,wmfs45,wmfs55;

//row b6
   wire	 wfac06,wfac16,wfac26,wfac36,wfac46;

//Row bo Implementation
   and a00(product_comb[0], A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   and a30(wa30, A[3], B[0]);
   and a40(wa40, A[4], B[0]);
   and a50(wa50, A[5], B[0]);
   assign wa60 = wa50;
   assign wa70 = wa50;
   assign wa80 = wa50;
   assign wa90 = wa50;
   assign wa100 = wa50;

//Row b1
   MHA     mha01(.Sum(product_comb[1]), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30));
   MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[3]), .B(B[1]), .Sin(wa40));
   MHA     mha41(.Sum(wmhs41), .Cout(wmhc41), .A(A[4]), .B(B[1]), .Sin(wa50));
   MHA     mha51(.Sum(wmhs51), .Cout(wmhc51), .A(A[5]), .B(B[1]), .Sin(wa60));

   MHA     mha61(.Sum(wmhs61), .Cout(wmhc61), .A(A[5]), .B(B[1]), .Sin(wa70));
   MHA     mha71(.Sum(wmhs71), .Cout(wmhc71), .A(A[5]), .B(B[1]), .Sin(wa80));
   MHA     mha81(.Sum(wmhs81), .Cout(wmhc81), .A(A[5]), .B(B[1]), .Sin(wa90));
   MHA     mha91(.Sum(wmhs91), .Cout(wmhc91), .A(A[5]), .B(B[1]), .Sin(wa100));
   

//Row b2
   MFA 	  mfa02(.Sum(product_comb[2]), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11), .Cin(wmhc01));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21), .Cin(wmhc11));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31), .Cin(wmhc21));
   MFA 	  mfa32(.Sum(wmfs32), .Cout(wmfc32), .A(A[3]), .B(B[2]), .Sin(wmhs41), .Cin(wmhc31));
   MFA 	  mfa42(.Sum(wmfs42), .Cout(wmfc42), .A(A[4]), .B(B[2]), .Sin(wmhs51), .Cin(wmhc41));
   MFA 	  mfa52(.Sum(wmfs52), .Cout(wmfc52), .A(A[5]), .B(B[2]), .Sin(wmhs61), .Cin(wmhc51));

   MFA 	  mfa62(.Sum(wmfs62), .Cout(wmfc62), .A(A[5]), .B(B[2]), .Sin(wmhs71), .Cin(wmhc61));
   MFA 	  mfa72(.Sum(wmfs72), .Cout(wmfc72), .A(A[5]), .B(B[2]), .Sin(wmhs81), .Cin(wmhc71));
   MFA 	  mfa82(.Sum(wmfs82), .Cout(wmfc82), .A(A[5]), .B(B[2]), .Sin(wmhs91), .Cin(wmhc81));

//Row b3
   MFA 	  mfa03(.Sum(product_comb[3]), .Cout(wmfc03), .A(A[0]), .B(B[3]), .Sin(wmfs12), .Cin(wmfc02));
   MFA 	  mfa13(.Sum(wmfs13), .Cout(wmfc13), .A(A[1]), .B(B[3]), .Sin(wmfs22), .Cin(wmfc12));
   MFA 	  mfa23(.Sum(wmfs23), .Cout(wmfc23), .A(A[2]), .B(B[3]), .Sin(wmfs32), .Cin(wmfc22));
   MFA 	  mfa33(.Sum(wmfs33), .Cout(wmfc33), .A(A[3]), .B(B[3]), .Sin(wmfs42), .Cin(wmfc32));
   MFA 	  mfa43(.Sum(wmfs43), .Cout(wmfc43), .A(A[4]), .B(B[3]), .Sin(wmfs52), .Cin(wmfc42));
   MFA 	  mfa53(.Sum(wmfs53), .Cout(wmfc53), .A(A[5]), .B(B[3]), .Sin(wmfs62), .Cin(wmfc52));

   MFA 	  mfa63(.Sum(wmfs63), .Cout(wmfc63), .A(A[5]), .B(B[3]), .Sin(wmfs72), .Cin(wmfc62));
   MFA 	  mfa73(.Sum(wmfs73), .Cout(wmfc73), .A(A[5]), .B(B[3]), .Sin(wmfs82), .Cin(wmfc72));

//Row b4
   MFA 	  mfa04(.Sum(product_comb[4]), .Cout(wmfc04), .A(A[0]), .B(B[4]), .Sin(wmfs13), .Cin(wmfc03));
   MFA 	  mfa14(.Sum(wmfs14), .Cout(wmfc14), .A(A[1]), .B(B[4]), .Sin(wmfs23), .Cin(wmfc13));
   MFA 	  mfa24(.Sum(wmfs24), .Cout(wmfc24), .A(A[2]), .B(B[4]), .Sin(wmfs33), .Cin(wmfc23));
   MFA 	  mfa34(.Sum(wmfs34), .Cout(wmfc34), .A(A[3]), .B(B[4]), .Sin(wmfs43), .Cin(wmfc33));
   MFA 	  mfa44(.Sum(wmfs44), .Cout(wmfc44), .A(A[4]), .B(B[4]), .Sin(wmfs53), .Cin(wmfc43));
   MFA 	  mfa54(.Sum(wmfs54), .Cout(wmfc54), .A(A[5]), .B(B[4]), .Sin(wmfs63), .Cin(wmfc53));

   MFA 	  mfa64(.Sum(wmfs64), .Cout(wmfc64), .A(A[5]), .B(B[4]), .Sin(wmfs73), .Cin(wmfc63));

//Row b5
   MFA 	  mfa05(.Sum(product_comb[5]), .Cout(wmfc05), .A(A_c[0]), .B(B[5]), .Sin(wmfs14), .Cin(wmfc04));
   MFA 	  mfa15(.Sum(wmfs15), .Cout(wmfc15), .A(A_c[1]), .B(B[5]), .Sin(wmfs24), .Cin(wmfc14));
   MFA 	  mfa25(.Sum(wmfs25), .Cout(wmfc25), .A(A_c[2]), .B(B[5]), .Sin(wmfs34), .Cin(wmfc24));
   MFA 	  mfa35(.Sum(wmfs35), .Cout(wmfc35), .A(A_c[3]), .B(B[5]), .Sin(wmfs44), .Cin(wmfc34));
   MFA 	  mfa45(.Sum(wmfs45), .Cout(wmfc45), .A(A_c[4]), .B(B[5]), .Sin(wmfs54), .Cin(wmfc44));
   MFA 	  mfa55(.Sum(wmfs55), .Cout(wmfc55), .A(A_c[5]), .B(B[5]), .Sin(wmfs64), .Cin(wmfc54));

//Row b6
   FA 	  fa06(.Sum(product_comb[6]), .Cout(wfac06), .A(wmfc05), .B(wmfs15), .Cin(1'b0));
   FA 	  fa16(.Sum(product_comb[7]), .Cout(wfac16), .A(wmfc15), .B(wmfs25), .Cin(wfac06));
   FA 	  fa26(.Sum(product_comb[8]), .Cout(wfac26), .A(wmfc25), .B(wmfs35), .Cin(wfac16));
   FA 	  fa36(.Sum(product_comb[9]), .Cout(wfac36), .A(wmfc35), .B(wmfs45), .Cin(wfac26));
   FA 	  fa46(.Sum(product_comb[10]), .Cout(wfac46), .A(wmfc45), .B(wmfs55), .Cin(wfac36));


   always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
         P <= 11'd0;
      else if (en)
         P <= product_comb;
      else 
         P <= P;
   end

endmodule


