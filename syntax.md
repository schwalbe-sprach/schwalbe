This is a complete list of all supported Swift keywords with their Schwalbe counterpart. Sorted alphabetically for convenience. Omitted keywords (e.g. `var`) are the same in Schwalbe[^1].

```
#available          #verfügbar
#colorLiteral       #farbLiteral
#column             #spalte
#else               #ansonsten
#elseif             #andernfalls
#endif              #beendefalls
#file               #datei
#fileReference      #dateiReferenz
#function           #funktion
#if                 #falls
#imageLiteral       #bildLiteral
#line               #zeile
#selector           #selektor
#sourceLocation
Any                 Beliebig
as                  wie
associatedtype      assoziiertertyp
associativity       assoziativität
break               brichaus
case                fürdenfall
catch               fange
class               klasse
continue            fahrefort
convenience         bequem
default             standardmäßig
defer               verzögere
deinit              deinitialisiere
didSet              wurdeGesetzt
do                  mache
dynamic             dynamisch
else                ansonsten
else if             andernfalls
enum                aufzählung
extension           erweiterung
fallthrough         falledurch
false               falsch
fileprivate         dateiprivat
for                 für
func                funktion
get                 hole
guard               stellesicher
if                  falls
import              importiere
indirect            indirekt
infix               eingefügt
init                initialisiere
inout               reinraus
internal            intern
is                  ist
lazy                faul
left                links
let                 lass
mutating            mutierend
nil                 nix
nonmutating         nichtmutierend
open                offen
override            überschreibe
postfix             angehängt
precedence          präzedenz
prefix              vorangefügt
private             privat
protocol            protokoll
public              öffentlich
repeat              wiederhole
required            erforderlich
rethrows            wirftwieder
return              antworte
right               rechts
self                selbst
Self                Selbst
set                 setze
static              statisch
struct              struktur
subscript           indiziere
super
switch              rangiere
throw               wirf
throws              wirft
true                wahr
try                 versuche
Type                Typ
typealias           typalias
unowned             herrenlos
weak                schwach
where               wobei
while               während
willSet             werdeSetzen
```

Additionally, the following types and functions are also available.

```
Array               Anordnung
Dictionary          Wörterbuch
Double              Fließkommazahl
Error               Fehler
exit                beende
fatalError          fatalerFehler
Float               KurzeFließkommazahl
Int                 Ganzzahl
print               drucke
String              Zeichenkette
```

[^1]: You can also mix and match syntax however you feel like it. The transpiler only cares about Schwalbe keywords.
