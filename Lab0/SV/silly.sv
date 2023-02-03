module silly (input  logic a, b, cin, output logic s, cout);
  // shortcut for terminal: C:\Users\nvrag\OneDrive\Documents\GitHub\dldspring2023\Lab0\SV
  
  /* original text 
  assign y = ~b & ~c | a & ~b;*/
  
  /*Logic must produce:
  sum = a ⊕ b ⊕ c_in
  cout = (a · b) + (a · cin) + (b · cin) */
  
   logic p, g; // internal nodes
   
   // main design
   assign p = a ^ b; 
   assign g = a & b;

   assign s = p ^ cin; 
   assign cout = g | (p & cin);
    
   /*alternate design
   assign cout = (a&b)|(a&cin)|(b&cin);
   /*
endmodule
