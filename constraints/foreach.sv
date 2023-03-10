class packet;
  rand byte addr[];
  rand byte data[];
  constraint asize
  {
    addr.size<4;
  }
  constraint dsize
  {
    data.size==addr.size;
  }
  constraint avalue
  {
    foreach(addr[i])
      addr[i] inside{4,5,12,16};
  }
  constraint dvalue
  {
    foreach(data[j])
      data[j] >4*j;
  }
endclass
module constr_iteration;
  initial
  begin
    packet pkt=new();
    repeat(10)
    begin
      pkt.randomize();
      $display("addr_size=%d,data_size=%d",pkt.addr.size(),pkt.data.size());
      foreach(pkt.addr[i])
        $display("addr=%d,data=%d",pkt.addr[i],pkt.data[i]);
    end
  end
endmodule
