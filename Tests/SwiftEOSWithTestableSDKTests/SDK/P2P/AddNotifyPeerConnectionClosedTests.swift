import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AddNotifyPeerConnectionClosedTests: XCTestCase {
    public func testEOS_P2P_AddNotifyPeerConnectionClosed_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_AddNotifyPeerConnectionClosed = { Handle, Options, ClientData, ConnectionClosedHandler in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.SocketId)
            XCTAssertNil(ClientData)
            ConnectionClosedHandler?(nil)
            TestGlobals.sdkReceived.append("EOS_P2P_AddNotifyPeerConnectionClosed")
            return .zero }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_P2P_OnRemoteConnectionClosedInfo> = try object.AddNotifyPeerConnectionClosed(
            LocalUserId: nil,
            SocketId: nil,
            ConnectionClosedHandler: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RemoteUserId)
                XCTAssertNil(arg0.SocketId)
                XCTAssertEqual(arg0.Reason, .init(rawValue: .zero)!)
                TestGlobals.swiftReceived.append("ConnectionClosedHandler") }
        )
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_P2P_OnRemoteConnectionClosedInfo sdk: _tagEOS_P2P_OnRemoteConnectionClosedInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionClosed"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["ConnectionClosedHandler"])
    }
}
