declare namespace file = "http://expath.org/ns/file";
let $html :=
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Exoplanetas</title>
    <style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        }

    :root {
        --color-principal: #2ecc71;
        --fuente-titulos: 'Segoe UI', sans-serif;
        }
    </style>
</head>
<body>
<h1>Planetas con Habitabilidad Oro</h1>
{
for $p in //Exoplaneta
let $temperatura :=  number ($p/TemperaturaMedia)
where $temperatura>= 10 and $temperatura<= 35
<article>
<a target="_blank" href="img_mountains.jpg">
    <img src="img_mountains.jpg" alt="Planeta" width="600" height="400">
  </a>
return <strong>{$p/NombreComun}</strong>
</article>
}
<body>
</html>
return file:write(
  "C://Desktop/index.html",
  $html,
  map {
    "method": "html",
    "version": "5.0",
    "indent": "yes",
    "omit-xml-declaration": "yes",
    "encoding": "UTF-8"
  }
)

