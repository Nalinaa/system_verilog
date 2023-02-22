module packed_3d_array;
  bit [2:0][3:0][7:0] data;
  initial
    begin
      data[0]=32'hfacecafe;
      data[1]=32'h12345678;
      data[2]=32'hc0defade;
      $display("data=0x%0h",data);
      foreach(data[i])
        begin
          $display("data[%d]=0x%h",i,data[i]);
          foreach (data[i][j])
            begin
              $display("data[%d][%d]=0x%h",i,j,data[i][j]);  
            end
        end
      endmodule
