import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SetPacketQueueSizeTests: XCTestCase {
    public func testEOS_P2P_SetPacketQueueSize_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_SetPacketQueueSize = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_SETPACKETQUEUESIZE_API_LATEST)
                XCTAssertEqual(Options!.pointee.IncomingPacketQueueMaxSizeBytes, .zero)
                XCTAssertEqual(Options!.pointee.OutgoingPacketQueueMaxSizeBytes, .zero)
                GTest.current.sdkReceived.append("EOS_P2P_SetPacketQueueSize")
                return .zero
            }
            defer { __on_EOS_P2P_SetPacketQueueSize = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetPacketQueueSize(
                IncomingPacketQueueMaxSizeBytes: .zero,
                OutgoingPacketQueueMaxSizeBytes: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_SetPacketQueueSize"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_SetPacketQueueSize"])
    }
}
