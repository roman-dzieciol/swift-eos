import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetNextReceivedPacketSizeTests: XCTestCase {
    public func testEOS_P2P_GetNextReceivedPacketSize_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetNextReceivedPacketSize = { Handle, Options, OutPacketSizeBytes in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETNEXTRECEIVEDPACKETSIZE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RequestedChannel)
                XCTAssertNotNil(OutPacketSizeBytes)
                TestGlobals.current.sdkReceived.append("EOS_P2P_GetNextReceivedPacketSize")
                return .zero
            }
            defer { __on_EOS_P2P_GetNextReceivedPacketSize = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int? = try object.GetNextReceivedPacketSize(
                LocalUserId: nil,
                RequestedChannel: nil
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_GetNextReceivedPacketSize"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_GetNextReceivedPacketSize"])
    }
}
