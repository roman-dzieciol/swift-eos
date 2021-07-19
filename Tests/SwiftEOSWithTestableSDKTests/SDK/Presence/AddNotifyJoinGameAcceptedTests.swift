import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Presence_AddNotifyJoinGameAcceptedTests: XCTestCase {
    public func testEOS_Presence_AddNotifyJoinGameAccepted_Null() throws {
        TestGlobals.reset()
        __on_EOS_Presence_AddNotifyJoinGameAccepted = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Presence_AddNotifyJoinGameAccepted")
            return .zero }
        let object: SwiftEOS_Presence_Actor = SwiftEOS_Presence_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Presence_JoinGameAcceptedCallbackInfo> = try object.AddNotifyJoinGameAccepted(NotificationFn: { arg0 in
                XCTAssertNil(arg0.JoinInfo)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                XCTAssertEqual(arg0.UiEventId, .zero)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Presence_JoinGameAcceptedCallbackInfo sdk: _tagEOS_Presence_JoinGameAcceptedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Presence_AddNotifyJoinGameAccepted"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
