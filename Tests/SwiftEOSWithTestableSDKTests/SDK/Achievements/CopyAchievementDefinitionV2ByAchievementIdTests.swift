import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyAchievementDefinitionV2ByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyAchievementDefinitionV2ByAchievementId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId = { Handle, Options, OutDefinition in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.AchievementId)
            XCTAssertNil(OutDefinition)
            TestGlobals.sdkReceived.append("EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Achievements_DefinitionV2? = try object.CopyAchievementDefinitionV2ByAchievementId(AchievementId: nil)
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_CopyAchievementDefinitionV2ByAchievementId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
