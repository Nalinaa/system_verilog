module semaphore_ex;
  semaphore sema;
  initial
  begin
    sema =new(1);
    fork
      display();
      display();
    join
  end
  task automatic display();
    sema.get();
    $display($time,"Current simulation time");
    #30;
    sema.put();
    endtask
endmodule
    
