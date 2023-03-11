class packet;
  rand bit[3:0] start_addr;
  rand bit[3:0] end_addr;
  constraint start_addr_c
  {
    start_addr==s_addr(end_addr);
  }
  function bit[3:0] s_addr(bit[3:0] e_addr);
    if(e_addr<4)
      s_addr=0;
    else
      s_addr=e_addr-4;
    endfunction
endclass

module func_cons;
  initial
    begin
      packet pkt=new();
      repeat(3)
        begin
      pkt.randomize();
          $display("start_addr=%d,end_addr=%d",pkt.start_addr,pkt.end_addr);
        end
    end
endmodule
