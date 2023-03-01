class static_prop_method;
  static byte no_of_packets_created;
  function new();
    no_of_packets_created++;
  endfunction
  static function void display_packets_created();
    $display("\t%d packets created",no_of_packets_created);
  endfunction
endclass

module static_meth;
  static_prop_method pkt[3];
  static_prop_method p;
  initial 
    begin
      foreach(pkt[i])
        begin
          pkt[i]=new;
        end
      $display ("\t %d packets created.",p.no_of_packets_created);
      p.display_packets_created();
    end
endmodule
