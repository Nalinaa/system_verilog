virtual class packet;
  bit[31:0] addr;
endclass
class extended_packet extends packet;
  function void display();
    $display("value of addr is %d",addr);
  endfunction
endclass
module virtual_class;
  initial
    begin
      extended_packet p;
      p=new();
      p.addr=20;
      p.display();
    end
endmodule
