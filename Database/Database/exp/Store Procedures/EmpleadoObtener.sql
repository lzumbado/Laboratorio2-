CREATE PROCEDURE [exp].[EmpleadoObtener]
      @IdEmpleado int= NULL
AS BEGIN
  SET NOCOUNT ON

  SELECT 
     E.IdEmpleado,
     E.Nombre,
     E.PrimerApellido,
     E.SegundoApellido,
     E.Identificacion,
     E.TipoIdentificacion,
     E.Edad,
     E.FechaNacimiento    
    FROM EXP.Empleado E
    WHERE
    (@IdEmpleado IS NULL OR IdEmpleado=@IdEmpleado)

END