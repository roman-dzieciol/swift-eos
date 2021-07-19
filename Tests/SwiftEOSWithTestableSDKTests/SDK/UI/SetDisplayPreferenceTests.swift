import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_SetDisplayPreferenceTests: XCTestCase {
    public func testEOS_UI_SetDisplayPreference_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_SetDisplayPreference = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertEqual(Options!.pointee.NotificationLocation, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_UI_SetDisplayPreference")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SetDisplayPreference(NotificationLocation: .init(rawValue: .zero)!)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_SetDisplayPreference"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
