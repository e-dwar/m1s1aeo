library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all; 

entity C16b is 
port ( 
clk,raz,enable :in std_logic;
qs : out std_logic_vector(15 downto 0));
end C16b; 

architecture aC16b of C16b is 
signal q : std_logic_vector(15 downto 0);  
begin 


	process(clk) 
	begin 
		if clk'event and clk='1' then
			if raz='1' then
				q<=(others=>'0');
			else
				q<=q+1;
			end if;
		end if;
	end process; 
	
	-- qs <= q; 
	qs <= q when enable='1' else (others=>'Z');
	
end aC16b;