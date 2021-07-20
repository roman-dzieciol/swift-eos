import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_EResult_IsOperationCompleteTests: XCTestCase {
    public func testEOS_EResult_IsOperationComplete_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_EResult_IsOperationComplete = { Result in
                XCTAssertEqual(Result, .zero)
                GTest.current.sdkReceived.append("EOS_EResult_IsOperationComplete")
                return .zero
            }
            defer { __on_EOS_EResult_IsOperationComplete = nil }
            
            // When SDK function is called
            let result: Bool = try SwiftEOS_EResult_IsOperationComplete(Result: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_EResult_IsOperationComplete"])
            XCTAssertEqual(result, false)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_EResult_IsOperationComplete"])
    }
}
