#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2016.4"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 6d5b8dacf7fb42d9b4e998341f34289a -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot lab6_multiplier_tb_behav xil_defaultlib.lab6_multiplier_tb -log elaborate.log
