<%@ Control Language="vb" CodeBehind="~/admin/Skins/skin.vb" AutoEventWireup="false"
    Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>



<!-- #include file="Base/Base.ascx" -->

	<!-- 40FINGERS DNN Demo Skin 
		Created by Timo Breumelhof, www.40fingers.net
		Everything that's used for this Demo is below this line.-->
		
	<!-- START -->
	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	
	<%@ Register TagPrefix="oc" TagName="RenderModule" Src="~/DesktopModules/OpenContent/RenderModule.ascx" %>
	<h1>DNN OpenContent Skin Object Demo</h1>
	<h2>Use ModuleId and TabId:</h2>
	<code>
	&lt;oc:RenderModule ModuleId=&quot;1796&quot; TabId=&quot;4755&quot; runat=&quot;server&quot; &gt;&lt;/oc:RenderModule&gt;
	</code>
	<oc:RenderModule ModuleId="1796" TabId="4755" runat="server" ></oc:RenderModule>
	
	<h2>Use ModuleTitle:</h2>
	<code>
	&lt;oc:RenderModule ModuleTitle=&quot;OpenContent Edit Skin Object&quot; runat=&quot;server&quot; &gt;&lt;/oc:RenderModule&gt;
	</code>
	
	<oc:RenderModule ModuleTitle="OpenContent Edit Skin Object" runat="server" ></oc:RenderModule>
	
	
	<h2>Use ModuleTitle:</h2>
	<code>
	&lt;oc:RenderModule ModuleTitle=&quot;OpenContent Edit Skin Object&quot; template=&quot;/Portals/OpenContent-Demo-Templates/OpenContent/Templates/10.00-OC-Skin-Object/no-icons.hbs&quot; runat=&quot;server&quot; &gt;&lt;/oc:RenderModule&gt;
	</code>
	
	<oc:RenderModule ModuleTitle="OpenContent Edit Skin Object" template="/Portals/OpenContent-Demo-Templates/OpenContent/Templates/10.00-OC-Skin-Object/no-icons.hbs" runat="server" ></oc:RenderModule>
	<!-- END -->
		
<!-- #include file="Base/Footer.ascx" -->


