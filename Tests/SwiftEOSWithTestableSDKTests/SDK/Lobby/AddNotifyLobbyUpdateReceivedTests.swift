import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyLobbyUpdateReceivedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyLobbyUpdateReceived_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_AddNotifyLobbyUpdateReceived = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_AddNotifyLobbyUpdateReceived")
            return .zero }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo> = try object.AddNotifyLobbyUpdateReceived(NotificationFn: { arg0 in
                XCTAssertNil(arg0.LobbyId)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Lobby_LobbyUpdateReceivedCallbackInfo sdk: _tagEOS_Lobby_LobbyUpdateReceivedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_AddNotifyLobbyUpdateReceived"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
