#!/bin/bash

# 1. Stabilim ce fișier verificăm
LOG_FILE=$1
# Folosim [[ ]] pentru a verifica dacă variabila este goală
# Nu mai avem nevoie de ghilimele în jurul lui $LOG_FILE aici
if [[ -z $LOG_FILE ]]; then
    LOG_FILE="/var/log/syslog"
fi

# 2. Verificăm dacă fișierul NU există (! -f)
# [[ ]] gestionează mult mai bine erorile dacă LOG_FILE conține spații
if [[ ! -f $LOG_FILE ]]; then
    echo "Hopa! Fișierul $LOG_FILE nu a fost găsit."
    exit 1
fi

# 3. Cuvinte cheie
KEYWORDS="error|fail|critical|warning|denied|fault"

# 4. Excluderi
EXCLUSIONS="ignore_this|pattern2"

echo "--- Raport Analiză Log: $LOG_FILE ---"

# 5. Procesare
grep -Ei "$KEYWORDS" "$LOG_FILE" | grep -viE "$EXCLUSIONS"

echo "--- Analiză Finalizată ---"