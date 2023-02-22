module dynamic_array_method;
  string fruits[];
  initial
    begin
      fruits=new[3];
      fruits='{"apple","orange","mango"};
      $display("fruits.size()=%d",fruits.size());
      fruits.delete();
       $display("fruits.size()=%d",fruits.size());
    end
endmodule
