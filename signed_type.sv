module signed_type();
  shortint var_a;
  int var_b;
  longint var_c;
  initial
    begin
      $display("Sizes var_a=%d var_b=%d var_c=%d",$bits(var_a),$bits(var_b),$bits(var_c));
      #1 var_a='h7FFF;
      var_b='h7FFF_FFFF;
      var_c='h7FFF_FFFF_FFFF_FFFF;
      #1 var_a +=1;
      var_b +=1;
      var_c +=1;
      $monitor("var_a=%0d var_b=%0d var_c=%0d",var_a,var_b,var_c);
    end
  endmodule
