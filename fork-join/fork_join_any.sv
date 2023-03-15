module fork_join_any;
  initial
    begin
      fork
        begin
      $display($time,"Process-1 started");
      #5;
      $display($time,"process-1 finished");
    end
  begin
    $display($time,"process-2 started");
    #20;
    $display($time,"process-2 finished");
  end
      join_any
  $display($time,"outside fork-join");
  
  end
endmodule
