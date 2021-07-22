import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Connect_AddNotifyAuthExpirationTests: XCTestCase {
    public func testEOS_Connect_AddNotifyAuthExpiration_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForNotification = expectation(description: "waitForNotification")
            
            // Given implementation for SDK function
            __on_EOS_Connect_AddNotifyAuthExpiration = { Handle, Options, ClientData, Notification in
                GTest.current.sdkReceived.append("EOS_Connect_AddNotifyAuthExpiration")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_CONNECT_ADDNOTIFYAUTHEXPIRATION_API_LATEST)
                XCTAssertNotNil(ClientData)
                Notification?(GTest.current.pointer(object: _tagEOS_Connect_AuthExpirationCallbackInfo(
                            ClientData: ClientData,
                            LocalUserId: nil
                        )))
                return .zero
            }
            defer { __on_EOS_Connect_AddNotifyAuthExpiration = nil }
            
            // Given Actor
            let object: SwiftEOS_Connect_Actor = SwiftEOS_Connect_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Notification<SwiftEOS_Connect_AuthExpirationCallbackInfo> = try object.AddNotifyAuthExpiration(Notification: { arg0 in
                    XCTAssertNil(arg0.LocalUserId)
                    waitForNotification.fulfill()
                })
            
            // Then
            withExtendedLifetime(result) { result in
                wait(for: [waitForNotification], timeout: 0.5)
                XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_AddNotifyAuthExpiration"])
                
                // Given implementation for SDK remove notify function
                __on_EOS_Connect_RemoveNotifyAuthExpiration = { Handle, InId in
                    GTest.current.sdkReceived.append("EOS_Connect_RemoveNotifyAuthExpiration")
                    XCTAssertNil(Handle)
                    XCTAssertEqual(InId, .zero)
                }
            }
        }
        
        // Then
        __on_EOS_Connect_RemoveNotifyAuthExpiration = nil
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Connect_AddNotifyAuthExpiration", "EOS_Connect_RemoveNotifyAuthExpiration"])
    }
}
