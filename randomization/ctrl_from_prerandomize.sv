class packet;
  rand bit[7:0] addr;
  randc bit wr_rd;
  bit tmp_wr_rd;
  
  function void pre_randomize();
    $display("Inside pre_randomize");
    if(tmp_wr_rd==1)
      addr.rand_mode(0);
    else
      addr.rand_mode(1);
    
  endfunction
  function void post_randomize();
    $display("Inside post_randomize");
    tmp_wr_rd=wr_rd;
    $display("addr=%h,wr_rd=%h",addr,wr_rd);
  endfunction
endclass
module rand_methods;
  initial
    begin
      packet pkt;
      pkt=new();
      repeat(3)
      pkt.randomize();
    end
endmodule
