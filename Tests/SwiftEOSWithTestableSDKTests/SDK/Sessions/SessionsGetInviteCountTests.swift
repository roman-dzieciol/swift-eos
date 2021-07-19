import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_GetInviteCountTests: XCTestCase {
    public func testEOS_Sessions_GetInviteCount_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_GetInviteCount = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_Sessions_GetInviteCount")
            return .zero }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Int = try object.GetInviteCount(LocalUserId: nil)
        XCTAssertEqual(result, .zero)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_GetInviteCount"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
