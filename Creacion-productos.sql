-- Roles
insert into Rol(nombre) values
('Administrador'),
('Empleado'),
('Supervisor')
go

-- Usuario de ejemplo
insert into Usuario(nombreCompleto,correo,idRol,clave) values 
('Luis Vivero Admin','viveroadmin@verdevida.com',1,'123')
go

-- Categorías de productos del vivero
INSERT INTO Categoria(nombre,esActivo) values
('Plantas Ornamentales',1),
('Plantas Medicinales',1),
('Plantas Aromáticas',1),
('Sustratos y Abonos',1),
('Macetas y Jardineras',1),
('Herramientas de Jardinería',1)
go

-- Productos del vivero
insert into Producto(nombre,idCategoria,stock,precio,esActivo) values
('Helecho Boston',1,25,15000,1),
('Palma Areca',1,15,35000,1),
('Lengua de Suegra',1,30,12000,1),
('Menta',2,50,5000,1),
('Aloe Vera',2,40,8000,1),
('Caléndula',2,35,7000,1),
('Albahaca',3,60,4000,1),
('Romero',3,55,4500,1),
('Lavanda',3,45,6000,1),
('Abono orgánico 1kg',4,20,10000,1),
('Humus de lombriz 2kg',4,15,12000,1),
('Sustrato universal 5kg',4,10,18000,1),
('Maceta cerámica 20cm',5,20,9000,1),
('Maceta plástica colgante',5,25,7000,1),
('Jardinera rectangular 40cm',5,15,12000,1),
('Tijeras de podar',6,10,15000,1),
('Rastrillo pequeño',6,10,10000,1),
('Pala de jardinería',6,10,12000,1)
go

-- Menú del sistema
insert into Menu(nombre,icono,url) values
('Panel Principal','dashboard','/pages/dashboard'),
('Usuarios','group','/pages/usuarios'),
('Productos','local_florist','/pages/productos'),
('Ventas','shopping_cart','/pages/venta'),
('Historial de Ventas','history','/pages/historial_venta'),
('Reportes','bar_chart','/pages/reportes')
go

-- Menús para administrador
insert into MenuRol(idMenu,idRol) values
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1)
go

-- Menús para empleado
insert into MenuRol(idMenu,idRol) values
(4,2),
(5,2)
go

-- Menús para supervisor
insert into MenuRol(idMenu,idRol) values
(3,3),
(4,3),
(5,3),
(6,3)
go

-- Registro inicial para numeración de documentos
insert into numerodocumento(ultimo_Numero,fechaRegistro) values
(0,getdate())
go


SELECT * FROM Producto WHERE idProducto = 18

SELECT * FROM Producto