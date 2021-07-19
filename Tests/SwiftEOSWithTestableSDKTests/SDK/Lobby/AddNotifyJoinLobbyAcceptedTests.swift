import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyJoinLobbyAcceptedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyJoinLobbyAccepted_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_AddNotifyJoinLobbyAccepted = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_AddNotifyJoinLobbyAccepted")
            return .zero }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo> = try object.AddNotifyJoinLobbyAccepted(NotificationFn: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.UiEventId, .zero)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Lobby_JoinLobbyAcceptedCallbackInfo sdk: _tagEOS_Lobby_JoinLobbyAcceptedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_AddNotifyJoinLobbyAccepted"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
