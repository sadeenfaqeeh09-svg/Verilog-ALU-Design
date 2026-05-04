module behavioralALU(input [3:0]A,B , input [2:0]operationOfTheSys , output reg [3:0]finalRes , output reg cOut);
always @ (A,B,operationOfTheSys)
begin
   case(operationOfTheSys)
      3'b000: {cOut , finalRes} = A+B;
      3'b001: {cOut , finalRes} = A-B;
      3'b010: {cOut , finalRes} = A&B;
      3'b011: {cOut , finalRes} = A|B;
    endcase
end
endmodule 