module bitwiseOr(input [3:0]A,B , output [3:0]ROr);
or (ROr[0] , A[0] , B[0] );
or (ROr[1] , A[1] , B[1] );
or (ROr[2] , A[2] , B[2] );
or (ROr[3] , A[3] , B[3] );
endmodule 