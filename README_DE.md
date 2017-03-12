# Schwalbe

Dies ist ein Transpiler von der Programmiersprache Schwalbe zu Swift. Schwalbe und Swift teilen sich _exakt_ die selbe Syntax, nur ist Schwalbe komplett auf Deutsch. Demnach handelt es sich hier um nicht viel mehr als eine Art Übersetzer. Die Idee findet ihren Ursprung in einem Witz im [SwiftDE Slack](http://slack.swiftde.net). Bitte benutzt das hier nicht wirklich 😄

Weil Schwalbe und Swift perfekt äquivalent sind was ihre Syntax angeht ist die aktuelle Implementation dieses Tools nicht besonders clever. Also eigentlich ganz im Gegenteil, es gibt keinerlei Überprüfung der Syntax, falsch geschriebene Syntaxelemente werden ignoriert und alle möglicherweise auch selbst genutzten Syntaxelemente von Schwalbe werden gnadenlos ersetzt (auch innerhalb von Strings und Kommentaren 🙃), also nutz' sie am besten nicht. Es wird keine Warnung ausgegeben. Aber du hast ja auch nicht wirklich vor, dass hier für irgendwas zu benutzen, oder? 😅

## Nutzung

Wenn eine einzelne Datei angegeben wird, gibt schwalbe den übersetzten Inhalt direkt aus, so dass man diesen direkt in eine Swift Datei pipen kann.

```
$ schwalbe beispiel.schwalbe > example.swift
```

Sollten mehrere Dateien angegeben werden, so erstellt schwalbe ein Verzeichnis mit dem Namen `schwalbe_output` und kopiert alle angegeben Dateien dorthin. Alle Dateien mit der Endung `.schwalbe` werden im Zuge dessen verarbeitet. Dadurch kann man auch direkt ganze Verzeichnisse verarbeiten, da die Verzeichnisstruktur beibehalten wird.

```
$ schwalbe **/*

# ⚙️ Processing example.schwalbe...
# Writing schwalbe_output/example.swift
# All done ✅
```

## Installation

```
$ brew tap kiliankoe/formulae
$ brew install schwalbe
```

## Beispiele

Ein paar kurze Beispiele um dich zur produktiven Nutzung von Schwalbe in eigenen Projekten vorzubereiten.

Für eine komplette Liste aller unterstützten Syntaxelemente, siehe [syntax.md](https://github.com/kiliankoe/schwalbe/blob/master/syntax.md).

```schwalbe
drucke("Hallo, Welt!")
```

```schwalbe
struktur Person {
	lass name: Zeichenkette
	lass alter: Ganzzahl

	funktion gibAus() {
		drucke("Name: \(selbst.name), Alter: \(selbst.alter)")
	}
}

lass max = Person(name: "Max Mustermann", alter: 21)
max.gibAus()
```

```schwalbe
var preise = Zuordnung<Zeichenkette, Fließkommazahl>()
preise["Milch"] = 0.99
preise["Butter"] = 1.49
```
