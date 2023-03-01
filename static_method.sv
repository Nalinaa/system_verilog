class static_pro_meth;
  byte packet_id;
  static byte no_of_pkts_created;
  function new();
    no_of_pkts_created++;
  endfunction
  static function void display_packet_created();
    //$display("\t packet id is %d",packet_id);
    $display("\t %d packets created",no_of_pkts_created);
  endfunction
endclass
module static_prop_me;
  static_pro_meth st[3];
  initial
    begin
      foreach (st[i])
        begin
          st[i]=new();
        end
      st[0].display_packet_created();
    end
endmodule
