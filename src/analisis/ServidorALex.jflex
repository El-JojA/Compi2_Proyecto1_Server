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
                 return new Symbol(SymServidorA.tssesion, yychar, yyline ,new String(yytext()));}
"</sesion>"     {
                 return new Symbol(SymServidorA.tesesion, yychar, yyline ,new String(yytext()));}
"<usuario"      {
                 return new Symbol(SymServidorA.tsusuario, yychar, yyline ,new String(yytext()));}
"</usuario>"     {
                 return new Symbol(SymServidorA.teusuario, yychar, yyline ,new String(yytext()));}
"<fecha"        {
                 return new Symbol(SymServidorA.tsfecha, yychar, yyline ,new String(yytext()));}
"</fecha>"       {
                 return new Symbol(SymServidorA.tefecha, yychar, yyline ,new String(yytext()));}
"<nombre"       {
                 return new Symbol(SymServidorA.tsnombre, yychar, yyline ,new String(yytext()));}
"</nombre>"      {
                 return new Symbol(SymServidorA.tenombre, yychar, yyline ,new String(yytext()));}
"<clave"        {
                 return new Symbol(SymServidorA.tsclave, yychar, yyline ,new String(yytext()));}
"</clave>"       {
                 return new Symbol(SymServidorA.teclave, yychar, yyline ,new String(yytext()));}
"<asunto"       {
                 return new Symbol(SymServidorA.tsasunto, yychar, yyline ,new String(yytext()));}
"</asunto>"      {
                 return new Symbol(SymServidorA.teasunto, yychar, yyline ,new String(yytext()));}
"<contenido"    {
                 return new Symbol(SymServidorA.tscontenido, yychar, yyline ,new String(yytext()));}
"</contenido>"   {
                 return new Symbol(SymServidorA.tecontenido, yychar, yyline ,new String(yytext()));}
"<destinatarios" {
                 return new Symbol(SymServidorA.tsdestinatarios, yychar, yyline ,new String(yytext()));}
"</destinatarios>" {
                 return new Symbol(SymServidorA.tedestinatarios, yychar, yyline ,new String(yytext()));}
"<archivos>"    {
                 return new Symbol(SymServidorA.tsarchivos, yychar, yyline ,new String(yytext()));}
"</archivos>"   {
                 return new Symbol(SymServidorA.tearchivos, yychar, yyline ,new String(yytext()));}
"<destinatario" {
                 return new Symbol(SymServidorA.tsdestinatario, yychar, yyline ,new String(yytext()));}
