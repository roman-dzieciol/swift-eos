import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Sessions_CreateSessionSearchTests: XCTestCase {
    public func testEOS_Sessions_CreateSessionSearch_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CreateSessionSearch = { Handle, Options, OutSessionSearchHandle in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_CREATESESSIONSEARCH_API_LATEST)
                XCTAssertEqual(Options!.pointee.MaxSearchResults, .zero)
                XCTAssertNotNil(OutSessionSearchHandle)
                GTest.current.sdkReceived.append("EOS_Sessions_CreateSessionSearch")
                return .zero
            }
            defer { __on_EOS_Sessions_CreateSessionSearch = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HSessionSearch = try object.CreateSessionSearch(MaxSearchResults: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CreateSessionSearch"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CreateSessionSearch"])
    }
}
