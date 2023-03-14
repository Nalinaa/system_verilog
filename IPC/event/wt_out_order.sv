module wt_out_order;
  event ev_1;
  event ev_2;
  event ev_3;
  initial
    begin
      fork
        begin
          #6;
          $display($time,"Triggering the event ev_1");
          ->ev_1;
        end
        begin
        #2;
          $display($time,"Triggering the event ev_2");
          ->ev_2;
        end
        begin
        #1;
          $display($time,"Triggering the event ev_3");
          ->ev_3;
        end
    begin
      $display($time,"Waiting for the event to trigger");
      wait_order(ev_2,ev_1,ev_3)
      $display($time,"Event triggered in order");
      else
        $display($time,"Event trigerred out_of_order");
    end
      join
    end
endmodule
