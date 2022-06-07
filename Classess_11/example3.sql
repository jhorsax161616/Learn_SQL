SELECT tblCategoria.catNombre, COUNT(tblProducto.proNombre) AS Total
FROM tblCategoria
INNER JOIN tblProducto ON tblCategoria.IDCategoria = tblProducto.IDCategoria
GROUP BY tblCategoria.catNombre