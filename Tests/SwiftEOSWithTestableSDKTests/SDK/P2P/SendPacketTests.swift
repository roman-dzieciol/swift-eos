import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SendPacketTests: XCTestCase {
    public func testEOS_P2P_SendPacket_Null() throws {
        TestGlobals.reset()
        __on_EOS_P2P_SendPacket = { Handle, Options in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(Options!.pointee.RemoteUserId)
            XCTAssertNil(Options!.pointee.SocketId)
            XCTAssertEqual(Options!.pointee.Channel, .zero)
            XCTAssertEqual(Options!.pointee.DataLengthBytes, .zero)
            XCTAssertNil(Options!.pointee.Data)
            XCTAssertEqual(Options!.pointee.bAllowDelayedDelivery, .zero)
            XCTAssertEqual(Options!.pointee.Reliability, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_P2P_SendPacket")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.SendPacket(
            LocalUserId: nil,
            RemoteUserId: nil,
            SocketId: nil,
            Channel: .zero,
            Data: nil,
            bAllowDelayedDelivery: false,
            Reliability: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_SendPacket"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
