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
ExecStep $xv_path/bin/xsim lift2_controller_func_impl -key {Post-Implementation:sim_1:Functional:lift2_controller} -tclbatch lift2_controller.tcl -log simulate.log
