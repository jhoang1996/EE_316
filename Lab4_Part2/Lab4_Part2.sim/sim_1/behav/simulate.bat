@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim tb_rising_edge_detector_behav -key {Behavioral:sim_1:Functional:tb_rising_edge_detector} -tclbatch tb_rising_edge_detector.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
