--------------------------------------------------------------------------------
--
-- Filename: 	reqarb.vhd
-- {{{
-- Project:	A set of Yosys Formal Verification exercises
--
-- Background:	This is a request arbiter.  It accepts requests from channels
--		A and B, and outputs one request at a time.  Any time there is
--	a valid request, the *_req line will be high and the requested data
--	will be placed onto *_data.  Each channel source has a series of
--	requests, possibly bursty requests, they would like to send to the
--	output.  However, only one request can go through at a time.  Hence,
--	the need for an arbiter to decide whose request goes through.
--
-- To Prove:
--	1. No data will be lost
--	2. Only one source will ever have access to the channel at any given
--		time
--	3. All requests will go through
--
-- You will need to make some assumptions in order to formally verify that this
-- core meets the above conditions.  What assumptions you choose to make will
-- be up to you--as long as they maintain the spirit of the description outlined
-- above.
--
--
-- Creator:	Dan Gisselquist, Ph.D.
--		Gisselquist Technology, LLC
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
-- }}}
-- Copyright (C) 2018-2021, Gisselquist Technology, LLC
-- {{{
-- This program is free software (firmware): you can redistribute it and/or
-- modify it under the terms of the GNU General Public License as published
-- by the Free Software Foundation, either version 3 of the License, or (at
-- your option) any later version.
--
-- This program is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTIBILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details.
--
-- You should have received a copy of the GNU General Public License along
-- with this program.  (It's in the $(ROOT)/doc directory.  Run make with no
-- target there if the PDF file isn't present.)  If not, see
-- <http://www.gnu.org/licenses/> for a copy.
-- }}}
-- License:	GPL, v3, as defined and found on www.gnu.org,
-- {{{
--		http://www.gnu.org/licenses/gpl.html
--
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------
--
-- }}}
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reqarb is

  port(i_clk, i_reset : in std_logic;
	-- A's channel to make requests to send data.
	--	If i_a_req is true, A wishes to send i_a_data
	--	If o_a_busy is true, A must wait
	--
	i_a_req, i_a_data : in std_logic;
	  o_a_busy : out std_logic;
	--
	-- B's channel to make requests
	i_b_req, i_b_data : in std_logic;
	  o_b_busy : out std_logic;
	--
	-- The actual output and data
	--	o_req is the outgoing request
	--	o_data is the data associated with it
	o_req, o_data : out std_logic;
	i_busy : in std_logic);

end entity reqarb;

architecture behavior of reqarb is
	signal a_owner : std_logic := '0';
begin
----
----

process(i_clk)
begin
  if (rising_edge(i_clk)) then
	if (i_reset = '1') then
		a_owner <= '0';
	elsif ((i_a_req = '1') and (i_b_req = '0')) then
		a_owner <= '1';
	elsif ((i_b_req = '1') and (i_a_req = '0')) then
		a_owner <= '0';
	end if;
  end if;
end process;

o_a_busy <= '1' when (a_owner = '0') or (i_busy = '1') else '0';
o_b_busy <= '1' when (a_owner = '1') or (i_busy = '1') else '0';

o_req   <= i_a_req  when (a_owner = '1') else i_b_req;
o_data  <= i_a_data when (a_owner = '1') else i_b_data;

----
----
end behavior;
