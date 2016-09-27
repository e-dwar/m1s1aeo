----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:39:11 09/27/2016 
-- Design Name: 
-- Module Name:    combinatoire - Behavioral 
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



architecture Behavioral of combinatoire isENTITY compte_1 IS 
PORT (e : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	s : OUT INTEGER RANGE 0 TO 1 );
END compte_1; 

ARCHITECTURE combinatoire OF compte_1 IS 
BEGIN 
PROCESS(e)
VARIABLE nombre_1 : INTEGER;
	BEGIN
		nombre_1 := 0;
		IF e(2) = '1' THEN 
			nombre_1 := nombre_1 +1;
		END IF;
		IF e(1) = '1' THEN 
			nombre_1 := nombre_1+1;
		END IF;
		IF e(0) = '1' THEN 
			nombre_1 := nombre_1 +1;
		END IF;
		s <= nombre_1;
	
	END PROCESS;
END combinatoire ;
end Behavioral;

