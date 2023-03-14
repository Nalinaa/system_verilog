module trg_@_sim;
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
          @(ev_1.triggered);//misdetect
          $display($time,"Event trigerred");
        end
      join
    end
endmodule
