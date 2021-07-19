import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_GetSessionAttributeCountTests: XCTestCase {
    public func testEOS_SessionDetails_GetSessionAttributeCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionDetails_Release = { SessionHandle in
                XCTAssertNil(SessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionDetails_GetSessionAttributeCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_GETSESSIONATTRIBUTECOUNT_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_SessionDetails_GetSessionAttributeCount")
                return .zero
            }
            defer { __on_EOS_SessionDetails_GetSessionAttributeCount = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetSessionAttributeCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionDetails_GetSessionAttributeCount", "EOS_SessionDetails_Release"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
    }
}
