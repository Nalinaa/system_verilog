module enum_method;
  typedef enum{GREEN,YELLOW,RED,BLUE}colors;
  initial
    begin
      colors color;
      color=YELLOW;
      $display("color.first=%d",color.first());
      $display("color.last=%d",color.last());
      $display("color.next=%d",color.next());
      $display("color.prev=%d",color.prev());
      $display("color.num=%d",color.num());
      $display("color.name=%d",color.name());
    end
endmodule
