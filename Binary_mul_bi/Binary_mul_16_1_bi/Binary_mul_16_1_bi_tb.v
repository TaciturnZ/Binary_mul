module Binary_mul_16_1_bi_tb();

    reg signed [15:0] A;
    reg signed [15:0] B;
    reg clk;
    reg rst_n;
    reg en;

    wire signed [30:0] P;

    Binary_mul_16_1_bi uut (
        .A(A),
        .B(B),
        .P(P),
        .clk(clk),
        .rst_n(rst_n),
        .en(en)
    );

    parameter LATENCY = 17;
    integer i, j;
    reg signed [30:0] expected_P;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    // Test stimulus
    initial begin
        $dumpfile("wave.vcd");  
        $dumpvars(0, Binary_mul_16_1_bi_tb); 

        rst_n = 0;
        en = 0;
        A = 0;
        B = 0;

        #10;
        rst_n = 1;
        en = 1;

        for (i = 32760; i <= 32767; i = i + 1) begin
            for (j = -32768; j <= 32767; j = j + 1) begin
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
