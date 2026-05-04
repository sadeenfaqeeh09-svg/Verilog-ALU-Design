module sub(input [3:0]A,B , input cInS , output cOutS , output [3:0]resSub);
wire [2:0]w;
wire [3:0] BAfterNot;
not(BAfterNot[0], B[0]);
not(BAfterNot[1], B[1]);
not(BAfterNot[2], B[2]);
not(BAfterNot[3], B[3]);
fullAdderOB(A[0] , BAfterNot[0] , cInS , w[0] , resSub[0]);
fullAdderOB(A[1] , BAfterNot[1] , w[0] , w[1] , resSub[1]);
fullAdderOB(A[2] , BAfterNot[2] , w[1] , w[2] , resSub[2]);
fullAdderOB(A[3] , BAfterNot[3] , w[2] , cOutS , resSub[3]);
endmodule 