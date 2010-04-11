
-------------------------------------------------------------------------------
-- File Generator Author: Alexander Lindert <alexander_lindert at gmx.at>
-------------------------------------------------------------------------------
-- Description: This boot rom is made in the same way like the ahbrom from
--              Leon3 grlib
-------------------------------------------------------------------------------
-- File Generator License: GPL
-------------------------------------------------------------------------------
-- Revisions  :
-- Date        Version
-- 2009-02-12  1.0
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
library grlib;
use grlib.amba.all;
use grlib.stdlib.all;
use grlib.devices.all;

entity BootRom is
  generic (
    pipe  : integer := 0);
  port (
    rstn  : in  std_ulogic;
    clk   : in  std_ulogic;
    ren   : in  std_ulogic;
    iaddr : in  std_logic_vector(31 downto 2);
    odata : out std_logic_vector(31 downto 0);
    oACK  : out std_ulogic
  );
end;

architecture rtl of BootRom is
constant abits   : integer := 10;
constant bytes   : integer := 784;
signal   romdata, data : std_logic_vector(31 downto 0);
signal   addr    : std_logic_vector(abits-1 downto 2);
signal   ACK     : std_ulogic;

begin

  odata <= data when ACK = '1' else (others => 'Z');
  oACK <= ACK;
  reg : process (clk)
  begin
    if rising_edge(clk) then 
      addr <= iaddr(abits-1 downto 2);
    end if;
  end process;

  p0 : if pipe = 0 generate
         data  <= romdata;
         ACK  <= not ren;
  end generate;

  p1 : if pipe = 1 generate
    reg2 : process (clk, rstn)
    begin
      if rstn = '0' then
         ACK <= '0';
      elsif rising_edge(clk) then
         ACK <= not ren;
         data  <= romdata;
      end if;
    end process;
  end generate;

  comb : process (addr)
  begin
    case conv_integer(addr) is
    when 16#00000# => romdata <= X"81D82000";
    when 16#00001# => romdata <= X"03000004";
    when 16#00002# => romdata <= X"821060E0";
    when 16#00003# => romdata <= X"81884000";
    when 16#00004# => romdata <= X"81900000";
    when 16#00005# => romdata <= X"81980000";
    when 16#00006# => romdata <= X"81800000";
    when 16#00007# => romdata <= X"A1800000";
    when 16#00008# => romdata <= X"01000000";
    when 16#00009# => romdata <= X"03002040";
    when 16#0000A# => romdata <= X"8210600F";
    when 16#0000B# => romdata <= X"C2A00040";
    when 16#0000C# => romdata <= X"84100000";
    when 16#0000D# => romdata <= X"01000000";
    when 16#0000E# => romdata <= X"01000000";
    when 16#0000F# => romdata <= X"01000000";
    when 16#00010# => romdata <= X"01000000";
    when 16#00011# => romdata <= X"01000000";
    when 16#00012# => romdata <= X"80108002";
    when 16#00013# => romdata <= X"01000000";
    when 16#00014# => romdata <= X"01000000";
    when 16#00015# => romdata <= X"01000000";
    when 16#00016# => romdata <= X"01000000";
    when 16#00017# => romdata <= X"01000000";
    when 16#00018# => romdata <= X"87444000";
    when 16#00019# => romdata <= X"8608E01F";
    when 16#0001A# => romdata <= X"88100000";
    when 16#0001B# => romdata <= X"8A100000";
    when 16#0001C# => romdata <= X"8C100000";
    when 16#0001D# => romdata <= X"8E100000";
    when 16#0001E# => romdata <= X"A0100000";
    when 16#0001F# => romdata <= X"A2100000";
    when 16#00020# => romdata <= X"A4100000";
    when 16#00021# => romdata <= X"A6100000";
    when 16#00022# => romdata <= X"A8100000";
    when 16#00023# => romdata <= X"AA100000";
    when 16#00024# => romdata <= X"AC100000";
    when 16#00025# => romdata <= X"AE100000";
    when 16#00026# => romdata <= X"90100000";
    when 16#00027# => romdata <= X"92100000";
    when 16#00028# => romdata <= X"94100000";
    when 16#00029# => romdata <= X"96100000";
    when 16#0002A# => romdata <= X"98100000";
    when 16#0002B# => romdata <= X"9A100000";
    when 16#0002C# => romdata <= X"9C100000";
    when 16#0002D# => romdata <= X"9E100000";
    when 16#0002E# => romdata <= X"86A0E001";
    when 16#0002F# => romdata <= X"16BFFFEF";
    when 16#00030# => romdata <= X"81E00000";
    when 16#00031# => romdata <= X"82102002";
    when 16#00032# => romdata <= X"81904000";
    when 16#00033# => romdata <= X"03000010";
    when 16#00034# => romdata <= X"821060E0";
    when 16#00035# => romdata <= X"81884000";
    when 16#00036# => romdata <= X"01000000";
    when 16#00037# => romdata <= X"01000000";
    when 16#00038# => romdata <= X"01000000";
    when 16#00039# => romdata <= X"83480000";
    when 16#0003A# => romdata <= X"8330600C";
    when 16#0003B# => romdata <= X"80886001";
    when 16#0003C# => romdata <= X"02800004";
    when 16#0003D# => romdata <= X"01000000";
    when 16#0003E# => romdata <= X"00000000";
    when 16#0003F# => romdata <= X"00000000";
    when 16#00040# => romdata <= X"87444000";
    when 16#00041# => romdata <= X"8730E01C";
    when 16#00042# => romdata <= X"8688E00F";
    when 16#00043# => romdata <= X"12800016";
    when 16#00044# => romdata <= X"03200000";
    when 16#00045# => romdata <= X"05040E00";
    when 16#00046# => romdata <= X"8410A233";
    when 16#00047# => romdata <= X"C4204000";
    when 16#00048# => romdata <= X"0539AE13";
    when 16#00049# => romdata <= X"8410A260";
    when 16#0004A# => romdata <= X"C4206004";
    when 16#0004B# => romdata <= X"050003FC";
    when 16#0004C# => romdata <= X"C4206008";
    when 16#0004D# => romdata <= X"82103860";
    when 16#0004E# => romdata <= X"C4004000";
    when 16#0004F# => romdata <= X"8530A00C";
    when 16#00050# => romdata <= X"03000004";
    when 16#00051# => romdata <= X"82106009";
    when 16#00052# => romdata <= X"80A04002";
    when 16#00053# => romdata <= X"12800006";
    when 16#00054# => romdata <= X"033FFC00";
    when 16#00055# => romdata <= X"82106100";
    when 16#00056# => romdata <= X"0539A81B";
    when 16#00057# => romdata <= X"8410A260";
    when 16#00058# => romdata <= X"C4204000";
    when 16#00059# => romdata <= X"051006D4";
    when 16#0005A# => romdata <= X"82100000";
    when 16#0005B# => romdata <= X"80A0E000";
    when 16#0005C# => romdata <= X"02800005";
    when 16#0005D# => romdata <= X"01000000";
    when 16#0005E# => romdata <= X"82004002";
    when 16#0005F# => romdata <= X"10BFFFFC";
    when 16#00060# => romdata <= X"8620E001";
    when 16#00061# => romdata <= X"05100061";
    when 16#00062# => romdata <= X"8410A2A4";
    when 16#00063# => romdata <= X"23044444";
    when 16#00064# => romdata <= X"A2146111";
    when 16#00065# => romdata <= X"25088888";
    when 16#00066# => romdata <= X"A414A222";
    when 16#00067# => romdata <= X"270CCCCC";
    when 16#00068# => romdata <= X"A614E333";
    when 16#00069# => romdata <= X"29111111";
    when 16#0006A# => romdata <= X"A8152044";
    when 16#0006B# => romdata <= X"2B155555";
    when 16#0006C# => romdata <= X"AA156155";
    when 16#0006D# => romdata <= X"2D199999";
    when 16#0006E# => romdata <= X"AC15A266";
    when 16#0006F# => romdata <= X"2F1DDDDD";
    when 16#00070# => romdata <= X"AE15E377";
    when 16#00071# => romdata <= X"E0208000";
    when 16#00072# => romdata <= X"8400A004";
    when 16#00073# => romdata <= X"E2208000";
    when 16#00074# => romdata <= X"8400A004";
    when 16#00075# => romdata <= X"E4208000";
    when 16#00076# => romdata <= X"8400A004";
    when 16#00077# => romdata <= X"E6208000";
    when 16#00078# => romdata <= X"8400A004";
    when 16#00079# => romdata <= X"E8208000";
    when 16#0007A# => romdata <= X"8400A004";
    when 16#0007B# => romdata <= X"EA208000";
    when 16#0007C# => romdata <= X"8400A004";
    when 16#0007D# => romdata <= X"EC208000";
    when 16#0007E# => romdata <= X"8400A004";
    when 16#0007F# => romdata <= X"EE208000";
    when 16#00080# => romdata <= X"01000000";
    when 16#00081# => romdata <= X"EE008000";
    when 16#00082# => romdata <= X"8420A004";
    when 16#00083# => romdata <= X"EC008000";
    when 16#00084# => romdata <= X"8420A004";
    when 16#00085# => romdata <= X"EA008000";
    when 16#00086# => romdata <= X"8420A004";
    when 16#00087# => romdata <= X"E8008000";
    when 16#00088# => romdata <= X"8420A004";
    when 16#00089# => romdata <= X"E6008000";
    when 16#0008A# => romdata <= X"8420A004";
    when 16#0008B# => romdata <= X"E4008000";
    when 16#0008C# => romdata <= X"8420A004";
    when 16#0008D# => romdata <= X"E2008000";
    when 16#0008E# => romdata <= X"01000000";
    when 16#0008F# => romdata <= X"E0308000";
    when 16#00090# => romdata <= X"8400A002";
    when 16#00091# => romdata <= X"E0308000";
    when 16#00092# => romdata <= X"8400A002";
    when 16#00093# => romdata <= X"E2288000";
    when 16#00094# => romdata <= X"8400A001";
    when 16#00095# => romdata <= X"E2288000";
    when 16#00096# => romdata <= X"8400A001";
    when 16#00097# => romdata <= X"E2288000";
    when 16#00098# => romdata <= X"8400A001";
    when 16#00099# => romdata <= X"E2288000";
    when 16#0009A# => romdata <= X"01000000";
    when 16#0009B# => romdata <= X"E4088000";
    when 16#0009C# => romdata <= X"8420A001";
    when 16#0009D# => romdata <= X"E4088000";
    when 16#0009E# => romdata <= X"8420A001";
    when 16#0009F# => romdata <= X"E4088000";
    when 16#000A0# => romdata <= X"8420A001";
    when 16#000A1# => romdata <= X"E4088000";
    when 16#000A2# => romdata <= X"8420A002";
    when 16#000A3# => romdata <= X"E6108000";
    when 16#000A4# => romdata <= X"8420A002";
    when 16#000A5# => romdata <= X"E6108000";
    when 16#000A6# => romdata <= X"01000000";
    when 16#000A7# => romdata <= X"E0008000";
    when 16#000A8# => romdata <= X"8400A004";
    when 16#000A9# => romdata <= X"E0008000";
    when 16#000AA# => romdata <= X"8400A004";
    when 16#000AB# => romdata <= X"E0008000";
    when 16#000AC# => romdata <= X"8400A004";
    when 16#000AD# => romdata <= X"E0008000";
    when 16#000AE# => romdata <= X"8400A004";
    when 16#000AF# => romdata <= X"E0008000";
    when 16#000B0# => romdata <= X"8400A004";
    when 16#000B1# => romdata <= X"E0008000";
    when 16#000B2# => romdata <= X"8400A004";
    when 16#000B3# => romdata <= X"E0008000";
    when 16#000B4# => romdata <= X"8400A004";
    when 16#000B5# => romdata <= X"3D1007FF";
    when 16#000B6# => romdata <= X"BC17A3E0";
    when 16#000B7# => romdata <= X"BC278001";
    when 16#000B8# => romdata <= X"9C27A060";
    when 16#000B9# => romdata <= X"03100000";
    when 16#000BA# => romdata <= X"81C04000";
    when 16#000BB# => romdata <= X"01000000";
    when 16#000BC# => romdata <= X"01000000";
    when 16#000BD# => romdata <= X"01000000";
    when 16#000BE# => romdata <= X"01000000";
    when 16#000BF# => romdata <= X"01000000";
    when 16#000C0# => romdata <= X"00000000";
    when 16#000C1# => romdata <= X"00000000";
    when 16#000C2# => romdata <= X"00000000";
    when 16#000C3# => romdata <= X"00000000";
    when 16#000C4# => romdata <= X"00000000";
    when others => romdata <= (others => '-');
    end case;
  end process;
  end;
