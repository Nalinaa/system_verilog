module string_operators;
  string firstname="Nalinaa";
  string lastname="Nathiya";
  initial
    begin
      if(firstname==lastname)
        $display("%s is equal to %s",firstname,lastname);
      if(firstname!=lastname)
        $display("%s is not equal to %s",firstname,lastname);
      if(firstname>lastname)
        $display("%s is greater than %s",firstname,lastname);
      if(firstname<lastname)
        $display("%s is less than %s",firstname,lastname);
      $display("Combined_name=%s",{firstname," ",lastname});
      $display("%s",{3{firstname}});
      $display("firstname[2]=%s  lastname[2]=%s",firstname[2],lastname[2]);
    end
endmodule
      
