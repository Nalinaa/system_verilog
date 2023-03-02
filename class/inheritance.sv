class parent_class;
bit[31:0] addr;
endclass
class child_class extends parent_class;
bit [31:0] data;
endclass

module inheritance;
initial
begin
child_class c=new();
c.addr=10;
c.data=20;
$display("value of addr=%d data=%d",c.addr,c.data);
end
endmodule
