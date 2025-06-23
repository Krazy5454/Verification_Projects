`timescale 1ns / 1ps

module tb_fifo;

  parameter DATA_WIDTH = 8;
  parameter DEPTH = 4;
  parameter ADDR_WIDTH = $clog2(DEPTH);

  logic clk, rst;
  logic wr_en, rd_en;
  logic [DATA_WIDTH-1:0] din, dout;
  logic full, empty;

  fifo #(.DATA_WIDTH(DATA_WIDTH), .DEPTH(DEPTH)) dut (
    .clk(clk), .rst(rst),
    .wr_en(wr_en), .rd_en(rd_en),
    .din(din), .dout(dout),
    .full(full), .empty(empty)
  );

  initial clk = 0;
  always #5 clk = ~clk;

endmodule