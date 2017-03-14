func translate(_ input: String) -> String {
    var output = input
    for (swift, schwalbe) in syntax {
        output = output.replacingOccurrences(of: schwalbe, with: swift)
    }
    return output
}

let syntax = [
    "#available": "#verfügbar",
    "#colorLiteral": "#farbLiteral",
    "#column": "#spalte",
    "#else": "#ansonsten",
    "#elseif": "#andernfalls",
    "#endif": "#beendefalls",
    "#file": "#datei",
    "#fileReference": "#dateiReferenz",
    "#function": "#funktion",
    "#if": "#falls",
    "#imageLiteral": "#bildLiteral",
    "#line": "#zeile",
    "#selector": "#selektor",
    " as": " als",
    "associatedtype": "assoziiertertyp",
    "associativity": "assoziativität",
    "break": "brichaus",
    "case ": "fürdenfall ",
    "catch": "fange",
    "class": "klasse",
    "continue": "fahrefort",
    "convenience": "bequem",
    "default": "standardmäßig",
    "defer": "verzögere",
    "deinit": "deinitialisiere",
    "didSet": "wurdeGesetzt",
    "do": "mache",
    "dynamic": "dynamisch",
    "else": "ansonsten",
    "else if": "andernfalls",
    "enum": "aufzählung",
    "extension": "erweiterung",
    "fallthrough": "falledurch",
    "false": "falsch",
    "fileprivate": "dateiprivat",
    "for ": "für ",
    "func": "funktion",
    "get": "hole",
    "guard": "stellesicher",
    "if ": "falls ",
    "import": "importiere",
    "indirect": "indirekt",
    "infix": "eingefügt",
    "init": "initialisiere",
    "inout": "reinraus",
    "internal": "intern",
    " is ": " ist ",
    "lazy": "faul",
    "left": "links",
    "let ": "sei ",
    "mutating": "mutierend",
    "nil": "nix",
    "nonmutating": "nichtmutierend",
    "open": "offen",
    "override": "überschreibe",
    "postfix": "angehängt",
    "precedence": "präzedenz",
    "prefix": "vorangefügt",
    "private": "privat",
    "protocol": "protokoll",
    "public": "öffentlich",
    "repeat": "wiederhole",
    "required": "erforderlich",
    "rethrows": "wirftwieder",
    "return": "antworte",
    "right": "rechts",
    "self": "selbst",
    "Self": "Selbst",
    "set": "setze",
    "static": "statisch",
    "struct": "struktur",
    "subscript": "indiziere",
    "switch": "rangiere",
    "throw ": "wirf ",
    "throws ": "wirft ",
    "true": "wahr",
    "try": "versuche",
    ".Type": ".Typ",
    "typealias": "typalias",
    "unowned": "herrenlos",
    "weak": "schwach",
    "where": "wobei",
    "while": "während",
    "willSet": "werdeSetzen",

    "Any": "Beliebig",
    "Array": "Anordnung",
    "Bool": "Boolescherausdruck",
    "Comparable": "Vergleichbar",
    "CustomStringConvertible": "Zuzeichenketteumwandelbar",
    "Dictionary": "Zuordnung",
    "Double": "Fließkommazahl",
    "Error ": "Fehler ",
    "Equatable": "Gleichsetzbar",
    "exit(": "beende(",
    "fatalError(": "fatalerFehler(",
    "Float": "Kurzefließkommazahl",
    "Int": "Ganzzahl",
    "print(": "drucke(",
    "String": "Zeichenkette",
]