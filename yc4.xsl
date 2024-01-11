<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>DS khách hàng</title>
				<style>
					table{
					width: 100%;
					}
					.title-heading td{
					padding: 20px;
					}
					.title-heading{
					background: lightblue;
					}
				</style>
			</head>

			<body>
				 <table border="1px" cellspacing="0" cellpadding="10">
                    <tr class="title-heading">
                        <td>ID</td>
                        <td>Name</td>
                        <td>Category_id</td>
                        <td>Desscription</td>
                        <td>Amount</td>
                        <td>Price</td>
                        <td>Size</td>
                        <td>Image</td>
                    </tr>
                    <xsl:for-each select="DSSanpham/Sanpham">
                        <xsl:if test="price &gt; 100000 and size='XXL'">
                            <tr style="background:#ebebeb">
                                <td><xsl:value-of select="id"/></td>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="category_id"/></td>
                                <td><xsl:value-of select="desscription"/></td>
                                <td><xsl:value-of select="amount"/></td>
                                <td><xsl:value-of select="price"/></td>
                                <td><xsl:value-of select="size"/></td>
                                <td><xsl:value-of select="image"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>