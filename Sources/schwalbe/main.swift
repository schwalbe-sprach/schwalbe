import Foundation
import schwalbeLib

let inputFiles = CommandLine.arguments.dropFirst()

do {
    try process(input: Array<String>(inputFiles))
} catch let error as SchwalbeError {
    print(error.text)
    exit(1)
} catch let error {
    print(error.localizedDescription)
}
