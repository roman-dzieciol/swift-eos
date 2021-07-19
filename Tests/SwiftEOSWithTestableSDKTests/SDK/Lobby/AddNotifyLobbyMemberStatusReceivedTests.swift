import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyMemberStatusReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyMemberStatusReceived_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_AddNotifyLobbyMemberStatusReceived = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_AddNotifyLobbyMemberStatusReceived")
            return .zero }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo> = try object.AddNotifyLobbyMemberStatusReceived(NotificationFn: { arg0 in
                XCTAssertNil(arg0.LobbyId)
                XCTAssertNil(arg0.TargetUserId)
                XCTAssertEqual(arg0.CurrentStatus, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo sdk: _tagEOS_Lobby_LobbyMemberStatusReceivedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_AddNotifyLobbyMemberStatusReceived"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
