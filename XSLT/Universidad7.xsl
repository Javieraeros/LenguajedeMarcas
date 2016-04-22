<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1>
					<xsl:value-of select="universidad/nombre" />
				</h1>
				<table border="2">
					<tr>
						<th>Nombre de la carrera</th>
						<th>Créditos</th>
						<th>Asignaturas</th>
					</tr>
					<xsl:for-each select="universidad/carreras/carrera">
						<xsl:variable name="idcarrera" select="@id" />
						<xsl:choose>
							<xsl:when test="position() mod 2=0">
								<!-- No estoy seguro de si este es el color correcto para estas filas -->
								<tr bgcolor="lightblue">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="creditos" />
									</td>
									<td>
										<xsl:for-each
											select="//universidad/asignaturas/asignatura[@titulacion=$idcarrera]">
											<xsl:value-of select="nombre[../trimestre='1']" />
											<br />
										</xsl:for-each>
									</td>
									<td>
										<xsl:for-each
											select="//universidad/asignaturas/asignatura[@titulacion=$idcarrera]">
											<xsl:value-of select="nombre[../trimestre='2']" />
											<br />
										</xsl:for-each>
									</td>
								</tr>
							</xsl:when>
							<xsl:otherwise>
								<tr bgcolor="lightyellow">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="creditos" />
									</td>
									<td>
										<xsl:for-each
											select="//universidad/asignaturas/asignatura[@titulacion=$idcarrera]">
											<xsl:value-of select="nombre[../trimestre='1']" />
											<br />
										</xsl:for-each>
									</td>
									<td>
										<xsl:for-each
											select="//universidad/asignaturas/asignatura[@titulacion=$idcarrera]">
											<xsl:value-of select="nombre[../trimestre='2']" />
											<br />
										</xsl:for-each>
									</td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</table>
				<table border="2">
					<tr>
						<th>Nombre de la asignatura</th>
						<th>Créditos teóricos</th>
						<th>Créditos prácticos</th>
						<th>Trimestre</th>
						<th>Carrera en la que se imparte</th>
					</tr>
					<xsl:for-each select="universidad/asignaturas/asignatura">
						<xsl:variable name="titula" select="@titulacion" />
						<tr>
							<td>
								<xsl:value-of select="nombre" />
							</td>
							<td>
								<xsl:value-of select="creditos_teoricos" />
							</td>
							<td>
								<xsl:value-of select="creditos_practicos" />
							</td>
							<td>
								<xsl:value-of select="trimestre" />
							</td>
							<td>
								<xsl:value-of select="//carreras/carrera[@id=$titula]/nombre" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
				<table border="1">
					<th>Primer Apellido</th>
					<th>Segundo Apellido</th>
					<th>Nombre</th>
					<th>Sexo</th>
					<th>Carrera</th>
					<th>Asignaturas</th>
					<xsl:for-each select="universidad/alumnos/alumno">
						<xsl:variable name="carrera" select="estudios/carrera/@codigo" />
						<tr>
							<td>
								<xsl:value-of select="apellido1" />
							</td>
							<td>
								<xsl:value-of select="apellido2" />
							</td>
							<td>
								<xsl:value-of select="nombre" />
							</td>
							<td>
								<xsl:value-of select="sexo" />
							</td>
							<td>
								<xsl:value-of select="//carreras/carrera[@id=$carrera]/nombre" />
							</td>
							<td>
							<xsl:for-each select="estudios/asignaturas/asignatura">
								<xsl:variable name="codigoAsig" select="@codigo"/>
									<xsl:value-of select="//universidad/asignaturas/asignatura[@id=$codigoAsig]/nombre"/>
									<br/>
							</xsl:for-each>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>