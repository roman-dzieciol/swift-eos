import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetInvitesAllowedTests: XCTestCase {
    public func testEOS_SessionModification_SetInvitesAllowed_Null() throws {
        TestGlobals.reset()
        __on_EOS_SessionModification_SetInvitesAllowed = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.bInvitesAllowed, .zero)
            TestGlobals.sdkReceived.append("EOS_SessionModification_SetInvitesAllowed")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetInvitesAllowed(bInvitesAllowed: false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_SessionModification_SetInvitesAllowed"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
