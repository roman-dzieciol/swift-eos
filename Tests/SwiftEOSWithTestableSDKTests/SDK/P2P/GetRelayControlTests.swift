import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_GetRelayControlTests: XCTestCase {
    public func testEOS_P2P_GetRelayControl_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_GetRelayControl = { Handle, Options, OutRelayControl in
                GTest.current.sdkReceived.append("EOS_P2P_GetRelayControl")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_GETRELAYCONTROL_API_LATEST)
                XCTAssertNotNil(OutRelayControl)
                return .zero
            }
            defer { __on_EOS_P2P_GetRelayControl = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ERelayControl = try object.GetRelayControl()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetRelayControl"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_GetRelayControl"])
    }
}
