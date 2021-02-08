`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/07/2021 03:05:10 PM
// Design Name: 
// Module Name: my_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module my_wrapper(
    input wire clk,
    input wire resetn,
    input wire a,
    input wire b,
    input wire c,
    input wire d,
    output wire a_or_b,
    output wire a_and_b,
    output wire c_echo,
    output wire d_latched
    );

    reg[2:0] delay;
    reg d_saved;

    reg a_or_b_out;
    reg a_and_b_out;
    reg c_echo_out;
    reg d_latched_out;
    assign a_or_b = a_or_b_out;
    assign a_and_b = a_and_b_out;
    assign c_echo = c_echo_out;
    assign d_latched = d_latched_out;

    always @ (posedge clk)
    begin
        if (~resetn)
            begin
                a_or_b_out = 0;
                a_and_b_out = 0;
                c_echo_out = 0;

                delay = 0;
                d_saved = 0;
                d_latched_out = 0;
            end
        else
            begin
                a_or_b_out = a | b;
                a_and_b_out = a & b;
                c_echo_out = c;

                delay[0] = delay[1];
                delay[1] = d;
                d_saved = d_saved | (d & ~delay[0]);
                d_latched_out = d_saved | (d & ~delay[0]);
            end
    end
endmodule

