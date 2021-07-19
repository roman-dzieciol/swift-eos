import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_GetSearchResultCountTests: XCTestCase {
    public func testEOS_SessionSearch_GetSearchResultCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionSearch_Release = { SessionSearchHandle in
                XCTAssertNil(SessionSearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionSearch_GetSearchResultCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_GetSearchResultCount")
                return .zero
            }
            defer { __on_EOS_SessionSearch_GetSearchResultCount = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetSearchResultCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionSearch_GetSearchResultCount", "EOS_SessionSearch_Release"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_SessionSearch_Release = nil
    }
}
