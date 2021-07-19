import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_SetToggleFriendsKeyTests: XCTestCase {
    public func testEOS_UI_SetToggleFriendsKey_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_SetToggleFriendsKey = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.KeyCombination, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_UI_SetToggleFriendsKey")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetToggleFriendsKey(KeyCombination: .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_SetToggleFriendsKey"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
