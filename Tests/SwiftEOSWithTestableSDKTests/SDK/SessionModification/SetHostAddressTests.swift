import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionModification_SetHostAddressTests: XCTestCase {
    public func testEOS_SessionModification_SetHostAddress_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionModification_Release = { SessionModificationHandle in
                XCTAssertNil(SessionModificationHandle)
                GTest.current.sdkReceived.append("EOS_SessionModification_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionModification_SetHostAddress = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONMODIFICATION_SETHOSTADDRESS_API_LATEST)
                XCTAssertNil(Options!.pointee.HostAddress)
                GTest.current.sdkReceived.append("EOS_SessionModification_SetHostAddress")
                return .zero
            }
            defer { __on_EOS_SessionModification_SetHostAddress = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionModification_Actor = SwiftEOS_SessionModification_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetHostAddress(HostAddress: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetHostAddress"])
        }
        
        // Then
        __on_EOS_SessionModification_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_SessionModification_SetHostAddress", "EOS_SessionModification_Release"])
    }
}
