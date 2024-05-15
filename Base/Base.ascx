<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="jQuery" src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="fortyfingers" TagName="SH" Src="~/DesktopModules/40Fingers/SkinObjects/StyleHelper/StyleHelper.ascx" %> 


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">


<dnn:jQuery runat="server"></dnn:jQuery>

<fortyfingers:SH 
	id="FFSH0" 
	AddToHead="<meta http-equiv='X-UA-Compatible' content='IE=edge'><meta name='viewport' content='width=device-width, initial-scale=1'>"
	doctype="html 5"
	runat="server" />

<script runat="server">
' Seting the Doctype to HTML5. 
' This is not the regular way to do this, but I want as less extra files in this skinpack as possible.
' You can also do this and more using our StyleHelper, downloadable from our website.

	Private Sub Page_PreRender(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.PreRender
		 Dim liDoctype As Literal = CType(Me.Page.FindControl("skinDocType"), Literal)
		 liDoctype.Text = "<!DOCTYPE HTML>"
	End Sub




	Private Function SQP() as String

		Return server.HtmlEncode(GetSkinFolderName)
		
	End Function

	
	Private Function GetSkinFolderName () as String

		Dim sOut as string = SkinPath
		Dim sSplit() as string = sOut.split("/")
		sOut = sSplit(sSplit.length-2)
		
		Return sOut

	End Function
	
		Private Function GetSkinName () as String
		
			Return System.IO.Path.GetFileName (PortalSettings.ActiveTab.SkinSrc)
			
		End Function

	Private Function SkinName() as String

		Return String.Format("{0} // {1}", GetSkinFolderName.Replace(".", " "), GetSkinName())
	
	End Function
	
	Private Function IsLocalSite() as String
		'Add class for Local Sites
		If HttpContext.Current.Request.ServerVariables("REMOTE_ADDR") = "127.0.0.1" Then
			Return ("LocalSite")
		Else
			Return ("LiveSite")
		End If
		
	End Function
	




</script>

<link href='https://fonts.googleapis.com/css?family=Roboto:300,300italic,400,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css2?family=Material+Icons" rel="stylesheet">

<!-- #include file="../custom/_skin-variables.ascx" -->

<main class="wrap-main menu-open <%=IsLocalSite%>" id="skin">
	<aside class="side-wrapper">
		<div class="menu-header">
			<a class="main-logo" href="https://<%=PortalSettings.PortalAlias.HttpAlias%>">
				<img src="<%=SkinPath%>/Base/Img/FFLogoWhite.png" />
			</a>
			<a class="togglemenu icon40" id="togglemenu" onclick="toggleMenu()" title="Toggle Sidebar">
				<i class="material-icons">menu</i>
			</a>
			<div class="lang-wrap float-right clear-after">
				<dnn:LANGUAGE runat="server" id="dnnLANGUAGE" showMenu="False" showLinks="True" />
			</div>
		</div>
		
		<!-- Side Menu -->
		<dnn:MENU MenuStyle="Base/MenuDefinition" runat="server" ExcludeNodes="Admin,Host"></dnn:MENU>
		
		
		
		<div class="bottom-links">
		<a href="<%=sCompanyUrl%>" target="_blank"><i class="material-icons">public</i><span>40FINGERS</span></a>
		<a class="flex-grow-1" href="<%=sDownloadUrl%>" target="_blank"><i class="material-icons">file_download</i><span>Download</span></a>
		<%If Request.IsAuthenticated%>
		<a class="icon40" href="/logoff"><i class="material-icons">lock_open</i></a>
		<%Else%>
		<a class="icon40" href="/login"><i class="material-icons">lock</i></a>
		<%End If%>
		</div>
	</aside>
	<div class="content-main">
	<header class="main clear-after">
		<div class="pad-h3 pad-v3">
			<h1 class="title-main"><a href="http://www.40fingers.net/products" target="_Blank">40FINGERS Demo Skin</a></h1>
			<h2 class="description-main">Page skin: <%=SkinName%></h2>
		</div>
	</header>
	<section class="main pad-h3 pad-v3">
		<div class="content-pane" id="ContentPane" runat="server" />