package analisis;
import java_cup.runtime.Symbol;
import java.util.*;

%%


%class ServidorALex
%cupsym ServidorASym
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
                 return new Symbol(ServidorASym.tssesion, yychar, yyline ,new String(yytext()));}
"</sesion>"     {
                 return new Symbol(ServidorASym.tesesion, yychar, yyline ,new String(yytext()));}
"<usuario"      {
                 return new Symbol(ServidorASym.tsusuario, yychar, yyline ,new String(yytext()));}
"</usuario>"     {
                 return new Symbol(ServidorASym.teusuario, yychar, yyline ,new String(yytext()));}
"<fecha"        {
                 return new Symbol(ServidorASym.tsfecha, yychar, yyline ,new String(yytext()));}
"</fecha>"       {
                 return new Symbol(ServidorASym.tefecha, yychar, yyline ,new String(yytext()));}
"<nombre"       {
                 return new Symbol(ServidorASym.tsnombre, yychar, yyline ,new String(yytext()));}
"</nombre>"      {
                 return new Symbol(ServidorASym.tenombre, yychar, yyline ,new String(yytext()));}
"<clave"        {
                 return new Symbol(ServidorASym.tsclave, yychar, yyline ,new String(yytext()));}
"</clave>"       {
                 return new Symbol(ServidorASym.teclave, yychar, yyline ,new String(yytext()));}
"<asunto"       {
                 return new Symbol(ServidorASym.tsasunto, yychar, yyline ,new String(yytext()));}
"</asunto>"      {
                 return new Symbol(ServidorASym.teasunto, yychar, yyline ,new String(yytext()));}
"<contenido"    {
                 return new Symbol(ServidorASym.tscontenido, yychar, yyline ,new String(yytext()));}
"</contenido>"   {
                 return new Symbol(ServidorASym.tecontenido, yychar, yyline ,new String(yytext()));}
"<destinatarios" {
                 return new Symbol(ServidorASym.tsdestinatarios, yychar, yyline ,new String(yytext()));}
"</destinatarios>" {
                 return new Symbol(ServidorASym.tedestinatarios, yychar, yyline ,new String(yytext()));}
"<archivos>"    {
                 return new Symbol(ServidorASym.tsarchivos, yychar, yyline ,new String(yytext()));}
"</archivos>"   {
                 return new Symbol(ServidorASym.tearchivos, yychar, yyline ,new String(yytext()));}
"<destinatario" {
                 return new Symbol(ServidorASym.tsdestinatario, yychar, yyline ,new String(yytext()));}
"</destinatario>" {
                 return new Symbol(ServidorASym.tedestinatario, yychar, yyline ,new String(yytext()));}
"<archivo"      {
                 return new Symbol(ServidorASym.tsarchivo, yychar, yyline ,new String(yytext()));}
"</archivo>"    {
                 return new Symbol(ServidorASym.tearchivo, yychar, yyline ,new String(yytext()));}
"<celda"        {
                 return new Symbol(ServidorASym.tscelda, yychar, yyline ,new String(yytext()));}
"</celda>"      {
                 return new Symbol(ServidorASym.tecelda, yychar, yyline ,new String(yytext()));}
"<formula>"     {
                 return new Symbol(ServidorASym.tsformula, yychar, yyline ,new String(yytext()));}
"</formula>"    {
                 return new Symbol(ServidorASym.teformula, yychar, yyline ,new String(yytext()));}
"<usuarios>"    {
                 return new Symbol(ServidorASym.tsusuarios, yychar, yyline ,new String(yytext()));}
"</usuarios>"   {
                 return new Symbol(ServidorASym.teusuarios, yychar, yyline ,new String(yytext()));}
"<login>"       {
                 return new Symbol(ServidorASym.tslogin, yychar, yyline ,new String(yytext()));}
"</login>"      {
                 return new Symbol(ServidorASym.telogin, yychar, yyline ,new String(yytext()));}
"<estado"       {
                 return new Symbol(ServidorASym.tsestado, yychar, yyline ,new String(yytext()));}
"</estado>"      {
                 return new Symbol(ServidorASym.teestado, yychar, yyline ,new String(yytext()));}
"<respuesta"    {
                 return new Symbol(ServidorASym.tsrespuesta, yychar, yyline ,new String(yytext()));}
"</respuesta>"   {
                 return new Symbol(ServidorASym.terespuesta, yychar, yyline ,new String(yytext()));}
"<emisor"       {
                 return new Symbol(ServidorASym.tsemisor, yychar, yyline ,new String(yytext()));}
"</emisor>"      {
                 return new Symbol(ServidorASym.teemisor, yychar, yyline ,new String(yytext()));}
