module disable_fork;
 initial begin
    $display("-----------------------------------------------------------------");
    fork
      begin
        $display($time,"\tProcess-1 of fork-1 Started");
        #5;
        $display($time,"\tProcess-1 of fork-1 Finished");
      end
       begin
        $display($time,"\tProcess-2 of fork-1 Started");
        #20;
        $display($time,"\tProcess-2 of fork-1 Finished");
      end
    join_any
fork
     begin
        $display($time,"\tProcess-1 of fork-2 Started");
        #5;
        $display($time,"\tProcess-1 of fork-2 Finished");
      end
      begin
        $display($time,"\tProcess-2 of fork-2 Started");
        #20;
        $display($time,"\tProcess-2 of fork-2 Finished");
      end
    join_none    
disable fork;
    $display("-----------------------------------------------------------------");
      $display($time,"\tAfter disable-fork");
    $display("-----------------------------------------------------------------");
  end
endmodule
