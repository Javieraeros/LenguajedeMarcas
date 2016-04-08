<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<table border="1">
					<tr bgcolor="green">
						<th>Equipo</th>
						<th>Partidos Jugados</th>
						<th>Partidos Ganados</th>
						<th>Partidos Empatados</th>
						<th>Partidos Perdidos</th>
						<th>Goles a favor</th>
						<th>Goles en Contra</th>
						<th>Puntos</th>
					</tr>
					<xsl:for-each select="equipos/equipo">
						<xsl:choose>
							<xsl:when test="position()>=18">
								<tr bgcolor="red">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="partidosjugados" />
									</td>
									<td>
										<xsl:value-of select="partidosganados" />
									</td>
									<td>
										<xsl:value-of select="partidosempatados" />
									</td>
									<td>
										<xsl:value-of select="partidosperdidos" />
									</td>
									<td>
										<xsl:value-of select="golesfavor" />
									</td>
									<td>
										<xsl:value-of select="golescontra" />
									</td>
									<td>
										<xsl:value-of select="puntos" />
									</td>
								</tr>
							</xsl:when>
							<xsl:when test="position()>=7">
								<tr bgcolor="white">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="partidosjugados" />
									</td>
									<td>
										<xsl:value-of select="partidosganados" />
									</td>
									<td>
										<xsl:value-of select="partidosempatados" />
									</td>
									<td>
										<xsl:value-of select="partidosperdidos" />
									</td>
									<td>
										<xsl:value-of select="golesfavor" />
									</td>
									<td>
										<xsl:value-of select="golescontra" />
									</td>
									<td>
										<xsl:value-of select="puntos" />
									</td>
								</tr>
							</xsl:when>
							<xsl:when test="position()>=5">
								<tr bgcolor="yellow">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="partidosjugados" />
									</td>
									<td>
										<xsl:value-of select="partidosganados" />
									</td>
									<td>
										<xsl:value-of select="partidosempatados" />
									</td>
									<td>
										<xsl:value-of select="partidosperdidos" />
									</td>
									<td>
										<xsl:value-of select="golesfavor" />
									</td>
									<td>
										<xsl:value-of select="golescontra" />
									</td>
									<td>
										<xsl:value-of select="puntos" />
									</td>
								</tr>
							</xsl:when>
							<xsl:otherwise>
								<tr bgcolor="green">
									<td>
										<xsl:value-of select="nombre" />
									</td>
									<td>
										<xsl:value-of select="partidosjugados" />
									</td>
									<td>
										<xsl:value-of select="partidosganados" />
									</td>
									<td>
										<xsl:value-of select="partidosempatados" />
									</td>
									<td>
										<xsl:value-of select="partidosperdidos" />
									</td>
									<td>
										<xsl:value-of select="golesfavor" />
									</td>
									<td>
										<xsl:value-of select="golescontra" />
									</td>
									<td>
										<xsl:value-of select="puntos" />
									</td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:sort select="puntos" order="descending" />
					</xsl:for-each>
				</table>
				<br/>
				<table border="1">
					<tr bgcolor="green">
						<th>Equipo</th>
						<th>Partidos Jugados</th>
						<th>Partidos Ganados</th>
						<th>Partidos Empatados</th>
						<th>Partidos Perdidos</th>
						<th>Goles a favor</th>
						<th>Goles en Contra</th>
						<th>Puntos</th>
					</tr>
					<xsl:for-each select="equipos/equipo">
						<xsl:choose>
							<xsl:when test="position()>=4"/>
							<xsl:otherwise> <!-- No se puede poner < en un test -->

								<tr>
									<td><xsl:value-of select="nombre" /></td>
									<td><xsl:value-of select="partidosjugados" /></td>
									<td><xsl:value-of select="partidosganados" /></td>
									<td><xsl:value-of select="partidosempatados" /></td>
									<td><xsl:value-of select="partidosperdidos" /></td>
									<td><xsl:value-of select="golesfavor" /></td>
									<td><xsl:value-of select="golescontra" /></td>
									<td><xsl:value-of select="puntos" /></td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:sort select="golesfavor" order="descending" />
					</xsl:for-each>
				</table>
				<br/>
				<table border="1">
					<tr bgcolor="green">
						<th>Equipo</th>
						<th>Partidos Jugados</th>
						<th>Partidos Ganados</th>
						<th>Partidos Empatados</th>
						<th>Partidos Perdidos</th>
						<th>Goles a favor</th>
						<th>Goles en Contra</th>
						<th>Puntos</th>
					</tr>
					<xsl:for-each select="equipos/equipo">
						<xsl:choose>
							<xsl:when test="position()>=18"> <!-- No se puede poner < en un test -->

								<tr>
									<td><xsl:value-of select="nombre" />
									</td>
									<td><xsl:value-of select="partidosjugados" />
									</td>
									<td><xsl:value-of select="partidosganados" />
									</td>
									<td><xsl:value-of select="partidosempatados" />
									</td>
									<td><xsl:value-of select="partidosperdidos" />
									</td>
									<td><xsl:value-of select="golesfavor" />
									</td>
									<td><xsl:value-of select="golescontra" />
									</td>
									<td><xsl:value-of select="puntos" />
									</td>
								</tr>
							</xsl:when>
						</xsl:choose>
						<xsl:sort select="golesfavor" order="descending" />
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>