"<solicitud_amistad" {
                 return new Symbol(ServidorASym.tssolicitudamistad, yychar, yyline ,new String(yytext()));}
"</solicitud_amistad>"      {
                 return new Symbol(ServidorASym.tesolicitudamistad, yychar, yyline ,new String(yytext()));}
"<mensaje>"     {
                 return new Symbol(ServidorASym.tsmensaje, yychar, yyline ,new String(yytext()));}
"</mensaje>"    {
                 return new Symbol(ServidorASym.temensaje, yychar, yyline ,new String(yytext()));}
"<correo>"      {
                 return new Symbol(ServidorASym.tscorreo, yychar, yyline ,new String(yytext()));}
"</correo>"     {
                 return new Symbol(ServidorASym.tecorreo, yychar, yyline ,new String(yytext()));}
"<correos"     {
                 return new Symbol(ServidorASym.tscorreos, yychar, yyline ,new String(yytext()));}
"</correos>"    {
                 return new Symbol(ServidorASym.tecorreos, yychar, yyline ,new String(yytext()));}
"<de"           {
                 return new Symbol(ServidorASym.tsde, yychar, yyline ,new String(yytext()));}
"</de>"         {
                 return new Symbol(ServidorASym.tede, yychar, yyline ,new String(yytext()));}
"<destino"      {
                 return new Symbol(ServidorASym.tsdestino, yychar, yyline ,new String(yytext()));}
"</destino>"    {
                return new Symbol(ServidorASym.tedestino, yychar, yyline ,new String(yytext()));}
"<solicitudes"  {
                 return new Symbol(ServidorASym.tssolicitudes, yychar, yyline ,new String(yytext()));}
"</solicitudes>" {
                return new Symbol(ServidorASym.tesolicitudes, yychar, yyline ,new String(yytext()));}
"<solicitud"    {
                 return new Symbol(ServidorASym.tssolicitud, yychar, yyline ,new String(yytext()));}
"</solicitud>"  {
                return new Symbol(ServidorASym.tesolicitud, yychar, yyline ,new String(yytext()));}


"tipo"          { 
                 return new Symbol(ServidorASym.ttipo, yychar, yyline ,new String(yytext()));}
"tama"          { 
                 return new Symbol(ServidorASym.ttama, yychar, yyline ,new String(yytext()));}
"id"            {
                 return new Symbol(ServidorASym.tid, yychar, yyline ,new String(yytext()));}
"peticion"      {
                 return new Symbol(ServidorASym.tpeticion, yychar, yyline ,new String(yytext()));}
"de"            {
                 return new Symbol(ServidorASym.tde, yychar, yyline ,new String(yytext()));}
"fecha"         {
                 return new Symbol(ServidorASym.tfecha, yychar, yyline ,new String(yytext()));}
"fila"          {
                 return new Symbol(ServidorASym.tfila, yychar, yyline ,new String(yytext()));}
"columna"       {
                 return new Symbol(ServidorASym.tcolumna, yychar, yyline ,new String(yytext()));}
"color"         {
                 return new Symbol(ServidorASym.tcolor, yychar, yyline ,new String(yytext()));}
"formula"       {
                 return new Symbol(ServidorASym.tformula, yychar, yyline ,new String(yytext()));}
"usuario"       {
                 return new Symbol(ServidorASym.tusuario, yychar, yyline ,new String(yytext()));}



 
"="             {
                 return new Symbol(ServidorASym.tigual, yychar, yyline ,new String(yytext()));}
"&"             {
                 return new Symbol(ServidorASym.tamperson, yychar, yyline ,new String(yytext()));}
"("             {
                 return new Symbol(ServidorASym.tpa, yychar, yyline ,new String(yytext()));}
")"             {
                 return new Symbol(ServidorASym.tpc, yychar, yyline ,new String(yytext()));}
"{"             {
                 return new Symbol(ServidorASym.tla, yychar, yyline ,new String(yytext()));}
"}"             {
                 return new Symbol(ServidorASym.tlc, yychar, yyline ,new String(yytext()));}
"oper"          {
                 return new Symbol(ServidorASym.toper, yychar, yyline ,new String(yytext()));}
";"             {
                 return new Symbol(ServidorASym.tpyc, yychar, yyline ,new String(yytext()));}
"return"        {
                 return new Symbol(ServidorASym.treturn, yychar, yyline ,new String(yytext()));}
"end"           {
                 return new Symbol(ServidorASym.tend, yychar, yyline ,new String(yytext()));}
"begin"         {
                 return new Symbol(ServidorASym.tbegin, yychar, yyline ,new String(yytext()));}
","             {
                 return new Symbol(ServidorASym.tcoma, yychar, yyline ,new String(yytext()));}
