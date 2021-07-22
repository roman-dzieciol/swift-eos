import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_P2P_GetPacketQueueInfoTests: XCTestCase {
    public func testEOS_P2P_GetPacketQueueInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetPacketQueueInfo = { Handle, Options, OutPacketQueueInfo in
                GTest.current.sdkReceived.append("EOS_P2P_GetPacketQueueInfo")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETPACKETQUEUEINFO_API_LATEST)
                XCTAssertNotNil(OutPacketQueueInfo)
                return .zero
            }
            defer { __on_EOS_P2P_GetPacketQueueInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            let result: _tagEOS_P2P_PacketQueueInfo = try object.GetPacketQueueInfo()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetPacketQueueInfo"])
            XCTAssertEqual(result.IncomingPacketQueueMaxSizeBytes, .zero)
            XCTAssertEqual(result.IncomingPacketQueueCurrentSizeBytes, .zero)
            XCTAssertEqual(result.IncomingPacketQueueCurrentPacketCount, .zero)
            XCTAssertEqual(result.OutgoingPacketQueueMaxSizeBytes, .zero)
            XCTAssertEqual(result.OutgoingPacketQueueCurrentSizeBytes, .zero)
            XCTAssertEqual(result.OutgoingPacketQueueCurrentPacketCount, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetPacketQueueInfo"])
    }
}
