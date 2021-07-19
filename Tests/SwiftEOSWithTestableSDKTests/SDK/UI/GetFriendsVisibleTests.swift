import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_GetFriendsVisibleTests: XCTestCase {
    public func testEOS_UI_GetFriendsVisible_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_GetFriendsVisible = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            TestGlobals.sdkReceived.append("EOS_UI_GetFriendsVisible")
            return .zero }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: Bool = try object.GetFriendsVisible(LocalUserId: nil)
        XCTAssertEqual(result, false)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_GetFriendsVisible"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
