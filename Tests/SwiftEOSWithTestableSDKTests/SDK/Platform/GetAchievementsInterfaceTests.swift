import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Platform_GetAchievementsInterfaceTests: XCTestCase {
    public func testEOS_Platform_GetAchievementsInterface_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_Platform_Release = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_Platform_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_Platform_GetAchievementsInterface = { Handle in
                XCTAssertNil(Handle)
                TestGlobals.current.sdkReceived.append("EOS_Platform_GetAchievementsInterface")
                return nil
            }
            defer { __on_EOS_Platform_GetAchievementsInterface = nil }
            
            // Given Actor
            let object: SwiftEOS_Platform_Actor = SwiftEOS_Platform_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_Actor? = object.GetAchievementsInterface()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetAchievementsInterface"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_Platform_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Platform_GetAchievementsInterface", "EOS_Platform_Release"])
    }
}
