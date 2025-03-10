<?php
// Ustawienia bazy danych
$host = "localhost"; // lub inny adres serwera
$username = "root"; // Twoje konto MySQL
$password = ""; // Twoje hasło MySQL
$dbname = "wypozyczalnia_sprzetu"; // Nazwa bazy danych

// Połączenie z bazą danych
$conn = new mysqli($host, $username, $password, $dbname);

// Sprawdzenie połączenia
if ($conn->connect_error) {
    die("Połączenie z bazą danych nie powiodło się: " . $conn->connect_error);
}

// Sprawdzenie, czy formularz został wysłany
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Pobranie danych z formularza
    $imie_nazwisko = $_POST['name'];
    $email = $_POST['email'];
    $telefon = $_POST['phone'];
    $sprzet = $_POST['sprzet'];
    $data_rezerwacji = $_POST['date'];
    $czas_wynajmu = $_POST['czas'];

    // Zapytanie SQL do dodania danych do bazy
    $sql = "INSERT INTO rezerwacje (imie_nazwisko, email, telefon, sprzet, data_rezerwacji, czas_wynajmu)
            VALUES ('$imie_nazwisko', '$email', '$telefon', '$sprzet', '$data_rezerwacji', '$czas_wynajmu')";

    // Wykonanie zapytania i sprawdzenie, czy udało się dodać dane
    if ($conn->query($sql) === TRUE) {
        echo "Rezerwacja została dodana pomyślnie!";
    } else {
        echo "Błąd: " . $sql . "<br>" . $conn->error;
    }

    // Zamknięcie połączenia z bazą
    $conn->close();
}
?>