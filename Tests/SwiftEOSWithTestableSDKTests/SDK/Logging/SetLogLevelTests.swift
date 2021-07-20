import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Logging_SetLogLevelTests: XCTestCase {
    public func testEOS_Logging_SetLogLevel_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Logging_SetLogLevel = { LogCategory, LogLevel in
                XCTAssertEqual(LogCategory, .zero)
                XCTAssertEqual(LogLevel, .zero)
                GTest.current.sdkReceived.append("EOS_Logging_SetLogLevel")
                return .zero
            }
            defer { __on_EOS_Logging_SetLogLevel = nil }
            
            // When SDK function is called
            try SwiftEOS_Logging_SetLogLevel(
                LogCategory: .zero,
                LogLevel: .zero
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Logging_SetLogLevel"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Logging_SetLogLevel"])
    }
}
