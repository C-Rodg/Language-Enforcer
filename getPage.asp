
<%@ LANGUAGE=VBScript %>
<% OPTION EXPLICIT %>

<%
	Dim urlVal
	urlVal = Request.Form("url")
	Dim langVal
	langVal = Request.Form("language")

	Dim mergeRequest
	Set mergeRequest = CreateObject("MSXML2.XMLHTTP")
	mergeRequest.open "GET", urlVal, False
	mergeRequest.setRequestHeader "Content-Type", "text/html"
    mergeRequest.setRequestHeader "Accept-Language", langVal	    
	mergeRequest.send


	Dim myResponse
	myResponse = mergeRequest.responseText

	Response.Write(myResponse)
	Response.End

%>