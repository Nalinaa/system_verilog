module dynamic_array;
  int array[];
  initial
    begin
      array=new[5];
      array='{1,2,3,4,5};
      begin
      int i;
     foreach(array[i])
        $display("array[%d]=%d",i,array[i]);
      end
    end
endmodule
