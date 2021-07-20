import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_PromoteMemberTests: XCTestCase {
    public func testEOS_Lobby_PromoteMember_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Lobby_PromoteMember = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_PROMOTEMEMBER_API_LATEST)
                XCTAssertNil(Options!.pointee.LobbyId)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(GTest.current.pointer(object: _tagEOS_Lobby_PromoteMemberCallbackInfo(
                            ResultCode: .zero,
                            ClientData: ClientData,
                            LobbyId: nil
                        )))
                GTest.current.sdkReceived.append("EOS_Lobby_PromoteMember")
            }
            defer { __on_EOS_Lobby_PromoteMember = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            try object.PromoteMember(
                LobbyId: nil,
                LocalUserId: nil,
                TargetUserId: nil,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LobbyId)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_PromoteMember"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_PromoteMember"])
    }
}
