import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopySessionAttributeByIndexTests: XCTestCase {
    public func testEOS_SessionDetails_CopySessionAttributeByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionDetails_Release = { SessionHandle in
                XCTAssertNil(SessionHandle)
                GTest.current.sdkReceived.append("EOS_SessionDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionDetails_CopySessionAttributeByIndex = { Handle, Options, OutSessionAttribute in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.AttrIndex, .zero)
                XCTAssertNotNil(OutSessionAttribute)
                GTest.current.sdkReceived.append("EOS_SessionDetails_CopySessionAttributeByIndex")
                return .zero
            }
            defer { __on_EOS_SessionDetails_CopySessionAttributeByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_SessionDetails_Attribute? = try object.CopySessionAttributeByIndex(AttrIndex: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByIndex", "EOS_SessionDetails_Release"])
    }
}
