module DA_AA;
  int fruits[][string];
  initial
    begin
      fruits=new[2];
      fruits[0]='{"apple":1,"grape":2};
      fruits[1]='{"melon":3,"cherry":4};
      begin
        int i;
        string fruit;
        foreach(fruits[i])
          foreach(fruits[i][fruit])
            $display("fruits[%d][%s]=%d",i,fruit,fruits[i][fruit]);
      end
    end
  endmodule
      
