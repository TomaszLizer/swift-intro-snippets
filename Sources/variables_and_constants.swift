/**
 Deklaracja zmiennych w języku Swift jest prosta.
 Aby zadeklarować stałą wartość używamy klucza `let`.
 Zmienne deklarujemy za pomocą klucza `var`.
 Zmienne możemy później modyfikować, musimy jednak zachować typ danych zgodnie z deklaracją.
 Wartości stałej nie można modyfikować po jej przypisaniu,
 nie musimy jednak robić tego w momencie deklaracji.
 */

var variable = 123
variable = 321

let constant = 123
/**
 Jeżeli odkomentujesz poniższą linię, to kompilator wyrzuci błąd. Zobacz jaki!
 */
//constant = 321

/**
 Swift jest językiem silnie typowanym , jednak powyżej nie deklarujemy jawnie typów danych.
 Dzieje się tak, ponieważ kompilator jest w tanie wywnioskować jakiego typu jest zmienna
 lub stała na podstawie kontekstu. Powyżej zadeklarowaliśmy zmienną oraz stałą typu Int.
 Aby jawnie zadeklarować typ zmiennej lub stałej, należy podać go po dwukropku przed przypisaniem wartości.
 */

var explicitVariable: Int = 123
let explicitConstant: Int = 123

/**
 Typ zmiennych nie może być modyfikowany po deklaracji, próba przypisania niewłaściwej wartości zakończy się błędem!
 Odkomentuj poniższą linię i zobacz jaki to błąd!
 */
//explicitVariable = "Hello world!"

/**
 W Swift nie możemy łączyć ze sobą danych różnego typu. Konwersja pomiędzy typami musi być jawna.
*/
let text = "Liczba osób w klasie to "
let count = 123
let combinedText = text + String(count)

/**
 Aby umieścić zmienne w tekście, możemy wykorzystać ich interpolację. 
 Wystarczy umieścić naszą zmienną w nawiasie poprzedzonym ukośnikiem.
*/

let textWithInterpolation = "Liczba osób w klasie to \(count)"

let longMultilineText = """
    Długi tekst możemy zapisać wykorzystując potrójny cudzysłów.
    Każda nowa linia zapisana w tym tekście będzie odzwierciedlona w programie.
    Jeżeli chcemy zapisać tekst w wielu liniach dla lepszej czytelności \
    lecz nie chcemy łamać tekstu, możemy wykorzystać ukośnik na końcu takiej linii.
    """
/// Zobacz jak tekst zostanie odzwierciedlony w konsoli!
print(longMultilineText)

/**
 Wartość zmiennej oraz stałej nie musi być przypisana w momencie deklaracji.
 Musi ona natomiast zostać przypisana przed pierwszym użyciem.
 */

var declaredVariable: Int
let declaredConstant: Int

/**
 Gdy odkomentujesz poniższe linie, to kompilator poinformuje Cię o dostępie do zmiennych które nie są zainicjalizowane.
 Zobacz jaki to błąd!
 */
//print("declaredVariable: \(declaredVariable)")
//print("declaredConstant: \(declaredConstant)")

declaredVariable = 123
print("declaredVariable: \(declaredVariable)")

declaredConstant = 123
print("declaredConstant: \(declaredConstant)")