import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyUnlockedAchievementByAchievementIdTests: XCTestCase {
    public func testEOS_Achievements_CopyUnlockedAchievementByAchievementId_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_CopyUnlockedAchievementByAchievementId = { Handle, Options, OutAchievement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.UserId)
            XCTAssertNil(Options!.pointee.AchievementId)
            XCTAssertNil(OutAchievement)
            TestGlobals.sdkReceived.append("EOS_Achievements_CopyUnlockedAchievementByAchievementId")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Achievements_UnlockedAchievement? = try object.CopyUnlockedAchievementByAchievementId(
            UserId: nil,
            AchievementId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_CopyUnlockedAchievementByAchievementId"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
