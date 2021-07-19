import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyMemberUpdateReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyMemberUpdateReceived_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_AddNotifyLobbyMemberUpdateReceived = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_AddNotifyLobbyMemberUpdateReceived")
            return .zero }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo> = try object.AddNotifyLobbyMemberUpdateReceived(NotificationFn: { arg0 in
                XCTAssertNil(arg0.LobbyId)
                XCTAssertNil(arg0.TargetUserId)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo sdk: _tagEOS_Lobby_LobbyMemberUpdateReceivedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_AddNotifyLobbyMemberUpdateReceived"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
