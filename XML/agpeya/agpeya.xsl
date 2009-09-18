<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="content">
<html>
    <head>
        <title>
            Agpeya - <xsl:value-of select="@id"/>
        </title>
    </head>
    <body>
        <table border="0">
            <tr>
                <td align="center">
                    <table border="0">
                        <tr>
                            <td align="center">
                                <h3>
                                    <xsl:value-of select="@id"/>
                                </h3>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td align="center">
                    <table border="0">
                        <xsl:apply-templates/>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>
</xsl:template>

<xsl:template match="paragraph">
    <tr>
        <td align="center">
            <b>
                <xsl:value-of select="title"/>
            </b>
        </td>
    </tr>
    <tr>
        <td align="center">
            <b>
                <i>
                    <xsl:value-of select="header"/>
                </i>
            </b>
        </td>
    </tr>
    <tr>
        <td>
            <p>
                <xsl:value-of select="body"/>
            </p>
        </td>
    </tr>
    <tr>
        <td align="center">
            <b>
                <i>
                    <xsl:value-of select="footer"/>
                </i>
            </b>
        </td>
    </tr>
    <tr>
        <td align="center">
            <hr></hr>
        </td>
    </tr>
</xsl:template>

</xsl:stylesheet>