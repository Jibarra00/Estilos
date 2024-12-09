<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Presentation.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Iniciar Sesión</title>
    <link href="resources/css/Default.css" rel="stylesheet" />
    <!-- CSS Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <style>
        body {
            background-image: url('resources/images/Galería barrio Bolívar4.jpg'); /* Cambia la ruta de la imagen */
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .card {
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
            background-color: rgba(255, 255, 255, 0.8); /* Fondo semitransparente */
            width: 100%;
            max-width: 400px;
        }
        .card-header {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            color: #333;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .btn {
            width: 100%;
            padding: 10px;
        }
        #loadingGif {
            text-align: center;
        }
        .error-message {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <!-- Imagen de cargando... -->
            <div id="loadingGif" class="text-center" style="display: none;">
                <img src="resources/images/loading-7528_128.gif" alt="Cargando..." />
            </div>
            <div>
                <div class="card-header">Iniciar Sesión</div>
                <asp:Label ID="Label1" runat="server" Text="Correo" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TBCorreo" runat="server" CssClass="form-control" placeholder="Correo electrónico"></asp:TextBox>

                <asp:Label ID="Label3" runat="server" Text="Contraseña" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="TBContrasena" runat="server" TextMode="Password" CssClass="form-control" placeholder="Contraseña"></asp:TextBox>

                <asp:Button ID="BtnIniciar" runat="server" Text="Iniciar" OnClick="BtnIniciar_Click" OnClientClick="showLoading();" CssClass="btn btn-primary" />

                <asp:Label ID="LblMsg" runat="server" CssClass="error-message"></asp:Label>
            </div>
        </div>
    </form>

    <!-- JS Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <!-- Script para mostrar y ocultar la animación de cargando... -->
    <script type="text/javascript">
        function showLoading() {
            document.getElementById("loadingGif").style.display = "block";
        }

        function hideLoading() {
            document.getElementById("loadingGif").style.display = "none";
        }
    </script>
</body>
</html>
