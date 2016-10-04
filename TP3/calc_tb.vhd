--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:19:32 09/26/2016
-- Design Name:   
-- Module Name:   E:/wared/Workspace/m1s1aeo/TP2/calc_tb.vhd
-- Project Name:  TP2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: calc
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY calc_tb IS
END calc_tb;
 
ARCHITECTURE behavior OF calc_tb IS
 
    COMPONENT calc
    PORT(
         switches : IN  std_logic_vector(7 downto 0);
         btn : IN  std_logic_vector(1 downto 0);
         led : OUT  std_logic_vector(7 downto 0);
         sevenseg : OUT  std_logic_vector(6 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal switches : std_logic_vector(7 downto 0) := (others => '0');
   signal btn : std_logic_vector(1 downto 0) := (others => '0');
   signal led : std_logic_vector(7 downto 0);
   signal sevenseg : std_logic_vector(6 downto 0);
   signal anodes : std_logic_vector(3 downto 0);
 
BEGIN

   uut: calc PORT MAP (
          switches => switches,
          btn => btn,
          led => led,
          sevenseg => sevenseg,
          anodes => anodes
        );
 
   stim_proc: process
   begin
		switches <= "00010011";
		btn <= "00";
      wait for 100 ns;
		switches <= "00010011";
		btn <= "01";
      wait for 100 ns;
		switches <= "00010011";
		btn <= "10";
      wait for 100 ns;
		switches <= "00010011";
		btn <= "11";
      wait;
   end process;

END;
