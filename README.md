# venus-sample-font-glyphs

Venus Fugerit Doc sample, showing how to use different Fonts to handle glyphs. (for instance □ - &#x25A1;)

[![Keep a Changelog v1.1.0 badge](https://img.shields.io/badge/changelog-Keep%20a%20Changelog%20v1.1.0-%23E05735)](CHANGELOG.md)
[![Quality Gate Status](https://sonarcloud.io/api/project_badges/measure?project=fugerit79_venus-sample-font-glyphs&metric=alert_status)](https://sonarcloud.io/summary/new_code?id=fugerit79_venus-sample-font-glyphs)
[![Coverage](https://sonarcloud.io/api/project_badges/measure?project=fugerit79_venus-sample-font-glyphs&metric=coverage)](https://sonarcloud.io/summary/new_code?id=fugerit79_venus-sample-font-glyphs)
[![License: MIT](https://img.shields.io/badge/License-MIT-teal.svg)](https://opensource.org/licenses/MIT)
[![code of conduct](https://img.shields.io/badge/conduct-Contributor%20Covenant-purple.svg)](https://github.com/fugerit-org/fj-universe/blob/main/CODE_OF_CONDUCT.md)

This project is part of a series of mini tutorial on [Venus Fugerit Doc](https://github.com/fugerit-org/fj-doc),
here you can find the [other tutorials](https://github.com/fugerit79/venus-sample-index).

## Requirement

* JDK 8+ (*)
* Maven 3.8+

(*) Currently FOP not working on [JDK 25, See bug JDK-8368356](https://bugs.openjdk.org/browse/JDK-8368356).

## Project initialization

This project was created with [Venus Maven plugin](https://venusdocs.fugerit.org/guide/#maven-plugin-goal-init)

```shell
mvn org.fugerit.java:fj-doc-maven-plugin:8.17.7:init \
-DgroupId=org.fugerit.java.demo \
-DartifactId=venus-sample-font-glyphs \
-Dextensions=base,freemarker,mod-fop \
-DaddJacoco=true \
-DwithCI=GitHub \
-DaddFormatting=true \
-DprojectVersion=1.0.0
```

## Glyph with different font

In the document we are using a Glyph (&#x25A1;) not supported by our font (TitilliumWeb).

Let's say we find a font supporting the glyph, but we want to use it only for that specific symbol.

We need to 

1. Add the font configuration 

to [fop-config.xml](src/main/resources/venus-sample-font-glyphs/fop-config.xml)

```xml
<font embed-url="classpath://font/FreeSerif.otf" embedding-mode="full">
   <font-triplet name="FreeSerif" style="normal" weight="normal"/>
</font>
```

2. Use the new font for the specific symbol : 

```xml
<phrase>Sample glyph</phrase><phrase font-name="FreeSerif">□</phrase><phrase>with free serif font</phrase>
```

In the [template](src/main/resources/venus-sample-font-glyphs/template/document.ftl).