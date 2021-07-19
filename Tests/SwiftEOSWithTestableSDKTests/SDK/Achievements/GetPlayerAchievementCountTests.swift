import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_GetPlayerAchievementCountTests: XCTestCase {
    public func testEOS_Achievements_GetPlayerAchievementCount_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_GetPlayerAchievementCount = { Handle, Options in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.UserId)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_GetPlayerAchievementCount")
                return .zero
            }
            defer { __on_EOS_Achievements_GetPlayerAchievementCount = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: Int = try object.GetPlayerAchievementCount(UserId: nil)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_GetPlayerAchievementCount"])
            XCTAssertEqual(result, .zero)
        }
    }
}
