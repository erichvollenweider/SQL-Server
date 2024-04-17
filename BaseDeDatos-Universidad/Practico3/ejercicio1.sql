-- Practica 3
-- Ejercicio 1.a
select * from producto where precio >= 1500;

-- Ejercicio 1.b
select itemfactura.COD_PRODUCTO, producto.DESCRIPCION from producto inner join itemfactura
on producto.COD_PRODUCTO = itemfactura.COD_PRODUCTO
where itemfactura.cantidad > 2 order by producto.DESCRIPCION;

-- Ejercicio 1.c
select * from cliente 
where NRO_CLIENTE not in (select NRO_CLIENTE from factura) order by APELLIDO DESC, NOMBRE DESC;

-- Ejercicio 1.d
select * from producto
where COD_PRODUCTO not in (select COD_PRODUCTO from itemfactura);

-- Ejercicio 1.e
select * from cliente
left outer join factura
on cliente.NRO_CLIENTE = factura.NRO_CLIENTE;




