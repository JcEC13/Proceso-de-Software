use BD_Tienda;
create table tblProducto
(
codProducto int PRIMARY KEY,
nombreProducto varchar,
categoriaProducto varchar,
codProveedor int,
precioProducto decimal,
stockProducto int
)
create table tblPedido
(
codPedido int PRIMARY KEY,
codCliente int,
fechaPedido date,
fechaEntrega date,
modoPedido varchar,
codProducto int,
Foreign key(codProducto) references tblProducto
)