import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Mods_EnumerateModsTests: XCTestCase {
    public func testEOS_Mods_EnumerateMods_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            let waitForCompletionDelegate = expectation(description: "waitForCompletionDelegate")
            
            // Given implementation for SDK function
            __on_EOS_Mods_EnumerateMods = { Handle, Options, ClientData, CompletionDelegate in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.LocalUserId)
                XCTAssertEqual(Options!.pointee.Type, .zero)
                XCTAssertNotNil(ClientData)
                CompletionDelegate?(TestGlobals.current.pointer(object: _tagEOS_Mods_EnumerateModsCallbackInfo(
                            ResultCode: .zero,
                            LocalUserId: .nonZeroPointer,
                            ClientData: ClientData,
                            `Type`: .zero
                        )))
                TestGlobals.current.sdkReceived.append("EOS_Mods_EnumerateMods")
            }
            defer { __on_EOS_Mods_EnumerateMods = nil }
            
            // Given Actor
            let object: SwiftEOS_Mods_Actor = SwiftEOS_Mods_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            try object.EnumerateMods(
                LocalUserId: nil,
                `Type`: .zero,
                CompletionDelegate: { arg0 in
                    XCTAssertEqual(arg0.ResultCode, .zero)
                    XCTAssertNil(arg0.LocalUserId)
                    XCTAssertEqual(arg0.Type, .zero)
                    waitForCompletionDelegate.fulfill()
                }
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Mods_EnumerateMods"])
            wait(for: [waitForCompletionDelegate], timeout: 0.5)
        }
    }
}
