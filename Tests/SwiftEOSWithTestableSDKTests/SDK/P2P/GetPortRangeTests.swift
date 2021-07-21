import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetPortRangeTests: XCTestCase {
    public func testEOS_P2P_GetPortRange_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            var OutPort: UInt16? = nil
            var OutNumAdditionalPortsToTry: UInt16? = nil
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetPortRange = { Handle, Options, OutPort, OutNumAdditionalPortsToTry in
                GTest.current.sdkReceived.append("EOS_P2P_GetPortRange")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETPORTRANGE_API_LATEST)
                XCTAssertNotNil(OutPort)
                XCTAssertNotNil(OutNumAdditionalPortsToTry)
                return .zero
            }
            defer { __on_EOS_P2P_GetPortRange = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            try object.GetPortRange(
                OutPort: &OutPort,
                OutNumAdditionalPortsToTry: &OutNumAdditionalPortsToTry
            )
            
            // Then
            XCTAssertNotNil(OutPort)
            XCTAssertNotNil(OutNumAdditionalPortsToTry)
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetPortRange"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetPortRange"])
    }
}
