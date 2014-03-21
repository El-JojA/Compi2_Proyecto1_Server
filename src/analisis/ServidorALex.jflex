package analisis;
import java_cup.runtime.Symbol;
import java.util.*;

%%


%class ServidorALex
%cupsym SymServidorA
%cup
%unicode
%public
%line
%char
%ignorecase


digito      = [0-9]
entero      = {digito}+
decimal     = {entero} "." {entero}
letra       = [a-zA-ZñÑ]+
cadena      = [\"] [^\"\n]* [\"]
cadcampo    = ">" [^<]* "<"
iden        = {letra}({letra}|{digito}|"_")*
emailcampo  = ">"  {iden} "@" {iden} ".com" "<"
fecha       = {digito}{digito} "-" {digito}{digito} "-" {digito}{digito}{digito}{digito}
hora        = {digito}{digito} ":" {digito}{digito} ":" {digito}{digito}
fechacadena = ">" {fecha} "," {hora} "<"
booleano    = ("true"|"false")

%state A

%% 

/* Palabras Reservadas */

"<sesion"       {
                 return new Symbol(SymServidorA.tssesion, yychar, yyline ,new String(yytext()));}
"</sesion>"     {
                 return new Symbol(SymServidorA.tesesion, yychar, yyline ,new String(yytext()));}
"<usuario"      {
                 return new Symbol(SymServidorA.tsusuario, yychar, yyline ,new String(yytext()));}
"/usuario>"     {
                 return new Symbol(SymServidorA.teusuario, yychar, yyline ,new String(yytext()));}
"<fecha"        {
                 return new Symbol(SymServidorA.tsfecha, yychar, yyline ,new String(yytext()));}
"/fecha>"       {
                 return new Symbol(SymServidorA.tefecha, yychar, yyline ,new String(yytext()));}
"<nombre"       {
                 return new Symbol(SymServidorA.tsnombre, yychar, yyline ,new String(yytext()));}
"/nombre>"      {
                 return new Symbol(SymServidorA.tenombre, yychar, yyline ,new String(yytext()));}
"<clave"        {
                 return new Symbol(SymServidorA.tsclave, yychar, yyline ,new String(yytext()));}
"/clave>"       {
                 return new Symbol(SymServidorA.teclave, yychar, yyline ,new String(yytext()));}
"<asunto"       {
                 return new Symbol(SymServidorA.tsasunto, yychar, yyline ,new String(yytext()));}
"/asunto>"      {
                 return new Symbol(SymServidorA.teasuno, yychar, yyline ,new String(yytext()));}
"<contenido"    {
                 return new Symbol(SymServidorA.tscontenido, yychar, yyline ,new String(yytext()));}
"/contenido>"   {
                 return new Symbol(SymServidorA.tecontenido, yychar, yyline ,new String(yytext()));}
"<destinatarios>"{
                 return new Symbol(SymServidorA.tsdestinatarios, yychar, yyline ,new String(yytext()));}
"</destinatarios>"{
                 return new Symbol(SymServidorA.tedestinatarios, yychar, yyline ,new String(yytext()));}
"<archivos>"    {
                 return new Symbol(SymServidorA.tsarchivos, yychar, yyline ,new String(yytext()));}
"</archivos>"   {
                 return new Symbol(SymServidorA.tearchivos, yychar, yyline ,new String(yytext()));}
"<destinatario" {
                 return new Symbol(SymServidorA.tsdestinatario, yychar, yyline ,new String(yytext()));}
"/destinatario>"{
                 return new Symbol(SymServidorA.tedestinatario, yychar, yyline ,new String(yytext()));}
"<archivo"      {
                 return new Symbol(SymServidorA.tsarchivo, yychar, yyline ,new String(yytext()));}
"</archivo>"    {
                 return new Symbol(SymServidorA.tearchivo, yychar, yyline ,new String(yytext()));}
"<celda"        {
                 return new Symbol(SymServidorA.tscelda, yychar, yyline ,new String(yytext()));}
"</celda>"      {
                 return new Symbol(SymServidorA.tecelda, yychar, yyline ,new String(yytext()));}
"<formula>"     {
                 return new Symbol(SymServidorA.tsformula, yychar, yyline ,new String(yytext()));}
"</formula>"    {
                 return new Symbol(SymServidorA.teformula, yychar, yyline ,new String(yytext()));}
"<usuarios>"    {
                 return new Symbol(SymServidorA.tsusuarios, yychar, yyline ,new String(yytext()));}
"</usuarios>"   {
                 return new Symbol(SymServidorA.teusuarios, yychar, yyline ,new String(yytext()));}
"<login>"       {
                 return new Symbol(SymServidorA.tslogin, yychar, yyline ,new String(yytext()));}
"</login>"      {
                 return new Symbol(SymServidorA.telogin, yychar, yyline ,new String(yytext()));}
"<estado"       {
                 return new Symbol(SymServidorA.tsestado, yychar, yyline ,new String(yytext()));}
"/estado>"      {
                 return new Symbol(SymServidorA.teestado, yychar, yyline ,new String(yytext()));}
"<respuesta"    {
                 return new Symbol(SymServidorA.tsrespuesta, yychar, yyline ,new String(yytext()));}
"/respuesta>"   {
                 return new Symbol(SymServidorA.terespuesta, yychar, yyline ,new String(yytext()));}
"<emisor"       {
                 return new Symbol(SymServidorA.tsemisor, yychar, yyline ,new String(yytext()));}
"/emisor>"      {
                 return new Symbol(SymServidorA.teemisor, yychar, yyline ,new String(yytext()));}
"<solicitud_amistad>"{
                 return new Symbol(SymServidorA.tssolicitudamistad, yychar, yyline ,new String(yytext()));}
"</solicitud_amistad>"      {
                 return new Symbol(SymServidorA.tesolicitudamistad, yychar, yyline ,new String(yytext()));}
"<mensaje>"     {
                 return new Symbol(SymServidorA.tsmensaje, yychar, yyline ,new String(yytext()));}
"</mensaje>"    {
                 return new Symbol(SymServidorA.temensaje, yychar, yyline ,new String(yytext()));}



"tipo"          { 
                 return new Symbol(SymServidorA.ttipo, yychar, yyline ,new String(yytext()));}
"tama"          { 
                 return new Symbol(SymServidorA.ttama, yychar, yyline ,new String(yytext()));}
"id"            {
                 return new Symbol(SymServidorA.tid, yychar, yyline ,new String(yytext()));}
"peticion"      {
                 return new Symbol(SymServidorA.tpeticion, yychar, yyline ,new String(yytext()));}
"de"            {
                 return new Symbol(SymServidorA.tde, yychar, yyline ,new String(yytext()));}
"fecha"         {
                 return new Symbol(SymServidorA.tfecha, yychar, yyline ,new String(yytext()));}
"fila"          {
                 return new Symbol(SymServidorA.tfila, yychar, yyline ,new String(yytext()));}
"columna"       {
                 return new Symbol(SymServidorA.tcolumna, yychar, yyline ,new String(yytext()));}
"color"         {
                 return new Symbol(SymServidorA.tcolor, yychar, yyline ,new String(yytext()));}
"formula"       {
                 return new Symbol(SymServidorA.tformula, yychar, yyline ,new String(yytext()));}
"instrucciones" {
                 return new Symbol(SymServidorA.tinstrucciones, yychar, yyline ,new String(yytext()));}



 
"="             {
                 return new Symbol(SymServidorA.tigual, yychar, yyline ,new String(yytext()));}
"@"             {
                 return new Symbol(SymServidorA.tarroba, yychar, yyline ,new String(yytext()));}

".com"             {
                 return new Symbol(SymServidorA.tpcom, yychar, yyline ,new String(yytext()));}


/* Operadores Aritméticos */


"+"             {
                 return new Symbol(SymServidorA.tmas, yychar, yyline ,new String(yytext()));}
"-"             {
                 return new Symbol(SymServidorA.tmenos, yychar, yyline ,new String(yytext()));}
"*"             {
                 return new Symbol(SymServidorA.tpor, yychar, yyline ,new String(yytext()));}
"/"             {
                 return new Symbol(SymServidorA.tdividir, yychar, yyline ,new String(yytext()));}
"&"             {
                 return new Symbol(SymServidorA.tconcat, yychar, yyline ,new String(yytext()));}


/* Operadores Comparadoras */

"<"             {
                 return new Symbol(SymServidorA.tmenor, yychar, yyline,new String(yytext()));}
">"             {
                 return new Symbol(SymServidorA.tmayor, yychar, yyline,new String(yytext()));}



/* Operadores Comunes */ 


/* Operadores Lógicos */

"||"    {
        return new Symbol(SymServidorA.tor, yychar,yyline,new String(yytext())); }
"&&"    {
        return new Symbol(SymServidorA.tand, yychar,yyline,new String(yytext())); }
"!"    {
        return new Symbol(SymServidorA.tno, yychar,yyline,new String(yytext())); }


/* Literales */

    {iden}          {
                    return new Symbol(SymServidorA.tiden, yychar,yyline,new String(yytext()));}
    {cadena}        {
                    return new Symbol(SymServidorA.tcadena, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}
    {emailcampo}    {
                    return new Symbol(SymServidorA.temailcampo, yychar,yyline,new String(yytext()));}                
    {fechacadena}   {
                    return new Symbol(SymServidorA.tfechacadena, yychar,yyline,new String(yytext()));}
    {cadcampo}      {
                    return new Symbol(SymServidorA.tcadcampo, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}                
    {entero}        {
                    return new Symbol(SymServidorA.tentero, yychar,yyline,new String(yytext()));}
    {decimal}      {
                    return new Symbol(SymServidorA.tdecimal, yychar,yyline,new String(yytext()));}
               

/* Caracteres ignorados */ 
    [ \t\r\f]+  	{
                        /* Se ignoran */}
    [\n]                 { yychar = 0; }

/* Cualquier Otro */  

.				{ /** rojo **/
                                /** Metodos.agregarErrorLexico( "Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); **/
                                /**Metodos.addError("lexico", yyline, yychar, "Caracter no reconocido: " + yytext());**/
                                System.out.println("Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); } 
