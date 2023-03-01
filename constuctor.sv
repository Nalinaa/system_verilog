class construct;
  bit [31:0] addr;
  bit [31:0] data;
  bit write;
  string pkt_type;
  function new();
    addr=32'h10;
    data=32'hff;
    write=1;
    pkt_type="GOOD_pkt";
  endfunction
  function void display();
    $display("\t addr=%d",addr);
    $display("\t data=%h",data);
    $diaplay("\t write=%d",write);
    $display("\t pkt_type=%s",pkt_type);
  endfunction
endclass
module sv_constructor;
  construct con;
  initial
    begin
      con=new();
      con.display();
    end
endmodule
  
