
&main;
sub main {
    $INPUT_FILE  = $ARGV[0];
    $TARGET_FILE  = $ARGV[1]; 
open ($MEM_CASE, "$INPUT_FILE") ; 
open ($MEM_V, ">$TARGET_FILE");
printf $MEM_V ("module mem2(RST,addr);\n");
printf $MEM_V ("output  RST;\n");
printf $MEM_V ("reg RST;\n");
printf $MEM_V ("input [1023:0] addr;\n");
printf $MEM_V ("always@( addr ) begin\n");
printf $MEM_V ("case (addr)\n");

$count = 0;
foreach $line (<$MEM_CASE>)
    {
        chop($line);
        $count = $count+1;
        printf $MEM_V ("$count: RST = 1'b$line;\n");
      }
printf $MEM_V (" default : RST = 1'b1;\n");
printf $MEM_V ("endcase\n");
printf $MEM_V ("end\n");
printf $MEM_V ("endmodule\n");
close($INPUT_FILE);
close($TARGET_FILE);
}
