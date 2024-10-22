module Binary_mul_4_1_bi_tb();

    // Inputs
    reg signed [3:0] A;
    reg signed [3:0] B;
    reg clk;
    reg rst_n;
    reg en;

    // Outputs
    wire signed [6:0] P;

    // Instantiate the Unit Under Test (UUT)
    Binary_mul_4_1_bi uut (
        .A(A),
        .B(B),
        .P(P),
        .clk(clk),
        .rst_n(rst_n),
        .en(en)
    );

    integer i, j;
    reg signed [6:0] expected_P;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Test stimulus
    initial begin
        $dumpfile("wave.vcd");  
        $dumpvars(0, Binary_mul_4_1_bi_tb); 

        // Initialize inputs
        rst_n = 0;
        en = 0;
        A = 0;
        B = 0;

        // Apply reset
        

        // Run tests
        for (i = -8; i <= 7; i = i + 1) begin
            for (j = -8; j <= 7; j = j + 1) begin
                @(negedge clk); 
                A = i;
                B = j;
                expected_P = i * j;
                #1; 
                @(posedge clk); 
                #1;
                if (P !== expected_P) begin
                    $display("ERROR: A = %d, B = %d, Expected P = %d, Actual P = %d", A, B, expected_P, P);
                end else begin
                    $display("PASS:  A = %d, B = %d, P = %d", A, B, P);
                end
            end
        end

        // @(negedge clk);
        // en = 0;
        // A = 4;
        // B = 3;
        // expected_P = A * B;
        // #10;
        // if (P !== expected_P) begin
        //     $display("Success");
        // end else begin
        //     $display("ERROR");
        // end

        $finish;
    end

endmodule
