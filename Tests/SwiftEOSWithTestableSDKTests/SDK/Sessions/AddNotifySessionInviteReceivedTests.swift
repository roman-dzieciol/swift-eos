import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_AddNotifySessionInviteReceivedTests: XCTestCase {
    public func testEOS_Sessions_AddNotifySessionInviteReceived_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_AddNotifySessionInviteReceived = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Sessions_AddNotifySessionInviteReceived")
            return .zero }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo> = try object.AddNotifySessionInviteReceived(NotificationFn: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                XCTAssertNil(arg0.InviteId)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Sessions_SessionInviteReceivedCallbackInfo sdk: _tagEOS_Sessions_SessionInviteReceivedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_AddNotifySessionInviteReceived"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
