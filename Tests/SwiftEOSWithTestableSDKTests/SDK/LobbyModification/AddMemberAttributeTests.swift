import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_AddMemberAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_AddMemberAttribute_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_AddMemberAttribute = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Attribute)
            XCTAssertEqual(Options!.pointee.Visibility, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_AddMemberAttribute")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.AddMemberAttribute(
            Attribute: nil,
            Visibility: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_AddMemberAttribute"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
