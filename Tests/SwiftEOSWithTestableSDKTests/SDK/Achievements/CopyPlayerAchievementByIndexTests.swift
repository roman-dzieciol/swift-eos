import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_CopyPlayerAchievementByIndexTests: XCTestCase {
    public func testEOS_Achievements_CopyPlayerAchievementByIndex_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_CopyPlayerAchievementByIndex = { Handle, Options, OutAchievement in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(Options!.pointee.TargetUserId)
            XCTAssertEqual(Options!.pointee.AchievementIndex, .zero)
            XCTAssertNil(Options!.pointee.LocalUserId)
            XCTAssertNil(OutAchievement)
            TestGlobals.sdkReceived.append("EOS_Achievements_CopyPlayerAchievementByIndex")
            return .init(rawValue: .zero)! }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Achievements_PlayerAchievement? = try object.CopyPlayerAchievementByIndex(
            TargetUserId: nil,
            AchievementIndex: .zero,
            LocalUserId: nil
        )
        XCTAssertNil(result)
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_CopyPlayerAchievementByIndex"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
