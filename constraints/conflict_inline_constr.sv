class packet;
  rand bit[3:0] addr;
  
  constraint addr_range{ addr<5;
                       }
endclass
  module inline_constr;
    initial
      begin
        packet pkt=new();
        repeat(2)
          begin
            pkt.randomize() with {addr>5;};
            $display("addr=%d",pkt.addr);
      end
      end
  endmodule
