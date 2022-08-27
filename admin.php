<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <title>Dashboard Admin</title>
</head>

<body>
    <?php
    require_once "function.php";

    $peserta = query("SELECT * FROM peserta");
    var_dump($peserta);
    ?>
    <div class="container jumbotron">
        <h1>Dashboard Admin</h1>
    </div>

    <div class="container">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama Peserta</th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Ikrom Ngantuk</td>
                    <td><a href="" class="btn btn-secondary">Detail</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</body>

</html>