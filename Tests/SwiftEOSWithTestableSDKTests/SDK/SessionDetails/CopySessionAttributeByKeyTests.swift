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
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.AttrKey)
                XCTAssertNil(OutSessionAttribute)
                TestGlobals.current.sdkReceived.append("EOS_SessionDetails_CopySessionAttributeByKey")
                return .zero
            }
            defer { __on_EOS_SessionDetails_CopySessionAttributeByKey = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_SessionDetails_Attribute? = try object.CopySessionAttributeByKey(AttrKey: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByKey", "EOS_SessionDetails_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
    }
}
