import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_RemoveAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_RemoveAttribute_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_RemoveAttribute = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Key)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_RemoveAttribute")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RemoveAttribute(Key: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_RemoveAttribute"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
