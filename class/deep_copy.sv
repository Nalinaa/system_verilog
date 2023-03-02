class address_range;
  bit[31:0] start_address;
  bit[31:0] end_address; 
  function new();
    start_address=10;
    end_address=50;
  endfunction
  function address_range copy;
    copy =new();
    copy.start_address=this.start_address;
    copy.end_address=this.end_address;
    return copy;
    endfunction
    endclass
    class packet;
      bit[31:1]addr;
      bit[31:1]data;
      address_range ar;
      function new();
      addr=32'h10;
      data=32'hFF;
      ar=new();
      endfunction
      function void display();
        $display("\t addr=%h",addr);
        $display("\t data=%h",data);
        $display("\t start_address=%d",ar.start_address);
        $display("\t end_address=%d",ar.end_address);
      endfunction
      function packet copy();
        copy=new();
        copy.addr=this.addr;
        copy.data=this.data;
        copy.ar=ar.copy;
        return copy;
      endfunction
    endclass
    module class_assignment;
      packet pkt_1;
      packet pkt_2;
    initial 
      begin
        pkt_1=new();
        pkt_1.display();
        pkt_2=new();
        pkt_2.display();
        pkt_2=pkt_1.copy();
        pkt_2.addr=32'h68;
        pkt_2.ar.start_address=60;
        pkt_2.ar.end_address=80;
        pkt_1.display();
        pkt_2.display();
      end
    endmodule 
      
