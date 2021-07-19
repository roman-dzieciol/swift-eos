import XCTest
import EOSSDK
@testable import SwiftEOSWithTestableSDK

public class SwiftEOS_Logging_SetLogLevelTests: XCTestCase {
    public func testEOS_Logging_SetLogLevel_Null() throws {
        TestGlobals.reset()
        __on_EOS_Logging_SetLogLevel = { LogCategory, LogLevel in
            XCTAssertEqual(LogCategory, .init(rawValue: .zero)!)
            XCTAssertEqual(LogLevel, .init(rawValue: .zero)!)
            TestGlobals.sdkReceived.append("EOS_Logging_SetLogLevel")
            return .init(rawValue: .zero)! }
        try SwiftEOS_Logging_SetLogLevel(
            LogCategory: .init(rawValue: .zero)!,
            LogLevel: .init(rawValue: .zero)!
        )
        XCTAssertEqual(TestGlobals.sdkReceived, ["EOS_Logging_SetLogLevel"])
        XCTAssertEqual(TestGlobals.swiftReceived, [])
    }
}
