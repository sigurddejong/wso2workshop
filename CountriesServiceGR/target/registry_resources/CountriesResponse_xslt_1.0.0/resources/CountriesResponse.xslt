<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" indent="yes"/>
	<xsl:param name="ns" select="'http://wso2.qualogy.com/country/response'"/>

	<xsl:template match="/">
		<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ns="http://wso2.qualogy.com/country/response">
			<soapenv:Header/>
			<soapenv:Body>
				<ns:countryResponse xmlns:ns="http://wso2.qualogy.com/country/response">
					<xsl:copy-of select="//*[local-name()='jsonArray']/*"/>
				</ns:countryResponse>
			</soapenv:Body>
		</soapenv:Envelope>
	</xsl:template>
</xsl:stylesheet>
