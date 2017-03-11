# Schwalbe

For a German version of this README, please refer to [README_DE.md]().

This is a transpiler from the Schwalbe programming language to Swift. Schwalbe carries _exactly_ the same syntax as Swift, only completely in German. So basically the tool found here is nothing more than a translator for a joke originating in the [SwiftDE Slack](http://slack.swiftde.net). Please don't actually use it 😄

Since Schwalbe and Swift are perfectly equivalent regarding their syntax the current implementation of this tool is not very clever. It's actually rather stupid, does no syntax checking whatsoever and will ignore misspelled keywords. The actual compiling to machine code is done by Swift and errors will not include Schwalbe syntax.

## Usage

WIP

## Installation

WIP

## Syntax Examples

Here's some quick examples to get you up to speed with Schwalbe in your own projects.

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

(GitHub seriously needs syntax highlighting for Schwalbe code...)

## TODO

- [ ] Parse code with an actual lexer
- [ ] Use correct floating point separator, comma for life!
- [ ] Very basic editor (Sublime?) extension for syntax highlighting
