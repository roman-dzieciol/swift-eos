import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyModification_SetInvitesAllowedTests: XCTestCase {
    public func testEOS_LobbyModification_SetInvitesAllowed_Null() throws {
        TestGlobals.reset()
        __on_EOS_LobbyModification_SetInvitesAllowed = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.bInvitesAllowed, .zero)
            TestGlobals.sdkReceived.append("EOS_LobbyModification_SetInvitesAllowed")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_LobbyModification_Actor = SwiftEOS_LobbyModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetInvitesAllowed(bInvitesAllowed: false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_LobbyModification_SetInvitesAllowed"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
