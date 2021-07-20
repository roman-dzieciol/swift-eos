import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_CopySearchResultByIndexTests: XCTestCase {
    public func testEOS_SessionSearch_CopySearchResultByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionSearch_Release = { SessionSearchHandle in
                XCTAssertNil(SessionSearchHandle)
                GTest.current.sdkReceived.append("EOS_SessionSearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionSearch_CopySearchResultByIndex = { Handle, Options, OutSessionHandle in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
                XCTAssertEqual(Options!.pointee.SessionIndex, .zero)
                XCTAssertNotNil(OutSessionHandle)
                GTest.current.sdkReceived.append("EOS_SessionSearch_CopySearchResultByIndex")
                return .zero
            }
            defer { __on_EOS_SessionSearch_CopySearchResultByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HSessionDetails? = try object.CopySearchResultByIndex(SessionIndex: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionSearch_CopySearchResultByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_SessionSearch_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionSearch_CopySearchResultByIndex", "EOS_SessionSearch_Release"])
    }
}
