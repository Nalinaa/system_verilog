class packet;
  rand bit[3:0] addr;
  rand bit[3:0] data;
  constraint data_range{ data>0;
                        data<10;
                       }
endclass
  module inline_constr;
    initial
      begin
        packet pkt=new();
        repeat(2)
          begin
            pkt.randomize() with {addr==9;};
            $display("addr=%d,data=%d",pkt.addr,pkt.data);
      end
      end
  endmodule
