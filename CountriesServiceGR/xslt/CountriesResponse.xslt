<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                       xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" 
                       xmlns:ns="http://wso2.qualogy.com/country/response">
	<xsl:output method="xml" version="1.0" indent="yes"/>
	
<xsl:strip-space elements="*"/>

  		<xsl:template match="@*|node()">
			 <xsl:copy>
				  <xsl:apply-templates select="@*|node()"/>
			 </xsl:copy>
		</xsl:template>

	
    <xsl:template match="/" >
       
		   <ns:countryResponse xmlns:ns="http://wso2.qualogy.com/country/response">
				   <ns:countries>
							<xsl:copy-of select="//*[local-name()='jsonArray']/*"/>
				   </ns:countries>
			</ns:countryResponse>
				
     </xsl:template>
 
</xsl:stylesheet>
