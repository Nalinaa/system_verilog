class packet;
  rand bit[3:0] addr;
  constraint addr_range
  {
    addr inside{3,4,6};
  }
endclass
module constr;
  initial 
    begin
      packet pkt=new();
      pkt.randomize();
      $display("addr=%d",pkt.addr);
      pkt.addr_range.constraint_mode(0);
      pkt.randomize();
      $display("addr=%d",pkt.addr);
    end
endmodule
