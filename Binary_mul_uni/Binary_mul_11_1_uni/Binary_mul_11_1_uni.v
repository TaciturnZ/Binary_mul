module Binary_mul_11_1_uni (P, A, B, clk, rst_n, en);

   input unsigned [10:0] A; // 被乘数
   input unsigned [10:0] B; // 乘数    
   input clk, rst_n, en;         

   output reg unsigned [21:0] P; // 积
   wire unsigned [21:0] product_comb;

//row b0
   wire  wa10,wa20,wa30,wa40,wa50,wa60,wa70,wa80,wa90,wa100,wa110,wa120,wa130,wa140,wa150,wa160,wa170,wa180,wa190,wa200,wa210;

//row b1
   wire  wmhc01,wmhc11,wmhc21,wmhc31,wmhc41,wmhc51,wmhc61,wmhc71,wmhc81,wmhc91,wmhc101,wmhc111,wmhc121,wmhc131,wmhc141,wmhc151,wmhc161,wmhc171,wmhc181,wmhc191,wmhc201;
   wire  wmhs11,wmhs21,wmhs31,wmhs41,wmhs51,wmhs61,wmhs71,wmhs81,wmhs91,wmhs101,wmhs111,wmhs121,wmhs131,wmhs141,wmhs151,wmhs161,wmhs171,wmhs181,wmhs191,wmhs201;

//row b2
   wire	 wmfc02,wmfc12,wmfc22,wmfc32,wmfc42,wmfc52,wmfc62,wmfc72,wmfc82,wmfc92,wmfc102,wmfc112,wmfc122,wmfc132,wmfc142,wmfc152,wmfc162,wmfc172,wmfc182,wmfc192;
   wire	 wmfs12,wmfs22,wmfs32,wmfs42,wmfs52,wmfs62,wmfs72,wmfs82,wmfs92,wmfs102,wmfs112,wmfs122,wmfs132,wmfs142,wmfs152,wmfs162,wmfs172,wmfs182,wmfs192;

//row b3
   wire	 wmfc03,wmfc13,wmfc23,wmfc33,wmfc43,wmfc53,wmfc63,wmfc73,wmfc83,wmfc93,wmfc103,wmfc113,wmfc123,wmfc133,wmfc143,wmfc153,wmfc163,wmfc173,wmfc183;
   wire	 wmfs13,wmfs23,wmfs33,wmfs43,wmfs53,wmfs63,wmfs73,wmfs83,wmfs93,wmfs103,wmfs113,wmfs123,wmfs133,wmfs143,wmfs153,wmfs163,wmfs173,wmfs183;

//row b4
   wire	wmfc04,wmfc14,wmfc24,wmfc34,wmfc44,wmfc54,wmfc64,wmfc74,wmfc84,wmfc94,wmfc104,wmfc114,wmfc124,wmfc134,wmfc144,wmfc154,wmfc164,wmfc174;
   wire  wmfs14,wmfs24,wmfs34,wmfs44,wmfs54,wmfs64,wmfs74,wmfs84,wmfs94,wmfs104,wmfs114,wmfs124,wmfs134,wmfs144,wmfs154,wmfs164,wmfs174;

//row b5
   wire  wmfc05,wmfc15,wmfc25,wmfc35,wmfc45,wmfc55,wmfc65,wmfc75,wmfc85,wmfc95,wmfc105,wmfc115,wmfc125,wmfc135,wmfc145,wmfc155,wmfc165;
   wire  wmfs15,wmfs25,wmfs35,wmfs45,wmfs55,wmfs65,wmfs75,wmfs85,wmfs95,wmfs105,wmfs115,wmfs125,wmfs135,wmfs145,wmfs155,wmfs165;

//row b6
   wire  wmfc06,wmfc16,wmfc26,wmfc36,wmfc46,wmfc56,wmfc66,wmfc76,wmfc86,wmfc96,wmfc106,wmfc116,wmfc126,wmfc136,wmfc146,wmfc156;
   wire  wmfs16,wmfs26,wmfs36,wmfs46,wmfs56,wmfs66,wmfs76,wmfs86,wmfs96,wmfs106,wmfs116,wmfs126,wmfs136,wmfs146,wmfs156;

//row b7
   wire  wmfc07,wmfc17,wmfc27,wmfc37,wmfc47,wmfc57,wmfc67,wmfc77,wmfc87,wmfc97,wmfc107,wmfc117,wmfc127,wmfc137,wmfc147;
   wire  wmfs17,wmfs27,wmfs37,wmfs47,wmfs57,wmfs67,wmfs77,wmfs87,wmfs97,wmfs107,wmfs117,wmfs127,wmfs137,wmfs147;

