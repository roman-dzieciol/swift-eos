import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Connect_GetLoggedInUsersCountTests: XCTestCase {
    public func testEOS_Connect_GetLoggedInUsersCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Connect_GetLoggedInUsersCount = { Handle in
                XCTAssertNil(Handle)
                GTest.current.sdkReceived.append("EOS_Connect_GetLoggedInUsersCount")
                return .zero
            }
            defer { __on_EOS_Connect_GetLoggedInUsersCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetLoggedInUsersCount()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetLoggedInUsersCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_GetLoggedInUsersCount"])
    }
}
