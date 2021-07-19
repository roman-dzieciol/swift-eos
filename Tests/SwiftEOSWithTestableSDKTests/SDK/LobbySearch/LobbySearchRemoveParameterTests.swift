import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_RemoveParameterTests: XCTestCase {
    public func testEOS_LobbySearch_RemoveParameter_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_RemoveParameter = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_REMOVEPARAMETER_API_LATEST)
                XCTAssertNil(Options!.pointee.Key)
                XCTAssertEqual(Options!.pointee.ComparisonOp, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_RemoveParameter")
                return .zero
            }
            defer { __on_EOS_LobbySearch_RemoveParameter = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.RemoveParameter(
                Key: nil,
                ComparisonOp: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbySearch_RemoveParameter", "EOS_LobbySearch_Release"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
    }
}
