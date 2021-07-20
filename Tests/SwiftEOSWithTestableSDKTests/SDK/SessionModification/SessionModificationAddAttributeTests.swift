import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_AddAttributeTests: XCTestCase {
    public func testEOS_SessionModification_AddAttribute_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                XCTAssertNil(SessionModificationHandle)
                GTest.current.sdkReceived.append("EOS_SessionModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_AddAttribute = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_ADDATTRIBUTE_API_LATEST)
                XCTAssertNil(Options!.pointee.SessionAttribute)
                XCTAssertEqual(Options!.pointee.AdvertisementType, .zero)
                GTest.current.sdkReceived.append("EOS_SessionModification_AddAttribute")
                return .zero
            }
            defer { __on_EOS_SessionModification_AddAttribute = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.AddAttribute(
                SessionAttribute: nil,
                AdvertisementType: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_AddAttribute"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_AddAttribute", "EOS_SessionModification_Release"])
    }
}
