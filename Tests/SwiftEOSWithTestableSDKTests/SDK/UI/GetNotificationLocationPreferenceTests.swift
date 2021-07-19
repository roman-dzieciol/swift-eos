import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_GetNotificationLocationPreferenceTests: XCTestCase {
    public func testEOS_UI_GetNotificationLocationPreference_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_GetNotificationLocationPreference = { Handle in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            TestGlobals.sdkReceived.append("EOS_UI_GetNotificationLocationPreference")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: EOS_UI_ENotificationLocation = object.GetNotificationLocationPreference()
        XCTAssertEqual(result, .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_GetNotificationLocationPreference"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
