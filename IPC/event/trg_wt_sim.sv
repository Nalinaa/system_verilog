module trg_wt_sim;
  event ev_1;
  initial
    begin
      fork 
        begin
          
          $display($time,"Triggering the event");
          ->ev_1;
        end
        begin
          $display($time,"Waiting for the event to trigger");
          wait(ev_1.triggered);
          $display($time,"Event trigerred");
        end
      join
    end
  endmodule
