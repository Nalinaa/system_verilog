class packet;
  rand bit[7:0] addr;
  rand bit[7:0] data;
  function void post_randomize();
  $display("packet::packet randomized");
  $display("packet::addr=%d,data=%d",addr,data);
  endfunction
  endclass
  
class generator;
  packet pkt;
  mailbox m_box;
  function new(mailbox m_box);
    this.m_box=m_box;
  endfunction
  task run;
    repeat(2)
      begin
        pkt=new();
        pkt.randomize();
        m_box.put(pkt);
        $display("Generator::packet put into the mailbox");
                 #5;
      end
      endtask
        endclass

        class driver;
          packet pkt;
          mailbox m_box;
          function new(mailbox m_box);
          this.m_box=m_box;
          endfunction
          task run;
            repeat(2)
              begin
                m_box.get(pkt);
                $display("Driver::packet received");
                $display("Driver::Addr=%d,data=%d",pkt.addr,pkt.data);
              end
          endtask
        endclass
           module mailbox_ex;
          generator gen;
          driver dri;
          mailbox m_box;
          initial
            begin
              m_box=new();
              gen=new(m_box);
              dri=new(m_box);
              fork
                gen.run();
                dri.run();
              join
            end
          endmodule
