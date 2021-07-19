import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_AddNotifyMessageToClientTests: XCTestCase {
    public func testEOS_AntiCheatServer_AddNotifyMessageToClient_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_AddNotifyMessageToClient = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_AddNotifyMessageToClient")
            return .zero }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> = try object.AddNotifyMessageToClient(NotificationFn: { arg0 in
                XCTAssertNil(arg0.ClientHandle)
                XCTAssertNil(arg0.MessageData)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo sdk: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_AddNotifyMessageToClient"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
