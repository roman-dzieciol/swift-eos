import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Mods_CopyModInfoTests: XCTestCase {
    public func testEOS_Mods_CopyModInfo_Null() throws {
        try autoreleasepool { 
            GTest.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Mods_CopyModInfo = { Handle, Options, OutEnumeratedMods in
                GTest.current.sdkReceived.append("EOS_Mods_CopyModInfo")
                XCTAssertNil(Handle)
                XCTAssertEqual(Options!.pointee.ApiVersion, EOS_MODS_COPYMODINFO_API_LATEST)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Type, .zero)
                XCTAssertNotNil(OutEnumeratedMods)
                return .zero
            }
            defer { __on_EOS_Mods_CopyModInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: nil)
            
            // When SDK function is called
            try XCTAssertThrowsError(try object.CopyModInfo(
                    LocalUserId: nil,
                    `Type`: .zero
                )) { error in
                guard case SwiftEOSError.unexpectedNilResult = error else { return XCTFail("unexpected \(error)") }
            }
            
            // Then
            XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Mods_CopyModInfo"])
        }
        
        // Then
        XCTAssertEqual(GTest.current.sdkReceived, ["EOS_Mods_CopyModInfo"])
    }
}
