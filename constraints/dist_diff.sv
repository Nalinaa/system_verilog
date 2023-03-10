class packet;
  rand bit [3:0] addr_1;
  rand bit[3:0] addr_2;
  
  constraint addr_1_range
  {
    addr_1 dist{2:=10,1:=1,3:=4,10:=3,[11:15]:=11};
    addr_2 dist{2:/10,1:/1,3:/4,10:/3,[11:15]:/11};
  }
endclass
module const_inside;
  initial
    begin
      packet pkt=new();
      repeat(10)
        begin
        pkt.randomize();
    
          $display("addr_1=%d",pkt.addr_1);
    end
       repeat(10)
        begin
        pkt.randomize();
    
          $display("addr_2=%d",pkt.addr_2);
    end
  end
endmodule
