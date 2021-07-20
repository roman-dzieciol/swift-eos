import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetPacketQueueInfoTests: XCTestCase {
    public func testEOS_P2P_GetPacketQueueInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetPacketQueueInfo = { Handle, Options, OutPacketQueueInfo in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETPACKETQUEUEINFO_API_LATEST)
                XCTAssertNotNil(OutPacketQueueInfo)
                GTest.current.sdkReceived.append("EOS_P2P_GetPacketQueueInfo")
                return .zero
            }
            defer { __on_EOS_P2P_GetPacketQueueInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.GetPacketQueueInfo()) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetPacketQueueInfo"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetPacketQueueInfo"])
    }
}
