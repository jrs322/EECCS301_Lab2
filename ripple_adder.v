module adder(sum, co, in0, in1, cin);
  input cin, in1, in0;
  output sum, co;
  wire w0, w1, w2;
  //gates
  xor (w0, in1, in2);
  xor (sum, w0, cin);
  and (w1, w0, cin);
  and (w2, in1, in2);
  or  (co, g3, g2);
endmodule

module ripple_adder(sum, co, cin, A, B);
  input[3:0] A, B;
  input cin;
  output[3:0] sum;
  output co;
  wire k0, k1, k2;
  adder add0(sum[0], k0, A[0], B[0], cin);
  adder add1(sum[1], k1, A[1], B[1], k0);
  adder add2(sum[2], k2, A[2], B[2], k1);
  adder add3(sum[3], co, A[3], B[3], k2);
endmodule
