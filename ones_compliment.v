module ones_compliment(
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y

);

    wire [3:0] carry;
    wire [3:0] stg2;
    wire [3:0] sum;
    
    genvar i;
    
    generate
        full_adder LSB_add(
            .A(A[0]),
            .B(B[0]),
            .Cin(1'b0),
            .Cout(carry[0]),
            .Y(sum[0])
        );
        for(i = 1; i < 4; i = i + 1)
        begin
            full_adder add(
                .A(A[i]),
                .B(B[i]),
                .Cin(carry[i - 1]),
                .Cout(carry[i]),
                .Y(sum[i])
            );
        end
        full_adder LSB_stg2(
            .A(sum[0]),
            .B(1'b0),
            .Cin(carry[3]),
            .Cout(stg2[0]),
            .Y(Y[0])
        );
        for(i = 1; i < 4; i = i + 1)
        begin
            full_adder add(
                .A(sum[i]),
                .B(1'b0),
                .Cin(stg2[i - 1]),
                .Cout(stg2[i]),
                .Y(Y[i])
            );
        end
    endgenerate


endmodule
