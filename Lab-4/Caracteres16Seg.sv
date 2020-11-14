/*
    Laboratorio 4: Generación de Caracteres a 16 Segmentos
    Nombres de los integrantes a mostrar :
    Marco Javier Jose
*/

module Caracteres16Seg(clk, rst, out);

    input clk, rst;
    output reg [15:0] out;
    reg [5:0] mem;

    always @(posedge clk)
        begin
            if (rst == 1)
                mem = 0;
            else
                mem = mem + 1;
        end

    always @(mem)
        begin
            case (mem)           // PABCDEFGHIJKLMN
                0:     out = 15'b000000110000000;
                1:     out = 15'b001101100101000;
                2:     out = 15'b011101111000000;
                3:     out = 15'b011001111000100;
                4:     out = 15'b010011100000000;
                5:     out = 15'b011111100000000;
                6:     out = 15'b000000110000000;
                7:     out = 15'b001110000000000;
                8:     out = 15'b011101111000000;
                9:     out = 15'b000001100001001;
                10:    out = 15'b000000000010010;
                11:    out = 15'b010011111000000;
                12:    out = 15'b011001111000100;
                13:    out = 15'b000000110000000;
                14:    out = 15'b001110000000000;
                15:    out = 15'b011111100000000;
                16:    out = 15'b010110111000000;
                17:    out = 15'b010011111000000;
                18:    out = 15'b000000110000000;

            endcase
        end
endmodule
