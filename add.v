module add(input [3:0]A,B , input cInA , output cOutA , output [3:0]resAdd);
wire [2:0]w;
fullAdderOB(A[0] , B[0] , cInA , w[0] , resAdd[0]);
fullAdderOB(A[1] , B[1] , w[0] , w[1] , resAdd[1]);
fullAdderOB(A[2] , B[2] , w[1] , w[2] , resAdd[2]);
fullAdderOB(A[3] , B[3] , w[2] , cOutA , resAdd[3]);
endmodule 