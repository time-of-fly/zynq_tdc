-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jul 13 06:59:50 2024
-- Host        : DESKTOP-Q5FQ0UQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/Users/wen02/Documents/GitHub/zynq_tdc/TDCsystem/TDCsystem.srcs/sources_1/bd/TDCsystem/ip/TDCsystem_clk_wiz_0_0/TDCsystem_clk_wiz_0_0_stub.vhdl
-- Design      : TDCsystem_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TDCsystem_clk_wiz_0_0 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end TDCsystem_clk_wiz_0_0;

architecture stub of TDCsystem_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,clk_in1";
begin
end;