//row b8
   wire  wmfc08,wmfc18,wmfc28,wmfc38,wmfc48,wmfc58,wmfc68,wmfc78,wmfc88,wmfc98,wmfc108,wmfc118,wmfc128,wmfc138;
   wire  wmfs18,wmfs28,wmfs38,wmfs48,wmfs58,wmfs68,wmfs78,wmfs88,wmfs98,wmfs108,wmfs118,wmfs128,wmfs138;

//row b9
   wire  wmfc09,wmfc19,wmfc29,wmfc39,wmfc49,wmfc59,wmfc69,wmfc79,wmfc89,wmfc99,wmfc109,wmfc119,wmfc129;
   wire  wmfs19,wmfs29,wmfs39,wmfs49,wmfs59,wmfs69,wmfs79,wmfs89,wmfs99,wmfs109,wmfs119,wmfs129;

//row b10
   wire  wmfc010,wmfc110,wmfc210,wmfc310,wmfc410,wmfc510,wmfc610,wmfc710,wmfc810,wmfc910,wmfc1010,wmfc1110;
   wire  wmfs110,wmfs210,wmfs310,wmfs410,wmfs510,wmfs610,wmfs710,wmfs810,wmfs910,wmfs1010,wmfs1110;

//row b11
   wire  wfac011,wfac111,wfac211,wfac311,wfac411,wfac511,wfac611,wfac711,wfac811,wfac911,wfac1011;

//Row bo Implementation
   and a00(product_comb[0], A[0], B[0]);
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


