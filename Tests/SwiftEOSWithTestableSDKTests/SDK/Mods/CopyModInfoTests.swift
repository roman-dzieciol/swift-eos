import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Mods_CopyModInfoTests: XCTestCase {
    public func testEOS_Mods_CopyModInfo_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Mods_CopyModInfo = { Handle, Options, OutEnumeratedMods in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Type, .zero)
                XCTAssertNil(OutEnumeratedMods)
                TestGlobals.current.sdkReceived.append("EOS_Mods_CopyModInfo")
                return .zero
            }
            defer { __on_EOS_Mods_CopyModInfo = nil }
            
            // Given Actor
            let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Mods_ModInfo? = try object.CopyModInfo(
                LocalUserId: nil,
                `Type`: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Mods_CopyModInfo"])
            XCTAssertNil(result)
        }
    }
}
