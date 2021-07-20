import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetPacketQueueInfoTests: XCTestCase {
    public func testEOS_P2P_GetPacketQueueInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetPacketQueueInfo = { Handle, Options, OutPacketQueueInfo in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETPACKETQUEUEINFO_API_LATEST)
                XCTAssertNotNil(OutPacketQueueInfo)
                TestGlobals.current.sdkReceived.append("EOS_P2P_GetPacketQueueInfo")
                return .zero
            }
            defer { __on_EOS_P2P_GetPacketQueueInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: _tagEOS_P2P_PacketQueueInfo? = try object.GetPacketQueueInfo()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_GetPacketQueueInfo"])
            XCTAssertNil(result)
        }
    }
}
