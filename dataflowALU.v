module dataflowALU(input [3:0]A,B , input cIn , input [2:0]operationOfTheSys , output cOutForSub,cOutForSum , output [3:0]finalRes);
wire wForBAnd , wForBOr , wForAdd , wForSub;
bitwiseAnd bitAnd(A , B , wForBAnd);
bitwiseOr bitOr(A , B , wForBOr);
add adder(A , B , cIn , cOutForSum , wForAdd);
sub subtractor(A , B , cIn , cOutForSub , wForSub);
assign finalRes = (operationOfTheSys == 3'b000)?wForAdd:
       (operationOfTheSys == 3'b001)?wForSub:
       (operationOfTheSys == 3'b010)?wForBAnd:
       (operationOfTheSys == 3'b011)?wForBOr:3'bz;
endmodule 