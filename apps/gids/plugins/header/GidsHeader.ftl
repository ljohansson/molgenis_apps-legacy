<#--Date:        November 11, 2009
 * Template:	PluginScreenFTLTemplateGen.ftl.ftl
 * generator:   org.molgenis.generators.ui.PluginScreenFTLTemplateGen 3.3.2-testing
 * 
 * THIS FILE IS A TEMPLATE. PLEASE EDIT :-)
-->
<#macro plugins_header_MolgenisHeader screen>
<div id="header">	
	<p>
		<a href="http://www.molgenis.org">
			<img src="generated-res/img/logo_molgenis.gif" height="70px" align="right"/>
		</a>
		&nbsp;${application.getLabel()}
	</p>
</div>
<div align="right" style="color: maroon; font: 12px Arial;margin-right: 10px;">| <a href="about.html">About</a>  | <a href="doc/objectmodel.html">Object model</a>  | <a href="api/R">R-project API</a> | <a href="api/find">HTTP API</a> | <a href="api/rest/?_wadl">REST API</a> | <a href="api/soap?wsdl">Web Services API</a></div>
</#macro>
