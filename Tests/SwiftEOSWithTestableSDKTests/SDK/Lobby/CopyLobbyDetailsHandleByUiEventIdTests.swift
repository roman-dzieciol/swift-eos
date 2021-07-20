import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdTests: XCTestCase {
    public func testEOS_Lobby_CopyLobbyDetailsHandleByUiEventId_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_CopyLobbyDetailsHandleByUiEventId = { Handle, Options, OutLobbyDetailsHandle in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYUIEVENTID_API_LATEST)
                XCTAssertEqual(Options!.pointee.UiEventId, .zero)
                XCTAssertNotNil(OutLobbyDetailsHandle)
                TestGlobals.current.sdkReceived.append("EOS_Lobby_CopyLobbyDetailsHandleByUiEventId")
                return .zero
            }
            defer { __on_EOS_Lobby_CopyLobbyDetailsHandleByUiEventId = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            let result: EOS_HLobbyDetails? = try object.CopyLobbyDetailsHandleByUiEventId(UiEventId: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByUiEventId"])
            XCTAssertNil(result)
        }
        
        // Then
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByUiEventId"])
    }
}
