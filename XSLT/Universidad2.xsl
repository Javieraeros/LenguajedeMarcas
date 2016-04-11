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
					</tr>
					<xsl:for-each select="universidad/carreras/carrera">
						<xsl:choose>
							<xsl:when test="number(creditos)>=260 and position() mod 2=0">
							<!-- No estoy seguro de si este es el color correcto para estas filas -->
								<tr bgcolor="lightblue">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="creditos" />
									</td>
								</tr>
							</xsl:when>
							<xsl:when test="number(creditos)>=260 and position() mod 2=1">
								<tr bgcolor="lightyellow">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="creditos" />
									</td>
								</tr>
							</xsl:when>
						</xsl:choose>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>