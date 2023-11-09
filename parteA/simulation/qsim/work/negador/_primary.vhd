library verilog;
use verilog.vl_types.all;
entity negador is
    port(
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        led             : out    vl_logic
    );
end negador;
