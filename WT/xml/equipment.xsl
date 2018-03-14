<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>EquipmentInfo</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>equipmentname</th>
        <th>type</th>
        <th>modelname</th>
        <th>serialnumber</th>
        <th>descripition</th>
        <th>availability</th>
        <th>condition</th>
        <th>name</th>
        <th>address</th>
        <th>phone</th>
        <th>email</th>
       
     
     
      </tr>
      <xsl:for-each select="EquipmentInfo">
        <tr>
          <td><xsl:value-of select="equipmentname"/></td>
          <td><xsl:value-of select="type"/></td>
           <td><xsl:value-of select="modelname"/></td>
          <td><xsl:value-of select="serialnumber"/></td>
          <td><xsl:value-of select="description"/></td>
          <td><xsl:value-of select="availability"/></td>
           <td><xsl:value-of select="condition"/></td>
            <xsl:for-each select="contactinfo">
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="address"/></td>
              <td><xsl:value-of select="phone"/></td>
              <td><xsl:value-of select="email"/></td>
             </xsl:for-each>


        </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>
