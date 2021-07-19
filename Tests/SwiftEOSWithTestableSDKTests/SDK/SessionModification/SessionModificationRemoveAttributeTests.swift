import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_RemoveAttributeTests: XCTestCase {
    public func testEOS_SessionModification_RemoveAttribute_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_RemoveAttribute = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Key)
            TestGlobals.sdkReceived.append("EOS_SessionModification_RemoveAttribute")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RemoveAttribute(Key: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_RemoveAttribute"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
