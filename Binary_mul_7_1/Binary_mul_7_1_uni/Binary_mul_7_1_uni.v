module Binary_mul_7_1_uni (P, A, B, clk, rst_n, en);

   input unsigned [6:0] A; // 被乘数
   input unsigned [6:0] B; // 乘数    
   input clk, rst_n, en;         

   output reg unsigned [13:0] P; // 积
   wire unsigned [13:0] product_comb;

//row b0
   wire  wa10,wa20,wa30,wa40,wa50,wa60,wa70,wa80,wa90,wa100,wa110,wa120,wa130;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31,wmhc41,wmhc51,wmhc61,wmhc71,wmhc81,wmhc91,wmhc101,wmhc111,wmhc121;
   wire  wmhs11,wmhs21,wmhs31,wmhs41,wmhs51,wmhs61,wmhs71,wmhs81,wmhs91,wmhs101,wmhs111,wmhs121;

//row b2
   wire	wmfc02,wmfc12,wmfc22,wmfc32,wmfc42,wmfc52,wmfc62,wmfc72,wmfc82,wmfc92,wmfc102,wmfc112;
   wire	wmfs12,wmfs22,wmfs32,wmfs42,wmfs52,wmfs62,wmfs72,wmfs82,wmfs92,wmfs102,wmfs112;

//row b3
   wire	wmfc03,wmfc13,wmfc23,wmfc33,wmfc43,wmfc53,wmfc63,wmfc73,wmfc83,wmfc93,wmfc103;
   wire	wmfs13,wmfs23,wmfs33,wmfs43,wmfs53,wmfs63,wmfs73,wmfs83,wmfs93,wmfs103;

//row b4
   wire	wmfc04,wmfc14,wmfc24,wmfc34,wmfc44,wmfc54,wmfc64,wmfc74,wmfc84,wmfc94;
   wire  wmfs14,wmfs24,wmfs34,wmfs44,wmfs54,wmfs64,wmfs74,wmfs84,wmfs94;

//row b5
   wire  wmfc05,wmfc15,wmfc25,wmfc35,wmfc45,wmfc55,wmfc65,wmfc75,wmfc85;
   wire  wmfs15,wmfs25,wmfs35,wmfs45,wmfs55,wmfs65,wmfs75,wmfs85;

//row b6
   wire  wmfc06,wmfc16,wmfc26,wmfc36,wmfc46,wmfc56,wmfc66,wmfc76;
   wire  wmfs16,wmfs26,wmfs36,wmfs46,wmfs56,wmfs66,wmfs76;

//row b7
   wire  wfac07,wfac17,wfac27,wfac37,wfac47,wfac57,wfac67;



//Row bo Implementation
   and a00(product_comb[0], A[0], B[0]);
   and a10(wa10 ,A[1], B[0]);
   and a20(wa20 ,A[2], B[0]);
   and a30(wa30, A[3], B[0]);
   and a40(wa40, A[4], B[0]);
   and a50(wa50, A[5], B[0]);
   and a60(wa60, A[6], B[0]);
   assign wa70 = 0;
   assign wa80 = 0;
   assign wa90 = 0;
   assign wa100 = 0;
   assign wa110 = 0;
   assign wa120 = 0;
   assign wa130 = 0;

