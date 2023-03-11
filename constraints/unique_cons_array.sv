class unique_element;
 
  rand bit [31:0] array[10];
 
  constraint array_c{
    unique{array};
    foreach(array[i])
      array[i]<10;
  }
  function void display ();
   
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
