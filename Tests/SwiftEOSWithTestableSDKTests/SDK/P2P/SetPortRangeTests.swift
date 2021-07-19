import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SetPortRangeTests: XCTestCase {
    public func testEOS_P2P_SetPortRange_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_SetPortRange = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_SETPORTRANGE_API_LATEST)
                XCTAssertEqual(Options!.pointee.Port, .zero)
                XCTAssertEqual(Options!.pointee.MaxAdditionalPortsToTry, .zero)
                TestGlobals.current.sdkReceived.append("EOS_P2P_SetPortRange")
                return .zero
            }
            defer { __on_EOS_P2P_SetPortRange = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetPortRange(
                Port: .zero,
                MaxAdditionalPortsToTry: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_SetPortRange"])
        }
    }
}
