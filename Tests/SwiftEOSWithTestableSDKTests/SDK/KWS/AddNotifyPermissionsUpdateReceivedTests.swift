import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_KWS_AddNotifyPermissionsUpdateReceivedTests: XCTestCase {
    public func testEOS_KWS_AddNotifyPermissionsUpdateReceived_Null() throws {
        TestGlobals.reset()
        __on_EOS_KWS_AddNotifyPermissionsUpdateReceived = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_KWS_AddNotifyPermissionsUpdateReceived")
            return .zero }
        let object: SwiftEOS_KWS_Actor = SwiftEOS_KWS_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo> = try object.AddNotifyPermissionsUpdateReceived(NotificationFn: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_KWS_PermissionsUpdateReceivedCallbackInfo sdk: _tagEOS_KWS_PermissionsUpdateReceivedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_KWS_AddNotifyPermissionsUpdateReceived"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
