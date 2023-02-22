module associative_array_methods;
int fruits[string];
initial
begin
  string f;
  fruits='{"apple":4,"orange":10,"plum":9,"guava":1};
$display("fruits.size()=%d",fruits.size());
$display("fruits.num()=%d",fruits.size());
if(fruits.exists("orange"))
$display("found %d orange!",fruits["orange"]);
if(fruits.exists("apricots"))
 $display("season for apricot is over");
begin
string f;
if(fruits.first(f))
$display("fruits.first[%s]=%d",f,fruits[f]);
end
begin
string f;
if(fruits.last(f))
$display("fruits.last[%s]=%d",f,fruits[f]);
end
begin
string f;
  f="orange";
if(fruits.prev(f))
  $display("fruits.prev[%s]=%d",f,fruits[f]);
end
begin
string f;
 f ="orange";
if(fruits.next(f))
  $display("fruits.next[%s]=%d",f,fruits[f]);
end
end
endmodule
