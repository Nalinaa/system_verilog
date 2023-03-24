typedef string str_da[];
module tb;
  str_da list[$];
  initial
    begin
      str_da marvel='{"Spiderman","Hulk","Captain America","Iron Man"};
      str_da dcworld='{"Batman","Superman"};
      list.push_back(marvel);
      list.push_back(dcworld);
      foreach(list[i])
        foreach(list[i][j])
          $display("list[%d][%d]=%s",i,j,list[i][j]);
      $display("list=%p",list);
    end
endmodule
