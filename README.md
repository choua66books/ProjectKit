# ProjectKit

ProjectKit is a Swift framework for parsing Xcode project files.

## Example

Here's an example that loads an Xcode project file and prints the name of all targets in the project.

```Swift
import ProjectKit

let url = URL(fileURLWithPath: "<YourProject>.pbxproj")

do {
    
    let project = try XcodeProject(url: url)

    print(project)
    
    for (targetID, target) in project.nativeTargets {
        print(target.name)
    }

} catch XcodeProjectError.failedToOpenProjectFile {
    print("Failed to open project file.")
} catch XcodeProjectError.failedToParseProjectFile {
    print("Failed to parse project file.")
}
```
