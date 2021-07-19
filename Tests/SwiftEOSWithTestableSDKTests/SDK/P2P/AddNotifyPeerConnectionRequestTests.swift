import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AddNotifyPeerConnectionRequestTests: XCTestCase {
    public func testEOS_P2P_AddNotifyPeerConnectionRequest_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_AddNotifyPeerConnectionRequest = { Handle, Options, ClientData, ConnectionRequestHandler in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.SocketId)
            XCTAssertNil(ClientData)
            ConnectionRequestHandler?(nil)
            TestGlobals.sdkReceived.append("EOS_P2P_AddNotifyPeerConnectionRequest")
            return .zero }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingConnectionRequestInfo> = try object.AddNotifyPeerConnectionRequest(
            LocalUserId: nil,
            SocketId: nil,
            ConnectionRequestHandler: { arg0 in
                XCTAssertNil(arg0.LocalUserId)
                XCTAssertNil(arg0.RemoteUserId)
                XCTAssertNil(arg0.SocketId)
                TestGlobals.swiftReceived.append("ConnectionRequestHandler") }
        )
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_P2P_OnIncomingConnectionRequestInfo sdk: _tagEOS_P2P_OnIncomingConnectionRequestInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_AddNotifyPeerConnectionRequest"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["ConnectionRequestHandler"])
    }
}
