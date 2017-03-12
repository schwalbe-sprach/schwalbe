import PathKit

func translate(_ input: String) -> String {
    var swift = input
    for (schwalbeKeyword, swiftKeyword) in mapping {
        swift = swift.replacingOccurrences(of: schwalbeKeyword, with: swiftKeyword)
    }
    return swift
}

let mapping = [
    "struktur": "struct",
    "lass": "let",
    "Zeichenkette": "String",
    "Ganzzahl": "Int",
    "funktion": "func",
    "selbst": "self",
    "drucke": "print",
]
