class packet;
  bit[31:0] addr;
  bit[31:0] data;
  extern virtual task display();
    endclass
    task packet::display();
      $display("Addr=%d,Data=%d",addr,data);
    endtask
    module extern_method;
      initial
        begin
          packet p=new();
         
          p.addr=10;
          p.data=20;
           p.display();
          
        end
    endmodule
