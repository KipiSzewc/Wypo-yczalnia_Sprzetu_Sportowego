-- Tworzymy bazę danych (jeśli jeszcze nie istnieje)
CREATE DATABASE IF NOT EXISTS wypozyczalnia_sprzetu;

-- Wybieramy naszą bazę danych
USE wypozyczalnia_sprzetu;

-- Tworzymy tabelę rezerwacji
CREATE TABLE rezerwacje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    imie_nazwisko VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    telefon VARCHAR(20) NOT NULL,
    sprzet ENUM('narty', 'rower', 'pilka', 'rakieta') NOT NULL,
    data_rezerwacji DATE NOT NULL,
    czas_wynajmu INT NOT NULL,
    data_dodania TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO rezerwacje (imie_nazwisko, email, telefon, sprzet, data_rezerwacji, czas_wynajmu) 
VALUES 
    ('Krzysztof Adamczyk', 'krzysztof.adamczyk@example.com', '600112233', 'narty', '2025-03-25', 5),
    ('Patryk Wojciechowski', 'patryk.wojciechowski@example.com', '602233445', 'rower', '2025-03-26', 3),
    ('Julia Kwiatkowska', 'julia.kwiatkowska@example.com', '603344556', 'pilka', '2025-03-28', 2),
    ('Tomasz Mazur', 'tomasz.mazur@example.com', '604455667', 'rakieta', '2025-03-30', 6),
    ('Magdalena Nowakowska', 'magdalena.nowakowska@example.com', '605566778', 'narty', '2025-04-01', 7),
    ('Kamil Jankowski', 'kamil.jankowski@example.com', '606677889', 'rower', '2025-04-02', 4),
    ('Wojciech Kowal', 'wojciech.kowal@example.com', '607788990', 'pilka', '2025-04-05', 1),
    ('Karolina Kaczmarek', 'karolina.kaczmarek@example.com', '608899001', 'rakieta', '2025-04-07', 2),
    ('Adam Szymański', 'adam.szymanski@example.com', '609900112', 'narty', '2025-04-10', 6),
    ('Ewa Zielonka', 'ewa.zielonka@example.com', '610011223', 'rower', '2025-04-12', 5),
    ('Michał Jabłoński', 'michal.jablonski@example.com', '611122334', 'pilka', '2025-04-15', 3),
    ('Zuzanna Laskowska', 'zuzanna.laskowska@example.com', '612233445', 'rakieta', '2025-04-18', 4),
    ('Piotr Wiatr', 'piotr.wiatr@example.com', '613344556', 'narty', '2025-04-20', 2),
    ('Anna Wilk', 'anna.wilk@example.com', '614455667', 'rower', '2025-04-22', 7),
    ('Marcin Ławniczak', 'marcin.lawniczak@example.com', '615566778', 'pilka', '2025-04-25', 2),
    ('Wiktoria Kowalska', 'wiktoria.kowalska@example.com', '616677889', 'rakieta', '2025-04-28', 3),
    ('Jakub Mikołajewski', 'jakub.mikolajewski@example.com', '617788990', 'narty', '2025-05-01', 4),
    ('Katarzyna Maślanka', 'katarzyna.maslanka@example.com', '618899001', 'rower', '2025-05-03', 2),
    ('Paweł Rogowski', 'pawel.rogowski@example.com', '619900112', 'pilka', '2025-05-05', 5);