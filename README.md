# Stein, Schere, Papier, Echse, Spock - Bash-Spiel

Dieses Bash-Skript ermöglicht es dir, das klassische Spiel "Stein, Schere, Papier" sowie die erweiterte Version "Stein, Schere, Papier, Echse, Spock" direkt in deinem Terminal zu spielen.

## Voraussetzungen

Um dieses Spiel spielen zu können, benötigst du:

- Ein Unix-basiertes Betriebssystem (Linux oder macOS)
- Bash-Shell (sollte standardmäßig installiert sein)

## Spielstart

Um das Spiel zu starten, musst du zunächst die Datei ausführbar machen. Öffne dein Terminal und navigiere zum Verzeichnis, in dem die Skriptdatei gespeichert ist. Führe dann den folgenden Befehl aus:

chmod +x rsp_bang_game.sh
./rsp_bang_game.sh

## Spielanleitung

Nach dem Start des Spiels wirst du gefragt, ob du die "Default"-Version (Stein, Schere, Papier) oder die "Bang"-Version (Stein, Schere, Papier, Echse, Spock) spielen möchtest. Wähle deinen gewünschten Modus, indem du d für Default oder b für Bang eingibst und dann Enter drückst.

Im Spiel wählst du deinen Zug durch Eingabe des entsprechenden Kürzels:

s für Stein
sc für Schere
p für Papier
e für Echse (nur im "Bang"-Modus)
sp für Spock (nur im "Bang"-Modus)
Der Computer wählt zufällig seinen Zug aus. Nach jeder Runde wird der Gewinner angezeigt. Das Spiel endet, wenn einer der Spieler zwei Siege erreicht.

Nochmal spielen

Nach Abschluss einer Spielrunde wirst du gefragt, ob du noch einmal spielen möchtest. Antworte mit j für Ja oder n für Nein.

