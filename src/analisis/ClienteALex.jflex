package analisis;
import java_cup.runtime.Symbol;
import java.util.*;

%%


%class ClienteALex
%cupsym ClienteASym
%cup
%unicode
%public
%line
%char
%ignorecase


digito      = [0-9]
entero      = {digito}+
decimal     = {entero} "." {entero}
caracter = [\'] [a-zA-ZñÑ] [\']
cadena      = [\"] [^\"\n]* [\"]
cadcampo    = ">" [^<]* 

/**
fecha       = {digito}{digito} "-" {digito}{digito} "-" {digito}{digito}{digito}{digito}
hora        = {digito}{digito} ":" {digito}{digito} ":" {digito}{digito}
*/
fechacadena = ">" [^<]+ "," [^<]+


%state A

%% 

/* Palabras Reservadas */

"<sesion"       {
                 return new Symbol(ClienteASym.tssesion, yychar, yyline ,new String(yytext()));}
"</sesion>"     {
                 return new Symbol(ClienteASym.tesesion, yychar, yyline ,new String(yytext()));}
"<usuario"      {
                 return new Symbol(ClienteASym.tsusuario, yychar, yyline ,new String(yytext()));}
"</usuario>"     {
                 return new Symbol(ClienteASym.teusuario, yychar, yyline ,new String(yytext()));}
"<fecha"        {
                 return new Symbol(ClienteASym.tsfecha, yychar, yyline ,new String(yytext()));}
"</fecha>"       {
                 return new Symbol(ClienteASym.tefecha, yychar, yyline ,new String(yytext()));}
"<nombre"       {
                 return new Symbol(ClienteASym.tsnombre, yychar, yyline ,new String(yytext()));}
"</nombre>"      {
                 return new Symbol(ClienteASym.tenombre, yychar, yyline ,new String(yytext()));}
"<asunto"       {
                 return new Symbol(ClienteASym.tsasunto, yychar, yyline ,new String(yytext()));}
"</asunto>"      {
                 return new Symbol(ClienteASym.teasunto, yychar, yyline ,new String(yytext()));}
"<contenido"    {
                 return new Symbol(ClienteASym.tscontenido, yychar, yyline ,new String(yytext()));}
"</contenido>"   {
                 return new Symbol(ClienteASym.tecontenido, yychar, yyline ,new String(yytext()));}
"<archivos>"    {
                 return new Symbol(ClienteASym.tsarchivos, yychar, yyline ,new String(yytext()));}
"</archivos>"   {
                 return new Symbol(ClienteASym.tearchivos, yychar, yyline ,new String(yytext()));}
"<destinatario" {
                 return new Symbol(ClienteASym.tsdestinatario, yychar, yyline ,new String(yytext()));}
"</destinatario>" {
                 return new Symbol(ClienteASym.tedestinatario, yychar, yyline ,new String(yytext()));}
"<archivo"      {
                 return new Symbol(ClienteASym.tsarchivo, yychar, yyline ,new String(yytext()));}
"</archivo>"    {
                 return new Symbol(ClienteASym.tearchivo, yychar, yyline ,new String(yytext()));}
"<celda"        {
                 return new Symbol(ClienteASym.tscelda, yychar, yyline ,new String(yytext()));}
"</celda>"      {
                 return new Symbol(ClienteASym.tecelda, yychar, yyline ,new String(yytext()));}
"<formula>"     {
                 return new Symbol(ClienteASym.tsformula, yychar, yyline ,new String(yytext()));}
"</formula>"    {
                 return new Symbol(ClienteASym.teformula, yychar, yyline ,new String(yytext()));}
"<correo"      {
                 return new Symbol(ClienteASym.tscorreo, yychar, yyline ,new String(yytext()));}
"</correo>"     {
                 return new Symbol(ClienteASym.tecorreo, yychar, yyline ,new String(yytext()));}
"<de"           {
                 return new Symbol(ClienteASym.tsde, yychar, yyline ,new String(yytext()));}
"</de>"         {
                 return new Symbol(ClienteASym.tede, yychar, yyline ,new String(yytext()));}
"<registro"     {
                 return new Symbol(ClienteASym.tsregistro, yychar, yyline ,new String(yytext()));}
"</registro>"   {
                 return new Symbol(ClienteASym.teregistro, yychar, yyline ,new String(yytext()));}
"<error"        {
                 return new Symbol(ClienteASym.tserror, yychar, yyline ,new String(yytext()));}
"</error>"      {
                 return new Symbol(ClienteASym.teerror, yychar, yyline ,new String(yytext()));}
"<enviado"      {
                 return new Symbol(ClienteASym.tsenviado, yychar, yyline ,new String(yytext()));}
"</enviado>"    {
                 return new Symbol(ClienteASym.teenviado, yychar, yyline ,new String(yytext()));}


"tipo"          { 
                 return new Symbol(ClienteASym.ttipo, yychar, yyline ,new String(yytext()));}
"tama"          { 
                 return new Symbol(ClienteASym.ttama, yychar, yyline ,new String(yytext()));}
"id"            {
                 return new Symbol(ClienteASym.tid, yychar, yyline ,new String(yytext()));}
"fila"          {
                 return new Symbol(ClienteASym.tfila, yychar, yyline ,new String(yytext()));}
"columna"       {
                 return new Symbol(ClienteASym.tcolumna, yychar, yyline ,new String(yytext()));}
"color"         {
                 return new Symbol(ClienteASym.tcolor, yychar, yyline ,new String(yytext()));}
"formula"       {
                 return new Symbol(ClienteASym.tformula, yychar, yyline ,new String(yytext()));}

 
"="             {
                 return new Symbol(ClienteASym.tigual, yychar, yyline ,new String(yytext()));}
"&"             {
                 return new Symbol(ClienteASym.tamperson, yychar, yyline ,new String(yytext()));}
"("             {
                 return new Symbol(ClienteASym.tpa, yychar, yyline ,new String(yytext()));}
")"             {
                 return new Symbol(ClienteASym.tpc, yychar, yyline ,new String(yytext()));}
"{"             {
                 return new Symbol(ClienteASym.tla, yychar, yyline ,new String(yytext()));}
"}"             {
                 return new Symbol(ClienteASym.tlc, yychar, yyline ,new String(yytext()));}
"oper"          {
                 return new Symbol(ClienteASym.toper, yychar, yyline ,new String(yytext()));}
";"             {
                 return new Symbol(ClienteASym.tpyc, yychar, yyline ,new String(yytext()));}
"return"        {
                 return new Symbol(ClienteASym.treturn, yychar, yyline ,new String(yytext()));}
"end"           {
                 return new Symbol(ClienteASym.tend, yychar, yyline ,new String(yytext()));}
"begin"         {
                 return new Symbol(ClienteASym.tbegin, yychar, yyline ,new String(yytext()));}
","             {
                 return new Symbol(ClienteASym.tcoma, yychar, yyline ,new String(yytext()));}
"si"            {
                 return new Symbol(ClienteASym.tif, yychar, yyline ,new String(yytext()));}
"else"          {
                 return new Symbol(ClienteASym.telse, yychar, yyline ,new String(yytext()));}
"for"           {
                 return new Symbol(ClienteASym.tfor, yychar, yyline ,new String(yytext()));}
"while"         {
                 return new Symbol(ClienteASym.twhile, yychar, yyline ,new String(yytext()));}
"to"            {
                 return new Symbol(ClienteASym.tto, yychar, yyline ,new String(yytext()));}
"next"          {
                 return new Symbol(ClienteASym.tnext, yychar, yyline ,new String(yytext()));}







/* Operadores Aritméticos */

"entero"        {
                 return new Symbol(ClienteASym.tinteger, yychar, yyline ,new String(yytext()));}
"float"         {
                 return new Symbol(ClienteASym.tfloat, yychar, yyline ,new String(yytext()));}
"char"          {
                 return new Symbol(ClienteASym.tchar, yychar, yyline ,new String(yytext()));}
"logico"        {
                 return new Symbol(ClienteASym.tboolean, yychar, yyline ,new String(yytext()));}
"string"        {
                 return new Symbol(ClienteASym.tstring, yychar, yyline ,new String(yytext()));}
"true"          {
                 return new Symbol(ClienteASym.ttrue, yychar, yyline ,new String(yytext()));}
"false"         {
                 return new Symbol(ClienteASym.tfalse, yychar, yyline ,new String(yytext()));}



"+"             {
                 return new Symbol(ClienteASym.tmas, yychar, yyline ,new String(yytext()));}
"-"             {
                 return new Symbol(ClienteASym.tmenos, yychar, yyline ,new String(yytext()));}
"*"             {
                 return new Symbol(ClienteASym.tpor, yychar, yyline ,new String(yytext()));}
"/"             {
                 return new Symbol(ClienteASym.tdividir, yychar, yyline ,new String(yytext()));}
"^"             {
                 return new Symbol(ClienteASym.tpot, yychar, yyline ,new String(yytext()));}
"%"             {
                 return new Symbol(ClienteASym.tmod, yychar, yyline ,new String(yytext()));}
":"             {
                 return new Symbol(ClienteASym.tdospuntos, yychar, yyline ,new String(yytext()));}



/* Operadores Comparadoras */

"<"             {
                 return new Symbol(ClienteASym.tmenor, yychar, yyline,new String(yytext()));}
">"             {
                 return new Symbol(ClienteASym.tmayor, yychar, yyline,new String(yytext()));}
"=="            {
                 return new Symbol(ClienteASym.tigualigual, yychar, yyline,new String(yytext()));}
"<>"            {
                 return new Symbol(ClienteASym.tdiferente, yychar, yyline,new String(yytext()));}
"<="             {
                 return new Symbol(ClienteASym.tmenorigual, yychar, yyline,new String(yytext()));}
">="             {
                 return new Symbol(ClienteASym.tmayorigual, yychar, yyline,new String(yytext()));}



/* Operadores Comunes */ 


/* Operadores Lógicos */



"||"    {
        return new Symbol(ClienteASym.tor, yychar,yyline,new String(yytext())); }
"&&"    {
        return new Symbol(ClienteASym.tand, yychar,yyline,new String(yytext())); }
"!"    {
        return new Symbol(ClienteASym.tno, yychar,yyline,new String(yytext())); }





/* Literales */

    {entero}        {
                    return new Symbol(ClienteASym.tentero, yychar,yyline,new String(yytext()));}
    {decimal}       {
                    return new Symbol(ClienteASym.tdecimal, yychar,yyline,new String(yytext()));}
    {caracter}      {
                    return new Symbol(ClienteASym.tcaracter, yychar,yyline,new String(yytext()));}
    {cadena}        {
                    return new Symbol(ClienteASym.tcadena, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}
    {cadcampo}      {
                    return new Symbol(ClienteASym.tcadcampo, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}                

               

/* Caracteres ignorados */ 
    [ \t\r\f]+  	{
                        /* Se ignoran */}
    [\n]                 { yychar = 0; }

/* Cualquier Otro */  

.				{ /** rojo **/
                                /** Metodos.agregarErrorLexico( "Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); **/
                                /**Metodos.addError("lexico", yyline, yychar, "Caracter no reconocido: " + yytext());**/
                                System.out.println("Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); } 
