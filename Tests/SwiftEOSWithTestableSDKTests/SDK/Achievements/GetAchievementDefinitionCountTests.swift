import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_GetAchievementDefinitionCountTests: XCTestCase {
    public func testEOS_Achievements_GetAchievementDefinitionCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_GetAchievementDefinitionCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_GETACHIEVEMENTDEFINITIONCOUNT_API_LATEST)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_GetAchievementDefinitionCount")
                return .zero
            }
            defer { __on_EOS_Achievements_GetAchievementDefinitionCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetAchievementDefinitionCount()
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_GetAchievementDefinitionCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_GetAchievementDefinitionCount"])
    }
}
