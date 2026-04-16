================================================
PROIECT: Analiză Log-uri (IT Course)
FIȘIER: log_error_checking.sh
================================================

DESCRIERE:
Acest script Bash este creat pentru a automatiza verificarea 
fișierelor de log din sistemele Linux. Caută automat tipare 
de eroare (case-insensitive) și permite filtrarea mesajelor 
care nu sunt de interes.

INSTRUCȚIUNI DE UTILIZARE:
1. Setați permisiunile de execuție:
   chmod +x log_error_checking.sh

2. Rulare pe log-ul implicit (/var/log/syslog):
   ./log_error_checking.sh

3. Rulare pe un alt fișier (exemplu):
   ./log_error_checking.sh /var/log/messages

DETALII TEHNICE:
- Cuvinte cheie detectate: error, fail, critical, warning, denied, fault.
- Scriptul folosește paranteze duble [[ ]] pentru o verificare 
  sigură a variabilelor și a fișierelor.
- Erorile (ca "fișier negăsit") sunt gestionate cu mesaje clare.

NOTE:
- Pentru a vizualiza log-urile de sistem protejate, rulați cu sudo:
  sudo ./log_error_checking.sh
================================================
