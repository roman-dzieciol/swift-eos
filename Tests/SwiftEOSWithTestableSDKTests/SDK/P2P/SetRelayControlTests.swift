import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_P2P_SetRelayControlTests: XCTestCase {
    public func testEOS_P2P_SetRelayControl_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_P2P_SetRelayControl = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.RelayControl, .zero)
                TestGlobals.current.sdkReceived.append("EOS_P2P_SetRelayControl")
                return .zero
            }
            defer { __on_EOS_P2P_SetRelayControl = nil }
            
            // Given Actor
            let object: SwiftEOS_P2P_Actor = SwiftEOS_P2P_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetRelayControl(RelayControl: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_P2P_SetRelayControl"])
        }
    }
}
