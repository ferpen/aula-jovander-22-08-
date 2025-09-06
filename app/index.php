<?php
$config = include('config.php');

$servername = $config['servername'];
$username = $config['username'];
$password = $config['password'];
$dbname = $config['dbname'];
$dsn = "mysql:host=$servername;dbname=$dbname;charset=utf8mb4";

?>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Clientes</title>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            background-color: #f4f7f9;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin: 0;
            padding: 2rem;
        }
        .container {
            width: 80%;
            max-width: 900px;
            background-color: #fff;
            padding: 2rem;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
        h1 {
            color: #2c3e50;
            text-align: center;
            margin-bottom: 1.5rem;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            box-shadow: 0 2px 4px rgba(0,0,0,0.05);
        }
        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        thead tr {
            background-color: #3498db;
            color: #ffffff;
            font-weight: bold;
        }
        tbody tr:nth-of-type(even) {
            background-color: #f2f2f2;
        }
        tbody tr:hover {
            background-color: #ecf0f1;
        }
        .status {
            padding: 0.5rem;
            border-radius: 4px;
            font-weight: bold;
            text-align: center;
        }
        .status.success {
            background-color: #2ecc71;
            color: white;
        }
        .status.error {
            background-color: #e74c3c;
            color: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Dashboard de Clientes</h1>
        <?php
        try {
            $conn = new PDO($dsn, $username, $password);
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            echo "<p class='status success'>Conexão com o banco de dados bem-sucedida!</p>";

            $sql = "SELECT * FROM Clientes ORDER BY Nome";
            $query = $conn->query($sql);

            if ($query) {
                echo "<table>";
                echo "<thead><tr><th>ID</th><th>Nome</th><th>Endereço</th><th>Cidade</th><th>Telefone</th></tr></thead>";
                echo "<tbody>";

                while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
                    echo "<tr>";
                    echo "<td>" . htmlspecialchars($row['Id_Cliente']) . "</td>";
                    echo "<td>" . htmlspecialchars($row['Nome']) . "</td>";
                    echo "<td>" . htmlspecialchars($row['Endereco']) . "</td>";
                    echo "<td>" . htmlspecialchars($row['Cidade']) . "</td>";
                    echo "<td>" . htmlspecialchars($row['Telefone']) . "</td>";
                    echo "</tr>";
                }
                echo "</tbody></table>";
            }
        } catch (PDOException $e) {
            echo "<p class='status error'>Falha na conexão: " . htmlspecialchars($e->getMessage()) . "</p>";
        }
        ?>
    </div>
</body>
</html>