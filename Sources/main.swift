import Foundation
import PathKit

let OUTPUT_DIR = "schwalbe_output"

var writeToDir = false
func printIfMult(_ str: String) {
    if writeToDir {
        print(str)
    }
}

let inputFiles = CommandLine.arguments.dropFirst().filter { !$0.contains(OUTPUT_DIR) }
guard inputFiles.count > 0 else {
    print("No input files")
    exit(1)
}
guard inputFiles.filter({ $0.hasSuffix(".schwalbe") }).count > 0 else {
    print("Found no *.schwalbe files to process.")
    exit(0)
}
writeToDir = inputFiles.count > 1

let outputDir = Path("./\(OUTPUT_DIR)")
if writeToDir {
    if outputDir.exists {
        try? outputDir.delete() // FIXME: Workaround for `path.copy` below not wanting to overwrite.
    }
    try? outputDir.mkdir()
}

for filePath in inputFiles {
    let path = Path(filePath)

    guard path.string.hasSuffix(".schwalbe") else {
        if writeToDir {
            try? path.copy(outputDir + filePath)
        }
        continue
    }

    printIfMult("⚙️  Processing \(path.abbreviate())...")
    guard let schwalbe: String = try? path.read() else {
        print("Couldn't read \(path). Exiting.")
        exit(1)
    }
    let swift = translate(schwalbe)

    let fileOutputPath = outputDir + Path(path.string.replacingOccurrences(of: ".schwalbe", with: ".swift"))
    printIfMult("Writing \(fileOutputPath.abbreviate())")

    if writeToDir {
        try? fileOutputPath.write(swift)
    } else {
        print(swift)
    }
}

printIfMult("All done ✅")

