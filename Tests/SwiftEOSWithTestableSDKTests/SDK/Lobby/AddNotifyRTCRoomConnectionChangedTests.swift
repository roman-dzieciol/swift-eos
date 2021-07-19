import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_AddNotifyRTCRoomConnectionChangedTests: XCTestCase {
    public func testEOS_Lobby_AddNotifyRTCRoomConnectionChanged_Null() throws {
        TestGlobals.reset()
        __on_EOS_Lobby_AddNotifyRTCRoomConnectionChanged = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LobbyId)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Lobby_AddNotifyRTCRoomConnectionChanged")
            return .zero }
        let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo> = try object.AddNotifyRTCRoomConnectionChanged(
            LobbyId: nil,
            LocalUserId: nil,
            NotificationFn: { arg0 in
                XCTAssertNil(arg0.LobbyId)
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertEqual(arg0.bIsConnected, false)
                XCTAssertEqual(arg0.DisconnectReason, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("NotificationFn") }
        )
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Lobby_RTCRoomConnectionChangedCallbackInfo sdk: _tagEOS_Lobby_RTCRoomConnectionChangedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Lobby_AddNotifyRTCRoomConnectionChanged"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
