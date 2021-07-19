import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_SessionSearch_RemoveParameterTests: XCTestCase {
    public func testEOS_SessionSearch_RemoveParameter_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_SessionSearch_Release = { SessionSearchHandle in
                XCTAssertNil(SessionSearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_SessionSearch_RemoveParameter = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.Key)
                XCTAssertEqual(Options!.pointee.ComparisonOp, .zero)
                TestGlobals.current.sdkReceived.append("EOS_SessionSearch_RemoveParameter")
                return .zero
            }
            defer { __on_EOS_SessionSearch_RemoveParameter = nil }
            
            // Given Actor
            let object: SwiftEOS_SessionSearch_Actor = SwiftEOS_SessionSearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.RemoveParameter(
                Key: nil,
                ComparisonOp: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_SessionSearch_RemoveParameter", "EOS_SessionSearch_Release"])
        }
        
        // Then
        __on_EOS_SessionSearch_Release = nil
    }
}
