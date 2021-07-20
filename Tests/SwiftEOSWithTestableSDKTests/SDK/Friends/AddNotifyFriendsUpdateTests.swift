import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Friends_AddNotifyFriendsUpdateTests: XCTestCase {
    public func testEOS_Friends_AddNotifyFriendsUpdate_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForFriendsUpdateHandler = expectation(description: "waitForFriendsUpdateHandler")
            
            // Given implementation for SDK function
            __on_EOS_Friends_AddNotifyFriendsUpdate = { Handle, Options, ClientData, FriendsUpdateHandler in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_FRIENDS_ADDNOTIFYFRIENDSUPDATE_API_LATEST)
                XCTAssertNotNil(ClientData)
                FriendsUpdateHandler?(TestGlobals.current.pointer(object: _tagEOS_Friends_OnFriendsUpdateInfo(
                            ClientData: ClientData,
                            LocalUserId: nil,
                            TargetUserId: nil,
                            PreviousStatus: .zero,
                            CurrentStatus: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Friends_AddNotifyFriendsUpdate")
                return .zero
            }
            defer { __on_EOS_Friends_AddNotifyFriendsUpdate = nil }
            
            // Given Actor
            let object: SwiftEOS_Friends_Actor = SwiftEOS_Friends_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Friends_OnFriendsUpdateInfo> = try object.AddNotifyFriendsUpdate(FriendsUpdateHandler: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertNil(arg0.TargetUserId)
                    XCTAssertEqual(arg0.PreviousStatus, .zero)
                    XCTAssertEqual(arg0.CurrentStatus, .zero)
                    waitForFriendsUpdateHandler.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Friends_AddNotifyFriendsUpdate"])
                wait(for: [waitForFriendsUpdateHandler], timeout: 0.5)
                
                // Given implementation for SDK remove notify function
                __on_EOS_Friends_RemoveNotifyFriendsUpdate = { Handle, NotificationId in
                    XCTAssertEqual(Handle, .nonZeroPointer)
                    XCTAssertEqual(NotificationId, .zero)
                    TestGlobals.current.sdkReceived.append("EOS_Friends_RemoveNotifyFriendsUpdate")
                }
            }
        }
        
        // Then
        __on_EOS_Friends_RemoveNotifyFriendsUpdate = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Friends_AddNotifyFriendsUpdate", "EOS_Friends_RemoveNotifyFriendsUpdate"])
    }
}
