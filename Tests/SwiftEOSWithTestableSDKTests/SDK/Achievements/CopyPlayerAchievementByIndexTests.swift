import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Achievements_CopyPlayerAchievementByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyPlayerAchievementByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyPlayerAchievementByIndex = { Handle, Options, OutAchievement in
                GTest.current.sdkReceived.append("EOS_Achievements_CopyPlayerAchievementByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYPLAYERACHIEVEMENTBYINDEX_API_LATEST)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNotNil(OutAchievement)
                return .zero
            }
            defer { __on_EOS_Achievements_CopyPlayerAchievementByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyPlayerAchievementByIndex(
                    TargetUserId: nil,
                    AchievementIndex: .zero,
                    LocalUserId: nil
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByIndex"])
    }
}
