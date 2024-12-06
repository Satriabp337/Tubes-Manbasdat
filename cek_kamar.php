<?php
include 'db_connect.php';

$status_filter = isset($_GET['status']) ? $_GET['status'] : 'all';

if ($status_filter === 'available') {
    $stmt = $conn->query('SELECT * FROM kamar WHERE Status = "Kosong"');
} elseif ($status_filter === 'occupied') {
    $stmt = $conn->query('SELECT * FROM kamar WHERE Status = "Terisi"');
} else {
    $stmt = $conn->query('SELECT * FROM kamar');
}

$rooms = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html>
<head>
    <title>Cek Kamar Hotel</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f0f8ff;
        }
        h2, h3 {
            color: #333;
        }
        form {
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        select, input[type="submit"] {
            margin-left: 10px;
            padding: 5px;
        }
        .room-info {
            background-color: #e6f7ff;
            border: 1px solid #b3d9ff;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
        }
        .room-info p {
            margin: 5px 0;
        }
    </style>
</head>
<body>
    <h2>Cek Kamar Hotel</h2>
    <form method="GET" action="">
        <label for="status">Pilih Status Kamar:</label>
        <select id="status" name="status">
            <option value="all" <?php if ($status_filter === 'all') echo 'selected'; ?>>Semua</option>
            <option value="available" <?php if ($status_filter === 'available') echo 'selected'; ?>>Kosong</option>
            <option value="occupied" <?php if ($status_filter === 'occupied') echo 'selected'; ?>>Terisi</option>
        </select>
        <input type="submit" value="Tampilkan">
    </form>

    <h3>Hasil:</h3>
    <?php
    if ($rooms) {
        foreach ($rooms as $room) {
            echo '<div class="room-info">';
            echo '<p><strong>ID Kamar:</strong> ' . $room['ID_Kamar'] . '</p>';
            echo '<p><strong>Nama Kamar:</strong> ' . $room['Nama_Kamar'] . '</p>';
            echo '</div>';
        }
    } else {
        echo '<p>Tidak ada kamar yang ditemukan.</p>';
    }
    ?>
</body>
</html>
