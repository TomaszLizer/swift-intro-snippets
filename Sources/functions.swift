import Foundation

struct User {}

func printString(
    externalParameter internalParameter: String
) {
    print(internalParameter)
}
printString(externalParameter: "test")

func test(commonParameter: String) {
    if commonParameter.isEmpty {
        print("💁🏼‍♂️")
    }
}

test(commonParameter: "test")

let userID = "AB931C30-B1A3-48E0-A89D-01AF255E9E39"
let userName = "Tom"

func getUser(withID id: String) {}
getUser(withID: userID)
getUser(withID: userName)

func getUser(_ id: String) {}
getUser(userName)

func saveUser(user: User) {}
saveUser(user: User())

func save(user: User) {}
save(user: User())

func saveUser(_ user: User) {}
saveUser(User())



func getString() -> String { return "123" }
func getUser() -> User { return User() }
func maybeGetUser(withID id: String) -> User? { return User() }

enum GetUserError: Error {
    case dunno
    case missingUser
}

func asyncFunction() async {}

func getUserThrowing() throws -> User {
    throw GetUserError.dunno
//    throw NSError(domain: "Get User", code: 1)
}
func getUserTypedThrowing() throws(GetUserError) -> User {
//    return User()
//    throw NSError(domain: "Get User", code: 1)
    // throw GetUserError.dunno
   throw GetUserError.missingUser
}

func testThrowing() {
   do {
       print("will execute getUserThrowing")
       let _ = try getUserThrowing()
       print("executed without error")
   } catch let getUserError as GetUserError {
       switch getUserError {
       case .dunno:
           print("Don't know what happened")
       case .missingUser:
           print("Ok, there is not user")
       }
   } catch {
       print("executed with error: \(error)")
   }
    
    do throws(GetUserError) {
       print("will execute getUserTypedThrowing")
        _ = try getUserTypedThrowing()
       print("executed without error")
    } catch {
        switch error {
        case .dunno:
            print("Don't know what happened")
        case .missingUser:
            print("Missing User")
        }
    }
}

testThrowing()

func errorAsType() -> Result<String, GetUserError> {
    fatalError()
}