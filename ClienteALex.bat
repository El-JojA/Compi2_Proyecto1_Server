SET JAVA_HOME="C:\Program Files\Java\jdk1.8.0\bin"
SET PATH=%JAVA_HOME%;%PATH%
SET CLASSPATH=%JAVA_HOME%;
SET JFLEX_HOME= C:\Fuentes\jflex-1.4.3\jflex-1.4.3

cd C:\Users\joja\Documents\NetBeansProjects\Compi2_Poryecto1_Server\src\analisis
java -jar %JFLEX_HOME%\lib\JFlex.jar ClienteALex.jflex
pause