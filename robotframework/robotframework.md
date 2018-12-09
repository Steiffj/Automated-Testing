# Robot Framework Notes

## Configuration
* OS: Windows Pro 10 64-bit.
* I am using the Nokia RED IDE (the standalone version), which is available [on GitHub](https://github.com/nokia/RED). It is based on Eclipse, and there is a version of it available on the Eclipse Marketplace.
  * [Download page](https://github.com/nokia/RED/releases/tag/0.8.9)
  * [Installation instructions](https://github.com/nokia/RED/blob/master/installation.md)
* I Installed Anaconda for Python 3.7.0 64-bit to have access to more Python libraries, although that should not be necessary for RF.
* Using the Selenium library for RF requires a web driver for each browser being tested. You can find links to these web drivers at [seleniumhq.org](https://www.seleniumhq.org/download/).
  * You will need to add the directory where you install the web drivers to your PATH variable so RF can run them.
  * There are a couple special considerations when testing Internet Explorer:
   1. In __Settings -> Internet Options -> Security__, either check or uncheck __Enable Protected Mode__ for all four zones shown at the top of the Security tab so the setting is consistent between each zone.
   1. Set the zoom level to 100%.

### Project Setup within RED
* The basic project I am using for a RF project contains three main folders: _Resources_, _Results_, and _Tests_.
  * _Tests_ contains the actual test scripts that are run.
  * _Results_ contains the output files that are generated when the test scripts are run. 
* For RED to write the output files to the _Results_ folder, you need to set an argument for the test script. Doing so allows you to run different test configurations through the IDE - including running individual tests within a script - and it will always write the output to the specified directory.
  * Select "Run Configurations..." from the "Run" button drop-down menu. Switch to the "Common" tab. 
  * Under "Standard Input and Output", check "Output File". 
  * Click the "Workspace" button and select the desired Results folder. (You can set it anywhere in the file system instead using the "File System..." button.)
* Alternatively, you can run the tests from the command line and supply the results directory there, e.g. `> robot -d results\path path\to\test\script.robot`.

## Resources
* [Robot Framework User Guide](http://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
* [RED User Guide](http://nokia.github.io/RED/help/)
* [Locators in Selenium](http://robotframework.org/SeleniumLibrary/SeleniumLibrary.html)

## Use Cases
There are testing libraries that allow Robot Framework to a wide variety of testing scenarios.
* See [pypi.org](https://pypi.org/search/?q=robotframework) for many of these libraries. I have listed some specific libraries of note below. All these libraries are installed using PIP.
  * [SeleniumLibrary](https://pypi.org/project/robotframework-seleniumlibrary/) - web testing library. This is the first library I am working with alonside RF as it is one of the easier to research and test.
  * [AutoItLibrary](https://pypi.org/project/robotframework-autoitlibrary/) - allows automated testing (and installation processes) for Windows GUI programs, such as WinForms.
  * [OracleDB](https://pypi.org/project/robotframework-oracledb/) - library for working with Oracle databases.

