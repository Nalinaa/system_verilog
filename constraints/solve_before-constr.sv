class packet;
  rand bit a;
  rand bit [3:0] b;
  
  constraint a_val{solve a before b;}
  constraint b_val{ 
    (a==0)->(b==0);
  }
   
endclass
module solve_before_constraint;
  initial
  begin
    packet pkt=new();
    repeat(3)
      begin
    pkt.randomize() ;
    $display("a=%d,b=%d",pkt.a,pkt.b);
      end
  end
endmodule
