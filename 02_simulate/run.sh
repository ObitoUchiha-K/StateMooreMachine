/usr/bin/perl //home/albert/bai14_nhom8/03_script/gen_mem1.pl //home/albert/bai14_nhom8/03_script/input/w_in.txt mem1.v

/usr/bin/perl //home/albert/bai14_nhom8/03_script/gen_mem2.pl //home/albert/bai14_nhom8/03_script/input/rst_in.txt mem2.v

mv mem1.v //home/albert/bai14_nhom8/01_design/mem1.v
mv mem2.v //home/albert/bai14_nhom8/01_design/mem2.v

cd ..
cd 01_design
vcs -R -debug_all -f list | tee //home/albert/bai14_nhom8/05_simlog/f_out.txt

cd ..
cd 02_simulate
/usr/bin/perl perl_tee_f.pl //home/albert/bai14_nhom8/05_simlog/f_out.txt f_final.txt
mv f_final.txt //home/albert/bai14_nhom8/03_script/output/f_final.txt
