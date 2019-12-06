<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${titulo}</title>
    <#include "nav.ftl">
</head>
<body>
     <h1>Lista de Estudiantes</h1>
     <table cellspacing="10">
       <head>
           <tr>
               <th>Matricula   </th>
             <th>Nombre</th>
             <th>Telefono</th>
               <th>Acciones</th>
           </tr>
       </head>
     </table>
     <#list lista as es>
        <tr>
            <td>${es.matricula?long?c}</td>
            <td>${es.nombre}</td>
            <td>${es.telefono}</td>
            <td><a href="/estudiante/${es.matricula?long?c}">Editar</a></td>
            <td><a href="/estudiante/eliminar/${es.matricula?long?c}">Borrar</a></td>
        </tr>
     </#list>
</body>
</html>