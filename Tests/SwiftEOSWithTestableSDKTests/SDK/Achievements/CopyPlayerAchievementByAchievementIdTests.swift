import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyPlayerAchievementByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyPlayerAchievementByAchievementId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_CopyPlayerAchievementByAchievementId = { Handle, Options, OutAchievement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertNil(Options!.pointee.AchievementId)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(OutAchievement)
            TestGlobals.sdkReceived.append("EOS_Achievements_CopyPlayerAchievementByAchievementId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Achievements_PlayerAchievement? = try object.CopyPlayerAchievementByAchievementId(
            TargetUserId: nil,
            AchievementId: nil,
            LocalUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByAchievementId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
