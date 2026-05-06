<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Student Performance Report</title>

    <style>
        body {
            font-family: Verdana;
            background-color: #fff5f7;
        }

        .header {
            text-align: center;
            background-color: #f8c8dc;
            color: #8b3a62;
            padding: 15px;
            border-radius: 10px;
            width: 70%;
            margin: auto;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 75%;
            margin: auto;
            background-color: white;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        th {
            background-color: #f8c8dc;
            color: #8b3a62;
            padding: 12px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #fff0f5;
        }

        tr:hover {
            background-color: #fde2eb;
        }
    </style>

</head>

<body>

<div class="header">
    <h2>Student Performance Report</h2>
    <p>Filtered Result (Marks ≥ 90)</p>
</div>

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