module Binary_mul_8_1_bi (P, A, B);

    input signed [7:0] A; // 被乘数
    input signed [7:0] B; // 乘数
    output signed [1:0] P; // 积
    wire signed [7:0] A_c;
    assign A_c = ~A+1;
                                                                                                         
//row b0
    wire  wa10, wa20, wa30, wa40, wa50, wa60, wa70, wa80, wa90, wa100, wa110, wa120, wa130, wa140;

//row b1
    wire  wmhc01, wmhc11, wmhc21, wmhc31, wmhc41, wmhc51, wmhc61, wmhc71, wmhc81, wmhc91, wmhc101, wmhc111, wmhc121, wmhc131;
    wire  wmhs11, wmhs21, wmhs31, wmhs41, wmhs51, wmhs61, wmhs71, wmhs81, wmhs91, wmhs101, wmhs111, wmhs121, wmhs131;

//row b2
    wire  wmfc02, wmfc12, wmfc22, wmfc32, wmfc42, wmfc52, wmfc62, wmfc72, wmfc82, wmfc92, wmfc102, wmfc112, wmfc122;
	wire  wmfs12, wmfs22, wmfs32, wmfs42, wmfs52, wmfs62, wmfs72, wmfs82, wmfs92, wmfs102, wmfs112, wmfs122;

//row b3
    wire  wmfc03, wmfc13, wmfc23, wmfc33, wmfc43, wmfc53, wmfc63, wmfc73, wmfc83, wmfc93, wmfc103, wmfc113;
    wire  wmfs13, wmfs23, wmfs33, wmfs43, wmfs53, wmfs63, wmfs73, wmfs83, wmfs93, wmfs103, wmfs113;

//row b4
    wire  wmfc04, wmfc14, wmfc24, wmfc34, wmfc44, wmfc54, wmfc64, wmfc74, wmfc84, wmfc94, wmfc104;
    wire  wmfs14, wmfs24, wmfs34, wmfs44, wmfs54, wmfs64, wmfs74, wmfs84, wmfs94, wmfs104;

//row b5
    wire  wmfc05, wmfc15, wmfc25, wmfc35, wmfc45, wmfc55, wmfc65, wmfc75, wmfc85, wmfc95;
    wire  wmfs15, wmfs25, wmfs35, wmfs45, wmfs55, wmfs65, wmfs75, wmfs85, wmfs95;

//row b6
    wire  wmfc06, wmfc16, wmfc26, wmfc36, wmfc46, wmfc56, wmfc66, wmfc76, wmfc86;
    wire  wmfs16, wmfs26, wmfs36, wmfs46, wmfs56, wmfs66, wmfs76, wmfs86;

//row b7
    wire  wmfc07, wmfc17, wmfc27, wmfc37, wmfc47, wmfc57, wmfc67, wmfc77;
    wire  wmfs17, wmfs27, wmfs37, wmfs47, wmfs57, wmfs67, wmfs77;

//row b8
    wire wfac08, wfac18, wfac28, wfac38, wfac48, wfac58, wfac68;

//Row bo Implementation
    and a00(P[0], A[0], B[0]);
    and a10(wa10 ,A[1], B[0]);
    and a20(wa20 ,A[2], B[0]);
    and a30(wa30, A[3], B[0]);
    and a40(wa40, A[4], B[0]);
    and a50(wa50 ,A[5], B[0]);
    and a60(wa60, A[6], B[0]);
    and a70(wa70, A[7], B[0]);

    assign wa80 = wa70;
    assign wa90 = wa70;
    assign wa100 = wa70;
    assign wa110 = wa70;
    assign wa120 = wa70;
    assign wa130 = wa70;
    assign wa140 = wa70;
    

