module casting;
  real r_a;
  int i_a;
  initial 
    begin
      r_a=(2.1*3.2);
      i_a=int'(r_a);
      $display("Real value is %f",r_a);
      $display("int value is %d",i_a);
    end
endmodule
