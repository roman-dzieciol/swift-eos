import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_GetUnlockedAchievementCountTests: XCTestCase {
    public func testEOS_Achievements_GetUnlockedAchievementCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_GetUnlockedAchievementCount = { Handle, Options in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_GETUNLOCKEDACHIEVEMENTCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                GTest.current.sdkReceived.append("EOS_Achievements_GetUnlockedAchievementCount")
                return .zero
            }
            defer { __on_EOS_Achievements_GetUnlockedAchievementCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetUnlockedAchievementCount(UserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_GetUnlockedAchievementCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_GetUnlockedAchievementCount"])
    }
}
