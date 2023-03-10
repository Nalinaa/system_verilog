class packet;
  rand bit[7:0] addr;
  static constraint addr_range{
    addr==5;
  }
endclass
module constr;
  initial
    begin
      packet pkt1=new();
      packet pkt2=new();
      pkt1.randomize();
      $display("pkt1.addr=%d",pkt1.addr);
      pkt2.randomize();
      $display("pkt2.addr=%d",pkt2.addr);
      pkt2.addr_range.constraint_mode(0);
      pkt1.randomize();
      $display("pkt1.addr=%d",pkt1.addr);
      pkt2.randomize();
      $display("pkt2.addr=%d",pkt2.addr);
    end
endmodule
      
