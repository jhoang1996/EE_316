@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim tb_time_multiplexing_main_behav -key {Behavioral:sim_1:Functional:tb_time_multiplexing_main} -tclbatch tb_time_multiplexing_main.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
