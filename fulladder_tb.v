module fulladder_tb;
  reg a,b,cin;
  wire sum,carry;

  fulladder_HA dut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));
  initial
    begin
      a=0;b=1;cin=0;
     #5 a=1;b=1;cin=1;
     #5 a=1;;b=1;cin=0;
     #5 a=0;b=0;cin=0;

    end
endmodule
  
