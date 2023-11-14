library verilog;
use verilog.vl_types.all;
entity sumador_completo is
    port(
        suma_resta      : in     vl_logic;
        a0              : in     vl_logic;
        b0              : in     vl_logic;
        a1              : in     vl_logic;
        b1              : in     vl_logic;
        a2              : in     vl_logic;
        b2              : in     vl_logic;
        a3              : in     vl_logic;
        b3              : in     vl_logic;
        f4              : out    vl_logic;
        C               : out    vl_logic;
        f2              : out    vl_logic;
        f1              : out    vl_logic;
        f0              : out    vl_logic;
        V               : out    vl_logic;
        Z               : out    vl_logic
    );
end sumador_completo;
