import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_AddNotifyJoinSessionAcceptedTests: XCTestCase {
    public func testEOS_Sessions_AddNotifyJoinSessionAccepted_Null() throws {
        TestGlobals.reset()
        __on_EOS_Sessions_AddNotifyJoinSessionAccepted = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Sessions_AddNotifyJoinSessionAccepted")
            return .zero }
        let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo> = try object.AddNotifyJoinSessionAccepted(NotificationFn: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.UiEventId, .zero)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Sessions_JoinSessionAcceptedCallbackInfo sdk: _tagEOS_Sessions_JoinSessionAcceptedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Sessions_AddNotifyJoinSessionAccepted"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
