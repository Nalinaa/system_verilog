class base_class;
  virtual function void display();
    $display("base_class");
  endfunction
endclass
class ext_class_1 extends base_class;
  function void display();
    $display("Inside extended class 1");
  endfunction
endclass
class ext_class_2 extends base_class;
  function void display();
    $display("Inside extended class 2");
  endfunction
endclass
class ext_class_3 extends base_class;
  function void display();
    $display("Inside extended class 3");
  endfunction
endclass
module class_polymorphism;
  initial
    begin
  ext_class_1 ec_1=new();
  ext_class_2 ec_2=new();
  ext_class_3 ec_3=new();
      base_class b_c[3];
  b_c[0]=ec_1;
  b_c[1]=ec_2;
  b_c[2]=ec_3;
  b_c[0].display();
  b_c[1].display();
  b_c[2].display();
     end
endmodule


