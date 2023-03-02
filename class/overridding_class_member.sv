class parent_class;
  bit [31:0] addr;
  function display();
    $display("Addr=%d",addr);
             endfunction
             endclass
             class child_class extends parent_class;
               bit[31:0] data;
               function display();
                 $display("Data=%d",data);
               endfunction
             endclass
             module inheritance;
               initial
                 begin
                   child_class c=new();
                   c.addr=10;
                   c.data=20;
                   c.display();
                 end
             endmodule
