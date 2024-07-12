-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Sat Jul 13 07:00:26 2024
-- Host        : DESKTOP-Q5FQ0UQ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top TDCsystem_AXITDC_0_0 -prefix
--               TDCsystem_AXITDC_0_0_ TDCsystem_AXITDC_1_0_sim_netlist.vhdl
-- Design      : TDCsystem_AXITDC_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_SRL_FIFO is
  port (
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    bid_gets_fifo_load : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bvalid_cnt_inc : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    axi_wdata_full_reg : in STD_LOGIC;
    axi_wr_burst : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aw_active_d1_reg : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    \bvalid_cnt_reg[2]\ : in STD_LOGIC;
    aw_active_re : in STD_LOGIC;
    bid_gets_fifo_load_d1 : in STD_LOGIC;
    axi_bvalid_int_reg : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    AW2Arb_BVALID_Cnt : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end TDCsystem_AXITDC_0_0_SRL_FIFO;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_SRL_FIFO is
  signal \Addr_Counters[0].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[1].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[2].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].FDRE_I_n_0\ : STD_LOGIC;
  signal \Addr_Counters[3].XORCY_I_i_1_n_0\ : STD_LOGIC;
  signal CI : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_2_n_0 : STD_LOGIC;
  signal Data_Exists_DFF_i_3_n_0 : STD_LOGIC;
  signal \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\ : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0_out : STD_LOGIC;
  signal S1_out : STD_LOGIC;
  signal addr_cy_1 : STD_LOGIC;
  signal addr_cy_2 : STD_LOGIC;
  signal addr_cy_3 : STD_LOGIC;
  signal \axi_bid_int[11]_i_3_n_0\ : STD_LOGIC;
  signal bid_fifo_not_empty : STD_LOGIC;
  signal bid_fifo_rd : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \^bid_gets_fifo_load\ : STD_LOGIC;
  signal bid_gets_fifo_load_d1_i_2_n_0 : STD_LOGIC;
  signal \^bvalid_cnt_inc\ : STD_LOGIC;
  signal sum_A_0 : STD_LOGIC;
  signal sum_A_1 : STD_LOGIC;
  signal sum_A_2 : STD_LOGIC;
  signal sum_A_3 : STD_LOGIC;
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute box_type : string;
  attribute box_type of \Addr_Counters[0].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "LO:O";
  attribute box_type of \Addr_Counters[0].MUXCY_L_I_CARRY4\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[1].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[2].FDRE_I\ : label is "PRIMITIVE";
  attribute box_type of \Addr_Counters[3].FDRE_I\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of Data_Exists_DFF : label is "FDR";
  attribute box_type of Data_Exists_DFF : label is "PRIMITIVE";
  attribute box_type of \FIFO_RAM[0].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name : string;
  attribute srl_name of \FIFO_RAM[0].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I ";
  attribute box_type of \FIFO_RAM[10].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[10].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[10].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[10].SRL16E_I ";
  attribute box_type of \FIFO_RAM[11].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[11].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[11].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[11].SRL16E_I ";
  attribute box_type of \FIFO_RAM[1].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[1].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I ";
  attribute box_type of \FIFO_RAM[2].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[2].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[2].SRL16E_I ";
  attribute box_type of \FIFO_RAM[3].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[3].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[3].SRL16E_I ";
  attribute box_type of \FIFO_RAM[4].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[4].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[4].SRL16E_I ";
  attribute box_type of \FIFO_RAM[5].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[5].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[5].SRL16E_I ";
  attribute box_type of \FIFO_RAM[6].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[6].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[6].SRL16E_I ";
  attribute box_type of \FIFO_RAM[7].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[7].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[7].SRL16E_I ";
  attribute box_type of \FIFO_RAM[8].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[8].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[8].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[8].SRL16E_I ";
  attribute box_type of \FIFO_RAM[9].SRL16E_I\ : label is "PRIMITIVE";
  attribute srl_bus_name of \FIFO_RAM[9].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM ";
  attribute srl_name of \FIFO_RAM[9].SRL16E_I\ : label is "\U0/AXI_memory /\U0/gext_inst.abcv4_0_ext_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[9].SRL16E_I ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_bid_int[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_bid_int[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_bid_int[11]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \axi_bid_int[11]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_bid_int[1]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_bid_int[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \axi_bid_int[4]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_bid_int[5]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \axi_bid_int[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \axi_bid_int[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \axi_bid_int[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \axi_bid_int[9]_i_1\ : label is "soft_lutpair46";
begin
  \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ <= \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\;
  bid_gets_fifo_load <= \^bid_gets_fifo_load\;
  bvalid_cnt_inc <= \^bvalid_cnt_inc\;
\Addr_Counters[0].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_3,
      Q => \Addr_Counters[0].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[0].MUXCY_L_I_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED\(3),
      CO(2) => addr_cy_1,
      CO(1) => addr_cy_2,
      CO(0) => addr_cy_3,
      CYINIT => CI,
      DI(3) => \NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED\(3),
      DI(2) => \Addr_Counters[2].FDRE_I_n_0\,
      DI(1) => \Addr_Counters[1].FDRE_I_n_0\,
      DI(0) => \Addr_Counters[0].FDRE_I_n_0\,
      O(3) => sum_A_0,
      O(2) => sum_A_1,
      O(1) => sum_A_2,
      O(0) => sum_A_3,
      S(3) => \Addr_Counters[3].XORCY_I_i_1_n_0\,
      S(2) => S0_out,
      S(1) => S1_out,
      S(0) => S
    );
\Addr_Counters[0].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[11]_i_3_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => S
    );
\Addr_Counters[0].MUXCY_L_I_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => aw_active_re,
      I1 => \axi_bid_int[11]_i_3_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => \Addr_Counters[3].FDRE_I_n_0\,
      I4 => \Addr_Counters[1].FDRE_I_n_0\,
      I5 => \Addr_Counters[0].FDRE_I_n_0\,
      O => CI
    );
\Addr_Counters[1].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_2,
      Q => \Addr_Counters[1].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[1].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[3].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[11]_i_3_n_0\,
      I5 => \Addr_Counters[1].FDRE_I_n_0\,
      O => S1_out
    );
\Addr_Counters[2].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_1,
      Q => \Addr_Counters[2].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[2].MUXCY_L_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[11]_i_3_n_0\,
      I5 => \Addr_Counters[2].FDRE_I_n_0\,
      O => S0_out
    );
\Addr_Counters[3].FDRE_I\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => bid_fifo_not_empty,
      D => sum_A_0,
      Q => \Addr_Counters[3].FDRE_I_n_0\,
      R => SR(0)
    );
\Addr_Counters[3].XORCY_I_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[0].FDRE_I_n_0\,
      I2 => \Addr_Counters[2].FDRE_I_n_0\,
      I3 => aw_active_re,
      I4 => \axi_bid_int[11]_i_3_n_0\,
      I5 => \Addr_Counters[3].FDRE_I_n_0\,
      O => \Addr_Counters[3].XORCY_I_i_1_n_0\
    );
Data_Exists_DFF: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => D_0,
      Q => bid_fifo_not_empty,
      R => SR(0)
    );
Data_Exists_DFF_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF20022"
    )
        port map (
      I0 => p_1_out,
      I1 => aw_active_d1_reg,
      I2 => Data_Exists_DFF_i_2_n_0,
      I3 => Data_Exists_DFF_i_3_n_0,
      I4 => bid_fifo_not_empty,
      O => D_0
    );
Data_Exists_DFF_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001DDD"
    )
        port map (
      I0 => \^bvalid_cnt_inc\,
      I1 => bid_gets_fifo_load_d1_i_2_n_0,
      I2 => s_axi_bready,
      I3 => axi_bvalid_int_reg,
      I4 => bid_gets_fifo_load_d1,
      O => Data_Exists_DFF_i_2_n_0
    );
Data_Exists_DFF_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Addr_Counters[1].FDRE_I_n_0\,
      I1 => \Addr_Counters[3].FDRE_I_n_0\,
      I2 => \Addr_Counters[0].FDRE_I_n_0\,
      I3 => \Addr_Counters[2].FDRE_I_n_0\,
      O => Data_Exists_DFF_i_3_n_0
    );
\FIFO_RAM[0].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(11),
      Q => bid_fifo_rd(11)
    );
\FIFO_RAM[10].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(1),
      Q => bid_fifo_rd(1)
    );
\FIFO_RAM[11].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(0),
      Q => bid_fifo_rd(0)
    );
\FIFO_RAM[1].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(10),
      Q => bid_fifo_rd(10)
    );
\FIFO_RAM[2].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(9),
      Q => bid_fifo_rd(9)
    );
\FIFO_RAM[3].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(8),
      Q => bid_fifo_rd(8)
    );
\FIFO_RAM[4].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(7),
      Q => bid_fifo_rd(7)
    );
\FIFO_RAM[5].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(6),
      Q => bid_fifo_rd(6)
    );
\FIFO_RAM[6].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(5),
      Q => bid_fifo_rd(5)
    );
\FIFO_RAM[7].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(4),
      Q => bid_fifo_rd(4)
    );
\FIFO_RAM[8].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(3),
      Q => bid_fifo_rd(3)
    );
\FIFO_RAM[9].SRL16E_I\: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A0 => \Addr_Counters[0].FDRE_I_n_0\,
      A1 => \Addr_Counters[1].FDRE_I_n_0\,
      A2 => \Addr_Counters[2].FDRE_I_n_0\,
      A3 => \Addr_Counters[3].FDRE_I_n_0\,
      CE => CI,
      CLK => s_axi_aclk,
      D => s_axi_awid(2),
      Q => bid_fifo_rd(2)
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D1FF"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wdata_full_reg,
      I2 => axi_wr_burst,
      I3 => \out\(0),
      O => \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F880F000000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => \out\(1),
      I2 => \^gen_wdata_sm_no_ecc_sng_reg_wready.clr_bram_we_reg\,
      I3 => p_1_out,
      I4 => axi_wdata_full_reg,
      I5 => s_axi_wvalid,
      O => \^bvalid_cnt_inc\
    );
\axi_bid_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(0),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(0),
      O => D(0)
    );
\axi_bid_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(10),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(10),
      O => D(10)
    );
\axi_bid_int[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axi_bid_int[11]_i_3_n_0\,
      I1 => \^bid_gets_fifo_load\,
      O => E(0)
    );
\axi_bid_int[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(11),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(11),
      O => D(11)
    );
\axi_bid_int[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A888AAAAA8888888"
    )
        port map (
      I0 => bid_fifo_not_empty,
      I1 => bid_gets_fifo_load_d1,
      I2 => axi_bvalid_int_reg,
      I3 => s_axi_bready,
      I4 => bid_gets_fifo_load_d1_i_2_n_0,
      I5 => \^bvalid_cnt_inc\,
      O => \axi_bid_int[11]_i_3_n_0\
    );
\axi_bid_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(1),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(1),
      O => D(1)
    );
\axi_bid_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(2),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(2),
      O => D(2)
    );
\axi_bid_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(3),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(3),
      O => D(3)
    );
\axi_bid_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(4),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(4),
      O => D(4)
    );
\axi_bid_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(5),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(5),
      O => D(5)
    );
\axi_bid_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(6),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(6),
      O => D(6)
    );
\axi_bid_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(7),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(7),
      O => D(7)
    );
\axi_bid_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(8),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(8),
      O => D(8)
    );
\axi_bid_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awid(9),
      I1 => \^bid_gets_fifo_load\,
      I2 => bid_fifo_rd(9),
      O => D(9)
    );
bid_gets_fifo_load_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400044004400"
    )
        port map (
      I0 => aw_active_d1_reg,
      I1 => p_1_out,
      I2 => \bvalid_cnt_reg[2]\,
      I3 => \^bvalid_cnt_inc\,
      I4 => bid_fifo_not_empty,
      I5 => bid_gets_fifo_load_d1_i_2_n_0,
      O => \^bid_gets_fifo_load\
    );
bid_gets_fifo_load_d1_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(1),
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(0),
      O => bid_gets_fifo_load_d1_i_2_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized3\ is
  port (
    validOut_reg : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    validIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized3\ : entity is "adderTreeLegacy";
end \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized3\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized3\ is
  signal \ones[3]_i_2_n_0\ : STD_LOGIC;
  signal \ones[3]_i_3_n_0\ : STD_LOGIC;
  signal \ones[3]_i_4_n_0\ : STD_LOGIC;
  signal \ones[3]_i_5_n_0\ : STD_LOGIC;
  signal \ones[7]_i_2_n_0\ : STD_LOGIC;
  signal \ones[7]_i_3_n_0\ : STD_LOGIC;
  signal \ones[7]_i_4_n_0\ : STD_LOGIC;
  signal \ones_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \ones_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \ones_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \ones_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \ones_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \ones_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \x_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_reg_n_0_[4]\ : STD_LOGIC;
  signal \x_reg_n_0_[5]\ : STD_LOGIC;
  signal \x_reg_n_0_[6]\ : STD_LOGIC;
  signal \NLW_ones_reg[7]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_ones_reg[7]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_name : string;
  attribute srl_name of valid_reg_srl5 : label is "\U0/TDC/encoder/Adder_tree/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/RECURSE.NEXT_LEVEL/valid_reg_srl5 ";
begin
\ones[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[3]\,
      I1 => p_0_in(3),
      O => \ones[3]_i_2_n_0\
    );
\ones[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[2]\,
      I1 => p_0_in(2),
      O => \ones[3]_i_3_n_0\
    );
\ones[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[1]\,
      I1 => p_0_in(1),
      O => \ones[3]_i_4_n_0\
    );
\ones[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => p_0_in(0),
      O => \ones[3]_i_5_n_0\
    );
\ones[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[6]\,
      I1 => p_0_in(6),
      O => \ones[7]_i_2_n_0\
    );
\ones[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[5]\,
      I1 => p_0_in(5),
      O => \ones[7]_i_3_n_0\
    );
\ones[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[4]\,
      I1 => p_0_in(4),
      O => \ones[7]_i_4_n_0\
    );
\ones_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ones_reg[3]_i_1_n_0\,
      CO(2) => \ones_reg[3]_i_1_n_1\,
      CO(1) => \ones_reg[3]_i_1_n_2\,
      CO(0) => \ones_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \x_reg_n_0_[3]\,
      DI(2) => \x_reg_n_0_[2]\,
      DI(1) => \x_reg_n_0_[1]\,
      DI(0) => \x_reg_n_0_[0]\,
      O(3 downto 0) => sum(3 downto 0),
      S(3) => \ones[3]_i_2_n_0\,
      S(2) => \ones[3]_i_3_n_0\,
      S(1) => \ones[3]_i_4_n_0\,
      S(0) => \ones[3]_i_5_n_0\
    );
\ones_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ones_reg[3]_i_1_n_0\,
      CO(3) => sum(7),
      CO(2) => \NLW_ones_reg[7]_i_1_CO_UNCONNECTED\(2),
      CO(1) => \ones_reg[7]_i_1_n_2\,
      CO(0) => \ones_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \x_reg_n_0_[6]\,
      DI(1) => \x_reg_n_0_[5]\,
      DI(0) => \x_reg_n_0_[4]\,
      O(3) => \NLW_ones_reg[7]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => sum(6 downto 4),
      S(3) => '1',
      S(2) => \ones[7]_i_2_n_0\,
      S(1) => \ones[7]_i_3_n_0\,
      S(0) => \ones[7]_i_4_n_0\
    );
valid_reg_srl5: unisim.vcomponents.SRL16E
     port map (
      A0 => '0',
      A1 => '0',
      A2 => '1',
      A3 => '0',
      CE => '1',
      CLK => clk,
      D => validIn,
      Q => validOut_reg
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \x_reg_n_0_[0]\,
      R => '0'
    );
\x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(10),
      Q => p_0_in(3),
      R => '0'
    );
\x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(11),
      Q => p_0_in(4),
      R => '0'
    );
\x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(12),
      Q => p_0_in(5),
      R => '0'
    );
\x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(13),
      Q => p_0_in(6),
      R => '0'
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => \x_reg_n_0_[1]\,
      R => '0'
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => \x_reg_n_0_[2]\,
      R => '0'
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => \x_reg_n_0_[3]\,
      R => '0'
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => \x_reg_n_0_[4]\,
      R => '0'
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => \x_reg_n_0_[5]\,
      R => '0'
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => \x_reg_n_0_[6]\,
      R => '0'
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => p_0_in(0),
      R => '0'
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(8),
      Q => p_0_in(1),
      R => '0'
    );
\x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(9),
      Q => p_0_in(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_cdc_sync is
  port (
    scndry_vect_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC
  );
end TDCsystem_AXITDC_0_0_cdc_sync;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_cdc_sync is
  signal s_level_out_bus_d1_cdc_to_0 : STD_LOGIC;
  signal s_level_out_bus_d1_cdc_to_1 : STD_LOGIC;
  signal s_level_out_bus_d2_0 : STD_LOGIC;
  signal s_level_out_bus_d2_1 : STD_LOGIC;
  signal s_level_out_bus_d3_0 : STD_LOGIC;
  signal s_level_out_bus_d3_1 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type : string;
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
  attribute ASYNC_REG of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is std.standard.true;
  attribute XILINX_LEGACY_PRIM of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "FDR";
  attribute box_type of \GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\ : label is "PRIMITIVE";
begin
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_0,
      Q => s_level_out_bus_d2_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d2[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d2\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d1_cdc_to_1,
      Q => s_level_out_bus_d2_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_0,
      Q => s_level_out_bus_d3_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d3[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d3\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d2_1,
      Q => s_level_out_bus_d3_1,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[0].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_0,
      Q => scndry_vect_out(0),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_CROSS_PLEVEL_IN2SCNDRY_bus_d4[1].CROSS2_PLEVEL_IN2SCNDRY_s_level_out_bus_d4\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_level_out_bus_d3_1,
      Q => scndry_vect_out(1),
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[0].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(0),
      Q => s_level_out_bus_d1_cdc_to_0,
      R => '0'
    );
\GENERATE_LEVEL_P_S_CDC.MULTI_BIT.FOR_IN_cdc_to[1].CROSS2_PLEVEL_IN2SCNDRY_IN_cdc_to\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i(1),
      Q => s_level_out_bus_d1_cdc_to_1,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_control is
  port (
    we : out STD_LOGIC_VECTOR ( 0 to 0 );
    rdy : out STD_LOGIC;
    asyn : out STD_LOGIC;
    hitQ_reg : out STD_LOGIC;
    trigger_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : out STD_LOGIC_VECTOR ( 42 downto 0 );
    validOut : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    syn : in STD_LOGIC;
    ff_2 : in STD_LOGIC;
    count_reg : in STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    trigger_in : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end TDCsystem_AXITDC_0_0_control;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_control is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal addr_cnt : STD_LOGIC;
  signal \addr_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \addr_cnt[10]_i_4_n_0\ : STD_LOGIC;
  signal \addr_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal addr_e : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \^asyn\ : STD_LOGIC;
  signal \data[42]_i_1_n_0\ : STD_LOGIC;
  signal \data_e[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_e_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[31]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_e_reg_n_0_[9]\ : STD_LOGIC;
  signal full_i_1_n_0 : STD_LOGIC;
  signal full_i_2_n_0 : STD_LOGIC;
  signal in7 : STD_LOGIC_VECTOR ( 10 downto 1 );
  signal rdy_i_1_n_0 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \state__0\ : signal is "yes";
  signal state_e : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal state_reg : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal valid_e : STD_LOGIC;
  signal we_e : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \we_e_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair59";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "clr_done:011,running:100,clear:010,run_done:101,idle:001,iSTATE:000";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "clr_done:011,running:100,clear:010,run_done:101,idle:001,iSTATE:000";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "clr_done:011,running:100,clear:010,run_done:101,idle:001,iSTATE:000";
  attribute KEEP of \FSM_sequential_state_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM of \addr_cnt[10]_i_3\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \addr_cnt[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \addr_cnt[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \addr_cnt[3]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \addr_cnt[4]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \addr_cnt[6]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \addr_cnt[7]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \addr_cnt[9]_i_1\ : label is "soft_lutpair58";
begin
  asyn <= \^asyn\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFEF00"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => \state__0\(0),
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1404FFFF14040000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => syn,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \state__0\(1),
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F111FFFFF1110000"
    )
        port map (
      I0 => syn,
      I1 => \FSM_sequential_state[2]_i_2_n_0\,
      I2 => ff_2,
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ff_2,
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      I2 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF80FF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \FSM_sequential_state[2]_i_6_n_0\,
      I2 => \FSM_sequential_state[2]_i_7_n_0\,
      I3 => \FSM_sequential_state[2]_i_8_n_0\,
      I4 => \FSM_sequential_state[2]_i_9_n_0\,
      I5 => \FSM_sequential_state[2]_i_10_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000000080"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[8]\,
      I1 => \addr_cnt_reg_n_0_[9]\,
      I2 => \addr_cnt_reg_n_0_[10]\,
      I3 => \state__0\(0),
      I4 => \state__0\(2),
      I5 => validOut,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[1]\,
      I1 => \addr_cnt_reg_n_0_[0]\,
      I2 => \addr_cnt_reg_n_0_[3]\,
      I3 => \addr_cnt_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[7]\,
      I1 => \addr_cnt_reg_n_0_[6]\,
      I2 => \addr_cnt_reg_n_0_[5]\,
      I3 => \addr_cnt_reg_n_0_[4]\,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CBE00BB"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => syn,
      I3 => ff_2,
      I4 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => \state__0\(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => \state__0\(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => \state__0\(2),
      R => '0'
    );
\addr_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[0]\,
      O => \addr_cnt[0]_i_1_n_0\
    );
\addr_cnt[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F00D"
    )
        port map (
      I0 => \state__0\(0),
      I1 => syn,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      O => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAA4F4F"
    )
        port map (
      I0 => \state__0\(1),
      I1 => syn,
      I2 => \state__0\(0),
      I3 => validOut,
      I4 => \state__0\(2),
      O => addr_cnt
    );
\addr_cnt[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \addr_cnt[10]_i_4_n_0\,
      I1 => \addr_cnt_reg_n_0_[9]\,
      I2 => \addr_cnt_reg_n_0_[8]\,
      I3 => \addr_cnt_reg_n_0_[7]\,
      I4 => \addr_cnt_reg_n_0_[10]\,
      O => in7(10)
    );
\addr_cnt[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[5]\,
      I1 => \addr_cnt_reg_n_0_[3]\,
      I2 => \addr_cnt[6]_i_2_n_0\,
      I3 => \addr_cnt_reg_n_0_[2]\,
      I4 => \addr_cnt_reg_n_0_[4]\,
      I5 => \addr_cnt_reg_n_0_[6]\,
      O => \addr_cnt[10]_i_4_n_0\
    );
\addr_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[0]\,
      I1 => \addr_cnt_reg_n_0_[1]\,
      O => in7(1)
    );
\addr_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[1]\,
      I1 => \addr_cnt_reg_n_0_[0]\,
      I2 => \addr_cnt_reg_n_0_[2]\,
      O => in7(2)
    );
\addr_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[2]\,
      I1 => \addr_cnt_reg_n_0_[0]\,
      I2 => \addr_cnt_reg_n_0_[1]\,
      I3 => \addr_cnt_reg_n_0_[3]\,
      O => in7(3)
    );
\addr_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[3]\,
      I1 => \addr_cnt_reg_n_0_[1]\,
      I2 => \addr_cnt_reg_n_0_[0]\,
      I3 => \addr_cnt_reg_n_0_[2]\,
      I4 => \addr_cnt_reg_n_0_[4]\,
      O => in7(4)
    );
\addr_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[4]\,
      I1 => \addr_cnt_reg_n_0_[2]\,
      I2 => \addr_cnt_reg_n_0_[0]\,
      I3 => \addr_cnt_reg_n_0_[1]\,
      I4 => \addr_cnt_reg_n_0_[3]\,
      I5 => \addr_cnt_reg_n_0_[5]\,
      O => in7(5)
    );
\addr_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[5]\,
      I1 => \addr_cnt_reg_n_0_[3]\,
      I2 => \addr_cnt[6]_i_2_n_0\,
      I3 => \addr_cnt_reg_n_0_[2]\,
      I4 => \addr_cnt_reg_n_0_[4]\,
      I5 => \addr_cnt_reg_n_0_[6]\,
      O => in7(6)
    );
\addr_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[0]\,
      I1 => \addr_cnt_reg_n_0_[1]\,
      O => \addr_cnt[6]_i_2_n_0\
    );
\addr_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \addr_cnt[10]_i_4_n_0\,
      I1 => \addr_cnt_reg_n_0_[7]\,
      O => in7(7)
    );
\addr_cnt[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \addr_cnt_reg_n_0_[7]\,
      I1 => \addr_cnt[10]_i_4_n_0\,
      I2 => \addr_cnt_reg_n_0_[8]\,
      O => in7(8)
    );
\addr_cnt[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \addr_cnt[10]_i_4_n_0\,
      I1 => \addr_cnt_reg_n_0_[7]\,
      I2 => \addr_cnt_reg_n_0_[8]\,
      I3 => \addr_cnt_reg_n_0_[9]\,
      O => in7(9)
    );
\addr_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => \addr_cnt[0]_i_1_n_0\,
      Q => \addr_cnt_reg_n_0_[0]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(10),
      Q => \addr_cnt_reg_n_0_[10]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(1),
      Q => \addr_cnt_reg_n_0_[1]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(2),
      Q => \addr_cnt_reg_n_0_[2]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(3),
      Q => \addr_cnt_reg_n_0_[3]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(4),
      Q => \addr_cnt_reg_n_0_[4]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(5),
      Q => \addr_cnt_reg_n_0_[5]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(6),
      Q => \addr_cnt_reg_n_0_[6]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(7),
      Q => \addr_cnt_reg_n_0_[7]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(8),
      Q => \addr_cnt_reg_n_0_[8]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_cnt,
      D => in7(9),
      Q => \addr_cnt_reg_n_0_[9]\,
      R => \addr_cnt[10]_i_1_n_0\
    );
\addr_e_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[0]\,
      Q => addr_e(0),
      R => '0'
    );
\addr_e_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[10]\,
      Q => addr_e(10),
      R => '0'
    );
\addr_e_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[1]\,
      Q => addr_e(1),
      R => '0'
    );
\addr_e_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[2]\,
      Q => addr_e(2),
      R => '0'
    );
\addr_e_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[3]\,
      Q => addr_e(3),
      R => '0'
    );
\addr_e_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[4]\,
      Q => addr_e(4),
      R => '0'
    );
\addr_e_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[5]\,
      Q => addr_e(5),
      R => '0'
    );
\addr_e_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[6]\,
      Q => addr_e(6),
      R => '0'
    );
\addr_e_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[7]\,
      Q => addr_e(7),
      R => '0'
    );
\addr_e_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[8]\,
      Q => addr_e(8),
      R => '0'
    );
\addr_e_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \addr_cnt_reg_n_0_[9]\,
      Q => addr_e(9),
      R => '0'
    );
\addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(0),
      Q => addr(0),
      R => '0'
    );
\addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(10),
      Q => addr(10),
      R => '0'
    );
\addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(1),
      Q => addr(1),
      R => '0'
    );
\addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(2),
      Q => addr(2),
      R => '0'
    );
\addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(3),
      Q => addr(3),
      R => '0'
    );
\addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(4),
      Q => addr(4),
      R => '0'
    );
\addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(5),
      Q => addr(5),
      R => '0'
    );
\addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(6),
      Q => addr(6),
      R => '0'
    );
\addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(7),
      Q => addr(7),
      R => '0'
    );
\addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(8),
      Q => addr(8),
      R => '0'
    );
\addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => addr_e(9),
      Q => addr(9),
      R => '0'
    );
\data[42]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => state_e(0),
      I1 => state_e(2),
      I2 => state_e(1),
      I3 => valid_e,
      O => \data[42]_i_1_n_0\
    );
\data_e[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => validOut,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => \data_e[31]_i_1_n_0\
    );
\data_e_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => \data_e_reg_n_0_[0]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(2),
      Q => \data_e_reg_n_0_[10]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(3),
      Q => \data_e_reg_n_0_[11]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(4),
      Q => \data_e_reg_n_0_[12]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(5),
      Q => \data_e_reg_n_0_[13]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(6),
      Q => \data_e_reg_n_0_[14]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(7),
      Q => \data_e_reg_n_0_[15]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(8),
      Q => \data_e_reg_n_0_[16]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(9),
      Q => \data_e_reg_n_0_[17]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(10),
      Q => \data_e_reg_n_0_[18]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(11),
      Q => \data_e_reg_n_0_[19]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => \data_e_reg_n_0_[1]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(12),
      Q => \data_e_reg_n_0_[20]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(13),
      Q => \data_e_reg_n_0_[21]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(14),
      Q => \data_e_reg_n_0_[22]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(15),
      Q => \data_e_reg_n_0_[23]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(16),
      Q => \data_e_reg_n_0_[24]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(17),
      Q => \data_e_reg_n_0_[25]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(18),
      Q => \data_e_reg_n_0_[26]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(19),
      Q => \data_e_reg_n_0_[27]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(20),
      Q => \data_e_reg_n_0_[28]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(21),
      Q => \data_e_reg_n_0_[29]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => \data_e_reg_n_0_[2]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(22),
      Q => \data_e_reg_n_0_[30]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(23),
      Q => \data_e_reg_n_0_[31]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => \data_e_reg_n_0_[3]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => \data_e_reg_n_0_[4]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => \data_e_reg_n_0_[5]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => \data_e_reg_n_0_[6]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(7),
      Q => \data_e_reg_n_0_[7]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(0),
      Q => \data_e_reg_n_0_[8]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_e_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => count_reg(1),
      Q => \data_e_reg_n_0_[9]\,
      R => \data_e[31]_i_1_n_0\
    );
\data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[0]\,
      Q => dinb(0),
      R => \data[42]_i_1_n_0\
    );
\data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[10]\,
      Q => dinb(10),
      R => \data[42]_i_1_n_0\
    );
\data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[11]\,
      Q => dinb(11),
      R => \data[42]_i_1_n_0\
    );
\data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[12]\,
      Q => dinb(12),
      R => \data[42]_i_1_n_0\
    );
\data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[13]\,
      Q => dinb(13),
      R => \data[42]_i_1_n_0\
    );
\data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[14]\,
      Q => dinb(14),
      R => \data[42]_i_1_n_0\
    );
\data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[15]\,
      Q => dinb(15),
      R => \data[42]_i_1_n_0\
    );
\data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[16]\,
      Q => dinb(16),
      R => \data[42]_i_1_n_0\
    );
\data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[17]\,
      Q => dinb(17),
      R => \data[42]_i_1_n_0\
    );
\data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[18]\,
      Q => dinb(18),
      R => \data[42]_i_1_n_0\
    );
\data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[19]\,
      Q => dinb(19),
      R => \data[42]_i_1_n_0\
    );
\data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[1]\,
      Q => dinb(1),
      R => \data[42]_i_1_n_0\
    );
\data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[20]\,
      Q => dinb(20),
      R => \data[42]_i_1_n_0\
    );
\data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[21]\,
      Q => dinb(21),
      R => \data[42]_i_1_n_0\
    );
\data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[22]\,
      Q => dinb(22),
      R => \data[42]_i_1_n_0\
    );
\data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[23]\,
      Q => dinb(23),
      R => \data[42]_i_1_n_0\
    );
\data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[24]\,
      Q => dinb(24),
      R => \data[42]_i_1_n_0\
    );
\data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[25]\,
      Q => dinb(25),
      R => \data[42]_i_1_n_0\
    );
\data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[26]\,
      Q => dinb(26),
      R => \data[42]_i_1_n_0\
    );
\data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[27]\,
      Q => dinb(27),
      R => \data[42]_i_1_n_0\
    );
\data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[28]\,
      Q => dinb(28),
      R => \data[42]_i_1_n_0\
    );
\data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[29]\,
      Q => dinb(29),
      R => \data[42]_i_1_n_0\
    );
\data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[2]\,
      Q => dinb(2),
      R => \data[42]_i_1_n_0\
    );
\data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[30]\,
      Q => dinb(30),
      R => \data[42]_i_1_n_0\
    );
\data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[31]\,
      Q => dinb(31),
      R => \data[42]_i_1_n_0\
    );
\data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(0),
      Q => dinb(32),
      R => \data[42]_i_1_n_0\
    );
\data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(1),
      Q => dinb(33),
      R => \data[42]_i_1_n_0\
    );
\data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(2),
      Q => dinb(34),
      R => \data[42]_i_1_n_0\
    );
\data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(3),
      Q => dinb(35),
      R => \data[42]_i_1_n_0\
    );
\data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(4),
      Q => dinb(36),
      R => \data[42]_i_1_n_0\
    );
\data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(5),
      Q => dinb(37),
      R => \data[42]_i_1_n_0\
    );
\data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(6),
      Q => dinb(38),
      R => \data[42]_i_1_n_0\
    );
\data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(7),
      Q => dinb(39),
      R => \data[42]_i_1_n_0\
    );
\data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[3]\,
      Q => dinb(3),
      R => \data[42]_i_1_n_0\
    );
\data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(8),
      Q => dinb(40),
      R => \data[42]_i_1_n_0\
    );
\data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(9),
      Q => dinb(41),
      R => \data[42]_i_1_n_0\
    );
\data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => trigger_in(10),
      Q => dinb(42),
      R => \data[42]_i_1_n_0\
    );
\data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[4]\,
      Q => dinb(4),
      R => \data[42]_i_1_n_0\
    );
\data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[5]\,
      Q => dinb(5),
      R => \data[42]_i_1_n_0\
    );
\data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[6]\,
      Q => dinb(6),
      R => \data[42]_i_1_n_0\
    );
\data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[7]\,
      Q => dinb(7),
      R => \data[42]_i_1_n_0\
    );
\data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[8]\,
      Q => dinb(8),
      R => \data[42]_i_1_n_0\
    );
\data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \data_e_reg_n_0_[9]\,
      Q => dinb(9),
      R => \data[42]_i_1_n_0\
    );
full_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0088FFFC00880000"
    )
        port map (
      I0 => validOut,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => full_i_2_n_0,
      I5 => \^asyn\,
      O => full_i_1_n_0
    );
full_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_5_n_0\,
      I1 => \addr_cnt_reg_n_0_[2]\,
      I2 => \addr_cnt_reg_n_0_[3]\,
      I3 => \addr_cnt[6]_i_2_n_0\,
      I4 => \FSM_sequential_state[2]_i_7_n_0\,
      I5 => \FSM_sequential_state[2]_i_8_n_0\,
      O => full_i_2_n_0
    );
full_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => full_i_1_n_0,
      Q => \^asyn\,
      R => '0'
    );
hitQ_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => D(0),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => hitQ_reg
    );
rdy_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => rdy_i_1_n_0
    );
rdy_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => rdy_i_1_n_0,
      Q => rdy,
      R => '0'
    );
\state_e[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      O => state_reg(0)
    );
\state_e[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      O => state_reg(1)
    );
\state_e[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => state_reg(2)
    );
\state_e_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state_reg(0),
      Q => state_e(0),
      R => '0'
    );
\state_e_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state_reg(1),
      Q => state_e(1),
      R => '0'
    );
\state_e_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => state_reg(2),
      Q => state_e(2),
      R => '0'
    );
\trigger_out[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[0]\,
      O => trigger_out(0)
    );
\trigger_out[10]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[10]\,
      O => trigger_out(10)
    );
\trigger_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[1]\,
      O => trigger_out(1)
    );
\trigger_out[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[2]\,
      O => trigger_out(2)
    );
\trigger_out[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[3]\,
      O => trigger_out(3)
    );
\trigger_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[4]\,
      O => trigger_out(4)
    );
\trigger_out[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[5]\,
      O => trigger_out(5)
    );
\trigger_out[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[6]\,
      O => trigger_out(6)
    );
\trigger_out[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[7]\,
      O => trigger_out(7)
    );
\trigger_out[8]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[8]\,
      O => trigger_out(8)
    );
\trigger_out[9]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \addr_cnt_reg_n_0_[9]\,
      O => trigger_out(9)
    );
valid_e_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => validOut,
      Q => valid_e,
      R => '0'
    );
\we_e[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"020C"
    )
        port map (
      I0 => validOut,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => we_e(7)
    );
\we_e_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => we_e(7),
      Q => \we_e_reg_n_0_[7]\,
      R => '0'
    );
\we_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \we_e_reg_n_0_[7]\,
      Q => we(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_counter is
  port (
    count_reg : out STD_LOGIC_VECTOR ( 23 downto 0 );
    clk : in STD_LOGIC
  );
end TDCsystem_AXITDC_0_0_counter;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_counter is
  signal \count[0]_i_2_n_0\ : STD_LOGIC;
  signal \^count_reg\ : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \count_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  count_reg(23 downto 0) <= \^count_reg\(23 downto 0);
\count[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^count_reg\(0),
      O => \count[0]_i_2_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_1_n_7\,
      Q => \^count_reg\(0),
      R => '0'
    );
\count_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[0]_i_1_n_0\,
      CO(2) => \count_reg[0]_i_1_n_1\,
      CO(1) => \count_reg[0]_i_1_n_2\,
      CO(0) => \count_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_reg[0]_i_1_n_4\,
      O(2) => \count_reg[0]_i_1_n_5\,
      O(1) => \count_reg[0]_i_1_n_6\,
      O(0) => \count_reg[0]_i_1_n_7\,
      S(3 downto 1) => \^count_reg\(3 downto 1),
      S(0) => \count[0]_i_2_n_0\
    );
\count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_5\,
      Q => \^count_reg\(10),
      R => '0'
    );
\count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_4\,
      Q => \^count_reg\(11),
      R => '0'
    );
\count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_7\,
      Q => \^count_reg\(12),
      R => '0'
    );
\count_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[8]_i_1_n_0\,
      CO(3) => \count_reg[12]_i_1_n_0\,
      CO(2) => \count_reg[12]_i_1_n_1\,
      CO(1) => \count_reg[12]_i_1_n_2\,
      CO(0) => \count_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[12]_i_1_n_4\,
      O(2) => \count_reg[12]_i_1_n_5\,
      O(1) => \count_reg[12]_i_1_n_6\,
      O(0) => \count_reg[12]_i_1_n_7\,
      S(3 downto 0) => \^count_reg\(15 downto 12)
    );
\count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_6\,
      Q => \^count_reg\(13),
      R => '0'
    );
\count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_5\,
      Q => \^count_reg\(14),
      R => '0'
    );
\count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[12]_i_1_n_4\,
      Q => \^count_reg\(15),
      R => '0'
    );
\count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_7\,
      Q => \^count_reg\(16),
      R => '0'
    );
\count_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[12]_i_1_n_0\,
      CO(3) => \count_reg[16]_i_1_n_0\,
      CO(2) => \count_reg[16]_i_1_n_1\,
      CO(1) => \count_reg[16]_i_1_n_2\,
      CO(0) => \count_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[16]_i_1_n_4\,
      O(2) => \count_reg[16]_i_1_n_5\,
      O(1) => \count_reg[16]_i_1_n_6\,
      O(0) => \count_reg[16]_i_1_n_7\,
      S(3 downto 0) => \^count_reg\(19 downto 16)
    );
\count_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_6\,
      Q => \^count_reg\(17),
      R => '0'
    );
\count_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_5\,
      Q => \^count_reg\(18),
      R => '0'
    );
\count_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[16]_i_1_n_4\,
      Q => \^count_reg\(19),
      R => '0'
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_1_n_6\,
      Q => \^count_reg\(1),
      R => '0'
    );
\count_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_7\,
      Q => \^count_reg\(20),
      R => '0'
    );
\count_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[16]_i_1_n_0\,
      CO(3) => \NLW_count_reg[20]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_reg[20]_i_1_n_1\,
      CO(1) => \count_reg[20]_i_1_n_2\,
      CO(0) => \count_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[20]_i_1_n_4\,
      O(2) => \count_reg[20]_i_1_n_5\,
      O(1) => \count_reg[20]_i_1_n_6\,
      O(0) => \count_reg[20]_i_1_n_7\,
      S(3 downto 0) => \^count_reg\(23 downto 20)
    );
\count_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_6\,
      Q => \^count_reg\(21),
      R => '0'
    );
\count_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_5\,
      Q => \^count_reg\(22),
      R => '0'
    );
\count_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[20]_i_1_n_4\,
      Q => \^count_reg\(23),
      R => '0'
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_1_n_5\,
      Q => \^count_reg\(2),
      R => '0'
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[0]_i_1_n_4\,
      Q => \^count_reg\(3),
      R => '0'
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_7\,
      Q => \^count_reg\(4),
      R => '0'
    );
\count_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[0]_i_1_n_0\,
      CO(3) => \count_reg[4]_i_1_n_0\,
      CO(2) => \count_reg[4]_i_1_n_1\,
      CO(1) => \count_reg[4]_i_1_n_2\,
      CO(0) => \count_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[4]_i_1_n_4\,
      O(2) => \count_reg[4]_i_1_n_5\,
      O(1) => \count_reg[4]_i_1_n_6\,
      O(0) => \count_reg[4]_i_1_n_7\,
      S(3 downto 0) => \^count_reg\(7 downto 4)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_6\,
      Q => \^count_reg\(5),
      R => '0'
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_5\,
      Q => \^count_reg\(6),
      R => '0'
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[4]_i_1_n_4\,
      Q => \^count_reg\(7),
      R => '0'
    );
\count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_7\,
      Q => \^count_reg\(8),
      R => '0'
    );
\count_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_1_n_0\,
      CO(3) => \count_reg[8]_i_1_n_0\,
      CO(2) => \count_reg[8]_i_1_n_1\,
      CO(1) => \count_reg[8]_i_1_n_2\,
      CO(0) => \count_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_reg[8]_i_1_n_4\,
      O(2) => \count_reg[8]_i_1_n_5\,
      O(1) => \count_reg[8]_i_1_n_6\,
      O(0) => \count_reg[8]_i_1_n_7\,
      S(3 downto 0) => \^count_reg\(11 downto 8)
    );
\count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \count_reg[8]_i_1_n_6\,
      Q => \^count_reg\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_pselect_f is
  port (
    ce_expnd_i_3 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end TDCsystem_AXITDC_0_0_pselect_f;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_pselect_f is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\(0),
      I1 => \bus2ip_addr_i_reg[3]\(1),
      O => ce_expnd_i_3
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_pselect_f__parameterized1\ is
  port (
    ce_expnd_i_1 : out STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_pselect_f__parameterized1\ : entity is "pselect_f";
end \TDCsystem_AXITDC_0_0_pselect_f__parameterized1\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_pselect_f__parameterized1\ is
begin
CS: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[3]\(1),
      I1 => \bus2ip_addr_i_reg[3]\(0),
      O => ce_expnd_i_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_risingEdgeDetector is
  port (
    validIn : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC
  );
end TDCsystem_AXITDC_0_0_risingEdgeDetector;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_risingEdgeDetector is
  signal \^q\ : STD_LOGIC;
begin
q_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => \^q\,
      R => '0'
    );
valid_reg_srl5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => \^q\,
      O => validIn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_sng_port_arb is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    p_0_out : out STD_LOGIC;
    p_1_out : out STD_LOGIC;
    aw_active_re : out STD_LOGIC;
    ar_active_re : out STD_LOGIC;
    axi_arready_int_reg_0 : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \GEN_AR_SNG.ar_active_d1_reg\ : out STD_LOGIC;
    s_axi_aresetn_0 : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    aw_active_d1 : in STD_LOGIC;
    ar_active_d1 : in STD_LOGIC;
    axi_rlast_int_reg : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \bvalid_cnt_reg[0]\ : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_rlast_int_reg_0 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \bvalid_cnt_reg[1]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end TDCsystem_AXITDC_0_0_sng_port_arb;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_sng_port_arb is
  signal \FSM_sequential_arb_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_arb_sm_cs[1]_i_3_n_0\ : STD_LOGIC;
  signal ar_active_cmb : STD_LOGIC;
  signal ar_active_i_1_n_0 : STD_LOGIC;
  signal ar_active_i_2_n_0 : STD_LOGIC;
  signal aw_active_i_1_n_0 : STD_LOGIC;
  signal axi_arready_cmb : STD_LOGIC;
  signal axi_arready_int_i_2_n_0 : STD_LOGIC;
  signal axi_arready_int_i_4_n_0 : STD_LOGIC;
  signal \^axi_arready_int_reg_0\ : STD_LOGIC;
  signal axi_awready_cmb : STD_LOGIC;
  signal last_arb_won : STD_LOGIC;
  signal last_arb_won_i_1_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal \^p_0_out\ : STD_LOGIC;
  signal \^p_1_out\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[0]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_arb_sm_cs_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_arb_sm_cs_reg[1]\ : label is "wr_data:01,idle:00,rd_data:10";
  attribute KEEP of \FSM_sequential_arb_sm_cs_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_AR_SNG.ar_active_d1_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_1__0\ : label is "soft_lutpair13";
begin
  axi_arready_int_reg_0 <= \^axi_arready_int_reg_0\;
  \out\(1 downto 0) <= \^out\(1 downto 0);
  p_0_out <= \^p_0_out\;
  p_1_out <= \^p_1_out\;
\FSM_sequential_arb_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E02FFFF0E020000"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\,
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \bvalid_cnt_reg[0]\,
      I4 => \FSM_sequential_arb_sm_cs[1]_i_3_n_0\,
      I5 => \^out\(0),
      O => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => last_arb_won,
      I2 => s_axi_arvalid,
      O => \FSM_sequential_arb_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ar_active_cmb,
      I1 => \FSM_sequential_arb_sm_cs[1]_i_3_n_0\,
      I2 => \^out\(1),
      O => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_arb_sm_cs[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D3F0000"
    )
        port map (
      I0 => last_arb_won,
      I1 => \^out\(0),
      I2 => \^out\(1),
      I3 => s_axi_awvalid,
      I4 => s_axi_arvalid,
      O => ar_active_cmb
    );
\FSM_sequential_arb_sm_cs[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBEBAFFFFAEAA"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => axi_rlast_int_reg,
      I4 => axi_arready_int_i_4_n_0,
      I5 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\(0),
      O => \FSM_sequential_arb_sm_cs[1]_i_3_n_0\
    );
\FSM_sequential_arb_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[0]_i_1_n_0\,
      Q => \^out\(0),
      R => s_axi_aresetn_0
    );
\FSM_sequential_arb_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_arb_sm_cs[1]_i_1_n_0\,
      Q => \^out\(1),
      R => s_axi_aresetn_0
    );
\GEN_AR_SNG.ar_active_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0888"
    )
        port map (
      I0 => \^p_0_out\,
      I1 => s_axi_aresetn,
      I2 => s_axi_rready,
      I3 => axi_rlast_int_reg_0,
      O => \GEN_AR_SNG.ar_active_d1_reg\
    );
ar_active_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBA888"
    )
        port map (
      I0 => ar_active_cmb,
      I1 => ar_active_i_2_n_0,
      I2 => axi_arready_int_i_2_n_0,
      I3 => s_axi_arvalid,
      I4 => \^p_0_out\,
      O => ar_active_i_1_n_0
    );
ar_active_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AAAA00003F00"
    )
        port map (
      I0 => axi_rlast_int_reg,
      I1 => s_axi_awvalid,
      I2 => last_arb_won,
      I3 => s_axi_arvalid,
      I4 => \^out\(0),
      I5 => \^out\(1),
      O => ar_active_i_2_n_0
    );
ar_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_i_1_n_0,
      Q => \^p_0_out\,
      R => s_axi_aresetn_0
    );
aw_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A0ACFFF0A0A0000"
    )
        port map (
      I0 => \bvalid_cnt_reg[0]\,
      I1 => \^out\(1),
      I2 => \^out\(0),
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\(0),
      I4 => axi_awready_cmb,
      I5 => \^p_1_out\,
      O => aw_active_i_1_n_0
    );
aw_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => aw_active_i_1_n_0,
      Q => \^p_1_out\,
      R => s_axi_aresetn_0
    );
axi_arready_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAE00"
    )
        port map (
      I0 => axi_arready_int_i_2_n_0,
      I1 => \^axi_arready_int_reg_0\,
      I2 => s_axi_awvalid,
      I3 => s_axi_arvalid,
      I4 => axi_arready_int_i_4_n_0,
      O => axi_arready_cmb
    );
axi_arready_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\(0),
      I1 => \^out\(0),
      I2 => \^out\(1),
      O => axi_arready_int_i_2_n_0
    );
axi_arready_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => axi_rlast_int_reg_0,
      I1 => s_axi_rready,
      I2 => \^out\(0),
      I3 => \^out\(1),
      O => \^axi_arready_int_reg_0\
    );
axi_arready_int_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00101010"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => s_axi_arvalid,
      I3 => last_arb_won,
      I4 => s_axi_awvalid,
      O => axi_arready_int_i_4_n_0
    );
axi_arready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arready_cmb,
      Q => s_axi_arready,
      R => s_axi_aresetn_0
    );
axi_awready_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA000000F30000"
    )
        port map (
      I0 => axi_rlast_int_reg,
      I1 => s_axi_arvalid,
      I2 => last_arb_won,
      I3 => \^out\(0),
      I4 => \bvalid_cnt_reg[0]\,
      I5 => \^out\(1),
      O => axi_awready_cmb
    );
axi_awready_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_awready_cmb,
      Q => s_axi_awready,
      R => s_axi_aresetn_0
    );
\bram_we_a[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(0),
      O => bram_we_a(0)
    );
\bram_we_a[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(1),
      O => bram_we_a(1)
    );
\bram_we_a[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(2),
      O => bram_we_a(2)
    );
\bram_we_a[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => Q(3),
      O => bram_we_a(3)
    );
last_arb_won_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => ar_active_cmb,
      I1 => \FSM_sequential_arb_sm_cs_reg[0]_0\,
      I2 => axi_arready_cmb,
      I3 => \bvalid_cnt_reg[1]\,
      I4 => last_arb_won,
      O => last_arb_won_i_1_n_0
    );
last_arb_won_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_arb_won_i_1_n_0,
      Q => last_arb_won,
      R => s_axi_aresetn_0
    );
\save_init_bram_addr_ld[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_1_out\,
      I1 => aw_active_d1,
      O => aw_active_re
    );
\save_init_bram_addr_ld[13]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^p_0_out\,
      I1 => ar_active_d1,
      O => ar_active_re
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_sync is
  port (
    syn : out STD_LOGIC;
    asyn : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end TDCsystem_AXITDC_0_0_sync;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_sync is
  signal meta : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ff_1 : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of ff_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of ff_2 : label is std.standard.true;
  attribute box_type of ff_2 : label is "PRIMITIVE";
begin
ff_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => '0',
      D => asyn,
      Q => meta
    );
ff_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => '0',
      D => meta,
      Q => syn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_sync_0 is
  port (
    syn : out STD_LOGIC;
    asyn : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TDCsystem_AXITDC_0_0_sync_0 : entity is "sync";
end TDCsystem_AXITDC_0_0_sync_0;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_sync_0 is
  signal meta : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ff_1 : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of ff_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of ff_2 : label is std.standard.true;
  attribute box_type of ff_2 : label is "PRIMITIVE";
begin
ff_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => '0',
      D => asyn,
      Q => meta
    );
ff_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => '0',
      D => meta,
      Q => syn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_sync_1 is
  port (
    syn : out STD_LOGIC;
    asyn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TDCsystem_AXITDC_0_0_sync_1 : entity is "sync";
end TDCsystem_AXITDC_0_0_sync_1;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_sync_1 is
  signal meta : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ff_1 : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of ff_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of ff_2 : label is std.standard.true;
  attribute box_type of ff_2 : label is "PRIMITIVE";
begin
ff_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => '0',
      D => asyn,
      Q => meta
    );
ff_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => '0',
      D => meta,
      Q => syn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_sync_2 is
  port (
    syn : out STD_LOGIC;
    asyn : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TDCsystem_AXITDC_0_0_sync_2 : entity is "sync";
end TDCsystem_AXITDC_0_0_sync_2;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_sync_2 is
  signal meta : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of ff_1 : label is std.standard.true;
  attribute box_type : string;
  attribute box_type of ff_1 : label is "PRIMITIVE";
  attribute ASYNC_REG of ff_2 : label is std.standard.true;
  attribute box_type of ff_2 : label is "PRIMITIVE";
begin
ff_1: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => '0',
      D => asyn,
      Q => meta
    );
ff_2: unisim.vcomponents.FDCE
    generic map(
      INIT => '0',
      IS_CLR_INVERTED => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      CLR => '0',
      D => meta,
      Q => syn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_wrap_brst is
  port (
    \ADDR_SNG_PORT.bram_addr_int_reg[13]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    curr_fixed_burst_reg_reg : out STD_LOGIC;
    curr_wrap_burst_reg_reg : out STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    aw_active_re : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    aw_active_d1_reg : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end TDCsystem_AXITDC_0_0_wrap_brst;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_wrap_brst is
  signal \ADDR_SNG_PORT.bram_addr_int[13]_i_10_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[13]_i_14_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[13]_i_5_n_0\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[13]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^d\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal save_init_bram_addr_ld : STD_LOGIC_VECTOR ( 13 downto 3 );
  signal \save_init_bram_addr_ld[13]_i_3_n_0\ : STD_LOGIC;
  signal wrap_burst_total : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \wrap_burst_total[0]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[2]_i_2\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[11]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[8]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[9]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1\ : label is "soft_lutpair49";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[13]\(0) <= \^addr_sng_port.bram_addr_int_reg[13]\(0);
  D(10 downto 0) <= \^d\(10 downto 0);
\ADDR_SNG_PORT.bram_addr_int[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B00030FFFFFFFF"
    )
        port map (
      I0 => curr_fixed_burst_reg,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\,
      I2 => \out\(0),
      I3 => aw_active_re,
      I4 => \ADDR_SNG_PORT.bram_addr_int[13]_i_5_n_0\,
      I5 => s_axi_aresetn,
      O => \^addr_sng_port.bram_addr_int_reg[13]\(0)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008FA00000"
    )
        port map (
      I0 => Q(1),
      I1 => Q(2),
      I2 => wrap_burst_total(1),
      I3 => wrap_burst_total(0),
      I4 => Q(0),
      I5 => wrap_burst_total(2),
      O => \ADDR_SNG_PORT.bram_addr_int[13]_i_10_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => wrap_burst_total(1),
      I1 => wrap_burst_total(2),
      I2 => wrap_burst_total(0),
      O => \ADDR_SNG_PORT.bram_addr_int[13]_i_14_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555555FFFFFDFF"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      I2 => wrap_burst_total(0),
      I3 => wrap_burst_total(2),
      I4 => wrap_burst_total(1),
      I5 => \ADDR_SNG_PORT.bram_addr_int[13]_i_10_n_0\,
      O => \ADDR_SNG_PORT.bram_addr_int[13]_i_5_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111515555555555"
    )
        port map (
      I0 => aw_active_re,
      I1 => curr_wrap_burst_reg,
      I2 => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int[13]_i_14_n_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[13]_i_10_n_0\,
      I5 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\,
      O => \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awaddr(0),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      O => \ADDR_SNG_PORT.bram_addr_int_reg[2]\
    );
curr_fixed_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8ABA"
    )
        port map (
      I0 => curr_fixed_burst_reg,
      I1 => aw_active_d1_reg,
      I2 => p_1_out,
      I3 => s_axi_awburst(1),
      I4 => s_axi_awburst(0),
      I5 => \^addr_sng_port.bram_addr_int_reg[13]\(0),
      O => curr_fixed_burst_reg_reg
    );
curr_wrap_burst_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008ABA8A8A"
    )
        port map (
      I0 => curr_wrap_burst_reg,
      I1 => aw_active_d1_reg,
      I2 => p_1_out,
      I3 => s_axi_awburst(0),
      I4 => s_axi_awburst(1),
      I5 => \^addr_sng_port.bram_addr_int_reg[13]\(0),
      O => curr_wrap_burst_reg_reg
    );
\save_init_bram_addr_ld[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(8),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(10),
      O => \^d\(7)
    );
\save_init_bram_addr_ld[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(9),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(11),
      O => \^d\(8)
    );
\save_init_bram_addr_ld[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(10),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(12),
      O => \^d\(9)
    );
\save_init_bram_addr_ld[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(11),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(13),
      O => \^d\(10)
    );
\save_init_bram_addr_ld[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F444FFFFFFFFF"
    )
        port map (
      I0 => aw_active_d1_reg,
      I1 => p_1_out,
      I2 => \ADDR_SNG_PORT.bram_addr_int[13]_i_10_n_0\,
      I3 => \ADDR_SNG_PORT.bram_addr_int[13]_i_14_n_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      I5 => curr_wrap_burst_reg,
      O => \save_init_bram_addr_ld[13]_i_3_n_0\
    );
\save_init_bram_addr_ld[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B88888B888B8B8"
    )
        port map (
      I0 => s_axi_awaddr(1),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(3),
      I3 => wrap_burst_total(0),
      I4 => wrap_burst_total(2),
      I5 => wrap_burst_total(1),
      O => \^d\(0)
    );
\save_init_bram_addr_ld[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B888B8B888B8B8"
    )
        port map (
      I0 => s_axi_awaddr(2),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(4),
      I3 => wrap_burst_total(1),
      I4 => wrap_burst_total(2),
      I5 => wrap_burst_total(0),
      O => \^d\(1)
    );
\save_init_bram_addr_ld[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B888B8B8"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(5),
      I3 => wrap_burst_total(0),
      I4 => wrap_burst_total(2),
      I5 => wrap_burst_total(1),
      O => \^d\(2)
    );
\save_init_bram_addr_ld[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(4),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(6),
      O => \^d\(3)
    );
\save_init_bram_addr_ld[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(5),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(7),
      O => \^d\(4)
    );
\save_init_bram_addr_ld[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(6),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(8),
      O => \^d\(5)
    );
\save_init_bram_addr_ld[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_awaddr(7),
      I1 => \save_init_bram_addr_ld[13]_i_3_n_0\,
      I2 => save_init_bram_addr_ld(9),
      O => \^d\(6)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(7),
      Q => save_init_bram_addr_ld(10),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(8),
      Q => save_init_bram_addr_ld(11),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(9),
      Q => save_init_bram_addr_ld(12),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(10),
      Q => save_init_bram_addr_ld(13),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(0),
      Q => save_init_bram_addr_ld(3),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(1),
      Q => save_init_bram_addr_ld(4),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(2),
      Q => save_init_bram_addr_ld(5),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(3),
      Q => save_init_bram_addr_ld(6),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(4),
      Q => save_init_bram_addr_ld(7),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(5),
      Q => save_init_bram_addr_ld(8),
      R => SR(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \^d\(6),
      Q => save_init_bram_addr_ld(9),
      R => SR(0)
    );
\wrap_burst_total[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4004"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awlen(2),
      O => \wrap_burst_total[0]_i_1_n_0\
    );
\wrap_burst_total[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awlen(1),
      O => \wrap_burst_total[1]_i_1_n_0\
    );
\wrap_burst_total[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_awlen(3),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      O => \wrap_burst_total[2]_i_1_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[0]_i_1_n_0\,
      Q => wrap_burst_total(0),
      R => SR(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[1]_i_1_n_0\,
      Q => wrap_burst_total(1),
      R => SR(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => aw_active_re,
      D => \wrap_burst_total[2]_i_1_n_0\,
      Q => wrap_burst_total(2),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_wrap_brst_3 is
  port (
    \FSM_sequential_rd_data_sm_cs_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[13]\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[11]\ : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ : out STD_LOGIC;
    axi_rd_burst : in STD_LOGIC;
    axi_rd_burst_two_reg : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    p_0_out : in STD_LOGIC;
    aw_active_d1_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \save_init_bram_addr_ld_reg[13]_0\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : in STD_LOGIC;
    curr_fixed_burst_reg_0 : in STD_LOGIC;
    curr_wrap_burst_reg : in STD_LOGIC;
    \GEN_AR_SNG.ar_active_d1_reg\ : in STD_LOGIC;
    curr_wrap_burst_reg_reg : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    axi_rvalid_int_reg : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    brst_zero : in STD_LOGIC;
    end_brst_rd : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of TDCsystem_AXITDC_0_0_wrap_brst_3 : entity is "wrap_brst";
end TDCsystem_AXITDC_0_0_wrap_brst_3;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_wrap_brst_3 is
  signal \ADDR_SNG_PORT.bram_addr_int[13]_i_11_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[13]_i_13_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[13]_i_9_n_0\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[11]\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[11]_0\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[13]\ : STD_LOGIC;
  signal \^addr_sng_port.bram_addr_int_reg[6]\ : STD_LOGIC;
  signal \^fsm_sequential_rd_data_sm_cs_reg[2]\ : STD_LOGIC;
  signal RdChnl_BRAM_Addr_Ld : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \save_init_bram_addr_ld[3]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[4]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld[5]_i_2_n_0\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[10]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[11]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[12]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[13]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[3]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[4]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[5]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[6]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[7]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[8]\ : STD_LOGIC;
  signal \save_init_bram_addr_ld_reg_n_0_[9]\ : STD_LOGIC;
  signal \wrap_burst_total[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[0]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[1]\ : STD_LOGIC;
  signal \wrap_burst_total_reg_n_0_[2]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[12]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[13]_i_13\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[13]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[13]_i_6\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_rd_data_sm_cs[2]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[12]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[13]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[4]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \save_init_bram_addr_ld[5]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wrap_burst_total[0]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wrap_burst_total[2]_i_1__0\ : label is "soft_lutpair18";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[11]\ <= \^addr_sng_port.bram_addr_int_reg[11]\;
  \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ <= \^addr_sng_port.bram_addr_int_reg[11]_0\;
  \ADDR_SNG_PORT.bram_addr_int_reg[13]\ <= \^addr_sng_port.bram_addr_int_reg[13]\;
  \ADDR_SNG_PORT.bram_addr_int_reg[6]\ <= \^addr_sng_port.bram_addr_int_reg[6]\;
  \FSM_sequential_rd_data_sm_cs_reg[2]\ <= \^fsm_sequential_rd_data_sm_cs_reg[2]\;
  SR(0) <= \^sr\(0);
\ADDR_SNG_PORT.bram_addr_int[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(8),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(7),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(8),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      O => D(8)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAFFBAAABAAABA"
    )
        port map (
      I0 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I1 => curr_fixed_burst_reg,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\,
      I3 => p_0_out,
      I4 => curr_fixed_burst_reg_0,
      I5 => \^addr_sng_port.bram_addr_int_reg[11]\,
      O => E(0)
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(9),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(8),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(9),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      O => D(9)
    );
\ADDR_SNG_PORT.bram_addr_int[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[12]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_9_n_0\,
      I2 => s_axi_araddr(10),
      I3 => p_0_out,
      I4 => \save_init_bram_addr_ld_reg[13]_0\(9),
      O => D(10)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5040004010400040"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[2]\,
      I1 => \wrap_burst_total_reg_n_0_[0]\,
      I2 => Q(0),
      I3 => \wrap_burst_total_reg_n_0_[1]\,
      I4 => Q(1),
      I5 => Q(2),
      O => \ADDR_SNG_PORT.bram_addr_int[13]_i_11_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => axi_rvalid_int_reg,
      I1 => s_axi_rready,
      I2 => brst_zero,
      I3 => end_brst_rd,
      O => \^addr_sng_port.bram_addr_int_reg[11]_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AABA"
    )
        port map (
      I0 => \out\(0),
      I1 => axi_rd_burst_two_reg,
      I2 => \out\(1),
      I3 => \out\(2),
      O => \ADDR_SNG_PORT.bram_addr_int[13]_i_13_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040FF40FFFFFFFF"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I1 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I2 => curr_wrap_burst_reg,
      I3 => p_0_out,
      I4 => \GEN_AR_SNG.ar_active_d1_reg\,
      I5 => curr_wrap_burst_reg_reg,
      O => \^addr_sng_port.bram_addr_int_reg[13]\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[13]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_9_n_0\,
      I2 => s_axi_araddr(11),
      I3 => p_0_out,
      I4 => \save_init_bram_addr_ld_reg[13]_0\(10),
      O => D(11)
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFB"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[1]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[0]\,
      I3 => \^addr_sng_port.bram_addr_int_reg[6]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[13]_i_11_n_0\,
      O => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAE0020"
    )
        port map (
      I0 => \^fsm_sequential_rd_data_sm_cs_reg[2]\,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \^addr_sng_port.bram_addr_int_reg[11]_0\,
      I4 => \ADDR_SNG_PORT.bram_addr_int[13]_i_13_n_0\,
      I5 => \out\(3),
      O => \^addr_sng_port.bram_addr_int_reg[11]\
    );
\ADDR_SNG_PORT.bram_addr_int[13]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AB000000"
    )
        port map (
      I0 => \ADDR_SNG_PORT.bram_addr_int[13]_i_11_n_0\,
      I1 => \^addr_sng_port.bram_addr_int_reg[6]\,
      I2 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I3 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I4 => curr_wrap_burst_reg,
      O => \ADDR_SNG_PORT.bram_addr_int[13]_i_9_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2000002F20FFFF"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_9_n_0\,
      I2 => p_0_out,
      I3 => aw_active_d1_reg,
      I4 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I5 => Q(0),
      O => D(0)
    );
\ADDR_SNG_PORT.bram_addr_int[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(1),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(0),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(0),
      I5 => Q(1),
      O => D(1)
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(2),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(1),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(2),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[2]\,
      O => D(2)
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(3),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(2),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(3),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      O => D(3)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(4),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(3),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(4),
      I5 => \^addr_sng_port.bram_addr_int_reg[6]\,
      O => D(4)
    );
\ADDR_SNG_PORT.bram_addr_int[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      O => \^addr_sng_port.bram_addr_int_reg[6]\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(5),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(4),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(5),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      O => D(5)
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FFB800B800B8FF"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(6),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(5),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\,
      I5 => Q(6),
      O => D(6)
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B800B8FFB8FFB800"
    )
        port map (
      I0 => RdChnl_BRAM_Addr_Ld(7),
      I1 => p_0_out,
      I2 => \save_init_bram_addr_ld_reg[13]_0\(6),
      I3 => \^addr_sng_port.bram_addr_int_reg[13]\,
      I4 => Q(7),
      I5 => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      O => D(7)
    );
\FSM_sequential_rd_data_sm_cs[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000EFFFF"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => axi_rd_burst_two_reg,
      I2 => \out\(1),
      I3 => \out\(2),
      I4 => \out\(0),
      O => \^fsm_sequential_rd_data_sm_cs_reg[2]\
    );
bram_rst_a_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
\save_init_bram_addr_ld[10]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[10]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(8),
      O => RdChnl_BRAM_Addr_Ld(8)
    );
\save_init_bram_addr_ld[11]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[11]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(9),
      O => RdChnl_BRAM_Addr_Ld(9)
    );
\save_init_bram_addr_ld[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[12]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_9_n_0\,
      I2 => s_axi_araddr(10),
      O => RdChnl_BRAM_Addr_Ld(10)
    );
\save_init_bram_addr_ld[13]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[13]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_9_n_0\,
      I2 => s_axi_araddr(11),
      O => RdChnl_BRAM_Addr_Ld(11)
    );
\save_init_bram_addr_ld[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld[3]_i_2_n_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(1),
      O => RdChnl_BRAM_Addr_Ld(1)
    );
\save_init_bram_addr_ld[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C80C"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[0]\,
      I1 => \save_init_bram_addr_ld_reg_n_0_[3]\,
      I2 => \wrap_burst_total_reg_n_0_[1]\,
      I3 => \wrap_burst_total_reg_n_0_[2]\,
      O => \save_init_bram_addr_ld[3]_i_2_n_0\
    );
\save_init_bram_addr_ld[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld[4]_i_2_n_0\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(2),
      O => RdChnl_BRAM_Addr_Ld(2)
    );
\save_init_bram_addr_ld[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB00"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[1]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[0]\,
      I3 => \save_init_bram_addr_ld_reg_n_0_[4]\,
      O => \save_init_bram_addr_ld[4]_i_2_n_0\
    );
\save_init_bram_addr_ld[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8FFFFFF08000000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[5]\,
      I1 => \save_init_bram_addr_ld[5]_i_2_n_0\,
      I2 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I3 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I4 => curr_wrap_burst_reg,
      I5 => s_axi_araddr(3),
      O => RdChnl_BRAM_Addr_Ld(3)
    );
\save_init_bram_addr_ld[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \wrap_burst_total_reg_n_0_[1]\,
      I1 => \wrap_burst_total_reg_n_0_[2]\,
      I2 => \wrap_burst_total_reg_n_0_[0]\,
      O => \save_init_bram_addr_ld[5]_i_2_n_0\
    );
\save_init_bram_addr_ld[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[6]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(4),
      O => RdChnl_BRAM_Addr_Ld(4)
    );
\save_init_bram_addr_ld[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[7]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(5),
      O => RdChnl_BRAM_Addr_Ld(5)
    );
\save_init_bram_addr_ld[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[8]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(6),
      O => RdChnl_BRAM_Addr_Ld(6)
    );
\save_init_bram_addr_ld[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \save_init_bram_addr_ld_reg_n_0_[9]\,
      I1 => \ADDR_SNG_PORT.bram_addr_int[13]_i_6_n_0\,
      I2 => \^addr_sng_port.bram_addr_int_reg[11]\,
      I3 => curr_wrap_burst_reg,
      I4 => s_axi_araddr(7),
      O => RdChnl_BRAM_Addr_Ld(7)
    );
\save_init_bram_addr_ld_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(8),
      Q => \save_init_bram_addr_ld_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(9),
      Q => \save_init_bram_addr_ld_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(10),
      Q => \save_init_bram_addr_ld_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(11),
      Q => \save_init_bram_addr_ld_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(1),
      Q => \save_init_bram_addr_ld_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(2),
      Q => \save_init_bram_addr_ld_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(3),
      Q => \save_init_bram_addr_ld_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(4),
      Q => \save_init_bram_addr_ld_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(5),
      Q => \save_init_bram_addr_ld_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(6),
      Q => \save_init_bram_addr_ld_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\save_init_bram_addr_ld_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => RdChnl_BRAM_Addr_Ld(7),
      Q => \save_init_bram_addr_ld_reg_n_0_[9]\,
      R => \^sr\(0)
    );
\wrap_burst_total[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0804"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(2),
      O => \wrap_burst_total[0]_i_1__0_n_0\
    );
\wrap_burst_total[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(3),
      O => \wrap_burst_total[1]_i_1__0_n_0\
    );
\wrap_burst_total[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(3),
      O => \wrap_burst_total[2]_i_1__0_n_0\
    );
\wrap_burst_total_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[0]_i_1__0_n_0\,
      Q => \wrap_burst_total_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\wrap_burst_total_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[1]_i_1__0_n_0\,
      Q => \wrap_burst_total_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\wrap_burst_total_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \wrap_burst_total[2]_i_1__0_n_0\,
      Q => \wrap_burst_total_reg_n_0_[2]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 16) => B"0000000000000000",
      DIBDI(15 downto 0) => dinb(15 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => doutb(15 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3 downto 2) => web(1 downto 0),
      WEBWE(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized0\ : entity is "blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper";
end \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized0\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized0\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 16) => B"0000000000000000",
      DIBDI(15 downto 0) => dinb(15 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => doutb(15 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3 downto 2) => web(1 downto 0),
      WEBWE(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized1\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized1\ : entity is "blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper";
end \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized1\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized1\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 16) => B"0000000000000000",
      DIBDI(15 downto 0) => dinb(15 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => doutb(15 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3 downto 2) => web(1 downto 0),
      WEBWE(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized2\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized2\ : entity is "blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper";
end \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized2\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized2\ is
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\ : STD_LOGIC;
  signal \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 1,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(15) => '1',
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"111",
      ADDRBWRADDR(15) => '1',
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"1111",
      CASCADEINA => '0',
      CASCADEINB => '0',
      CASCADEOUTA => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED\,
      CASCADEOUTB => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clkb,
      DBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DIADI(31 downto 8) => B"000000000000000000000000",
      DIADI(7 downto 0) => dina(7 downto 0),
      DIBDI(31 downto 16) => B"0000000000000000",
      DIBDI(15 downto 0) => dinb(15 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 8) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED\(31 downto 8),
      DOADO(7 downto 0) => douta(7 downto 0),
      DOBDO(31 downto 16) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED\(31 downto 16),
      DOBDO(15 downto 0) => doutb(15 downto 0),
      DOPADOP(3 downto 1) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED\(3 downto 1),
      DOPADOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_71\,
      DOPBDOP(3 downto 2) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED\(3 downto 2),
      DOPBDOP(1) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_74\,
      DOPBDOP(0) => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_75\,
      ECCPARITY(7 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ENARDEN => ena,
      ENBWREN => enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => enb,
      RSTRAMARSTRAM => rsta,
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => rstb,
      SBITERR => \NLW_DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      WEA(3) => wea(0),
      WEA(2) => wea(0),
      WEA(1) => wea(0),
      WEA(0) => wea(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3 downto 2) => web(1 downto 0),
      WEBWE(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_GPIO_Core is
  port (
    reg3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reg1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    GPIO_xferAck_i : out STD_LOGIC;
    gpio_xferAck_Reg : out STD_LOGIC;
    ip2bus_wrack_i : out STD_LOGIC;
    ip2bus_rdack_i : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    bus2ip_rnw_i_reg : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    bus2ip_cs : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rnw : in STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rst_reg : in STD_LOGIC;
    rst_reg_0 : in STD_LOGIC
  );
end TDCsystem_AXITDC_0_0_GPIO_Core;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_GPIO_Core is
  signal \Dual.gpio2_Data_Out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio2_Data_Out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio2_OE[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio2_OE[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio_Data_Out[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio_Data_Out[1]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio_OE[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio_OE[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gpio_xferack_i\ : STD_LOGIC;
  signal Read_Reg_In : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^gpio2_io_o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gpio2_io_t\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gpio_Data_In : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gpio_io_i_d2 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^gpio_io_o\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gpio_io_t\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gpio_xferack_reg\ : STD_LOGIC;
  signal iGPIO_xferAck : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Dual.gpio2_Data_Out[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Dual.gpio2_Data_Out[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Dual.gpio2_OE[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Dual.gpio2_OE[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Dual.gpio_Data_Out[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \Dual.gpio_OE[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \__1/i_\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \__2/i_\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ip2bus_rdack_i_D1_i_1 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ip2bus_wrack_i_D1_i_1 : label is "soft_lutpair9";
begin
  GPIO_xferAck_i <= \^gpio_xferack_i\;
  gpio2_io_o(1 downto 0) <= \^gpio2_io_o\(1 downto 0);
  gpio2_io_t(1 downto 0) <= \^gpio2_io_t\(1 downto 0);
  gpio_io_o(1 downto 0) <= \^gpio_io_o\(1 downto 0);
  gpio_io_t(1 downto 0) <= \^gpio_io_t\(1 downto 0);
  gpio_xferAck_Reg <= \^gpio_xferack_reg\;
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^gpio_xferack_reg\,
      I1 => bus2ip_cs,
      I2 => \^gpio_xferack_i\,
      O => iGPIO_xferAck
    );
\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => gpio_Data_In(0),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^gpio_io_t\(1),
      O => Read_Reg_In(0)
    );
\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Read_Reg_In(0),
      Q => reg1(1),
      R => bus2ip_rnw_i_reg
    );
\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03020002"
    )
        port map (
      I0 => gpio_Data_In(1),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \^gpio_io_t\(0),
      O => Read_Reg_In(1)
    );
\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Read_Reg_In(1),
      Q => reg1(0),
      R => bus2ip_rnw_i_reg
    );
\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[0].reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio2_io_o\(1),
      Q => reg3(1),
      R => bus2ip_rnw_i_reg
    );
\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio2_io_o\(0),
      Q => reg3(0),
      R => bus2ip_rnw_i_reg
    );
\Dual.INPUT_DOUBLE_REGS4\: entity work.TDCsystem_AXITDC_0_0_cdc_sync
     port map (
      gpio_io_i(1 downto 0) => gpio_io_i(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      scndry_vect_out(1) => gpio_io_i_d2(0),
      scndry_vect_out(0) => gpio_io_i_d2(1)
    );
\Dual.gpio2_Data_Out[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => rst_reg,
      I2 => \^gpio2_io_o\(1),
      O => \Dual.gpio2_Data_Out[0]_i_1_n_0\
    );
\Dual.gpio2_Data_Out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => rst_reg,
      I2 => \^gpio2_io_o\(0),
      O => \Dual.gpio2_Data_Out[1]_i_1_n_0\
    );
\Dual.gpio2_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_Data_Out[0]_i_1_n_0\,
      Q => \^gpio2_io_o\(1),
      R => bus2ip_reset
    );
\Dual.gpio2_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_Data_Out[1]_i_1_n_0\,
      Q => \^gpio2_io_o\(0),
      R => bus2ip_reset
    );
\Dual.gpio2_OE[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => rst_reg_0,
      I2 => \^gpio2_io_t\(1),
      O => \Dual.gpio2_OE[0]_i_1_n_0\
    );
\Dual.gpio2_OE[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => rst_reg_0,
      I2 => \^gpio2_io_t\(0),
      O => \Dual.gpio2_OE[1]_i_1_n_0\
    );
\Dual.gpio2_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_OE[0]_i_1_n_0\,
      Q => \^gpio2_io_t\(1),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_OE[1]_i_1_n_0\,
      Q => \^gpio2_io_t\(0),
      S => bus2ip_reset
    );
\Dual.gpio_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(0),
      Q => gpio_Data_In(0),
      R => '0'
    );
\Dual.gpio_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(1),
      Q => gpio_Data_In(1),
      R => '0'
    );
\Dual.gpio_Data_Out[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => bus2ip_rnw,
      I2 => p_0_in6_in,
      I3 => \^gpio_io_o\(1),
      O => \Dual.gpio_Data_Out[0]_i_1_n_0\
    );
\Dual.gpio_Data_Out[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => bus2ip_rnw,
      I2 => p_0_in6_in,
      I3 => \^gpio_io_o\(0),
      O => \Dual.gpio_Data_Out[1]_i_1_n_0\
    );
\Dual.gpio_Data_Out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio_Data_Out[0]_i_1_n_0\,
      Q => \^gpio_io_o\(1),
      R => bus2ip_reset
    );
\Dual.gpio_Data_Out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio_Data_Out[1]_i_1_n_0\,
      Q => \^gpio_io_o\(0),
      R => bus2ip_reset
    );
\Dual.gpio_OE[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => bus2ip_rnw,
      I2 => p_0_in4_in,
      I3 => \^gpio_io_t\(1),
      O => \Dual.gpio_OE[0]_i_1_n_0\
    );
\Dual.gpio_OE[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EF20"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => bus2ip_rnw,
      I2 => p_0_in4_in,
      I3 => \^gpio_io_t\(0),
      O => \Dual.gpio_OE[1]_i_1_n_0\
    );
\Dual.gpio_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio_OE[0]_i_1_n_0\,
      Q => \^gpio_io_t\(1),
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio_OE[1]_i_1_n_0\,
      Q => \^gpio_io_t\(0),
      S => bus2ip_reset
    );
\__1/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => Q(2),
      I1 => bus2ip_cs,
      I2 => Q(1),
      I3 => Q(0),
      O => p_0_in6_in
    );
\__2/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => Q(2),
      I1 => bus2ip_cs,
      I2 => Q(1),
      I3 => Q(0),
      O => p_0_in4_in
    );
gpio_xferAck_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_xferack_i\,
      Q => \^gpio_xferack_reg\,
      R => bus2ip_reset
    );
iGPIO_xferAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => iGPIO_xferAck,
      Q => \^gpio_xferack_i\,
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gpio_xferack_i\,
      I1 => bus2ip_rnw,
      O => ip2bus_rdack_i
    );
ip2bus_wrack_i_D1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^gpio_xferack_i\,
      I1 => bus2ip_rnw,
      O => ip2bus_wrack_i
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized2\ is
  port (
    validOut_reg : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    validIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized2\ : entity is "adderTreeLegacy";
end \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized2\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized2\ is
  signal p_0_in0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \x[10]_i_2_n_0\ : STD_LOGIC;
  signal \x[10]_i_3_n_0\ : STD_LOGIC;
  signal \x[10]_i_4_n_0\ : STD_LOGIC;
  signal \x[10]_i_5_n_0\ : STD_LOGIC;
  signal \x[13]_i_2_n_0\ : STD_LOGIC;
  signal \x[13]_i_3_n_0\ : STD_LOGIC;
  signal \x[3]_i_2_n_0\ : STD_LOGIC;
  signal \x[3]_i_3_n_0\ : STD_LOGIC;
  signal \x[3]_i_4_n_0\ : STD_LOGIC;
  signal \x[3]_i_5_n_0\ : STD_LOGIC;
  signal \x[6]_i_2_n_0\ : STD_LOGIC;
  signal \x[6]_i_3_n_0\ : STD_LOGIC;
  signal x_in0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal x_in01_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \x_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \x_reg[10]_i_1_n_1\ : STD_LOGIC;
  signal \x_reg[10]_i_1_n_2\ : STD_LOGIC;
  signal \x_reg[10]_i_1_n_3\ : STD_LOGIC;
  signal \x_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \x_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \x_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \x_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \x_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \x_reg[6]_i_1_n_3\ : STD_LOGIC;
  signal \x_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_reg_n_0_[10]\ : STD_LOGIC;
  signal \x_reg_n_0_[11]\ : STD_LOGIC;
  signal \x_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_reg_n_0_[4]\ : STD_LOGIC;
  signal \x_reg_n_0_[5]\ : STD_LOGIC;
  signal \x_reg_n_0_[6]\ : STD_LOGIC;
  signal \x_reg_n_0_[7]\ : STD_LOGIC;
  signal \x_reg_n_0_[8]\ : STD_LOGIC;
  signal \x_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_x_reg[13]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_x_reg[13]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_x_reg[6]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_x_reg[6]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
\RECURSE.NEXT_LEVEL\: entity work.\TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized3\
     port map (
      D(13 downto 7) => x_in01_out(6 downto 0),
      D(6 downto 0) => x_in0(6 downto 0),
      clk => clk,
      sum(7 downto 0) => sum(7 downto 0),
      validIn => validIn,
      validOut_reg => validOut_reg
    );
\x[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(3),
      I1 => p_0_in0_in(3),
      O => \x[10]_i_2_n_0\
    );
\x[10]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(2),
      I1 => p_0_in0_in(2),
      O => \x[10]_i_3_n_0\
    );
\x[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(1),
      I1 => p_0_in0_in(1),
      O => \x[10]_i_4_n_0\
    );
\x[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(0),
      I1 => p_0_in0_in(0),
      O => \x[10]_i_5_n_0\
    );
\x[13]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(5),
      I1 => p_0_in0_in(5),
      O => \x[13]_i_2_n_0\
    );
\x[13]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in(4),
      I1 => p_0_in0_in(4),
      O => \x[13]_i_3_n_0\
    );
\x[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[3]\,
      I1 => \x_reg_n_0_[9]\,
      O => \x[3]_i_2_n_0\
    );
\x[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[2]\,
      I1 => \x_reg_n_0_[8]\,
      O => \x[3]_i_3_n_0\
    );
\x[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[1]\,
      I1 => \x_reg_n_0_[7]\,
      O => \x[3]_i_4_n_0\
    );
\x[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => \x_reg_n_0_[6]\,
      O => \x[3]_i_5_n_0\
    );
\x[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[5]\,
      I1 => \x_reg_n_0_[11]\,
      O => \x[6]_i_2_n_0\
    );
\x[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[4]\,
      I1 => \x_reg_n_0_[10]\,
      O => \x[6]_i_3_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \x_reg_n_0_[0]\,
      R => '0'
    );
\x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(10),
      Q => \x_reg_n_0_[10]\,
      R => '0'
    );
\x_reg[10]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_reg[10]_i_1_n_0\,
      CO(2) => \x_reg[10]_i_1_n_1\,
      CO(1) => \x_reg[10]_i_1_n_2\,
      CO(0) => \x_reg[10]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => p_1_in(3 downto 0),
      O(3 downto 0) => x_in01_out(3 downto 0),
      S(3) => \x[10]_i_2_n_0\,
      S(2) => \x[10]_i_3_n_0\,
      S(1) => \x[10]_i_4_n_0\,
      S(0) => \x[10]_i_5_n_0\
    );
\x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(11),
      Q => \x_reg_n_0_[11]\,
      R => '0'
    );
\x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(12),
      Q => p_1_in(0),
      R => '0'
    );
\x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(13),
      Q => p_1_in(1),
      R => '0'
    );
\x_reg[13]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_reg[10]_i_1_n_0\,
      CO(3) => \NLW_x_reg[13]_i_1_CO_UNCONNECTED\(3),
      CO(2) => x_in01_out(6),
      CO(1) => \NLW_x_reg[13]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \x_reg[13]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => p_1_in(5 downto 4),
      O(3 downto 2) => \NLW_x_reg[13]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => x_in01_out(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => \x[13]_i_2_n_0\,
      S(0) => \x[13]_i_3_n_0\
    );
\x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(14),
      Q => p_1_in(2),
      R => '0'
    );
\x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(15),
      Q => p_1_in(3),
      R => '0'
    );
\x_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(16),
      Q => p_1_in(4),
      R => '0'
    );
\x_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(17),
      Q => p_1_in(5),
      R => '0'
    );
\x_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(18),
      Q => p_0_in0_in(0),
      R => '0'
    );
\x_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(19),
      Q => p_0_in0_in(1),
      R => '0'
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => \x_reg_n_0_[1]\,
      R => '0'
    );
\x_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(20),
      Q => p_0_in0_in(2),
      R => '0'
    );
\x_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(21),
      Q => p_0_in0_in(3),
      R => '0'
    );
\x_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(22),
      Q => p_0_in0_in(4),
      R => '0'
    );
\x_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(23),
      Q => p_0_in0_in(5),
      R => '0'
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => \x_reg_n_0_[2]\,
      R => '0'
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => \x_reg_n_0_[3]\,
      R => '0'
    );
\x_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \x_reg[3]_i_1_n_0\,
      CO(2) => \x_reg[3]_i_1_n_1\,
      CO(1) => \x_reg[3]_i_1_n_2\,
      CO(0) => \x_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \x_reg_n_0_[3]\,
      DI(2) => \x_reg_n_0_[2]\,
      DI(1) => \x_reg_n_0_[1]\,
      DI(0) => \x_reg_n_0_[0]\,
      O(3 downto 0) => x_in0(3 downto 0),
      S(3) => \x[3]_i_2_n_0\,
      S(2) => \x[3]_i_3_n_0\,
      S(1) => \x[3]_i_4_n_0\,
      S(0) => \x[3]_i_5_n_0\
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => \x_reg_n_0_[4]\,
      R => '0'
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => \x_reg_n_0_[5]\,
      R => '0'
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => \x_reg_n_0_[6]\,
      R => '0'
    );
\x_reg[6]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \x_reg[3]_i_1_n_0\,
      CO(3) => \NLW_x_reg[6]_i_1_CO_UNCONNECTED\(3),
      CO(2) => x_in0(6),
      CO(1) => \NLW_x_reg[6]_i_1_CO_UNCONNECTED\(1),
      CO(0) => \x_reg[6]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \x_reg_n_0_[5]\,
      DI(0) => \x_reg_n_0_[4]\,
      O(3 downto 2) => \NLW_x_reg[6]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => x_in0(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => \x[6]_i_2_n_0\,
      S(0) => \x[6]_i_3_n_0\
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => \x_reg_n_0_[7]\,
      R => '0'
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(8),
      Q => \x_reg_n_0_[8]\,
      R => '0'
    );
\x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(9),
      Q => \x_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_address_decoder is
  port (
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    \Dual.gpio2_OE_reg[0]\ : out STD_LOGIC;
    \Dual.gpio2_Data_Out_reg[0]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    \bus2ip_addr_i_reg[8]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rst_reg : in STD_LOGIC;
    bus2ip_rnw_i_reg : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    is_read_reg : in STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    reg3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg1 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end TDCsystem_AXITDC_0_0_address_decoder;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_address_decoder is
  signal Bus_RNW_reg : STD_LOGIC;
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\ : STD_LOGIC;
  signal \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 0 to 3 );
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[30]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[30]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[30]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[30]_i_5\ : label is "soft_lutpair3";
begin
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_wready <= \^s_axi_wready\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => Bus_RNW_reg,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => Bus_RNW_reg,
      R => '0'
    );
\Dual.ALLOUT1_ND_G2.READ_REG2_GEN[1].reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => GPIO_xferAck_i,
      I2 => gpio_xferAck_Reg,
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      O => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\
    );
\Dual.gpio2_Data_Out[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAABAAAAAAAAAA"
    )
        port map (
      I0 => rst_reg,
      I1 => bus2ip_rnw_i_reg,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \bus2ip_addr_i_reg[8]\(0),
      I5 => \bus2ip_addr_i_reg[8]\(1),
      O => \Dual.gpio2_Data_Out_reg[0]\
    );
\Dual.gpio2_OE[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAAAAAAAAAAA"
    )
        port map (
      I0 => rst_reg,
      I1 => bus2ip_rnw_i_reg,
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I4 => \bus2ip_addr_i_reg[8]\(1),
      I5 => \bus2ip_addr_i_reg[8]\(0),
      O => \Dual.gpio2_OE_reg[0]\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_arready\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(0),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      R => cs_ce_clr
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[0].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.TDCsystem_AXITDC_0_0_pselect_f
     port map (
      \bus2ip_addr_i_reg[3]\(1 downto 0) => \bus2ip_addr_i_reg[8]\(1 downto 0),
      ce_expnd_i_3 => ce_expnd_i_3
    );
\MEM_DECODE_GEN[0].PER_CE_GEN[2].MULTIPLE_CES_THIS_CS_GEN.CE_I\: entity work.\TDCsystem_AXITDC_0_0_pselect_f__parameterized1\
     port map (
      \bus2ip_addr_i_reg[3]\(1 downto 0) => \bus2ip_addr_i_reg[8]\(1 downto 0),
      ce_expnd_i_1 => ce_expnd_i_1
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E0"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => Q,
      I2 => s_axi_aresetn,
      I3 => \^s_axi_arready\,
      I4 => \^s_axi_wready\,
      O => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \MEM_DECODE_GEN[0].cs_out_i[0]_i_1_n_0\,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => '0'
    );
\ip2bus_data_i_D1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I2 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I3 => Bus_RNW_reg,
      I4 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      O => D(2)
    );
\ip2bus_data_i_D1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005054A0000054A"
    )
        port map (
      I0 => bus2ip_rdce(3),
      I1 => reg3(1),
      I2 => bus2ip_rdce(2),
      I3 => bus2ip_rdce(1),
      I4 => bus2ip_rdce(0),
      I5 => reg1(1),
      O => D(1)
    );
\ip2bus_data_i_D1[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      O => bus2ip_rdce(3)
    );
\ip2bus_data_i_D1[30]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      O => bus2ip_rdce(2)
    );
\ip2bus_data_i_D1[30]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      O => bus2ip_rdce(1)
    );
\ip2bus_data_i_D1[30]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg\,
      I1 => Bus_RNW_reg,
      O => bus2ip_rdce(0)
    );
\ip2bus_data_i_D1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0005054A0000054A"
    )
        port map (
      I0 => bus2ip_rdce(3),
      I1 => reg3(0),
      I2 => bus2ip_rdce(2),
      I3 => bus2ip_rdce(1),
      I4 => bus2ip_rdce(0),
      I5 => reg1(0),
      O => D(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_rdack_i_D1,
      I1 => is_read_reg,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(0),
      O => \^s_axi_arready\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_wrack_i_D1,
      I1 => is_write_reg,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(0),
      O => \^s_axi_wready\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_delayLine is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 191 downto 0 );
    validIn : out STD_LOGIC;
    clk : in STD_LOGIC;
    hit : in STD_LOGIC;
    \FSM_sequential_state_reg[2]\ : in STD_LOGIC
  );
end TDCsystem_AXITDC_0_0_delayLine;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_delayLine is
  signal CYINIT : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal carryOut : STD_LOGIC_VECTOR ( 190 downto 0 );
  signal metaThermo : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal \NLW_GEN_CarryChain[10].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[11].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[12].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[13].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[14].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[15].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[16].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[17].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[18].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[19].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[1].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[20].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[21].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[22].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[23].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[24].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[25].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[26].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[27].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[28].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[29].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[2].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[30].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[31].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[32].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[33].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[34].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[35].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[36].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[37].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[38].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[39].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[3].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[40].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[41].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[42].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[43].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[44].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[45].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[46].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[47].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[4].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[5].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[6].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[7].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[8].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_GEN_CarryChain[9].CARRY4_inst_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_firstCarry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute box_type : string;
  attribute box_type of \GEN_CarryChain[10].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[11].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[12].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[13].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[14].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[15].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[16].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[17].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[18].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[19].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[1].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[20].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[21].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[22].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[23].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[24].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[25].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[26].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[27].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[28].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[29].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[2].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[30].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[31].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[32].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[33].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[34].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[35].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[36].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[37].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[38].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[39].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[3].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[40].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[41].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[42].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[43].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[44].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[45].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[46].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[47].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[4].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[5].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[6].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[7].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[8].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of \GEN_CarryChain[9].CARRY4_inst\ : label is "PRIMITIVE";
  attribute box_type of firstCarry : label is "PRIMITIVE";
begin
  D(0) <= \^d\(0);
  Q(191 downto 0) <= \^q\(191 downto 0);
\GEN_CarryChain[10].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(39),
      CO(3 downto 0) => carryOut(43 downto 40),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[10].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[11].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(43),
      CO(3 downto 0) => carryOut(47 downto 44),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[11].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[12].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(47),
      CO(3 downto 0) => carryOut(51 downto 48),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[12].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[13].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(51),
      CO(3 downto 0) => carryOut(55 downto 52),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[13].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[14].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(55),
      CO(3 downto 0) => carryOut(59 downto 56),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[14].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[15].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(59),
      CO(3 downto 0) => carryOut(63 downto 60),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[15].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[16].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(63),
      CO(3 downto 0) => carryOut(67 downto 64),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[16].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[17].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(67),
      CO(3 downto 0) => carryOut(71 downto 68),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[17].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[18].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(71),
      CO(3 downto 0) => carryOut(75 downto 72),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[18].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[19].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(75),
      CO(3 downto 0) => carryOut(79 downto 76),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[19].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[1].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(3),
      CO(3 downto 0) => carryOut(7 downto 4),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[1].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[20].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(79),
      CO(3 downto 0) => carryOut(83 downto 80),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[20].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[21].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(83),
      CO(3 downto 0) => carryOut(87 downto 84),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[21].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[22].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(87),
      CO(3 downto 0) => carryOut(91 downto 88),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[22].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[23].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(91),
      CO(3 downto 0) => carryOut(95 downto 92),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[23].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[24].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(95),
      CO(3 downto 0) => carryOut(99 downto 96),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[24].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[25].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(99),
      CO(3 downto 0) => carryOut(103 downto 100),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[25].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[26].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(103),
      CO(3 downto 0) => carryOut(107 downto 104),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[26].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[27].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(107),
      CO(3 downto 0) => carryOut(111 downto 108),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[27].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[28].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(111),
      CO(3 downto 0) => carryOut(115 downto 112),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[28].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[29].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(115),
      CO(3 downto 0) => carryOut(119 downto 116),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[29].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[2].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(7),
      CO(3 downto 0) => carryOut(11 downto 8),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[2].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[30].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(119),
      CO(3 downto 0) => carryOut(123 downto 120),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[30].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[31].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(123),
      CO(3 downto 0) => carryOut(127 downto 124),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[31].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[32].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(127),
      CO(3 downto 0) => carryOut(131 downto 128),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[32].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[33].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(131),
      CO(3 downto 0) => carryOut(135 downto 132),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[33].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[34].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(135),
      CO(3 downto 0) => carryOut(139 downto 136),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[34].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[35].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(139),
      CO(3 downto 0) => carryOut(143 downto 140),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[35].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[36].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(143),
      CO(3 downto 0) => carryOut(147 downto 144),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[36].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[37].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(147),
      CO(3 downto 0) => carryOut(151 downto 148),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[37].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[38].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(151),
      CO(3 downto 0) => carryOut(155 downto 152),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[38].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[39].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(155),
      CO(3 downto 0) => carryOut(159 downto 156),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[39].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[3].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(11),
      CO(3 downto 0) => carryOut(15 downto 12),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[3].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[40].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(159),
      CO(3 downto 0) => carryOut(163 downto 160),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[40].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[41].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(163),
      CO(3 downto 0) => carryOut(167 downto 164),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[41].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[42].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(167),
      CO(3 downto 0) => carryOut(171 downto 168),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[42].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[43].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(171),
      CO(3 downto 0) => carryOut(175 downto 172),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[43].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[44].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(175),
      CO(3 downto 0) => carryOut(179 downto 176),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[44].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[45].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(179),
      CO(3 downto 0) => carryOut(183 downto 180),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[45].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[46].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(183),
      CO(3 downto 0) => carryOut(187 downto 184),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[46].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[47].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(187),
      CO(3) => \^d\(0),
      CO(2 downto 0) => carryOut(190 downto 188),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[47].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[4].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(15),
      CO(3 downto 0) => carryOut(19 downto 16),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[4].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[5].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(19),
      CO(3 downto 0) => carryOut(23 downto 20),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[5].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[6].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(23),
      CO(3 downto 0) => carryOut(27 downto 24),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[6].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[7].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(27),
      CO(3 downto 0) => carryOut(31 downto 28),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[7].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[8].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(31),
      CO(3 downto 0) => carryOut(35 downto 32),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[8].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
\GEN_CarryChain[9].CARRY4_inst\: unisim.vcomponents.CARRY4
     port map (
      CI => carryOut(35),
      CO(3 downto 0) => carryOut(39 downto 36),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_GEN_CarryChain[9].CARRY4_inst_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"1111"
    );
RED: entity work.TDCsystem_AXITDC_0_0_risingEdgeDetector
     port map (
      Q(0) => \^q\(0),
      clk => clk,
      validIn => validIn
    );
firstCarry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => carryOut(3 downto 0),
      CYINIT => CYINIT,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_firstCarry_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"1111"
    );
hitQ_reg: unisim.vcomponents.FDCE
     port map (
      C => hit,
      CE => '1',
      CLR => \FSM_sequential_state_reg[2]\,
      D => '1',
      Q => CYINIT
    );
\metaThermo_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(0),
      Q => metaThermo(0),
      R => '0'
    );
\metaThermo_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(100),
      Q => metaThermo(100),
      R => '0'
    );
\metaThermo_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(101),
      Q => metaThermo(101),
      R => '0'
    );
\metaThermo_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(102),
      Q => metaThermo(102),
      R => '0'
    );
\metaThermo_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(103),
      Q => metaThermo(103),
      R => '0'
    );
\metaThermo_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(104),
      Q => metaThermo(104),
      R => '0'
    );
\metaThermo_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(105),
      Q => metaThermo(105),
      R => '0'
    );
\metaThermo_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(106),
      Q => metaThermo(106),
      R => '0'
    );
\metaThermo_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(107),
      Q => metaThermo(107),
      R => '0'
    );
\metaThermo_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(108),
      Q => metaThermo(108),
      R => '0'
    );
\metaThermo_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(109),
      Q => metaThermo(109),
      R => '0'
    );
\metaThermo_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(10),
      Q => metaThermo(10),
      R => '0'
    );
\metaThermo_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(110),
      Q => metaThermo(110),
      R => '0'
    );
\metaThermo_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(111),
      Q => metaThermo(111),
      R => '0'
    );
\metaThermo_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(112),
      Q => metaThermo(112),
      R => '0'
    );
\metaThermo_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(113),
      Q => metaThermo(113),
      R => '0'
    );
\metaThermo_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(114),
      Q => metaThermo(114),
      R => '0'
    );
\metaThermo_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(115),
      Q => metaThermo(115),
      R => '0'
    );
\metaThermo_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(116),
      Q => metaThermo(116),
      R => '0'
    );
\metaThermo_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(117),
      Q => metaThermo(117),
      R => '0'
    );
\metaThermo_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(118),
      Q => metaThermo(118),
      R => '0'
    );
\metaThermo_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(119),
      Q => metaThermo(119),
      R => '0'
    );
\metaThermo_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(11),
      Q => metaThermo(11),
      R => '0'
    );
\metaThermo_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(120),
      Q => metaThermo(120),
      R => '0'
    );
\metaThermo_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(121),
      Q => metaThermo(121),
      R => '0'
    );
\metaThermo_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(122),
      Q => metaThermo(122),
      R => '0'
    );
\metaThermo_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(123),
      Q => metaThermo(123),
      R => '0'
    );
\metaThermo_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(124),
      Q => metaThermo(124),
      R => '0'
    );
\metaThermo_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(125),
      Q => metaThermo(125),
      R => '0'
    );
\metaThermo_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(126),
      Q => metaThermo(126),
      R => '0'
    );
\metaThermo_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(127),
      Q => metaThermo(127),
      R => '0'
    );
\metaThermo_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(128),
      Q => metaThermo(128),
      R => '0'
    );
\metaThermo_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(129),
      Q => metaThermo(129),
      R => '0'
    );
\metaThermo_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(12),
      Q => metaThermo(12),
      R => '0'
    );
\metaThermo_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(130),
      Q => metaThermo(130),
      R => '0'
    );
\metaThermo_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(131),
      Q => metaThermo(131),
      R => '0'
    );
\metaThermo_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(132),
      Q => metaThermo(132),
      R => '0'
    );
\metaThermo_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(133),
      Q => metaThermo(133),
      R => '0'
    );
\metaThermo_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(134),
      Q => metaThermo(134),
      R => '0'
    );
\metaThermo_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(135),
      Q => metaThermo(135),
      R => '0'
    );
\metaThermo_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(136),
      Q => metaThermo(136),
      R => '0'
    );
\metaThermo_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(137),
      Q => metaThermo(137),
      R => '0'
    );
\metaThermo_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(138),
      Q => metaThermo(138),
      R => '0'
    );
\metaThermo_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(139),
      Q => metaThermo(139),
      R => '0'
    );
\metaThermo_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(13),
      Q => metaThermo(13),
      R => '0'
    );
\metaThermo_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(140),
      Q => metaThermo(140),
      R => '0'
    );
\metaThermo_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(141),
      Q => metaThermo(141),
      R => '0'
    );
\metaThermo_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(142),
      Q => metaThermo(142),
      R => '0'
    );
\metaThermo_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(143),
      Q => metaThermo(143),
      R => '0'
    );
\metaThermo_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(144),
      Q => metaThermo(144),
      R => '0'
    );
\metaThermo_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(145),
      Q => metaThermo(145),
      R => '0'
    );
\metaThermo_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(146),
      Q => metaThermo(146),
      R => '0'
    );
\metaThermo_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(147),
      Q => metaThermo(147),
      R => '0'
    );
\metaThermo_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(148),
      Q => metaThermo(148),
      R => '0'
    );
\metaThermo_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(149),
      Q => metaThermo(149),
      R => '0'
    );
\metaThermo_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(14),
      Q => metaThermo(14),
      R => '0'
    );
\metaThermo_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(150),
      Q => metaThermo(150),
      R => '0'
    );
\metaThermo_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(151),
      Q => metaThermo(151),
      R => '0'
    );
\metaThermo_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(152),
      Q => metaThermo(152),
      R => '0'
    );
\metaThermo_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(153),
      Q => metaThermo(153),
      R => '0'
    );
\metaThermo_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(154),
      Q => metaThermo(154),
      R => '0'
    );
\metaThermo_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(155),
      Q => metaThermo(155),
      R => '0'
    );
\metaThermo_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(156),
      Q => metaThermo(156),
      R => '0'
    );
\metaThermo_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(157),
      Q => metaThermo(157),
      R => '0'
    );
\metaThermo_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(158),
      Q => metaThermo(158),
      R => '0'
    );
\metaThermo_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(159),
      Q => metaThermo(159),
      R => '0'
    );
\metaThermo_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(15),
      Q => metaThermo(15),
      R => '0'
    );
\metaThermo_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(160),
      Q => metaThermo(160),
      R => '0'
    );
\metaThermo_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(161),
      Q => metaThermo(161),
      R => '0'
    );
\metaThermo_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(162),
      Q => metaThermo(162),
      R => '0'
    );
\metaThermo_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(163),
      Q => metaThermo(163),
      R => '0'
    );
\metaThermo_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(164),
      Q => metaThermo(164),
      R => '0'
    );
\metaThermo_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(165),
      Q => metaThermo(165),
      R => '0'
    );
\metaThermo_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(166),
      Q => metaThermo(166),
      R => '0'
    );
\metaThermo_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(167),
      Q => metaThermo(167),
      R => '0'
    );
\metaThermo_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(168),
      Q => metaThermo(168),
      R => '0'
    );
\metaThermo_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(169),
      Q => metaThermo(169),
      R => '0'
    );
\metaThermo_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(16),
      Q => metaThermo(16),
      R => '0'
    );
\metaThermo_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(170),
      Q => metaThermo(170),
      R => '0'
    );
\metaThermo_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(171),
      Q => metaThermo(171),
      R => '0'
    );
\metaThermo_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(172),
      Q => metaThermo(172),
      R => '0'
    );
\metaThermo_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(173),
      Q => metaThermo(173),
      R => '0'
    );
\metaThermo_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(174),
      Q => metaThermo(174),
      R => '0'
    );
\metaThermo_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(175),
      Q => metaThermo(175),
      R => '0'
    );
\metaThermo_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(176),
      Q => metaThermo(176),
      R => '0'
    );
\metaThermo_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(177),
      Q => metaThermo(177),
      R => '0'
    );
\metaThermo_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(178),
      Q => metaThermo(178),
      R => '0'
    );
\metaThermo_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(179),
      Q => metaThermo(179),
      R => '0'
    );
\metaThermo_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(17),
      Q => metaThermo(17),
      R => '0'
    );
\metaThermo_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(180),
      Q => metaThermo(180),
      R => '0'
    );
\metaThermo_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(181),
      Q => metaThermo(181),
      R => '0'
    );
\metaThermo_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(182),
      Q => metaThermo(182),
      R => '0'
    );
\metaThermo_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(183),
      Q => metaThermo(183),
      R => '0'
    );
\metaThermo_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(184),
      Q => metaThermo(184),
      R => '0'
    );
\metaThermo_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(185),
      Q => metaThermo(185),
      R => '0'
    );
\metaThermo_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(186),
      Q => metaThermo(186),
      R => '0'
    );
\metaThermo_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(187),
      Q => metaThermo(187),
      R => '0'
    );
\metaThermo_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(188),
      Q => metaThermo(188),
      R => '0'
    );
\metaThermo_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(189),
      Q => metaThermo(189),
      R => '0'
    );
\metaThermo_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(18),
      Q => metaThermo(18),
      R => '0'
    );
\metaThermo_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(190),
      Q => metaThermo(190),
      R => '0'
    );
\metaThermo_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^d\(0),
      Q => metaThermo(191),
      R => '0'
    );
\metaThermo_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(19),
      Q => metaThermo(19),
      R => '0'
    );
\metaThermo_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(1),
      Q => metaThermo(1),
      R => '0'
    );
\metaThermo_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(20),
      Q => metaThermo(20),
      R => '0'
    );
\metaThermo_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(21),
      Q => metaThermo(21),
      R => '0'
    );
\metaThermo_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(22),
      Q => metaThermo(22),
      R => '0'
    );
\metaThermo_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(23),
      Q => metaThermo(23),
      R => '0'
    );
\metaThermo_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(24),
      Q => metaThermo(24),
      R => '0'
    );
\metaThermo_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(25),
      Q => metaThermo(25),
      R => '0'
    );
\metaThermo_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(26),
      Q => metaThermo(26),
      R => '0'
    );
\metaThermo_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(27),
      Q => metaThermo(27),
      R => '0'
    );
\metaThermo_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(28),
      Q => metaThermo(28),
      R => '0'
    );
\metaThermo_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(29),
      Q => metaThermo(29),
      R => '0'
    );
\metaThermo_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(2),
      Q => metaThermo(2),
      R => '0'
    );
\metaThermo_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(30),
      Q => metaThermo(30),
      R => '0'
    );
\metaThermo_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(31),
      Q => metaThermo(31),
      R => '0'
    );
\metaThermo_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(32),
      Q => metaThermo(32),
      R => '0'
    );
\metaThermo_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(33),
      Q => metaThermo(33),
      R => '0'
    );
\metaThermo_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(34),
      Q => metaThermo(34),
      R => '0'
    );
\metaThermo_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(35),
      Q => metaThermo(35),
      R => '0'
    );
\metaThermo_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(36),
      Q => metaThermo(36),
      R => '0'
    );
\metaThermo_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(37),
      Q => metaThermo(37),
      R => '0'
    );
\metaThermo_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(38),
      Q => metaThermo(38),
      R => '0'
    );
\metaThermo_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(39),
      Q => metaThermo(39),
      R => '0'
    );
\metaThermo_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(3),
      Q => metaThermo(3),
      R => '0'
    );
\metaThermo_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(40),
      Q => metaThermo(40),
      R => '0'
    );
\metaThermo_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(41),
      Q => metaThermo(41),
      R => '0'
    );
\metaThermo_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(42),
      Q => metaThermo(42),
      R => '0'
    );
\metaThermo_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(43),
      Q => metaThermo(43),
      R => '0'
    );
\metaThermo_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(44),
      Q => metaThermo(44),
      R => '0'
    );
\metaThermo_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(45),
      Q => metaThermo(45),
      R => '0'
    );
\metaThermo_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(46),
      Q => metaThermo(46),
      R => '0'
    );
\metaThermo_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(47),
      Q => metaThermo(47),
      R => '0'
    );
\metaThermo_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(48),
      Q => metaThermo(48),
      R => '0'
    );
\metaThermo_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(49),
      Q => metaThermo(49),
      R => '0'
    );
\metaThermo_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(4),
      Q => metaThermo(4),
      R => '0'
    );
\metaThermo_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(50),
      Q => metaThermo(50),
      R => '0'
    );
\metaThermo_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(51),
      Q => metaThermo(51),
      R => '0'
    );
\metaThermo_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(52),
      Q => metaThermo(52),
      R => '0'
    );
\metaThermo_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(53),
      Q => metaThermo(53),
      R => '0'
    );
\metaThermo_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(54),
      Q => metaThermo(54),
      R => '0'
    );
\metaThermo_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(55),
      Q => metaThermo(55),
      R => '0'
    );
\metaThermo_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(56),
      Q => metaThermo(56),
      R => '0'
    );
\metaThermo_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(57),
      Q => metaThermo(57),
      R => '0'
    );
\metaThermo_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(58),
      Q => metaThermo(58),
      R => '0'
    );
\metaThermo_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(59),
      Q => metaThermo(59),
      R => '0'
    );
\metaThermo_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(5),
      Q => metaThermo(5),
      R => '0'
    );
\metaThermo_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(60),
      Q => metaThermo(60),
      R => '0'
    );
\metaThermo_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(61),
      Q => metaThermo(61),
      R => '0'
    );
\metaThermo_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(62),
      Q => metaThermo(62),
      R => '0'
    );
\metaThermo_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(63),
      Q => metaThermo(63),
      R => '0'
    );
\metaThermo_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(64),
      Q => metaThermo(64),
      R => '0'
    );
\metaThermo_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(65),
      Q => metaThermo(65),
      R => '0'
    );
\metaThermo_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(66),
      Q => metaThermo(66),
      R => '0'
    );
\metaThermo_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(67),
      Q => metaThermo(67),
      R => '0'
    );
\metaThermo_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(68),
      Q => metaThermo(68),
      R => '0'
    );
\metaThermo_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(69),
      Q => metaThermo(69),
      R => '0'
    );
\metaThermo_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(6),
      Q => metaThermo(6),
      R => '0'
    );
\metaThermo_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(70),
      Q => metaThermo(70),
      R => '0'
    );
\metaThermo_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(71),
      Q => metaThermo(71),
      R => '0'
    );
\metaThermo_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(72),
      Q => metaThermo(72),
      R => '0'
    );
\metaThermo_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(73),
      Q => metaThermo(73),
      R => '0'
    );
\metaThermo_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(74),
      Q => metaThermo(74),
      R => '0'
    );
\metaThermo_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(75),
      Q => metaThermo(75),
      R => '0'
    );
\metaThermo_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(76),
      Q => metaThermo(76),
      R => '0'
    );
\metaThermo_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(77),
      Q => metaThermo(77),
      R => '0'
    );
\metaThermo_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(78),
      Q => metaThermo(78),
      R => '0'
    );
\metaThermo_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(79),
      Q => metaThermo(79),
      R => '0'
    );
\metaThermo_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(7),
      Q => metaThermo(7),
      R => '0'
    );
\metaThermo_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(80),
      Q => metaThermo(80),
      R => '0'
    );
\metaThermo_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(81),
      Q => metaThermo(81),
      R => '0'
    );
\metaThermo_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(82),
      Q => metaThermo(82),
      R => '0'
    );
\metaThermo_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(83),
      Q => metaThermo(83),
      R => '0'
    );
\metaThermo_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(84),
      Q => metaThermo(84),
      R => '0'
    );
\metaThermo_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(85),
      Q => metaThermo(85),
      R => '0'
    );
\metaThermo_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(86),
      Q => metaThermo(86),
      R => '0'
    );
\metaThermo_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(87),
      Q => metaThermo(87),
      R => '0'
    );
\metaThermo_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(88),
      Q => metaThermo(88),
      R => '0'
    );
\metaThermo_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(89),
      Q => metaThermo(89),
      R => '0'
    );
\metaThermo_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(8),
      Q => metaThermo(8),
      R => '0'
    );
\metaThermo_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(90),
      Q => metaThermo(90),
      R => '0'
    );
\metaThermo_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(91),
      Q => metaThermo(91),
      R => '0'
    );
\metaThermo_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(92),
      Q => metaThermo(92),
      R => '0'
    );
\metaThermo_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(93),
      Q => metaThermo(93),
      R => '0'
    );
\metaThermo_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(94),
      Q => metaThermo(94),
      R => '0'
    );
\metaThermo_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(95),
      Q => metaThermo(95),
      R => '0'
    );
\metaThermo_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(96),
      Q => metaThermo(96),
      R => '0'
    );
\metaThermo_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(97),
      Q => metaThermo(97),
      R => '0'
    );
\metaThermo_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(98),
      Q => metaThermo(98),
      R => '0'
    );
\metaThermo_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(99),
      Q => metaThermo(99),
      R => '0'
    );
\metaThermo_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => carryOut(9),
      Q => metaThermo(9),
      R => '0'
    );
\thermo_s_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(0),
      Q => \^q\(0),
      R => '0'
    );
\thermo_s_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(100),
      Q => \^q\(100),
      R => '0'
    );
\thermo_s_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(101),
      Q => \^q\(101),
      R => '0'
    );
\thermo_s_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(102),
      Q => \^q\(102),
      R => '0'
    );
\thermo_s_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(103),
      Q => \^q\(103),
      R => '0'
    );
\thermo_s_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(104),
      Q => \^q\(104),
      R => '0'
    );
\thermo_s_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(105),
      Q => \^q\(105),
      R => '0'
    );
\thermo_s_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(106),
      Q => \^q\(106),
      R => '0'
    );
\thermo_s_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(107),
      Q => \^q\(107),
      R => '0'
    );
\thermo_s_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(108),
      Q => \^q\(108),
      R => '0'
    );
\thermo_s_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(109),
      Q => \^q\(109),
      R => '0'
    );
\thermo_s_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(10),
      Q => \^q\(10),
      R => '0'
    );
\thermo_s_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(110),
      Q => \^q\(110),
      R => '0'
    );
\thermo_s_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(111),
      Q => \^q\(111),
      R => '0'
    );
\thermo_s_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(112),
      Q => \^q\(112),
      R => '0'
    );
\thermo_s_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(113),
      Q => \^q\(113),
      R => '0'
    );
\thermo_s_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(114),
      Q => \^q\(114),
      R => '0'
    );
\thermo_s_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(115),
      Q => \^q\(115),
      R => '0'
    );
\thermo_s_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(116),
      Q => \^q\(116),
      R => '0'
    );
\thermo_s_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(117),
      Q => \^q\(117),
      R => '0'
    );
\thermo_s_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(118),
      Q => \^q\(118),
      R => '0'
    );
\thermo_s_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(119),
      Q => \^q\(119),
      R => '0'
    );
\thermo_s_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(11),
      Q => \^q\(11),
      R => '0'
    );
\thermo_s_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(120),
      Q => \^q\(120),
      R => '0'
    );
\thermo_s_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(121),
      Q => \^q\(121),
      R => '0'
    );
\thermo_s_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(122),
      Q => \^q\(122),
      R => '0'
    );
\thermo_s_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(123),
      Q => \^q\(123),
      R => '0'
    );
\thermo_s_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(124),
      Q => \^q\(124),
      R => '0'
    );
\thermo_s_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(125),
      Q => \^q\(125),
      R => '0'
    );
\thermo_s_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(126),
      Q => \^q\(126),
      R => '0'
    );
\thermo_s_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(127),
      Q => \^q\(127),
      R => '0'
    );
\thermo_s_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(128),
      Q => \^q\(128),
      R => '0'
    );
\thermo_s_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(129),
      Q => \^q\(129),
      R => '0'
    );
\thermo_s_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(12),
      Q => \^q\(12),
      R => '0'
    );
\thermo_s_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(130),
      Q => \^q\(130),
      R => '0'
    );
\thermo_s_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(131),
      Q => \^q\(131),
      R => '0'
    );
\thermo_s_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(132),
      Q => \^q\(132),
      R => '0'
    );
\thermo_s_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(133),
      Q => \^q\(133),
      R => '0'
    );
\thermo_s_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(134),
      Q => \^q\(134),
      R => '0'
    );
\thermo_s_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(135),
      Q => \^q\(135),
      R => '0'
    );
\thermo_s_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(136),
      Q => \^q\(136),
      R => '0'
    );
\thermo_s_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(137),
      Q => \^q\(137),
      R => '0'
    );
\thermo_s_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(138),
      Q => \^q\(138),
      R => '0'
    );
\thermo_s_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(139),
      Q => \^q\(139),
      R => '0'
    );
\thermo_s_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(13),
      Q => \^q\(13),
      R => '0'
    );
\thermo_s_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(140),
      Q => \^q\(140),
      R => '0'
    );
\thermo_s_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(141),
      Q => \^q\(141),
      R => '0'
    );
\thermo_s_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(142),
      Q => \^q\(142),
      R => '0'
    );
\thermo_s_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(143),
      Q => \^q\(143),
      R => '0'
    );
\thermo_s_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(144),
      Q => \^q\(144),
      R => '0'
    );
\thermo_s_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(145),
      Q => \^q\(145),
      R => '0'
    );
\thermo_s_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(146),
      Q => \^q\(146),
      R => '0'
    );
\thermo_s_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(147),
      Q => \^q\(147),
      R => '0'
    );
\thermo_s_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(148),
      Q => \^q\(148),
      R => '0'
    );
\thermo_s_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(149),
      Q => \^q\(149),
      R => '0'
    );
\thermo_s_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(14),
      Q => \^q\(14),
      R => '0'
    );
\thermo_s_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(150),
      Q => \^q\(150),
      R => '0'
    );
\thermo_s_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(151),
      Q => \^q\(151),
      R => '0'
    );
\thermo_s_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(152),
      Q => \^q\(152),
      R => '0'
    );
\thermo_s_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(153),
      Q => \^q\(153),
      R => '0'
    );
\thermo_s_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(154),
      Q => \^q\(154),
      R => '0'
    );
\thermo_s_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(155),
      Q => \^q\(155),
      R => '0'
    );
\thermo_s_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(156),
      Q => \^q\(156),
      R => '0'
    );
\thermo_s_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(157),
      Q => \^q\(157),
      R => '0'
    );
\thermo_s_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(158),
      Q => \^q\(158),
      R => '0'
    );
\thermo_s_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(159),
      Q => \^q\(159),
      R => '0'
    );
\thermo_s_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(15),
      Q => \^q\(15),
      R => '0'
    );
\thermo_s_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(160),
      Q => \^q\(160),
      R => '0'
    );
\thermo_s_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(161),
      Q => \^q\(161),
      R => '0'
    );
\thermo_s_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(162),
      Q => \^q\(162),
      R => '0'
    );
\thermo_s_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(163),
      Q => \^q\(163),
      R => '0'
    );
\thermo_s_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(164),
      Q => \^q\(164),
      R => '0'
    );
\thermo_s_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(165),
      Q => \^q\(165),
      R => '0'
    );
\thermo_s_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(166),
      Q => \^q\(166),
      R => '0'
    );
\thermo_s_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(167),
      Q => \^q\(167),
      R => '0'
    );
\thermo_s_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(168),
      Q => \^q\(168),
      R => '0'
    );
\thermo_s_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(169),
      Q => \^q\(169),
      R => '0'
    );
\thermo_s_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(16),
      Q => \^q\(16),
      R => '0'
    );
\thermo_s_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(170),
      Q => \^q\(170),
      R => '0'
    );
\thermo_s_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(171),
      Q => \^q\(171),
      R => '0'
    );
\thermo_s_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(172),
      Q => \^q\(172),
      R => '0'
    );
\thermo_s_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(173),
      Q => \^q\(173),
      R => '0'
    );
\thermo_s_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(174),
      Q => \^q\(174),
      R => '0'
    );
\thermo_s_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(175),
      Q => \^q\(175),
      R => '0'
    );
\thermo_s_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(176),
      Q => \^q\(176),
      R => '0'
    );
\thermo_s_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(177),
      Q => \^q\(177),
      R => '0'
    );
\thermo_s_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(178),
      Q => \^q\(178),
      R => '0'
    );
\thermo_s_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(179),
      Q => \^q\(179),
      R => '0'
    );
\thermo_s_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(17),
      Q => \^q\(17),
      R => '0'
    );
\thermo_s_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(180),
      Q => \^q\(180),
      R => '0'
    );
\thermo_s_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(181),
      Q => \^q\(181),
      R => '0'
    );
\thermo_s_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(182),
      Q => \^q\(182),
      R => '0'
    );
\thermo_s_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(183),
      Q => \^q\(183),
      R => '0'
    );
\thermo_s_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(184),
      Q => \^q\(184),
      R => '0'
    );
\thermo_s_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(185),
      Q => \^q\(185),
      R => '0'
    );
\thermo_s_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(186),
      Q => \^q\(186),
      R => '0'
    );
\thermo_s_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(187),
      Q => \^q\(187),
      R => '0'
    );
\thermo_s_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(188),
      Q => \^q\(188),
      R => '0'
    );
\thermo_s_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(189),
      Q => \^q\(189),
      R => '0'
    );
\thermo_s_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(18),
      Q => \^q\(18),
      R => '0'
    );
\thermo_s_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(190),
      Q => \^q\(190),
      R => '0'
    );
\thermo_s_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(191),
      Q => \^q\(191),
      R => '0'
    );
\thermo_s_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(19),
      Q => \^q\(19),
      R => '0'
    );
\thermo_s_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(1),
      Q => \^q\(1),
      R => '0'
    );
\thermo_s_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(20),
      Q => \^q\(20),
      R => '0'
    );
\thermo_s_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(21),
      Q => \^q\(21),
      R => '0'
    );
\thermo_s_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(22),
      Q => \^q\(22),
      R => '0'
    );
\thermo_s_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(23),
      Q => \^q\(23),
      R => '0'
    );
\thermo_s_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(24),
      Q => \^q\(24),
      R => '0'
    );
\thermo_s_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(25),
      Q => \^q\(25),
      R => '0'
    );
\thermo_s_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(26),
      Q => \^q\(26),
      R => '0'
    );
\thermo_s_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(27),
      Q => \^q\(27),
      R => '0'
    );
\thermo_s_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(28),
      Q => \^q\(28),
      R => '0'
    );
\thermo_s_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(29),
      Q => \^q\(29),
      R => '0'
    );
\thermo_s_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(2),
      Q => \^q\(2),
      R => '0'
    );
\thermo_s_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(30),
      Q => \^q\(30),
      R => '0'
    );
\thermo_s_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(31),
      Q => \^q\(31),
      R => '0'
    );
\thermo_s_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(32),
      Q => \^q\(32),
      R => '0'
    );
\thermo_s_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(33),
      Q => \^q\(33),
      R => '0'
    );
\thermo_s_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(34),
      Q => \^q\(34),
      R => '0'
    );
\thermo_s_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(35),
      Q => \^q\(35),
      R => '0'
    );
\thermo_s_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(36),
      Q => \^q\(36),
      R => '0'
    );
\thermo_s_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(37),
      Q => \^q\(37),
      R => '0'
    );
\thermo_s_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(38),
      Q => \^q\(38),
      R => '0'
    );
\thermo_s_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(39),
      Q => \^q\(39),
      R => '0'
    );
\thermo_s_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(3),
      Q => \^q\(3),
      R => '0'
    );
\thermo_s_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(40),
      Q => \^q\(40),
      R => '0'
    );
\thermo_s_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(41),
      Q => \^q\(41),
      R => '0'
    );
\thermo_s_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(42),
      Q => \^q\(42),
      R => '0'
    );
\thermo_s_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(43),
      Q => \^q\(43),
      R => '0'
    );
\thermo_s_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(44),
      Q => \^q\(44),
      R => '0'
    );
\thermo_s_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(45),
      Q => \^q\(45),
      R => '0'
    );
\thermo_s_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(46),
      Q => \^q\(46),
      R => '0'
    );
\thermo_s_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(47),
      Q => \^q\(47),
      R => '0'
    );
\thermo_s_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(48),
      Q => \^q\(48),
      R => '0'
    );
\thermo_s_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(49),
      Q => \^q\(49),
      R => '0'
    );
\thermo_s_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(4),
      Q => \^q\(4),
      R => '0'
    );
\thermo_s_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(50),
      Q => \^q\(50),
      R => '0'
    );
\thermo_s_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(51),
      Q => \^q\(51),
      R => '0'
    );
\thermo_s_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(52),
      Q => \^q\(52),
      R => '0'
    );
\thermo_s_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(53),
      Q => \^q\(53),
      R => '0'
    );
\thermo_s_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(54),
      Q => \^q\(54),
      R => '0'
    );
\thermo_s_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(55),
      Q => \^q\(55),
      R => '0'
    );
\thermo_s_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(56),
      Q => \^q\(56),
      R => '0'
    );
\thermo_s_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(57),
      Q => \^q\(57),
      R => '0'
    );
\thermo_s_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(58),
      Q => \^q\(58),
      R => '0'
    );
\thermo_s_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(59),
      Q => \^q\(59),
      R => '0'
    );
\thermo_s_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(5),
      Q => \^q\(5),
      R => '0'
    );
\thermo_s_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(60),
      Q => \^q\(60),
      R => '0'
    );
\thermo_s_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(61),
      Q => \^q\(61),
      R => '0'
    );
\thermo_s_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(62),
      Q => \^q\(62),
      R => '0'
    );
\thermo_s_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(63),
      Q => \^q\(63),
      R => '0'
    );
\thermo_s_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(64),
      Q => \^q\(64),
      R => '0'
    );
\thermo_s_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(65),
      Q => \^q\(65),
      R => '0'
    );
\thermo_s_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(66),
      Q => \^q\(66),
      R => '0'
    );
\thermo_s_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(67),
      Q => \^q\(67),
      R => '0'
    );
\thermo_s_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(68),
      Q => \^q\(68),
      R => '0'
    );
\thermo_s_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(69),
      Q => \^q\(69),
      R => '0'
    );
\thermo_s_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(6),
      Q => \^q\(6),
      R => '0'
    );
\thermo_s_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(70),
      Q => \^q\(70),
      R => '0'
    );
\thermo_s_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(71),
      Q => \^q\(71),
      R => '0'
    );
\thermo_s_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(72),
      Q => \^q\(72),
      R => '0'
    );
\thermo_s_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(73),
      Q => \^q\(73),
      R => '0'
    );
\thermo_s_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(74),
      Q => \^q\(74),
      R => '0'
    );
\thermo_s_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(75),
      Q => \^q\(75),
      R => '0'
    );
\thermo_s_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(76),
      Q => \^q\(76),
      R => '0'
    );
\thermo_s_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(77),
      Q => \^q\(77),
      R => '0'
    );
\thermo_s_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(78),
      Q => \^q\(78),
      R => '0'
    );
\thermo_s_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(79),
      Q => \^q\(79),
      R => '0'
    );
\thermo_s_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(7),
      Q => \^q\(7),
      R => '0'
    );
\thermo_s_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(80),
      Q => \^q\(80),
      R => '0'
    );
\thermo_s_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(81),
      Q => \^q\(81),
      R => '0'
    );
\thermo_s_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(82),
      Q => \^q\(82),
      R => '0'
    );
\thermo_s_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(83),
      Q => \^q\(83),
      R => '0'
    );
\thermo_s_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(84),
      Q => \^q\(84),
      R => '0'
    );
\thermo_s_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(85),
      Q => \^q\(85),
      R => '0'
    );
\thermo_s_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(86),
      Q => \^q\(86),
      R => '0'
    );
\thermo_s_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(87),
      Q => \^q\(87),
      R => '0'
    );
\thermo_s_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(88),
      Q => \^q\(88),
      R => '0'
    );
\thermo_s_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(89),
      Q => \^q\(89),
      R => '0'
    );
\thermo_s_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(8),
      Q => \^q\(8),
      R => '0'
    );
\thermo_s_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(90),
      Q => \^q\(90),
      R => '0'
    );
\thermo_s_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(91),
      Q => \^q\(91),
      R => '0'
    );
\thermo_s_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(92),
      Q => \^q\(92),
      R => '0'
    );
\thermo_s_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(93),
      Q => \^q\(93),
      R => '0'
    );
\thermo_s_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(94),
      Q => \^q\(94),
      R => '0'
    );
\thermo_s_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(95),
      Q => \^q\(95),
      R => '0'
    );
\thermo_s_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(96),
      Q => \^q\(96),
      R => '0'
    );
\thermo_s_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(97),
      Q => \^q\(97),
      R => '0'
    );
\thermo_s_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(98),
      Q => \^q\(98),
      R => '0'
    );
\thermo_s_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(99),
      Q => \^q\(99),
      R => '0'
    );
\thermo_s_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => metaThermo(9),
      Q => \^q\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_rd_chnl is
  port (
    \save_init_bram_addr_ld_reg[3]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ar_active_d1 : out STD_LOGIC;
    s_axi_1_rvalid : out STD_LOGIC;
    s_axi_1_rlast : out STD_LOGIC;
    p_7_in : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 11 downto 0 );
    sng_bram_addr_ld_en : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    axi_awready_int_reg : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    ar_active_re : in STD_LOGIC;
    ar_active_reg : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_out : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    aw_active_d1_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \save_init_bram_addr_ld_reg[13]\ : in STD_LOGIC_VECTOR ( 10 downto 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[4]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[5]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[8]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[9]\ : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[10]\ : in STD_LOGIC;
    curr_fixed_burst_reg : in STD_LOGIC;
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : in STD_LOGIC;
    curr_wrap_burst_reg_reg_0 : in STD_LOGIC;
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end TDCsystem_AXITDC_0_0_rd_chnl;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_rd_chnl is
  signal \FSM_sequential_rd_data_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_rlast_sm_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[10]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[11]_i_3_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[4]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[5]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[7]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[8]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_RID_SNG.axi_rid_int[9]_i_1_n_0\ : STD_LOGIC;
  signal I_WRAP_BRST_n_0 : STD_LOGIC;
  signal I_WRAP_BRST_n_16 : STD_LOGIC;
  signal I_WRAP_BRST_n_18 : STD_LOGIC;
  signal act_rd_burst : STD_LOGIC;
  signal act_rd_burst_i_1_n_0 : STD_LOGIC;
  signal act_rd_burst_set : STD_LOGIC;
  signal act_rd_burst_two : STD_LOGIC;
  signal act_rd_burst_two_i_1_n_0 : STD_LOGIC;
  signal act_rd_burst_two_i_3_n_0 : STD_LOGIC;
  signal act_rd_burst_two_i_4_n_0 : STD_LOGIC;
  signal act_rd_burst_two_i_5_n_0 : STD_LOGIC;
  signal \^ar_active_d1\ : STD_LOGIC;
  signal axi_rd_burst : STD_LOGIC;
  signal axi_rd_burst_i_1_n_0 : STD_LOGIC;
  signal axi_rd_burst_i_3_n_0 : STD_LOGIC;
  signal axi_rd_burst_two : STD_LOGIC;
  signal axi_rd_burst_two_i_1_n_0 : STD_LOGIC;
  signal axi_rd_burst_two_reg_n_0 : STD_LOGIC;
  signal axi_rdata_en : STD_LOGIC;
  signal axi_rid_temp : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal axi_rlast_int_i_1_n_0 : STD_LOGIC;
  signal axi_rlast_int_i_2_n_0 : STD_LOGIC;
  signal axi_rlast_int_i_3_n_0 : STD_LOGIC;
  signal axi_rvalid_clr_ok : STD_LOGIC;
  signal axi_rvalid_clr_ok_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_clr_ok_i_2_n_0 : STD_LOGIC;
  signal axi_rvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_set : STD_LOGIC;
  signal axi_rvalid_set_cmb : STD_LOGIC;
  signal bram_en_int_i_1_n_0 : STD_LOGIC;
  signal bram_en_int_i_2_n_0 : STD_LOGIC;
  signal bram_en_int_i_3_n_0 : STD_LOGIC;
  signal bram_en_int_i_4_n_0 : STD_LOGIC;
  signal bram_en_int_i_5_n_0 : STD_LOGIC;
  signal bram_en_int_i_6_n_0 : STD_LOGIC;
  signal bram_en_int_i_7_n_0 : STD_LOGIC;
  signal brst_cnt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \brst_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \brst_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \brst_cnt[7]_i_2_n_0\ : STD_LOGIC;
  signal \brst_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal brst_cnt_max : STD_LOGIC;
  signal brst_cnt_max_d1 : STD_LOGIC;
  signal brst_one : STD_LOGIC;
  signal brst_one_i_1_n_0 : STD_LOGIC;
  signal brst_one_i_2_n_0 : STD_LOGIC;
  signal brst_zero : STD_LOGIC;
  signal brst_zero_i_1_n_0 : STD_LOGIC;
  signal brst_zero_i_2_n_0 : STD_LOGIC;
  signal brst_zero_i_3_n_0 : STD_LOGIC;
  signal curr_fixed_burst : STD_LOGIC;
  signal curr_fixed_burst_reg_0 : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal \curr_wrap_burst_reg_i_1__0_n_0\ : STD_LOGIC;
  signal disable_b2b_brst : STD_LOGIC;
  signal disable_b2b_brst_cmb : STD_LOGIC;
  signal disable_b2b_brst_i_2_n_0 : STD_LOGIC;
  signal disable_b2b_brst_i_3_n_0 : STD_LOGIC;
  signal end_brst_rd : STD_LOGIC;
  signal end_brst_rd_clr : STD_LOGIC;
  signal end_brst_rd_clr_cmb : STD_LOGIC;
  signal end_brst_rd_clr_i_1_n_0 : STD_LOGIC;
  signal end_brst_rd_i_1_n_0 : STD_LOGIC;
  signal last_bram_addr : STD_LOGIC;
  signal last_bram_addr0 : STD_LOGIC;
  signal last_bram_addr_i_2_n_0 : STD_LOGIC;
  signal last_bram_addr_i_3_n_0 : STD_LOGIC;
  signal last_bram_addr_i_4_n_0 : STD_LOGIC;
  signal last_bram_addr_i_5_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \^p_7_in\ : STD_LOGIC;
  signal pend_rd_op : STD_LOGIC;
  signal pend_rd_op_cmb : STD_LOGIC;
  signal pend_rd_op_i_1_n_0 : STD_LOGIC;
  signal pend_rd_op_i_3_n_0 : STD_LOGIC;
  signal pend_rd_op_i_4_n_0 : STD_LOGIC;
  signal pend_rd_op_i_5_n_0 : STD_LOGIC;
  signal rd_data_sm_cs : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of rd_data_sm_cs : signal is "yes";
  signal rd_data_sm_ns : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rd_skid_buf : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd_skid_buf_ld : STD_LOGIC;
  signal rd_skid_buf_ld_cmb : STD_LOGIC;
  signal rd_skid_buf_ld_reg : STD_LOGIC;
  signal rddata_mux_sel : STD_LOGIC;
  signal rddata_mux_sel_i_1_n_0 : STD_LOGIC;
  signal rddata_mux_sel_i_2_n_0 : STD_LOGIC;
  signal rddata_mux_sel_i_3_n_0 : STD_LOGIC;
  signal rlast_sm_cs : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute RTL_KEEP of rlast_sm_cs : signal is "yes";
  signal \^s_axi_1_rlast\ : STD_LOGIC;
  signal \^s_axi_1_rvalid\ : STD_LOGIC;
  signal \^save_init_bram_addr_ld_reg[3]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_rd_data_sm_cs_reg[0]\ : label is "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_rd_data_sm_cs_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rd_data_sm_cs_reg[1]\ : label is "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101";
  attribute KEEP of \FSM_sequential_rd_data_sm_cs_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rd_data_sm_cs_reg[2]\ : label is "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101";
  attribute KEEP of \FSM_sequential_rd_data_sm_cs_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rd_data_sm_cs_reg[3]\ : label is "full_pipe:0011,full_throttle:0100,sec_addr:0010,sng_addr:0001,idle:0000,last_data:0111,last_data_ar_pend:1000,last_throttle:0110,last_addr:0101";
  attribute KEEP of \FSM_sequential_rd_data_sm_cs_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rlast_sm_cs_reg[0]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rlast_sm_cs_reg[1]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_rlast_sm_cs_reg[2]\ : label is "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001";
  attribute KEEP of \FSM_sequential_rlast_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of act_rd_burst_two_i_5 : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of axi_awready_int_i_2 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of axi_rd_burst_i_2 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of axi_rd_burst_i_3 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \brst_cnt[4]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \brst_cnt[7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of brst_one_i_2 : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of brst_zero_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of brst_zero_i_3 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \curr_fixed_burst_reg_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \curr_wrap_burst_reg_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of last_bram_addr_i_2 : label is "soft_lutpair23";
begin
  ar_active_d1 <= \^ar_active_d1\;
  p_7_in <= \^p_7_in\;
  s_axi_1_rlast <= \^s_axi_1_rlast\;
  s_axi_1_rvalid <= \^s_axi_1_rvalid\;
  \save_init_bram_addr_ld_reg[3]\ <= \^save_init_bram_addr_ld_reg[3]\;
\FSM_sequential_rd_data_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A2A0A2A0B2B0B2A"
    )
        port map (
      I0 => \FSM_sequential_rd_data_sm_cs[0]_i_2_n_0\,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\,
      I5 => \FSM_sequential_rd_data_sm_cs[0]_i_3_n_0\,
      O => rd_data_sm_ns(0)
    );
\FSM_sequential_rd_data_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220FFFF2222FFFF"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I2 => pend_rd_op,
      I3 => ar_active_re,
      I4 => rd_data_sm_cs(0),
      I5 => rd_data_sm_cs(2),
      O => \FSM_sequential_rd_data_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_rd_data_sm_cs[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F700F700F7000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_1_rvalid\,
      I2 => ar_active_re,
      I3 => rd_data_sm_cs(2),
      I4 => act_rd_burst_two,
      I5 => act_rd_burst,
      O => \FSM_sequential_rd_data_sm_cs[0]_i_3_n_0\
    );
\FSM_sequential_rd_data_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000213FFFF"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(1),
      I2 => \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0\,
      I3 => \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\,
      I4 => rd_data_sm_cs(0),
      I5 => \FSM_sequential_rd_data_sm_cs[1]_i_3_n_0\,
      O => rd_data_sm_ns(1)
    );
\FSM_sequential_rd_data_sm_cs[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => axi_rd_burst_two_reg_n_0,
      O => \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_rd_data_sm_cs[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAFEFAAAAAAEF"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => axi_rd_burst_two_reg_n_0,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0\,
      O => \FSM_sequential_rd_data_sm_cs[1]_i_3_n_0\
    );
\FSM_sequential_rd_data_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444545454545"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => \FSM_sequential_rd_data_sm_cs[2]_i_2_n_0\,
      I2 => I_WRAP_BRST_n_0,
      I3 => rd_data_sm_cs(1),
      I4 => \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0\,
      I5 => rd_data_sm_cs(2),
      O => \FSM_sequential_rd_data_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_rd_data_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F000FFEEF000"
    )
        port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      I2 => axi_rd_burst_two_reg_n_0,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => \FSM_sequential_rd_data_sm_cs[2]_i_2_n_0\
    );
\FSM_sequential_rd_data_sm_cs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001FFFF00010000"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      I3 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I4 => rd_data_sm_cs(3),
      I5 => \FSM_sequential_rd_data_sm_cs[3]_i_3_n_0\,
      O => \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0\
    );
\FSM_sequential_rd_data_sm_cs[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000C00000"
    )
        port map (
      I0 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I1 => rd_data_sm_cs(0),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(3),
      I4 => \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0\,
      I5 => rd_data_sm_cs(1),
      O => rd_data_sm_ns(3)
    );
\FSM_sequential_rd_data_sm_cs[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFF3F3F3EFF3F30"
    )
        port map (
      I0 => \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0\,
      I1 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => ar_active_re,
      O => \FSM_sequential_rd_data_sm_cs[3]_i_3_n_0\
    );
\FSM_sequential_rd_data_sm_cs[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000400040000000"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => s_axi_rready,
      I3 => \^s_axi_1_rvalid\,
      I4 => act_rd_burst_two,
      I5 => act_rd_burst,
      O => \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0\
    );
\FSM_sequential_rd_data_sm_cs[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      O => \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0\
    );
\FSM_sequential_rd_data_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(0),
      Q => rd_data_sm_cs(0),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\FSM_sequential_rd_data_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(1),
      Q => rd_data_sm_cs(1),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\FSM_sequential_rd_data_sm_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0\,
      D => \FSM_sequential_rd_data_sm_cs[2]_i_1_n_0\,
      Q => rd_data_sm_cs(2),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\FSM_sequential_rd_data_sm_cs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \FSM_sequential_rd_data_sm_cs[3]_i_1_n_0\,
      D => rd_data_sm_ns(3),
      Q => rd_data_sm_cs(3),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\FSM_sequential_rlast_sm_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => rlast_sm_cs(0),
      I1 => rlast_sm_cs(2),
      I2 => \FSM_sequential_rlast_sm_cs[0]_i_2_n_0\,
      I3 => \FSM_sequential_rlast_sm_cs[2]_i_2_n_0\,
      I4 => rlast_sm_cs(0),
      O => \FSM_sequential_rlast_sm_cs[0]_i_1_n_0\
    );
\FSM_sequential_rlast_sm_cs[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001500005555"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => \^s_axi_1_rvalid\,
      I2 => s_axi_rready,
      I3 => act_rd_burst_two,
      I4 => axi_rd_burst_two_reg_n_0,
      I5 => axi_rd_burst,
      O => \FSM_sequential_rlast_sm_cs[0]_i_2_n_0\
    );
\FSM_sequential_rlast_sm_cs[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => rlast_sm_cs(0),
      I1 => rlast_sm_cs(2),
      I2 => \FSM_sequential_rlast_sm_cs[1]_i_2_n_0\,
      I3 => \FSM_sequential_rlast_sm_cs[2]_i_2_n_0\,
      I4 => rlast_sm_cs(1),
      O => \FSM_sequential_rlast_sm_cs[1]_i_1_n_0\
    );
\FSM_sequential_rlast_sm_cs[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515150015155555"
    )
        port map (
      I0 => rlast_sm_cs(1),
      I1 => \^s_axi_1_rvalid\,
      I2 => s_axi_rready,
      I3 => act_rd_burst_two,
      I4 => axi_rd_burst_two_reg_n_0,
      I5 => axi_rd_burst,
      O => \FSM_sequential_rlast_sm_cs[1]_i_2_n_0\
    );
\FSM_sequential_rlast_sm_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C2FFFF00C20000"
    )
        port map (
      I0 => \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\,
      I1 => rlast_sm_cs(1),
      I2 => rlast_sm_cs(0),
      I3 => rlast_sm_cs(2),
      I4 => \FSM_sequential_rlast_sm_cs[2]_i_2_n_0\,
      I5 => rlast_sm_cs(2),
      O => \FSM_sequential_rlast_sm_cs[2]_i_1_n_0\
    );
\FSM_sequential_rlast_sm_cs[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008888F00088880"
    )
        port map (
      I0 => \^s_axi_1_rvalid\,
      I1 => s_axi_rready,
      I2 => rlast_sm_cs(1),
      I3 => rlast_sm_cs(0),
      I4 => rlast_sm_cs(2),
      I5 => last_bram_addr,
      O => \FSM_sequential_rlast_sm_cs[2]_i_2_n_0\
    );
\FSM_sequential_rlast_sm_cs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_rlast_sm_cs[0]_i_1_n_0\,
      Q => rlast_sm_cs(0),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\FSM_sequential_rlast_sm_cs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_rlast_sm_cs[1]_i_1_n_0\,
      Q => rlast_sm_cs(1),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\FSM_sequential_rlast_sm_cs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_sequential_rlast_sm_cs[2]_i_1_n_0\,
      Q => rlast_sm_cs(2),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_AR_SNG.ar_active_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => ar_active_reg,
      Q => \^ar_active_d1\,
      R => '0'
    );
\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4000000F000F000"
    )
        port map (
      I0 => pend_rd_op,
      I1 => brst_zero,
      I2 => brst_cnt_max,
      I3 => s_axi_aresetn,
      I4 => \^ar_active_d1\,
      I5 => p_0_out,
      O => \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\
    );
\GEN_BRST_MAX_WO_NARROW.brst_cnt_max_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BRST_MAX_WO_NARROW.brst_cnt_max_i_1_n_0\,
      Q => brst_cnt_max,
      R => '0'
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(0),
      I1 => bram_rddata_a(0),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0\,
      Q => s_axi_rdata(0),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(10),
      I1 => bram_rddata_a(10),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0\,
      Q => s_axi_rdata(10),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(11),
      I1 => bram_rddata_a(11),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0\,
      Q => s_axi_rdata(11),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(12),
      I1 => bram_rddata_a(12),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0\,
      Q => s_axi_rdata(12),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(13),
      I1 => bram_rddata_a(13),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0\,
      Q => s_axi_rdata(13),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(14),
      I1 => bram_rddata_a(14),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0\,
      Q => s_axi_rdata(14),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(15),
      I1 => bram_rddata_a(15),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0\,
      Q => s_axi_rdata(15),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(16),
      I1 => bram_rddata_a(16),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0\,
      Q => s_axi_rdata(16),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(17),
      I1 => bram_rddata_a(17),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0\,
      Q => s_axi_rdata(17),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(18),
      I1 => bram_rddata_a(18),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0\,
      Q => s_axi_rdata(18),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(19),
      I1 => bram_rddata_a(19),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0\,
      Q => s_axi_rdata(19),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(1),
      I1 => bram_rddata_a(1),
      I2 => rddata_mux_sel,
      O => p_0_in
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => p_0_in,
      Q => s_axi_rdata(1),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(20),
      I1 => bram_rddata_a(20),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0\,
      Q => s_axi_rdata(20),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(21),
      I1 => bram_rddata_a(21),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0\,
      Q => s_axi_rdata(21),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(22),
      I1 => bram_rddata_a(22),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0\,
      Q => s_axi_rdata(22),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(23),
      I1 => bram_rddata_a(23),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0\,
      Q => s_axi_rdata(23),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(24),
      I1 => bram_rddata_a(24),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0\,
      Q => s_axi_rdata(24),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(25),
      I1 => bram_rddata_a(25),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0\,
      Q => s_axi_rdata(25),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(26),
      I1 => bram_rddata_a(26),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0\,
      Q => s_axi_rdata(26),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(27),
      I1 => bram_rddata_a(27),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0\,
      Q => s_axi_rdata(27),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(28),
      I1 => bram_rddata_a(28),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0\,
      Q => s_axi_rdata(28),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(29),
      I1 => bram_rddata_a(29),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0\,
      Q => s_axi_rdata(29),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(2),
      I1 => bram_rddata_a(2),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0\,
      Q => s_axi_rdata(2),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(30),
      I1 => bram_rddata_a(30),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0\,
      Q => s_axi_rdata(30),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410001014541454"
    )
        port map (
      I0 => rd_data_sm_cs(3),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      I4 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0\,
      I5 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      O => axi_rdata_en
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(31),
      I1 => bram_rddata_a(31),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_3_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_1_rvalid\,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_2_n_0\,
      Q => s_axi_rdata(31),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(3),
      I1 => bram_rddata_a(3),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0\,
      Q => s_axi_rdata(3),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(4),
      I1 => bram_rddata_a(4),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0\,
      Q => s_axi_rdata(4),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(5),
      I1 => bram_rddata_a(5),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0\,
      Q => s_axi_rdata(5),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(6),
      I1 => bram_rddata_a(6),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0\,
      Q => s_axi_rdata(6),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(7),
      I1 => bram_rddata_a(7),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0\,
      Q => s_axi_rdata(7),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(8),
      I1 => bram_rddata_a(8),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0\,
      Q => s_axi_rdata(8),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => rd_skid_buf(9),
      I1 => bram_rddata_a(9),
      I2 => rddata_mux_sel,
      O => \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => axi_rdata_en,
      D => \GEN_RDATA_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0\,
      Q => s_axi_rdata(9),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAABAAAA"
    )
        port map (
      I0 => rd_skid_buf_ld_reg,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      O => rd_skid_buf_ld
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(0),
      Q => rd_skid_buf(0),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(10),
      Q => rd_skid_buf(10),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(11),
      Q => rd_skid_buf(11),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(12),
      Q => rd_skid_buf(12),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(13),
      Q => rd_skid_buf(13),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(14),
      Q => rd_skid_buf(14),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(15),
      Q => rd_skid_buf(15),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(16),
      Q => rd_skid_buf(16),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(17),
      Q => rd_skid_buf(17),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(18),
      Q => rd_skid_buf(18),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(19),
      Q => rd_skid_buf(19),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(1),
      Q => rd_skid_buf(1),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(20),
      Q => rd_skid_buf(20),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(21),
      Q => rd_skid_buf(21),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(22),
      Q => rd_skid_buf(22),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(23),
      Q => rd_skid_buf(23),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(24),
      Q => rd_skid_buf(24),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(25),
      Q => rd_skid_buf(25),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(26),
      Q => rd_skid_buf(26),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(27),
      Q => rd_skid_buf(27),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(28),
      Q => rd_skid_buf(28),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(29),
      Q => rd_skid_buf(29),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(2),
      Q => rd_skid_buf(2),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(30),
      Q => rd_skid_buf(30),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(31),
      Q => rd_skid_buf(31),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(3),
      Q => rd_skid_buf(3),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(4),
      Q => rd_skid_buf(4),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(5),
      Q => rd_skid_buf(5),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(6),
      Q => rd_skid_buf(6),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(7),
      Q => rd_skid_buf(7),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(8),
      Q => rd_skid_buf(8),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RDATA_NO_ECC.rd_skid_buf_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => rd_skid_buf_ld,
      D => bram_rddata_a(9),
      Q => rd_skid_buf(9),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(0),
      O => \GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(10),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(10),
      O => \GEN_RID_SNG.axi_rid_int[10]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^s_axi_1_rlast\,
      I1 => s_axi_rready,
      I2 => s_axi_aresetn,
      O => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => axi_rvalid_set,
      I1 => \^ar_active_d1\,
      I2 => p_0_out,
      O => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\
    );
\GEN_RID_SNG.axi_rid_int[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(11),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(11),
      O => \GEN_RID_SNG.axi_rid_int[11]_i_3_n_0\
    );
\GEN_RID_SNG.axi_rid_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(1),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(1),
      O => \GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(2),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(2),
      O => \GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(3),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(3),
      O => \GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(4),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(4),
      O => \GEN_RID_SNG.axi_rid_int[4]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(5),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(5),
      O => \GEN_RID_SNG.axi_rid_int[5]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(6),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(6),
      O => \GEN_RID_SNG.axi_rid_int[6]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(7),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(7),
      O => \GEN_RID_SNG.axi_rid_int[7]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(8),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(8),
      O => \GEN_RID_SNG.axi_rid_int[8]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_arid(9),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => axi_rid_temp(9),
      O => \GEN_RID_SNG.axi_rid_int[9]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[0]_i_1_n_0\,
      Q => s_axi_rid(0),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[10]_i_1_n_0\,
      Q => s_axi_rid(10),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[11]_i_3_n_0\,
      Q => s_axi_rid(11),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[1]_i_1_n_0\,
      Q => s_axi_rid(1),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[2]_i_1_n_0\,
      Q => s_axi_rid(2),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[3]_i_1_n_0\,
      Q => s_axi_rid(3),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[4]_i_1_n_0\,
      Q => s_axi_rid(4),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[5]_i_1_n_0\,
      Q => s_axi_rid(5),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[6]_i_1_n_0\,
      Q => s_axi_rid(6),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[7]_i_1_n_0\,
      Q => s_axi_rid(7),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[8]_i_1_n_0\,
      Q => s_axi_rid(8),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \GEN_RID_SNG.axi_rid_int[11]_i_2_n_0\,
      D => \GEN_RID_SNG.axi_rid_int[9]_i_1_n_0\,
      Q => s_axi_rid(9),
      R => \GEN_RID_SNG.axi_rid_int[11]_i_1_n_0\
    );
\GEN_RID_SNG.axi_rid_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(0),
      Q => axi_rid_temp(0),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(10),
      Q => axi_rid_temp(10),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(11),
      Q => axi_rid_temp(11),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(1),
      Q => axi_rid_temp(1),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(2),
      Q => axi_rid_temp(2),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(3),
      Q => axi_rid_temp(3),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(4),
      Q => axi_rid_temp(4),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(5),
      Q => axi_rid_temp(5),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(6),
      Q => axi_rid_temp(6),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(7),
      Q => axi_rid_temp(7),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(8),
      Q => axi_rid_temp(8),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\GEN_RID_SNG.axi_rid_temp_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => s_axi_arid(9),
      Q => axi_rid_temp(9),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
I_WRAP_BRST: entity work.TDCsystem_AXITDC_0_0_wrap_brst_3
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int_reg[10]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]\ => I_WRAP_BRST_n_16,
      \ADDR_SNG_PORT.bram_addr_int_reg[11]_0\ => I_WRAP_BRST_n_18,
      \ADDR_SNG_PORT.bram_addr_int_reg[13]\ => sng_bram_addr_ld_en,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int_reg[4]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int_reg[5]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => \ADDR_SNG_PORT.bram_addr_int_reg[6]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => \ADDR_SNG_PORT.bram_addr_int_reg[8]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int_reg[9]\,
      D(11 downto 0) => D(11 downto 0),
      E(0) => E(0),
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\,
      \FSM_sequential_rd_data_sm_cs_reg[2]\ => I_WRAP_BRST_n_0,
      \GEN_AR_SNG.ar_active_d1_reg\ => \^ar_active_d1\,
      Q(9 downto 0) => Q(9 downto 0),
      SR(0) => \^save_init_bram_addr_ld_reg[3]\,
      ar_active_re => ar_active_re,
      aw_active_d1_reg => aw_active_d1_reg,
      axi_rd_burst => axi_rd_burst,
      axi_rd_burst_two_reg => axi_rd_burst_two_reg_n_0,
      axi_rvalid_int_reg => \^s_axi_1_rvalid\,
      brst_zero => brst_zero,
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_fixed_burst_reg_0 => curr_fixed_burst_reg_0,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      curr_wrap_burst_reg_reg => curr_wrap_burst_reg_reg_0,
      end_brst_rd => end_brst_rd,
      \out\(3 downto 0) => rd_data_sm_cs(3 downto 0),
      p_0_out => p_0_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_rready => s_axi_rready,
      \save_init_bram_addr_ld_reg[13]_0\(10 downto 0) => \save_init_bram_addr_ld_reg[13]\(10 downto 0)
    );
act_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000022E2EEE2"
    )
        port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_set,
      I2 => axi_rd_burst,
      I3 => ar_active_re,
      I4 => axi_rd_burst_two,
      I5 => act_rd_burst_two_i_3_n_0,
      O => act_rd_burst_i_1_n_0
    );
act_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => act_rd_burst_i_1_n_0,
      Q => act_rd_burst,
      R => '0'
    );
act_rd_burst_two_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => act_rd_burst_two,
      I1 => act_rd_burst_set,
      I2 => axi_rd_burst_two_reg_n_0,
      I3 => ar_active_re,
      I4 => axi_rd_burst_two,
      I5 => act_rd_burst_two_i_3_n_0,
      O => act_rd_burst_two_i_1_n_0
    );
act_rd_burst_two_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004F40000"
    )
        port map (
      I0 => brst_zero_i_2_n_0,
      I1 => ar_active_re,
      I2 => rd_data_sm_cs(0),
      I3 => \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\,
      I4 => act_rd_burst_two_i_4_n_0,
      I5 => rd_data_sm_cs(3),
      O => act_rd_burst_set
    );
act_rd_burst_two_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02000004FFFFFFFF"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      I2 => act_rd_burst_two_i_5_n_0,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => s_axi_aresetn,
      O => act_rd_burst_two_i_3_n_0
    );
act_rd_burst_two_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(2),
      O => act_rd_burst_two_i_4_n_0
    );
act_rd_burst_two_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => act_rd_burst,
      I1 => act_rd_burst_two,
      I2 => \^s_axi_1_rvalid\,
      I3 => s_axi_rready,
      O => act_rd_burst_two_i_5_n_0
    );
act_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => act_rd_burst_two_i_1_n_0,
      Q => act_rd_burst_two,
      R => '0'
    );
axi_awready_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_1_rlast\,
      O => axi_awready_int_reg
    );
axi_rd_burst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"030003000000AA00"
    )
        port map (
      I0 => axi_rd_burst,
      I1 => brst_zero_i_2_n_0,
      I2 => axi_rd_burst_two,
      I3 => s_axi_aresetn,
      I4 => brst_zero,
      I5 => ar_active_re,
      O => axi_rd_burst_i_1_n_0
    );
axi_rd_burst_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => s_axi_arlen(7),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(4),
      I4 => axi_rd_burst_i_3_n_0,
      O => axi_rd_burst_two
    );
axi_rd_burst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(1),
      O => axi_rd_burst_i_3_n_0
    );
axi_rd_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rd_burst_i_1_n_0,
      Q => axi_rd_burst,
      R => '0'
    );
axi_rd_burst_two_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A0C0C000A000A0"
    )
        port map (
      I0 => axi_rd_burst_two_reg_n_0,
      I1 => axi_rd_burst_two,
      I2 => s_axi_aresetn,
      I3 => brst_zero,
      I4 => \^ar_active_d1\,
      I5 => p_0_out,
      O => axi_rd_burst_two_i_1_n_0
    );
axi_rd_burst_two_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rd_burst_two_i_1_n_0,
      Q => axi_rd_burst_two_reg_n_0,
      R => '0'
    );
axi_rlast_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF55FFC000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => rlast_sm_cs(2),
      I2 => axi_rlast_int_i_2_n_0,
      I3 => axi_rlast_int_i_3_n_0,
      I4 => \^s_axi_1_rlast\,
      I5 => s_axi_aresetn,
      O => axi_rlast_int_i_1_n_0
    );
axi_rlast_int_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rlast_sm_cs(0),
      I1 => rlast_sm_cs(1),
      O => axi_rlast_int_i_2_n_0
    );
axi_rlast_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => rlast_sm_cs(2),
      I1 => rlast_sm_cs(0),
      I2 => \^s_axi_1_rvalid\,
      I3 => s_axi_rready,
      O => axi_rlast_int_i_3_n_0
    );
axi_rlast_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rlast_int_i_1_n_0,
      Q => \^s_axi_1_rlast\,
      R => '0'
    );
axi_rvalid_clr_ok_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEAA"
    )
        port map (
      I0 => axi_rvalid_clr_ok_i_2_n_0,
      I1 => disable_b2b_brst_i_2_n_0,
      I2 => disable_b2b_brst,
      I3 => last_bram_addr,
      I4 => axi_rvalid_clr_ok,
      O => axi_rvalid_clr_ok_i_1_n_0
    );
axi_rvalid_clr_ok_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444F44444"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(3),
      O => axi_rvalid_clr_ok_i_2_n_0
    );
axi_rvalid_clr_ok_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_clr_ok_i_1_n_0,
      Q => axi_rvalid_clr_ok,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
axi_rvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F7F7F0000000000"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^s_axi_1_rlast\,
      I2 => axi_rvalid_clr_ok,
      I3 => axi_rvalid_set,
      I4 => \^s_axi_1_rvalid\,
      I5 => s_axi_aresetn,
      O => axi_rvalid_int_i_1_n_0
    );
axi_rvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_int_i_1_n_0,
      Q => \^s_axi_1_rvalid\,
      R => '0'
    );
axi_rvalid_set_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(0),
      O => axi_rvalid_set_cmb
    );
axi_rvalid_set_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_rvalid_set_cmb,
      Q => axi_rvalid_set,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
bram_en_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFBA000000BA"
    )
        port map (
      I0 => bram_en_int_i_2_n_0,
      I1 => bram_en_int_i_3_n_0,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(3),
      I4 => bram_en_int_i_4_n_0,
      I5 => \^p_7_in\,
      O => bram_en_int_i_1_n_0
    );
bram_en_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBA000000"
    )
        port map (
      I0 => ar_active_re,
      I1 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I2 => pend_rd_op,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(2),
      I5 => bram_en_int_i_5_n_0,
      O => bram_en_int_i_2_n_0
    );
bram_en_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEE000F"
    )
        port map (
      I0 => end_brst_rd,
      I1 => brst_zero,
      I2 => axi_rd_burst,
      I3 => axi_rd_burst_two_reg_n_0,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(2),
      O => bram_en_int_i_3_n_0
    );
bram_en_int_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2E2E2E2E2E2"
    )
        port map (
      I0 => bram_en_int_i_6_n_0,
      I1 => rd_data_sm_cs(2),
      I2 => bram_en_int_i_7_n_0,
      I3 => rd_data_sm_cs(1),
      I4 => rd_data_sm_cs(0),
      I5 => \FSM_sequential_rd_data_sm_cs[3]_i_4_n_0\,
      O => bram_en_int_i_4_n_0
    );
bram_en_int_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200002E2200FF2E"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(1),
      I2 => axi_rd_burst_two_reg_n_0,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => I_WRAP_BRST_n_18,
      O => bram_en_int_i_5_n_0
    );
bram_en_int_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000040000F0F"
    )
        port map (
      I0 => \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0\,
      I1 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I2 => rd_data_sm_cs(1),
      I3 => brst_one,
      I4 => rd_data_sm_cs(0),
      I5 => ar_active_re,
      O => bram_en_int_i_6_n_0
    );
bram_en_int_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FF03FFF1FF01FF0"
    )
        port map (
      I0 => pend_rd_op,
      I1 => ar_active_re,
      I2 => rd_data_sm_cs(0),
      I3 => rd_data_sm_cs(1),
      I4 => \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0\,
      I5 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      O => bram_en_int_i_7_n_0
    );
bram_en_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_int_i_1_n_0,
      Q => \^p_7_in\,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08FB"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(0),
      O => \brst_cnt[0]_i_1_n_0\
    );
\brst_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(0),
      I4 => brst_cnt(1),
      O => \brst_cnt[1]_i_1_n_0\
    );
\brst_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB08080808FB"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(0),
      I4 => brst_cnt(1),
      I5 => brst_cnt(2),
      O => \brst_cnt[2]_i_1_n_0\
    );
\brst_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBB88888888B"
    )
        port map (
      I0 => s_axi_arlen(3),
      I1 => ar_active_re,
      I2 => brst_cnt(2),
      I3 => brst_cnt(1),
      I4 => brst_cnt(0),
      I5 => brst_cnt(3),
      O => \brst_cnt[3]_i_1_n_0\
    );
\brst_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => \brst_cnt[4]_i_2_n_0\,
      I4 => brst_cnt(4),
      O => \brst_cnt[4]_i_1_n_0\
    );
\brst_cnt[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => brst_cnt(3),
      I1 => brst_cnt(0),
      I2 => brst_cnt(1),
      I3 => brst_cnt(2),
      O => \brst_cnt[4]_i_2_n_0\
    );
\brst_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FB0808FB"
    )
        port map (
      I0 => s_axi_arlen(5),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => \brst_cnt[7]_i_3_n_0\,
      I4 => brst_cnt(5),
      O => \brst_cnt[5]_i_1_n_0\
    );
\brst_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB08080808FB"
    )
        port map (
      I0 => s_axi_arlen(6),
      I1 => p_0_out,
      I2 => \^ar_active_d1\,
      I3 => brst_cnt(5),
      I4 => \brst_cnt[7]_i_3_n_0\,
      I5 => brst_cnt(6),
      O => \brst_cnt[6]_i_1_n_0\
    );
\brst_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => I_WRAP_BRST_n_16,
      O => \brst_cnt[7]_i_1_n_0\
    );
\brst_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B88B"
    )
        port map (
      I0 => s_axi_arlen(7),
      I1 => ar_active_re,
      I2 => brst_cnt(7),
      I3 => \brst_cnt[7]_i_3_n_0\,
      I4 => brst_cnt(5),
      I5 => brst_cnt(6),
      O => \brst_cnt[7]_i_2_n_0\
    );
\brst_cnt[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => brst_cnt(4),
      I1 => brst_cnt(2),
      I2 => brst_cnt(1),
      I3 => brst_cnt(0),
      I4 => brst_cnt(3),
      O => \brst_cnt[7]_i_3_n_0\
    );
brst_cnt_max_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => brst_cnt_max,
      Q => brst_cnt_max_d1,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[0]_i_1_n_0\,
      Q => brst_cnt(0),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[1]_i_1_n_0\,
      Q => brst_cnt(1),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[2]_i_1_n_0\,
      Q => brst_cnt(2),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[3]_i_1_n_0\,
      Q => brst_cnt(3),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[4]_i_1_n_0\,
      Q => brst_cnt(4),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[5]_i_1_n_0\,
      Q => brst_cnt(5),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[6]_i_1_n_0\,
      Q => brst_cnt(6),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\brst_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \brst_cnt[7]_i_1_n_0\,
      D => \brst_cnt[7]_i_2_n_0\,
      Q => brst_cnt(7),
      R => \^save_init_bram_addr_ld_reg[3]\
    );
brst_one_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444004444400040"
    )
        port map (
      I0 => last_bram_addr_i_2_n_0,
      I1 => s_axi_aresetn,
      I2 => brst_one,
      I3 => ar_active_re,
      I4 => axi_rd_burst_two,
      I5 => brst_one_i_2_n_0,
      O => brst_one_i_1_n_0
    );
brst_one_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => last_bram_addr_i_5_n_0,
      I1 => I_WRAP_BRST_n_16,
      I2 => brst_cnt(1),
      I3 => brst_cnt(0),
      O => brst_one_i_2_n_0
    );
brst_one_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => brst_one_i_1_n_0,
      Q => brst_one,
      R => '0'
    );
brst_zero_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFB0000000000"
    )
        port map (
      I0 => \^ar_active_d1\,
      I1 => p_0_out,
      I2 => brst_zero_i_2_n_0,
      I3 => last_bram_addr_i_2_n_0,
      I4 => brst_zero,
      I5 => s_axi_aresetn,
      O => brst_zero_i_1_n_0
    );
brst_zero_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => brst_zero_i_3_n_0,
      I1 => s_axi_arlen(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(3),
      I4 => s_axi_arlen(2),
      O => brst_zero_i_2_n_0
    );
brst_zero_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_arlen(4),
      I1 => s_axi_arlen(5),
      I2 => s_axi_arlen(7),
      I3 => s_axi_arlen(6),
      O => brst_zero_i_3_n_0
    );
brst_zero_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => brst_zero_i_1_n_0,
      Q => brst_zero,
      R => '0'
    );
\curr_fixed_burst_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => curr_fixed_burst
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => curr_fixed_burst,
      Q => curr_fixed_burst_reg_0,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
\curr_wrap_burst_reg_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      O => \curr_wrap_burst_reg_i_1__0_n_0\
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => ar_active_re,
      D => \curr_wrap_burst_reg_i_1__0_n_0\,
      Q => curr_wrap_burst_reg,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
disable_b2b_brst_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABAAABABABAAABA"
    )
        port map (
      I0 => disable_b2b_brst_i_2_n_0,
      I1 => rd_data_sm_cs(3),
      I2 => disable_b2b_brst,
      I3 => rd_data_sm_cs(0),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(1),
      O => disable_b2b_brst_cmb
    );
disable_b2b_brst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFBFBBB"
    )
        port map (
      I0 => disable_b2b_brst,
      I1 => rd_data_sm_cs(1),
      I2 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I3 => \FSM_sequential_rd_data_sm_cs[3]_i_5_n_0\,
      I4 => brst_one,
      I5 => disable_b2b_brst_i_3_n_0,
      O => disable_b2b_brst_i_2_n_0
    );
disable_b2b_brst_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF04FFFFFFFF"
    )
        port map (
      I0 => axi_rd_burst_two_reg_n_0,
      I1 => axi_rd_burst,
      I2 => rd_data_sm_cs(1),
      I3 => rd_data_sm_cs(3),
      I4 => rd_data_sm_cs(2),
      I5 => rd_data_sm_cs(0),
      O => disable_b2b_brst_i_3_n_0
    );
disable_b2b_brst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => disable_b2b_brst_cmb,
      Q => disable_b2b_brst,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
end_brst_rd_clr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCFFFD03000000"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(0),
      I5 => end_brst_rd_clr,
      O => end_brst_rd_clr_i_1_n_0
    );
end_brst_rd_clr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => end_brst_rd_clr_i_1_n_0,
      Q => end_brst_rd_clr,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
end_brst_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55300000"
    )
        port map (
      I0 => end_brst_rd_clr,
      I1 => brst_cnt_max_d1,
      I2 => brst_cnt_max,
      I3 => end_brst_rd,
      I4 => s_axi_aresetn,
      O => end_brst_rd_i_1_n_0
    );
end_brst_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => end_brst_rd_i_1_n_0,
      Q => end_brst_rd,
      R => '0'
    );
last_bram_addr_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBAAAAAAAAAAAABF"
    )
        port map (
      I0 => last_bram_addr_i_2_n_0,
      I1 => last_bram_addr_i_3_n_0,
      I2 => last_bram_addr_i_4_n_0,
      I3 => rd_data_sm_cs(2),
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(0),
      O => last_bram_addr0
    );
last_bram_addr_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => last_bram_addr_i_5_n_0,
      I1 => I_WRAP_BRST_n_16,
      I2 => brst_cnt(0),
      I3 => brst_cnt(1),
      O => last_bram_addr_i_2_n_0
    );
last_bram_addr_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF535FFFFF"
    )
        port map (
      I0 => brst_zero_i_2_n_0,
      I1 => \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\,
      I2 => ar_active_re,
      I3 => pend_rd_op,
      I4 => end_brst_rd_clr_cmb,
      I5 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      O => last_bram_addr_i_3_n_0
    );
last_bram_addr_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE00FEFFFEFFFEFF"
    )
        port map (
      I0 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I1 => axi_rd_burst_two_reg_n_0,
      I2 => axi_rd_burst,
      I3 => rd_data_sm_cs(3),
      I4 => ar_active_re,
      I5 => brst_zero_i_2_n_0,
      O => last_bram_addr_i_4_n_0
    );
last_bram_addr_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => brst_cnt(7),
      I1 => brst_cnt(3),
      I2 => brst_cnt(4),
      I3 => brst_cnt(2),
      I4 => brst_cnt(5),
      I5 => brst_cnt(6),
      O => last_bram_addr_i_5_n_0
    );
last_bram_addr_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      O => end_brst_rd_clr_cmb
    );
last_bram_addr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => last_bram_addr0,
      Q => last_bram_addr,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
pend_rd_op_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8BB88BB88BB88"
    )
        port map (
      I0 => pend_rd_op_cmb,
      I1 => pend_rd_op_i_3_n_0,
      I2 => \FSM_sequential_rd_data_sm_cs[1]_i_2_n_0\,
      I3 => pend_rd_op,
      I4 => rd_data_sm_cs(0),
      I5 => pend_rd_op_i_4_n_0,
      O => pend_rd_op_i_1_n_0
    );
pend_rd_op_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200020002000202"
    )
        port map (
      I0 => ar_active_re,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(3),
      I3 => rd_data_sm_cs(2),
      I4 => axi_rd_burst_two_reg_n_0,
      I5 => axi_rd_burst,
      O => pend_rd_op_cmb
    );
pend_rd_op_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000F800"
    )
        port map (
      I0 => pend_rd_op,
      I1 => \^s_axi_1_rlast\,
      I2 => ar_active_re,
      I3 => pend_rd_op_i_5_n_0,
      I4 => rd_data_sm_cs(1),
      I5 => rd_data_sm_cs(3),
      O => pend_rd_op_i_3_n_0
    );
pend_rd_op_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1003000310030000"
    )
        port map (
      I0 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(1),
      I4 => pend_rd_op,
      I5 => ar_active_re,
      O => pend_rd_op_i_4_n_0
    );
pend_rd_op_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(0),
      O => pend_rd_op_i_5_n_0
    );
pend_rd_op_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => pend_rd_op_i_1_n_0,
      Q => pend_rd_op,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
rd_skid_buf_ld_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1101010110101010"
    )
        port map (
      I0 => rd_data_sm_cs(2),
      I1 => rd_data_sm_cs(3),
      I2 => rd_data_sm_cs(1),
      I3 => \^s_axi_1_rvalid\,
      I4 => s_axi_rready,
      I5 => rd_data_sm_cs(0),
      O => rd_skid_buf_ld_cmb
    );
rd_skid_buf_ld_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rd_skid_buf_ld_cmb,
      Q => rd_skid_buf_ld_reg,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
rddata_mux_sel_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => rddata_mux_sel_i_2_n_0,
      I1 => rd_data_sm_cs(3),
      I2 => rddata_mux_sel_i_3_n_0,
      I3 => rddata_mux_sel,
      O => rddata_mux_sel_i_1_n_0
    );
rddata_mux_sel_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1F1F1F1FF3F3F333"
    )
        port map (
      I0 => rd_data_sm_cs(1),
      I1 => rd_data_sm_cs(2),
      I2 => rd_data_sm_cs(0),
      I3 => act_rd_burst,
      I4 => act_rd_burst_two,
      I5 => \GEN_RDATA_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_4_n_0\,
      O => rddata_mux_sel_i_2_n_0
    );
rddata_mux_sel_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C007C0F7C0F7C0F7"
    )
        port map (
      I0 => axi_rd_burst_two_reg_n_0,
      I1 => rd_data_sm_cs(1),
      I2 => rd_data_sm_cs(2),
      I3 => rd_data_sm_cs(0),
      I4 => \^s_axi_1_rvalid\,
      I5 => s_axi_rready,
      O => rddata_mux_sel_i_3_n_0
    );
rddata_mux_sel_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => rddata_mux_sel_i_1_n_0,
      Q => rddata_mux_sel,
      R => \^save_init_bram_addr_ld_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_wr_chnl is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aw_active_d1 : out STD_LOGIC;
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_1_bvalid : out STD_LOGIC;
    curr_fixed_burst_reg : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[13]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_1\ : out STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 10 downto 0 );
    last_arb_won_reg : out STD_LOGIC;
    last_arb_won_reg_0 : out STD_LOGIC;
    \FSM_sequential_arb_sm_cs_reg[0]\ : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    p_1_out : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    aw_active_re : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    axi_rlast_int_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_arb_sm_cs_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_7_in : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end TDCsystem_AXITDC_0_0_wr_chnl;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_wr_chnl is
  signal \^addr_sng_port.bram_addr_int_reg[13]_0\ : STD_LOGIC;
  signal AW2Arb_BVALID_Cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal BID_FIFO_n_0 : STD_LOGIC;
  signal BID_FIFO_n_1 : STD_LOGIC;
  signal BID_FIFO_n_10 : STD_LOGIC;
  signal BID_FIFO_n_11 : STD_LOGIC;
  signal BID_FIFO_n_12 : STD_LOGIC;
  signal BID_FIFO_n_13 : STD_LOGIC;
  signal BID_FIFO_n_14 : STD_LOGIC;
  signal BID_FIFO_n_3 : STD_LOGIC;
  signal BID_FIFO_n_4 : STD_LOGIC;
  signal BID_FIFO_n_5 : STD_LOGIC;
  signal BID_FIFO_n_6 : STD_LOGIC;
  signal BID_FIFO_n_7 : STD_LOGIC;
  signal BID_FIFO_n_8 : STD_LOGIC;
  signal BID_FIFO_n_9 : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\ : signal is "yes";
  signal \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\ : STD_LOGIC;
  signal I_WRAP_BRST_n_14 : STD_LOGIC;
  signal I_WRAP_BRST_n_15 : STD_LOGIC;
  signal \^aw_active_d1\ : STD_LOGIC;
  signal axi_bvalid_int_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_int_i_2_n_0 : STD_LOGIC;
  signal axi_wdata_full_cmb : STD_LOGIC;
  signal axi_wdata_full_reg : STD_LOGIC;
  signal axi_wr_burst : STD_LOGIC;
  signal axi_wr_burst_i_1_n_0 : STD_LOGIC;
  signal axi_wr_burst_i_2_n_0 : STD_LOGIC;
  signal axi_wready_int_mod_i_1_n_0 : STD_LOGIC;
  signal bid_gets_fifo_load : STD_LOGIC;
  signal bid_gets_fifo_load_d1 : STD_LOGIC;
  signal bram_en_cmb : STD_LOGIC;
  signal \bvalid_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bvalid_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal bvalid_cnt_inc : STD_LOGIC;
  signal clr_bram_we : STD_LOGIC;
  signal \^curr_fixed_burst_reg\ : STD_LOGIC;
  signal curr_wrap_burst_reg : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  signal p_8_in : STD_LOGIC;
  signal \^s_axi_1_bvalid\ : STD_LOGIC;
  signal wrdata_reg_ld : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute KEEP of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : label is "idle:001,brst_wr_data:010,sng_wr_data:100";
  attribute KEEP of \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_awready_int_i_3 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of last_arb_won_i_3 : label is "soft_lutpair54";
begin
  \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ <= \^addr_sng_port.bram_addr_int_reg[13]_0\;
  aw_active_d1 <= \^aw_active_d1\;
  curr_fixed_burst_reg <= \^curr_fixed_burst_reg\;
  \out\(0) <= \^out\(0);
  s_axi_1_bvalid <= \^s_axi_1_bvalid\;
\ADDR_SNG_PORT.bram_addr_int[13]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      O => \^addr_sng_port.bram_addr_int_reg[13]_0\
    );
BID_FIFO: entity work.TDCsystem_AXITDC_0_0_SRL_FIFO
     port map (
      AW2Arb_BVALID_Cnt(2 downto 0) => AW2Arb_BVALID_Cnt(2 downto 0),
      D(11) => BID_FIFO_n_3,
      D(10) => BID_FIFO_n_4,
      D(9) => BID_FIFO_n_5,
      D(8) => BID_FIFO_n_6,
      D(7) => BID_FIFO_n_7,
      D(6) => BID_FIFO_n_8,
      D(5) => BID_FIFO_n_9,
      D(4) => BID_FIFO_n_10,
      D(3) => BID_FIFO_n_11,
      D(2) => BID_FIFO_n_12,
      D(1) => BID_FIFO_n_13,
      D(0) => BID_FIFO_n_14,
      E(0) => BID_FIFO_n_1,
      \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\ => BID_FIFO_n_0,
      SR(0) => SR(0),
      aw_active_d1_reg => \^aw_active_d1\,
      aw_active_re => aw_active_re,
      axi_bvalid_int_reg => \^s_axi_1_bvalid\,
      axi_wdata_full_reg => axi_wdata_full_reg,
      axi_wr_burst => axi_wr_burst,
      bid_gets_fifo_load => bid_gets_fifo_load,
      bid_gets_fifo_load_d1 => bid_gets_fifo_load_d1,
      bvalid_cnt_inc => bvalid_cnt_inc,
      \bvalid_cnt_reg[2]\ => axi_bvalid_int_i_2_n_0,
      \out\(1) => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      \out\(0) => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wlast => s_axi_wlast,
      s_axi_wvalid => s_axi_wvalid
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF1555FFFF0000"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_wlast,
      I4 => \^out\(0),
      I5 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => axi_wdata_full_reg,
      I2 => p_1_out,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D100FFFFD1000000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => axi_wdata_full_reg,
      I2 => axi_wr_burst,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I4 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I5 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I1 => BID_FIFO_n_0,
      I2 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\,
      I3 => \^out\(0),
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEAAA"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_wlast,
      I4 => \^out\(0),
      O => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3_n_0\
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0\,
      Q => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0\,
      Q => \^out\(0),
      R => SR(0)
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF020F222F020"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I1 => p_1_out,
      I2 => axi_wdata_full_reg,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I4 => s_axi_wvalid,
      I5 => \^out\(0),
      O => axi_wdata_full_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wdata_full_cmb,
      Q => axi_wdata_full_reg,
      R => SR(0)
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAC000"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => p_1_out,
      I3 => axi_wdata_full_reg,
      I4 => s_axi_wvalid,
      O => bram_en_cmb
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bram_en_cmb,
      Q => p_8_in,
      R => SR(0)
    );
\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bvalid_cnt_inc,
      Q => clr_bram_we,
      R => SR(0)
    );
\GEN_WRDATA[0].bram_wrdata_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(0),
      Q => bram_wrdata_a(0),
      R => '0'
    );
\GEN_WRDATA[10].bram_wrdata_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(10),
      Q => bram_wrdata_a(10),
      R => '0'
    );
\GEN_WRDATA[11].bram_wrdata_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(11),
      Q => bram_wrdata_a(11),
      R => '0'
    );
\GEN_WRDATA[12].bram_wrdata_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(12),
      Q => bram_wrdata_a(12),
      R => '0'
    );
\GEN_WRDATA[13].bram_wrdata_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(13),
      Q => bram_wrdata_a(13),
      R => '0'
    );
\GEN_WRDATA[14].bram_wrdata_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(14),
      Q => bram_wrdata_a(14),
      R => '0'
    );
\GEN_WRDATA[15].bram_wrdata_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(15),
      Q => bram_wrdata_a(15),
      R => '0'
    );
\GEN_WRDATA[16].bram_wrdata_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(16),
      Q => bram_wrdata_a(16),
      R => '0'
    );
\GEN_WRDATA[17].bram_wrdata_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(17),
      Q => bram_wrdata_a(17),
      R => '0'
    );
\GEN_WRDATA[18].bram_wrdata_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(18),
      Q => bram_wrdata_a(18),
      R => '0'
    );
\GEN_WRDATA[19].bram_wrdata_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(19),
      Q => bram_wrdata_a(19),
      R => '0'
    );
\GEN_WRDATA[1].bram_wrdata_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(1),
      Q => bram_wrdata_a(1),
      R => '0'
    );
\GEN_WRDATA[20].bram_wrdata_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(20),
      Q => bram_wrdata_a(20),
      R => '0'
    );
\GEN_WRDATA[21].bram_wrdata_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(21),
      Q => bram_wrdata_a(21),
      R => '0'
    );
\GEN_WRDATA[22].bram_wrdata_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(22),
      Q => bram_wrdata_a(22),
      R => '0'
    );
\GEN_WRDATA[23].bram_wrdata_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(23),
      Q => bram_wrdata_a(23),
      R => '0'
    );
\GEN_WRDATA[24].bram_wrdata_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(24),
      Q => bram_wrdata_a(24),
      R => '0'
    );
\GEN_WRDATA[25].bram_wrdata_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(25),
      Q => bram_wrdata_a(25),
      R => '0'
    );
\GEN_WRDATA[26].bram_wrdata_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(26),
      Q => bram_wrdata_a(26),
      R => '0'
    );
\GEN_WRDATA[27].bram_wrdata_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(27),
      Q => bram_wrdata_a(27),
      R => '0'
    );
\GEN_WRDATA[28].bram_wrdata_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(28),
      Q => bram_wrdata_a(28),
      R => '0'
    );
\GEN_WRDATA[29].bram_wrdata_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(29),
      Q => bram_wrdata_a(29),
      R => '0'
    );
\GEN_WRDATA[2].bram_wrdata_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(2),
      Q => bram_wrdata_a(2),
      R => '0'
    );
\GEN_WRDATA[30].bram_wrdata_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(30),
      Q => bram_wrdata_a(30),
      R => '0'
    );
\GEN_WRDATA[31].bram_wrdata_int[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0A0E0"
    )
        port map (
      I0 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1]\,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      I2 => s_axi_wvalid,
      I3 => axi_wdata_full_reg,
      I4 => \^out\(0),
      O => wrdata_reg_ld
    );
\GEN_WRDATA[31].bram_wrdata_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(31),
      Q => bram_wrdata_a(31),
      R => '0'
    );
\GEN_WRDATA[3].bram_wrdata_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(3),
      Q => bram_wrdata_a(3),
      R => '0'
    );
\GEN_WRDATA[4].bram_wrdata_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(4),
      Q => bram_wrdata_a(4),
      R => '0'
    );
\GEN_WRDATA[5].bram_wrdata_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(5),
      Q => bram_wrdata_a(5),
      R => '0'
    );
\GEN_WRDATA[6].bram_wrdata_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(6),
      Q => bram_wrdata_a(6),
      R => '0'
    );
\GEN_WRDATA[7].bram_wrdata_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(7),
      Q => bram_wrdata_a(7),
      R => '0'
    );
\GEN_WRDATA[8].bram_wrdata_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(8),
      Q => bram_wrdata_a(8),
      R => '0'
    );
\GEN_WRDATA[9].bram_wrdata_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wdata(9),
      Q => bram_wrdata_a(9),
      R => '0'
    );
\GEN_WR_NO_ECC.bram_we_int[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => wrdata_reg_ld,
      I1 => clr_bram_we,
      I2 => s_axi_aresetn,
      O => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(0),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(1),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(2),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
\GEN_WR_NO_ECC.bram_we_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => wrdata_reg_ld,
      D => s_axi_wstrb(3),
      Q => \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3),
      R => \GEN_WR_NO_ECC.bram_we_int[3]_i_1_n_0\
    );
I_WRAP_BRST: entity work.TDCsystem_AXITDC_0_0_wrap_brst
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[13]\(0) => \ADDR_SNG_PORT.bram_addr_int_reg[13]\(0),
      \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[13]_1\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ => \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\,
      D(10 downto 0) => D(10 downto 0),
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ => \^addr_sng_port.bram_addr_int_reg[13]_0\,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => SR(0),
      aw_active_d1_reg => \^aw_active_d1\,
      aw_active_re => aw_active_re,
      curr_fixed_burst_reg => \^curr_fixed_burst_reg\,
      curr_fixed_burst_reg_reg => I_WRAP_BRST_n_14,
      curr_wrap_burst_reg => curr_wrap_burst_reg,
      curr_wrap_burst_reg_reg => I_WRAP_BRST_n_15,
      \out\(0) => \^out\(0),
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0)
    );
aw_active_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_1_out,
      Q => \^aw_active_d1\,
      R => SR(0)
    );
axi_awready_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      O => \FSM_sequential_arb_sm_cs_reg[0]\
    );
\axi_bid_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_14,
      Q => s_axi_bid(0),
      R => SR(0)
    );
\axi_bid_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_4,
      Q => s_axi_bid(10),
      R => SR(0)
    );
\axi_bid_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_3,
      Q => s_axi_bid(11),
      R => SR(0)
    );
\axi_bid_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_13,
      Q => s_axi_bid(1),
      R => SR(0)
    );
\axi_bid_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_12,
      Q => s_axi_bid(2),
      R => SR(0)
    );
\axi_bid_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_11,
      Q => s_axi_bid(3),
      R => SR(0)
    );
\axi_bid_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_10,
      Q => s_axi_bid(4),
      R => SR(0)
    );
\axi_bid_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_9,
      Q => s_axi_bid(5),
      R => SR(0)
    );
\axi_bid_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_8,
      Q => s_axi_bid(6),
      R => SR(0)
    );
\axi_bid_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_7,
      Q => s_axi_bid(7),
      R => SR(0)
    );
\axi_bid_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_6,
      Q => s_axi_bid(8),
      R => SR(0)
    );
\axi_bid_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => BID_FIFO_n_1,
      D => BID_FIFO_n_5,
      Q => s_axi_bid(9),
      R => SR(0)
    );
axi_bvalid_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0000AAA8"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(2),
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => axi_bvalid_int_i_2_n_0,
      I5 => bvalid_cnt_inc,
      O => axi_bvalid_int_i_1_n_0
    );
axi_bvalid_int_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(0),
      I2 => AW2Arb_BVALID_Cnt(1),
      I3 => s_axi_bready,
      I4 => \^s_axi_1_bvalid\,
      O => axi_bvalid_int_i_2_n_0
    );
axi_bvalid_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_bvalid_int_i_1_n_0,
      Q => \^s_axi_1_bvalid\,
      R => '0'
    );
axi_wr_burst_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5754"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_2_n_0\,
      I2 => axi_wr_burst_i_2_n_0,
      I3 => axi_wr_burst,
      O => axi_wr_burst_i_1_n_0
    );
axi_wr_burst_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0A0"
    )
        port map (
      I0 => \^out\(0),
      I1 => axi_wdata_full_reg,
      I2 => s_axi_wvalid,
      I3 => \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0]\,
      O => axi_wr_burst_i_2_n_0
    );
axi_wr_burst_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wr_burst_i_1_n_0,
      Q => axi_wr_burst,
      R => SR(0)
    );
axi_wready_int_mod_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => axi_wdata_full_cmb,
      O => axi_wready_int_mod_i_1_n_0
    );
axi_wready_int_mod_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_wready_int_mod_i_1_n_0,
      Q => s_axi_wready,
      R => '0'
    );
bid_gets_fifo_load_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => bid_gets_fifo_load,
      Q => bid_gets_fifo_load_d1,
      R => SR(0)
    );
bram_en_a_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      O => bram_en_a
    );
\bvalid_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0000FFF1FFFE000"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(2),
      I1 => AW2Arb_BVALID_Cnt(1),
      I2 => s_axi_bready,
      I3 => \^s_axi_1_bvalid\,
      I4 => bvalid_cnt_inc,
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[0]_i_1_n_0\
    );
\bvalid_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D52AD52ABF40BF00"
    )
        port map (
      I0 => bvalid_cnt_inc,
      I1 => \^s_axi_1_bvalid\,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(2),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[1]_i_1_n_0\
    );
\bvalid_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5FF2A00FFBF0000"
    )
        port map (
      I0 => bvalid_cnt_inc,
      I1 => \^s_axi_1_bvalid\,
      I2 => s_axi_bready,
      I3 => AW2Arb_BVALID_Cnt(1),
      I4 => AW2Arb_BVALID_Cnt(2),
      I5 => AW2Arb_BVALID_Cnt(0),
      O => \bvalid_cnt[2]_i_1_n_0\
    );
\bvalid_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[0]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(0),
      R => SR(0)
    );
\bvalid_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[1]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(1),
      R => SR(0)
    );
\bvalid_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \bvalid_cnt[2]_i_1_n_0\,
      Q => AW2Arb_BVALID_Cnt(2),
      R => SR(0)
    );
curr_fixed_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_WRAP_BRST_n_14,
      Q => \^curr_fixed_burst_reg\,
      R => '0'
    );
curr_wrap_burst_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => I_WRAP_BRST_n_15,
      Q => curr_wrap_burst_reg,
      R => '0'
    );
last_arb_won_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004444444"
    )
        port map (
      I0 => \FSM_sequential_arb_sm_cs_reg[1]\(0),
      I1 => s_axi_awvalid,
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => AW2Arb_BVALID_Cnt(2),
      I4 => AW2Arb_BVALID_Cnt(1),
      I5 => \FSM_sequential_arb_sm_cs_reg[1]\(1),
      O => last_arb_won_reg_0
    );
last_arb_won_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F000000"
    )
        port map (
      I0 => AW2Arb_BVALID_Cnt(1),
      I1 => AW2Arb_BVALID_Cnt(2),
      I2 => AW2Arb_BVALID_Cnt(0),
      I3 => s_axi_awvalid,
      I4 => axi_rlast_int_reg,
      O => last_arb_won_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(15 downto 0) => dinb(15 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(0),
      web(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized0\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_v8_4_1_blk_mem_gen_prim_width";
end \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_noinit.ram\: entity work.\TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(15 downto 0) => dinb(15 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(0),
      web(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized1\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_v8_4_1_blk_mem_gen_prim_width";
end \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_noinit.ram\: entity work.\TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(15 downto 0) => dinb(15 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(0),
      web(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized2\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 7 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    web : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_v8_4_1_blk_mem_gen_prim_width";
end \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_noinit.ram\: entity work.\TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_wrapper__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(15 downto 0) => dinb(15 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(15 downto 0) => doutb(15 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(0),
      web(1 downto 0) => web(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized1\ is
  port (
    validOut_reg : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    validIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized1\ : entity is "adderTreeLegacy";
end \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized1\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized1\ is
  signal p_0_in2_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in5_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in3_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_1_in6_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \x[0]_i_1_n_0\ : STD_LOGIC;
  signal \x[1]_i_1_n_0\ : STD_LOGIC;
  signal \x[2]_i_1_n_0\ : STD_LOGIC;
  signal \x[3]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_1_n_0\ : STD_LOGIC;
  signal \x[5]_i_1_n_0\ : STD_LOGIC;
  signal \x[5]_i_2_n_0\ : STD_LOGIC;
  signal x_in04_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal x_in07_out : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \x_in0_inferred__0/x[10]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[11]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[11]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[6]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[7]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[8]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[9]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__1/x[17]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__2/x[23]_i_2_n_0\ : STD_LOGIC;
  signal \x_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_reg_n_0_[10]\ : STD_LOGIC;
  signal \x_reg_n_0_[11]\ : STD_LOGIC;
  signal \x_reg_n_0_[12]\ : STD_LOGIC;
  signal \x_reg_n_0_[13]\ : STD_LOGIC;
  signal \x_reg_n_0_[14]\ : STD_LOGIC;
  signal \x_reg_n_0_[15]\ : STD_LOGIC;
  signal \x_reg_n_0_[16]\ : STD_LOGIC;
  signal \x_reg_n_0_[17]\ : STD_LOGIC;
  signal \x_reg_n_0_[18]\ : STD_LOGIC;
  signal \x_reg_n_0_[19]\ : STD_LOGIC;
  signal \x_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_reg_n_0_[4]\ : STD_LOGIC;
  signal \x_reg_n_0_[5]\ : STD_LOGIC;
  signal \x_reg_n_0_[6]\ : STD_LOGIC;
  signal \x_reg_n_0_[7]\ : STD_LOGIC;
  signal \x_reg_n_0_[8]\ : STD_LOGIC;
  signal \x_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \x[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \x[1]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \x[4]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \x[5]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[10]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[11]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[12]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[13]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[16]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[17]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[18]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[19]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[22]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[23]_i_1\ : label is "soft_lutpair64";
begin
\RECURSE.NEXT_LEVEL\: entity work.\TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized2\
     port map (
      D(23 downto 18) => x_in07_out(5 downto 0),
      D(17 downto 12) => x_in04_out(5 downto 0),
      D(11) => \x_in0_inferred__0/x[11]_i_1_n_0\,
      D(10) => \x_in0_inferred__0/x[10]_i_1_n_0\,
      D(9) => \x_in0_inferred__0/x[9]_i_1_n_0\,
      D(8) => \x_in0_inferred__0/x[8]_i_1_n_0\,
      D(7) => \x_in0_inferred__0/x[7]_i_1_n_0\,
      D(6) => \x_in0_inferred__0/x[6]_i_1_n_0\,
      D(5) => \x[5]_i_1_n_0\,
      D(4) => \x[4]_i_1_n_0\,
      D(3) => \x[3]_i_1_n_0\,
      D(2) => \x[2]_i_1_n_0\,
      D(1) => \x[1]_i_1_n_0\,
      D(0) => \x[0]_i_1_n_0\,
      clk => clk,
      sum(7 downto 0) => sum(7 downto 0),
      validIn => validIn,
      validOut_reg => validOut_reg
    );
\x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => \x_reg_n_0_[5]\,
      O => \x[0]_i_1_n_0\
    );
\x[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => \x_reg_n_0_[5]\,
      I2 => \x_reg_n_0_[6]\,
      I3 => \x_reg_n_0_[1]\,
      O => \x[1]_i_1_n_0\
    );
\x[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[5]\,
      I1 => \x_reg_n_0_[0]\,
      I2 => \x_reg_n_0_[1]\,
      I3 => \x_reg_n_0_[6]\,
      I4 => \x_reg_n_0_[7]\,
      I5 => \x_reg_n_0_[2]\,
      O => \x[2]_i_1_n_0\
    );
\x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x[5]_i_2_n_0\,
      I1 => \x_reg_n_0_[8]\,
      I2 => \x_reg_n_0_[3]\,
      O => \x[3]_i_1_n_0\
    );
\x[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \x[5]_i_2_n_0\,
      I1 => \x_reg_n_0_[3]\,
      I2 => \x_reg_n_0_[8]\,
      I3 => \x_reg_n_0_[9]\,
      I4 => \x_reg_n_0_[4]\,
      O => \x[4]_i_1_n_0\
    );
\x[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \x_reg_n_0_[9]\,
      I1 => \x_reg_n_0_[4]\,
      I2 => \x[5]_i_2_n_0\,
      I3 => \x_reg_n_0_[3]\,
      I4 => \x_reg_n_0_[8]\,
      O => \x[5]_i_1_n_0\
    );
\x[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[7]\,
      I1 => \x_reg_n_0_[2]\,
      I2 => \x_reg_n_0_[5]\,
      I3 => \x_reg_n_0_[0]\,
      I4 => \x_reg_n_0_[1]\,
      I5 => \x_reg_n_0_[6]\,
      O => \x[5]_i_2_n_0\
    );
\x_in0_inferred__0/x[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \x_in0_inferred__0/x[11]_i_2_n_0\,
      I1 => \x_reg_n_0_[13]\,
      I2 => \x_reg_n_0_[18]\,
      I3 => \x_reg_n_0_[19]\,
      I4 => \x_reg_n_0_[14]\,
      O => \x_in0_inferred__0/x[10]_i_1_n_0\
    );
\x_in0_inferred__0/x[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => \x_reg_n_0_[19]\,
      I1 => \x_reg_n_0_[14]\,
      I2 => \x_in0_inferred__0/x[11]_i_2_n_0\,
      I3 => \x_reg_n_0_[13]\,
      I4 => \x_reg_n_0_[18]\,
      O => \x_in0_inferred__0/x[11]_i_1_n_0\
    );
\x_in0_inferred__0/x[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[17]\,
      I1 => \x_reg_n_0_[12]\,
      I2 => \x_reg_n_0_[15]\,
      I3 => \x_reg_n_0_[10]\,
      I4 => \x_reg_n_0_[11]\,
      I5 => \x_reg_n_0_[16]\,
      O => \x_in0_inferred__0/x[11]_i_2_n_0\
    );
\x_in0_inferred__0/x[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[10]\,
      I1 => \x_reg_n_0_[15]\,
      O => \x_in0_inferred__0/x[6]_i_1_n_0\
    );
\x_in0_inferred__0/x[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[10]\,
      I1 => \x_reg_n_0_[15]\,
      I2 => \x_reg_n_0_[16]\,
      I3 => \x_reg_n_0_[11]\,
      O => \x_in0_inferred__0/x[7]_i_1_n_0\
    );
\x_in0_inferred__0/x[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[15]\,
      I1 => \x_reg_n_0_[10]\,
      I2 => \x_reg_n_0_[11]\,
      I3 => \x_reg_n_0_[16]\,
      I4 => \x_reg_n_0_[17]\,
      I5 => \x_reg_n_0_[12]\,
      O => \x_in0_inferred__0/x[8]_i_1_n_0\
    );
\x_in0_inferred__0/x[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__0/x[11]_i_2_n_0\,
      I1 => \x_reg_n_0_[18]\,
      I2 => \x_reg_n_0_[13]\,
      O => \x_in0_inferred__0/x[9]_i_1_n_0\
    );
\x_in0_inferred__1/x[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in3_in(0),
      I1 => p_0_in2_in(0),
      O => x_in04_out(0)
    );
\x_in0_inferred__1/x[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in3_in(0),
      I1 => p_0_in2_in(0),
      I2 => p_0_in2_in(1),
      I3 => p_1_in3_in(1),
      O => x_in04_out(1)
    );
\x_in0_inferred__1/x[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in2_in(0),
      I1 => p_1_in3_in(0),
      I2 => p_1_in3_in(1),
      I3 => p_0_in2_in(1),
      I4 => p_0_in2_in(2),
      I5 => p_1_in3_in(2),
      O => x_in04_out(2)
    );
\x_in0_inferred__1/x[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__1/x[17]_i_2_n_0\,
      I1 => p_0_in2_in(3),
      I2 => p_1_in3_in(3),
      O => x_in04_out(3)
    );
\x_in0_inferred__1/x[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \x_in0_inferred__1/x[17]_i_2_n_0\,
      I1 => p_1_in3_in(3),
      I2 => p_0_in2_in(3),
      I3 => p_0_in2_in(4),
      I4 => p_1_in3_in(4),
      O => x_in04_out(4)
    );
\x_in0_inferred__1/x[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in2_in(4),
      I1 => p_1_in3_in(4),
      I2 => \x_in0_inferred__1/x[17]_i_2_n_0\,
      I3 => p_1_in3_in(3),
      I4 => p_0_in2_in(3),
      O => x_in04_out(5)
    );
\x_in0_inferred__1/x[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in2_in(2),
      I1 => p_1_in3_in(2),
      I2 => p_0_in2_in(0),
      I3 => p_1_in3_in(0),
      I4 => p_1_in3_in(1),
      I5 => p_0_in2_in(1),
      O => \x_in0_inferred__1/x[17]_i_2_n_0\
    );
\x_in0_inferred__2/x[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in6_in(0),
      I1 => p_0_in5_in(0),
      O => x_in07_out(0)
    );
\x_in0_inferred__2/x[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in6_in(0),
      I1 => p_0_in5_in(0),
      I2 => p_0_in5_in(1),
      I3 => p_1_in6_in(1),
      O => x_in07_out(1)
    );
\x_in0_inferred__2/x[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in5_in(0),
      I1 => p_1_in6_in(0),
      I2 => p_1_in6_in(1),
      I3 => p_0_in5_in(1),
      I4 => p_0_in5_in(2),
      I5 => p_1_in6_in(2),
      O => x_in07_out(2)
    );
\x_in0_inferred__2/x[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__2/x[23]_i_2_n_0\,
      I1 => p_0_in5_in(3),
      I2 => p_1_in6_in(3),
      O => x_in07_out(3)
    );
\x_in0_inferred__2/x[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \x_in0_inferred__2/x[23]_i_2_n_0\,
      I1 => p_1_in6_in(3),
      I2 => p_0_in5_in(3),
      I3 => p_0_in5_in(4),
      I4 => p_1_in6_in(4),
      O => x_in07_out(4)
    );
\x_in0_inferred__2/x[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => p_0_in5_in(4),
      I1 => p_1_in6_in(4),
      I2 => \x_in0_inferred__2/x[23]_i_2_n_0\,
      I3 => p_1_in6_in(3),
      I4 => p_0_in5_in(3),
      O => x_in07_out(5)
    );
\x_in0_inferred__2/x[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in5_in(2),
      I1 => p_1_in6_in(2),
      I2 => p_0_in5_in(0),
      I3 => p_1_in6_in(0),
      I4 => p_1_in6_in(1),
      I5 => p_0_in5_in(1),
      O => \x_in0_inferred__2/x[23]_i_2_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \x_reg_n_0_[0]\,
      R => '0'
    );
\x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(10),
      Q => \x_reg_n_0_[10]\,
      R => '0'
    );
\x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(11),
      Q => \x_reg_n_0_[11]\,
      R => '0'
    );
\x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(12),
      Q => \x_reg_n_0_[12]\,
      R => '0'
    );
\x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(13),
      Q => \x_reg_n_0_[13]\,
      R => '0'
    );
\x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(14),
      Q => \x_reg_n_0_[14]\,
      R => '0'
    );
\x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(15),
      Q => \x_reg_n_0_[15]\,
      R => '0'
    );
\x_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(16),
      Q => \x_reg_n_0_[16]\,
      R => '0'
    );
\x_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(17),
      Q => \x_reg_n_0_[17]\,
      R => '0'
    );
\x_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(18),
      Q => \x_reg_n_0_[18]\,
      R => '0'
    );
\x_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(19),
      Q => \x_reg_n_0_[19]\,
      R => '0'
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => \x_reg_n_0_[1]\,
      R => '0'
    );
\x_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(20),
      Q => p_1_in3_in(0),
      R => '0'
    );
\x_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(21),
      Q => p_1_in3_in(1),
      R => '0'
    );
\x_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(22),
      Q => p_1_in3_in(2),
      R => '0'
    );
\x_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(23),
      Q => p_1_in3_in(3),
      R => '0'
    );
\x_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(24),
      Q => p_1_in3_in(4),
      R => '0'
    );
\x_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(25),
      Q => p_0_in2_in(0),
      R => '0'
    );
\x_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(26),
      Q => p_0_in2_in(1),
      R => '0'
    );
\x_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(27),
      Q => p_0_in2_in(2),
      R => '0'
    );
\x_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(28),
      Q => p_0_in2_in(3),
      R => '0'
    );
\x_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(29),
      Q => p_0_in2_in(4),
      R => '0'
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => \x_reg_n_0_[2]\,
      R => '0'
    );
\x_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(30),
      Q => p_1_in6_in(0),
      R => '0'
    );
\x_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(31),
      Q => p_1_in6_in(1),
      R => '0'
    );
\x_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(32),
      Q => p_1_in6_in(2),
      R => '0'
    );
\x_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(33),
      Q => p_1_in6_in(3),
      R => '0'
    );
\x_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(34),
      Q => p_1_in6_in(4),
      R => '0'
    );
\x_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(35),
      Q => p_0_in5_in(0),
      R => '0'
    );
\x_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(36),
      Q => p_0_in5_in(1),
      R => '0'
    );
\x_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(37),
      Q => p_0_in5_in(2),
      R => '0'
    );
\x_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(38),
      Q => p_0_in5_in(3),
      R => '0'
    );
\x_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(39),
      Q => p_0_in5_in(4),
      R => '0'
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => \x_reg_n_0_[3]\,
      R => '0'
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => \x_reg_n_0_[4]\,
      R => '0'
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => \x_reg_n_0_[5]\,
      R => '0'
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => \x_reg_n_0_[6]\,
      R => '0'
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => \x_reg_n_0_[7]\,
      R => '0'
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(8),
      Q => \x_reg_n_0_[8]\,
      R => '0'
    );
\x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(9),
      Q => \x_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_full_axi is
  port (
    s_axi_1_bvalid : out STD_LOGIC;
    s_axi_1_rvalid : out STD_LOGIC;
    s_axi_1_rlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \save_init_bram_addr_ld_reg[3]\ : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end TDCsystem_AXITDC_0_0_full_axi;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_full_axi is
  signal \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\ : STD_LOGIC;
  signal \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\ : STD_LOGIC;
  signal AW2Arb_Active_Clr : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_0\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_1\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_13\ : STD_LOGIC;
  signal \GEN_ARB.I_SNG_PORT_n_8\ : STD_LOGIC;
  signal I_RD_CHNL_n_37 : STD_LOGIC;
  signal I_RD_CHNL_n_38 : STD_LOGIC;
  signal I_RD_CHNL_n_39 : STD_LOGIC;
  signal I_RD_CHNL_n_40 : STD_LOGIC;
  signal I_RD_CHNL_n_41 : STD_LOGIC;
  signal I_RD_CHNL_n_42 : STD_LOGIC;
  signal I_RD_CHNL_n_43 : STD_LOGIC;
  signal I_RD_CHNL_n_44 : STD_LOGIC;
  signal I_RD_CHNL_n_45 : STD_LOGIC;
  signal I_RD_CHNL_n_46 : STD_LOGIC;
  signal I_RD_CHNL_n_47 : STD_LOGIC;
  signal I_RD_CHNL_n_48 : STD_LOGIC;
  signal I_RD_CHNL_n_50 : STD_LOGIC;
  signal I_RD_CHNL_n_51 : STD_LOGIC;
  signal I_RD_CHNL_n_52 : STD_LOGIC;
  signal I_WR_CHNL_n_37 : STD_LOGIC;
  signal I_WR_CHNL_n_38 : STD_LOGIC;
  signal I_WR_CHNL_n_39 : STD_LOGIC;
  signal I_WR_CHNL_n_40 : STD_LOGIC;
  signal I_WR_CHNL_n_52 : STD_LOGIC;
  signal I_WR_CHNL_n_53 : STD_LOGIC;
  signal I_WR_CHNL_n_54 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal ar_active_d1 : STD_LOGIC;
  signal ar_active_re : STD_LOGIC;
  signal aw_active_d1 : STD_LOGIC;
  signal aw_active_re : STD_LOGIC;
  signal curr_fixed_burst_reg : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_7_in : STD_LOGIC;
  signal \^s_axi_1_rlast\ : STD_LOGIC;
  signal \^save_init_bram_addr_ld_reg[3]\ : STD_LOGIC;
  signal sng_bram_addr_ld_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[10]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[5]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[7]_i_2\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \ADDR_SNG_PORT.bram_addr_int[9]_i_2\ : label is "soft_lutpair56";
begin
  Q(11 downto 0) <= \^q\(11 downto 0);
  s_axi_1_rlast <= \^s_axi_1_rlast\;
  \save_init_bram_addr_ld_reg[3]\ <= \^save_init_bram_addr_ld_reg[3]\;
\ADDR_SNG_PORT.bram_addr_int[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(4),
      I2 => I_RD_CHNL_n_50,
      I3 => \^q\(5),
      I4 => \^q\(6),
      O => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[11]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(6),
      I2 => \^q\(5),
      I3 => I_RD_CHNL_n_50,
      I4 => \^q\(4),
      I5 => \^q\(7),
      O => \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(4),
      O => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => I_RD_CHNL_n_50,
      I3 => \^q\(4),
      O => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\
    );
\ADDR_SNG_PORT.bram_addr_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_40,
      Q => \^q\(8),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_39,
      Q => \^q\(9),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => I_RD_CHNL_n_38,
      Q => \^q\(10),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => sng_bram_addr_ld_en,
      D => I_RD_CHNL_n_37,
      Q => \^q\(11),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_48,
      Q => \^q\(0),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_47,
      Q => \^q\(1),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_46,
      Q => \^q\(2),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_45,
      Q => \^q\(3),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_44,
      Q => \^q\(4),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_43,
      Q => \^q\(5),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_42,
      Q => \^q\(6),
      R => I_WR_CHNL_n_37
    );
\ADDR_SNG_PORT.bram_addr_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => I_RD_CHNL_n_51,
      D => I_RD_CHNL_n_41,
      Q => \^q\(7),
      R => I_WR_CHNL_n_37
    );
\GEN_ARB.I_SNG_PORT\: entity work.TDCsystem_AXITDC_0_0_sng_port_arb
     port map (
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]\(0) => AW2Arb_Active_Clr,
      \FSM_sequential_arb_sm_cs_reg[0]_0\ => I_WR_CHNL_n_53,
      \GEN_AR_SNG.ar_active_d1_reg\ => \GEN_ARB.I_SNG_PORT_n_13\,
      Q(3 downto 0) => p_6_in(3 downto 0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      axi_arready_int_reg_0 => \GEN_ARB.I_SNG_PORT_n_8\,
      axi_rlast_int_reg => I_RD_CHNL_n_52,
      axi_rlast_int_reg_0 => \^s_axi_1_rlast\,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      \bvalid_cnt_reg[0]\ => I_WR_CHNL_n_54,
      \bvalid_cnt_reg[1]\ => I_WR_CHNL_n_52,
      \out\(1) => \GEN_ARB.I_SNG_PORT_n_0\,
      \out\(0) => \GEN_ARB.I_SNG_PORT_n_1\,
      p_0_out => p_0_out,
      p_1_out => p_1_out,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_aresetn_0 => \^save_init_bram_addr_ld_reg[3]\,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_rready => s_axi_rready
    );
I_RD_CHNL: entity work.TDCsystem_AXITDC_0_0_rd_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[10]\ => \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[4]\ => \ADDR_SNG_PORT.bram_addr_int[5]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[5]\ => \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]\ => I_RD_CHNL_n_50,
      \ADDR_SNG_PORT.bram_addr_int_reg[6]_0\ => \ADDR_SNG_PORT.bram_addr_int[8]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[8]\ => \ADDR_SNG_PORT.bram_addr_int[9]_i_2_n_0\,
      \ADDR_SNG_PORT.bram_addr_int_reg[9]\ => \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0\,
      D(11) => I_RD_CHNL_n_37,
      D(10) => I_RD_CHNL_n_38,
      D(9) => I_RD_CHNL_n_39,
      D(8) => I_RD_CHNL_n_40,
      D(7) => I_RD_CHNL_n_41,
      D(6) => I_RD_CHNL_n_42,
      D(5) => I_RD_CHNL_n_43,
      D(4) => I_RD_CHNL_n_44,
      D(3) => I_RD_CHNL_n_45,
      D(2) => I_RD_CHNL_n_46,
      D(1) => I_RD_CHNL_n_47,
      D(0) => I_RD_CHNL_n_48,
      E(0) => I_RD_CHNL_n_51,
      \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1]\ => I_WR_CHNL_n_38,
      Q(9 downto 0) => \^q\(9 downto 0),
      ar_active_d1 => ar_active_d1,
      ar_active_re => ar_active_re,
      ar_active_reg => \GEN_ARB.I_SNG_PORT_n_13\,
      aw_active_d1_reg => I_WR_CHNL_n_40,
      axi_awready_int_reg => I_RD_CHNL_n_52,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      curr_wrap_burst_reg_reg_0 => I_WR_CHNL_n_39,
      p_0_out => p_0_out,
      p_7_in => p_7_in,
      s_axi_1_rlast => \^s_axi_1_rlast\,
      s_axi_1_rvalid => s_axi_1_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rready => s_axi_rready,
      \save_init_bram_addr_ld_reg[13]\(10 downto 0) => p_1_in(10 downto 0),
      \save_init_bram_addr_ld_reg[3]\ => \^save_init_bram_addr_ld_reg[3]\,
      sng_bram_addr_ld_en => sng_bram_addr_ld_en
    );
I_WR_CHNL: entity work.TDCsystem_AXITDC_0_0_wr_chnl
     port map (
      \ADDR_SNG_PORT.bram_addr_int_reg[13]\(0) => I_WR_CHNL_n_37,
      \ADDR_SNG_PORT.bram_addr_int_reg[13]_0\ => I_WR_CHNL_n_38,
      \ADDR_SNG_PORT.bram_addr_int_reg[13]_1\ => I_WR_CHNL_n_39,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]\ => I_WR_CHNL_n_40,
      \ADDR_SNG_PORT.bram_addr_int_reg[2]_0\ => I_RD_CHNL_n_50,
      D(10 downto 0) => p_1_in(10 downto 0),
      \DEVICE_7SERIES.NO_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3 downto 0) => p_6_in(3 downto 0),
      \FSM_sequential_arb_sm_cs_reg[0]\ => I_WR_CHNL_n_54,
      \FSM_sequential_arb_sm_cs_reg[1]\(1) => \GEN_ARB.I_SNG_PORT_n_0\,
      \FSM_sequential_arb_sm_cs_reg[1]\(0) => \GEN_ARB.I_SNG_PORT_n_1\,
      Q(2 downto 0) => \^q\(2 downto 0),
      SR(0) => \^save_init_bram_addr_ld_reg[3]\,
      aw_active_d1 => aw_active_d1,
      aw_active_re => aw_active_re,
      axi_rlast_int_reg => \GEN_ARB.I_SNG_PORT_n_8\,
      bram_en_a => bram_en_a,
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      curr_fixed_burst_reg => curr_fixed_burst_reg,
      last_arb_won_reg => I_WR_CHNL_n_52,
      last_arb_won_reg_0 => I_WR_CHNL_n_53,
      \out\(0) => AW2Arb_Active_Clr,
      p_1_out => p_1_out,
      p_7_in => p_7_in,
      s_axi_1_bvalid => s_axi_1_bvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    \Dual.gpio2_OE_reg[0]\ : out STD_LOGIC;
    \Dual.gpio2_Data_Out_reg[0]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reg3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end TDCsystem_AXITDC_0_0_slave_attachment;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_slave_attachment is
  signal \^dual.allin0_nd_g0.read_reg_gen[0].reg1_reg[30]\ : STD_LOGIC;
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_state_reg_n_0_[3]\ : signal is "yes";
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal p_0_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  attribute RTL_KEEP of s_axi_bresp_i : signal is "yes";
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \s_axi_rdata_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  attribute RTL_KEEP of s_axi_rresp_i : signal is "yes";
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1__2\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute KEEP of \FSM_onehot_state_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute KEEP of \FSM_onehot_state_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute KEEP of \FSM_onehot_state_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair4";
begin
  \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ <= \^dual.allin0_nd_g0.read_reg_gen[0].reg1_reg[30]\;
  Q(2 downto 0) <= \^q\(2 downto 0);
  SR(0) <= \^sr\(0);
  s_axi_arready <= \^s_axi_arready\;
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rdata(2 downto 0) <= \^s_axi_rdata\(2 downto 0);
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^s_axi_arready\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^s_axi_wready\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^s_axi_arready\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \state1__2\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
I_DECODER: entity work.TDCsystem_AXITDC_0_0_address_decoder
     port map (
      D(2 downto 0) => D(2 downto 0),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\,
      \Dual.gpio2_Data_Out_reg[0]\ => \Dual.gpio2_Data_Out_reg[0]\,
      \Dual.gpio2_OE_reg[0]\ => \Dual.gpio2_OE_reg[0]\,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3 downto 0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q => start2,
      \bus2ip_addr_i_reg[8]\(2 downto 0) => \^q\(2 downto 0),
      bus2ip_rnw_i_reg => \^dual.allin0_nd_g0.read_reg_gen[0].reg1_reg[30]\,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      is_read_reg => is_read_reg_n_0,
      is_write_reg => is_write_reg_n_0,
      reg1(1 downto 0) => reg1(1 downto 0),
      reg3(1 downto 0) => reg3(1 downto 0),
      rst_reg => \^sr\(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => \^s_axi_arready\,
      s_axi_wready => \^s_axi_wready\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => \^q\(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => \^q\(2),
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => \^dual.allin0_nd_g0.read_reg_gen[0].reg1_reg[30]\,
      R => \^sr\(0)
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state1__2\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => \^sr\(0)
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^s_axi_rdata\(0),
      I1 => s_axi_rresp_i,
      I2 => \ip2bus_data_i_D1_reg[0]\(0),
      I3 => \^sr\(0),
      O => \s_axi_rdata_i[0]_i_1_n_0\
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^s_axi_rdata\(1),
      I1 => s_axi_rresp_i,
      I2 => \ip2bus_data_i_D1_reg[0]\(1),
      I3 => \^sr\(0),
      O => \s_axi_rdata_i[1]_i_1_n_0\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \^s_axi_rdata\(2),
      I1 => s_axi_rresp_i,
      I2 => \ip2bus_data_i_D1_reg[0]\(2),
      I3 => \^sr\(0),
      O => \s_axi_rdata_i[31]_i_1_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rdata_i[0]_i_1_n_0\,
      Q => \^s_axi_rdata\(0),
      R => '0'
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rdata_i[1]_i_1_n_0\,
      Q => \^s_axi_rdata\(1),
      R => '0'
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rdata_i[31]_i_1_n_0\,
      Q => \^s_axi_rdata\(2),
      R => '0'
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FC44FC"
    )
        port map (
      I0 => \state1__2\,
      I1 => state(0),
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => \^s_axi_wready\,
      O => p_0_out(0)
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      I5 => \^s_axi_arready\,
      O => p_0_out(1)
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(0),
      Q => state(0),
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => p_0_out(1),
      Q => state(1),
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    web : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_generic_cstr;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(7 downto 0),
      dinb(15 downto 8) => dinb(39 downto 32),
      dinb(7 downto 0) => dinb(7 downto 0),
      douta(7 downto 0) => douta(7 downto 0),
      doutb(15 downto 8) => doutb(39 downto 32),
      doutb(7 downto 0) => doutb(7 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(0),
      web(1) => web(4),
      web(0) => web(0)
    );
\ramloop[1].ram.r\: entity work.\TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(15 downto 8),
      dinb(15 downto 8) => dinb(47 downto 40),
      dinb(7 downto 0) => dinb(15 downto 8),
      douta(7 downto 0) => douta(15 downto 8),
      doutb(15 downto 8) => doutb(47 downto 40),
      doutb(7 downto 0) => doutb(15 downto 8),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(1),
      web(1) => web(5),
      web(0) => web(1)
    );
\ramloop[2].ram.r\: entity work.\TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized1\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(23 downto 16),
      dinb(15 downto 8) => dinb(55 downto 48),
      dinb(7 downto 0) => dinb(23 downto 16),
      douta(7 downto 0) => douta(23 downto 16),
      doutb(15 downto 8) => doutb(55 downto 48),
      doutb(7 downto 0) => doutb(23 downto 16),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(2),
      web(1) => web(6),
      web(0) => web(2)
    );
\ramloop[3].ram.r\: entity work.\TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(7 downto 0) => dina(31 downto 24),
      dinb(15 downto 8) => dinb(63 downto 56),
      dinb(7 downto 0) => dinb(31 downto 24),
      douta(7 downto 0) => douta(31 downto 24),
      doutb(15 downto 8) => doutb(63 downto 56),
      doutb(7 downto 0) => doutb(31 downto 24),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(0) => wea(3),
      web(1) => web(7),
      web(0) => web(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized0\ is
  port (
    validOut_reg : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    validIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized0\ : entity is "adderTreeLegacy";
end \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized0\;

architecture STRUCTURE of \TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized0\ is
  signal p_0_in11_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in14_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in17_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in8_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in12_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in15_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in18_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in9_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \x[0]_i_1_n_0\ : STD_LOGIC;
  signal \x[1]_i_1_n_0\ : STD_LOGIC;
  signal \x[2]_i_1_n_0\ : STD_LOGIC;
  signal \x[3]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_2_n_0\ : STD_LOGIC;
  signal x_in010_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal x_in013_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal x_in016_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal x_in019_out : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \x_in0_inferred__0/x[5]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[6]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[7]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[8]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[9]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__0/x[9]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__1/x[10]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__1/x[11]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__1/x[12]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__1/x[13]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__1/x[14]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__1/x[14]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__2/x[15]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__2/x[16]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__2/x[17]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__2/x[18]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__2/x[19]_i_1_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__2/x[19]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__3/x[24]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__4/x[29]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__5/x[34]_i_2_n_0\ : STD_LOGIC;
  signal \x_in0_inferred__6/x[39]_i_2_n_0\ : STD_LOGIC;
  signal \x_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_reg_n_0_[10]\ : STD_LOGIC;
  signal \x_reg_n_0_[11]\ : STD_LOGIC;
  signal \x_reg_n_0_[12]\ : STD_LOGIC;
  signal \x_reg_n_0_[13]\ : STD_LOGIC;
  signal \x_reg_n_0_[14]\ : STD_LOGIC;
  signal \x_reg_n_0_[15]\ : STD_LOGIC;
  signal \x_reg_n_0_[16]\ : STD_LOGIC;
  signal \x_reg_n_0_[17]\ : STD_LOGIC;
  signal \x_reg_n_0_[18]\ : STD_LOGIC;
  signal \x_reg_n_0_[19]\ : STD_LOGIC;
  signal \x_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_reg_n_0_[20]\ : STD_LOGIC;
  signal \x_reg_n_0_[21]\ : STD_LOGIC;
  signal \x_reg_n_0_[22]\ : STD_LOGIC;
  signal \x_reg_n_0_[23]\ : STD_LOGIC;
  signal \x_reg_n_0_[24]\ : STD_LOGIC;
  signal \x_reg_n_0_[25]\ : STD_LOGIC;
  signal \x_reg_n_0_[26]\ : STD_LOGIC;
  signal \x_reg_n_0_[27]\ : STD_LOGIC;
  signal \x_reg_n_0_[28]\ : STD_LOGIC;
  signal \x_reg_n_0_[29]\ : STD_LOGIC;
  signal \x_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_reg_n_0_[30]\ : STD_LOGIC;
  signal \x_reg_n_0_[31]\ : STD_LOGIC;
  signal \x_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_reg_n_0_[4]\ : STD_LOGIC;
  signal \x_reg_n_0_[5]\ : STD_LOGIC;
  signal \x_reg_n_0_[6]\ : STD_LOGIC;
  signal \x_reg_n_0_[7]\ : STD_LOGIC;
  signal \x_reg_n_0_[8]\ : STD_LOGIC;
  signal \x_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \x[0]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \x[1]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \x[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \x[4]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[5]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[6]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[8]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \x_in0_inferred__0/x[9]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[10]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[11]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[13]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \x_in0_inferred__1/x[14]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[15]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[16]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[18]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \x_in0_inferred__2/x[19]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \x_in0_inferred__3/x[20]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \x_in0_inferred__3/x[21]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \x_in0_inferred__3/x[23]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \x_in0_inferred__3/x[24]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \x_in0_inferred__4/x[25]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \x_in0_inferred__4/x[26]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \x_in0_inferred__4/x[28]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \x_in0_inferred__4/x[29]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \x_in0_inferred__5/x[30]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \x_in0_inferred__5/x[31]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \x_in0_inferred__5/x[33]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \x_in0_inferred__5/x[34]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \x_in0_inferred__6/x[35]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \x_in0_inferred__6/x[36]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \x_in0_inferred__6/x[38]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \x_in0_inferred__6/x[39]_i_1\ : label is "soft_lutpair85";
begin
\RECURSE.NEXT_LEVEL\: entity work.\TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized1\
     port map (
      D(39 downto 35) => x_in019_out(4 downto 0),
      D(34 downto 30) => x_in016_out(4 downto 0),
      D(29 downto 25) => x_in013_out(4 downto 0),
      D(24 downto 20) => x_in010_out(4 downto 0),
      D(19) => \x_in0_inferred__2/x[19]_i_1_n_0\,
      D(18) => \x_in0_inferred__2/x[18]_i_1_n_0\,
      D(17) => \x_in0_inferred__2/x[17]_i_1_n_0\,
      D(16) => \x_in0_inferred__2/x[16]_i_1_n_0\,
      D(15) => \x_in0_inferred__2/x[15]_i_1_n_0\,
      D(14) => \x_in0_inferred__1/x[14]_i_1_n_0\,
      D(13) => \x_in0_inferred__1/x[13]_i_1_n_0\,
      D(12) => \x_in0_inferred__1/x[12]_i_1_n_0\,
      D(11) => \x_in0_inferred__1/x[11]_i_1_n_0\,
      D(10) => \x_in0_inferred__1/x[10]_i_1_n_0\,
      D(9) => \x_in0_inferred__0/x[9]_i_1_n_0\,
      D(8) => \x_in0_inferred__0/x[8]_i_1_n_0\,
      D(7) => \x_in0_inferred__0/x[7]_i_1_n_0\,
      D(6) => \x_in0_inferred__0/x[6]_i_1_n_0\,
      D(5) => \x_in0_inferred__0/x[5]_i_1_n_0\,
      D(4) => \x[4]_i_1_n_0\,
      D(3) => \x[3]_i_1_n_0\,
      D(2) => \x[2]_i_1_n_0\,
      D(1) => \x[1]_i_1_n_0\,
      D(0) => \x[0]_i_1_n_0\,
      clk => clk,
      sum(7 downto 0) => sum(7 downto 0),
      validIn => validIn,
      validOut_reg => validOut_reg
    );
\x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => \x_reg_n_0_[4]\,
      O => \x[0]_i_1_n_0\
    );
\x[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => \x_reg_n_0_[4]\,
      I2 => \x_reg_n_0_[5]\,
      I3 => \x_reg_n_0_[1]\,
      O => \x[1]_i_1_n_0\
    );
\x[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[4]\,
      I1 => \x_reg_n_0_[0]\,
      I2 => \x_reg_n_0_[1]\,
      I3 => \x_reg_n_0_[5]\,
      I4 => \x_reg_n_0_[6]\,
      I5 => \x_reg_n_0_[2]\,
      O => \x[2]_i_1_n_0\
    );
\x[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x[4]_i_2_n_0\,
      I1 => \x_reg_n_0_[7]\,
      I2 => \x_reg_n_0_[3]\,
      O => \x[3]_i_1_n_0\
    );
\x[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \x_reg_n_0_[7]\,
      I1 => \x_reg_n_0_[3]\,
      I2 => \x[4]_i_2_n_0\,
      O => \x[4]_i_1_n_0\
    );
\x[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[6]\,
      I1 => \x_reg_n_0_[2]\,
      I2 => \x_reg_n_0_[4]\,
      I3 => \x_reg_n_0_[0]\,
      I4 => \x_reg_n_0_[1]\,
      I5 => \x_reg_n_0_[5]\,
      O => \x[4]_i_2_n_0\
    );
\x_in0_inferred__0/x[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[8]\,
      I1 => \x_reg_n_0_[12]\,
      O => \x_in0_inferred__0/x[5]_i_1_n_0\
    );
\x_in0_inferred__0/x[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[8]\,
      I1 => \x_reg_n_0_[12]\,
      I2 => \x_reg_n_0_[13]\,
      I3 => \x_reg_n_0_[9]\,
      O => \x_in0_inferred__0/x[6]_i_1_n_0\
    );
\x_in0_inferred__0/x[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[12]\,
      I1 => \x_reg_n_0_[8]\,
      I2 => \x_reg_n_0_[9]\,
      I3 => \x_reg_n_0_[13]\,
      I4 => \x_reg_n_0_[14]\,
      I5 => \x_reg_n_0_[10]\,
      O => \x_in0_inferred__0/x[7]_i_1_n_0\
    );
\x_in0_inferred__0/x[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__0/x[9]_i_2_n_0\,
      I1 => \x_reg_n_0_[15]\,
      I2 => \x_reg_n_0_[11]\,
      O => \x_in0_inferred__0/x[8]_i_1_n_0\
    );
\x_in0_inferred__0/x[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \x_reg_n_0_[15]\,
      I1 => \x_reg_n_0_[11]\,
      I2 => \x_in0_inferred__0/x[9]_i_2_n_0\,
      O => \x_in0_inferred__0/x[9]_i_1_n_0\
    );
\x_in0_inferred__0/x[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[14]\,
      I1 => \x_reg_n_0_[10]\,
      I2 => \x_reg_n_0_[12]\,
      I3 => \x_reg_n_0_[8]\,
      I4 => \x_reg_n_0_[9]\,
      I5 => \x_reg_n_0_[13]\,
      O => \x_in0_inferred__0/x[9]_i_2_n_0\
    );
\x_in0_inferred__1/x[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[16]\,
      I1 => \x_reg_n_0_[20]\,
      O => \x_in0_inferred__1/x[10]_i_1_n_0\
    );
\x_in0_inferred__1/x[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[16]\,
      I1 => \x_reg_n_0_[20]\,
      I2 => \x_reg_n_0_[21]\,
      I3 => \x_reg_n_0_[17]\,
      O => \x_in0_inferred__1/x[11]_i_1_n_0\
    );
\x_in0_inferred__1/x[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[20]\,
      I1 => \x_reg_n_0_[16]\,
      I2 => \x_reg_n_0_[17]\,
      I3 => \x_reg_n_0_[21]\,
      I4 => \x_reg_n_0_[22]\,
      I5 => \x_reg_n_0_[18]\,
      O => \x_in0_inferred__1/x[12]_i_1_n_0\
    );
\x_in0_inferred__1/x[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__1/x[14]_i_2_n_0\,
      I1 => \x_reg_n_0_[23]\,
      I2 => \x_reg_n_0_[19]\,
      O => \x_in0_inferred__1/x[13]_i_1_n_0\
    );
\x_in0_inferred__1/x[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \x_reg_n_0_[23]\,
      I1 => \x_reg_n_0_[19]\,
      I2 => \x_in0_inferred__1/x[14]_i_2_n_0\,
      O => \x_in0_inferred__1/x[14]_i_1_n_0\
    );
\x_in0_inferred__1/x[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[22]\,
      I1 => \x_reg_n_0_[18]\,
      I2 => \x_reg_n_0_[20]\,
      I3 => \x_reg_n_0_[16]\,
      I4 => \x_reg_n_0_[17]\,
      I5 => \x_reg_n_0_[21]\,
      O => \x_in0_inferred__1/x[14]_i_2_n_0\
    );
\x_in0_inferred__2/x[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[24]\,
      I1 => \x_reg_n_0_[28]\,
      O => \x_in0_inferred__2/x[15]_i_1_n_0\
    );
\x_in0_inferred__2/x[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[24]\,
      I1 => \x_reg_n_0_[28]\,
      I2 => \x_reg_n_0_[29]\,
      I3 => \x_reg_n_0_[25]\,
      O => \x_in0_inferred__2/x[16]_i_1_n_0\
    );
\x_in0_inferred__2/x[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[28]\,
      I1 => \x_reg_n_0_[24]\,
      I2 => \x_reg_n_0_[25]\,
      I3 => \x_reg_n_0_[29]\,
      I4 => \x_reg_n_0_[30]\,
      I5 => \x_reg_n_0_[26]\,
      O => \x_in0_inferred__2/x[17]_i_1_n_0\
    );
\x_in0_inferred__2/x[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__2/x[19]_i_2_n_0\,
      I1 => \x_reg_n_0_[31]\,
      I2 => \x_reg_n_0_[27]\,
      O => \x_in0_inferred__2/x[18]_i_1_n_0\
    );
\x_in0_inferred__2/x[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \x_reg_n_0_[31]\,
      I1 => \x_reg_n_0_[27]\,
      I2 => \x_in0_inferred__2/x[19]_i_2_n_0\,
      O => \x_in0_inferred__2/x[19]_i_1_n_0\
    );
\x_in0_inferred__2/x[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[30]\,
      I1 => \x_reg_n_0_[26]\,
      I2 => \x_reg_n_0_[28]\,
      I3 => \x_reg_n_0_[24]\,
      I4 => \x_reg_n_0_[25]\,
      I5 => \x_reg_n_0_[29]\,
      O => \x_in0_inferred__2/x[19]_i_2_n_0\
    );
\x_in0_inferred__3/x[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in9_in(0),
      I1 => p_0_in8_in(0),
      O => x_in010_out(0)
    );
\x_in0_inferred__3/x[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in9_in(0),
      I1 => p_0_in8_in(0),
      I2 => p_0_in8_in(1),
      I3 => p_1_in9_in(1),
      O => x_in010_out(1)
    );
\x_in0_inferred__3/x[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in8_in(0),
      I1 => p_1_in9_in(0),
      I2 => p_1_in9_in(1),
      I3 => p_0_in8_in(1),
      I4 => p_0_in8_in(2),
      I5 => p_1_in9_in(2),
      O => x_in010_out(2)
    );
\x_in0_inferred__3/x[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__3/x[24]_i_2_n_0\,
      I1 => p_0_in8_in(3),
      I2 => p_1_in9_in(3),
      O => x_in010_out(3)
    );
\x_in0_inferred__3/x[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in8_in(3),
      I1 => p_1_in9_in(3),
      I2 => \x_in0_inferred__3/x[24]_i_2_n_0\,
      O => x_in010_out(4)
    );
\x_in0_inferred__3/x[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in8_in(2),
      I1 => p_1_in9_in(2),
      I2 => p_0_in8_in(0),
      I3 => p_1_in9_in(0),
      I4 => p_1_in9_in(1),
      I5 => p_0_in8_in(1),
      O => \x_in0_inferred__3/x[24]_i_2_n_0\
    );
\x_in0_inferred__4/x[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in12_in(0),
      I1 => p_0_in11_in(0),
      O => x_in013_out(0)
    );
\x_in0_inferred__4/x[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in12_in(0),
      I1 => p_0_in11_in(0),
      I2 => p_0_in11_in(1),
      I3 => p_1_in12_in(1),
      O => x_in013_out(1)
    );
\x_in0_inferred__4/x[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in11_in(0),
      I1 => p_1_in12_in(0),
      I2 => p_1_in12_in(1),
      I3 => p_0_in11_in(1),
      I4 => p_0_in11_in(2),
      I5 => p_1_in12_in(2),
      O => x_in013_out(2)
    );
\x_in0_inferred__4/x[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__4/x[29]_i_2_n_0\,
      I1 => p_0_in11_in(3),
      I2 => p_1_in12_in(3),
      O => x_in013_out(3)
    );
\x_in0_inferred__4/x[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in11_in(3),
      I1 => p_1_in12_in(3),
      I2 => \x_in0_inferred__4/x[29]_i_2_n_0\,
      O => x_in013_out(4)
    );
\x_in0_inferred__4/x[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in11_in(2),
      I1 => p_1_in12_in(2),
      I2 => p_0_in11_in(0),
      I3 => p_1_in12_in(0),
      I4 => p_1_in12_in(1),
      I5 => p_0_in11_in(1),
      O => \x_in0_inferred__4/x[29]_i_2_n_0\
    );
\x_in0_inferred__5/x[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in15_in(0),
      I1 => p_0_in14_in(0),
      O => x_in016_out(0)
    );
\x_in0_inferred__5/x[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in15_in(0),
      I1 => p_0_in14_in(0),
      I2 => p_0_in14_in(1),
      I3 => p_1_in15_in(1),
      O => x_in016_out(1)
    );
\x_in0_inferred__5/x[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in14_in(0),
      I1 => p_1_in15_in(0),
      I2 => p_1_in15_in(1),
      I3 => p_0_in14_in(1),
      I4 => p_0_in14_in(2),
      I5 => p_1_in15_in(2),
      O => x_in016_out(2)
    );
\x_in0_inferred__5/x[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__5/x[34]_i_2_n_0\,
      I1 => p_0_in14_in(3),
      I2 => p_1_in15_in(3),
      O => x_in016_out(3)
    );
\x_in0_inferred__5/x[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in14_in(3),
      I1 => p_1_in15_in(3),
      I2 => \x_in0_inferred__5/x[34]_i_2_n_0\,
      O => x_in016_out(4)
    );
\x_in0_inferred__5/x[34]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in14_in(2),
      I1 => p_1_in15_in(2),
      I2 => p_0_in14_in(0),
      I3 => p_1_in15_in(0),
      I4 => p_1_in15_in(1),
      I5 => p_0_in14_in(1),
      O => \x_in0_inferred__5/x[34]_i_2_n_0\
    );
\x_in0_inferred__6/x[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in18_in(0),
      I1 => p_0_in17_in(0),
      O => x_in019_out(0)
    );
\x_in0_inferred__6/x[36]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in18_in(0),
      I1 => p_0_in17_in(0),
      I2 => p_0_in17_in(1),
      I3 => p_1_in18_in(1),
      O => x_in019_out(1)
    );
\x_in0_inferred__6/x[37]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in17_in(0),
      I1 => p_1_in18_in(0),
      I2 => p_1_in18_in(1),
      I3 => p_0_in17_in(1),
      I4 => p_0_in17_in(2),
      I5 => p_1_in18_in(2),
      O => x_in019_out(2)
    );
\x_in0_inferred__6/x[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \x_in0_inferred__6/x[39]_i_2_n_0\,
      I1 => p_0_in17_in(3),
      I2 => p_1_in18_in(3),
      O => x_in019_out(3)
    );
\x_in0_inferred__6/x[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_0_in17_in(3),
      I1 => p_1_in18_in(3),
      I2 => \x_in0_inferred__6/x[39]_i_2_n_0\,
      O => x_in019_out(4)
    );
\x_in0_inferred__6/x[39]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in17_in(2),
      I1 => p_1_in18_in(2),
      I2 => p_0_in17_in(0),
      I3 => p_1_in18_in(0),
      I4 => p_1_in18_in(1),
      I5 => p_0_in17_in(1),
      O => \x_in0_inferred__6/x[39]_i_2_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \x_reg_n_0_[0]\,
      R => '0'
    );
\x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(10),
      Q => \x_reg_n_0_[10]\,
      R => '0'
    );
\x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(11),
      Q => \x_reg_n_0_[11]\,
      R => '0'
    );
\x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(12),
      Q => \x_reg_n_0_[12]\,
      R => '0'
    );
\x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(13),
      Q => \x_reg_n_0_[13]\,
      R => '0'
    );
\x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(14),
      Q => \x_reg_n_0_[14]\,
      R => '0'
    );
\x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(15),
      Q => \x_reg_n_0_[15]\,
      R => '0'
    );
\x_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(16),
      Q => \x_reg_n_0_[16]\,
      R => '0'
    );
\x_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(17),
      Q => \x_reg_n_0_[17]\,
      R => '0'
    );
\x_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(18),
      Q => \x_reg_n_0_[18]\,
      R => '0'
    );
\x_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(19),
      Q => \x_reg_n_0_[19]\,
      R => '0'
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => \x_reg_n_0_[1]\,
      R => '0'
    );
\x_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(20),
      Q => \x_reg_n_0_[20]\,
      R => '0'
    );
\x_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(21),
      Q => \x_reg_n_0_[21]\,
      R => '0'
    );
\x_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(22),
      Q => \x_reg_n_0_[22]\,
      R => '0'
    );
\x_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(23),
      Q => \x_reg_n_0_[23]\,
      R => '0'
    );
\x_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(24),
      Q => \x_reg_n_0_[24]\,
      R => '0'
    );
\x_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(25),
      Q => \x_reg_n_0_[25]\,
      R => '0'
    );
\x_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(26),
      Q => \x_reg_n_0_[26]\,
      R => '0'
    );
\x_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(27),
      Q => \x_reg_n_0_[27]\,
      R => '0'
    );
\x_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(28),
      Q => \x_reg_n_0_[28]\,
      R => '0'
    );
\x_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(29),
      Q => \x_reg_n_0_[29]\,
      R => '0'
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => \x_reg_n_0_[2]\,
      R => '0'
    );
\x_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(30),
      Q => \x_reg_n_0_[30]\,
      R => '0'
    );
\x_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(31),
      Q => \x_reg_n_0_[31]\,
      R => '0'
    );
\x_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(32),
      Q => p_1_in9_in(0),
      R => '0'
    );
\x_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(33),
      Q => p_1_in9_in(1),
      R => '0'
    );
\x_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(34),
      Q => p_1_in9_in(2),
      R => '0'
    );
\x_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(35),
      Q => p_1_in9_in(3),
      R => '0'
    );
\x_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(36),
      Q => p_0_in8_in(0),
      R => '0'
    );
\x_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(37),
      Q => p_0_in8_in(1),
      R => '0'
    );
\x_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(38),
      Q => p_0_in8_in(2),
      R => '0'
    );
\x_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(39),
      Q => p_0_in8_in(3),
      R => '0'
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => \x_reg_n_0_[3]\,
      R => '0'
    );
\x_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(40),
      Q => p_1_in12_in(0),
      R => '0'
    );
\x_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(41),
      Q => p_1_in12_in(1),
      R => '0'
    );
\x_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(42),
      Q => p_1_in12_in(2),
      R => '0'
    );
\x_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(43),
      Q => p_1_in12_in(3),
      R => '0'
    );
\x_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(44),
      Q => p_0_in11_in(0),
      R => '0'
    );
\x_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(45),
      Q => p_0_in11_in(1),
      R => '0'
    );
\x_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(46),
      Q => p_0_in11_in(2),
      R => '0'
    );
\x_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(47),
      Q => p_0_in11_in(3),
      R => '0'
    );
\x_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(48),
      Q => p_1_in15_in(0),
      R => '0'
    );
\x_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(49),
      Q => p_1_in15_in(1),
      R => '0'
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => \x_reg_n_0_[4]\,
      R => '0'
    );
\x_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(50),
      Q => p_1_in15_in(2),
      R => '0'
    );
\x_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(51),
      Q => p_1_in15_in(3),
      R => '0'
    );
\x_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(52),
      Q => p_0_in14_in(0),
      R => '0'
    );
\x_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(53),
      Q => p_0_in14_in(1),
      R => '0'
    );
\x_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(54),
      Q => p_0_in14_in(2),
      R => '0'
    );
\x_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(55),
      Q => p_0_in14_in(3),
      R => '0'
    );
\x_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(56),
      Q => p_1_in18_in(0),
      R => '0'
    );
\x_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(57),
      Q => p_1_in18_in(1),
      R => '0'
    );
\x_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(58),
      Q => p_1_in18_in(2),
      R => '0'
    );
\x_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(59),
      Q => p_1_in18_in(3),
      R => '0'
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => \x_reg_n_0_[5]\,
      R => '0'
    );
\x_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(60),
      Q => p_0_in17_in(0),
      R => '0'
    );
\x_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(61),
      Q => p_0_in17_in(1),
      R => '0'
    );
\x_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(62),
      Q => p_0_in17_in(2),
      R => '0'
    );
\x_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(63),
      Q => p_0_in17_in(3),
      R => '0'
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => \x_reg_n_0_[6]\,
      R => '0'
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => \x_reg_n_0_[7]\,
      R => '0'
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(8),
      Q => \x_reg_n_0_[8]\,
      R => '0'
    );
\x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(9),
      Q => \x_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_axi_bram_ctrl_top is
  port (
    s_axi_1_bvalid : out STD_LOGIC;
    s_axi_1_rvalid : out STD_LOGIC;
    s_axi_1_rlast : out STD_LOGIC;
    BRAM_Addr_A : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \save_init_bram_addr_ld_reg[3]\ : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end TDCsystem_AXITDC_0_0_axi_bram_ctrl_top;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_axi_bram_ctrl_top is
begin
\GEN_AXI4.I_FULL_AXI\: entity work.TDCsystem_AXITDC_0_0_full_axi
     port map (
      Q(11 downto 0) => BRAM_Addr_A(11 downto 0),
      bram_en_a => bram_en_a,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_1_bvalid => s_axi_1_bvalid,
      s_axi_1_rlast => s_axi_1_rlast,
      s_axi_1_rvalid => s_axi_1_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld_reg[3]\ => \save_init_bram_addr_ld_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_axi_lite_ipif is
  port (
    bus2ip_reset : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    bus2ip_rnw : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC;
    \Dual.gpio2_OE_reg[0]\ : out STD_LOGIC;
    \Dual.gpio2_Data_Out_reg[0]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    gpio_xferAck_Reg : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    reg3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    reg1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end TDCsystem_AXITDC_0_0_axi_lite_ipif;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.TDCsystem_AXITDC_0_0_slave_attachment
     port map (
      D(2 downto 0) => D(2 downto 0),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ => bus2ip_rnw,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\,
      \Dual.gpio2_Data_Out_reg[0]\ => \Dual.gpio2_Data_Out_reg[0]\,
      \Dual.gpio2_OE_reg[0]\ => \Dual.gpio2_OE_reg[0]\,
      GPIO_xferAck_i => GPIO_xferAck_i,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => bus2ip_cs,
      Q(2 downto 0) => Q(2 downto 0),
      SR(0) => bus2ip_reset,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      \ip2bus_data_i_D1_reg[0]\(2 downto 0) => \ip2bus_data_i_D1_reg[0]\(2 downto 0),
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      reg1(1 downto 0) => reg1(1 downto 0),
      reg3(1 downto 0) => reg3(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2 downto 0) => s_axi_araddr(2 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2 downto 0) => s_axi_awaddr(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(2 downto 0) => s_axi_rdata(2 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    web : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_top;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_top is
begin
\valid.cstr\: entity work.TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_generic_cstr
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(63 downto 0) => dinb(63 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(3 downto 0) => wea(3 downto 0),
      web(7 downto 0) => web(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_adderTreeLegacy is
  port (
    validOut_reg : out STD_LOGIC;
    sum : out STD_LOGIC_VECTOR ( 7 downto 0 );
    validIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 95 downto 0 )
  );
end TDCsystem_AXITDC_0_0_adderTreeLegacy;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_adderTreeLegacy is
  signal p_0_in20_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in23_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in26_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in29_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in32_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in35_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in38_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in41_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in21_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in24_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in27_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in30_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in33_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in36_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in39_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_1_in42_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \x[0]_i_1_n_0\ : STD_LOGIC;
  signal \x[10]_i_1_n_0\ : STD_LOGIC;
  signal \x[11]_i_1_n_0\ : STD_LOGIC;
  signal \x[12]_i_1_n_0\ : STD_LOGIC;
  signal \x[13]_i_1_n_0\ : STD_LOGIC;
  signal \x[14]_i_1_n_0\ : STD_LOGIC;
  signal \x[15]_i_1_n_0\ : STD_LOGIC;
  signal \x[16]_i_1_n_0\ : STD_LOGIC;
  signal \x[17]_i_1_n_0\ : STD_LOGIC;
  signal \x[18]_i_1_n_0\ : STD_LOGIC;
  signal \x[19]_i_1_n_0\ : STD_LOGIC;
  signal \x[1]_i_1_n_0\ : STD_LOGIC;
  signal \x[20]_i_1_n_0\ : STD_LOGIC;
  signal \x[21]_i_1_n_0\ : STD_LOGIC;
  signal \x[22]_i_1_n_0\ : STD_LOGIC;
  signal \x[23]_i_1_n_0\ : STD_LOGIC;
  signal \x[24]_i_1_n_0\ : STD_LOGIC;
  signal \x[25]_i_1_n_0\ : STD_LOGIC;
  signal \x[26]_i_1_n_0\ : STD_LOGIC;
  signal \x[27]_i_1_n_0\ : STD_LOGIC;
  signal \x[28]_i_1_n_0\ : STD_LOGIC;
  signal \x[29]_i_1_n_0\ : STD_LOGIC;
  signal \x[2]_i_1_n_0\ : STD_LOGIC;
  signal \x[30]_i_1_n_0\ : STD_LOGIC;
  signal \x[31]_i_1_n_0\ : STD_LOGIC;
  signal \x[3]_i_1_n_0\ : STD_LOGIC;
  signal \x[4]_i_1_n_0\ : STD_LOGIC;
  signal \x[5]_i_1_n_0\ : STD_LOGIC;
  signal \x[6]_i_1_n_0\ : STD_LOGIC;
  signal \x[7]_i_1_n_0\ : STD_LOGIC;
  signal \x[8]_i_1_n_0\ : STD_LOGIC;
  signal \x[9]_i_1_n_0\ : STD_LOGIC;
  signal x_in022_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_in025_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_in028_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_in031_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_in034_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_in037_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_in040_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_in043_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \x_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_reg_n_0_[10]\ : STD_LOGIC;
  signal \x_reg_n_0_[11]\ : STD_LOGIC;
  signal \x_reg_n_0_[12]\ : STD_LOGIC;
  signal \x_reg_n_0_[13]\ : STD_LOGIC;
  signal \x_reg_n_0_[14]\ : STD_LOGIC;
  signal \x_reg_n_0_[15]\ : STD_LOGIC;
  signal \x_reg_n_0_[16]\ : STD_LOGIC;
  signal \x_reg_n_0_[17]\ : STD_LOGIC;
  signal \x_reg_n_0_[18]\ : STD_LOGIC;
  signal \x_reg_n_0_[19]\ : STD_LOGIC;
  signal \x_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_reg_n_0_[20]\ : STD_LOGIC;
  signal \x_reg_n_0_[21]\ : STD_LOGIC;
  signal \x_reg_n_0_[22]\ : STD_LOGIC;
  signal \x_reg_n_0_[23]\ : STD_LOGIC;
  signal \x_reg_n_0_[24]\ : STD_LOGIC;
  signal \x_reg_n_0_[25]\ : STD_LOGIC;
  signal \x_reg_n_0_[26]\ : STD_LOGIC;
  signal \x_reg_n_0_[27]\ : STD_LOGIC;
  signal \x_reg_n_0_[28]\ : STD_LOGIC;
  signal \x_reg_n_0_[29]\ : STD_LOGIC;
  signal \x_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_reg_n_0_[30]\ : STD_LOGIC;
  signal \x_reg_n_0_[31]\ : STD_LOGIC;
  signal \x_reg_n_0_[32]\ : STD_LOGIC;
  signal \x_reg_n_0_[33]\ : STD_LOGIC;
  signal \x_reg_n_0_[34]\ : STD_LOGIC;
  signal \x_reg_n_0_[35]\ : STD_LOGIC;
  signal \x_reg_n_0_[36]\ : STD_LOGIC;
  signal \x_reg_n_0_[37]\ : STD_LOGIC;
  signal \x_reg_n_0_[38]\ : STD_LOGIC;
  signal \x_reg_n_0_[39]\ : STD_LOGIC;
  signal \x_reg_n_0_[3]\ : STD_LOGIC;
  signal \x_reg_n_0_[40]\ : STD_LOGIC;
  signal \x_reg_n_0_[41]\ : STD_LOGIC;
  signal \x_reg_n_0_[42]\ : STD_LOGIC;
  signal \x_reg_n_0_[43]\ : STD_LOGIC;
  signal \x_reg_n_0_[44]\ : STD_LOGIC;
  signal \x_reg_n_0_[45]\ : STD_LOGIC;
  signal \x_reg_n_0_[46]\ : STD_LOGIC;
  signal \x_reg_n_0_[47]\ : STD_LOGIC;
  signal \x_reg_n_0_[4]\ : STD_LOGIC;
  signal \x_reg_n_0_[5]\ : STD_LOGIC;
  signal \x_reg_n_0_[6]\ : STD_LOGIC;
  signal \x_reg_n_0_[7]\ : STD_LOGIC;
  signal \x_reg_n_0_[8]\ : STD_LOGIC;
  signal \x_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \x[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \x[12]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \x[13]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \x[16]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \x[17]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \x[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \x[20]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \x[21]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \x[24]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \x[25]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \x[28]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \x[29]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \x[32]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \x[33]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \x[36]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \x[37]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \x[40]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \x[41]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \x[44]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \x[45]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \x[48]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \x[49]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \x[4]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \x[52]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \x[53]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \x[56]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \x[57]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \x[5]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \x[60]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \x[61]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \x[8]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \x[9]_i_1\ : label is "soft_lutpair91";
begin
\RECURSE.NEXT_LEVEL\: entity work.\TDCsystem_AXITDC_0_0_adderTreeLegacy__parameterized0\
     port map (
      D(63 downto 60) => x_in043_out(3 downto 0),
      D(59 downto 56) => x_in040_out(3 downto 0),
      D(55 downto 52) => x_in037_out(3 downto 0),
      D(51 downto 48) => x_in034_out(3 downto 0),
      D(47 downto 44) => x_in031_out(3 downto 0),
      D(43 downto 40) => x_in028_out(3 downto 0),
      D(39 downto 36) => x_in025_out(3 downto 0),
      D(35 downto 32) => x_in022_out(3 downto 0),
      D(31) => \x[31]_i_1_n_0\,
      D(30) => \x[30]_i_1_n_0\,
      D(29) => \x[29]_i_1_n_0\,
      D(28) => \x[28]_i_1_n_0\,
      D(27) => \x[27]_i_1_n_0\,
      D(26) => \x[26]_i_1_n_0\,
      D(25) => \x[25]_i_1_n_0\,
      D(24) => \x[24]_i_1_n_0\,
      D(23) => \x[23]_i_1_n_0\,
      D(22) => \x[22]_i_1_n_0\,
      D(21) => \x[21]_i_1_n_0\,
      D(20) => \x[20]_i_1_n_0\,
      D(19) => \x[19]_i_1_n_0\,
      D(18) => \x[18]_i_1_n_0\,
      D(17) => \x[17]_i_1_n_0\,
      D(16) => \x[16]_i_1_n_0\,
      D(15) => \x[15]_i_1_n_0\,
      D(14) => \x[14]_i_1_n_0\,
      D(13) => \x[13]_i_1_n_0\,
      D(12) => \x[12]_i_1_n_0\,
      D(11) => \x[11]_i_1_n_0\,
      D(10) => \x[10]_i_1_n_0\,
      D(9) => \x[9]_i_1_n_0\,
      D(8) => \x[8]_i_1_n_0\,
      D(7) => \x[7]_i_1_n_0\,
      D(6) => \x[6]_i_1_n_0\,
      D(5) => \x[5]_i_1_n_0\,
      D(4) => \x[4]_i_1_n_0\,
      D(3) => \x[3]_i_1_n_0\,
      D(2) => \x[2]_i_1_n_0\,
      D(1) => \x[1]_i_1_n_0\,
      D(0) => \x[0]_i_1_n_0\,
      clk => clk,
      sum(7 downto 0) => sum(7 downto 0),
      validIn => validIn,
      validOut_reg => validOut_reg
    );
\x[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => \x_reg_n_0_[3]\,
      O => \x[0]_i_1_n_0\
    );
\x[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[15]\,
      I1 => \x_reg_n_0_[12]\,
      I2 => \x_reg_n_0_[13]\,
      I3 => \x_reg_n_0_[16]\,
      I4 => \x_reg_n_0_[17]\,
      I5 => \x_reg_n_0_[14]\,
      O => \x[10]_i_1_n_0\
    );
\x[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[17]\,
      I1 => \x_reg_n_0_[14]\,
      I2 => \x_reg_n_0_[15]\,
      I3 => \x_reg_n_0_[12]\,
      I4 => \x_reg_n_0_[13]\,
      I5 => \x_reg_n_0_[16]\,
      O => \x[11]_i_1_n_0\
    );
\x[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[18]\,
      I1 => \x_reg_n_0_[21]\,
      O => \x[12]_i_1_n_0\
    );
\x[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[18]\,
      I1 => \x_reg_n_0_[21]\,
      I2 => \x_reg_n_0_[22]\,
      I3 => \x_reg_n_0_[19]\,
      O => \x[13]_i_1_n_0\
    );
\x[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[21]\,
      I1 => \x_reg_n_0_[18]\,
      I2 => \x_reg_n_0_[19]\,
      I3 => \x_reg_n_0_[22]\,
      I4 => \x_reg_n_0_[23]\,
      I5 => \x_reg_n_0_[20]\,
      O => \x[14]_i_1_n_0\
    );
\x[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[23]\,
      I1 => \x_reg_n_0_[20]\,
      I2 => \x_reg_n_0_[21]\,
      I3 => \x_reg_n_0_[18]\,
      I4 => \x_reg_n_0_[19]\,
      I5 => \x_reg_n_0_[22]\,
      O => \x[15]_i_1_n_0\
    );
\x[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[24]\,
      I1 => \x_reg_n_0_[27]\,
      O => \x[16]_i_1_n_0\
    );
\x[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[24]\,
      I1 => \x_reg_n_0_[27]\,
      I2 => \x_reg_n_0_[28]\,
      I3 => \x_reg_n_0_[25]\,
      O => \x[17]_i_1_n_0\
    );
\x[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[27]\,
      I1 => \x_reg_n_0_[24]\,
      I2 => \x_reg_n_0_[25]\,
      I3 => \x_reg_n_0_[28]\,
      I4 => \x_reg_n_0_[29]\,
      I5 => \x_reg_n_0_[26]\,
      O => \x[18]_i_1_n_0\
    );
\x[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[29]\,
      I1 => \x_reg_n_0_[26]\,
      I2 => \x_reg_n_0_[27]\,
      I3 => \x_reg_n_0_[24]\,
      I4 => \x_reg_n_0_[25]\,
      I5 => \x_reg_n_0_[28]\,
      O => \x[19]_i_1_n_0\
    );
\x[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[0]\,
      I1 => \x_reg_n_0_[3]\,
      I2 => \x_reg_n_0_[4]\,
      I3 => \x_reg_n_0_[1]\,
      O => \x[1]_i_1_n_0\
    );
\x[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[30]\,
      I1 => \x_reg_n_0_[33]\,
      O => \x[20]_i_1_n_0\
    );
\x[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[30]\,
      I1 => \x_reg_n_0_[33]\,
      I2 => \x_reg_n_0_[34]\,
      I3 => \x_reg_n_0_[31]\,
      O => \x[21]_i_1_n_0\
    );
\x[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[33]\,
      I1 => \x_reg_n_0_[30]\,
      I2 => \x_reg_n_0_[31]\,
      I3 => \x_reg_n_0_[34]\,
      I4 => \x_reg_n_0_[35]\,
      I5 => \x_reg_n_0_[32]\,
      O => \x[22]_i_1_n_0\
    );
\x[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[35]\,
      I1 => \x_reg_n_0_[32]\,
      I2 => \x_reg_n_0_[33]\,
      I3 => \x_reg_n_0_[30]\,
      I4 => \x_reg_n_0_[31]\,
      I5 => \x_reg_n_0_[34]\,
      O => \x[23]_i_1_n_0\
    );
\x[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[36]\,
      I1 => \x_reg_n_0_[39]\,
      O => \x[24]_i_1_n_0\
    );
\x[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[36]\,
      I1 => \x_reg_n_0_[39]\,
      I2 => \x_reg_n_0_[40]\,
      I3 => \x_reg_n_0_[37]\,
      O => \x[25]_i_1_n_0\
    );
\x[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[39]\,
      I1 => \x_reg_n_0_[36]\,
      I2 => \x_reg_n_0_[37]\,
      I3 => \x_reg_n_0_[40]\,
      I4 => \x_reg_n_0_[41]\,
      I5 => \x_reg_n_0_[38]\,
      O => \x[26]_i_1_n_0\
    );
\x[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[41]\,
      I1 => \x_reg_n_0_[38]\,
      I2 => \x_reg_n_0_[39]\,
      I3 => \x_reg_n_0_[36]\,
      I4 => \x_reg_n_0_[37]\,
      I5 => \x_reg_n_0_[40]\,
      O => \x[27]_i_1_n_0\
    );
\x[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[42]\,
      I1 => \x_reg_n_0_[45]\,
      O => \x[28]_i_1_n_0\
    );
\x[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[42]\,
      I1 => \x_reg_n_0_[45]\,
      I2 => \x_reg_n_0_[46]\,
      I3 => \x_reg_n_0_[43]\,
      O => \x[29]_i_1_n_0\
    );
\x[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[3]\,
      I1 => \x_reg_n_0_[0]\,
      I2 => \x_reg_n_0_[1]\,
      I3 => \x_reg_n_0_[4]\,
      I4 => \x_reg_n_0_[5]\,
      I5 => \x_reg_n_0_[2]\,
      O => \x[2]_i_1_n_0\
    );
\x[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[45]\,
      I1 => \x_reg_n_0_[42]\,
      I2 => \x_reg_n_0_[43]\,
      I3 => \x_reg_n_0_[46]\,
      I4 => \x_reg_n_0_[47]\,
      I5 => \x_reg_n_0_[44]\,
      O => \x[30]_i_1_n_0\
    );
\x[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[47]\,
      I1 => \x_reg_n_0_[44]\,
      I2 => \x_reg_n_0_[45]\,
      I3 => \x_reg_n_0_[42]\,
      I4 => \x_reg_n_0_[43]\,
      I5 => \x_reg_n_0_[46]\,
      O => \x[31]_i_1_n_0\
    );
\x[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in21_in(0),
      I1 => p_0_in20_in(0),
      O => x_in022_out(0)
    );
\x[33]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in21_in(0),
      I1 => p_0_in20_in(0),
      I2 => p_0_in20_in(1),
      I3 => p_1_in21_in(1),
      O => x_in022_out(1)
    );
\x[34]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in20_in(0),
      I1 => p_1_in21_in(0),
      I2 => p_1_in21_in(1),
      I3 => p_0_in20_in(1),
      I4 => p_0_in20_in(2),
      I5 => p_1_in21_in(2),
      O => x_in022_out(2)
    );
\x[35]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in20_in(2),
      I1 => p_1_in21_in(2),
      I2 => p_0_in20_in(0),
      I3 => p_1_in21_in(0),
      I4 => p_1_in21_in(1),
      I5 => p_0_in20_in(1),
      O => x_in022_out(3)
    );
\x[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in24_in(0),
      I1 => p_0_in23_in(0),
      O => x_in025_out(0)
    );
\x[37]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in24_in(0),
      I1 => p_0_in23_in(0),
      I2 => p_0_in23_in(1),
      I3 => p_1_in24_in(1),
      O => x_in025_out(1)
    );
\x[38]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in23_in(0),
      I1 => p_1_in24_in(0),
      I2 => p_1_in24_in(1),
      I3 => p_0_in23_in(1),
      I4 => p_0_in23_in(2),
      I5 => p_1_in24_in(2),
      O => x_in025_out(2)
    );
\x[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in23_in(2),
      I1 => p_1_in24_in(2),
      I2 => p_0_in23_in(0),
      I3 => p_1_in24_in(0),
      I4 => p_1_in24_in(1),
      I5 => p_0_in23_in(1),
      O => x_in025_out(3)
    );
\x[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[5]\,
      I1 => \x_reg_n_0_[2]\,
      I2 => \x_reg_n_0_[3]\,
      I3 => \x_reg_n_0_[0]\,
      I4 => \x_reg_n_0_[1]\,
      I5 => \x_reg_n_0_[4]\,
      O => \x[3]_i_1_n_0\
    );
\x[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in27_in(0),
      I1 => p_0_in26_in(0),
      O => x_in028_out(0)
    );
\x[41]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in27_in(0),
      I1 => p_0_in26_in(0),
      I2 => p_0_in26_in(1),
      I3 => p_1_in27_in(1),
      O => x_in028_out(1)
    );
\x[42]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in26_in(0),
      I1 => p_1_in27_in(0),
      I2 => p_1_in27_in(1),
      I3 => p_0_in26_in(1),
      I4 => p_0_in26_in(2),
      I5 => p_1_in27_in(2),
      O => x_in028_out(2)
    );
\x[43]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in26_in(2),
      I1 => p_1_in27_in(2),
      I2 => p_0_in26_in(0),
      I3 => p_1_in27_in(0),
      I4 => p_1_in27_in(1),
      I5 => p_0_in26_in(1),
      O => x_in028_out(3)
    );
\x[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in30_in(0),
      I1 => p_0_in29_in(0),
      O => x_in031_out(0)
    );
\x[45]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in30_in(0),
      I1 => p_0_in29_in(0),
      I2 => p_0_in29_in(1),
      I3 => p_1_in30_in(1),
      O => x_in031_out(1)
    );
\x[46]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in29_in(0),
      I1 => p_1_in30_in(0),
      I2 => p_1_in30_in(1),
      I3 => p_0_in29_in(1),
      I4 => p_0_in29_in(2),
      I5 => p_1_in30_in(2),
      O => x_in031_out(2)
    );
\x[47]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in29_in(2),
      I1 => p_1_in30_in(2),
      I2 => p_0_in29_in(0),
      I3 => p_1_in30_in(0),
      I4 => p_1_in30_in(1),
      I5 => p_0_in29_in(1),
      O => x_in031_out(3)
    );
\x[48]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in33_in(0),
      I1 => p_0_in32_in(0),
      O => x_in034_out(0)
    );
\x[49]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in33_in(0),
      I1 => p_0_in32_in(0),
      I2 => p_0_in32_in(1),
      I3 => p_1_in33_in(1),
      O => x_in034_out(1)
    );
\x[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[6]\,
      I1 => \x_reg_n_0_[9]\,
      O => \x[4]_i_1_n_0\
    );
\x[50]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in32_in(0),
      I1 => p_1_in33_in(0),
      I2 => p_1_in33_in(1),
      I3 => p_0_in32_in(1),
      I4 => p_0_in32_in(2),
      I5 => p_1_in33_in(2),
      O => x_in034_out(2)
    );
\x[51]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in32_in(2),
      I1 => p_1_in33_in(2),
      I2 => p_0_in32_in(0),
      I3 => p_1_in33_in(0),
      I4 => p_1_in33_in(1),
      I5 => p_0_in32_in(1),
      O => x_in034_out(3)
    );
\x[52]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in36_in(0),
      I1 => p_0_in35_in(0),
      O => x_in037_out(0)
    );
\x[53]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in36_in(0),
      I1 => p_0_in35_in(0),
      I2 => p_0_in35_in(1),
      I3 => p_1_in36_in(1),
      O => x_in037_out(1)
    );
\x[54]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in35_in(0),
      I1 => p_1_in36_in(0),
      I2 => p_1_in36_in(1),
      I3 => p_0_in35_in(1),
      I4 => p_0_in35_in(2),
      I5 => p_1_in36_in(2),
      O => x_in037_out(2)
    );
\x[55]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in35_in(2),
      I1 => p_1_in36_in(2),
      I2 => p_0_in35_in(0),
      I3 => p_1_in36_in(0),
      I4 => p_1_in36_in(1),
      I5 => p_0_in35_in(1),
      O => x_in037_out(3)
    );
\x[56]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in39_in(0),
      I1 => p_0_in38_in(0),
      O => x_in040_out(0)
    );
\x[57]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in39_in(0),
      I1 => p_0_in38_in(0),
      I2 => p_0_in38_in(1),
      I3 => p_1_in39_in(1),
      O => x_in040_out(1)
    );
\x[58]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in38_in(0),
      I1 => p_1_in39_in(0),
      I2 => p_1_in39_in(1),
      I3 => p_0_in38_in(1),
      I4 => p_0_in38_in(2),
      I5 => p_1_in39_in(2),
      O => x_in040_out(2)
    );
\x[59]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in38_in(2),
      I1 => p_1_in39_in(2),
      I2 => p_0_in38_in(0),
      I3 => p_1_in39_in(0),
      I4 => p_1_in39_in(1),
      I5 => p_0_in38_in(1),
      O => x_in040_out(3)
    );
\x[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[6]\,
      I1 => \x_reg_n_0_[9]\,
      I2 => \x_reg_n_0_[10]\,
      I3 => \x_reg_n_0_[7]\,
      O => \x[5]_i_1_n_0\
    );
\x[60]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_1_in42_in(0),
      I1 => p_0_in41_in(0),
      O => x_in043_out(0)
    );
\x[61]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => p_1_in42_in(0),
      I1 => p_0_in41_in(0),
      I2 => p_0_in41_in(1),
      I3 => p_1_in42_in(1),
      O => x_in043_out(1)
    );
\x[62]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => p_0_in41_in(0),
      I1 => p_1_in42_in(0),
      I2 => p_1_in42_in(1),
      I3 => p_0_in41_in(1),
      I4 => p_0_in41_in(2),
      I5 => p_1_in42_in(2),
      O => x_in043_out(2)
    );
\x[63]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => p_0_in41_in(2),
      I1 => p_1_in42_in(2),
      I2 => p_0_in41_in(0),
      I3 => p_1_in42_in(0),
      I4 => p_1_in42_in(1),
      I5 => p_0_in41_in(1),
      O => x_in043_out(3)
    );
\x[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880077F077FF880"
    )
        port map (
      I0 => \x_reg_n_0_[9]\,
      I1 => \x_reg_n_0_[6]\,
      I2 => \x_reg_n_0_[7]\,
      I3 => \x_reg_n_0_[10]\,
      I4 => \x_reg_n_0_[11]\,
      I5 => \x_reg_n_0_[8]\,
      O => \x[6]_i_1_n_0\
    );
\x[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE888E8888888"
    )
        port map (
      I0 => \x_reg_n_0_[11]\,
      I1 => \x_reg_n_0_[8]\,
      I2 => \x_reg_n_0_[9]\,
      I3 => \x_reg_n_0_[6]\,
      I4 => \x_reg_n_0_[7]\,
      I5 => \x_reg_n_0_[10]\,
      O => \x[7]_i_1_n_0\
    );
\x[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \x_reg_n_0_[12]\,
      I1 => \x_reg_n_0_[15]\,
      O => \x[8]_i_1_n_0\
    );
\x[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \x_reg_n_0_[12]\,
      I1 => \x_reg_n_0_[15]\,
      I2 => \x_reg_n_0_[16]\,
      I3 => \x_reg_n_0_[13]\,
      O => \x[9]_i_1_n_0\
    );
\x_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(0),
      Q => \x_reg_n_0_[0]\,
      R => '0'
    );
\x_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(10),
      Q => \x_reg_n_0_[10]\,
      R => '0'
    );
\x_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(11),
      Q => \x_reg_n_0_[11]\,
      R => '0'
    );
\x_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(12),
      Q => \x_reg_n_0_[12]\,
      R => '0'
    );
\x_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(13),
      Q => \x_reg_n_0_[13]\,
      R => '0'
    );
\x_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(14),
      Q => \x_reg_n_0_[14]\,
      R => '0'
    );
\x_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(15),
      Q => \x_reg_n_0_[15]\,
      R => '0'
    );
\x_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(16),
      Q => \x_reg_n_0_[16]\,
      R => '0'
    );
\x_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(17),
      Q => \x_reg_n_0_[17]\,
      R => '0'
    );
\x_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(18),
      Q => \x_reg_n_0_[18]\,
      R => '0'
    );
\x_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(19),
      Q => \x_reg_n_0_[19]\,
      R => '0'
    );
\x_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(1),
      Q => \x_reg_n_0_[1]\,
      R => '0'
    );
\x_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(20),
      Q => \x_reg_n_0_[20]\,
      R => '0'
    );
\x_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(21),
      Q => \x_reg_n_0_[21]\,
      R => '0'
    );
\x_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(22),
      Q => \x_reg_n_0_[22]\,
      R => '0'
    );
\x_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(23),
      Q => \x_reg_n_0_[23]\,
      R => '0'
    );
\x_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(24),
      Q => \x_reg_n_0_[24]\,
      R => '0'
    );
\x_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(25),
      Q => \x_reg_n_0_[25]\,
      R => '0'
    );
\x_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(26),
      Q => \x_reg_n_0_[26]\,
      R => '0'
    );
\x_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(27),
      Q => \x_reg_n_0_[27]\,
      R => '0'
    );
\x_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(28),
      Q => \x_reg_n_0_[28]\,
      R => '0'
    );
\x_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(29),
      Q => \x_reg_n_0_[29]\,
      R => '0'
    );
\x_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(2),
      Q => \x_reg_n_0_[2]\,
      R => '0'
    );
\x_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(30),
      Q => \x_reg_n_0_[30]\,
      R => '0'
    );
\x_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(31),
      Q => \x_reg_n_0_[31]\,
      R => '0'
    );
\x_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(32),
      Q => \x_reg_n_0_[32]\,
      R => '0'
    );
\x_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(33),
      Q => \x_reg_n_0_[33]\,
      R => '0'
    );
\x_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(34),
      Q => \x_reg_n_0_[34]\,
      R => '0'
    );
\x_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(35),
      Q => \x_reg_n_0_[35]\,
      R => '0'
    );
\x_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(36),
      Q => \x_reg_n_0_[36]\,
      R => '0'
    );
\x_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(37),
      Q => \x_reg_n_0_[37]\,
      R => '0'
    );
\x_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(38),
      Q => \x_reg_n_0_[38]\,
      R => '0'
    );
\x_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(39),
      Q => \x_reg_n_0_[39]\,
      R => '0'
    );
\x_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(3),
      Q => \x_reg_n_0_[3]\,
      R => '0'
    );
\x_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(40),
      Q => \x_reg_n_0_[40]\,
      R => '0'
    );
\x_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(41),
      Q => \x_reg_n_0_[41]\,
      R => '0'
    );
\x_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(42),
      Q => \x_reg_n_0_[42]\,
      R => '0'
    );
\x_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(43),
      Q => \x_reg_n_0_[43]\,
      R => '0'
    );
\x_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(44),
      Q => \x_reg_n_0_[44]\,
      R => '0'
    );
\x_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(45),
      Q => \x_reg_n_0_[45]\,
      R => '0'
    );
\x_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(46),
      Q => \x_reg_n_0_[46]\,
      R => '0'
    );
\x_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(47),
      Q => \x_reg_n_0_[47]\,
      R => '0'
    );
\x_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(48),
      Q => p_1_in21_in(0),
      R => '0'
    );
\x_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(49),
      Q => p_1_in21_in(1),
      R => '0'
    );
\x_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(4),
      Q => \x_reg_n_0_[4]\,
      R => '0'
    );
\x_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(50),
      Q => p_1_in21_in(2),
      R => '0'
    );
\x_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(51),
      Q => p_0_in20_in(0),
      R => '0'
    );
\x_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(52),
      Q => p_0_in20_in(1),
      R => '0'
    );
\x_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(53),
      Q => p_0_in20_in(2),
      R => '0'
    );
\x_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(54),
      Q => p_1_in24_in(0),
      R => '0'
    );
\x_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(55),
      Q => p_1_in24_in(1),
      R => '0'
    );
\x_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(56),
      Q => p_1_in24_in(2),
      R => '0'
    );
\x_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(57),
      Q => p_0_in23_in(0),
      R => '0'
    );
\x_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(58),
      Q => p_0_in23_in(1),
      R => '0'
    );
\x_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(59),
      Q => p_0_in23_in(2),
      R => '0'
    );
\x_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(5),
      Q => \x_reg_n_0_[5]\,
      R => '0'
    );
\x_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(60),
      Q => p_1_in27_in(0),
      R => '0'
    );
\x_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(61),
      Q => p_1_in27_in(1),
      R => '0'
    );
\x_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(62),
      Q => p_1_in27_in(2),
      R => '0'
    );
\x_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(63),
      Q => p_0_in26_in(0),
      R => '0'
    );
\x_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(64),
      Q => p_0_in26_in(1),
      R => '0'
    );
\x_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(65),
      Q => p_0_in26_in(2),
      R => '0'
    );
\x_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(66),
      Q => p_1_in30_in(0),
      R => '0'
    );
\x_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(67),
      Q => p_1_in30_in(1),
      R => '0'
    );
\x_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(68),
      Q => p_1_in30_in(2),
      R => '0'
    );
\x_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(69),
      Q => p_0_in29_in(0),
      R => '0'
    );
\x_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(6),
      Q => \x_reg_n_0_[6]\,
      R => '0'
    );
\x_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(70),
      Q => p_0_in29_in(1),
      R => '0'
    );
\x_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(71),
      Q => p_0_in29_in(2),
      R => '0'
    );
\x_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(72),
      Q => p_1_in33_in(0),
      R => '0'
    );
\x_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(73),
      Q => p_1_in33_in(1),
      R => '0'
    );
\x_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(74),
      Q => p_1_in33_in(2),
      R => '0'
    );
\x_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(75),
      Q => p_0_in32_in(0),
      R => '0'
    );
\x_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(76),
      Q => p_0_in32_in(1),
      R => '0'
    );
\x_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(77),
      Q => p_0_in32_in(2),
      R => '0'
    );
\x_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(78),
      Q => p_1_in36_in(0),
      R => '0'
    );
\x_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(79),
      Q => p_1_in36_in(1),
      R => '0'
    );
\x_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(7),
      Q => \x_reg_n_0_[7]\,
      R => '0'
    );
\x_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(80),
      Q => p_1_in36_in(2),
      R => '0'
    );
\x_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(81),
      Q => p_0_in35_in(0),
      R => '0'
    );
\x_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(82),
      Q => p_0_in35_in(1),
      R => '0'
    );
\x_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(83),
      Q => p_0_in35_in(2),
      R => '0'
    );
\x_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(84),
      Q => p_1_in39_in(0),
      R => '0'
    );
\x_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(85),
      Q => p_1_in39_in(1),
      R => '0'
    );
\x_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(86),
      Q => p_1_in39_in(2),
      R => '0'
    );
\x_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(87),
      Q => p_0_in38_in(0),
      R => '0'
    );
\x_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(88),
      Q => p_0_in38_in(1),
      R => '0'
    );
\x_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(89),
      Q => p_0_in38_in(2),
      R => '0'
    );
\x_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(8),
      Q => \x_reg_n_0_[8]\,
      R => '0'
    );
\x_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(90),
      Q => p_1_in42_in(0),
      R => '0'
    );
\x_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(91),
      Q => p_1_in42_in(1),
      R => '0'
    );
\x_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(92),
      Q => p_1_in42_in(2),
      R => '0'
    );
\x_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(93),
      Q => p_0_in41_in(0),
      R => '0'
    );
\x_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(94),
      Q => p_0_in41_in(1),
      R => '0'
    );
\x_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(95),
      Q => p_0_in41_in(2),
      R => '0'
    );
\x_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => D(9),
      Q => \x_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_axi_bram_ctrl is
  port (
    s_axi_1_bvalid : out STD_LOGIC;
    s_axi_1_rvalid : out STD_LOGIC;
    s_axi_1_rlast : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \save_init_bram_addr_ld_reg[3]\ : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_en_a : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end TDCsystem_AXITDC_0_0_axi_bram_ctrl;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_axi_bram_ctrl is
begin
\gext_inst.abcv4_0_ext_inst\: entity work.TDCsystem_AXITDC_0_0_axi_bram_ctrl_top
     port map (
      BRAM_Addr_A(11 downto 0) => Q(11 downto 0),
      bram_en_a => bram_en_a,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_1_bvalid => s_axi_1_bvalid,
      s_axi_1_rlast => s_axi_1_rlast,
      s_axi_1_rvalid => s_axi_1_rvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(11 downto 0) => s_axi_araddr(11 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(11 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld_reg[3]\ => \save_init_bram_addr_ld_reg[3]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_axi_gpio is
  port (
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
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of TDCsystem_AXITDC_0_0_axi_gpio : entity is 1;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of TDCsystem_AXITDC_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of TDCsystem_AXITDC_0_0_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of TDCsystem_AXITDC_0_0_axi_gpio : entity is 1;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of TDCsystem_AXITDC_0_0_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of TDCsystem_AXITDC_0_0_axi_gpio : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of TDCsystem_AXITDC_0_0_axi_gpio : entity is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of TDCsystem_AXITDC_0_0_axi_gpio : entity is 2;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of TDCsystem_AXITDC_0_0_axi_gpio : entity is 2;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of TDCsystem_AXITDC_0_0_axi_gpio : entity is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of TDCsystem_AXITDC_0_0_axi_gpio : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of TDCsystem_AXITDC_0_0_axi_gpio : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of TDCsystem_AXITDC_0_0_axi_gpio : entity is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of TDCsystem_AXITDC_0_0_axi_gpio : entity is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of TDCsystem_AXITDC_0_0_axi_gpio : entity is -1;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TDCsystem_AXITDC_0_0_axi_gpio : entity is "yes";
  attribute ip_group : string;
  attribute ip_group of TDCsystem_AXITDC_0_0_axi_gpio : entity is "LOGICORE";
end TDCsystem_AXITDC_0_0_axi_gpio;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_axi_gpio is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_12 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_8 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal GPIO_xferAck_i : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal bus2ip_cs : STD_LOGIC;
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal gpio_xferAck_Reg : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_data_i_D1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i_D1 : STD_LOGIC;
  signal ip2bus_wrack_i : STD_LOGIC;
  signal ip2bus_wrack_i_D1 : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 30 to 31 );
  signal reg3 : STD_LOGIC_VECTOR ( 30 to 31 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute sigis : string;
  attribute sigis of ip2intc_irpt : signal is "INTR_LEVEL_HIGH";
  attribute max_fanout : string;
  attribute max_fanout of s_axi_aclk : signal is "10000";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute max_fanout of s_axi_aresetn : signal is "10000";
  attribute sigis of s_axi_aresetn : signal is "Rst";
begin
  ip2intc_irpt <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(30);
  s_axi_rdata(30) <= \^s_axi_rdata\(30);
  s_axi_rdata(29) <= \^s_axi_rdata\(30);
  s_axi_rdata(28) <= \^s_axi_rdata\(30);
  s_axi_rdata(27) <= \^s_axi_rdata\(30);
  s_axi_rdata(26) <= \^s_axi_rdata\(30);
  s_axi_rdata(25) <= \^s_axi_rdata\(30);
  s_axi_rdata(24) <= \^s_axi_rdata\(30);
  s_axi_rdata(23) <= \^s_axi_rdata\(30);
  s_axi_rdata(22) <= \^s_axi_rdata\(30);
  s_axi_rdata(21) <= \^s_axi_rdata\(30);
  s_axi_rdata(20) <= \^s_axi_rdata\(30);
  s_axi_rdata(19) <= \^s_axi_rdata\(30);
  s_axi_rdata(18) <= \^s_axi_rdata\(30);
  s_axi_rdata(17) <= \^s_axi_rdata\(30);
  s_axi_rdata(16) <= \^s_axi_rdata\(30);
  s_axi_rdata(15) <= \^s_axi_rdata\(30);
  s_axi_rdata(14) <= \^s_axi_rdata\(30);
  s_axi_rdata(13) <= \^s_axi_rdata\(30);
  s_axi_rdata(12) <= \^s_axi_rdata\(30);
  s_axi_rdata(11) <= \^s_axi_rdata\(30);
  s_axi_rdata(10) <= \^s_axi_rdata\(30);
  s_axi_rdata(9) <= \^s_axi_rdata\(30);
  s_axi_rdata(8) <= \^s_axi_rdata\(30);
  s_axi_rdata(7) <= \^s_axi_rdata\(30);
  s_axi_rdata(6) <= \^s_axi_rdata\(30);
  s_axi_rdata(5) <= \^s_axi_rdata\(30);
  s_axi_rdata(4) <= \^s_axi_rdata\(30);
  s_axi_rdata(3) <= \^s_axi_rdata\(30);
  s_axi_rdata(2) <= \^s_axi_rdata\(30);
  s_axi_rdata(1 downto 0) <= \^s_axi_rdata\(1 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.TDCsystem_AXITDC_0_0_axi_lite_ipif
     port map (
      D(2) => ip2bus_data(0),
      D(1) => ip2bus_data(30),
      D(0) => ip2bus_data(31),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ => AXI_LITE_IPIF_I_n_12,
      \Dual.gpio2_Data_Out_reg[0]\ => AXI_LITE_IPIF_I_n_9,
      \Dual.gpio2_OE_reg[0]\ => AXI_LITE_IPIF_I_n_8,
      GPIO_xferAck_i => GPIO_xferAck_i,
      Q(2) => bus2ip_addr(0),
      Q(1) => bus2ip_addr(5),
      Q(0) => bus2ip_addr(6),
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      \ip2bus_data_i_D1_reg[0]\(2) => ip2bus_data_i_D1(0),
      \ip2bus_data_i_D1_reg[0]\(1) => ip2bus_data_i_D1(30),
      \ip2bus_data_i_D1_reg[0]\(0) => ip2bus_data_i_D1(31),
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      reg1(1) => reg1(30),
      reg1(0) => reg1(31),
      reg3(1) => reg3(30),
      reg3(0) => reg3(31),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(2) => s_axi_araddr(8),
      s_axi_araddr(1 downto 0) => s_axi_araddr(3 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(2) => s_axi_awaddr(8),
      s_axi_awaddr(1 downto 0) => s_axi_awaddr(3 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(2) => \^s_axi_rdata\(30),
      s_axi_rdata(1 downto 0) => \^s_axi_rdata\(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wready => \^s_axi_wready\,
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
gpio_core_1: entity work.TDCsystem_AXITDC_0_0_GPIO_Core
     port map (
      GPIO_xferAck_i => GPIO_xferAck_i,
      Q(2) => bus2ip_addr(0),
      Q(1) => bus2ip_addr(5),
      Q(0) => bus2ip_addr(6),
      bus2ip_cs => bus2ip_cs,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      bus2ip_rnw_i_reg => AXI_LITE_IPIF_I_n_12,
      gpio2_io_o(1 downto 0) => gpio2_io_o(1 downto 0),
      gpio2_io_t(1 downto 0) => gpio2_io_t(1 downto 0),
      gpio_io_i(1 downto 0) => gpio_io_i(1 downto 0),
      gpio_io_o(1 downto 0) => gpio_io_o(1 downto 0),
      gpio_io_t(1 downto 0) => gpio_io_t(1 downto 0),
      gpio_xferAck_Reg => gpio_xferAck_Reg,
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_wrack_i => ip2bus_wrack_i,
      reg1(1) => reg1(30),
      reg1(0) => reg1(31),
      reg3(1) => reg3(30),
      reg3(0) => reg3(31),
      rst_reg => AXI_LITE_IPIF_I_n_9,
      rst_reg_0 => AXI_LITE_IPIF_I_n_8,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0)
    );
\ip2bus_data_i_D1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(0),
      Q => ip2bus_data_i_D1(0),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(30),
      Q => ip2bus_data_i_D1(30),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(31),
      Q => ip2bus_data_i_D1(31),
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i,
      Q => ip2bus_rdack_i_D1,
      R => bus2ip_reset
    );
ip2bus_wrack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_i,
      Q => ip2bus_wrack_i_D1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clka : in STD_LOGIC;
    clkb : in STD_LOGIC;
    ena : in STD_LOGIC;
    enb : in STD_LOGIC;
    rsta : in STD_LOGIC;
    rstb : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    web : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen\: entity work.TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_blk_mem_gen_top
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      clkb => clkb,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(63 downto 0) => dinb(63 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(3 downto 0) => wea(3 downto 0),
      web(7 downto 0) => web(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_axi_bram_ctrl_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC;
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 13 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC;
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    bram_rst_a : out STD_LOGIC;
    bram_clk_a : out STD_LOGIC;
    bram_en_a : out STD_LOGIC;
    bram_we_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    bram_addr_a : out STD_LOGIC_VECTOR ( 13 downto 0 );
    bram_wrdata_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    bram_rddata_a : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TDCsystem_AXITDC_0_0_axi_bram_ctrl_0 : entity is "axi_bram_ctrl_0,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TDCsystem_AXITDC_0_0_axi_bram_ctrl_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of TDCsystem_AXITDC_0_0_axi_bram_ctrl_0 : entity is "axi_bram_ctrl,Vivado 2018.2";
end TDCsystem_AXITDC_0_0_axi_bram_ctrl_0;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_axi_bram_ctrl_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^bram_addr_a\ : STD_LOGIC_VECTOR ( 13 downto 2 );
  signal \^s_axi_aclk\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of bram_clk_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_info of bram_en_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of bram_rst_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of bram_rst_a : signal is "XIL_INTERFACENAME BRAM_PORTA, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of bram_addr_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of bram_rddata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of bram_we_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of bram_wrdata_a : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute x_interface_info of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute x_interface_info of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute x_interface_info of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute x_interface_info of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute x_interface_info of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_info of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute x_interface_info of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute x_interface_info of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute x_interface_parameter of s_axi_awid : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 14, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute x_interface_info of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute x_interface_info of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute x_interface_info of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  \^s_axi_aclk\ <= s_axi_aclk;
  bram_addr_a(13 downto 2) <= \^bram_addr_a\(13 downto 2);
  bram_addr_a(1) <= \<const0>\;
  bram_addr_a(0) <= \<const0>\;
  bram_clk_a <= \^s_axi_aclk\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.TDCsystem_AXITDC_0_0_axi_bram_ctrl
     port map (
      Q(11 downto 0) => \^bram_addr_a\(13 downto 2),
      bram_en_a => bram_en_a,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_1_bvalid => s_axi_bvalid,
      s_axi_1_rlast => s_axi_rlast,
      s_axi_1_rvalid => s_axi_rvalid,
      s_axi_aclk => \^s_axi_aclk\,
      s_axi_araddr(11 downto 0) => s_axi_araddr(13 downto 2),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(11 downto 0) => s_axi_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(11 downto 0) => s_axi_awaddr(13 downto 2),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awid(11 downto 0) => s_axi_awid(11 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(11 downto 0) => s_axi_bid(11 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_rid(11 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      \save_init_bram_addr_ld_reg[3]\ => bram_rst_a
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_axi_gpio_0 is
  port (
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
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TDCsystem_AXITDC_0_0_axi_gpio_0 : entity is "axi_gpio_0,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TDCsystem_AXITDC_0_0_axi_gpio_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of TDCsystem_AXITDC_0_0_axi_gpio_0 : entity is "axi_gpio,Vivado 2018.2";
end TDCsystem_AXITDC_0_0_axi_gpio_0;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_axi_gpio_0 is
  signal NLW_U0_ip2intc_irpt_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of U0 : label is 1;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of U0 : label is 0;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of U0 : label is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of U0 : label is 1;
  attribute C_DOUT_DEFAULT : integer;
  attribute C_DOUT_DEFAULT of U0 : label is 0;
  attribute C_DOUT_DEFAULT_2 : integer;
  attribute C_DOUT_DEFAULT_2 of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of U0 : label is 2;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of U0 : label is 2;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of U0 : label is 0;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRI_DEFAULT : integer;
  attribute C_TRI_DEFAULT of U0 : label is -1;
  attribute C_TRI_DEFAULT_2 : integer;
  attribute C_TRI_DEFAULT_2 of U0 : label is -1;
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute x_interface_info : string;
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of gpio2_io_o : signal is "xilinx.com:interface:gpio:1.0 GPIO2 TRI_O";
  attribute x_interface_parameter of gpio2_io_o : signal is "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE";
  attribute x_interface_info of gpio_io_i : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_I";
  attribute x_interface_parameter of gpio_io_i : signal is "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
U0: entity work.TDCsystem_AXITDC_0_0_axi_gpio
     port map (
      gpio2_io_i(1 downto 0) => B"00",
      gpio2_io_o(1 downto 0) => gpio2_io_o(1 downto 0),
      gpio2_io_t(1 downto 0) => NLW_U0_gpio2_io_t_UNCONNECTED(1 downto 0),
      gpio_io_i(1 downto 0) => gpio_io_i(1 downto 0),
      gpio_io_o(1 downto 0) => NLW_U0_gpio_io_o_UNCONNECTED(1 downto 0),
      gpio_io_t(1 downto 0) => NLW_U0_gpio_io_t_UNCONNECTED(1 downto 0),
      ip2intc_irpt => NLW_U0_ip2intc_irpt_UNCONNECTED,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_encoder is
  port (
    validOut : out STD_LOGIC;
    \data_e_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    validIn : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 191 downto 0 )
  );
end TDCsystem_AXITDC_0_0_encoder;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_encoder is
  signal Adder_tree_n_0 : STD_LOGIC;
  signal LUTout : STD_LOGIC_VECTOR ( 95 downto 0 );
  signal sum : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of \LUTs[0].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[0].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[0].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[10].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[10].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[10].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[11].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[11].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[11].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[12].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[12].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[12].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[13].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[13].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[13].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[14].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[14].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[14].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[15].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[15].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[15].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[16].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[16].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[16].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[17].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[17].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[17].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[18].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[18].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[18].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[19].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[19].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[19].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[1].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[1].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[1].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[20].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[20].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[20].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[21].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[21].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[21].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[22].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[22].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[22].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[23].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[23].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[23].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[24].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[24].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[24].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[25].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[25].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[25].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[26].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[26].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[26].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[27].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[27].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[27].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[28].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[28].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[28].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[29].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[29].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[29].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[2].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[2].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[2].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[30].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[30].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[30].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[31].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[31].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[31].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[3].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[3].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[3].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[4].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[4].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[4].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[5].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[5].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[5].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[6].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[6].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[6].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[7].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[7].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[7].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[8].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[8].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[8].LUT6_inst2\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[9].LUT6_inst0\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[9].LUT6_inst1\ : label is "PRIMITIVE";
  attribute box_type of \LUTs[9].LUT6_inst2\ : label is "PRIMITIVE";
begin
Adder_tree: entity work.TDCsystem_AXITDC_0_0_adderTreeLegacy
     port map (
      D(95 downto 0) => LUTout(95 downto 0),
      clk => clk,
      sum(7 downto 0) => sum(7 downto 0),
      validIn => validIn,
      validOut_reg => Adder_tree_n_0
    );
\LUTs[0].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => LUTout(0)
    );
\LUTs[0].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => LUTout(1)
    );
\LUTs[0].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      I5 => Q(5),
      O => LUTout(2)
    );
\LUTs[10].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(60),
      I1 => Q(61),
      I2 => Q(62),
      I3 => Q(63),
      I4 => Q(64),
      I5 => Q(65),
      O => LUTout(30)
    );
\LUTs[10].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(60),
      I1 => Q(61),
      I2 => Q(62),
      I3 => Q(63),
      I4 => Q(64),
      I5 => Q(65),
      O => LUTout(31)
    );
\LUTs[10].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(60),
      I1 => Q(61),
      I2 => Q(62),
      I3 => Q(63),
      I4 => Q(64),
      I5 => Q(65),
      O => LUTout(32)
    );
\LUTs[11].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(66),
      I1 => Q(67),
      I2 => Q(68),
      I3 => Q(69),
      I4 => Q(70),
      I5 => Q(71),
      O => LUTout(33)
    );
\LUTs[11].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(66),
      I1 => Q(67),
      I2 => Q(68),
      I3 => Q(69),
      I4 => Q(70),
      I5 => Q(71),
      O => LUTout(34)
    );
\LUTs[11].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(66),
      I1 => Q(67),
      I2 => Q(68),
      I3 => Q(69),
      I4 => Q(70),
      I5 => Q(71),
      O => LUTout(35)
    );
\LUTs[12].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(72),
      I1 => Q(73),
      I2 => Q(74),
      I3 => Q(75),
      I4 => Q(76),
      I5 => Q(77),
      O => LUTout(36)
    );
\LUTs[12].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(72),
      I1 => Q(73),
      I2 => Q(74),
      I3 => Q(75),
      I4 => Q(76),
      I5 => Q(77),
      O => LUTout(37)
    );
\LUTs[12].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(72),
      I1 => Q(73),
      I2 => Q(74),
      I3 => Q(75),
      I4 => Q(76),
      I5 => Q(77),
      O => LUTout(38)
    );
\LUTs[13].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(78),
      I1 => Q(79),
      I2 => Q(80),
      I3 => Q(81),
      I4 => Q(82),
      I5 => Q(83),
      O => LUTout(39)
    );
\LUTs[13].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(78),
      I1 => Q(79),
      I2 => Q(80),
      I3 => Q(81),
      I4 => Q(82),
      I5 => Q(83),
      O => LUTout(40)
    );
\LUTs[13].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(78),
      I1 => Q(79),
      I2 => Q(80),
      I3 => Q(81),
      I4 => Q(82),
      I5 => Q(83),
      O => LUTout(41)
    );
\LUTs[14].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(84),
      I1 => Q(85),
      I2 => Q(86),
      I3 => Q(87),
      I4 => Q(88),
      I5 => Q(89),
      O => LUTout(42)
    );
\LUTs[14].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(84),
      I1 => Q(85),
      I2 => Q(86),
      I3 => Q(87),
      I4 => Q(88),
      I5 => Q(89),
      O => LUTout(43)
    );
\LUTs[14].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(84),
      I1 => Q(85),
      I2 => Q(86),
      I3 => Q(87),
      I4 => Q(88),
      I5 => Q(89),
      O => LUTout(44)
    );
\LUTs[15].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(90),
      I1 => Q(91),
      I2 => Q(92),
      I3 => Q(93),
      I4 => Q(94),
      I5 => Q(95),
      O => LUTout(45)
    );
\LUTs[15].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(90),
      I1 => Q(91),
      I2 => Q(92),
      I3 => Q(93),
      I4 => Q(94),
      I5 => Q(95),
      O => LUTout(46)
    );
\LUTs[15].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(90),
      I1 => Q(91),
      I2 => Q(92),
      I3 => Q(93),
      I4 => Q(94),
      I5 => Q(95),
      O => LUTout(47)
    );
\LUTs[16].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(96),
      I1 => Q(97),
      I2 => Q(98),
      I3 => Q(99),
      I4 => Q(100),
      I5 => Q(101),
      O => LUTout(48)
    );
\LUTs[16].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(96),
      I1 => Q(97),
      I2 => Q(98),
      I3 => Q(99),
      I4 => Q(100),
      I5 => Q(101),
      O => LUTout(49)
    );
\LUTs[16].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(96),
      I1 => Q(97),
      I2 => Q(98),
      I3 => Q(99),
      I4 => Q(100),
      I5 => Q(101),
      O => LUTout(50)
    );
\LUTs[17].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(102),
      I1 => Q(103),
      I2 => Q(104),
      I3 => Q(105),
      I4 => Q(106),
      I5 => Q(107),
      O => LUTout(51)
    );
\LUTs[17].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(102),
      I1 => Q(103),
      I2 => Q(104),
      I3 => Q(105),
      I4 => Q(106),
      I5 => Q(107),
      O => LUTout(52)
    );
\LUTs[17].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(102),
      I1 => Q(103),
      I2 => Q(104),
      I3 => Q(105),
      I4 => Q(106),
      I5 => Q(107),
      O => LUTout(53)
    );
\LUTs[18].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(108),
      I1 => Q(109),
      I2 => Q(110),
      I3 => Q(111),
      I4 => Q(112),
      I5 => Q(113),
      O => LUTout(54)
    );
\LUTs[18].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(108),
      I1 => Q(109),
      I2 => Q(110),
      I3 => Q(111),
      I4 => Q(112),
      I5 => Q(113),
      O => LUTout(55)
    );
\LUTs[18].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(108),
      I1 => Q(109),
      I2 => Q(110),
      I3 => Q(111),
      I4 => Q(112),
      I5 => Q(113),
      O => LUTout(56)
    );
\LUTs[19].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(114),
      I1 => Q(115),
      I2 => Q(116),
      I3 => Q(117),
      I4 => Q(118),
      I5 => Q(119),
      O => LUTout(57)
    );
\LUTs[19].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(114),
      I1 => Q(115),
      I2 => Q(116),
      I3 => Q(117),
      I4 => Q(118),
      I5 => Q(119),
      O => LUTout(58)
    );
\LUTs[19].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(114),
      I1 => Q(115),
      I2 => Q(116),
      I3 => Q(117),
      I4 => Q(118),
      I5 => Q(119),
      O => LUTout(59)
    );
\LUTs[1].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(8),
      I3 => Q(9),
      I4 => Q(10),
      I5 => Q(11),
      O => LUTout(3)
    );
\LUTs[1].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(8),
      I3 => Q(9),
      I4 => Q(10),
      I5 => Q(11),
      O => LUTout(4)
    );
\LUTs[1].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(6),
      I1 => Q(7),
      I2 => Q(8),
      I3 => Q(9),
      I4 => Q(10),
      I5 => Q(11),
      O => LUTout(5)
    );
\LUTs[20].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(120),
      I1 => Q(121),
      I2 => Q(122),
      I3 => Q(123),
      I4 => Q(124),
      I5 => Q(125),
      O => LUTout(60)
    );
\LUTs[20].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(120),
      I1 => Q(121),
      I2 => Q(122),
      I3 => Q(123),
      I4 => Q(124),
      I5 => Q(125),
      O => LUTout(61)
    );
\LUTs[20].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(120),
      I1 => Q(121),
      I2 => Q(122),
      I3 => Q(123),
      I4 => Q(124),
      I5 => Q(125),
      O => LUTout(62)
    );
\LUTs[21].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(126),
      I1 => Q(127),
      I2 => Q(128),
      I3 => Q(129),
      I4 => Q(130),
      I5 => Q(131),
      O => LUTout(63)
    );
\LUTs[21].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(126),
      I1 => Q(127),
      I2 => Q(128),
      I3 => Q(129),
      I4 => Q(130),
      I5 => Q(131),
      O => LUTout(64)
    );
\LUTs[21].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(126),
      I1 => Q(127),
      I2 => Q(128),
      I3 => Q(129),
      I4 => Q(130),
      I5 => Q(131),
      O => LUTout(65)
    );
\LUTs[22].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(132),
      I1 => Q(133),
      I2 => Q(134),
      I3 => Q(135),
      I4 => Q(136),
      I5 => Q(137),
      O => LUTout(66)
    );
\LUTs[22].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(132),
      I1 => Q(133),
      I2 => Q(134),
      I3 => Q(135),
      I4 => Q(136),
      I5 => Q(137),
      O => LUTout(67)
    );
\LUTs[22].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(132),
      I1 => Q(133),
      I2 => Q(134),
      I3 => Q(135),
      I4 => Q(136),
      I5 => Q(137),
      O => LUTout(68)
    );
\LUTs[23].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(138),
      I1 => Q(139),
      I2 => Q(140),
      I3 => Q(141),
      I4 => Q(142),
      I5 => Q(143),
      O => LUTout(69)
    );
\LUTs[23].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(138),
      I1 => Q(139),
      I2 => Q(140),
      I3 => Q(141),
      I4 => Q(142),
      I5 => Q(143),
      O => LUTout(70)
    );
\LUTs[23].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(138),
      I1 => Q(139),
      I2 => Q(140),
      I3 => Q(141),
      I4 => Q(142),
      I5 => Q(143),
      O => LUTout(71)
    );
\LUTs[24].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(144),
      I1 => Q(145),
      I2 => Q(146),
      I3 => Q(147),
      I4 => Q(148),
      I5 => Q(149),
      O => LUTout(72)
    );
\LUTs[24].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(144),
      I1 => Q(145),
      I2 => Q(146),
      I3 => Q(147),
      I4 => Q(148),
      I5 => Q(149),
      O => LUTout(73)
    );
\LUTs[24].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(144),
      I1 => Q(145),
      I2 => Q(146),
      I3 => Q(147),
      I4 => Q(148),
      I5 => Q(149),
      O => LUTout(74)
    );
\LUTs[25].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(150),
      I1 => Q(151),
      I2 => Q(152),
      I3 => Q(153),
      I4 => Q(154),
      I5 => Q(155),
      O => LUTout(75)
    );
\LUTs[25].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(150),
      I1 => Q(151),
      I2 => Q(152),
      I3 => Q(153),
      I4 => Q(154),
      I5 => Q(155),
      O => LUTout(76)
    );
\LUTs[25].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(150),
      I1 => Q(151),
      I2 => Q(152),
      I3 => Q(153),
      I4 => Q(154),
      I5 => Q(155),
      O => LUTout(77)
    );
\LUTs[26].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(156),
      I1 => Q(157),
      I2 => Q(158),
      I3 => Q(159),
      I4 => Q(160),
      I5 => Q(161),
      O => LUTout(78)
    );
\LUTs[26].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(156),
      I1 => Q(157),
      I2 => Q(158),
      I3 => Q(159),
      I4 => Q(160),
      I5 => Q(161),
      O => LUTout(79)
    );
\LUTs[26].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(156),
      I1 => Q(157),
      I2 => Q(158),
      I3 => Q(159),
      I4 => Q(160),
      I5 => Q(161),
      O => LUTout(80)
    );
\LUTs[27].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(162),
      I1 => Q(163),
      I2 => Q(164),
      I3 => Q(165),
      I4 => Q(166),
      I5 => Q(167),
      O => LUTout(81)
    );
\LUTs[27].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(162),
      I1 => Q(163),
      I2 => Q(164),
      I3 => Q(165),
      I4 => Q(166),
      I5 => Q(167),
      O => LUTout(82)
    );
\LUTs[27].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(162),
      I1 => Q(163),
      I2 => Q(164),
      I3 => Q(165),
      I4 => Q(166),
      I5 => Q(167),
      O => LUTout(83)
    );
\LUTs[28].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(168),
      I1 => Q(169),
      I2 => Q(170),
      I3 => Q(171),
      I4 => Q(172),
      I5 => Q(173),
      O => LUTout(84)
    );
\LUTs[28].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(168),
      I1 => Q(169),
      I2 => Q(170),
      I3 => Q(171),
      I4 => Q(172),
      I5 => Q(173),
      O => LUTout(85)
    );
\LUTs[28].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(168),
      I1 => Q(169),
      I2 => Q(170),
      I3 => Q(171),
      I4 => Q(172),
      I5 => Q(173),
      O => LUTout(86)
    );
\LUTs[29].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(174),
      I1 => Q(175),
      I2 => Q(176),
      I3 => Q(177),
      I4 => Q(178),
      I5 => Q(179),
      O => LUTout(87)
    );
\LUTs[29].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(174),
      I1 => Q(175),
      I2 => Q(176),
      I3 => Q(177),
      I4 => Q(178),
      I5 => Q(179),
      O => LUTout(88)
    );
\LUTs[29].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(174),
      I1 => Q(175),
      I2 => Q(176),
      I3 => Q(177),
      I4 => Q(178),
      I5 => Q(179),
      O => LUTout(89)
    );
\LUTs[2].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(15),
      I4 => Q(16),
      I5 => Q(17),
      O => LUTout(6)
    );
\LUTs[2].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(15),
      I4 => Q(16),
      I5 => Q(17),
      O => LUTout(7)
    );
\LUTs[2].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(12),
      I1 => Q(13),
      I2 => Q(14),
      I3 => Q(15),
      I4 => Q(16),
      I5 => Q(17),
      O => LUTout(8)
    );
\LUTs[30].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(180),
      I1 => Q(181),
      I2 => Q(182),
      I3 => Q(183),
      I4 => Q(184),
      I5 => Q(185),
      O => LUTout(90)
    );
\LUTs[30].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(180),
      I1 => Q(181),
      I2 => Q(182),
      I3 => Q(183),
      I4 => Q(184),
      I5 => Q(185),
      O => LUTout(91)
    );
\LUTs[30].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(180),
      I1 => Q(181),
      I2 => Q(182),
      I3 => Q(183),
      I4 => Q(184),
      I5 => Q(185),
      O => LUTout(92)
    );
\LUTs[31].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(186),
      I1 => Q(187),
      I2 => Q(188),
      I3 => Q(189),
      I4 => Q(190),
      I5 => Q(191),
      O => LUTout(93)
    );
\LUTs[31].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(186),
      I1 => Q(187),
      I2 => Q(188),
      I3 => Q(189),
      I4 => Q(190),
      I5 => Q(191),
      O => LUTout(94)
    );
\LUTs[31].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(186),
      I1 => Q(187),
      I2 => Q(188),
      I3 => Q(189),
      I4 => Q(190),
      I5 => Q(191),
      O => LUTout(95)
    );
\LUTs[3].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      I2 => Q(20),
      I3 => Q(21),
      I4 => Q(22),
      I5 => Q(23),
      O => LUTout(9)
    );
\LUTs[3].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      I2 => Q(20),
      I3 => Q(21),
      I4 => Q(22),
      I5 => Q(23),
      O => LUTout(10)
    );
\LUTs[3].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(18),
      I1 => Q(19),
      I2 => Q(20),
      I3 => Q(21),
      I4 => Q(22),
      I5 => Q(23),
      O => LUTout(11)
    );
\LUTs[4].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      I2 => Q(26),
      I3 => Q(27),
      I4 => Q(28),
      I5 => Q(29),
      O => LUTout(12)
    );
\LUTs[4].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      I2 => Q(26),
      I3 => Q(27),
      I4 => Q(28),
      I5 => Q(29),
      O => LUTout(13)
    );
\LUTs[4].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(24),
      I1 => Q(25),
      I2 => Q(26),
      I3 => Q(27),
      I4 => Q(28),
      I5 => Q(29),
      O => LUTout(14)
    );
\LUTs[5].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      I2 => Q(32),
      I3 => Q(33),
      I4 => Q(34),
      I5 => Q(35),
      O => LUTout(15)
    );
\LUTs[5].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      I2 => Q(32),
      I3 => Q(33),
      I4 => Q(34),
      I5 => Q(35),
      O => LUTout(16)
    );
\LUTs[5].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(30),
      I1 => Q(31),
      I2 => Q(32),
      I3 => Q(33),
      I4 => Q(34),
      I5 => Q(35),
      O => LUTout(17)
    );
\LUTs[6].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(36),
      I1 => Q(37),
      I2 => Q(38),
      I3 => Q(39),
      I4 => Q(40),
      I5 => Q(41),
      O => LUTout(18)
    );
\LUTs[6].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(36),
      I1 => Q(37),
      I2 => Q(38),
      I3 => Q(39),
      I4 => Q(40),
      I5 => Q(41),
      O => LUTout(19)
    );
\LUTs[6].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(36),
      I1 => Q(37),
      I2 => Q(38),
      I3 => Q(39),
      I4 => Q(40),
      I5 => Q(41),
      O => LUTout(20)
    );
\LUTs[7].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(42),
      I1 => Q(43),
      I2 => Q(44),
      I3 => Q(45),
      I4 => Q(46),
      I5 => Q(47),
      O => LUTout(21)
    );
\LUTs[7].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(42),
      I1 => Q(43),
      I2 => Q(44),
      I3 => Q(45),
      I4 => Q(46),
      I5 => Q(47),
      O => LUTout(22)
    );
\LUTs[7].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(42),
      I1 => Q(43),
      I2 => Q(44),
      I3 => Q(45),
      I4 => Q(46),
      I5 => Q(47),
      O => LUTout(23)
    );
\LUTs[8].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(48),
      I1 => Q(49),
      I2 => Q(50),
      I3 => Q(51),
      I4 => Q(52),
      I5 => Q(53),
      O => LUTout(24)
    );
\LUTs[8].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(48),
      I1 => Q(49),
      I2 => Q(50),
      I3 => Q(51),
      I4 => Q(52),
      I5 => Q(53),
      O => LUTout(25)
    );
\LUTs[8].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(48),
      I1 => Q(49),
      I2 => Q(50),
      I3 => Q(51),
      I4 => Q(52),
      I5 => Q(53),
      O => LUTout(26)
    );
\LUTs[9].LUT6_inst0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => Q(54),
      I1 => Q(55),
      I2 => Q(56),
      I3 => Q(57),
      I4 => Q(58),
      I5 => Q(59),
      O => LUTout(27)
    );
\LUTs[9].LUT6_inst1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8117177E177E7EE8"
    )
        port map (
      I0 => Q(54),
      I1 => Q(55),
      I2 => Q(56),
      I3 => Q(57),
      I4 => Q(58),
      I5 => Q(59),
      O => LUTout(28)
    );
\LUTs[9].LUT6_inst2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEE8E880E8808000"
    )
        port map (
      I0 => Q(54),
      I1 => Q(55),
      I2 => Q(56),
      I3 => Q(57),
      I4 => Q(58),
      I5 => Q(59),
      O => LUTout(29)
    );
\ones_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(0),
      Q => \data_e_reg[7]\(0),
      R => '0'
    );
\ones_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(1),
      Q => \data_e_reg[7]\(1),
      R => '0'
    );
\ones_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(2),
      Q => \data_e_reg[7]\(2),
      R => '0'
    );
\ones_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(3),
      Q => \data_e_reg[7]\(3),
      R => '0'
    );
\ones_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(4),
      Q => \data_e_reg[7]\(4),
      R => '0'
    );
\ones_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(5),
      Q => \data_e_reg[7]\(5),
      R => '0'
    );
\ones_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(6),
      Q => \data_e_reg[7]\(6),
      R => '0'
    );
\ones_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sum(7),
      Q => \data_e_reg[7]\(7),
      R => '0'
    );
validOut_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Adder_tree_n_0,
      Q => validOut,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     20.9432 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 4096;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 2048;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 64;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 4096;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 2048;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is 64;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "zynq";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 : entity is "yes";
end TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  rdaddrecc(31) <= \<const0>\;
  rdaddrecc(30) <= \<const0>\;
  rdaddrecc(29) <= \<const0>\;
  rdaddrecc(28) <= \<const0>\;
  rdaddrecc(27) <= \<const0>\;
  rdaddrecc(26) <= \<const0>\;
  rdaddrecc(25) <= \<const0>\;
  rdaddrecc(24) <= \<const0>\;
  rdaddrecc(23) <= \<const0>\;
  rdaddrecc(22) <= \<const0>\;
  rdaddrecc(21) <= \<const0>\;
  rdaddrecc(20) <= \<const0>\;
  rdaddrecc(19) <= \<const0>\;
  rdaddrecc(18) <= \<const0>\;
  rdaddrecc(17) <= \<const0>\;
  rdaddrecc(16) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(31) <= \<const0>\;
  s_axi_rdaddrecc(30) <= \<const0>\;
  s_axi_rdaddrecc(29) <= \<const0>\;
  s_axi_rdaddrecc(28) <= \<const0>\;
  s_axi_rdaddrecc(27) <= \<const0>\;
  s_axi_rdaddrecc(26) <= \<const0>\;
  s_axi_rdaddrecc(25) <= \<const0>\;
  s_axi_rdaddrecc(24) <= \<const0>\;
  s_axi_rdaddrecc(23) <= \<const0>\;
  s_axi_rdaddrecc(22) <= \<const0>\;
  s_axi_rdaddrecc(21) <= \<const0>\;
  s_axi_rdaddrecc(20) <= \<const0>\;
  s_axi_rdaddrecc(19) <= \<const0>\;
  s_axi_rdaddrecc(18) <= \<const0>\;
  s_axi_rdaddrecc(17) <= \<const0>\;
  s_axi_rdaddrecc(16) <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1_synth
     port map (
      addra(11 downto 0) => addra(13 downto 2),
      addrb(10 downto 0) => addrb(13 downto 3),
      clka => clka,
      clkb => clkb,
      dina(31 downto 0) => dina(31 downto 0),
      dinb(63 downto 0) => dinb(63 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      ena => ena,
      enb => enb,
      rsta => rsta,
      rstb => rstb,
      wea(3 downto 0) => wea(3 downto 0),
      web(7 downto 0) => web(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_TDCchannel is
  port (
    addr : out STD_LOGIC_VECTOR ( 10 downto 0 );
    dinb : out STD_LOGIC_VECTOR ( 42 downto 0 );
    we : out STD_LOGIC_VECTOR ( 0 to 0 );
    rdy : out STD_LOGIC;
    trigger_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    asyn : out STD_LOGIC;
    clk : in STD_LOGIC;
    syn : in STD_LOGIC;
    ff_2 : in STD_LOGIC;
    hit : in STD_LOGIC;
    trigger_in : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end TDCsystem_AXITDC_0_0_TDCchannel;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_TDCchannel is
  signal carryOut : STD_LOGIC_VECTOR ( 191 to 191 );
  signal control_n_3 : STD_LOGIC;
  signal count_reg : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal ones : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal thermo : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal validIn : STD_LOGIC;
  signal validOut : STD_LOGIC;
begin
Delay_line: entity work.TDCsystem_AXITDC_0_0_delayLine
     port map (
      D(0) => carryOut(191),
      \FSM_sequential_state_reg[2]\ => control_n_3,
      Q(191 downto 0) => thermo(191 downto 0),
      clk => clk,
      hit => hit,
      validIn => validIn
    );
control: entity work.TDCsystem_AXITDC_0_0_control
     port map (
      D(0) => carryOut(191),
      Q(7 downto 0) => ones(7 downto 0),
      addr(10 downto 0) => addr(10 downto 0),
      asyn => asyn,
      clk => clk,
      count_reg(23 downto 0) => count_reg(23 downto 0),
      dinb(42 downto 0) => dinb(42 downto 0),
      ff_2 => ff_2,
      hitQ_reg => control_n_3,
      rdy => rdy,
      syn => syn,
      trigger_in(10 downto 0) => trigger_in(10 downto 0),
      trigger_out(10 downto 0) => trigger_out(10 downto 0),
      validOut => validOut,
      we(0) => we(0)
    );
counter: entity work.TDCsystem_AXITDC_0_0_counter
     port map (
      clk => clk,
      count_reg(23 downto 0) => count_reg(23 downto 0)
    );
encoder: entity work.TDCsystem_AXITDC_0_0_encoder
     port map (
      Q(191 downto 0) => thermo(191 downto 0),
      clk => clk,
      \data_e_reg[7]\(7 downto 0) => ones(7 downto 0),
      validIn => validIn,
      validOut => validOut
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_blk_mem_gen_0 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 3 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TDCsystem_AXITDC_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TDCsystem_AXITDC_0_0_blk_mem_gen_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of TDCsystem_AXITDC_0_0_blk_mem_gen_0 : entity is "blk_mem_gen_v8_4_1,Vivado 2018.2";
end TDCsystem_AXITDC_0_0_blk_mem_gen_0;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_blk_mem_gen_0 is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 32;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 32;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 0;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "0";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "4";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 1;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     20.9432 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 1;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 1;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 1;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 1;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 1;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "blk_mem_gen_0.mem";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "no_coe_file_loaded";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 2;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 4096;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 2048;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 64;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 1;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 1;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 4;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 8;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 4096;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 2048;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 64;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER";
  attribute x_interface_info of ena : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA EN";
  attribute x_interface_info of enb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB EN";
  attribute x_interface_info of rsta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA RST";
  attribute x_interface_info of rstb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB RST";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of dina : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN";
  attribute x_interface_info of dinb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
  attribute x_interface_info of wea : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA WE";
  attribute x_interface_info of web : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB WE";
begin
U0: entity work.TDCsystem_AXITDC_0_0_blk_mem_gen_v8_4_1
     port map (
      addra(31 downto 14) => B"000000000000000000",
      addra(13 downto 2) => addra(13 downto 2),
      addra(1 downto 0) => B"00",
      addrb(31 downto 14) => B"000000000000000000",
      addrb(13 downto 3) => addrb(13 downto 3),
      addrb(2 downto 0) => B"000",
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => dina(31 downto 0),
      dinb(63 downto 0) => dinb(63 downto 0),
      douta(31 downto 0) => douta(31 downto 0),
      doutb(63 downto 0) => doutb(63 downto 0),
      eccpipece => '0',
      ena => ena,
      enb => enb,
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(31 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(31 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => rsta,
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => rstb,
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(31 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(31 downto 0),
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(3 downto 0) => wea(3 downto 0),
      web(7 downto 0) => web(7 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0_AXITDC is
  port (
    s_axi_awready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_1_awready : out STD_LOGIC;
    s_axi_1_wready : out STD_LOGIC;
    s_axi_1_bid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_1_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_1_bvalid : out STD_LOGIC;
    s_axi_1_arready : out STD_LOGIC;
    s_axi_1_rid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axi_1_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_1_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_1_rlast : out STD_LOGIC;
    s_axi_1_rvalid : out STD_LOGIC;
    trigger_out : out STD_LOGIC_VECTOR ( 10 downto 0 );
    clk : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
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
    s_axi_1_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_1_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_1_wlast : in STD_LOGIC;
    s_axi_1_wvalid : in STD_LOGIC;
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
    s_axi_1_rready : in STD_LOGIC;
    hit : in STD_LOGIC;
    trigger_in : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
end TDCsystem_AXITDC_0_0_AXITDC;

architecture STRUCTURE of TDCsystem_AXITDC_0_0_AXITDC is
  signal addr : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal bram_addr_a : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal bram_clk_a : STD_LOGIC;
  signal bram_en_a : STD_LOGIC;
  signal bram_rddata_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_rst_a : STD_LOGIC;
  signal bram_we_a : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal bram_wrdata_a : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clr : STD_LOGIC;
  signal dinb : STD_LOGIC_VECTOR ( 42 downto 0 );
  signal full : STD_LOGIC;
  signal gpio_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gpio_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rdy : STD_LOGIC;
  signal run : STD_LOGIC;
  signal web : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_BRAM_doutb_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of AXI_control : label is "axi_gpio_0,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of AXI_control : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of AXI_control : label is "axi_gpio,Vivado 2018.2";
  attribute CHECK_LICENSE_TYPE of AXI_memory : label is "axi_bram_ctrl_0,axi_bram_ctrl,{}";
  attribute downgradeipidentifiedwarnings of AXI_memory : label is "yes";
  attribute x_core_info of AXI_memory : label is "axi_bram_ctrl,Vivado 2018.2";
  attribute CHECK_LICENSE_TYPE of BRAM : label is "blk_mem_gen_0,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings of BRAM : label is "yes";
  attribute x_core_info of BRAM : label is "blk_mem_gen_v8_4_1,Vivado 2018.2";
begin
AXI_control: entity work.TDCsystem_AXITDC_0_0_axi_gpio_0
     port map (
      gpio2_io_o(1 downto 0) => gpio_out(1 downto 0),
      gpio_io_i(1 downto 0) => gpio_in(1 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
AXI_memory: entity work.TDCsystem_AXITDC_0_0_axi_bram_ctrl_0
     port map (
      bram_addr_a(13 downto 0) => bram_addr_a(13 downto 0),
      bram_clk_a => bram_clk_a,
      bram_en_a => bram_en_a,
      bram_rddata_a(31 downto 0) => bram_rddata_a(31 downto 0),
      bram_rst_a => bram_rst_a,
      bram_we_a(3 downto 0) => bram_we_a(3 downto 0),
      bram_wrdata_a(31 downto 0) => bram_wrdata_a(31 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(13 downto 0) => s_axi_1_araddr(13 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_1_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_1_arcache(3 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(11 downto 0) => s_axi_1_arid(11 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_1_arlen(7 downto 0),
      s_axi_arlock => s_axi_1_arlock,
      s_axi_arprot(2 downto 0) => s_axi_1_arprot(2 downto 0),
      s_axi_arready => s_axi_1_arready,
      s_axi_arsize(2 downto 0) => s_axi_1_arsize(2 downto 0),
      s_axi_arvalid => s_axi_1_arvalid,
      s_axi_awaddr(13 downto 0) => s_axi_1_awaddr(13 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_1_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_1_awcache(3 downto 0),
      s_axi_awid(11 downto 0) => s_axi_1_awid(11 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_1_awlen(7 downto 0),
      s_axi_awlock => s_axi_1_awlock,
      s_axi_awprot(2 downto 0) => s_axi_1_awprot(2 downto 0),
      s_axi_awready => s_axi_1_awready,
      s_axi_awsize(2 downto 0) => s_axi_1_awsize(2 downto 0),
      s_axi_awvalid => s_axi_1_awvalid,
      s_axi_bid(11 downto 0) => s_axi_1_bid(11 downto 0),
      s_axi_bready => s_axi_1_bready,
      s_axi_bresp(1 downto 0) => s_axi_1_bresp(1 downto 0),
      s_axi_bvalid => s_axi_1_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_1_rdata(31 downto 0),
      s_axi_rid(11 downto 0) => s_axi_1_rid(11 downto 0),
      s_axi_rlast => s_axi_1_rlast,
      s_axi_rready => s_axi_1_rready,
      s_axi_rresp(1 downto 0) => s_axi_1_rresp(1 downto 0),
      s_axi_rvalid => s_axi_1_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_1_wdata(31 downto 0),
      s_axi_wlast => s_axi_1_wlast,
      s_axi_wready => s_axi_1_wready,
      s_axi_wstrb(3 downto 0) => s_axi_1_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_1_wvalid
    );
BRAM: entity work.TDCsystem_AXITDC_0_0_blk_mem_gen_0
     port map (
      addra(31 downto 14) => B"000000000000000000",
      addra(13 downto 0) => bram_addr_a(13 downto 0),
      addrb(31 downto 14) => B"000000000000000000",
      addrb(13 downto 3) => addr(10 downto 0),
      addrb(2 downto 0) => B"000",
      clka => bram_clk_a,
      clkb => clk,
      dina(31 downto 0) => bram_wrdata_a(31 downto 0),
      dinb(63 downto 43) => B"000000000000000000000",
      dinb(42 downto 0) => dinb(42 downto 0),
      douta(31 downto 0) => bram_rddata_a(31 downto 0),
      doutb(63 downto 0) => NLW_BRAM_doutb_UNCONNECTED(63 downto 0),
      ena => bram_en_a,
      enb => '1',
      rsta => bram_rst_a,
      rstb => '0',
      wea(3 downto 0) => bram_we_a(3 downto 0),
      web(7) => web(7),
      web(6) => web(7),
      web(5) => web(7),
      web(4) => web(7),
      web(3) => web(7),
      web(2) => web(7),
      web(1) => web(7),
      web(0) => web(7)
    );
TDC: entity work.TDCsystem_AXITDC_0_0_TDCchannel
     port map (
      addr(10 downto 0) => addr(10 downto 0),
      asyn => full,
      clk => clk,
      dinb(42 downto 0) => dinb(42 downto 0),
      ff_2 => run,
      hit => hit,
      rdy => rdy,
      syn => clr,
      trigger_in(10 downto 0) => trigger_in(10 downto 0),
      trigger_out(10 downto 0) => trigger_out(10 downto 0),
      we(0) => web(7)
    );
sync_0: entity work.TDCsystem_AXITDC_0_0_sync
     port map (
      asyn => gpio_out(0),
      clk => clk,
      syn => clr
    );
sync_1: entity work.TDCsystem_AXITDC_0_0_sync_0
     port map (
      asyn => gpio_out(1),
      clk => clk,
      syn => run
    );
sync_2: entity work.TDCsystem_AXITDC_0_0_sync_1
     port map (
      asyn => rdy,
      s_axi_aclk => s_axi_aclk,
      syn => gpio_in(0)
    );
sync_3: entity work.TDCsystem_AXITDC_0_0_sync_2
     port map (
      asyn => full,
      s_axi_aclk => s_axi_aclk,
      syn => gpio_in(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TDCsystem_AXITDC_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TDCsystem_AXITDC_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of TDCsystem_AXITDC_0_0 : entity is "TDCsystem_AXITDC_1_0,AXITDC,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of TDCsystem_AXITDC_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of TDCsystem_AXITDC_0_0 : entity is "package_project";
  attribute x_core_info : string;
  attribute x_core_info of TDCsystem_AXITDC_0_0 : entity is "AXITDC,Vivado 2018.2";
end TDCsystem_AXITDC_0_0;

architecture STRUCTURE of TDCsystem_AXITDC_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 350000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of s_axi_1_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARLOCK";
  attribute x_interface_info of s_axi_1_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARREADY";
  attribute x_interface_info of s_axi_1_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARVALID";
  attribute x_interface_info of s_axi_1_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWLOCK";
  attribute x_interface_info of s_axi_1_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWREADY";
  attribute x_interface_info of s_axi_1_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWVALID";
  attribute x_interface_info of s_axi_1_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 BREADY";
  attribute x_interface_info of s_axi_1_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 BVALID";
  attribute x_interface_info of s_axi_1_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 RLAST";
  attribute x_interface_info of s_axi_1_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 RREADY";
  attribute x_interface_info of s_axi_1_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 RVALID";
  attribute x_interface_info of s_axi_1_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 WLAST";
  attribute x_interface_info of s_axi_1_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 WREADY";
  attribute x_interface_info of s_axi_1_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 WVALID";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, ASSOCIATED_BUSIF S_AXI_0_Lite:S_AXI_1, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN TDCsystem_processing_system7_0_0_FCLK_CLK0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite WVALID";
  attribute x_interface_info of s_axi_1_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARADDR";
  attribute x_interface_info of s_axi_1_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARBURST";
  attribute x_interface_info of s_axi_1_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARCACHE";
  attribute x_interface_info of s_axi_1_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARID";
  attribute x_interface_info of s_axi_1_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARLEN";
  attribute x_interface_info of s_axi_1_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARPROT";
  attribute x_interface_info of s_axi_1_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 ARSIZE";
  attribute x_interface_info of s_axi_1_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWADDR";
  attribute x_interface_info of s_axi_1_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWBURST";
  attribute x_interface_info of s_axi_1_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWCACHE";
  attribute x_interface_info of s_axi_1_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWID";
  attribute x_interface_parameter of s_axi_1_awid : signal is "XIL_INTERFACENAME S_AXI_1, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 12, ADDR_WIDTH 14, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN TDCsystem_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_1_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWLEN";
  attribute x_interface_info of s_axi_1_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWPROT";
  attribute x_interface_info of s_axi_1_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 AWSIZE";
  attribute x_interface_info of s_axi_1_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 BID";
  attribute x_interface_info of s_axi_1_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 BRESP";
  attribute x_interface_info of s_axi_1_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 RDATA";
  attribute x_interface_info of s_axi_1_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 RID";
  attribute x_interface_info of s_axi_1_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 RRESP";
  attribute x_interface_info of s_axi_1_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 WDATA";
  attribute x_interface_info of s_axi_1_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_1 WSTRB";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI_0_Lite, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN TDCsystem_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI_0_Lite WSTRB";
begin
U0: entity work.TDCsystem_AXITDC_0_0_AXITDC
     port map (
      clk => clk,
      hit => hit,
      s_axi_1_araddr(13 downto 0) => s_axi_1_araddr(13 downto 0),
      s_axi_1_arburst(1 downto 0) => s_axi_1_arburst(1 downto 0),
      s_axi_1_arcache(3 downto 0) => s_axi_1_arcache(3 downto 0),
      s_axi_1_arid(11 downto 0) => s_axi_1_arid(11 downto 0),
      s_axi_1_arlen(7 downto 0) => s_axi_1_arlen(7 downto 0),
      s_axi_1_arlock => s_axi_1_arlock,
      s_axi_1_arprot(2 downto 0) => s_axi_1_arprot(2 downto 0),
      s_axi_1_arready => s_axi_1_arready,
      s_axi_1_arsize(2 downto 0) => s_axi_1_arsize(2 downto 0),
      s_axi_1_arvalid => s_axi_1_arvalid,
      s_axi_1_awaddr(13 downto 0) => s_axi_1_awaddr(13 downto 0),
      s_axi_1_awburst(1 downto 0) => s_axi_1_awburst(1 downto 0),
      s_axi_1_awcache(3 downto 0) => s_axi_1_awcache(3 downto 0),
      s_axi_1_awid(11 downto 0) => s_axi_1_awid(11 downto 0),
      s_axi_1_awlen(7 downto 0) => s_axi_1_awlen(7 downto 0),
      s_axi_1_awlock => s_axi_1_awlock,
      s_axi_1_awprot(2 downto 0) => s_axi_1_awprot(2 downto 0),
      s_axi_1_awready => s_axi_1_awready,
      s_axi_1_awsize(2 downto 0) => s_axi_1_awsize(2 downto 0),
      s_axi_1_awvalid => s_axi_1_awvalid,
      s_axi_1_bid(11 downto 0) => s_axi_1_bid(11 downto 0),
      s_axi_1_bready => s_axi_1_bready,
      s_axi_1_bresp(1 downto 0) => s_axi_1_bresp(1 downto 0),
      s_axi_1_bvalid => s_axi_1_bvalid,
      s_axi_1_rdata(31 downto 0) => s_axi_1_rdata(31 downto 0),
      s_axi_1_rid(11 downto 0) => s_axi_1_rid(11 downto 0),
      s_axi_1_rlast => s_axi_1_rlast,
      s_axi_1_rready => s_axi_1_rready,
      s_axi_1_rresp(1 downto 0) => s_axi_1_rresp(1 downto 0),
      s_axi_1_rvalid => s_axi_1_rvalid,
      s_axi_1_wdata(31 downto 0) => s_axi_1_wdata(31 downto 0),
      s_axi_1_wlast => s_axi_1_wlast,
      s_axi_1_wready => s_axi_1_wready,
      s_axi_1_wstrb(3 downto 0) => s_axi_1_wstrb(3 downto 0),
      s_axi_1_wvalid => s_axi_1_wvalid,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid,
      trigger_in(10 downto 0) => trigger_in(10 downto 0),
      trigger_out(10 downto 0) => trigger_out(10 downto 0)
    );
end STRUCTURE;
