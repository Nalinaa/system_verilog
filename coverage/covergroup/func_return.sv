function bit[3:0] sum(int a,int b);
  int c;
  c=a+b;
  return c;
endfunction

module func_return_value();
  class val;
    randc bit[1:0]a;
    randc bit[1:0]b;
  endclass
  int addition;
  covergroup cg;
  a:coverpoint v.a;
  b:coverpoint v.b;
  func:coverpoint sum(v.a,v.b);
  endgroup
  val v;
  cg cg_inst;
  initial
    begin
      v=new();
      cg_inst=new();
      repeat(5)
        begin
          v.randomize();
          addition=sum(v.a,v.b);
          cg_inst.sample();
          $display("a=%d,b=%d,add=%d",v.a,v.b,addition);
          $display("coverage percent=%0.2f",cg_inst.get_inst_coverage());
        end
    end
endmodule
          
