import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionDetails_CopySessionAttributeByKeyTests: XCTestCase {
    public func testEOS_SessionDetails_CopySessionAttributeByKey_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionDetails_Release = { SessionHandle in
                GTest.current.sdkReceived.append("EOS_SessionDetails_Release")
                XCTAssertNil(SessionHandle)
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionDetails_CopySessionAttributeByKey = { Handle, Options, OutSessionAttribute in
                GTest.current.sdkReceived.append("EOS_SessionDetails_CopySessionAttributeByKey")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_COPYSESSIONATTRIBUTEBYKEY_API_LATEST)
                XCTAssertNil(Options!.pointee.AttrKey)
                XCTAssertNotNil(OutSessionAttribute)
                return .zero
            }
            defer { __on_EOS_SessionDetails_CopySessionAttributeByKey = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionDetails_Actor = SwiftEOS_SessionDetails_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopySessionAttributeByKey(AttrKey: nil)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByKey"])
        }
        
        // Then
        __on_EOS_SessionDetails_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionDetails_CopySessionAttributeByKey", "EOS_SessionDetails_Release"])
    }
}
