module top (
    /** Input Ports */
    input clk,
    input [3:0] bcd,
    /** Output Ports */
    output reg [6:0] seg7
);

/** Logic */
always @ (*) begin
    if (bcd == 4'b0000)
        seg7 = 7'b1111110;
    else if (bcd == 4'b0001)
        seg7 = 7'b0110000;
    else if (bcd == 4'b0010)
        seg7 = 7'b1101101; 
    else if (bcd == 4'b0011)
        seg7 = 7'b1111001; 
    else if (bcd == 4'b0100)
        seg7 = 7'b0110011;
    else if (bcd == 4'b0101)
        seg7 = 7'b1011011;
    else if (bcd == 4'b0110)
        seg7 = 7'b1011111;
    else if (bcd == 4'b0111)
        seg7 = 7'b1110000;
    else if (bcd == 4'b1000)
        seg7 = 7'b1111111;
    else if (bcd == 4'b1001)
        seg7 = 7'b1111011;
    else if (bcd == 4'b1010)
        seg7 = 7'b1110111; 
    else if (bcd == 4'b1011)
        seg7 = 7'b0011111;
    else if (bcd == 4'b1100)
        seg7 = 7'b1001110;
    else if (bcd == 4'b1101)
        seg7 = 7'b0111110;
    else if (bcd == 4'b1110)
        seg7 = 7'b1001111; 
    else if (bcd == 4'b1111)
        seg7 = 7'b1000111;
end

endmodule
