module unpacked_multidimensional_array;
  byte stack[2][4];
  initial
    begin
      int i,j;
      foreach(stack[i])
      foreach(stack[i][j])
        begin
          stack[i][j]=$random;
          $display("stack[%d][%d]=%d",i,j,stack[i][j]);
        end
      $display("stack=%p",stack);
    end
endmodule
