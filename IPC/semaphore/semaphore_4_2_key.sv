module semaphore_4_2_key;
  semaphore sema;
  initial
    begin
      sema=new(4);
    fork
      display();
      display();
      display();
    join
    end
  task automatic display();
    sema.get(2);
    $display($time,"\tCurrent Simulation Time");
    #30;
    sema.put(2);
  endtask
endmodule
