import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyInviteReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyInviteReceived_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_AddNotifyLobbyInviteReceived = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_AddNotifyLobbyInviteReceived")
            return .zero }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo> = try object.AddNotifyLobbyInviteReceived(NotificationFn: { arg0 in
                XCTAssertNil(arg0.InviteId)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.TargetUserId)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Lobby_LobbyInviteReceivedCallbackInfo sdk: _tagEOS_Lobby_LobbyInviteReceivedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_AddNotifyLobbyInviteReceived"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
