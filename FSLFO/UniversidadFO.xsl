<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="Universidad"
					page-width="210mm" page-height="297mm" margin-top="1cm"
					margin-bottom="1cm" margin-left="1cm" margin-right="1cm">
					<fo:region-body margin="1cm" />
					<fo:region-before extent="2cm" />
					<fo:region-after extent="2cm" />
					<fo:region-start extent="2cm" />
					<fo:region-end extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="Universidad">
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:value-of select="universidad/nombre" />
					</fo:block>
					<fo:table>
						<fo:table-column column-width="60mm" />
						<fo:table-column column-width="25mm" />
						<fo:table-column column-width="100mm" />

						<fo:table-header>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-weight="bold">Nombre de la carrera</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">Créditos</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">Asignaturas</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-header>
						<fo:table-body>
							<xsl:for-each select="universidad/carreras/carrera">
								<xsl:variable name="idcarrera" select="@id" />
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											<xsl:value-of select="nombre" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block>
											<xsl:value-of select="creditos" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block linefeed-treatment="preserve">
											<xsl:for-each
												select="//universidad/asignaturas/asignatura[@titulacion=$idcarrera]">
												<xsl:value-of select="nombre" /><xsl:text>&#xA;</xsl:text>
											</xsl:for-each>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>