/*
 W języku programowania Swift, obiekty możemy podzielić na dwa podstawowe typy:
 - Value types (wartości)
 - Reference types (referencje)
 
 Różnica pomiędzy tymi dwoma rodzajami obiektów jest istotna.
 Value types (wartości) trzymamy w pamięci jako obiekt przypisany do zmiennej lub stałej. Każda modyfikacja lub kopia wykonuje kopię takiego obiektu (efektywnie utworzenie nowej wartości).
 Reference types (referencje, np klasy `class`) to typy które zapisywane są w pamięci operacyjnej, a zmienne przetrzymują adres pamięci pod którym taki obiekt się znajduje.
 Modyfikacje oraz kopie zawsze dotyczą tego samego obiektu.
 
 Różnice te prezentuje przykład poniżej.
 */

class MyFirstClass {
    var name: String
    let id: Int
    
    /// Klasa potrzebuje konstruktora aby mogła zostać stworzona.
    /// Nie jest on wymagany, gdy wszystkie zmienne są zainicjalizowane w miejscu deklaracji.
    init(name: String, id: Int) {
        self.name = name
        self.id = id
    }
}

/*
 Klasy
 */

let myClass = MyFirstClass(name: "Adam", id: 1)
let myClassCopy = myClass

print("==== Klasy ==== ")
print("")
print("Wartości początkowe:")
print("")
print("Wartości myClass:")
print("name: \(myClass.name) id: \(myClass.id)")
print("Adres pamięci myClass:")
print(Unmanaged.passUnretained(myClass).toOpaque())

print("Wartości myClassCopy:")
print("name: \(myClassCopy.name) id: \(myClassCopy.id)")
print("Adres pamięci myClassCopy:")
print(Unmanaged.passUnretained(myClassCopy).toOpaque())


print("")
print("Zmieniamy myClass.name na Antek")

myClass.name = "Antek"

print("")
print("Wartości po zmianie myClass:")
print("")
print("Wartości myClass:")
print("name: \(myClass.name) id: \(myClass.id)")
print("Adres pamięci myClass:")
print(Unmanaged.passUnretained(myClass).toOpaque())

print("Wartości myClassCopy:")
print("name: \(myClassCopy.name) id: \(myClassCopy.id)")
print("Adres pamięci myClassCopy:")
print(Unmanaged.passUnretained(myClassCopy).toOpaque())

/*
 Struktury
 */

/// Tutaj definiujemy strukturę
struct MyFirstStructure {
    var name: String
    let id: Int
    
    /// Kompilator Swift'a automatycznie tworzy konstruktor dla struktur.
    /// Jest to tzw `memberwise initializer`
}

var structure = MyFirstStructure(name: "Tomo", id: 1)
let structureCopy = structure

/*
 Gdy zmienimy `var structure` na `let structure` to kompilator wyrzuci błąd.
 Zobacz jaki...
 */

print("")
print("==== Struktury ==== ")
print("")
print("Wartości początkowe:")
print("")
print(structure)
print(structureCopy)

print("")
print("Zmieniamy structure.name na Antek")

structure.name = "Antek"

print("")
print("Wartości po zmianie myClass:")
print("")

print(structure)
print(structureCopy)
