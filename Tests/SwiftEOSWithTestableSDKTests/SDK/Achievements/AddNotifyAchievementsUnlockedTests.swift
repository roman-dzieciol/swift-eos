import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Achievements_AddNotifyAchievementsUnlockedTests: XCTestCase {
    public func testEOS_Achievements_AddNotifyAchievementsUnlocked_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotificationFn = expectation(description: "waitForNotificationFn")
            
            // Given implementation for SDK function
            __on_EOS_Achievements_AddNotifyAchievementsUnlocked = { Handle, Options, ClientData, NotificationFn in
                GTest.current.sdkReceived.append("EOS_Achievements_AddNotifyAchievementsUnlocked")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_ACHIEVEMENTS_ADDNOTIFYACHIEVEMENTSUNLOCKED_API_LATEST)
                XCTAssertNotNil(ClientData)
                NotificationFn?(GTest.current.pointer(object: _tagEOS_Achievements_OnAchievementsUnlockedCallbackInfo(
                            ClientData: ClientData,
                            UserId: nil,
                            AchievementsCount: .zero,
                            AchievementIds: nil
                        )))
                return .zero
            }
            defer { __on_EOS_Achievements_AddNotifyAchievementsUnlocked = nil }
            
            // Given Actor
            let object: SwiftEOS_Achievements_Actor = SwiftEOS_Achievements_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Achievements_OnAchievementsUnlockedCallbackInfo> = try object.AddNotifyAchievementsUnlocked(NotificationFn: { arg0 in
                    XCTAssertNil(arg0.UserId)
                    XCTAssertNil(arg0.AchievementIds)
                    waitForNotificationFn.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotificationFn], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_AddNotifyAchievementsUnlocked"])
                
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
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Achievements_AddNotifyAchievementsUnlocked", "EOS_Achievements_RemoveNotifyAchievementsUnlocked"])
    }
}