"</destinatario>" {
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
"</estado>"      {
                 return new Symbol(SymServidorA.teestado, yychar, yyline ,new String(yytext()));}
"<respuesta"    {
                 return new Symbol(SymServidorA.tsrespuesta, yychar, yyline ,new String(yytext()));}
"</respuesta>"   {
                 return new Symbol(SymServidorA.terespuesta, yychar, yyline ,new String(yytext()));}
"<emisor"       {
                 return new Symbol(SymServidorA.tsemisor, yychar, yyline ,new String(yytext()));}
"</emisor>"      {
                 return new Symbol(SymServidorA.teemisor, yychar, yyline ,new String(yytext()));}
"<solicitud_amistad" {
                 return new Symbol(SymServidorA.tssolicitudamistad, yychar, yyline ,new String(yytext()));}
"</solicitud_amistad>"      {
                 return new Symbol(SymServidorA.tesolicitudamistad, yychar, yyline ,new String(yytext()));}
"<mensaje>"     {
                 return new Symbol(SymServidorA.tsmensaje, yychar, yyline ,new String(yytext()));}
"</mensaje>"    {
                 return new Symbol(SymServidorA.temensaje, yychar, yyline ,new String(yytext()));}
"<correo>"      {
                 return new Symbol(SymServidorA.tscorreo, yychar, yyline ,new String(yytext()));}
"</correo>"     {
                 return new Symbol(SymServidorA.tecorreo, yychar, yyline ,new String(yytext()));}
"<correos"     {
                 return new Symbol(SymServidorA.tscorreos, yychar, yyline ,new String(yytext()));}
"</correos>"    {
                 return new Symbol(SymServidorA.tecorreos, yychar, yyline ,new String(yytext()));}
"<de"           {
                 return new Symbol(SymServidorA.tsde, yychar, yyline ,new String(yytext()));}
"</de>"         {
                 return new Symbol(SymServidorA.tede, yychar, yyline ,new String(yytext()));}
"<destino"      {
                 return new Symbol(SymServidorA.tsdestino, yychar, yyline ,new String(yytext()));}
"</destino>"    {
                return new Symbol(SymServidorA.tedestino, yychar, yyline ,new String(yytext()));}
"<solicitudes"  {
                 return new Symbol(SymServidorA.tssolicitudes, yychar, yyline ,new String(yytext()));}
"</solicitudes>" {
                return new Symbol(SymServidorA.tesolicitudes, yychar, yyline ,new String(yytext()));}
"<solicitud"    {
                 return new Symbol(SymServidorA.tssolicitud, yychar, yyline ,new String(yytext()));}
"</solicitud>"  {
                return new Symbol(SymServidorA.tesolicitud, yychar, yyline ,new String(yytext()));}


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
"usuario"       {
                 return new Symbol(SymServidorA.tusuario, yychar, yyline ,new String(yytext()));}



 
"="             {
                 return new Symbol(SymServidorA.tigual, yychar, yyline ,new String(yytext()));}
"&"             {
                 return new Symbol(SymServidorA.tamperson, yychar, yyline ,new String(yytext()));}
"("             {
                 return new Symbol(SymServidorA.tpa, yychar, yyline ,new String(yytext()));}
")"             {
                 return new Symbol(SymServidorA.tpc, yychar, yyline ,new String(yytext()));}
"{"             {
                 return new Symbol(SymServidorA.tla, yychar, yyline ,new String(yytext()));}
"}"             {
                 return new Symbol(SymServidorA.tlc, yychar, yyline ,new String(yytext()));}
"oper"          {
                 return new Symbol(SymServidorA.toper, yychar, yyline ,new String(yytext()));}
";"             {
                 return new Symbol(SymServidorA.tpyc, yychar, yyline ,new String(yytext()));}
"return"        {
                 return new Symbol(SymServidorA.treturn, yychar, yyline ,new String(yytext()));}
"end"           {
                 return new Symbol(SymServidorA.tend, yychar, yyline ,new String(yytext()));}
"begin"         {
                 return new Symbol(SymServidorA.tbegin, yychar, yyline ,new String(yytext()));}
","             {
                 return new Symbol(SymServidorA.tcoma, yychar, yyline ,new String(yytext()));}
"si"            {
                 return new Symbol(SymServidorA.tif, yychar, yyline ,new String(yytext()));}
"else"          {
                 return new Symbol(SymServidorA.telse, yychar, yyline ,new String(yytext()));}
"for"           {
                 return new Symbol(SymServidorA.tfor, yychar, yyline ,new String(yytext()));}
"while"         {
                 return new Symbol(SymServidorA.twhile, yychar, yyline ,new String(yytext()));}
"to"            {
                 return new Symbol(SymServidorA.tto, yychar, yyline ,new String(yytext()));}
"next"          {
                 return new Symbol(SymServidorA.tnext, yychar, yyline ,new String(yytext()));}







/* Operadores Aritméticos */

"entero"        {
                 return new Symbol(SymServidorA.tinteger, yychar, yyline ,new String(yytext()));}
"float"         {
                 return new Symbol(SymServidorA.tfloat, yychar, yyline ,new String(yytext()));}
"char"          {
                 return new Symbol(SymServidorA.tchar, yychar, yyline ,new String(yytext()));}
"logico"        {
                 return new Symbol(SymServidorA.tboolean, yychar, yyline ,new String(yytext()));}
"string"        {
                 return new Symbol(SymServidorA.tstring, yychar, yyline ,new String(yytext()));}
"true"          {
                 return new Symbol(SymServidorA.ttrue, yychar, yyline ,new String(yytext()));}
"false"         {
                 return new Symbol(SymServidorA.tfalse, yychar, yyline ,new String(yytext()));}



"+"             {
                 return new Symbol(SymServidorA.tmas, yychar, yyline ,new String(yytext()));}
"-"             {
                 return new Symbol(SymServidorA.tmenos, yychar, yyline ,new String(yytext()));}
"*"             {
                 return new Symbol(SymServidorA.tpor, yychar, yyline ,new String(yytext()));}
"/"             {
                 return new Symbol(SymServidorA.tdividir, yychar, yyline ,new String(yytext()));}
"^"             {
                 return new Symbol(SymServidorA.tpot, yychar, yyline ,new String(yytext()));}
"%"             {
                 return new Symbol(SymServidorA.tmod, yychar, yyline ,new String(yytext()));}
":"             {
                 return new Symbol(SymServidorA.tdospuntos, yychar, yyline ,new String(yytext()));}



/* Operadores Comparadoras */

"<"             {
                 return new Symbol(SymServidorA.tmenor, yychar, yyline,new String(yytext()));}
">"             {
                 return new Symbol(SymServidorA.tmayor, yychar, yyline,new String(yytext()));}
"=="            {
                 return new Symbol(SymServidorA.tigualigual, yychar, yyline,new String(yytext()));}
"<>"            {
                 return new Symbol(SymServidorA.tdiferente, yychar, yyline,new String(yytext()));}
"<="             {
                 return new Symbol(SymServidorA.tmenorigual, yychar, yyline,new String(yytext()));}
">="             {
                 return new Symbol(SymServidorA.tmayorigual, yychar, yyline,new String(yytext()));}



/* Operadores Comunes */ 


/* Operadores Lógicos */



"||"    {
        return new Symbol(SymServidorA.tor, yychar,yyline,new String(yytext())); }
"&&"    {
        return new Symbol(SymServidorA.tand, yychar,yyline,new String(yytext())); }
"!"    {
        return new Symbol(SymServidorA.tno, yychar,yyline,new String(yytext())); }





/* Literales */

    {entero}        {
                    return new Symbol(SymServidorA.tentero, yychar,yyline,new String(yytext()));}
    {decimal}       {
                    return new Symbol(SymServidorA.tdecimal, yychar,yyline,new String(yytext()));}
    {caracter}      {
                    return new Symbol(SymServidorA.tcaracter, yychar,yyline,new String(yytext()));}
    {cadena}        {
                    return new Symbol(SymServidorA.tcadena, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}
    {fechacadena}   {
                    return new Symbol(SymServidorA.tfechacadena, yychar,yyline,new String(yytext()));}
    {cadcampo}      {
                    return new Symbol(SymServidorA.tcadcampo, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}                

               

/* Caracteres ignorados */ 
    [ \t\r\f]+  	{
                        /* Se ignoran */}
    [\n]                 { yychar = 0; }

/* Cualquier Otro */  

.				{ /** rojo **/
                                /** Metodos.agregarErrorLexico( "Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); **/
                                /**Metodos.addError("lexico", yyline, yychar, "Caracter no reconocido: " + yytext());**/
                                System.out.println("Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); } 
