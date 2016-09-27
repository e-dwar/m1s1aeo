----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:35:00 09/20/2016 
-- Design Name: 
-- Module Name:    calc - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity calc is
    Port ( switches : in  STD_LOGIC_VECTOR (7 downto 0);
           btn : in  STD_LOGIC_VECTOR (1 downto 0);
           led : out  STD_LOGIC_VECTOR (7 downto 0);
           sevenseg : out  STD_LOGIC_VECTOR (6 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0));
end calc;

architecture Behavioral of calc is

	COMPONENT add4
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		sum : OUT std_logic_vector(4 downto 0)
		);
	END COMPONENT;
	
	COMPONENT and4
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		s : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT or4
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		s : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT xor4
	PORT(
		a : IN std_logic_vector(3 downto 0);
		b : IN std_logic_vector(3 downto 0);          
		s : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT minimux
    PORT ( add4 : in  STD_LOGIC_VECTOR (4 downto 0);
           and4 : in  STD_LOGIC_VECTOR (3 downto 0);
           or4 : in  STD_LOGIC_VECTOR (3 downto 0);
           xor4 : in  STD_LOGIC_VECTOR (3 downto 0);
           choice : in  STD_LOGIC_VECTOR (1 downto 0);
           s : out  STD_LOGIC_VECTOR (4 downto 0));
	END COMPONENT;
	
	COMPONENT x7seg
	PORT(
		sw : IN std_logic_vector(3 downto 0);          
		sevenseg : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
   signal result : std_logic_vector(4 downto 0);
   signal sAdd : std_logic_vector(4 downto 0);
   signal sAnd : std_logic_vector(4 downto 0);
   signal sOr : std_logic_vector(4 downto 0);
   signal sXor : std_logic_vector(4 downto 0);
 
begin
 
	anodes <= "1110";
 	led <= "000" & result;
	
	Inst_minimux: minimux PORT MAP(
		choice => btn(1 downto 0),
		add4 => sAdd(4 downto 0),
		and4 => sAnd(3 downto 0),
		or4 => sOr(3 downto 0),
		xor4 => sXor(3 downto 0),
		s => result
	);
	
	Inst_add4: add4 PORT MAP(
		a => switches(3 downto 0),
		b => switches(7 downto 4),
		sum => sAdd
	);
   
	Inst_and4: and4 PORT MAP(
		a => switches(3 downto 0),
		b => switches(7 downto 4),
		s => sAnd(3 downto 0)
	);
   
	Inst_or4: or4 PORT MAP(
		a => switches(3 downto 0),
		b => switches(7 downto 4),
		s => sOr(3 downto 0)
	);
   
	Inst_xor4: xor4 PORT MAP(
		a => switches(3 downto 0),
		b => switches(7 downto 4),
		s => sXor(3 downto 0)
	);
	
   Inst_x7seg: x7seg PORT MAP( 
		sw => result(3 downto 0),
		sevenseg => sevenseg
	);
	
end Behavioral;

