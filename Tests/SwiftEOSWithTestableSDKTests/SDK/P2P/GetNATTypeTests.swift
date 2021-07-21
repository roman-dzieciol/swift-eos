import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetNATTypeTests: XCTestCase {
    public func testEOS_P2P_GetNATType_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetNATType = { Handle, Options, OutNATType in
                GTest.current.sdkReceived.append("EOS_P2P_GetNATType")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETNATTYPE_API_LATEST)
                XCTAssertNotNil(OutNATType)
                return .zero
            }
            defer { __on_EOS_P2P_GetNATType = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ENATType = try object.GetNATType()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetNATType"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetNATType"])
    }
}
