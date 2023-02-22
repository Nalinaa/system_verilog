module packed_unpacked_array;
  bit [3:0][7:0] stack[2][4];
  initial
    begin
      int i,j;
      foreach(stack[i])
        foreach(stack[i][j])
          begin
            stack[i][j]=$random;
            $display("stack[%d][%d]=%b",i,j,stack[i][j]);
          end
      $display("stack=%p",stack);
      $display("stack[1][3][1][0]=%b",stack[1][3][1][0]);
    end
endmodule
