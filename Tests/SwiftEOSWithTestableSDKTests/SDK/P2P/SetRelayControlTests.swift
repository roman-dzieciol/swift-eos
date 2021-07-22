import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_P2P_SetRelayControlTests: XCTestCase {
    public func testEOS_P2P_SetRelayControl_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_SetRelayControl = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_P2P_SetRelayControl")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_P2P_SETRELAYCONTROL_API_LATEST)
                XCTAssertEqual(Options!.pointee.RelayControl, .zero)
                return .zero
            }
            defer { __on_EOS_P2P_SetRelayControl = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetRelayControl(RelayControl: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_SetRelayControl"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_P2P_SetRelayControl"])
    }
}
