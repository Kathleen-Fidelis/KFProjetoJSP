<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Primeira página JSP
	
	<!-- DECLARATION -->
	<%!boolean formatar = true; %>
	
	<%!
		String today(){
			java.text.SimpleDateFormat dt = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
			return dt.format(new java.util.Date());
		}
	%>
	
	<!-- EXPRESSION -->
	<h1>A data de hoje é: <%=new java.util.Date() %></h1>
	<h1>A data de hoje é: <%=today() %></h1>
	
	<!-- SCRIPTLET -->
	<h1>A data de hoje é: <% if (formatar){
								out.println(today());
							 }else{
								 out.println(new java.util.Date());
						   }%></h1>
	
	
	
	<!-- PRIMEIRA PARTE -->
	
	<!-- DECLARATION -->
	<%!int raio = 2; %>
	
	<%!Double calculaDiametroDoCirculo(double raio){
    	return raio * 2;
	   }
	%>
	
	<!-- SCRIPTLET -->
	<% if(raio < 10){
			out.println(calculaDiametroDoCirculo(raio));
		}else{
			out.println("O raio deve ser menor que 10");
		}
	%>
	
	
	<!-- EXPRESSION -->
	<h1>O raio é: <%= calculaDiametroDoCirculo(raio) %></h1>
	
	
	
	<!-- SEGUNDA PARTE -->
	
	<!-- DECLARATION -->
		<%! Calendar cal = Calendar.getInstance();%>
		
		<%!int segundos(){
			return cal.get(Calendar.SECOND);
		}%>
		
		<%!String par = "par";%>
		<%!String impar = "impar";%>
		
		
	<!-- SCRIPLET -->
		<%if(segundos() % 2 == 0){
			out.println(par);
		}else{
			out.println(impar);
		}%>
		
		
		
	<!-- EXPRESSION -->
		<h1>São <%=segundos()%> segundos</h1>
		
	<!-- END EXPRESSION -->

	
	
	
	
	
</body>
</html>