//Row b1
    MHA     mha01(.Sum(P[1]), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10));
    MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20));
    MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30));
    MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[3]), .B(B[1]), .Sin(wa40));
    MHA     mha41(.Sum(wmhs41), .Cout(wmhc41), .A(A[4]), .B(B[1]), .Sin(wa50));
    MHA     mha51(.Sum(wmhs51), .Cout(wmhc51), .A(A[5]), .B(B[1]), .Sin(wa60));
    MHA     mha61(.Sum(wmhs61), .Cout(wmhc61), .A(A[6]), .B(B[1]), .Sin(wa70));
    MHA     mha71(.Sum(wmhs71), .Cout(wmhc71), .A(A[7]), .B(B[1]), .Sin(wa80));

    // assign wmhs81 = wmhs71 ^ wa80 ^ wa90; assign wmhc81 = A[7] & B[1] & wa90;
    // assign wmhs91 = wmhs81 ^ wa90 ^ wa100; assign wmhc91 = A[7] & B[1] & wa100;
    // assign wmhs101 = wmhs91 ^ wa100 ^ wa110; assign wmhc101 = A[7] & B[1] & wa110;
    // assign wmhs111 = wmhs101 ^ wa110 ^ wa120; assign wmhc111 = A[7] & B[1] & wa120;
    // assign wmhs121 = wmhs111 ^ wa120 ^ wa130; assign wmhc121 = A[7] & B[1] & wa130;
    // assign wmhs131 = wmhs121 ^ wa130 ^ wa140; assign wmhc131 = A[7] & B[1] & wa140;
    MHA     mha81(.Sum(wmhs81), .Cout(wmhc81), .A(A[7]), .B(B[1]), .Sin(wa90));
    MHA     mha91(.Sum(wmhs91), .Cout(wmhc91), .A(A[7]), .B(B[1]), .Sin(wa100));
    MHA     mha101(.Sum(wmhs101), .Cout(wmhc101), .A(A[7]), .B(B[1]), .Sin(wa110));
    MHA     mha111(.Sum(wmhs111), .Cout(wmhc111), .A(A[7]), .B(B[1]), .Sin(wa120));
    MHA     mha121(.Sum(wmhs121), .Cout(wmhc121), .A(A[7]), .B(B[1]), .Sin(wa130));
    MHA     mha131(.Sum(wmhs131), .Cout(wmhc131), .A(A[7]), .B(B[1]), .Sin(wa140));

    
//Row b2
    MFA 	  mfa02(.Sum(P[2]), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11), .Cin(wmhc01));
	MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21), .Cin(wmhc11));
	MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31), .Cin(wmhc21));
    MFA 	  mfa32(.Sum(wmfs32), .Cout(wmfc32), .A(A[3]), .B(B[2]), .Sin(wmhs41), .Cin(wmhc31));
	MFA 	  mfa42(.Sum(wmfs42), .Cout(wmfc42), .A(A[4]), .B(B[2]), .Sin(wmhs51), .Cin(wmhc41));
    MFA 	  mfa52(.Sum(wmfs52), .Cout(wmfc52), .A(A[5]), .B(B[2]), .Sin(wmhs61), .Cin(wmhc51));
    MFA 	  mfa62(.Sum(wmfs62), .Cout(wmfc62), .A(A[6]), .B(B[2]), .Sin(wmhs71), .Cin(wmhc61));
    MFA 	  mfa72(.Sum(wmfs72), .Cout(wmfc72), .A(A[7]), .B(B[2]), .Sin(wmhs81), .Cin(wmhc71));

    MFA 	  mfa82(.Sum(wmfs82), .Cout(wmfc82), .A(A[7]), .B(B[2]), .Sin(wmhs91), .Cin(wmhc81));
    MFA 	  mfa92(.Sum(wmfs92), .Cout(wmfc92), .A(A[7]), .B(B[2]), .Sin(wmhs101), .Cin(wmhc91));
	MFA 	  mfa102(.Sum(wmfs102), .Cout(wmfc102), .A(A[7]), .B(B[2]), .Sin(wmhs111), .Cin(wmhc101));
    MFA 	  mfa112(.Sum(wmfs112), .Cout(wmfc112), .A(A[7]), .B(B[2]), .Sin(wmhs121), .Cin(wmhc111));
    MFA 	  mfa122(.Sum(wmfs122), .Cout(wmfc122), .A(A[7]), .B(B[2]), .Sin(wmhs131), .Cin(wmhc121));


