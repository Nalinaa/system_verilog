class packet;
  rand byte addr;
  rand byte data;
endclass
module rand_method;
  initial
    begin
      packet pkt;
      pkt=new();
     pkt.addr.rand_mode(0);
      pkt.randomize();
      $display("addr=%d,data=%d",pkt.addr,pkt.data);
      pkt.addr.rand_mode(1);
      $display("addr.rand_mode=%d,data.rand_mode=%d",pkt.addr,pkt.data);
    end
endmodule
