module fullAdderOB(input A,B,C , output cOut,sum);
wire [2:0]w;
xor G1(w[0] , A , B);
and G2(w[1] , A , B);
xor G3(sum , w[0] , C);
and G4(w[2] , w[0] , C);
or G5(cOut , w[2] , w[1]);
endmodule 