//Row b3
    MFA 	  mfa03(.Sum(P[3]), .Cout(wmfc03), .A(A[0]), .B(B[3]), .Sin(wmfs12), .Cin(wmfc02));
	MFA 	  mfa13(.Sum(wmfs13), .Cout(wmfc13), .A(A[1]), .B(B[3]), .Sin(wmfs22), .Cin(wmfc12));
	MFA 	  mfa23(.Sum(wmfs23), .Cout(wmfc23), .A(A[2]), .B(B[3]), .Sin(wmfs32), .Cin(wmfc22));
    MFA 	  mfa33(.Sum(wmfs33), .Cout(wmfc33), .A(A[3]), .B(B[3]), .Sin(wmfs42), .Cin(wmfc32));
	MFA 	  mfa43(.Sum(wmfs43), .Cout(wmfc43), .A(A[4]), .B(B[3]), .Sin(wmfs52), .Cin(wmfc42));
    MFA 	  mfa53(.Sum(wmfs53), .Cout(wmfc53), .A(A[5]), .B(B[3]), .Sin(wmfs62), .Cin(wmfc52));
    MFA 	  mfa63(.Sum(wmfs63), .Cout(wmfc63), .A(A[6]), .B(B[3]), .Sin(wmfs72), .Cin(wmfc62));
    MFA 	  mfa73(.Sum(wmfs73), .Cout(wmfc73), .A(A[7]), .B(B[3]), .Sin(wmfs82), .Cin(wmfc72));

    MFA 	  mfa83(.Sum(wmfs83), .Cout(wmfc83), .A(A[7]), .B(B[3]), .Sin(wmfs92), .Cin(wmfc82));
    MFA 	  mfa93(.Sum(wmfs93), .Cout(wmfc93), .A(A[7]), .B(B[3]), .Sin(wmfs102), .Cin(wmfc92));
	MFA 	  mfa103(.Sum(wmfs103), .Cout(wmfc103), .A(A[7]), .B(B[3]), .Sin(wmfs112), .Cin(wmfc102));
    MFA 	  mfa113(.Sum(wmfs113), .Cout(wmfc113), .A(A[7]), .B(B[3]), .Sin(wmfs122), .Cin(wmfc112));

//Row b4
    MFA 	  mfa04(.Sum(P[4]), .Cout(wmfc04), .A(A[0]), .B(B[4]), .Sin(wmfs13), .Cin(wmfc03));
	MFA 	  mfa14(.Sum(wmfs14), .Cout(wmfc14), .A(A[1]), .B(B[4]), .Sin(wmfs23), .Cin(wmfc13));
	MFA 	  mfa24(.Sum(wmfs24), .Cout(wmfc24), .A(A[2]), .B(B[4]), .Sin(wmfs33), .Cin(wmfc23));
    MFA 	  mfa34(.Sum(wmfs34), .Cout(wmfc34), .A(A[3]), .B(B[4]), .Sin(wmfs43), .Cin(wmfc33));
	MFA 	  mfa44(.Sum(wmfs44), .Cout(wmfc44), .A(A[4]), .B(B[4]), .Sin(wmfs53), .Cin(wmfc43));
    MFA 	  mfa54(.Sum(wmfs54), .Cout(wmfc54), .A(A[5]), .B(B[4]), .Sin(wmfs63), .Cin(wmfc53));
    MFA 	  mfa64(.Sum(wmfs64), .Cout(wmfc64), .A(A[6]), .B(B[4]), .Sin(wmfs73), .Cin(wmfc63));
    MFA 	  mfa74(.Sum(wmfs74), .Cout(wmfc74), .A(A[7]), .B(B[4]), .Sin(wmfs83), .Cin(wmfc73));

    MFA 	  mfa84(.Sum(wmfs84), .Cout(wmfc84), .A(A[7]), .B(B[4]), .Sin(wmfs93), .Cin(wmfc83));
    MFA 	  mfa94(.Sum(wmfs94), .Cout(wmfc94), .A(A[7]), .B(B[4]), .Sin(wmfs103), .Cin(wmfc93));
	MFA 	  mfa104(.Sum(wmfs104), .Cout(wmfc104), .A(A[7]), .B(B[4]), .Sin(wmfs113), .Cin(wmfc103));

//Row b5
    MFA 	  mfa05(.Sum(P[5]), .Cout(wmfc05), .A(A[0]), .B(B[5]), .Sin(wmfs14), .Cin(wmfc04));
	MFA 	  mfa15(.Sum(wmfs15), .Cout(wmfc15), .A(A[1]), .B(B[5]), .Sin(wmfs24), .Cin(wmfc14));
	MFA 	  mfa25(.Sum(wmfs25), .Cout(wmfc25), .A(A[2]), .B(B[5]), .Sin(wmfs34), .Cin(wmfc24));
    MFA 	  mfa35(.Sum(wmfs35), .Cout(wmfc35), .A(A[3]), .B(B[5]), .Sin(wmfs44), .Cin(wmfc34));
	MFA 	  mfa45(.Sum(wmfs45), .Cout(wmfc45), .A(A[4]), .B(B[5]), .Sin(wmfs54), .Cin(wmfc44));
    MFA 	  mfa55(.Sum(wmfs55), .Cout(wmfc55), .A(A[5]), .B(B[5]), .Sin(wmfs64), .Cin(wmfc54));
    MFA 	  mfa65(.Sum(wmfs65), .Cout(wmfc65), .A(A[6]), .B(B[5]), .Sin(wmfs74), .Cin(wmfc64));
    MFA 	  mfa75(.Sum(wmfs75), .Cout(wmfc75), .A(A[7]), .B(B[5]), .Sin(wmfs84), .Cin(wmfc74));

    MFA 	  mfa85(.Sum(wmfs85), .Cout(wmfc85), .A(A[7]), .B(B[5]), .Sin(wmfs94), .Cin(wmfc84));
    MFA 	  mfa95(.Sum(wmfs95), .Cout(wmfc95), .A(A[7]), .B(B[5]), .Sin(wmfs104), .Cin(wmfc94));

