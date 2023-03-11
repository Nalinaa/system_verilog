module system_function;
  bit [31:0] addr1;
  bit[31:0] addr2;
  bit[64:0] addr3;
  bit[31:0] data;
  initial
    begin
      addr1=$urandom();
      addr2=$urandom(89);
      addr3={$urandom(),$uarandom()};
      data=$urandom*6;
      $display("addr1=%d,addr2=%d,addr3=%d,data=%d",addr1,addr2,addr3,data);
      addr1=$urandom_range(30,20);
      addr2=$urandom_range(20);
      addr3=$urandom_range(20,30);
      $display("addr1=%d,addr2=%d,addr3=%d",addr1,addr2,addr3);
    end
endmodule
