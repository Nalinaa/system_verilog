
module tb_top;
  wire [7:0] addr;
  design_ex dut(addr);
  testbench test(addr);
endmodule