//Row b1
   MHA     mha01(.Sum(product_comb[1]), .Cout(wmhc01), .A(A[0]), .B(B[1]), .Sin(wa10));
   MHA     mha11(.Sum(wmhs11), .Cout(wmhc11), .A(A[1]), .B(B[1]), .Sin(wa20));
   MHA     mha21(.Sum(wmhs21), .Cout(wmhc21), .A(A[2]), .B(B[1]), .Sin(wa30));
   MHA     mha31(.Sum(wmhs31), .Cout(wmhc31), .A(A[3]), .B(B[1]), .Sin(wa40));
   MHA     mha41(.Sum(wmhs41), .Cout(wmhc41), .A(A[4]), .B(B[1]), .Sin(wa50));
   MHA     mha51(.Sum(wmhs51), .Cout(wmhc51), .A(A[5]), .B(B[1]), .Sin(wa60));
   MHA     mha61(.Sum(wmhs61), .Cout(wmhc61), .A(A[6]), .B(B[1]), .Sin(wa70));
   MHA     mha71(.Sum(wmhs71), .Cout(wmhc71), .A(A[7]), .B(B[1]), .Sin(wa80));
   MHA     mha81(.Sum(wmhs81), .Cout(wmhc81), .A(A[8]), .B(B[1]), .Sin(wa90));
   MHA     mha91(.Sum(wmhs91), .Cout(wmhc91), .A(A[9]), .B(B[1]), .Sin(wa100));
   MHA     mha101(.Sum(wmhs101), .Cout(wmhc101), .A(A[10]), .B(B[1]), .Sin(wa110));

   MHA     mha111(.Sum(wmhs111), .Cout(wmhc111), .A(1'b0), .B(B[1]), .Sin(wa120));
   MHA     mha121(.Sum(wmhs121), .Cout(wmhc121), .A(1'b0), .B(B[1]), .Sin(wa130));
   MHA     mha131(.Sum(wmhs131), .Cout(wmhc131), .A(1'b0), .B(B[1]), .Sin(wa140));
   MHA     mha141(.Sum(wmhs141), .Cout(wmhc141), .A(1'b0), .B(B[1]), .Sin(wa150));
   MHA     mha151(.Sum(wmhs151), .Cout(wmhc151), .A(1'b0), .B(B[1]), .Sin(wa160));
   MHA     mha161(.Sum(wmhs161), .Cout(wmhc161), .A(1'b0), .B(B[1]), .Sin(wa170));
   MHA     mha171(.Sum(wmhs171), .Cout(wmhc171), .A(1'b0), .B(B[1]), .Sin(wa180));
   MHA     mha181(.Sum(wmhs181), .Cout(wmhc181), .A(1'b0), .B(B[1]), .Sin(wa190));
   MHA     mha191(.Sum(wmhs191), .Cout(wmhc191), .A(1'b0), .B(B[1]), .Sin(wa200));
   MHA     mha201(.Sum(wmhs201), .Cout(wmhc201), .A(1'b0), .B(B[1]), .Sin(wa210));

//Row b2
   MFA 	  mfa02(.Sum(product_comb[2]), .Cout(wmfc02), .A(A[0]), .B(B[2]), .Sin(wmhs11), .Cin(wmhc01));
   MFA 	  mfa12(.Sum(wmfs12), .Cout(wmfc12), .A(A[1]), .B(B[2]), .Sin(wmhs21), .Cin(wmhc11));
   MFA 	  mfa22(.Sum(wmfs22), .Cout(wmfc22), .A(A[2]), .B(B[2]), .Sin(wmhs31), .Cin(wmhc21));
   MFA 	  mfa32(.Sum(wmfs32), .Cout(wmfc32), .A(A[3]), .B(B[2]), .Sin(wmhs41), .Cin(wmhc31));
   MFA 	  mfa42(.Sum(wmfs42), .Cout(wmfc42), .A(A[4]), .B(B[2]), .Sin(wmhs51), .Cin(wmhc41));
   MFA 	  mfa52(.Sum(wmfs52), .Cout(wmfc52), .A(A[5]), .B(B[2]), .Sin(wmhs61), .Cin(wmhc51)); 
   MFA 	  mfa62(.Sum(wmfs62), .Cout(wmfc62), .A(A[6]), .B(B[2]), .Sin(wmhs71), .Cin(wmhc61));
   MFA 	  mfa72(.Sum(wmfs72), .Cout(wmfc72), .A(A[7]), .B(B[2]), .Sin(wmhs81), .Cin(wmhc71));
   MFA 	  mfa82(.Sum(wmfs82), .Cout(wmfc82), .A(A[8]), .B(B[2]), .Sin(wmhs91), .Cin(wmhc81));
   MFA 	  mfa92(.Sum(wmfs92), .Cout(wmfc92), .A(A[9]), .B(B[2]), .Sin(wmhs101), .Cin(wmhc91));
   MFA 	  mfa102(.Sum(wmfs102), .Cout(wmfc102), .A(A[10]), .B(B[2]), .Sin(wmhs111), .Cin(wmhc101));

   MFA 	  mfa112(.Sum(wmfs112), .Cout(wmfc112), .A(1'b0), .B(B[2]), .Sin(wmhs121), .Cin(wmhc111));
   MFA 	  mfa122(.Sum(wmfs122), .Cout(wmfc122), .A(1'b0), .B(B[2]), .Sin(wmhs131), .Cin(wmhc121));
   MFA 	  mfa132(.Sum(wmfs132), .Cout(wmfc132), .A(1'b0), .B(B[2]), .Sin(wmhs141), .Cin(wmhc131));
   MFA 	  mfa142(.Sum(wmfs142), .Cout(wmfc142), .A(1'b0), .B(B[2]), .Sin(wmhs151), .Cin(wmhc141));
   MFA 	  mfa152(.Sum(wmfs152), .Cout(wmfc152), .A(1'b0), .B(B[2]), .Sin(wmhs161), .Cin(wmhc151));
   MFA 	  mfa162(.Sum(wmfs162), .Cout(wmfc162), .A(1'b0), .B(B[2]), .Sin(wmhs171), .Cin(wmhc161));
   MFA 	  mfa172(.Sum(wmfs172), .Cout(wmfc172), .A(1'b0), .B(B[2]), .Sin(wmhs181), .Cin(wmhc171));
   MFA 	  mfa182(.Sum(wmfs182), .Cout(wmfc182), .A(1'b0), .B(B[2]), .Sin(wmhs191), .Cin(wmhc181));
   MFA 	  mfa192(.Sum(wmfs192), .Cout(wmfc192), .A(1'b0), .B(B[2]), .Sin(wmhs201), .Cin(wmhc191));


//Row b3
   MFA 	  mfa03(.Sum(product_comb[3]), .Cout(wmfc03), .A(A[0]), .B(B[3]), .Sin(wmfs12), .Cin(wmfc02));
   MFA 	  mfa13(.Sum(wmfs13), .Cout(wmfc13), .A(A[1]), .B(B[3]), .Sin(wmfs22), .Cin(wmfc12));
   MFA 	  mfa23(.Sum(wmfs23), .Cout(wmfc23), .A(A[2]), .B(B[3]), .Sin(wmfs32), .Cin(wmfc22));
   MFA 	  mfa33(.Sum(wmfs33), .Cout(wmfc33), .A(A[3]), .B(B[3]), .Sin(wmfs42), .Cin(wmfc32));
   MFA 	  mfa43(.Sum(wmfs43), .Cout(wmfc43), .A(A[4]), .B(B[3]), .Sin(wmfs52), .Cin(wmfc42));
   MFA 	  mfa53(.Sum(wmfs53), .Cout(wmfc53), .A(A[5]), .B(B[3]), .Sin(wmfs62), .Cin(wmfc52));
   MFA 	  mfa63(.Sum(wmfs63), .Cout(wmfc63), .A(A[6]), .B(B[3]), .Sin(wmfs72), .Cin(wmfc62));
   MFA 	  mfa73(.Sum(wmfs73), .Cout(wmfc73), .A(A[7]), .B(B[3]), .Sin(wmfs82), .Cin(wmfc72));
   MFA 	  mfa83(.Sum(wmfs83), .Cout(wmfc83), .A(A[8]), .B(B[3]), .Sin(wmfs92), .Cin(wmfc82));
   MFA 	  mfa93(.Sum(wmfs93), .Cout(wmfc93), .A(A[9]), .B(B[3]), .Sin(wmfs102), .Cin(wmfc92));
   MFA 	  mfa103(.Sum(wmfs103), .Cout(wmfc103), .A(A[10]), .B(B[3]), .Sin(wmfs112), .Cin(wmfc102));

   MFA 	  mfa113(.Sum(wmfs113), .Cout(wmfc113), .A(1'b0), .B(B[3]), .Sin(wmfs122), .Cin(wmfc112));
   MFA 	  mfa123(.Sum(wmfs123), .Cout(wmfc123), .A(1'b0), .B(B[3]), .Sin(wmfs132), .Cin(wmfc122));
   MFA 	  mfa133(.Sum(wmfs133), .Cout(wmfc133), .A(1'b0), .B(B[3]), .Sin(wmfs142), .Cin(wmfc132));
   MFA 	  mfa143(.Sum(wmfs143), .Cout(wmfc143), .A(1'b0), .B(B[3]), .Sin(wmfs152), .Cin(wmfc142));
   MFA 	  mfa153(.Sum(wmfs153), .Cout(wmfc153), .A(1'b0), .B(B[3]), .Sin(wmfs162), .Cin(wmfc152));
   MFA 	  mfa163(.Sum(wmfs163), .Cout(wmfc163), .A(1'b0), .B(B[3]), .Sin(wmfs172), .Cin(wmfc162));
   MFA 	  mfa173(.Sum(wmfs173), .Cout(wmfc173), .A(1'b0), .B(B[3]), .Sin(wmfs182), .Cin(wmfc172));
   MFA 	  mfa183(.Sum(wmfs183), .Cout(wmfc183), .A(1'b0), .B(B[3]), .Sin(wmfs192), .Cin(wmfc182));
   
//Row b4
   MFA 	  mfa04(.Sum(product_comb[4]), .Cout(wmfc04), .A(A[0]), .B(B[4]), .Sin(wmfs13), .Cin(wmfc03));
   MFA 	  mfa14(.Sum(wmfs14), .Cout(wmfc14), .A(A[1]), .B(B[4]), .Sin(wmfs23), .Cin(wmfc13));
   MFA 	  mfa24(.Sum(wmfs24), .Cout(wmfc24), .A(A[2]), .B(B[4]), .Sin(wmfs33), .Cin(wmfc23));
   MFA 	  mfa34(.Sum(wmfs34), .Cout(wmfc34), .A(A[3]), .B(B[4]), .Sin(wmfs43), .Cin(wmfc33));
   MFA 	  mfa44(.Sum(wmfs44), .Cout(wmfc44), .A(A[4]), .B(B[4]), .Sin(wmfs53), .Cin(wmfc43));
   MFA    mfa54(.Sum(wmfs54), .Cout(wmfc54), .A(A[5]), .B(B[4]), .Sin(wmfs63), .Cin(wmfc53));
   MFA 	  mfa64(.Sum(wmfs64), .Cout(wmfc64), .A(A[6]), .B(B[4]), .Sin(wmfs73), .Cin(wmfc63));
   MFA    mfa74(.Sum(wmfs74), .Cout(wmfc74), .A(A[7]), .B(B[4]), .Sin(wmfs83), .Cin(wmfc73));
   MFA    mfa84(.Sum(wmfs84), .Cout(wmfc84), .A(A[8]), .B(B[4]), .Sin(wmfs93), .Cin(wmfc83));
   MFA     mfa94(.Sum(wmfs94), .Cout(wmfc94), .A(A[9]), .B(B[4]), .Sin(wmfs103), .Cin(wmfc93));
   MFA     mfa104(.Sum(wmfs104), .Cout(wmfc104), .A(A[10]), .B(B[4]), .Sin(wmfs113), .Cin(wmfc103));

   MFA     mfa114(.Sum(wmfs114), .Cout(wmfc114), .A(1'b0), .B(B[4]), .Sin(wmfs123), .Cin(wmfc113));
   MFA     mfa124(.Sum(wmfs124), .Cout(wmfc124), .A(1'b0), .B(B[4]), .Sin(wmfs133), .Cin(wmfc123));
   MFA     mfa134(.Sum(wmfs134), .Cout(wmfc134), .A(1'b0), .B(B[4]), .Sin(wmfs143), .Cin(wmfc133));
   MFA     mfa144(.Sum(wmfs144), .Cout(wmfc144), .A(1'b0), .B(B[4]), .Sin(wmfs153), .Cin(wmfc143));
   MFA     mfa154(.Sum(wmfs154), .Cout(wmfc154), .A(1'b0), .B(B[4]), .Sin(wmfs163), .Cin(wmfc153));
   MFA     mfa164(.Sum(wmfs164), .Cout(wmfc164), .A(1'b0), .B(B[4]), .Sin(wmfs173), .Cin(wmfc163));
   MFA     mfa174(.Sum(wmfs174), .Cout(wmfc174), .A(1'b0), .B(B[4]), .Sin(wmfs183), .Cin(wmfc173));
 
//Row b5
   MFA 	  mfa05(.Sum(product_comb[5]), .Cout(wmfc05), .A(A[0]), .B(B[5]), .Sin(wmfs14), .Cin(wmfc04));
   MFA 	  mfa15(.Sum(wmfs15), .Cout(wmfc15), .A(A[1]), .B(B[5]), .Sin(wmfs24), .Cin(wmfc14));
   MFA 	  mfa25(.Sum(wmfs25), .Cout(wmfc25), .A(A[2]), .B(B[5]), .Sin(wmfs34), .Cin(wmfc24));
   MFA 	  mfa35(.Sum(wmfs35), .Cout(wmfc35), .A(A[3]), .B(B[5]), .Sin(wmfs44), .Cin(wmfc34));
   MFA 	  mfa45(.Sum(wmfs45), .Cout(wmfc45), .A(A[4]), .B(B[5]), .Sin(wmfs54), .Cin(wmfc44));
   MFA    mfa55(.Sum(wmfs55), .Cout(wmfc55), .A(A[5]), .B(B[5]), .Sin(wmfs64), .Cin(wmfc54));
   MFA 	  mfa65(.Sum(wmfs65), .Cout(wmfc65), .A(A[6]), .B(B[5]), .Sin(wmfs74), .Cin(wmfc64));
   MFA 	  mfa75(.Sum(wmfs75), .Cout(wmfc75), .A(A[7]), .B(B[5]), .Sin(wmfs84), .Cin(wmfc74));
   MFA 	  mfa85(.Sum(wmfs85), .Cout(wmfc85), .A(A[8]), .B(B[5]), .Sin(wmfs94), .Cin(wmfc84));
   MFA 	  mfa95(.Sum(wmfs95), .Cout(wmfc95), .A(A[9]), .B(B[5]), .Sin(wmfs104), .Cin(wmfc94));
   MFA 	  mfa105(.Sum(wmfs105), .Cout(wmfc105), .A(A[10]), .B(B[5]), .Sin(wmfs114), .Cin(wmfc104));

   MFA 	  mfa115(.Sum(wmfs115), .Cout(wmfc115), .A(1'b0), .B(B[5]), .Sin(wmfs124), .Cin(wmfc114));
   MFA 	  mfa125(.Sum(wmfs125), .Cout(wmfc125), .A(1'b0), .B(B[5]), .Sin(wmfs134), .Cin(wmfc124));
   MFA 	  mfa135(.Sum(wmfs135), .Cout(wmfc135), .A(1'b0), .B(B[5]), .Sin(wmfs144), .Cin(wmfc134));
   MFA 	  mfa145(.Sum(wmfs145), .Cout(wmfc145), .A(1'b0), .B(B[5]), .Sin(wmfs154), .Cin(wmfc144));
   MFA 	  mfa155(.Sum(wmfs155), .Cout(wmfc155), .A(1'b0), .B(B[5]), .Sin(wmfs164), .Cin(wmfc154));
   MFA 	  mfa165(.Sum(wmfs165), .Cout(wmfc165), .A(1'b0), .B(B[5]), .Sin(wmfs174), .Cin(wmfc164));

//Row b6
   MFA 	  mfa06(.Sum(product_comb[6]), .Cout(wmfc06), .A(A[0]), .B(B[6]), .Sin(wmfs15), .Cin(wmfc05));
   MFA 	  mfa16(.Sum(wmfs16), .Cout(wmfc16), .A(A[1]), .B(B[6]), .Sin(wmfs25), .Cin(wmfc15));
   MFA 	  mfa26(.Sum(wmfs26), .Cout(wmfc26), .A(A[2]), .B(B[6]), .Sin(wmfs35), .Cin(wmfc25));
   MFA 	  mfa36(.Sum(wmfs36), .Cout(wmfc36), .A(A[3]), .B(B[6]), .Sin(wmfs45), .Cin(wmfc35));
   MFA 	  mfa46(.Sum(wmfs46), .Cout(wmfc46), .A(A[4]), .B(B[6]), .Sin(wmfs55), .Cin(wmfc45));
   MFA    mfa56(.Sum(wmfs56), .Cout(wmfc56), .A(A[5]), .B(B[6]), .Sin(wmfs65), .Cin(wmfc55));
   MFA    mfa66(.Sum(wmfs66), .Cout(wmfc66), .A(A[6]), .B(B[6]), .Sin(wmfs75), .Cin(wmfc65));
   MFA 	  mfa76(.Sum(wmfs76), .Cout(wmfc76), .A(A[7]), .B(B[6]), .Sin(wmfs85), .Cin(wmfc75));
   MFA 	  mfa86(.Sum(wmfs86), .Cout(wmfc86), .A(A[8]), .B(B[6]), .Sin(wmfs95), .Cin(wmfc85));
   MFA 	  mfa96(.Sum(wmfs96), .Cout(wmfc96), .A(A[9]), .B(B[6]), .Sin(wmfs105), .Cin(wmfc95));
   MFA 	  mfa106(.Sum(wmfs106), .Cout(wmfc106), .A(A[10]), .B(B[6]), .Sin(wmfs115), .Cin(wmfc105));

   MFA 	  mfa116(.Sum(wmfs116), .Cout(wmfc116), .A(1'b0), .B(B[6]), .Sin(wmfs125), .Cin(wmfc115));
   MFA 	  mfa126(.Sum(wmfs126), .Cout(wmfc126), .A(1'b0), .B(B[6]), .Sin(wmfs135), .Cin(wmfc125));
   MFA 	  mfa136(.Sum(wmfs136), .Cout(wmfc136), .A(1'b0), .B(B[6]), .Sin(wmfs145), .Cin(wmfc135));
   MFA 	  mfa146(.Sum(wmfs146), .Cout(wmfc146), .A(1'b0), .B(B[6]), .Sin(wmfs155), .Cin(wmfc145));
   MFA 	  mfa156(.Sum(wmfs156), .Cout(wmfc156), .A(1'b0), .B(B[6]), .Sin(wmfs165), .Cin(wmfc155));

//Row b7
   MFA 	  mfa07(.Sum(product_comb[7]), .Cout(wmfc07), .A(A[0]), .B(B[7]), .Sin(wmfs16), .Cin(wmfc06));
   MFA 	  mfa17(.Sum(wmfs17), .Cout(wmfc17), .A(A[1]), .B(B[7]), .Sin(wmfs26), .Cin(wmfc16));
   MFA 	  mfa27(.Sum(wmfs27), .Cout(wmfc27), .A(A[2]), .B(B[7]), .Sin(wmfs36), .Cin(wmfc26));
   MFA 	  mfa37(.Sum(wmfs37), .Cout(wmfc37), .A(A[3]), .B(B[7]), .Sin(wmfs46), .Cin(wmfc36));
   MFA 	  mfa47(.Sum(wmfs47), .Cout(wmfc47), .A(A[4]), .B(B[7]), .Sin(wmfs56), .Cin(wmfc46));
   MFA    mfa57(.Sum(wmfs57), .Cout(wmfc57), .A(A[5]), .B(B[7]), .Sin(wmfs66), .Cin(wmfc56));
   MFA    mfa67(.Sum(wmfs67), .Cout(wmfc67), .A(A[6]), .B(B[7]), .Sin(wmfs76), .Cin(wmfc66));
   MFA 	  mfa77(.Sum(wmfs77), .Cout(wmfc77), .A(A[7]), .B(B[7]), .Sin(wmfs86), .Cin(wmfc76));
   MFA 	  mfa87(.Sum(wmfs87), .Cout(wmfc87), .A(A[8]), .B(B[7]), .Sin(wmfs96), .Cin(wmfc86));
   MFA 	  mfa97(.Sum(wmfs97), .Cout(wmfc97), .A(A[9]), .B(B[7]), .Sin(wmfs106), .Cin(wmfc96));
   MFA 	  mfa107(.Sum(wmfs107), .Cout(wmfc107), .A(A[10]), .B(B[7]), .Sin(wmfs116), .Cin(wmfc106));

   MFA 	  mfa117(.Sum(wmfs117), .Cout(wmfc117), .A(1'b0), .B(B[7]), .Sin(wmfs126), .Cin(wmfc116));
   MFA 	  mfa127(.Sum(wmfs127), .Cout(wmfc127), .A(1'b0), .B(B[7]), .Sin(wmfs136), .Cin(wmfc126));
   MFA 	  mfa137(.Sum(wmfs137), .Cout(wmfc137), .A(1'b0), .B(B[7]), .Sin(wmfs146), .Cin(wmfc136));
   MFA 	  mfa147(.Sum(wmfs147), .Cout(wmfc147), .A(1'b0), .B(B[7]), .Sin(wmfs156), .Cin(wmfc146));

//Row b8
   MFA 	  mfa08(.Sum(product_comb[8]), .Cout(wmfc08), .A(A[0]), .B(B[8]), .Sin(wmfs17), .Cin(wmfc07));
   MFA 	  mfa18(.Sum(wmfs18), .Cout(wmfc18), .A(A[1]), .B(B[8]), .Sin(wmfs27), .Cin(wmfc17));
   MFA 	  mfa28(.Sum(wmfs28), .Cout(wmfc28), .A(A[2]), .B(B[8]), .Sin(wmfs37), .Cin(wmfc27));
   MFA 	  mfa38(.Sum(wmfs38), .Cout(wmfc38), .A(A[3]), .B(B[8]), .Sin(wmfs47), .Cin(wmfc37));
   MFA 	  mfa48(.Sum(wmfs48), .Cout(wmfc48), .A(A[4]), .B(B[8]), .Sin(wmfs57), .Cin(wmfc47));
   MFA    mfa58(.Sum(wmfs58), .Cout(wmfc58), .A(A[5]), .B(B[8]), .Sin(wmfs67), .Cin(wmfc57));
   MFA    mfa68(.Sum(wmfs68), .Cout(wmfc68), .A(A[6]), .B(B[8]), .Sin(wmfs77), .Cin(wmfc67));
   MFA 	  mfa78(.Sum(wmfs78), .Cout(wmfc78), .A(A[7]), .B(B[8]), .Sin(wmfs87), .Cin(wmfc77));
   MFA 	  mfa88(.Sum(wmfs88), .Cout(wmfc88), .A(A[8]), .B(B[8]), .Sin(wmfs97), .Cin(wmfc87));
   MFA 	  mfa98(.Sum(wmfs98), .Cout(wmfc98), .A(A[9]), .B(B[8]), .Sin(wmfs107), .Cin(wmfc97));
   MFA 	  mfa108(.Sum(wmfs108), .Cout(wmfc108), .A(A[10]), .B(B[8]), .Sin(wmfs117), .Cin(wmfc107));

   MFA 	  mfa118(.Sum(wmfs118), .Cout(wmfc118), .A(1'b0), .B(B[8]), .Sin(wmfs127), .Cin(wmfc117));
   MFA 	  mfa128(.Sum(wmfs128), .Cout(wmfc128), .A(1'b0), .B(B[8]), .Sin(wmfs137), .Cin(wmfc127));
   MFA 	  mfa138(.Sum(wmfs138), .Cout(wmfc138), .A(1'b0), .B(B[8]), .Sin(wmfs147), .Cin(wmfc137));

//Row b9    
   MFA 	  mfa09(.Sum(product_comb[9]), .Cout(wmfc09), .A(A[0]), .B(B[9]), .Sin(wmfs18), .Cin(wmfc08));
   MFA 	  mfa19(.Sum(wmfs19), .Cout(wmfc19), .A(A[1]), .B(B[9]), .Sin(wmfs28), .Cin(wmfc18));
   MFA 	  mfa29(.Sum(wmfs29), .Cout(wmfc29), .A(A[2]), .B(B[9]), .Sin(wmfs38), .Cin(wmfc28));
   MFA 	  mfa39(.Sum(wmfs39), .Cout(wmfc39), .A(A[3]), .B(B[9]), .Sin(wmfs48), .Cin(wmfc38));
   MFA 	  mfa49(.Sum(wmfs49), .Cout(wmfc49), .A(A[4]), .B(B[9]), .Sin(wmfs58), .Cin(wmfc48));
   MFA    mfa59(.Sum(wmfs59), .Cout(wmfc59), .A(A[5]), .B(B[9]), .Sin(wmfs68), .Cin(wmfc58));
   MFA    mfa69(.Sum(wmfs69), .Cout(wmfc69), .A(A[6]), .B(B[9]), .Sin(wmfs78), .Cin(wmfc68));
   MFA 	  mfa79(.Sum(wmfs79), .Cout(wmfc79), .A(A[7]), .B(B[9]), .Sin(wmfs88), .Cin(wmfc78));
   MFA 	  mfa89(.Sum(wmfs89), .Cout(wmfc89), .A(A[8]), .B(B[9]), .Sin(wmfs98), .Cin(wmfc88));
   MFA 	  mfa99(.Sum(wmfs99), .Cout(wmfc99), .A(A[9]), .B(B[9]), .Sin(wmfs108), .Cin(wmfc98));
   MFA 	  mfa109(.Sum(wmfs109), .Cout(wmfc109), .A(A[10]), .B(B[9]), .Sin(wmfs118), .Cin(wmfc108));
   
   MFA 	  mfa119(.Sum(wmfs119), .Cout(wmfc119), .A(1'b0), .B(B[9]), .Sin(wmfs128), .Cin(wmfc118));
   MFA 	  mfa129(.Sum(wmfs129), .Cout(wmfc129), .A(1'b0), .B(B[9]), .Sin(wmfs138), .Cin(wmfc128));

//Row b9    
   MFA 	  mfa010(.Sum(product_comb[10]), .Cout(wmfc010), .A(A[0]), .B(B[10]), .Sin(wmfs19), .Cin(wmfc09));
   MFA 	  mfa110(.Sum(wmfs110), .Cout(wmfc110), .A(A[1]), .B(B[10]), .Sin(wmfs29), .Cin(wmfc19));
   MFA 	  mfa210(.Sum(wmfs210), .Cout(wmfc210), .A(A[2]), .B(B[10]), .Sin(wmfs39), .Cin(wmfc29));
   MFA 	  mfa310(.Sum(wmfs310), .Cout(wmfc310), .A(A[3]), .B(B[10]), .Sin(wmfs49), .Cin(wmfc39));
   MFA 	  mfa410(.Sum(wmfs410), .Cout(wmfc410), .A(A[4]), .B(B[10]), .Sin(wmfs59), .Cin(wmfc49));
   MFA    mfa510(.Sum(wmfs510), .Cout(wmfc510), .A(A[5]), .B(B[10]), .Sin(wmfs69), .Cin(wmfc59));
   MFA    mfa610(.Sum(wmfs610), .Cout(wmfc610), .A(A[6]), .B(B[10]), .Sin(wmfs79), .Cin(wmfc69));
   MFA 	  mfa710(.Sum(wmfs710), .Cout(wmfc710), .A(A[7]), .B(B[10]), .Sin(wmfs89), .Cin(wmfc79));
   MFA 	  mfa810(.Sum(wmfs810), .Cout(wmfc810), .A(A[8]), .B(B[10]), .Sin(wmfs99), .Cin(wmfc89));
   MFA 	  mfa910(.Sum(wmfs910), .Cout(wmfc910), .A(A[9]), .B(B[10]), .Sin(wmfs109), .Cin(wmfc99));
   MFA 	  mfa1010(.Sum(wmfs1010), .Cout(wmfc1010), .A(A[10]), .B(B[10]), .Sin(wmfs119), .Cin(wmfc109));
   
   MFA 	  mfa1110(.Sum(wmfs1110), .Cout(wmfc1110), .A(1'b0), .B(B[10]), .Sin(wmfs129), .Cin(wmfc119));

//Row b11
   FA 	  fa011(.Sum(product_comb[11]), .Cout(wfac011), .A(wmfc010), .B(wmfs110), .Cin(1'b0));
   FA 	  fa111(.Sum(product_comb[12]), .Cout(wfac111), .A(wmfc110), .B(wmfs210), .Cin(wfac011));
   FA 	  fa211(.Sum(product_comb[13]), .Cout(wfac211), .A(wmfc210), .B(wmfs310), .Cin(wfac111));
   FA 	  fa311(.Sum(product_comb[14]), .Cout(wfac311), .A(wmfc310), .B(wmfs410), .Cin(wfac211));
   FA 	  fa411(.Sum(product_comb[15]), .Cout(wfac411), .A(wmfc410), .B(wmfs510), .Cin(wfac311));
   FA 	  fa511(.Sum(product_comb[16]), .Cout(wfac511), .A(wmfc510), .B(wmfs610), .Cin(wfac411));
   FA 	  fa611(.Sum(product_comb[17]), .Cout(wfac611), .A(wmfc610), .B(wmfs710), .Cin(wfac511));
   FA 	  fa711(.Sum(product_comb[18]), .Cout(wfac711), .A(wmfc710), .B(wmfs810), .Cin(wfac611));
   FA 	  fa811(.Sum(product_comb[19]), .Cout(wfac811), .A(wmfc810), .B(wmfs910), .Cin(wfac711));
   FA 	  fa911(.Sum(product_comb[20]), .Cout(wfac911), .A(wmfc910), .B(wmfs1010), .Cin(wfac811));
   FA 	  fa1011(.Sum(product_comb[21]), .Cout(wfac1011), .A(wmfc1010), .B(wmfs1110), .Cin(wfac911));


   always @(posedge clk or negedge rst_n) begin
      if (!rst_n)
         P <= 22'd0;
      else if (en)
         P <= product_comb;
      else 
         P <= P;
   end

endmodule


