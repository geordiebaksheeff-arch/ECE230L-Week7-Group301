module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y

);

    wire [3:0] carry, carryWrap;
    
    genvar i;
    
    generate
        full_adder LSB_add(
            .A(A[0]),
            .B(B[0]),
            .Cin(carry[3]),
            .Cout(carry[0]),
            .Y(Y[0])
        );
        for(i = 1; i < 4; i = i + 1)
        begin
            full_adder LSB_add(
                .A(A[i]),
                .B(B[i]),
                .Cin(carry[i - 1]),
                .Cout(carry[i]),
                .Y(Y[i])
            );
        end
    endgenerate


endmodule
