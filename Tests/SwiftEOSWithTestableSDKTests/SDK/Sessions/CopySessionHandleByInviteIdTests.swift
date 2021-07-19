import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CopySessionHandleByInviteIdTests: XCTestCase {
    public func testEOS_Sessions_CopySessionHandleByInviteId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_CopySessionHandleByInviteId = { Handle, Options, OutSessionHandle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.InviteId)
            XCTAssertNil(OutSessionHandle)
            TestGlobals.sdkReceived.append("EOS_Sessions_CopySessionHandleByInviteId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_HSessionDetails? = try object.CopySessionHandleByInviteId(InviteId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_CopySessionHandleByInviteId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
