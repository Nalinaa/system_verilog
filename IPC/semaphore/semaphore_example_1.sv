module semaphore_example_1;
  semaphore sem=new(6);
  initial
    begin
      $display("In first initial block at %t",$time);
      sem.get(4);
      $display("Acessing 4 keys at %t",$time);
               #5
               sem.put(4);
               $display("Done using 4keys at %t",$time);
               end
               initial
               begin
                 $display("In second initial block at %t",$time);
                 sem.get(2);
                 $display("acessing 2keys at %t",$time);
                 #3
                 sem.put(2);
                 $display("Done using 2key at %t",$time);
               end
               endmodule
