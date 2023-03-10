class packet;
  rand bit[3:0] addr;
  bit addr_range;
  
  constraint address_range
  {
    if(addr_range==1)
      addr<8;
    else
      addr>8;
    
  }
endclass
module constr_blocks;
  initial
    begin
      packet pkt=new();
      pkt.addr_range=0;
      repeat(10)
        begin
          pkt.randomize();
          $display("addr_range=%d,addr=%d",pkt.addr_range,pkt.addr);
        end
      pkt.addr_range=1;
      repeat(10)
        begin
          pkt.randomize();
          $display("addr_range=%d,addr=%d",pkt.addr_range,pkt.addr);
        end
    end
endmodule
