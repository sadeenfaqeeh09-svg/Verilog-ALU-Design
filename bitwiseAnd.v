module bitwiseAnd(input [3:0]A,B , output [3:0]RAnd);
and (RAnd[0] , A[0] , B[0] );
and (RAnd[1] , A[1] , B[1] );
and (RAnd[2] , A[2] , B[2] );
and (RAnd[3] , A[3] , B[3] );
endmodule
