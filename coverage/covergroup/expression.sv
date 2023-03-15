module expression;
  bit [1:0]a;
  bit [2:0]b;
  covergroup cg;
    a1:coverpoint a;
    b1:coverpoint b;
    aXb:coverpoint a*b;
  endgroup
  cg cg_inst;
  initial
    begin
      cg_inst=new();
      repeat(10)
        begin
          a=$random;
          b=$random;
          cg_inst.sample();
          $display("a=%d,b=%d,aXb=%d coverage percent=%0.2f",a,b,a*b,cg_inst.get_inst_coverage());
        end
    end
endmodule
