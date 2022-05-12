//////////////////////////////////////////////////////////////////////////////////
// Testbench for Component: MUX32
// Package: FIUSCIS-CDA
// Course: CDA3102 (Computer Architecture), Florida International University
// Developer: Trevor Cickovski
// License: MIT, (C) 2020 All Rights Reserved
///////////////////////////////////////////////////////////////////////////////////


module testbench();
`include "../Test/Test.v"
///////////////////////////////////////////////////////////////////////////////////
// Inputs: I0-I31 (1-bit each);  S (4-bit)
reg[31:0] I;
reg[4:0] S;
///////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////
// Output: Y (1-bit)
wire Y;
///////////////////////////////////////////////////////////////////////////////////

MUX32 myMUX(.I0(I[0]),.I1(I[1]),.I2(I[2]),.I3(I[3]),.I4(I[4]),.I5(I[5]),.I6(I[6]),.I7(I[7]),
.I8(I[8]),.I9(I[9]),.I10(I[10]),.I11(I[11]),.I12(I[12]),.I13(I[13]),.I14(I[14]),.I15(I[15]),
.I16(I[16]),.I17(I[17]),.I18(I[18]),.I19(I[19]),.I20(I[20]),.I21(I[21]),.I22(I[22]),.I23(I[23]),
.I24(I[24]),.I25(I[25]),.I26(I[26]),.I27(I[27]),.I28(I[28]),.I29(I[29]),.I30(I[30]),.I31(I[31]),.S(S),.Y(Y));

integer j;

initial begin

////////////////////////////////////////////////////////////////////////////////////////
// I[0] to 1, rest to 0
I[0]=1;
for (j = 1; j <= 31; j = j + 1) begin
  I[j] = 0;
end
////////////////////////////////////////////////////////////////////////////////////////

////////////////////////////////////////////////////////////////////////////////////////
// Test: S=00000
$display("Testing: S=00000");
S=5'b00000; #10;
verifyEqual(Y, 1);
////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////
//  Testing: All 5-bit S values 1 to 31
for (S=5'b00001; S <= 5'b11111; S = S + 5'b00001) begin
   I[S-1] = 0; // previous to zero
   I[S] = 1; // current to one
   $display("Testing: S=%b", S);
   #10;
   verifyEqual(Y, 1);
   // You need this because the counter will reset to 0 otherwise
   if (S == 5'b11111) begin
    $display("All tests passed.");
    $stop;
   end
end
////////////////////////////////////////////////////////////////////////////////////////
$display("All tests passed.");
end

endmodule