

//class Declaration -- OOP basics

module tb();
  class first;
    int a ;
    int b;
    int c;
  endclass
  
  initial 
    begin 
      first f;
      f = new();
      f.a = 45;
      f.b = 78;
      f.c = 90;
      $display("value of a: %d,value of b: %d,value of c: %d", f.a,f.b,f.c);
    end 
endmodule 
