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
ExecStep $xv_path/bin/xelab -wto 0de0a98b0f614aff9617416e32429677 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot lab5_gcd_tb_behav xil_defaultlib.lab5_gcd_tb -log elaborate.log
