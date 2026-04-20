for $p in //Exoplaneta
let $temperatura :=  number ($p/TemperaturaMedia)
where $temperatura>= 10 and $temperatura<= 35
return $p/NombreComun