//Row b6
    MFA 	  mfa06(.Sum(P[6]), .Cout(wmfc06), .A(A[0]), .B(B[6]), .Sin(wmfs15), .Cin(wmfc05));
	MFA 	  mfa16(.Sum(wmfs16), .Cout(wmfc16), .A(A[1]), .B(B[6]), .Sin(wmfs25), .Cin(wmfc15));
	MFA 	  mfa26(.Sum(wmfs26), .Cout(wmfc26), .A(A[2]), .B(B[6]), .Sin(wmfs35), .Cin(wmfc25));
    MFA 	  mfa36(.Sum(wmfs36), .Cout(wmfc36), .A(A[3]), .B(B[6]), .Sin(wmfs45), .Cin(wmfc35));
	MFA 	  mfa46(.Sum(wmfs46), .Cout(wmfc46), .A(A[4]), .B(B[6]), .Sin(wmfs55), .Cin(wmfc45));
    MFA 	  mfa56(.Sum(wmfs56), .Cout(wmfc56), .A(A[5]), .B(B[6]), .Sin(wmfs65), .Cin(wmfc55));
    MFA 	  mfa66(.Sum(wmfs66), .Cout(wmfc66), .A(A[6]), .B(B[6]), .Sin(wmfs75), .Cin(wmfc65));
    MFA 	  mfa76(.Sum(wmfs76), .Cout(wmfc76), .A(A[7]), .B(B[6]), .Sin(wmfs85), .Cin(wmfc75));

    MFA 	  mfa86(.Sum(wmfs86), .Cout(wmfc86), .A(A[7]), .B(B[6]), .Sin(wmfs95), .Cin(wmfc85));

//Row b7
    MFA 	  mfa07(.Sum(P[7]), .Cout(wmfc07), .A(A_c[0]), .B(B[7]), .Sin(wmfs16), .Cin(wmfc06));
	MFA 	  mfa17(.Sum(wmfs17), .Cout(wmfc17), .A(A_c[1]), .B(B[7]), .Sin(wmfs26), .Cin(wmfc16));
	MFA 	  mfa27(.Sum(wmfs27), .Cout(wmfc27), .A(A_c[2]), .B(B[7]), .Sin(wmfs36), .Cin(wmfc26));
    MFA 	  mfa37(.Sum(wmfs37), .Cout(wmfc37), .A(A_c[3]), .B(B[7]), .Sin(wmfs46), .Cin(wmfc36));
	MFA 	  mfa47(.Sum(wmfs47), .Cout(wmfc47), .A(A_c[4]), .B(B[7]), .Sin(wmfs56), .Cin(wmfc46));
    MFA 	  mfa57(.Sum(wmfs57), .Cout(wmfc57), .A(A_c[5]), .B(B[7]), .Sin(wmfs66), .Cin(wmfc56));
    MFA 	  mfa67(.Sum(wmfs67), .Cout(wmfc67), .A(A_c[6]), .B(B[7]), .Sin(wmfs76), .Cin(wmfc66));
    MFA 	  mfa77(.Sum(wmfs77), .Cout(wmfc77), .A(A_c[7]), .B(B[7]), .Sin(wmfs86), .Cin(wmfc76));

//Row b8
    FA 	  fa08(.Sum(P[8]), .Cout(wfac08), .A(wmfc07), .B(wmfs17), .Cin(1'b0));
    FA 	  fa18(.Sum(P[9]), .Cout(wfac18), .A(wmfc17), .B(wmfs27), .Cin(wfac08));
    FA 	  fa28(.Sum(P[10]), .Cout(wfac28), .A(wmfc27), .B(wmfs37), .Cin(wfac18));
    FA 	  fa38(.Sum(P[11]), .Cout(wfac38), .A(wmfc37), .B(wmfs47), .Cin(wfac28));
    FA 	  fa48(.Sum(P[12]), .Cout(wfac48), .A(wmfc47), .B(wmfs57), .Cin(wfac38));
    FA 	  fa58(.Sum(P[13]), .Cout(wfac58), .A(wmfc57), .B(wmfs67), .Cin(wfac48));
    FA 	  fa68(.Sum(P[14]), .Cout(wfac68), .A(wmfc67), .B(wmfs77), .Cin(wfac58));

endmodule


