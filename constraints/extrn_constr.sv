class packet;
  rand bit[3:0] addr;
  extern constraint addr_range;
 
endclass
constraint packet::addr_range
{
  addr>5;
}
module constr_blocks;
  initial
    begin
      packet pkt=new();
      
      repeat(10)
        begin
          pkt.randomize();
          $display("addr=%d",pkt.addr);
        end
    end
endmodule
