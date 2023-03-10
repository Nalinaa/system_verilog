class packet;
  rand bit[3:0] addr;
  constraint addr_range
{
  addr>5;
}
endclass
class packet2 extends packet;
  
  constraint addr_range
{
  addr<5;
}
 
endclass

module constr_blocks;
  initial
    begin
      packet pkt=new();
      packet2 pkt2=new();
      repeat(10)
        begin
          pkt.randomize();
          $display("addr of packet=%d",pkt.addr);
        end
           repeat(10)
        begin
          pkt2.randomize();
          $display("addr of packet2=%d",pkt2.addr);
        end
    end
endmodule
