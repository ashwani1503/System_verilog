// Code your testbench here
// or browse Examples
//Initialize element of array.

module tb();
  
  reg [7:0]arr[19:0];
  int i;
  byte arr1[$];
  	initial 
      begin 
        for(i = 0; i<20; i++)
          begin
            arr[i] = $urandom_range(255,0);
            $display("arr = %p",arr);
      	end 
      end 
        
  	initial 
      	begin 
          #1;
          foreach (arr[i])
            begin
            arr1.push_back(arr[i]);
            end 
  			$display("arr1 = %p",arr1);
        end 

endmodule 
  	
