/**
 Język Swift ma zdefiniowane podstawowe typy danych.
 Zaimplementowane one są jako struktury, zachowują się zatem jak wartości (value-type).
 Poniżej zadeklarowane zostały stałe z podstawowymi typami.
 Deklaracja składa się z kilku elementów:
 - klucz określający zmienna (`var`) lub stałą (`let`)
 - nazwa zmiennej
 - typ zmiennej (może być pominięty w niektórych przypadkach)
 - inicjalizacja wartości (nie jest konieczna w miejscu deklaracji)
 */

/// String służy do reprezentacji wartości tekstowych
let string: String = "TEST"
/// Int reprezentuje liczby całkowite
let integer: Int = 1
/// Float reprezentuje liczby zmiennoprzecinkowa. Reprezentuje on liczby rzeczywiste.
/// https://pl.wikipedia.org/wiki/Liczba_zmiennoprzecinkowa
let float: Float = 2.24
/// Double jest liczbą zmiennoprzecinkową jednak o podwójnej precyzji.
let double: Double = 2.24
///
let boolean: Bool = true

print("========== Podstawowe typy danych ==========")
print(type(of: string))
print(type(of: integer))
print(type(of: float))
print(type(of: double))
print(type(of: boolean))

/**
 Zobacz, że deklarację typu danych możemy pominąć, gdy przypisujemy wartość w momencie deklaracji.
 Przypisana wartość narzuca typ zmiennej.
 Zauważ również, że typ Float wymaga dokładnego sprecyzowania w momencie przypisania wartości.
 Zobacz co się stanie, gdy usuniemy `Float` przypisując wartość do stałej. Jaki typ otrzymamy?
*/

let implicitString = "TEST"
let implicitInteger = 1
let implicitFloat = Float(2.24)
let implicitDouble = 2.24
let implicitBoolean = true

print("========== Podstawowe typy danych - zapis bez deklaracji typu ==========")
print(type(of: implicitString))
print(type(of: implicitInteger))
print(type(of: implicitFloat))
print(type(of: implicitDouble))
print(type(of: implicitBoolean))

/**
 W Swift mamy do dyspozycji trzy wbudowane podstawowe struktury danych:
 - Lista (Array) - elementy zapisane w kolejności, pozwala na powtórzenia.
 - Zbiór (Set) - elementy bez powtórzeń, nie zachowuje kolejności elementów.
 - Słownik (Dictionary) - zbiór kluczy i przypisanych do nich wartości. Dla każdego klucza przypada jedna wartość.
 Elementy nie posiadaja przypisanej kolejności, dostęp do danych poprzez klucze.
*/

let array: Array<Int> = [1,2,3]
let set: Set<String> = Set(["A", "A", "B", "c", "D"])
let dictionary: Dictionary<String, Bool> = [
    "Test": true,
    "Kaboom": false
]

print("========== Podstawowe struktury danych ==========")
print(type(of: array))
print(type(of: set))
print(type(of: dictionary))

/**
 Zarówno listę jak i słownik możemy zapisać w skrócony sposób poprzez zapis z nawiasami kwadratowymi.
*/

let arraySyntacticSugar: [Int] = [1,2,3]
let dictionarySyntacticSugar: [String: Bool] = [
    "Test": true,
    "Kaboom": false
]

print("========== Podstawowe struktury danych - zapis skrócony ==========")
print(type(of: arraySyntacticSugar))
print(type(of: dictionarySyntacticSugar))

/**
 Jak każde inne typy, struktury danych również mogą zostać utworzone z pominięciem deklaracji typu.
*/

let implicitArray = [1,2,3]
let implicitSet = Set(["A", "A", "B", "c", "D"])
let implicitDictionary = [
    "Test": true,
    "Kaboom": false
]

print("========== Podstawowe struktury danych - zapis bez deklaracji typu ==========")
print(type(of: implicitArray))
print(type(of: implicitSet))
print(type(of: implicitDictionary))