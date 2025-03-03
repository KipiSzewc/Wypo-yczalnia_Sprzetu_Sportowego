function pokaz(sectionId) {
    document.getElementById('home').style.display = 'none';
    document.getElementById('oferta').style.display = 'none';
    document.getElementById('cennik').style.display = 'none';
    document.getElementById('kontakt').style.display = 'none';
    document.getElementById('rezerwacja').style.display = 'none';

    document.getElementById(sectionId).style.display = 'block';
}



document.getElementById('rezerwacjaForm').addEventListener('submit', function(event) {
    event.preventDefault();
    alert('Rezerwacja została wysłana! Skontaktujemy się z Tobą wkrótce.');
    this.reset();
});



document.getElementById('toggleDarkMode').addEventListener('click', function() {
    document.body.classList.toggle('dark-mode');
});



const form = document.getElementById('rezerwacjaForm');

form.addEventListener('submit', function(event) {
    const name = document.getElementById('name').value;
    const email = document.getElementById('email').value;
    const phone = document.getElementById('phone').value;
    const sprzet = document.getElementById('sprzet').value;
    const date = document.getElementById('date').value;
    const czas = document.getElementById('czas').value;

    if (!name || !email || !phone || !sprzet || !date || !czas) {
        event.preventDefault();
    }
});