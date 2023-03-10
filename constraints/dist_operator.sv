class packet;
  rand bit [3:0] addr;
 
  constraint addr_range
  {
    addr dist{2:=10,1:=1,3:=4,10:=3};
  }
endclass
module const_inside;
  initial
    begin
      packet pkt=new();
      repeat(10)
        begin
        pkt.randomize();
    
      $display("addr=%d",pkt.addr);
    end
  end
endmodule
