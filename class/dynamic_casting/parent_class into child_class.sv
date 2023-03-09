class parent_class;
  bit[31:0] addr;
  function display();
    $diaplay("addr=%d",addr);
  endfunction
endclass
class child_class extends parent_class;
  bit[31:0] data;
  function display();
    super.display();
    $display("data=%d",data);
  endfunction
endclass
module inheritance;
  initial
    begin
  parent_class p;
  child_class c=new();
  child_class c1;
   c.addr=10;
  c.data=20;
  p=c;
  $cast(c1,p);
  c1.display();
  end
endmodule
