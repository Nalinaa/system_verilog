module string_method;
  string str="Welcome to Smart IOPS";
  initial
    begin
      string tmp;
      $display("str.len()=%d",str.len());
      tmp=str;
      tmp.putc(3,"r");
      $display("str.putc(3,r)=%s",tmp);
      $display("str.getc(2)=%s(%d)",str.getc(2),str.getc(2));
      $display("str.tolower=%s",str.tolower());
      tmp="Welcome to Smart IOPS";
      $display("[tmp,str are same]str.campare(tmp)=%d",str.compare(tmp));
      
      $display("tmp=%s",tmp.tolower());
      $display("[tmp,str are same]str.campare(tmp)=%d",str.compare(tmp) );
      $display("str.substr(4,8)=%s",str.substr(4,8) );
    end
endmodule
      
