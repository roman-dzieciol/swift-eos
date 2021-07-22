import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Platform_GetReportsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetReportsInterface_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetReportsInterface = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_GetReportsInterface")
                XCTAssertNil(Handle)
                return nil
            }
            defer { __on_EOS_Platform_GetReportsInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Reports_Actor = object.GetReportsInterface()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetReportsInterface"])
            XCTAssertNil(result.Handle)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetReportsInterface", "EOS_Platform_Release"])
    }
}
