# Schwalbe

Dies ist ein Transpiler von der Programmiersprache Schwalbe zu Swift. Schwalbe und Swift teilen sich _exakt_ die selbe Syntax, nur ist Schwalbe komplett auf Deutsch. Demnach handelt es sich hier um nicht viel mehr als eine Art Übersetzer. Die Idee findet ihren Ursprung in einem Witz im [SwiftDE Slack](http://slack.swiftde.net). Bitte benutzt das hier nicht wirklich 😄

Weil Schwalbe und Swift perfekt äquivalent sind was ihre Syntax angeht ist die aktuelle Implementation dieses Tools nicht besonders clever. Also eigentlich ganz im Gegenteil, es gibt keinerlei Überprüfung der Syntax, falsch geschriebene Syntaxelemente werden ignoriert und alle möglicherweise auch selbst genutzten Syntaxelemente von Schwalbe werden gnadenlos ersetzt, also nutz' sie am besten nicht. Es wird keine Warnung ausgegeben.

## Nutzung

Folgt in Kürze.

## Installation

Folgt in Kürze.

## Beispiele

Ein paar kurze Beispiele um dich zur produktiven Nutzung von Schwalbe in eigenen Projekten vorzubereiten.

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
var preise = Wörterbuch<Zeichenkette, Fließkommazahl>()
preise["Milch"] = 0.99
preise["Butter"] = 1.49
```
