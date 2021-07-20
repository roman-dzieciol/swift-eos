import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_ReceivePacketTests: XCTestCase {
    public func testEOS_P2P_ReceivePacket_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            var OutPeerId: EOS_ProductUserId? = nil
            var OutSocketId: SwiftEOS_P2P_SocketId? = nil
            var OutChannel: UInt8? = nil
            var OutData: [UInt8]? = nil
            
            // Given implementation for SDK function
            __on_EOS_P2P_ReceivePacket = { Handle, Options, OutPeerId, OutSocketId, OutChannel, OutData, OutBytesWritten in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_RECEIVEPACKET_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.MaxDataSizeBytes, .zero)
                XCTAssertNil(Options!.pointee.RequestedChannel)
                XCTAssertNotNil(OutPeerId)
                XCTAssertNotNil(OutSocketId)
                XCTAssertNotNil(OutChannel)
                XCTAssertNotNil(OutData)
                XCTAssertNotNil(OutBytesWritten)
                TestGlobals.current.sdkReceived.append("EOS_P2P_ReceivePacket")
                return .zero
            }
            defer { __on_EOS_P2P_ReceivePacket = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.ReceivePacket(
                LocalUserId: nil,
                MaxDataSizeBytes: .zero,
                RequestedChannel: nil,
                OutPeerId: &OutPeerId,
                OutSocketId: &OutSocketId,
                OutChannel: &OutChannel,
                OutData: &OutData
            )
            
            // Then
            XCTAssertNil(OutPeerId)
            XCTAssertNil(OutSocketId)
            XCTAssertNil(OutChannel)
            XCTAssertNil(OutData)
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_ReceivePacket"])
        }
    }
}
