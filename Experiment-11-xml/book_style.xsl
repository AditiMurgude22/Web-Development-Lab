<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" indent="yes"/>

<xsl:template match="/">

<html>
<head>
    <title>Aditi Digital Library</title>

    <style>
        body{
            font-family:Verdana;
            background-color:#fff5f7;
            margin:20px;
        }

        .header{
            text-align:center;
            background:#f8c8dc;
            color:#8b3a62;
            padding:15px;
            border-radius:12px;
            width:70%;
            margin:auto;
        }

        .info{
            text-align:center;
            margin:10px;
            color:#6b5563;
        }

        table{
            border-collapse:collapse;
            width:80%;
            margin:auto;
            background:white;
            box-shadow:0 5px 15px rgba(0,0,0,0.1);
            margin-top:20px;
        }

        th{
            background:#f4a6c1;
            color:white;
            padding:12px;
        }

        td{
            padding:10px;
            text-align:center;
        }

        tr:nth-child(even){
            background:#fff0f5;
        }

        tr:hover{
            background:#fde2eb;
        }
    </style>

</head>

<body>

<div class="header">
    <h2>Aditi Digital Book Hub</h2>
</div>

<div class="info">
    <p>Experiment 11 - XML Digital Library</p>
</div>

<table border="1">

<tr>
    <th>ID</th>
    <th>Title</th>
    <th>Author</th>
    <th>Category</th>
    <th>Price</th>
</tr>

<xsl:for-each select="library/book">

<tr>
    <td><xsl:value-of select="@id"/></td>
    <td><xsl:value-of select="title"/></td>
    <td><xsl:value-of select="author"/></td>
    <td><xsl:value-of select="@category"/></td>
    <td><xsl:value-of select="price"/></td>
</tr>

</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
