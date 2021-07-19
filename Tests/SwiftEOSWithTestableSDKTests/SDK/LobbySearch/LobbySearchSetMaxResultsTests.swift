import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_SetMaxResultsTests: XCTestCase {
    public func testEOS_LobbySearch_SetMaxResults_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_SetMaxResults = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.MaxResults, .zero)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_SetMaxResults")
                return .zero
            }
            defer { __on_EOS_LobbySearch_SetMaxResults = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetMaxResults(MaxResults: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbySearch_SetMaxResults", "EOS_LobbySearch_Release"])
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
    }
}
