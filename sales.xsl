<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Sales Table</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    th, td {
                        border: 1px solid black;
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Sales Table</h2>
                <table>
                    <tr>
                        <th>Sale ID</th>
                        <th>Sale Date</th>
                        <th>Product Name</th>
                        <th>Price</th>
                        <th>Total</th>
                    </tr>
                    <xsl:for-each select="sales/sale">
                        <tr>
                            <td><xsl:value-of select="saleid" /></td>
                            <td><xsl:value-of select="saledate" /></td>
                            <td><xsl:value-of select="productname" /></td>
                            <td><xsl:value-of select="price" /></td>
                            <td><xsl:value-of select="total" /></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
