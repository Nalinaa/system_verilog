class packet;
  rand bit [3:0] a,b;
  
  constraint a_val{a==1;}
  constraint b_val{ 
    if(a==0)
  b==1;
  else
  b==0;
  }
   
endclass
module bidirectional_constraint;
  initial
  begin
    packet pkt=new();
    pkt.randomize() with {b==1;};
    $display("a=%d,b=%d",pkt.a,pkt.b);
  end
endmodule
