import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_AntiCheatServer_AddNotifyClientActionRequiredTests: XCTestCase {
    public func testEOS_AntiCheatServer_AddNotifyClientActionRequired_Null() throws {
        TestGlobals.reset()
        __on_EOS_AntiCheatServer_AddNotifyClientActionRequired = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_AntiCheatServer_AddNotifyClientActionRequired")
            return .zero }
        let object: SwiftEOS_AntiCheatServer_Actor = SwiftEOS_AntiCheatServer_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo> = try object.AddNotifyClientActionRequired(NotificationFn: { arg0 in
                XCTAssertNil(arg0.ClientHandle)
                XCTAssertEqual(arg0.ClientAction, .init(rawValue: .zero)!)
                XCTAssertEqual(arg0.ActionReasonCode, .init(rawValue: .zero)!)
                XCTAssertNil(arg0.ActionReasonDetailsString)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo sdk: _tagEOS_AntiCheatCommon_OnClientActionRequiredCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_AntiCheatServer_AddNotifyClientActionRequired"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
