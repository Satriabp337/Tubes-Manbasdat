<?php
include 'db_connect.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_reservasi = $_POST['id_reservasi'];
    $id_guest = $_POST['id_guest'];
    $id_kamar = $_POST['id_kamar'];
    $id_pegawai = $_POST['id_pegawai'];
    $uang_muka = $_POST['uang_muka'];
    $total_harga = $_POST['total_harga'];
    $tgl_checkin = $_POST['tgl_checkin'];
    $tgl_checkout = $_POST['tgl_checkout'];

    $sql = "INSERT INTO reservasi (ID_reservasi, ID_Guest, ID_Kamar, id_pegawai, Uang_muka, Total_harga, tgl_checkin, tgl_checkout) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);

    if ($stmt->execute([$id_reservasi, $id_guest, $id_kamar, $id_pegawai, $uang_muka, $total_harga, $tgl_checkin, $tgl_checkout])) {
        echo "<script>alert('Data reservasi berhasil ditambahkan.');</script>";
    } else {
        echo "Terjadi kesalahan saat menambahkan data reservasi.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Input Data Reservasi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h2 {
            color: #333;
        }
        form {
            background-color: #ffffff;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            margin: auto;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="number"], input[type="date"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <h2>Form Input Data Reservasi</h2>
    <form method="POST" action="">
        <label for="id_reservasi">ID Reservasi:</label>
        <input type="text" id="id_reservasi" name="id_reservasi" required>

        <label for="id_guest">ID Guest:</label>
        <input type="text" id="id_guest" name="id_guest" required>

        <label for="id_kamar">ID Kamar:</label>
        <input type="text" id="id_kamar" name="id_kamar" required>

        <label for="id_pegawai">ID Pegawai:</label>
        <input type="text" id="id_pegawai" name="id_pegawai" required>

        <label for="uang_muka">Uang Muka:</label>
        <input type="number" id="uang_muka" name="uang_muka" required>

        <label for="total_harga">Total Harga:</label>
        <input type="number" id="total_harga" name="total_harga" required>

        <label for="tgl_checkin">Tanggal Check-In:</label>
        <input type="date" id="tgl_checkin" name="tgl_checkin" required>

        <label for="tgl_checkout">Tanggal Check-Out:</label>
        <input type="date" id="tgl_checkout" name="tgl_checkout" required>

        <input type="submit" value="Simpan Data">
    </form>
</body>
</html>
