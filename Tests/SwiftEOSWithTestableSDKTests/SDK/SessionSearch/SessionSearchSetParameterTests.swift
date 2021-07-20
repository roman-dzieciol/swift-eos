import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_SetParameterTests: XCTestCase {
    public func testEOS_SessionSearch_SetParameter_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionSearch_Release = { SessionSearchHandle in
                XCTAssertNil(SessionSearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionSearch_SetParameter = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_SESSIONDETAILS_SETTINGS_API_LATEST)
                XCTAssertNil(Options!.pointee.Parameter)
                XCTAssertEqual(Options!.pointee.ComparisonOp, .zero)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_SetParameter")
                return .zero
            }
            defer { __on_EOS_SessionSearch_SetParameter = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: nil)
            
            // When SDK function is called
            try object.SetParameter(
                Parameter: nil,
                ComparisonOp: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionSearch_SetParameter"])
        }
        
        // Then
        __on_EOS_SessionSearch_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionSearch_SetParameter", "EOS_SessionSearch_Release"])
    }
}
