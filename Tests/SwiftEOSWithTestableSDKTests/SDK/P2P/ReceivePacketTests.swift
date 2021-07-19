import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_ReceivePacketTests: XCTestCase {
    public func testEOS_P2P_ReceivePacket_Null() throws {
        TestGlobals.reset()
        var OutPeerId: EOS_ProductUserId? = nil
        var OutSocketId: SwiftEOS_P2P_SocketId? = nil
        var OutChannel: UInt8? = nil
        var OutData: [UInt8]? = nil
        __on_EOS_P2P_ReceivePacket = { Handle, Options, OutPeerId, OutSocketId, OutChannel, OutData, OutBytesWritten in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertEqual(Options!.pointee.MaxDataSizeBytes, .zero)
            XCTAssertNil(Options!.pointee.RequestedChannel)
            XCTAssertNil(OutPeerId)
            XCTAssertNil(OutSocketId)
            XCTAssertNil(OutChannel)
            XCTAssertNil(OutData)
            XCTAssertNil(OutBytesWritten)
            TestGlobals.sdkReceived.append("EOS_P2P_ReceivePacket")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        try object.ReceivePacket(
            LocalUserId: nil,
            MaxDataSizeBytes: .zero,
            RequestedChannel: nil,
            OutPeerId: &OutPeerId,
            OutSocketId: &OutSocketId,
            OutChannel: &OutChannel,
            OutData: &OutData
        )
        XCTAssertNil(OutPeerId)
        XCTAssertNil(OutSocketId)
        XCTAssertNil(OutChannel)
        XCTAssertNil(OutData)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_P2P_ReceivePacket"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
