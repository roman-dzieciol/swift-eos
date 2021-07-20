import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionV2ByAchievementId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId = { Handle, Options, OutDefinition in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYACHIEVEMENTDEFINITIONV2BYACHIEVEMENTID_API_LATEST)
                XCTAssertNil(Options!.pointee.AchievementId)
                XCTAssertNotNil(OutDefinition)
                GTest.current.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_DefinitionV2? = try object.CopyAchievementDefinitionV2ByAchievementId(AchievementId: nil)
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId"])
    }
}
