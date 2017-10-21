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
ExecStep $xv_path/bin/xsim lab8_elevator_control_func_impl -key {Post-Implementation:sim_1:Functional:lab8_elevator_control} -tclbatch lab8_elevator_control.tcl -log simulate.log
