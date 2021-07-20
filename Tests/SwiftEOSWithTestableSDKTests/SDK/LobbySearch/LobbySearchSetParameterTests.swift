import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_SetParameterTests: XCTestCase {
    public func testEOS_LobbySearch_SetParameter_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                GTest.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_SetParameter = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_SETPARAMETER_API_LATEST)
                XCTAssertNil(Options!.pointee.Parameter)
                XCTAssertEqual(Options!.pointee.ComparisonOp, .zero)
                GTest.current.sdkReceived.append("EOS_LobbySearch_SetParameter")
                return .zero
            }
            defer { __on_EOS_LobbySearch_SetParameter = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetParameter(
                Parameter: nil,
                ComparisonOp: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_SetParameter"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_SetParameter", "EOS_LobbySearch_Release"])
    }
}
