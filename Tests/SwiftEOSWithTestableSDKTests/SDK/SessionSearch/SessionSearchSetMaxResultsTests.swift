import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_SetMaxResultsTests: XCTestCase {
    public func testEOS_SessionSearch_SetMaxResults_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionSearch_Release = { SessionSearchHandle in
                XCTAssertNil(SessionSearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionSearch_SetMaxResults = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.MaxSearchResults, .zero)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_SetMaxResults")
                return .zero
            }
            defer { __on_EOS_SessionSearch_SetMaxResults = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.SetMaxResults(MaxSearchResults: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionSearch_SetMaxResults", "EOS_SessionSearch_Release"])
        }
        
        // Then
        __on_EOS_SessionSearch_Release = nil
    }
}
