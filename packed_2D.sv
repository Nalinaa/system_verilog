module packed_2D;
  bit[3:0][7:0]data;
  initial
    begin
      data=32'hface_cafe;
      $display("data=0x%0h",data);
      for(int i=0;i<$size(data);i++)
        begin
          $display("data[%d]=%b(0x%0h)",i,data[i],data[i]);
        end
    end
endmodule
