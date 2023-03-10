class packet;
  rand bit[3:0] addr;
endclass
  module inline_constr;
    initial
      begin
        packet pkt=new();
        repeat(2)
          begin
            pkt.randomize() with {addr==9;};
        $display("addr=%d",pkt.addr);
      end
      end
  endmodule
