import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddNotifyMessageToServerTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyMessageToServer_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_AddNotifyMessageToServer = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_AddNotifyMessageToServer")
            return .zero }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo> = try object.AddNotifyMessageToServer(NotificationFn: { arg0 in
                XCTAssertNil(arg0.MessageData)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_AntiCheatClient_OnMessageToServerCallbackInfo sdk: _tagEOS_AntiCheatClient_OnMessageToServerCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_AddNotifyMessageToServer"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
