import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_GetPlayerAchievementCountTests: XCTestCase {
    public func testEOS_Achievements_GetPlayerAchievementCount_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_GetPlayerAchievementCount = { Handle, Options in
                GTest.current.sdkReceived.append("EOS_Achievements_GetPlayerAchievementCount")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_GETPLAYERACHIEVEMENTCOUNT_API_LATEST)
                XCTAssertNil(Options!.pointee.UserId)
                return .zero
            }
            defer { __on_EOS_Achievements_GetPlayerAchievementCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: Int = try object.GetPlayerAchievementCount(UserId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_GetPlayerAchievementCount"])
            XCTAssertEqual(result, .zero)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_GetPlayerAchievementCount"])
    }
}
