import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyAchievementDefinitionByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionByIndex_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Achievements_CopyAchievementDefinitionByIndex = { Handle, Options, OutDefinition in
                GTest.current.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionByIndex")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_COPYDEFINITIONBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
                XCTAssertNotNil(OutDefinition)
                return .zero
            }
            defer { __on_EOS_Achievements_CopyAchievementDefinitionByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyAchievementDefinitionByIndex(AchievementIndex: .zero)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionByIndex"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionByIndex"])
    }
}
