module Binary_mul_11_1_uni_tb();

    reg unsigned [10:0] A;
    reg unsigned [10:0] B;
    reg clk;
    reg rst_n;
    reg en;

    wire unsigned [21:0] P;

    integer i, j;
    reg [21:0] expected_P;

    Binary_mul_11_1_uni uut (
        .A(A),
        .B(B),
        .P(P),
        .clk(clk),
        .rst_n(rst_n),
        .en(en)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        $dumpfile("wave.vcd"); 
        $dumpvars(0, Binary_mul_11_1_uni_tb); 

        rst_n = 0;
        en = 0;
        A = 0;
        B = 0;

        // Apply reset
        #10;
        rst_n = 1;
        en = 1;

        for (i = 0; i < 2048; i = i + 1) begin
            for (j = 0; j < 2048; j = j + 1) begin
                @(negedge clk);
                A = i;
                B = j;
                expected_P = i * j; 
                #1;
                @(posedge clk);
                #1;  

                if (P !== expected_P) begin
                    $display("ERROR: A=%d, B=%d, Expected P=%d, Actual P=%d", A, B, expected_P, P);
                end else begin
                    $display("PASS:  A=%d, B=%d, P=%d", A, B, P);
                end
            end
        end

        $finish;  // End the simulation
    end

endmodule
