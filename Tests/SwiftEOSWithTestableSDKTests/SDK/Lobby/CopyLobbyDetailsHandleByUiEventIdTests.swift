import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public final class SwiftEOS_Lobby_CopyLobbyDetailsHandleByUiEventIdTests: XCTestCase {
    public func testEOS_Lobby_CopyLobbyDetailsHandleByUiEventId_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_CopyLobbyDetailsHandleByUiEventId = { Handle, Options, OutLobbyDetailsHandle in
                GTest.current.sdkReceived.append("EOS_Lobby_CopyLobbyDetailsHandleByUiEventId")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_COPYLOBBYDETAILSHANDLEBYUIEVENTID_API_LATEST)
                XCTAssertEqual(Options!.pointee.UiEventId, .zero)
                XCTAssertNotNil(OutLobbyDetailsHandle)
                return .zero
            }
            defer { __on_EOS_Lobby_CopyLobbyDetailsHandleByUiEventId = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyLobbyDetailsHandleByUiEventId(UiEventId: .zero)) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByUiEventId"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Lobby_CopyLobbyDetailsHandleByUiEventId"])
    }
}
