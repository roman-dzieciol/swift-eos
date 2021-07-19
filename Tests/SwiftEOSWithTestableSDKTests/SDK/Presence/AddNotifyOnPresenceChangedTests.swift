import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_AddNotifyOnPresenceChangedTests: XCTestCase {
    public func testEOS_Presence_AddNotifyOnPresenceChanged_Null() throws {
        TestGlobals.reset()
        __on_EOS_Presence_AddNotifyOnPresenceChanged = { Handle, Options, ClientData, NotificationHandler in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationHandler?(nil)
            TestGlobals.sdkReceived.append("EOS_Presence_AddNotifyOnPresenceChanged")
            return .zero }
        let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Presence_PresenceChangedCallbackInfo> = try object.AddNotifyOnPresenceChanged(NotificationHandler: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.PresenceUserId)
                TestGlobals.swiftReceived.append("NotificationHandler") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Presence_PresenceChangedCallbackInfo sdk: _tagEOS_Presence_PresenceChangedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Presence_AddNotifyOnPresenceChanged"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationHandler"])
    }
}
