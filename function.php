<?php
function koneksi()
{
  $conn = mysqli_connect('Localhost', 'root', '', 'makesta') or die(mysqli_error($conn));
  return $conn;
}

function query($query)
{
  $conn = koneksi();
  $result = mysqli_query($conn, $query) or die(mysqli_error($conn));
  $row = [];

  while ($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }
  return $rows;
}
