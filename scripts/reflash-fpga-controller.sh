#!/bin/sh

xc3sprog -c qi xc6slx16-2-ftg256.bscan_s6_spi_isf_ext.bit && sleep 1 && xc3sprog -c qi -v -I fpga_controller_2013-05-02-D.bit
xc3sprog -c qi -v -I file.bin:R:0:bin
dd if=file.bin bs=68 skip=1 of=file2.bin
xc3sprog -c qi -v -I file2.bin:w:0:bin
rm -f file.bin file2.bin
