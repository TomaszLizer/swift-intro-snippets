import Foundation

var nonOptionalString: String
nonOptionalString = "Hello, World!"

var optionalString: Optional<String> = nil

print(nonOptionalString)
print(optionalString as Any)

optionalString = "Hello, World!"

print(optionalString!)

let optionalSyntacticSugar: String? = nil

let implicitlyUnwrappedOptional: String! = nil

enum CustomOptional<Value> {
   case some(Value)
   case none
}
