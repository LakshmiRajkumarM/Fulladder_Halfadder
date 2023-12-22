module halfadder(input a,b,output reg sum,carry);
always @(*)begin
sum=a^b;
carry=a&b;
end
endmodule

module fulladder_HA(input a,b,cin,output sum,carry);
wire w1,w2,w3;
halfadder f0(a,b,w1,w2);
halfadder f1(w1,cin,sum,w3);
or(carry,w3,w2);
endmodule
