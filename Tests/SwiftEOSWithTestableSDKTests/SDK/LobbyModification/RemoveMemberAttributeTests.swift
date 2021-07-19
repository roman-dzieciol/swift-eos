import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_RemoveMemberAttributeTests: XCTestCase {
    public func testEOS_LobbyModification_RemoveMemberAttribute_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_RemoveMemberAttribute = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.Key)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_RemoveMemberAttribute")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.RemoveMemberAttribute(Key: nil)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_RemoveMemberAttribute"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
