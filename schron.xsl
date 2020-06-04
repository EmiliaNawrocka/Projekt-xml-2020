<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  
  <html>
  <body>
  <h2>Schronisko - Psy i Pracownicy interwencyjni</h2>
  <div>
    <xsl:apply-templates/>
  </div>
  </body>
  </html>
</xsl:template>

<xsl:template match="psy">
  <table id="piesy">
      <tr>
        <th colspan="4">Psy</th>
      </tr>
      <tr>
        <th>Imię</th>
        <th>Płeć</th>
        <th>Wiek</th>
        <th>Numer Chip</th>

      </tr>
      <xsl:for-each select="pies">
        <tr>
          <td><xsl:value-of select="imie" /></td>
          <td><xsl:value-of select="@plec" /></td>
          <td><xsl:value-of select="wiek" /></td>
          <td><xsl:value-of select="nr_chip" /></td>
        </tr>
      </xsl:for-each>
    </table>
    <table id="interwencje">
      <tr>
        <th colspan="5">Interwencje</th>
      </tr>
      <tr>
        <th>Imię psa</th>
        <th>ID pracownika</th>
        <th>Data</th>
        <th>Dzielnica</th>
        <th>Ulica</th>

      </tr>
      <xsl:for-each select="pies/interwencja">
        <xsl:sort select="data"/>
        <tr>
          <td><xsl:value-of select="../imie" /></td>
          <td><xsl:value-of select="@id_prac_int" /></td>
          <td><xsl:value-of select="data" /></td>
          <td><xsl:value-of select="dzielnica" /></td>
          <td><xsl:value-of select="ulica" /></td>
        </tr>
      </xsl:for-each>
    </table>
</xsl:template>

<xsl:template match="pracownicy">
  <table id="pracowniki">
      <tr>
        <th colspan="4">Pracownicy</th>
      </tr>
      <tr>
        <th>Imię</th>
        <th>Nazwisko</th>
        <th>ID</th>
        <th>Telefon Komórkowy</th>

      </tr>
      <xsl:for-each select="pracownik">
        <tr>
          <td><xsl:value-of select="imie" /></td>
          <td><xsl:value-of select="nazwisko" /></td>
          <td><xsl:value-of select="@id_pracownika" /></td>
          <td><xsl:value-of select="tel_kom" /></td>
        </tr>
      </xsl:for-each>
    </table>
</xsl:template>

</xsl:stylesheet> 
