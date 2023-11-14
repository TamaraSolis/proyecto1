library verilog;
use verilog.vl_types.all;
entity sumador_completo_vlg_check_tst is
    port(
        C               : in     vl_logic;
        f0              : in     vl_logic;
        f1              : in     vl_logic;
        f2              : in     vl_logic;
        f4              : in     vl_logic;
        V               : in     vl_logic;
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end sumador_completo_vlg_check_tst;
