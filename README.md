# Schwalbe

[![Travis](https://img.shields.io/travis/kiliankoe/schwalbe.svg?style=flat-square)](https://travis-ci.org/kiliankoe/schwalbe)

<!-- <img style="float: right; width: 25%; padding-bottom: 10pt;" src="https://cloud.githubusercontent.com/assets/2625584/24072691/175da33a-0beb-11e7-9134-7a7dd7d07400.png"> -->

This is a transpiler from the Schwalbe programming language to Swift. Schwalbe carries _exactly_ the same syntax as Swift, only completely in German. So basically the tool found here is nothing more than a translator based on a joke originating in the [SwiftDE Slack](http://slack.swiftde.net). Please don't actually use it 😄

Since Schwalbe and Swift are perfectly equivalent regarding their syntax the current implementation of this tool is not very clever. It's actually rather stupid, does no syntax checking whatsoever, will ignore misspelled keywords and replace any possible schwalbe keywords with their swift equivalent (even inside strings and comments 🙃), so be sure not to use them, there will be no warning. But it's not like you're actually wanting to use this for something, right? 😅

Why "Schwalbe"? Because I'm an idiot and thought a swift and a swallow are the same birds. And the german word for swallow is Schwalbe. Quoting [Wikipedia](https://en.wikipedia.org/wiki/Swift) on my mistake:

> They are superficially similar to [swallows](https://en.wikipedia.org/wiki/Swallow), but are not closely related to any of the [passerine](https://en.wikipedia.org/wiki/Passerine) species.

## Usage

If a single file is given, schwalbe will output it's translated content directly, enabling you to pipe it into a swift source file.

```
$ schwalbe beispiel.schwalbe > example.swift
```

For an input of multiple files schwalbe will create an output directory called `schwalbe_output` and copy all input files into this directory processing any file with a `.schwalbe` extension in the process. This enables you to translate an entire directory at once, since the directory structure is also kept as is.

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

If you're an [Atom](https://atom.io) user, here's a [package](https://github.com/kiliankoe/language-schwalbe) for you to enable syntax highlighting for Schwalbe code ✨
```
$ apm install language-schwalbe
```

## Syntax Examples

Here's some quick examples to get you up to speed with Schwalbe in your own projects.

For a complete list of all supported keywords, check [syntax.md](https://github.com/kiliankoe/schwalbe/blob/master/syntax.md).

For a slightly more extended example, have a look [here](https://github.com/kiliankoe/example-package-playingcard-schwalbe).

```schwalbe
drucke("Hallo, Welt!")
```

```schwalbe
struktur Person {
	sei name: Zeichenkette
	sei alter: Ganzzahl

	funktion gibAus() {
		drucke("Name: \(selbst.name), Alter: \(selbst.alter)")
	}
}

sei max = Person(name: "Max Mustermann", alter: 21)
max.gibAus()
```

```schwalbe
var preise = Zuordnung<Zeichenkette, Fließkommazahl>()
preise["Milch"] = 0.99
preise["Butter"] = 1.49
```

(GitHub seriously needs syntax highlighting for Schwalbe code... See [#11](https://github.com/kiliankoe/schwalbe/issues/11))
