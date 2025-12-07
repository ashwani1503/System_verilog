
module tb();
  int data_da[];  //dynamic array declaration
  int data_q[$];  //queue Declration
  int addr_q[$];
  logic [7:0]data_mem[int];//associative array declaration
  int result ; // variable declaration;
  int idx;

    initial
      begin
        data_da = new[10];//dynamic arrray memory allocation

        foreach (data_da[i])
          begin
            data_da[i] = $urandom_range(0,20); //random value allocation
          end
         $display("data_da = %p",data_da);//array display
            result = data_da.sum();//array sum
            $display("result = %d",result);//display
            result = data_da.product();//array product
            $display("result = %d",result);//display
            result = data_da.sum() with (item <3);//array reduction method with "with clause"
            $display("result = %d",result);
            result = data_da.sum() with (item ==3);
            $display("result = %d",result);

      ///sorting
            data_da.reverse();
            $display("data_da = %p",data_da);
            data_da.sort();
            $display("data_da = %p",data_da);
            data_da.rsort();
            $display("data_da = %p",data_da);
            data_da.shuffle();
            $display("data_da = %p",data_da);
       //Array loator method
            data_q = data_da.max();
        $display("data_q = %p",data_q);
            data_q = data_da.min();
        $display("data_q = %p",data_q);
            data_q = data_da.unique();
        $display("data_q = %p",data_q);
            data_q = data_da.find_first() with (item >10);
        $display("data_q = %p",data_q);
            data_q = data_da.find_index() with (item >5);
        $display("data_q = %p",data_q);
      end
  //QUEUE
  	initial
   	 	begin
          repeat(10)
            begin
              addr_q.push_back($urandom_range(0,100));
            end
          $display("addr_q = %p",addr_q);
        end

  //ASSOCIATIVE ARRAY
  		initial
          begin
            for(idx = 0 ; idx < addr_q.size() ; idx++)
              begin
                data_mem[addr_q[idx]] = $urandom_range(0,200);
              end
            $display("data_mem = %p",data_mem);
          end

endmodule 
