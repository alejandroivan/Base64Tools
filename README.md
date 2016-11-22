# Base64Tools
UIImage/NSString categories to quickly convert UIImage objects to Base64 NSString and vice-versa.

## Usage
### Manual installation
1. Download and drag the category files into your project.
2. In the **Choose options for adding these files** dialog, ensure you have **Copy files if needed** checked.
3. Import the category header in your view controller class: `#import "Base64Tools.h"`

### CocoaPods installation
1. Add `pod 'Base64Tools'` to your `Podfile`.
2. Run `pod install`.
3. Import the category header in your view controlles class: `#import <Base64Tools/Base64Tools.h>`

Then you can use the methods as you expect:
#### UIImage to Base64
```
// UIImage to Base64
UIImage *myImage = [UIImage imageNamed:@"..."]; // Get the UIImage instance
NSString *base64 = [UIImage base64WithImage:myImage]; // Generate the base64 string (by default with the schema string prepended)
NSLog(@"My image Base64 string is: %@", base64);

// UIImage to Base64 (without data schema prepended)
UIImage *myImage = [UIImage imageNamed:@"..."];
NSString *base64 = [UIImage base64WithImage:myImage prependingSchema:NO]; // YES will produce the same effects as base64WithImage: alone
NSLog(@"My image Base64 string without data schema is: %@", base64);

// UIImage to Base64 (from instance)
UIImage *myImage = [UIImage imageNamed:@"..."];
NSString *base64 = [myImage base64]; // Calling directly on an instance (includes data schema prepended)
NSLog(@"My image Base64 string is: %@", base64);
```

#### Base64 to UIImage
```
// Base64 to UIImage
NSString *base64 = @"..."; // Some Base64 string (should include data schema prepended)
UIImage *myImage = [UIImage imageWithBase64:base64];
NSLog(@"My image from the Base64 string is this instance: %@", myImage);

// Base64 to UIImage (passing the scale factor to the imageWithData:scale: class method from UIImage)
NSString *base64 = @"...";
UIImage *myImage = [UIImage imageWithBase64:base64 scale:2.0f];
NSLog(@"My image from the Base64 string and scale factor %f is this instance: %@", 2.0f, myImage);
```

#### UIImage from Base64 (NSString)
```
NSString *base64 = @"..."; // Some Base64 string (should include data schema prepended)
UIImage *myImage = [base64 imageFromBase64];
NSLog(@"My image from the Base64 string is this instance: %@", myImage);
```

Check the header files for other methods. Their name are pretty self-explanatory, but if you think they're not, feel free to send updates to this documentation.


## Notes
- You're welcome to send updates or bug fixes to this repo. I'll review them and modify parts if necessary.


## Author

Alejandro Iván Melo Domínguez
[@alejandroivan](https://twitter.com/alejandroivan)


## License

Base64Tools is available under the MIT license. See the LICENSE file for more info.
