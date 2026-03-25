`timescale 1ns / 1ps
module Design_1 (
    input clk, reset,
    output reg [3:0] q
);

wire feedback = q[3] ^ q[2];

always @(posedge clk or posedge reset) begin
    if(reset)
        q <= 4'b0001;
    else
        q <= {q[2:0], feedback};
end

endmodule
