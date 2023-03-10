class packet;
  rand bit [3:0] addr;
  rand bit [3:0] start_addr;
  rand bit [3:0] end_addr;
  constraint addr_range
  {
    !(addr inside{[start_addr:end_addr]});
  }
endclass
module const_inside;
  initial
    begin
      packet pkt=new();
      repeat(10)
        begin
        pkt.randomize();
      $display("start_addr=%d,end_addr=%d",pkt.start_addr,pkt.end_addr);
      $display("addr=%d",pkt.addr);
    end
  end
endmodule
