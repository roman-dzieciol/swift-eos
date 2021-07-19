import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_AddNotifyAchievementsUnlockedTests: XCTestCase {
    public func testEOS_Achievements_AddNotifyAchievementsUnlocked_Null() throws {
        TestGlobals.reset()
        __on_EOS_Achievements_AddNotifyAchievementsUnlocked = { Handle, Options, ClientData, NotificationFn in
            XCTAssertEqual(Handle, OpaquePointer(bitPattern: Int(1))!)
            XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
            XCTAssertNil(ClientData)
            NotificationFn?(nil)
            TestGlobals.sdkReceived.append("EOS_Achievements_AddNotifyAchievementsUnlocked")
            return .zero }
        let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: OpaquePointer(bitPattern: Int(1))!)
        let result: SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo> = try object.AddNotifyAchievementsUnlocked(NotificationFn: { arg0 in
                XCTAssertNil(arg0.UserId)
                XCTAssertNil(arg0.AchievementIds)
                TestGlobals.swiftReceived.append("NotificationFn") })
        XCTFail(" TODO: result SwiftGenericType(, SwiftBuiltinType(, SwiftEOS_Notification)<SwiftDeclRefType(, SwiftStruct(SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo sdk: _tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo))>)")
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Achievements_AddNotifyAchievementsUnlocked"])
        XCTAssertEqual(TestGlobals.swiftReceived, ["NotificationFn"])
    }
}
