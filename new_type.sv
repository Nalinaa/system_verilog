module new_type;
  bit var_a;
  bit[3:0] var_b;
  initial
    begin
      $display("a=%0b,b=0x%0h",var_a,var_b);
      var_a=1;
      var_b=4'hf;
      $display("a=%0b,b=0x%0h",var_a,var_b);
      var_b=16'h481a;
      $display("a=%0b,b=0x%0h",var_a,var_b);
      var_b=4'b01xz;
      $display("a=%0b,b=0x%b",var_a,var_b);
    end 
endmodule
