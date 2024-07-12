-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jul 13 07:00:26 2024
-- Host        : DESKTOP-Q5FQ0UQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ TDCsystem_AXITDC_1_0_stub.vhdl
-- Design      : TDCsystem_AXITDC_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_1_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_1_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_1_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_1_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_1_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_1_awlock : in STD_LOGIC;
    s_axi_1_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_1_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_1_awvalid : in STD_LOGIC;
    s_axi_1_awready : out STD_LOGIC;
    s_axi_1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_1_wlast : in STD_LOGIC;
    s_axi_1_wvalid : in STD_LOGIC;
    s_axi_1_wready : out STD_LOGIC;
    s_axi_1_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_1_bvalid : out STD_LOGIC;
    s_axi_1_bready : in STD_LOGIC;
    s_axi_1_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_1_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_1_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_1_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_1_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_1_arlock : in STD_LOGIC;
    s_axi_1_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_1_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_1_arvalid : in STD_LOGIC;
    s_axi_1_arready : out STD_LOGIC;
    s_axi_1_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_1_rlast : out STD_LOGIC;
    s_axi_1_rvalid : out STD_LOGIC;
    s_axi_1_rready : in STD_LOGIC;
    clk : in STD_LOGIC;
    hit : in STD_LOGIC;
    trigger_in : in STD_LOGIC_VECTOR ( 10 downto 0 );
    trigger_out : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[8:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[8:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_1_awid[11:0],s_axi_1_awaddr[13:0],s_axi_1_awlen[7:0],s_axi_1_awsize[2:0],s_axi_1_awburst[1:0],s_axi_1_awlock,s_axi_1_awcache[3:0],s_axi_1_awprot[2:0],s_axi_1_awvalid,s_axi_1_awready,s_axi_1_wdata[31:0],s_axi_1_wstrb[3:0],s_axi_1_wlast,s_axi_1_wvalid,s_axi_1_wready,s_axi_1_bid[11:0],s_axi_1_bresp[1:0],s_axi_1_bvalid,s_axi_1_bready,s_axi_1_arid[11:0],s_axi_1_araddr[13:0],s_axi_1_arlen[7:0],s_axi_1_arsize[2:0],s_axi_1_arburst[1:0],s_axi_1_arlock,s_axi_1_arcache[3:0],s_axi_1_arprot[2:0],s_axi_1_arvalid,s_axi_1_arready,s_axi_1_rid[11:0],s_axi_1_rdata[31:0],s_axi_1_rresp[1:0],s_axi_1_rlast,s_axi_1_rvalid,s_axi_1_rready,clk,hit,trigger_in[10:0],trigger_out[10:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "AXITDC,Vivado 2018.2";
begin
end;
