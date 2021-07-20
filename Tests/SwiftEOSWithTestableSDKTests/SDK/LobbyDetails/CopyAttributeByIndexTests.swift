import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_LobbyDetails_CopyAttributeByIndexTests: XCTestCase {
    public func testEOS_LobbyDetails_CopyAttributeByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK release function
            __on_EOS_LobbyDetails_Release = { LobbyHandle in
                XCTAssertNil(LobbyHandle)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_Release")
            }
            
            // Given implementation for SDK function
            __on_EOS_LobbyDetails_CopyAttributeByIndex = { Handle, Options, OutAttribute in
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_LOBBYDETAILS_COPYATTRIBUTEBYINDEX_API_LATEST)
                XCTAssertEqual(Options!.pointee.AttrIndex, .zero)
                XCTAssertNotNil(OutAttribute)
                TestGlobals.current.sdkReceived.append("EOS_LobbyDetails_CopyAttributeByIndex")
                return .zero
            }
            defer { __on_EOS_LobbyDetails_CopyAttributeByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_LobbyDetails_Actor = SwiftEOS_LobbyDetails_Actor(Handle: nil)
            
            // When SDK function is called
            let result: SwiftEOS_Lobby_Attribute? = try object.CopyAttributeByIndex(AttrIndex: .zero)
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_CopyAttributeByIndex"])
            XCTAssertNil(result)
        }
        
        // Then
        __on_EOS_LobbyDetails_Release = nil
        XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_LobbyDetails_CopyAttributeByIndex", "EOS_LobbyDetails_Release"])
    }
}
