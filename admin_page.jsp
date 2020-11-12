<%@page language="java" import="java.sql.*"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

    String email = request.getParameter("log_email");
    String senha = request.getParameter("log_senha");

    String db   	= "dbouber";
    String user 	= "root";
    String password	= "";
    String url     	= "jdbc:mysql://localhost:3306/" + db;
    String driver  	= "com.mysql.jdbc.Driver";
    String select  = "select * from usuario" ;

    Class.forName( driver ) ;

    Connection _conexao ;
    _conexao = DriverManager.getConnection( url , user , password ) ;
    Statement stm;
    stm = _conexao.createStatement() ;

    ResultSet dados;
    dados = stm.executeQuery(select) ;

%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Uber Brasil - Administration</title>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
        
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

        <!-- Favicon -->
        <link rel="icon" href="img/uber_favicon.png">
        
        <!-- HTML5Shiv -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <![endif]-->
    </head>
    
    <body class="bg-dark pt-5 pb-5">

        <!-- Container -->
        <div class="container bg-light">

            <div class="row p-5">
                <div class="col">
                    <div class="jumbotron">
                        <h1 class="display-4">Administração</h1>
                        <p class="lead">
                            Página de administração de usuários.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-11">

                    <!-- Tabela Usuários -->
                    <table id="tabela_user" class="table table-hover">
                        <thead class="thead-dark">
                          <tr>
                            <th scope="col">CPF</th>
                            <th scope="col">Nome</th>
                            <th scope="col">Data de Nascimento</th>
                            <th scope="col">E-mail</th>
                            <th scope="col">Telefone</th>
                          </tr>
                        </thead>
                        <tbody>
                        <%
                        
                        while ( dados.next() ) {
                            out.print("<tr>") ;
                                out.print( "<td>") ;
                                    out.print( dados.getString("CPF") );
                                out.print( "</td>") ;

                                out.print( "<td>") ;
                                    out.print( dados.getString("NOME") );
                                out.print( "</td>") ;

                                out.print( "<td>") ;
                                    out.print( dados.getString("DATA_NASCIMENTO") );
                                out.print( "</td>") ;

                                out.print( "<td>") ;
                                    out.print( dados.getString("EMAIL") );
                                out.print( "</td>") ;

                                out.print( "<td>") ;
                                    out.print( dados.getString("TELEFONE") );
                                out.print( "</td>") ;
                            out.print("</tr>") ;
                        }
                        
                        %>
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

<%

_conexao.close();
stm.close();

%>