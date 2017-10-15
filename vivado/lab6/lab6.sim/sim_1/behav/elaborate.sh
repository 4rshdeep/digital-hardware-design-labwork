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
ExecStep $xv_path/bin/xelab -wto aaf6b738b7f84615b0a34e9eacc4f4a1 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot lab6_multiplier_tb_behav xil_defaultlib.lab6_multiplier_tb -log elaborate.log
