module Binary_mul_12_1_uni_tb();

    reg unsigned [11:0] A;
    reg unsigned [11:0] B;
    reg clk;
    reg rst_n;
    reg en;

    wire unsigned [23:0] P;

    integer i, j;
    reg [23:0] expected_P;

    Binary_mul_12_1_uni uut (
        .A(A),
        .B(B),
        .P(P),
        .clk(clk),
        .rst_n(rst_n),
        .en(en)
    );

    parameter LATENCY = 13;
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        $dumpfile("wave.vcd"); 
        $dumpvars(0, Binary_mul_12_1_uni_tb); 

        rst_n = 0;
        en = 0;
        A = 0;
        B = 0;

        // Apply reset
        #10;
        rst_n = 1;
        en = 1;

        for (i = 4080; i <= 4095; i = i + 1) begin
            for (j = 0; j <= 4095; j = j + 1) begin
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

        $finish;  // End the simulation
    end

endmodule
