module testbench(input bit [7:0] addr);
  initial
    begin
      $display("Addr=%d",addr);
    end
endmodule
