<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<alumnos>
			<xsl:for-each select="colegio/alumnos/alumno">
				<xsl:variable name="idAlumno">
					<xsl:value-of select="@id" />
				</xsl:variable>

				<alumno>
					<nombre>
						<xsl:value-of select="nombre" />
					</nombre>
					<notas>
						<xsl:for-each select="//colegio/asignaturas/asignatura">
							<xsl:variable name="idAsignatura">
								<xsl:value-of select="@id" />
							</xsl:variable>
							<nota>
								<asignatura>

									<xsl:value-of select="nombre" />

								</asignatura>
								<calificacion>
									<xsl:value-of select="//colegio/notas/nota[alumno=$idAlumno and asignatura=$idAsignatura]/calificacion"/>
								</calificacion>
							</nota>
						</xsl:for-each>
					</notas>
				</alumno>
			</xsl:for-each>
		</alumnos>
	</xsl:template>
</xsl:stylesheet>