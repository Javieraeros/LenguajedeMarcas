<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
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
					<xsl:variable name="idcarrera" select="@id"/>
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
										<xsl:for-each select="//universidad/asignaturas/asignatura[@titulacion=$idcarrera]">
											<xsl:value-of select="nombre"/><br/>
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
										<xsl:for-each select="//universidad/asignaturas/asignatura[@titulacion=$idcarrera]">
											<xsl:value-of select="nombre"/><br/>
										</xsl:for-each>
									</td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>