//Row b1
   MHA     mha01(.Sum(product_comb[1]), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30));
   MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[3]), .B(B[1]), .Sin(wa40));
   MHA     mha41(.Sum(wmhs41), .Cout(wmhc41), .A(A[4]), .B(B[1]), .Sin(wa50));
   MHA     mha51(.Sum(wmhs51), .Cout(wmhc51), .A(A[5]), .B(B[1]), .Sin(wa60));
   MHA     mha61(.Sum(wmhs61), .Cout(wmhc61), .A(A[6]), .B(B[1]), .Sin(wa70));
   
   MHA     mha71(.Sum(wmhs71), .Cout(wmhc71), .A(1'b0), .B(B[1]), .Sin(wa80));
   MHA     mha81(.Sum(wmhs81), .Cout(wmhc81), .A(1'b0), .B(B[1]), .Sin(wa90));
   MHA     mha91(.Sum(wmhs91), .Cout(wmhc91), .A(1'b0), .B(B[1]), .Sin(wa100));
   MHA     mha101(.Sum(wmhs101), .Cout(wmhc101), .A(1'b0), .B(B[1]), .Sin(wa110));
   MHA     mha111(.Sum(wmhs111), .Cout(wmhc111), .A(1'b0), .B(B[1]), .Sin(wa120));
   MHA     mha121(.Sum(wmhs121), .Cout(wmhc121), .A(1'b0), .B(B[1]), .Sin(wa130));

//Row b2
   MFA 	  mfa02(.Sum(product_comb[2]), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11), .Cin(wmhc01));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21), .Cin(wmhc11));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31), .Cin(wmhc21));
   MFA 	  mfa32(.Sum(wmfs32), .Cout(wmfc32), .A(A[3]), .B(B[2]), .Sin(wmhs41), .Cin(wmhc31));
   MFA 	  mfa42(.Sum(wmfs42), .Cout(wmfc42), .A(A[4]), .B(B[2]), .Sin(wmhs51), .Cin(wmhc41));
   MFA 	  mfa52(.Sum(wmfs52), .Cout(wmfc52), .A(A[5]), .B(B[2]), .Sin(wmhs61), .Cin(wmhc51)); 
   MFA 	  mfa62(.Sum(wmfs62), .Cout(wmfc62), .A(A[6]), .B(B[2]), .Sin(wmhs71), .Cin(wmhc61));
   
   MFA 	  mfa72(.Sum(wmfs72), .Cout(wmfc72), .A(1'b0), .B(B[2]), .Sin(wmhs81), .Cin(wmhc71));
   MFA 	  mfa82(.Sum(wmfs82), .Cout(wmfc82), .A(1'b0), .B(B[2]), .Sin(wmhs91), .Cin(wmhc81));
   MFA 	  mfa92(.Sum(wmfs92), .Cout(wmfc92), .A(1'b0), .B(B[2]), .Sin(wmhs101), .Cin(wmhc91));
   MFA 	  mfa102(.Sum(wmfs102), .Cout(wmfc102), .A(1'b0), .B(B[2]), .Sin(wmhs111), .Cin(wmhc101));
   MFA 	  mfa112(.Sum(wmfs112), .Cout(wmfc112), .A(1'b0), .B(B[2]), .Sin(wmhs121), .Cin(wmhc111));

//Row b3
   MFA 	  mfa03(.Sum(product_comb[3]), .Cout(wmfc03), .A(A[0]), .B(B[3]), .Sin(wmfs12), .Cin(wmfc02));
   MFA 	  mfa13(.Sum(wmfs13), .Cout(wmfc13), .A(A[1]), .B(B[3]), .Sin(wmfs22), .Cin(wmfc12));
   MFA 	  mfa23(.Sum(wmfs23), .Cout(wmfc23), .A(A[2]), .B(B[3]), .Sin(wmfs32), .Cin(wmfc22));
   MFA 	  mfa33(.Sum(wmfs33), .Cout(wmfc33), .A(A[3]), .B(B[3]), .Sin(wmfs42), .Cin(wmfc32));
   MFA 	  mfa43(.Sum(wmfs43), .Cout(wmfc43), .A(A[4]), .B(B[3]), .Sin(wmfs52), .Cin(wmfc42));
   MFA 	  mfa53(.Sum(wmfs53), .Cout(wmfc53), .A(A[5]), .B(B[3]), .Sin(wmfs62), .Cin(wmfc52));
   MFA 	  mfa63(.Sum(wmfs63), .Cout(wmfc63), .A(A[6]), .B(B[3]), .Sin(wmfs72), .Cin(wmfc62));
   
   MFA 	  mfa73(.Sum(wmfs73), .Cout(wmfc73), .A(1'b0), .B(B[3]), .Sin(wmfs82), .Cin(wmfc72));
   MFA 	  mfa83(.Sum(wmfs83), .Cout(wmfc83), .A(1'b0), .B(B[3]), .Sin(wmfs92), .Cin(wmfc82));
   MFA 	  mfa93(.Sum(wmfs93), .Cout(wmfc93), .A(1'b0), .B(B[3]), .Sin(wmfs102), .Cin(wmfc92));
   MFA 	  mfa103(.Sum(wmfs103), .Cout(wmfc103), .A(1'b0), .B(B[3]), .Sin(wmfs112), .Cin(wmfc102));
   
//Row b4
   MFA 	  mfa04(.Sum(product_comb[4]), .Cout(wmfc04), .A(A[0]), .B(B[4]), .Sin(wmfs13), .Cin(wmfc03));
   MFA 	  mfa14(.Sum(wmfs14), .Cout(wmfc14), .A(A[1]), .B(B[4]), .Sin(wmfs23), .Cin(wmfc13));
   MFA 	  mfa24(.Sum(wmfs24), .Cout(wmfc24), .A(A[2]), .B(B[4]), .Sin(wmfs33), .Cin(wmfc23));
   MFA 	  mfa34(.Sum(wmfs34), .Cout(wmfc34), .A(A[3]), .B(B[4]), .Sin(wmfs43), .Cin(wmfc33));
   MFA 	  mfa44(.Sum(wmfs44), .Cout(wmfc44), .A(A[4]), .B(B[4]), .Sin(wmfs53), .Cin(wmfc43));
   MFA     mfa54(.Sum(wmfs54), .Cout(wmfc54), .A(A[5]), .B(B[4]), .Sin(wmfs63), .Cin(wmfc53));
   MFA 	  mfa64(.Sum(wmfs64), .Cout(wmfc64), .A(A[6]), .B(B[4]), .Sin(wmfs73), .Cin(wmfc63));
   
   MFA     mfa74(.Sum(wmfs74), .Cout(wmfc74), .A(1'b0), .B(B[4]), .Sin(wmfs83), .Cin(wmfc73));
   MFA     mfa84(.Sum(wmfs84), .Cout(wmfc84), .A(1'b0), .B(B[4]), .Sin(wmfs93), .Cin(wmfc83));
   MFA     mfa94(.Sum(wmfs94), .Cout(wmfc94), .A(1'b0), .B(B[4]), .Sin(wmfs103), .Cin(wmfc93));

//Row b5
   MFA 	  mfa05(.Sum(product_comb[5]), .Cout(wmfc05), .A(A[0]), .B(B[5]), .Sin(wmfs14), .Cin(wmfc04));
   MFA 	  mfa15(.Sum(wmfs15), .Cout(wmfc15), .A(A[1]), .B(B[5]), .Sin(wmfs24), .Cin(wmfc14));
   MFA 	  mfa25(.Sum(wmfs25), .Cout(wmfc25), .A(A[2]), .B(B[5]), .Sin(wmfs34), .Cin(wmfc24));
   MFA 	  mfa35(.Sum(wmfs35), .Cout(wmfc35), .A(A[3]), .B(B[5]), .Sin(wmfs44), .Cin(wmfc34));
   MFA 	  mfa45(.Sum(wmfs45), .Cout(wmfc45), .A(A[4]), .B(B[5]), .Sin(wmfs54), .Cin(wmfc44));
   MFA     mfa55(.Sum(wmfs55), .Cout(wmfc55), .A(A[5]), .B(B[5]), .Sin(wmfs64), .Cin(wmfc54));
   MFA 	  mfa65(.Sum(wmfs65), .Cout(wmfc65), .A(A[6]), .B(B[5]), .Sin(wmfs74), .Cin(wmfc64));

   MFA 	  mfa75(.Sum(wmfs75), .Cout(wmfc75), .A(1'b0), .B(B[5]), .Sin(wmfs84), .Cin(wmfc74));
   MFA 	  mfa85(.Sum(wmfs85), .Cout(wmfc85), .A(1'b0), .B(B[5]), .Sin(wmfs94), .Cin(wmfc84));

//Row b6
   MFA 	  mfa06(.Sum(product_comb[6]), .Cout(wmfc06), .A(A[0]), .B(B[6]), .Sin(wmfs15), .Cin(wmfc05));
   MFA 	  mfa16(.Sum(wmfs16), .Cout(wmfc16), .A(A[1]), .B(B[6]), .Sin(wmfs25), .Cin(wmfc15));
   MFA 	  mfa26(.Sum(wmfs26), .Cout(wmfc26), .A(A[2]), .B(B[6]), .Sin(wmfs35), .Cin(wmfc25));
   MFA 	  mfa36(.Sum(wmfs36), .Cout(wmfc36), .A(A[3]), .B(B[6]), .Sin(wmfs45), .Cin(wmfc35));
   MFA 	  mfa46(.Sum(wmfs46), .Cout(wmfc46), .A(A[4]), .B(B[6]), .Sin(wmfs55), .Cin(wmfc45));
   MFA     mfa56(.Sum(wmfs56), .Cout(wmfc56), .A(A[5]), .B(B[6]), .Sin(wmfs65), .Cin(wmfc55));
   MFA     mfa66(.Sum(wmfs66), .Cout(wmfc66), .A(A[6]), .B(B[6]), .Sin(wmfs75), .Cin(wmfc65));

   MFA 	  mfa76(.Sum(wmfs76), .Cout(wmfc76), .A(1'b0), .B(B[6]), .Sin(wmfs85), .Cin(wmfc75));

//Row b7
   FA 	  fa07(.Sum(product_comb[7]), .Cout(wfac07), .A(wmfc06), .B(wmfs16), .Cin(1'b0));
   FA 	  fa17(.Sum(product_comb[8]), .Cout(wfac17), .A(wmfc16), .B(wmfs26), .Cin(wfac07));
   FA 	  fa27(.Sum(product_comb[9]), .Cout(wfac27), .A(wmfc26), .B(wmfs36), .Cin(wfac17));
   FA 	  fa37(.Sum(product_comb[10]), .Cout(wfac37), .A(wmfc36), .B(wmfs46), .Cin(wfac27));
   FA 	  fa47(.Sum(product_comb[11]), .Cout(wfac47), .A(wmfc46), .B(wmfs56), .Cin(wfac37));
   FA 	  fa57(.Sum(product_comb[12]), .Cout(wfac57), .A(wmfc56), .B(wmfs66), .Cin(wfac47));
   FA 	  fa67(.Sum(product_comb[13]), .Cout(wfac67), .A(wmfc66), .B(wmfs76), .Cin(wfac57));


   always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
         P <= 14'd0;
      else if (en)
         P <= product_comb;
      else 
         P <= P;
   end

endmodule


