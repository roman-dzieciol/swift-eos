import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Lobby_CreateLobbySearchTests: XCTestCase {
    public func testEOS_Lobby_CreateLobbySearch_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Lobby_CreateLobbySearch = { Handle, Options, OutLobbySearchHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBY_CREATELOBBYSEARCH_API_LATEST)
                XCTAssertEqual(Options!.pointee.MaxResults, .zero)
                XCTAssertNotNil(OutLobbySearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_Lobby_CreateLobbySearch")
                return .zero
            }
            defer { __on_EOS_Lobby_CreateLobbySearch = nil }
            
            // Given Actor
            let object: SwiftEOS_Lobby_Actor = SwiftEOS_Lobby_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HLobbySearch? = try object.CreateLobbySearch(MaxResults: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Lobby_CreateLobbySearch"])
            XCTAssertNil(result)
        }
    }
}
