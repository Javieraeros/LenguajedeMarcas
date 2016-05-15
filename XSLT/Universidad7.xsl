<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/universidad">
		<universidad>
			<nombre>
				<xsl:value-of select="nombre" />
			</nombre>
			<pais>
				<xsl:value-of select="pais" />
			</pais>
			<carreras>
				<xsl:for-each select="carreras/carrera">
					<xsl:variable name="idCarrera" select="@id" />
					<carrera>
						<xsl:attribute name="id">
							<xsl:value-of select="$idCarrera" />
						</xsl:attribute>
						<nombre>
							<xsl:value-of select="nombre" />
						</nombre>
						<plan>
							<xsl:value-of select="plan" />
						</plan>
						<creditos>
							<xsl:value-of select="creditos" />
						</creditos>
						<centro>
							<xsl:value-of select="centro" />
						</centro>
						<xsl:for-each
							select="//universidad/asignaturas/asignatura[@titulacion=$idCarrera]">
							<asignatura>
								<xsl:attribute name="id"><!-- No se puede usar select en esta etiqueta -->
									<xsl:value-of select="@id" />
								</xsl:attribute>
								<nombre>
									<xsl:value-of select="nombre" />
								</nombre>
								<creditos_teoricos>
									<xsl:value-of select="creditos_teoricos" />
								</creditos_teoricos>
								<creditos_practicos>
									<xsl:value-of select="creditos_practicos" />
								</creditos_practicos>
								<trimestre>
									<xsl:value-of select="trimestre" />
								</trimestre>
							</asignatura>
						</xsl:for-each>
					</carrera>
				</xsl:for-each>
			</carreras>
			<asignaturas>
				<xsl:for-each select="asignaturas/asignatura">
					<asignatura>
						<xsl:attribute name="id">
							<xsl:value-of select="@id" />
						</xsl:attribute>
						<xsl:attribute name="titulacion">
							<xsl:value-of select="@titulacion" />
						</xsl:attribute>
						<nombre>
							<xsl:value-of select="nombre" />
						</nombre>
						<creditos_teoricos>
							<xsl:value-of select="creditos_teoricos" />
						</creditos_teoricos>
						<creditos_practicos>
							<xsl:value-of select="creditos_practicos" />
						</creditos_practicos>
						<trimestre>
							<xsl:value-of select="trimestre" />
						</trimestre>
					</asignatura>
				</xsl:for-each>
			</asignaturas>
			<alumnos>
				<xsl:for-each select="alumnos/alumno">
					<alumno>
						<xsl:attribute name="id">
							<xsl:value-of select="@id" />
						</xsl:attribute>
						<xsl:choose>
							<xsl:when test="@beca">
								<xsl:attribute name="beca">
									<xsl:value-of select="@beca" />
								</xsl:attribute>
							</xsl:when>
						</xsl:choose>
						<apellido1>
							<xsl:value-of select="apellido1" />
						</apellido1>
						<apellido2>
							<xsl:value-of select="apellido2" />
						</apellido2>
						<nombre>
							<xsl:value-of select="nombre" />
						</nombre>
						<sexo>
							<xsl:value-of select="sexo" />
						</sexo>
						<estudios>
							<carrera  >
							<xsl:attribute name="codigo">
								<xsl:value-of select="estudios/carrera/@codigo" />
							</xsl:attribute>
							</carrera>
							<asignaturas>
								<xsl:for-each select="estudios/asignaturas/asignatura">
									<asignatura>
									<xsl:attribute name="codigo">
										<xsl:value-of select="@codigo" />
									</xsl:attribute>
									</asignatura>
								</xsl:for-each>
							</asignaturas>
							<xsl:choose>
								<xsl:when test="estudios/proyecto">
									<proyecto><xsl:value-of select="estudios/proyecto"/></proyecto>
								</xsl:when>
							</xsl:choose>
						</estudios>
					</alumno>
				</xsl:for-each>
			</alumnos>
		</universidad>
	</xsl:template>
</xsl:stylesheet>