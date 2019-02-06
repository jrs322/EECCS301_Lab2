module four_b_CLA(sum, co, in0, in1, cin);
  input[3:0] in0, in1;
  input cin;
  output co;
  output[3:0] sum;
  wire[3:0] p, g;
  wire c1, c2, c3;
  //Gates for propagation
  assign p[3:0] = in0[3:0] ^ in1[3:0];
  assign g[3:0] = in1[3:0] & in0[3:0];
  //carry generate
  assign c0 = g[0] | (p[0] & cin);
  assign c1 = g[1] | (p[1] & g[0]) | (p[1] & p[0] & cin);
  assign c2 = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & cin);
  assign co = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) |
  (p[3] & p[2] & p[1] & p[0] & cin);
  //sum generate
  assign sum[0] = cin ^ p[0];
  assign sum[1] = c0 ^ p[1];
  assign sum[2] = c1 ^ p[2];
  assign sum[3] = c2 ^ p[3];

endmodule
