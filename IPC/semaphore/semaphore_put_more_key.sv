module semaphore_put_more_key;
  semaphore sema;
  initial
  begin
    sema =new(1);
    fork
      display(1);
      display(2);
      display(3);
    join
  end
  task automatic display(int key);
    sema.get(key);
    $display($time,"\tCurrent simulation time,got %d key",key);
    #30;
    sema.put(key+1);
    endtask
endmodule
