import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbySearch_CopySearchResultByIndexTests: XCTestCase {
    public func testEOS_LobbySearch_CopySearchResultByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbySearch_Release = { LobbySearchHandle in
                XCTAssertNil(LobbySearchHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbySearch_CopySearchResultByIndex = { Handle, Options, OutLobbyDetailsHandle in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYSEARCH_COPYSEARCHRESULTBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.LobbyIndex, .zero)
                XCTAssertNotNil(OutLobbyDetailsHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbySearch_CopySearchResultByIndex")
                return .zero
            }
            defer { __on_EOS_LobbySearch_CopySearchResultByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbySearch_Actor = SwiftEOS_LobbySearch_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: EOS_HLobbyDetails? = try object.CopySearchResultByIndex(LobbyIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbySearch_CopySearchResultByIndex", "EOS_LobbySearch_Release"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbySearch_Release = nil
    }
}
