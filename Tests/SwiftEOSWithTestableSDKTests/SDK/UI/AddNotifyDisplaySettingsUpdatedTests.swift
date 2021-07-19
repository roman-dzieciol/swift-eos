import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_UI_AddNotifyDisplaySettingsUpdatedTests: XCTestCase {
    public func testEOS_UI_AddNotifyDisplaySettingsUpdated_Null() throws {
        TestGlobals.reset()
        __on_EOS_UI_AddNotifyDisplaySettingsUpdated = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_UI_AddNotifyDisplaySettingsUpdated")
            return .zero }
        let object: SwiftEOS_UI_Actor = SwiftEOS_UI_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo> = try object.AddNotifyDisplaySettingsUpdated(NotificationFn: { arg0 in
                XCTAssertEqual(arg0.bIsVisible, false)
                XCTAssertEqual(arg0.bIsExclusiveInput, false)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_UI_OnDisplaySettingsUpdatedCallbackInfo sdk: _tagEOS_UI_OnDisplaySettingsUpdatedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_UI_AddNotifyDisplaySettingsUpdated"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
