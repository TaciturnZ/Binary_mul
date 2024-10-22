module Binary_mul_11_1_bi_tb();

    reg signed [10:0] A;
    reg signed [10:0] B;
    reg clk;
    reg rst_n;
    reg en;
    // Outputs
    wire signed [20:0] P;

    // Instantiate the Unit Under Test (UUT)
    Binary_mul_11_1_bi uut (
        .A(A),
        .B(B),
        .P(P),
        .clk(clk),
        .rst_n(rst_n),
        .en(en)
    );

    integer i, j;
    reg signed [20:0] expected_P;

    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    initial begin
        // $dumpfile("wave.vcd");  // 指定波形文件的名称
        $dumpvars(0, Binary_mul_11_1_bi_tb); // Dump所有信号

        rst_n = 0;
        en = 0;
        A = 0;
        B = 0;

        #10;
        rst_n = 1;
        en = 1;

        // 运行测试
        for (i = -1024; i <= 1023; i = i + 1) begin
            for (j = -1024; j <= 1023; j = j + 1) begin
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

        A = 11'b0;
        B = 11'b0;
        // P = 16'b0;

        // // Wait for global reset
        #10;


        $finish; // 结束仿真
    end

endmodule
