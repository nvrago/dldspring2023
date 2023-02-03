`timescale 1ns / 1ps
module tb ();

   logic        a;
   logic 	b;
   logic 	c;
   logic 	y;
   logic	cout;
   logic        clk;   
   
  // instantiate device under test
   silly dut (a, b, c, y, cout);
   //silly dut (a, b, c);
   // 2 ns clock
   initial 
     begin	
	clk = 1'b1;
	forever #10 clk = ~clk;
     end


   initial
     begin

    // Standard 2^8 testbench
	
	#0   a = 1 'b0;	
	#0   b = 1 'b0;	
	#0   c = 1 'b0;
	
	#20  a = 1 'b1;	
	#0   b = 1 'b0;	
	#0   c = 1 'b0;

	#20  a = 1 'b0;	
	#0   b = 1 'b1;	
	#0   c = 1 'b0;	

	#20  a = 1 'b1;	
	#0   b = 1 'b1;	
	#0   c = 1 'b0;	

	#20  a = 1 'b0;	
	#0   b = 1 'b0;	
	#0   c = 1 'b1;	

	#20  a = 1 'b1;	
	#0   b = 1 'b0;	
	#0   c = 1 'b1;	

	#20  a = 1 'b0;	
	#0   b = 1 'b1;	
	#0   c = 1 'b1;	

	#20  a = 1 'b1;	
	#0   b = 1 'b1;	
	#0   c = 1 'b1;	
	
	// random test bench
	/*
	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;				
	
	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;	

	#20  a = $random;	
	#0   b = $random;	
	#0   c = $random;		
	*/

     end

   
endmodule
