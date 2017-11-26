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
ExecStep $xv_path/bin/xelab -wto 8af8ee2bd9ed486692be214c23c7e662 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot display_tb_behav xil_defaultlib.display_tb -log elaborate.log
