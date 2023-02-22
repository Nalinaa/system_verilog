module adding_new_item_DA;
  int array[];
  int id[];
 initial
   begin
     array=new[5];
     array='{1,2,3,4,5};
     id=array;
     $display("id=%p",id);
     id=new[id.size()+1](id);
     id[id.size()-1]=6;
     $display("new id=%p",id);
     $display("array.size()=%d,id.size()=%d",array.size(),id.size());
   end
endmodule
