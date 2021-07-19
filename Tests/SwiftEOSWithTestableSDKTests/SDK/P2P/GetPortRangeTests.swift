import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetPortRangeTests: XCTestCase {
    public func testEOS_P2P_GetPortRange_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            var OutPort: UInt16? = nil
            var OutNumAdditionalPortsToTry: UInt16? = nil
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetPortRange = { Handle, Options, OutPort, OutNumAdditionalPortsToTry in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(OutPort)
                XCTAssertNil(OutNumAdditionalPortsToTry)
                TestGlobals.current.sdkReceived.append("EOS_P2P_GetPortRange")
                return .zero
            }
            defer { __on_EOS_P2P_GetPortRange = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.GetPortRange(
                OutPort: &OutPort,
                OutNumAdditionalPortsToTry: &OutNumAdditionalPortsToTry
            )
            
            // Then
            XCTAssertNil(OutPort)
            XCTAssertNil(OutNumAdditionalPortsToTry)
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_GetPortRange"])
        }
    }
}
