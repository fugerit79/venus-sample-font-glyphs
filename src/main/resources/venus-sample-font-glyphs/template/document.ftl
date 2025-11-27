<?xml version="1.0" encoding="utf-8"?>
<doc
        xmlns="http://javacoredoc.fugerit.org"
        xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
        xsi:schemaLocation="http://javacoredoc.fugerit.org https://www.fugerit.org/data/java/doc/xsd/doc-2-1.xsd" >

    <#--
        This is a Venus Fugerit Doc (https://github.com/fugerit-org/fj-doc) FreeMarker Template XML (ftl[x]).
        For consideration of Venus Fugerit Doc and Apache FreeMarker integration see :
        https://venusdocs.fugerit.org/guide/#doc-freemarker-entry-point
        The result will be a :
    -->
    <!--
        This is a Venus Fugerit Doc (https://github.com/fugerit-org/fj-doc) XML Source Document.
        For documentation on how to write a valid Venus Doc XML Meta Model refer to :
        https://venusdocs.fugerit.org/guide/#doc-format-entry-point
    -->

    <#assign defaultTitle="My sample title XML">

    <metadata>
        <!-- Margin for document : left;right;top;bottom -->
        <info name="margins">10;10;10;30</info>
        <!-- documenta meta information -->
        <info name="doc-title">${docTitle!defaultTitle}</info>
        <info name="doc-subject">fj doc venus sample source FreeMarker Template XML - ftlx</info>
        <info name="doc-author">fugerit79</info>
        <info name="doc-language">en</info>
        <!-- property specific for xls/xlsx -->
        <info name="excel-table-id">data-table=print</info>
        <!-- property specific for csv -->
        <info name="csv-table-id">data-table</info>
        <info name="default-font-name">TitilliumWeb</info>
        <footer-ext>
            <para align="right">${r"${currentPage}"} / ${r"${pageCount}"}</para>
        </footer-ext>
    </metadata>
    <body>
    <para>${docTitle!defaultTitle}</para>
    <phrase>Sample glyph</phrase><phrase font-name="NotoSans">□</phrase><phrase>with free serif font</phrase>
    <para>Sample with SVG image</para>
    <image type="svg" alt="Glyph with SVG"><![CDATA[<svg xmlns="http://www.w3.org/2000/svg" fill="#000000" width="10px" height="10px" viewBox="0 0 24 24"><path d="M21,2H3A1,1,0,0,0,2,3V21a1,1,0,0,0,1,1H21a1,1,0,0,0,1-1V3A1,1,0,0,0,21,2ZM20,20H4V4H20Z"/></svg>]]></image>
    <table columns="3" colwidths="30;30;40"  width="100" id="data-table" padding="2">
        <row header="true">
            <cell align="center"><para>Name</para></cell>
            <cell align="center"><para>Surname</para></cell>
            <cell align="center"><para>Title</para></cell>
        </row>
        <#if listPeople??>
            <#list listPeople as current>
                <row>
                    <cell><para>${current.name}</para></cell>
                    <cell><para>${current.surname}</para></cell>
                    <cell><para>${current.title}</para></cell>
                </row>
            </#list>
        </#if>
    </table>
    </body>

</doc>