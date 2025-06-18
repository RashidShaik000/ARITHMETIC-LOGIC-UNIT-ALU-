module alu(A,B,op,alu_out);
input [3:0]A,B;
output [2:0]op;
ouput reg [3:0]alu_out;
always@(*)
begin 
    case(op)
    3'b000:alu_out=0;
    3'b001:alu_out=A+B;
    3'b010:alu_out=A-B;
    3'b011:alu_out=A&B;
    3'b100:alu_out=A|B;
    3'b101:alu_out=~A;
    3'b110:alu_out=~B;
    3'b111:alu_out=0;
    endcase 
end
endmodule

//Testbench 
module TB();
reg [3:0]A,B;
reg [2:0]op;
wire [3:0]alu_out;
 
alu a1(A,B,op,alu_out);

initial
begin
    op=3'b000;A=3'b0011;B=3'b0001;
    #10;
    op=3'b001;A=3'b0011;B=3'b0001;
    #10;
    op=3'b000;A=3'b0011;B=3'b0001;
    #10
    op=3'b000;A=3'b0011;B=3'b0001;
    #10;
    end
endmodule
   



