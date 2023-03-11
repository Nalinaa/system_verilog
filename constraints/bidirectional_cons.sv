class bi_cons;
  rand bit [3:0] a,b,c;
  
constraint a_val{a==b+c;}
  constraint b_val{ b>6;}
   constraint c_val{c<8;}
endclass
module bidirectional_constraint;
  initial
  begin
    bi_cons uq=new();
    uq.randomize();
    $display("a=%d,b=%d,c=%d",uq.a,uq.b,uq.c);
  end
endmodule
