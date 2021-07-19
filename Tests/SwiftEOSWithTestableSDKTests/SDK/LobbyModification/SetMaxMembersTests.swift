import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetMaxMembersTests: XCTestCase {
    public func testEOS_LobbyModification_SetMaxMembers_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_SetMaxMembers = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.MaxMembers, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_SetMaxMembers")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetMaxMembers(MaxMembers: .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_SetMaxMembers"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
