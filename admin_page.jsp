<%@page language="java" import="java.sql.*"  %>

<%

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

	/*out.print("<table border=1>") ;

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

    out.print( "</table> ") ;*/
   
%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Uber Brasil - Login</title>
        <meta charset="utf-8">
        
        <!-- Responsividade -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        
        <!-- Fonte Customizada -->
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
        
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
        
        <!-- Estilo CSS -->
        <link rel="stylesheet" type="text/css" href="css/estilo.css">
        
        <!-- HTML5Shiv -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <![endif]-->
    </head>
    
    <body onload="criarModal()" class="bg-dark pt-5 pb-5">

        <!-- Container -->
        <div class="container bg-light">

            <div class="row p-5">
                <div class="col">
                    <div class="jumbotron">
                        <h1 class="display-4">Página do usuário</h1>
                        <p class="lead">
                            Faça login na Uber e acesse os mais variados serviços dentro da sua conta.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-6">

                    <!-- Tabela Usuários -->
                    <table id="tabela_user" class="table table-hover">
                        <thead>
                          <tr>
                            <th scope="col">#</th>
                            <th scope="col">First</th>
                            <th scope="col">Last</th>
                            <th scope="col">Handle</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td colspan="2">Larry the Bird</td>
                            <td>@twitter</td>
                          </tr>
                        </tbody>
                    </table>
                    <!-- Fim Tabela Usuários -->

                </div>
                <!-- Fim Formulário -->

            </div>

        </div>
        <!-- Fim Container -->
        
        <!-- Bootstrap Bundle and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

        <!-- Arquivo JS -->
        <script src="js/script.js"></script>
    
    </body>
</html>