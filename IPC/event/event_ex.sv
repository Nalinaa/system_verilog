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
          $display($time,"waiting for the event to trigger");
          @(ev_1.triggered);
          $display($time,"Event triggered");
        end
      join
    end
endmodule
