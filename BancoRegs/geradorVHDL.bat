ghdl -a %1.vhd
ghdl -e %1
ghdl -a %1_tb.vhd
ghdl -e %1_tb
ghdl -r %1_tb --stop-time=%2ns --wave=%1_tb.ghw
gtkwave %1_tb.ghw
