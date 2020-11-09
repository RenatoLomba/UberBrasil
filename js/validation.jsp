<%@page language="java" import="java.sql.*"  %>

<%

    String email = request.getParameter("log_email");
    String senha = request.getParameter("log_senha");

    if(email == "admin@uber.com" && senha = "root") {
        response.sendRedirect("../admin_page.html");
    }

    String db   	= "dbouber";
    String user 	= "root";
    String password	= "";
    String url     	= "jdbc:mysql://localhost:3306/" + db;
    String driver  	= "com.mysql.jdbc.Driver";

	Class.forName( driver ) ;

	Connection conexao ;
	conexao = DriverManager.getConnection( url , usuario , senha ) ;

	String sql = "select * from cadastro" ;

	Statement stm = conexao.createStatement() ;

	ResultSet dados = stm.executeQuery( sql ) ;

	out.print("<table border=1>") ;

	out.print("<tr>") ;
		out.print("<th>Nome</th>") ;
		out.print("<th>Idade</th>") ;
		out.print("<th>e-mail</th>") ;
	out.print("</tr>") ;

	while ( dados.next() ) {
		out.print("<tr>") ;
			out.print( "<td>") ;
				out.print( dados.getString("nome") );
			out.print( "</td>") ;

			out.print( "<td>") ;
				out.print( dados.getString("idade") );
			out.print( "</td>") ;

			out.print( "<td>") ;
				out.print( dados.getString("email") );
			out.print( "</td>") ;
		out.print("</tr>") ;
	}

    out.print( "</table> ") ;
   
%>