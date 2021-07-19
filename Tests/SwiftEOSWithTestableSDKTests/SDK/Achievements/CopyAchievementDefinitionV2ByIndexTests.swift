import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyAchievementDefinitionV2ByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionV2ByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyAchievementDefinitionV2ByIndex = { Handle, Options, OutDefinition in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
                XCTAssertNil(OutDefinition)
                TestGlobals.current.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionV2ByIndex")
                return .zero
            }
            defer { __on_EOS_Achievements_CopyAchievementDefinitionV2ByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Achievements_DefinitionV2? = try object.CopyAchievementDefinitionV2ByIndex(AchievementIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionV2ByIndex"])
            XCTAssertNil(result)
        }
    }
}
