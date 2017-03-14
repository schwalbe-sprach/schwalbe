import Foundation
import XCTest
import PathKit
@testable import schwalbeLib

func readFixtures(withName name: String) -> (String, String) {
    let fixturesPath = Path("./Tests/schwalbeLibTests/fixtures")
    let schwalbeSrc: String = try! (fixturesPath + Path("\(name)._schwalbe")).read()
    let swiftSrc: String = try! (fixturesPath + Path("\(name)._swift")).read()
    return (schwalbeSrc, swiftSrc)
}

class schwalbeLibTests: XCTestCase {
    func testSimpleTranslation() {
        let schwalbeSrc = "drucke(\"Hallo, Welt!\")"
        let swiftSrc = "print(\"Hallo, Welt!\")"
        XCTAssertEqual(swiftSrc, schwalbeLib.translate(schwalbeSrc))
    }

    func testReadmeExample() {
        let (schwalbeSrc, swiftSrc) = readFixtures(withName: "readme")
        let translated = schwalbeLib.translate(schwalbeSrc)
        XCTAssertEqual(translated, swiftSrc)
    }
}
