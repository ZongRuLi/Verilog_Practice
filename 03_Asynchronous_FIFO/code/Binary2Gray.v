`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Allen Li
// 
// Create Date: 12/30/2020 01:17:54 AM
// Design Name: binary nuymber to gray code converter
// Module Name: Binary2Gray
// Project Name: Asynchronous FIFO
// Target Devices: 
// Tool Versions: Synopsys VCS 2020.3
// Description:  
//      this module is used to covert binary counter into gray code.
// Dependencies: 
// 
// Revision: 
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module Binary2Gray #(
    parameter WIDTH=5
) (
    input [WIDTH-1:0] BIN_i,
    output [WIDTH-1:0] GRAY_o
);
reg [WIDTH-1:0] g;
wire [WIDTH-1:0] b;
integer i;

assign b = BIN_i;
assign GRAY_o = g;

always @(*) begin
    g[WIDTH-1] <= b[WIDTH-1];
    for(i=0;i<WIDTH-1;i=i+1)
        g[i] <= b[i]^b[i+1];
end
//assign g[4] = b[4];
//assign g[3] = b[3]^b[4];
//assign g[2] = b[2]^b[3];
//assign g[1] = b[1]^b[2];
//assign g[0] = b[0]^b[1];
    
endmodule
