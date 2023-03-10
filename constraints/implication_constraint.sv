class packet;
  rand bit[3:0] addr;
  bit addr_range;
  
  constraint address_range
  {
    (addr_range==1)->(addr<8);
  }
endclass
module constr_blocks;
  initial
    begin
      packet pkt=new();
      pkt.addr_range=1;
      repeat(10)
        begin
          pkt.randomize();
          $display("addr_range=%s,addr=%d",pkt.addr_range,pkt.addr);
        end
    end
  endmodule
