import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_AddAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_AddAttribute_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_AddAttribute = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Attribute)
            XCTAssertEqual(Options!.pointee.Visibility, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_AddAttribute")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.AddAttribute(
            Attribute: nil,
            Visibility: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_AddAttribute"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