"si"            {
                 return new Symbol(ServidorASym.tif, yychar, yyline ,new String(yytext()));}
"else"          {
                 return new Symbol(ServidorASym.telse, yychar, yyline ,new String(yytext()));}
"for"           {
                 return new Symbol(ServidorASym.tfor, yychar, yyline ,new String(yytext()));}
"while"         {
                 return new Symbol(ServidorASym.twhile, yychar, yyline ,new String(yytext()));}
"to"            {
                 return new Symbol(ServidorASym.tto, yychar, yyline ,new String(yytext()));}
"next"          {
                 return new Symbol(ServidorASym.tnext, yychar, yyline ,new String(yytext()));}







/* Operadores Aritméticos */

"entero"        {
                 return new Symbol(ServidorASym.tinteger, yychar, yyline ,new String(yytext()));}
"float"         {
                 return new Symbol(ServidorASym.tfloat, yychar, yyline ,new String(yytext()));}
"char"          {
                 return new Symbol(ServidorASym.tchar, yychar, yyline ,new String(yytext()));}
"logico"        {
                 return new Symbol(ServidorASym.tboolean, yychar, yyline ,new String(yytext()));}
"string"        {
                 return new Symbol(ServidorASym.tstring, yychar, yyline ,new String(yytext()));}
"true"          {
                 return new Symbol(ServidorASym.ttrue, yychar, yyline ,new String(yytext()));}
"false"         {
                 return new Symbol(ServidorASym.tfalse, yychar, yyline ,new String(yytext()));}



"+"             {
                 return new Symbol(ServidorASym.tmas, yychar, yyline ,new String(yytext()));}
"-"             {
                 return new Symbol(ServidorASym.tmenos, yychar, yyline ,new String(yytext()));}
"*"             {
                 return new Symbol(ServidorASym.tpor, yychar, yyline ,new String(yytext()));}
"/"             {
                 return new Symbol(ServidorASym.tdividir, yychar, yyline ,new String(yytext()));}
"^"             {
                 return new Symbol(ServidorASym.tpot, yychar, yyline ,new String(yytext()));}
"%"             {
                 return new Symbol(ServidorASym.tmod, yychar, yyline ,new String(yytext()));}
":"             {
                 return new Symbol(ServidorASym.tdospuntos, yychar, yyline ,new String(yytext()));}



/* Operadores Comparadoras */

"<"             {
                 return new Symbol(ServidorASym.tmenor, yychar, yyline,new String(yytext()));}
">"             {
                 return new Symbol(ServidorASym.tmayor, yychar, yyline,new String(yytext()));}
"=="            {
                 return new Symbol(ServidorASym.tigualigual, yychar, yyline,new String(yytext()));}
"<>"            {
                 return new Symbol(ServidorASym.tdiferente, yychar, yyline,new String(yytext()));}
"<="             {
                 return new Symbol(ServidorASym.tmenorigual, yychar, yyline,new String(yytext()));}
">="             {
                 return new Symbol(ServidorASym.tmayorigual, yychar, yyline,new String(yytext()));}



/* Operadores Comunes */ 


/* Operadores Lógicos */



"||"    {
        return new Symbol(ServidorASym.tor, yychar,yyline,new String(yytext())); }
"&&"    {
        return new Symbol(ServidorASym.tand, yychar,yyline,new String(yytext())); }
"!"    {
        return new Symbol(ServidorASym.tno, yychar,yyline,new String(yytext())); }





/* Literales */

    {entero}        {
                    return new Symbol(ServidorASym.tentero, yychar,yyline,new String(yytext()));}
    {decimal}       {
                    return new Symbol(ServidorASym.tdecimal, yychar,yyline,new String(yytext()));}
    {caracter}      {
                    return new Symbol(ServidorASym.tcaracter, yychar,yyline,new String(yytext()));}
    {cadena}        {
                    return new Symbol(ServidorASym.tcadena, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}
    {fechacadena}   {
                    return new Symbol(ServidorASym.tfechacadena, yychar,yyline,new String(yytext()));}
    {cadcampo}      {
                    return new Symbol(ServidorASym.tcadcampo, yychar,yyline,new String(yytext().substring(1, yytext().length()-1)));}                

               

/* Caracteres ignorados */ 
    [ \t\r\f]+  	{
                        /* Se ignoran */}
    [\n]                 { yychar = 0; }

/* Cualquier Otro */  

.				{ /** rojo **/
                                /** Metodos.agregarErrorLexico( "Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); **/
                                /**Metodos.addError("lexico", yyline, yychar, "Caracter no reconocido: " + yytext());**/
                                System.out.println("Error lexico: " + yytext() + " en la linea: " + yyline + " y columna " + yychar); } 
