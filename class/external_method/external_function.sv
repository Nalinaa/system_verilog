class packet;
  extern virtual function void display(bit [31:0] addr, data );
endclass
function void packet::display(bit [31:0] addr_t, data_t);
      $display("Addr = %0d Data = %0d",addr_t,data_t);
    endfunction
   module extern_method;
  initial begin
    packet p;
    p = new();
    p.display(20,30); 
  end
endmodule
