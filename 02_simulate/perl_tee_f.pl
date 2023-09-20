
&main;
sub main {
    $INPUT_FILE  = $ARGV[0];
    $TARGET_FILE  = $ARGV[1]; 
open ($LOG_FILE, "$INPUT_FILE") ||die("k co \n");
open ($REPORT_FILE, ">$TARGET_FILE");


$count = 0;
foreach $line (<$LOG_FILE>)
    {
        chop($line);
        @line_mem = split(/:/,$line);
        if( @line_mem[1] =~ /^f_out/)
       {
           printf $REPORT_FILE ("@line_mem[2]\n");
        }
     }

close($INPUT_FILE);
close($TARGET_FILE);
}
