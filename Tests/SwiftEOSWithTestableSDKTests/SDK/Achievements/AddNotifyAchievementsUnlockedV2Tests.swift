import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_AddNotifyAchievementsUnlockedV2Tests: XCTestCase {
    public func testEOS_Achievements_AddNotifyAchievementsUnlockedV2_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_AddNotifyAchievementsUnlockedV2 = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Achievements_AddNotifyAchievementsUnlockedV2")
            return .zero }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info> = try object.AddNotifyAchievementsUnlockedV2(NotificationFn: { arg0 in
                XCTAssertNil(arg0.UserId)
                XCTAssertNil(arg0.AchievementId)
                XCTAssertEqual(arg0.UnlockTime, .zero)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info sdk: _tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_AddNotifyAchievementsUnlockedV2"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
