import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_GetToggleFriendsKeyTests: XCTestCase {
    public func testEOS_UI_GetToggleFriendsKey_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_GetToggleFriendsKey = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            TestGlobals.sdkReceived.append("EOS_UI_GetToggleFriendsKey")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_UI_EKeyCombination = try object.GetToggleFriendsKey()
        XCTAssertEqual(result, .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_GetToggleFriendsKey"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
