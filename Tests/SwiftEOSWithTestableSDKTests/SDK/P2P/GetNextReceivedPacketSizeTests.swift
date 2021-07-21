import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetNextReceivedPacketSizeTests: XCTestCase {
    public func testEOS_P2P_GetNextReceivedPacketSize_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetNextReceivedPacketSize = { Handle, Options, OutPacketSizeBytes in
                GTest.current.sdkReceived.append("EOS_P2P_GetNextReceivedPacketSize")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETNEXTRECEIVEDPACKETSIZE_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.RequestedChannel)
                XCTAssertNotNil(OutPacketSizeBytes)
                return .zero
            }
            defer { __on_EOS_P2P_GetNextReceivedPacketSize = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetNextReceivedPacketSize(
                LocalUserId: nil,
                RequestedChannel: nil
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetNextReceivedPacketSize"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetNextReceivedPacketSize"])
    }
}
