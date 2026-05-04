<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Aditi Book Collection</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2ff;
            margin: 20px;
        }

        h2 {
            text-align: center;
            background-color: #7c3aed;
            color: white;
            padding: 12px;
            border-radius: 8px;
            width: 60%;
            margin: auto;
            margin-bottom: 20px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: auto;
            background-color: white;
            box-shadow: 0 4px 12px rgba(0,0,0,0.15);
        }

        th {
            background-color: #4f46e5;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #e0e7ff;
        }

        tr:hover {
            background-color: #c7d2fe;
        }
    </style>

</head>

<body>

<h2>Aditi Digital Library</h2>

<table border="1">
    <tr>
        <th>Book Title</th>
        <th>Author</th>
        <th>Year</th>
        <th>Price</th>
    </tr>

    <xsl:for-each select="library/book">
        <xsl:sort select="price" data-type="number"/>

        <tr>
            <td><xsl:value-of select="title"/></td>
            <td><xsl:value-of select="author"/></td>
            <td><xsl:value-of select="year"/></td>
            <td><xsl:value-of select="price"/></td>
        </tr>
    </xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>