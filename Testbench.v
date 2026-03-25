`timescale 1ns / 1ps

module tb_1;

reg clk=0, reset;
wire [3:0] q;

Design_1 dut (.clk(clk), .reset(reset), .q(q));

always #5 clk = ~clk;

initial begin
    $monitor("Time=%0t LFSR=%b", $time, q);

    reset=1; #10;
    reset=0;

    #150 $stop;
end

endmodule
