<?xml version="1.0"?>
<recipe>
   
    <instantiate from="src/app_package/MvvmActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}Activity.kt" />
    <instantiate from="src/app_package/ViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${className}ViewModel.kt" />
	<instantiate from="res/layout/simple.xml.ftl"
					to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
 
 	<open file="${srcOut}/${className}Activity.kt"/>
    <open file="${srcOut}/${className}ViewModel.kt"/>
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
</recipe>