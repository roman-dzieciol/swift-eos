import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_LobbySearch_RemoveParameterTests: XCTestCase {
    public func testEOS_LobbySearch_RemoveParameter_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                GTest.current.sdkReceived.append("EOS_LobbySearch_Release")
                XCTAssertNil(LobbySearchHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_RemoveParameter = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_LobbySearch_RemoveParameter")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_REMOVEPARAMETER_API_LATEST)
                XCTAssertNil(Options!.pointee.Key)
                XCTAssertEqual(Options!.pointee.ComparisonOp, .zero)
                return .zero
            }
            defer { __on_EOS_LobbySearch_RemoveParameter = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: nil)
            
            // When SDK function is called
            try object.RemoveParameter(
                Key: nil,
                ComparisonOp: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_RemoveParameter"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_LobbySearch_RemoveParameter", "EOS_LobbySearch_Release"])
    }
}
