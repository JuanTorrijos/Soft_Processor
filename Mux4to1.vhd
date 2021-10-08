----------------------------------------------------------------------------------
-- Company: 		 ITESM - Campus Qro.
-- Engineer: 		 
-- 
-- Create Date:    
-- Design Name: 
-- Module Name:    Mux4to1 - Behavioral 
-- Project Name: 	 Final Challenge
-- Target Devices: Max LITE-10 FPGA Board
-- Tool versions:  Quartus Prime Lite 18.1
-- Description: 	 Design a CPU
--
-- Dependencies: 	 None
--
-- Revision: 		 V1.0
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------

Library ieee;
Use ieee.std_logic_1164.all;

Entity Mux4to1 is 
  port (	InA	: in std_logic_vector(7 downto 0);
			InB	: in std_logic_vector(7 downto 0);
			InC	: in std_logic_vector(7 downto 0);
			InD	: in std_logic_vector(7 downto 0);
			Sel 	: in std_logic_vector(1 downto 0);
			M 		: out std_logic_vector(7 downto 0));
end Mux4to1;

Architecture a of Mux4to1 is
Begin
	mux: process(Sel)
	Begin
		if (Sel = "00") then
			M <= InA;
		elsif (Sel = "01") then
			M <= InB;
		elsif (Sel = "10") then
			M <= InC;
		elsif (Sel = "11") then
			M <= InD;
		else
			M <= InD;
		end if;
	end process mux;
end a;