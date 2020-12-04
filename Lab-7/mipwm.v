module mipwm(clk, rst, up, down, salida);

input clk, rst, up, down;
output reg salida;
reg[2:0] contador,pulsaciones; 
/*dos contadores. uno que lleva el conteo de las
veces que se ha pulsado los botones up y down y 
otro que lleva el conteo de los pulsos de reloj
*/

/*bloque que cuenta las pulsaciones de up y down
up y down determinan la longitud del tiempo que dura 
en alto la salida con respecto al contador
*/
always @(posedge clk)
begin
//revisar si hay reset
if(rst)
pulsaciones=4'b0000; //borrar la memoria del contador de pulsaciones
else
if(up)
pulsaciones=pulsaciones + 1'b1; //si se presiona up incrementar el valor del contador de pulsaciones
else if(down)
pulsaciones=pulsaciones - 1'b1; //si se presiona down decrementar el valor del contador de pulsaciones
end

//bloque que cuenta los pulsos de reloj
always @(posedge clk)
begin
//revisar si hay reset
if(rst)
contador=4'b0000; //borrar la memoria del contador de segundos
else
contador = contador + 1'b1; //si no hay reset, incrementar el contador
end

//bloque que controla la salida
always @(posedge clk)
begin
//revisar si hay reset
if(rst)
salida=1'b0; //mandar la salida a 0
else
if(contador>pulsaciones) 
/* pulsaciones guarda la cantidad de veces que se ha pulsado up/down 
si pulso up, la salida debe estar en 1 durante mas tiempo
si pulso down la salida debe estar en 1 menos tiempo
*/
salida=1'b0;
else
salida=1'b1;
end

endmodule