import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Stats_CopyStatByIndexTests: XCTestCase {
    public func testEOS_Stats_CopyStatByIndex_Null() throws {
        try autoreleasepool { 
            TestGlobals.current.reset()
            
            // Given implementation for SDK function
            __on_EOS_Stats_CopyStatByIndex = { Handle, Options, OutStat in
                XCTAssertEqual(Handle, .nonZeroPointer)
                XCTAssertEqual(Options!.pointee.ApiVersion, .zero)
                XCTAssertNil(Options!.pointee.TargetUserId)
                XCTAssertEqual(Options!.pointee.StatIndex, .zero)
                XCTAssertNil(OutStat)
                TestGlobals.current.sdkReceived.append("EOS_Stats_CopyStatByIndex")
                return .zero
            }
            defer { __on_EOS_Stats_CopyStatByIndex = nil }
            
            // Given Actor
            let object: SwiftEOS_Stats_Actor = SwiftEOS_Stats_Actor(Handle: .nonZeroPointer)
            
            // When SDK function is called
            let result: SwiftEOS_Stats_Stat? = try object.CopyStatByIndex(
                TargetUserId: nil,
                StatIndex: .zero
            )
            
            // Then
            XCTAssertEqual(TestGlobals.current.sdkReceived, ["EOS_Stats_CopyStatByIndex"])
            XCTAssertNil(result)
        }
    }
}
