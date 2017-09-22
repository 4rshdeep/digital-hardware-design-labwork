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
ExecStep $xv_path/bin/xelab -wto 9b11ca290c67412c8a43f8eca431b62e -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot shifter_behav xil_defaultlib.shifter -log elaborate.log
