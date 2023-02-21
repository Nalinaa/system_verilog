module unsigned_type();
  shortint unsigned var_a;
  int unsigned var_b;
  longint unsigned var_c;
  initial
    begin
      $display("Sizes var_a=%d var_b=%d var_c=%d",$bits(var_a),$bits(var_b),$bits(var_c));
      #1 var_a='hFFFF;
      var_b='hFFFF_FFFF;
      var_c='hFFFF_FFFF_FFFF_FFFF;
      #1 var_a +=1;
      var_b +=1;
      var_c +=1;
    end
  initial
      $monitor("var_a=%0d var_b=%0d var_c=%0d",var_a,var_b,var_c);
    
  endmodule
