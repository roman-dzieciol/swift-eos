import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopySessionAttributeByKeyTests: XCTestCase {
    public func testEOS_SessionDetails_CopySessionAttributeByKey_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionDetails_Release = { SessionHandle in
                XCTAssertNil(SessionHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionDetails_CopySessionAttributeByKey = { Handle, Options, OutSessionAttribute in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYKEY_API_LATEST)
                XCTAssertNil(Options!.pointee.AttrKey)
                XCTAssertNotNil(OutSessionAttribute)
                TestGlobals.current.sdkReceived.append("EOS_SessionDetails_CopySessionAttributeByKey")
                return .zero
            }
            defer { __on_EOS_SessionDetails_CopySessionAttributeByKey = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_SessionDetails_Attribute? = try object.CopySessionAttributeByKey(AttrKey: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByKey"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByKey", "EOS_SessionDetails_Release"])
    }
}
