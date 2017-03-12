# Schwalbe

For a German version of this README, please refer to [README_DE](https://github.com/kiliankoe/schwalbe/blob/master/README_DE.md).

This is a transpiler from the Schwalbe programming language to Swift. Schwalbe carries _exactly_ the same syntax as Swift, only completely in German. So basically the tool found here is nothing more than a translator based on a joke originating in the [SwiftDE Slack](http://slack.swiftde.net). Please don't actually use it 😄

Since Schwalbe and Swift are perfectly equivalent regarding their syntax the current implementation of this tool is not very clever. It's actually rather stupid, does no syntax checking whatsoever, will ignore misspelled keywords and replace any possible schwalbe keywords with their swift equivalent, so be sure not to use them, there will be no warning.

## Usage

WIP

## Installation

WIP

## Syntax Examples

Here's some quick examples to get you up to speed with Schwalbe in your own projects.

For a complete list of all supported keywords, check [syntax.md](https://github.com/kiliankoe/schwalbe/blob/master/syntax.md).

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
