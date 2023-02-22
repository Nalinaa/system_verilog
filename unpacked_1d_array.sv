module unpacked_1d_array;
  byte stack[8];
  initial
    begin
      int i;
      foreach (stack[i])
        begin
          stack[i]=$random;
          $display("Assign %d to index %d",stack[i],i);
          $display("stack=%p",stack);
        end
    end
      endmodule
