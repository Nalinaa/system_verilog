module queue;
  string fruits[$]='{"orange","apple","kiwi"};
                    initial
                      begin
                        int i;
                        foreach(fruits[i])
                          $display("fruits=%p",fruits[i]);
                        fruits={};
                        $display("after deletion fruits=%p",fruits[i]);
                      end
                    endmodule
