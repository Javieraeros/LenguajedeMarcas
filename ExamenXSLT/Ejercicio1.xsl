<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">

					<tr>
						<td>
							<b>id</b>
						</td>
						<xsl:for-each select="colegio/asignaturas/asignatura">
							<xsl:choose>
								<xsl:when test="modalidad='B'">
									<td bgcolor="red">
										<xsl:value-of select="@id" />
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td bgcolor="white">
										<xsl:value-of select="@id" />
									</td>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each>
					</tr>
					<tr>
						<td>
							<b>Nombre</b>
						</td>
						<xsl:for-each select="colegio/asignaturas/asignatura">
							<xsl:choose>
								<xsl:when test="modalidad='B'">
									<td bgcolor="red">
										<xsl:value-of select="nombre" />
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td bgcolor="white">
										<xsl:value-of select="nombre" />
									</td>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each>
					</tr>
					<tr>
						<td>
							<b>Modalidad</b>
						</td>
						<xsl:for-each select="colegio/asignaturas/asignatura">
							<xsl:choose>
								<xsl:when test="modalidad='B'">
									<td bgcolor="red">
										<xsl:value-of select="modalidad" />
									</td>
								</xsl:when>
								<xsl:otherwise>
									<td bgcolor="white">
										<xsl:value-of select="modalidad" />
									</td>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:for-each>
					</tr>

				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>