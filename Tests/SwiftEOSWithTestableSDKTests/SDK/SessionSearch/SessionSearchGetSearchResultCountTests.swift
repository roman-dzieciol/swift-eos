import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_GetSearchResultCountTests: XCTestCase {
    public func testEOS_SessionSearch_GetSearchResultCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionSearch_Release = { SessionSearchHandle in
                GTest.current.sdkReceived.append("EOS_SessionSearch_Release")
                XCTAssertNil(SessionSearchHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionSearch_GetSearchResultCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_SessionSearch_GetSearchResultCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
                return .zero
            }
            defer { __on_EOS_SessionSearch_GetSearchResultCount = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetSearchResultCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionSearch_GetSearchResultCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_SessionSearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionSearch_GetSearchResultCount", "EOS_SessionSearch_Release"])
    }
}
