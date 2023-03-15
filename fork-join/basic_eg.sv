module fork_join;
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
  join
  $display($time,"outside fork-join");
  $finish;
  end
endmodule
