import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Platform_GetLeaderboardsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetLeaderboardsInterface_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_Release")
                XCTAssertNil(Handle)
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetLeaderboardsInterface = { Handle in
                GTest.current.sdkReceived.append("EOS_Platform_GetLeaderboardsInterface")
                XCTAssertNil(Handle)
                return nil
            }
            defer { __on_EOS_Platform_GetLeaderboardsInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Leaderboards_Actor = object.GetLeaderboardsInterface()
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetLeaderboardsInterface"])
            XCTAssertNil(result.Handle)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Platform_GetLeaderboardsInterface", "EOS_Platform_Release"])
    }
}
