module Binary_mul_15_1_bi_tb();

    reg signed [14:0] A;
    reg signed [14:0] B;
    reg clk;
    reg rst_n;
    reg en;

    wire signed [28:0] P;

    Binary_mul_15_1_bi uut (
        .A(A),
        .B(B),
        .P(P),
        .clk(clk),
        .rst_n(rst_n),
        .en(en)
    );

    parameter LATENCY = 16;
    integer i, j;
    reg signed [28:0] expected_P;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Test stimulus
    initial begin
        $dumpfile("wave.vcd");  
        $dumpvars(0, Binary_mul_15_1_bi_tb); 

        rst_n = 0;
        en = 0;
        A = 0;
        B = 0;

        #10;
        rst_n = 1;
        en = 1;

        for (i = -16384; i <= 16383; i = i + 1) begin
            for (j = -16384; j <= 16383; j = j + 1) begin
                @(negedge clk); 
                A = i;
                B = j;
                expected_P = i * j;
                #1;
                repeat (LATENCY) @(posedge clk);
                #1;
                if (P !== expected_P) begin
                    $display("ERROR: A = %d, B = %d, Expected P = %d, Actual P = %d", A, B, expected_P, P);
                end else begin
                    $display("PASS:  A = %d, B = %d, P = %d", A, B, P);
                end
            end
        end

        $finish;
    end

endmodule
