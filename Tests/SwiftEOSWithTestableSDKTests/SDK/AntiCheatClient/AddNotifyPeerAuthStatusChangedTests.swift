import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddNotifyPeerAuthStatusChangedTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged")
            return .zero }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo> = try object.AddNotifyPeerAuthStatusChanged(NotificationFn: { arg0 in
                XCTAssertNil(arg0.ClientHandle)
                XCTAssertEqual(arg0.ClientAuthStatus, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo sdk: _tagEOS_AntiCheatCommon_OnClientAuthStatusChangedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_AddNotifyPeerAuthStatusChanged"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
