<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Student Result Report</title>

    <style>
        body {
            font-family: Verdana;
            background-color: #eff6ff;
        }

        table {
            border-collapse: collapse;
            width: 75%;
            margin: auto;
            background-color: white;
            box-shadow: 0 4px 10px rgba(0,0,0,0.15);
        }

        th {
            background-color: #2563eb;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #dbeafe;
        }

        h2 {
            text-align: center;
            color: white;
            background-color: #1d4ed8;
            padding: 12px;
            width: 60%;
            margin: auto;
            margin-bottom: 20px;
            border-radius: 8px;
        }
    </style>

</head>

<body>

<h2>Student Performance Report</h2>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Subject</th>
        <th>Score</th>
    </tr>

    <xsl:for-each select="results/candidate">

        <xsl:if test="score &gt;= 90">
            <tr>
                <td><xsl:value-of select="@id"/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="subject"/></td>
                <td><xsl:value-of select="score"/></td>
            </tr>
        </xsl:if>

    </xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>