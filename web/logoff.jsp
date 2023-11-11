<HTML>
<HEAD>
</HEAD>
 <%
  session.invalidate();
  response.sendRedirect("Login.jsp?mensagem=logoff efetuado com sucesso!");
%>
</HTML>
