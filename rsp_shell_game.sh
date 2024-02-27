#!/bin/bash

spiel() {
  # Züge für das gewählte Spiel setzen
  if [[ $1 == "Bang" ]]; then
    Z=("Stein(s)" "Schere(sh)" "Papier(p)" "Echse(e)" "Spock(sp)")
  else
    Z=("Stein(s)" "Schere(sh)" "Papier(p)")
  fi

  G=0
  V=0

  while [[ $G -lt 2 ]] && [[ $V -lt 2 ]]; do
    CZ=${Z[$RANDOM % ${#Z[@]}]}
    echo "Wähle deinen Zug (${Z[*]}):"
    read BZ

    # Umwandlung der Eingabe in korrekten Zug
    case $BZ in
      s) BZ="Stein";;
      sc) BZ="Schere";;
      p) BZ="Papier";;
      e) [[ " ${Z[*]} " =~ " Echse " ]] && BZ="Echse" || echo "Ungültige Eingabe";;
      sp) [[ " ${Z[*]} " =~ " Spock " ]] && BZ="Spock" || echo "Ungültige Eingabe";;
      *) echo "Ungültige Eingabe"; continue;;
    esac

    echo "Computer: $CZ"
    # Gewinner ermitteln (Vereinfacht dargestellt, Logik muss für "Bang" erweitert werden)
    if [[ $BZ == $CZ ]]; then
      echo "Unentschieden!"
    elif [[ $BZ == "Stein" && ($CZ == "Schere" || $CZ == "Echse") ||
            $BZ == "Papier" && ($CZ == "Stein" || $CZ == "Spock") ||
            $BZ == "Schere" && ($CZ == "Papier" || $CZ == "Echse") ||
            $BZ == "Echse" && ($CZ == "Spock" || $CZ == "Papier") ||
            $BZ == "Spock" && ($CZ == "Schere" || $CZ == "Stein") ]]; then
      echo "Du gewinnst!"
      ((G++))
    else
      echo "Computer gewinnt!"
      ((V++))
    fi
  done

  if [[ $G -gt $V ]]; then
    echo "Du gewinnst das Spiel!"
  else
    echo "Computer gewinnt das Spiel!"
  fi
}

# Spielmodus wählen
echo "Wähle den Spielmodus: Default (d) oder Bang (b)?"
read MODUS
if [[ $MODUS == "b" ]]; then
  MODUS="Bang"
else
  MODUS="Default"
fi

# Spiel wiederholen
while :; do
  spiel "$MODUS"
  echo "Nochmal? (j/n):"
  read A
  [[ $A != "j" ]] && { echo "Ciao!"; break; }
done
