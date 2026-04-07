`include "src/top.sv"
`default_nettype none

module top_tb;
logic clk;
reg pass;
logic [3:0] bcd;
logic [6:0] seg7;

top uut
(
    .clk(clk),
    /** add additional signals */
    .bcd(bcd),
    .seg7(seg7)
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;

initial begin
    $dumpfile("build/top.vcd");
    $dumpvars(0, top_tb);
    pass = 1;
end

initial begin
    clk<=1'b1;
    #(CLK_PERIOD);
    // testbench logic goes below
    bcd <= 4'b0000; #1; 
    pass &= seg7 == 7'b1111110;
    bcd <= 4'b0001; #1; 
    pass &= seg7 == 7'b0110000;
    bcd <= 4'b0010; #1; 
    pass &= seg7 == 7'b1101101; 
    bcd <= 4'b0011; #1;
    pass &= seg7 == 7'b1111001; 
    bcd <= 4'b0100; #1; 
    pass &= seg7 == 7'b0110011; 
    bcd <= 4'b0101; #1; 
    pass &= seg7 == 7'b1011011; 
    bcd <= 4'b0110; #1; 
    pass &= seg7 == 7'b1011111; 
    bcd <= 4'b0111; #1; 
    pass &= seg7 == 7'b1110000; 
    bcd <= 4'b1000; #1; 
    pass &= seg7 == 7'b1111111; 
    bcd <= 4'b1001; #1; 
    pass &= seg7 == 7'b1111011; 
    bcd <= 4'b1010; #1; 
    pass &= seg7 == 7'b1110111;
    bcd <= 4'b1011; #1;
    pass &= seg7 == 7'b0011111;
    bcd <= 4'b1100; #1; 
    pass &= seg7 == 7'b1001110; 
    bcd <= 4'b1101; #1; 
    pass &= seg7 == 7'b0111110; 
    bcd <= 4'b1110; #1; 
    pass &= seg7 == 7'b1001111; 
    bcd <= 4'b1111; #1; 
    pass &= seg7 == 7'b1000111;
    if (pass) begin
        $display("Tests Passed!");
    end else begin
        $display("Failed tests");
    end 

    $finish;
end

endmodule
`default_nettype wire
