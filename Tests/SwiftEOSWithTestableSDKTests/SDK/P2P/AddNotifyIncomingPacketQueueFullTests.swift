import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_AddNotifyIncomingPacketQueueFullTests: XCTestCase {
    public func testEOS_P2P_AddNotifyIncomingPacketQueueFull_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_AddNotifyIncomingPacketQueueFull = { Handle, Options, ClientData, IncomingPacketQueueFullHandler in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            IncomingPacketQueueFullHandler?(nil)
            TestGlobals.sdkReceived.append("EOS_P2P_AddNotifyIncomingPacketQueueFull")
            return .zero }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_P2P_OnIncomingPacketQueueFullInfo> = try object.AddNotifyIncomingPacketQueueFull(IncomingPacketQueueFullHandler: { arg0 in
                XCTAssertEqual(arg0.PacketQueueMaxSizeBytes, .zero)
                XCTAssertEqual(arg0.PacketQueueCurrentSizeBytes, .zero)
                XCTAssertNil(arg0.OverflowPacketLocalUserId)
                XCTAssertEqual(arg0.OverflowPacketChannel, .zero)
                XCTAssertEqual(arg0.OverflowPacketSizeBytes, .zero)
                TestGlobals.swiftReceived.append("IncomingPacketQueueFullHandler") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_P2P_OnIncomingPacketQueueFullInfo sdk: _tagEOS_P2P_OnIncomingPacketQueueFullInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_AddNotifyIncomingPacketQueueFull"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["IncomingPacketQueueFullHandler"])
    }
}
