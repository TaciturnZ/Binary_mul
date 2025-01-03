module FA (Sum, Cout, A, B, Cin);

   input A;
   input B;
   input Cin;   

   output Sum;
   output Cout;

	wire	w1;
	wire	w2;
	wire	w3;
	wire	w4;

	xor	x1(w1, A, B);
	xor	x2(Sum, w1, Cin);

   //Sum = A ⊕ B ⊕ Cin

	nand    n1(w2, A, B);
	nand    n2(w3, A, Cin);
	nand	n3(w4, B, Cin);
	nand	n4(Cout, w2, w3, w4);
   //Cout = (A & B) | (A & Cin) | (B & Cin)

endmodule // FA

module MFA (Sum, Cout, A, B, Sin, Cin);

   input A;
   input B;
   input Sin;
   input Cin;   

   output Sum;
   output Cout;

	wire    w0;
	wire	w1;
	wire	w2;
	wire	w3;
	wire	w4;

	and     a1(w0, A, B);

	xor	x1(w1, w0, Sin);
	xor	x2(Sum, w1, Cin);

	nand    n1(w2, w0, Sin);
	nand    n2(w3, w0, Cin);
	nand	n3(w4, Sin, Cin);
	nand	n4(Cout, w2, w3, w4);
   // Cout=(A∧B∧Sin)∨(A∧B∧Cin)∨(Sin∧Cin)

endmodule // MFA

module MHA (Sum, Cout, A, B, Sin);

   input A;
   input B;
   input Sin;

   output Sum;
   output Cout;

	wire	w1;

	and	a0(w1, A, B);

	xor	x1(Sum, w1, Sin);

	and	a1(Cout, w1, Sin);

endmodule // MHA

