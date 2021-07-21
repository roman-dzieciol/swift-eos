import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Achievements_AddNotifyAchievementsUnlockedV2Tests: XCTestCase {
    public func testEOS_Achievements_AddNotifyAchievementsUnlockedV2_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Achievements_AddNotifyAchievementsUnlockedV2 = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Achievements_AddNotifyAchievementsUnlockedV2")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKEDV2_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Achievements_OnAchievementsUnlockedCallbackV2Info(
                            ClientData: ClientData,
                            UserId: nil,
                            AchievementId: nil,
                            UnlockTime: .zero
                        )))
                return .zero
            }
            defer { __on_EOS_Achievements_AddNotifyAchievementsUnlockedV2 = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackV2Info> = try object.AddNotifyAchievementsUnlockedV2(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.UserId)
                    XCTAssertNil(arg0.AchievementId)
                    XCTAssertEqual(arg0.UnlockTime, .zero)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_AddNotifyAchievementsUnlockedV2"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Achievements_RemoveNotifyAchievementsUnlocked = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Achievements_RemoveNotifyAchievementsUnlocked")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Achievements_RemoveNotifyAchievementsUnlocked = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_AddNotifyAchievementsUnlockedV2", "EOS_Achievements_RemoveNotifyAchievementsUnlocked"])
    }
}
