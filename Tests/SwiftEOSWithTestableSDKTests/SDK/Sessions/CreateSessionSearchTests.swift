import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Sessions_CreateSessionSearchTests: XCTestCase {
    public func testEOS_Sessions_CreateSessionSearch_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Sessions_CreateSessionSearch = { Handle, Options, OutSessionSearchHandle in
                GTest.current.sdkReceived.append("EOS_Sessions_CreateSessionSearch")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONS_CREATESESSIONSEARCH_API_LATEST)
                XCTAssertEqual(Options!.pointee.MaxSearchResults, .zero)
                XCTAssertNotNil(OutSessionSearchHandle)
                return .zero
            }
            defer { __on_EOS_Sessions_CreateSessionSearch = nil }
            
            // Given Actor
            let object: SwiftEOS_Sessions_Actor = SwiftEOS_Sessions_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CreateSessionSearch(MaxSearchResults: .zero)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CreateSessionSearch"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Sessions_CreateSessionSearch"])
    }
}
