module semaphore_try_get;
  semaphore sema;
  initial
  begin
    sema =new(4);
    fork
      display(4);
      display(4);
      display(4);
      display(4);
    join
  end
  task automatic display(int key);
    sema.try_get(key);
    $display($time,"\tCurrent simulation time,got %d keys",key);
    #30;
    sema.put(key);
    endtask
endmodule
