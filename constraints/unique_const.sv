class unique_element;
  rand bit[3:0] var_1,var_2,var_3;
  rand bit [7:0] array[6];
  constraint var_c{
    unique{var_1,var_2,var_3};
  }
  constraint array_c{
    unique{array};
  }
  function void display ();
    $display("var_1=%p",var_1);
    $display("var_2=%p",var_2);
    
    $display("var_3=%p",var_3);
    
    $display("array=%p",array);
  endfunction
endclass

program unique_elements_randomization;
  initial
  begin
  unique_element uq=new();
  uq.randomize();
  uq.display();
  end
endprogram
