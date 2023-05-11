#Can we have hashes as arrays’ elements?

#Sí, Es posible tener hashes como elementos de un array. Esto significa que un array puede contener múltiples
#hashes como sus elementos. Por ejemplo:

arrayDeHashes = [{"Amazonas" => "Leticia", "Antioquia" => "Medellín", "Arauca" => "Arauca"},
{"AS3816" => "COLOMBIA TELECOMUNICACIONES S.A. ESP", "AS13489" => "EPM Telecomunicaciones S.A. E.S.P."},
{1 => "google.com", 2 => "googleapis.com", 3 => "gstatic.com"}]

#En este ejemplo, arrayDeHashes es un array que contiene tres hashes como sus elementos.Para acceder
#a los elementos de un hash dentro de un array se debe utilizar el índice del array y la clave del hash.
#Por ejemplo, para acceder al valor asociado con clave Amazonas en el primer arrayDeHashes, se realiza así:

puts arrayDeHashes[0]["Amazonas"]

#------------------------------------------------------------------------------------------------------------
#Can we have arrays as hashes’ elements?

#Sí, Es posible tener arrays como elementos de un hash. Esto significa que un hash puede contener múltiples
#arrays como sus elementos. Por ejemplo:

hashDeArrays = {"dominios" => ["google.com", "googleapis.com", "gstatic.com", "facebook.com", "microsoft.com"],
"departamentos" => ["Amazonas", "Antioquia", "Arauca", "Atlantico", "Bogotá", "Bolívar", "Boyacá"],
"capitales" => ["Leticia", "Medellín", "Arauca", "Barranquilla", "Bogotá", "Cartagena de índias", "Tunja"]}

#En este ejemplo, hashDeArrays es un hash que contiene tres arrays como sus elementos.Para acceder
#a los elementos de un array dentro de un hash se debe utilizar la clave del hash y el indice del array.
#Por ejemplo, para acceder al valor asociado con indice 2 en el segundo elemento del hash, se realiza así:

puts hashDeArrays["departamentos"][3]

#------------------------------------------------------------------------------------------------------------
#Can an array or a hash be the key of any hash element?

#Sí, Es posible usar tanto arrays como hashes como claves para los elementos de un hash.Por ejemplo,
#se crea un hash en Ruby que use un array como clave de la siguiente manera:

hashConClaveDeArray = {["Leticia", "Medellín", "Arauca", "Barranquilla"] => "capitales",
["Amazonas", "Antioquia", "Arauca", "Atlantico"] => "departamentos",
["google.com", "googleapis.com", "gstatic.com", "facebook.com", "microsoft.com"] => "dominios"}

#En este ejemplo, hashConClaveDeArray es un hash que contiene de clave un array con 4 elementos. Para acceder
#al valor del hash se debe utilizar la clave completa del hash como indice del array. Por ejemplo:

puts hashConClaveDeArray[["Leticia", "Medellín", "Arauca", "Barranquilla"]]

#También se puede usar un hash como clave para un elemento de un hash de la siguiente manera:

hashConClaveDeHash = {{"Amazonas" => "Leticia"} => "departamento",
  {"AS13489" => "EPM Telecomunicaciones S.A. E.S.P."} => "sistema autónomo",
  {1 => "google.com"} => "dominio",
  {"Antioquia" => "Medellín"} => "departamento",
  {"AS10620" => "Telecom Colombia S.A."} => "sistema autónomo"}

#En el ejemplo dado, hashConClaveDeArray es un hash cuyas claves son hashes de un solo elemento.
#Para acceder al valor asociado con la clave en este hash, se debe utilizar la clave completa del hash
#de un solo elemento como la clave del hash principal. Es decir, para acceder al valor del hash, debes
#usar el hash de un solo elemento completo como clave en el hash principal. Por ejemplo:

puts hashConClaveDeHash[{1 => "google.com"}]
