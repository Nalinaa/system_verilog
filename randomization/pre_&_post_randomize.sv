class packet;
  rand bit[7:0] addr;
  randc bit[7:0] data;
  function void pre_randomize();
    $display("Inside pre_randomize");
  endfunction
  function void post_randomize();
    $display("Inside post_randomize");
    $display("addr=%d,data=%d",addr,data);
  endfunction
endclass
module rand_methods;
  initial
    begin
      packet pkt;
      pkt=new();
      pkt.randomize();
    end
endmodule
