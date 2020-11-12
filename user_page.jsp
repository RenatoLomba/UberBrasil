<%@page language="java" import="java.sql.*"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

    String email = request.getParameter("log_email");
    String senha = request.getParameter("log_password");

    String db   	= "dbouber";
    String user 	= "root";
    String password	= "";
    String url     	= "jdbc:mysql://localhost:3306/" + db;
    String driver  	= "com.mysql.jdbc.Driver";
    String select  = "select * from usuario where EMAIL='" + email + "' and SENHA='" + senha + "'";

    Class.forName( driver ) ;

    Connection _conexao ;
    _conexao = DriverManager.getConnection( url , user , password ) ;
    Statement stm;
    stm = _conexao.createStatement() ;

    ResultSet dados;
    dados = stm.executeQuery(select) ;
    dados.next();

%>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Uber Brasil - Usuário</title>
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

        <script>

        </script>
        
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
                    <div class="jumbotron text-center">
                        <h1 class="display-4">
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("NOME") );
                            out.print( "</span>") ;
                            %>
                        </h1>
                        <p class="lead">
                            Página de usuário da Uber.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row justify-content-center" style="padding: 30px;">
                <div class="col-8">

                    <div class="form-row justify-content-center">
                        <div class="form-group col-md-4">
                            <img src="img/user.png" style="width: 200px;">
                        </div>
                    </div>

                    <div class="form-row" style="margin-top: 20px;">
                        <div class="form-group col-md-5">
                            <label><strong>Nome Completo: </strong></label>
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("NOME") );
                            out.print( "</span>") ;
                            %>
                        </div>
                        <div class="form-group col-md-2">
                            <label><strong>Sexo: </strong></label>
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("SEXO") );
                            out.print( "</span>") ;
                            %>
                        </div>
                        <div class="form-group col-md-5">
                            <label><strong>Data de Nascimento: </strong></label>
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("DATA_NASCIMENTO") );
                            out.print( "</span>") ;
                            %>
                        </div>
                    </div>

                    <div class="form-row" style="margin-top: 20px;">
                        <div class="form-group col-md-6">
                            <label><strong>Email: </strong></label>
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("EMAIL") );
                            out.print( "</span>") ;
                            %>
                        </div>
                        <div class="form-group col-md-6">
                            <label><strong>Senha: </strong></label>
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("SENHA") );
                            out.print( "</span>") ;
                            %>
                        </div>
                    </div>

                    <div class="form-row" style="margin-top: 20px;">
                        <div class="form-group col-md-8">
                            <label><strong>Endereço: </strong></label>
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("ENDERECO") );
                            out.print( "</span>") ;
                            %>
                        </div>
                        <div class="form-group col-md-4">
                            <label><strong>Telefone: </strong></label>
                            <%
                            out.print( "<span>") ;
                                out.print( dados.getString("TELEFONE") );
                            out.print( "</span>") ;
                            %>
                        </div>
                    </div>

                    <div class="row mb-5" style="margin-top: 20px;">
                        <div class="col">
                            <a href="login.html" class="btn btn-danger btn-lg">Voltar</a>
                        </div>
                    </div>

                </div>
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