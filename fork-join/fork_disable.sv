module disable_fork;
  initial
    begin
      fork
        begin
          $display($time,"process-1 of fork-1 started");
          #5;
          $display($time,"process-1 of fork-1 finished");
        end
        begin
          sub_process();
        end
      join_any
      disable fork;
        $display($time,"After disable_fork");
        end
        task sub_process;
          $display($time,"sub_process started");
          #10;
          $display($time,"sub_process finished");
        endtask
        endmodule
          
