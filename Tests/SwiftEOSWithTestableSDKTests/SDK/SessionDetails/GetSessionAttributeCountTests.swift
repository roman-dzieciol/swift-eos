import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_GetSessionAttributeCountTests: XCTestCase {
    public func testEOS_SessionDetails_GetSessionAttributeCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionDetails_Release = { SessionHandle in
                GTest.current.sdkReceived.append("EOS_SessionDetails_Release")
                XCTAssertNil(SessionHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionDetails_GetSessionAttributeCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_SessionDetails_GetSessionAttributeCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_GETSESSIONATTRIBUTECOUNT_API_LATEST)
                return .zero
            }
            defer { __on_EOS_SessionDetails_GetSessionAttributeCount = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetSessionAttributeCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_GetSessionAttributeCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_GetSessionAttributeCount", "EOS_SessionDetails_Release"])
    }
}
