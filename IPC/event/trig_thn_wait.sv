module event_ex;
  event ev_1;
  initial
    begin
      fork 
        begin
          #40;
          $display($time,"Triggering the event");
          ->ev_1;
        end
        begin
          $display($time,"Waiting for the event to trigger");
          #60@(ev_1.triggered);
          $display($time,"Event trigerred");
        end
      join
    end
  initial
    begin
      #100;
      $display($time,"Ending the simulation");
      $finish;
    end
endmodule
