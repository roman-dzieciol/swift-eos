import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetLoggedInUserByIndexTests: XCTestCase {
    public func testEOS_Connect_GetLoggedInUserByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetLoggedInUserByIndex = { Handle, Index in
                XCTAssertNil(Handle)
                XCTAssertEqual(Index, .zero)
                GTest.current.sdkReceived.append("EOS_Connect_GetLoggedInUserByIndex")
                return nil
            }
            defer { __on_EOS_Connect_GetLoggedInUserByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_ProductUserId? = try object.GetLoggedInUserByIndex(Index: .zero)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetLoggedInUserByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetLoggedInUserByIndex"])
    }
}
