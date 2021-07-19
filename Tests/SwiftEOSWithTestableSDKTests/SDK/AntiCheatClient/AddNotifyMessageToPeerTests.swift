import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatClient_AddNotifyMessageToPeerTests: XCTestCase {
    public func testEOS_AntiCheatClient_AddNotifyMessageToPeer_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatClient_AddNotifyMessageToPeer = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_AntiCheatClient_AddNotifyMessageToPeer")
            return .zero }
        let object: SwiftEOS_AntiCheatClient_Actor = SwiftEOS_AntiCheatClient_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo> = try object.AddNotifyMessageToPeer(NotificationFn: { arg0 in
                XCTAssertNil(arg0.ClientHandle)
                XCTAssertNil(arg0.MessageData)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_AntiCheatCommon_OnMessageToClientCallbackInfo sdk: _tagEOS_AntiCheatCommon_OnMessageToClientCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatClient_AddNotifyMessageToPeer"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
